; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/my/extr_if_my.c_my_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/my/extr_if_my.c_my_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.my_softc = type { i32 }

@MY_BCR = common dso_local global i32 0, align 4
@MY_SWR = common dso_local global i32 0, align 4
@MY_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"reset never completed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.my_softc*)* @my_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @my_reset(%struct.my_softc* %0) #0 {
  %2 = alloca %struct.my_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.my_softc* %0, %struct.my_softc** %2, align 8
  %4 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %5 = call i32 @MY_LOCK_ASSERT(%struct.my_softc* %4)
  %6 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %7 = load i32, i32* @MY_BCR, align 4
  %8 = load i32, i32* @MY_SWR, align 4
  %9 = call i32 @MY_SETBIT(%struct.my_softc* %6, i32 %7, i32 %8)
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %24, %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @MY_TIMEOUT, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %10
  %15 = call i32 @DELAY(i32 10)
  %16 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %17 = load i32, i32* @MY_BCR, align 4
  %18 = call i32 @CSR_READ_4(%struct.my_softc* %16, i32 %17)
  %19 = load i32, i32* @MY_SWR, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %14
  br label %27

23:                                               ; preds = %14
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %3, align 4
  br label %10

27:                                               ; preds = %22, %10
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @MY_TIMEOUT, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %33 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @device_printf(i32 %34, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %31, %27
  %37 = call i32 @DELAY(i32 1000)
  ret void
}

declare dso_local i32 @MY_LOCK_ASSERT(%struct.my_softc*) #1

declare dso_local i32 @MY_SETBIT(%struct.my_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @CSR_READ_4(%struct.my_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
