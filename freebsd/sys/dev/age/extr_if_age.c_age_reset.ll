; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/age/extr_if_age.c_age_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/age/extr_if_age.c_age_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.age_softc = type { i32 }

@AGE_MASTER_CFG = common dso_local global i32 0, align 4
@MASTER_RESET = common dso_local global i32 0, align 4
@AGE_RESET_TIMEOUT = common dso_local global i32 0, align 4
@AGE_IDLE_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"reset timeout(0x%08x)!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.age_softc*)* @age_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @age_reset(%struct.age_softc* %0) #0 {
  %2 = alloca %struct.age_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.age_softc* %0, %struct.age_softc** %2, align 8
  %5 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %6 = load i32, i32* @AGE_MASTER_CFG, align 4
  %7 = load i32, i32* @MASTER_RESET, align 4
  %8 = call i32 @CSR_WRITE_4(%struct.age_softc* %5, i32 %6, i32 %7)
  %9 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %10 = load i32, i32* @AGE_MASTER_CFG, align 4
  %11 = call i32 @CSR_READ_4(%struct.age_softc* %9, i32 %10)
  %12 = call i32 @DELAY(i32 1000)
  %13 = load i32, i32* @AGE_RESET_TIMEOUT, align 4
  store i32 %13, i32* %4, align 4
  br label %14

14:                                               ; preds = %25, %1
  %15 = load i32, i32* %4, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %14
  %18 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %19 = load i32, i32* @AGE_IDLE_STATUS, align 4
  %20 = call i32 @CSR_READ_4(%struct.age_softc* %18, i32 %19)
  store i32 %20, i32* %3, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %28

23:                                               ; preds = %17
  %24 = call i32 @DELAY(i32 10)
  br label %25

25:                                               ; preds = %23
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %4, align 4
  br label %14

28:                                               ; preds = %22, %14
  %29 = load i32, i32* %4, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %33 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @device_printf(i32 %34, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %31, %28
  %38 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %39 = call i32 @CSR_WRITE_4(%struct.age_softc* %38, i32 4860, i32 25856)
  %40 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %41 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %42 = call i32 @CSR_READ_4(%struct.age_softc* %41, i32 4104)
  %43 = or i32 %42, 32768
  %44 = call i32 @CSR_WRITE_4(%struct.age_softc* %40, i32 4104, i32 %43)
  ret void
}

declare dso_local i32 @CSR_WRITE_4(%struct.age_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.age_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
