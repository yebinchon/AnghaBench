; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sis/extr_if_sis.c_sis_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sis/extr_if_sis.c_sis_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sis_softc = type { i64, i32 }

@SIS_CSR = common dso_local global i32 0, align 4
@SIS_CSR_RESET = common dso_local global i32 0, align 4
@SIS_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"reset never completed\0A\00", align 1
@SIS_TYPE_83815 = common dso_local global i64 0, align 8
@NS_CLKRUN = common dso_local global i32 0, align 4
@NS_CLKRUN_PMESTS = common dso_local global i32 0, align 4
@SIS_PWRMAN_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sis_softc*)* @sis_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sis_reset(%struct.sis_softc* %0) #0 {
  %2 = alloca %struct.sis_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.sis_softc* %0, %struct.sis_softc** %2, align 8
  %4 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %5 = load i32, i32* @SIS_CSR, align 4
  %6 = load i32, i32* @SIS_CSR_RESET, align 4
  %7 = call i32 @SIS_SETBIT(%struct.sis_softc* %4, i32 %5, i32 %6)
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %21, %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @SIS_TIMEOUT, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %24

12:                                               ; preds = %8
  %13 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %14 = load i32, i32* @SIS_CSR, align 4
  %15 = call i32 @CSR_READ_4(%struct.sis_softc* %13, i32 %14)
  %16 = load i32, i32* @SIS_CSR_RESET, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %12
  br label %24

20:                                               ; preds = %12
  br label %21

21:                                               ; preds = %20
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %3, align 4
  br label %8

24:                                               ; preds = %19, %8
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @SIS_TIMEOUT, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %30 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @device_printf(i32 %31, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %28, %24
  %34 = call i32 @DELAY(i32 1000)
  %35 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %36 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SIS_TYPE_83815, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %33
  %41 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %42 = load i32, i32* @NS_CLKRUN, align 4
  %43 = load i32, i32* @NS_CLKRUN_PMESTS, align 4
  %44 = call i32 @CSR_WRITE_4(%struct.sis_softc* %41, i32 %42, i32 %43)
  %45 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %46 = load i32, i32* @NS_CLKRUN, align 4
  %47 = call i32 @CSR_WRITE_4(%struct.sis_softc* %45, i32 %46, i32 0)
  br label %52

48:                                               ; preds = %33
  %49 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %50 = load i32, i32* @SIS_PWRMAN_CTL, align 4
  %51 = call i32 @CSR_WRITE_4(%struct.sis_softc* %49, i32 %50, i32 0)
  br label %52

52:                                               ; preds = %48, %40
  ret void
}

declare dso_local i32 @SIS_SETBIT(%struct.sis_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.sis_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.sis_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
