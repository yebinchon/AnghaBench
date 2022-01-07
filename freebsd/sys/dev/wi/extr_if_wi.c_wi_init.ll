; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/wi/extr_if_wi.c_wi_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/wi/extr_if_wi.c_wi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wi_softc = type { i32, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"interface not running\0A\00", align 1
@WI_FLAGS_RUNNING = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@wi_watchdog = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wi_init(%struct.wi_softc* %0) #0 {
  %2 = alloca %struct.wi_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.wi_softc* %0, %struct.wi_softc** %2, align 8
  %4 = load %struct.wi_softc*, %struct.wi_softc** %2, align 8
  %5 = call i32 @WI_LOCK_ASSERT(%struct.wi_softc* %4)
  %6 = load %struct.wi_softc*, %struct.wi_softc** %2, align 8
  %7 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.wi_softc*, %struct.wi_softc** %2, align 8
  %13 = call i32 @wi_stop(%struct.wi_softc* %12, i32 1)
  br label %14

14:                                               ; preds = %11, %1
  %15 = load %struct.wi_softc*, %struct.wi_softc** %2, align 8
  %16 = load %struct.wi_softc*, %struct.wi_softc** %2, align 8
  %17 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.wi_softc*, %struct.wi_softc** %2, align 8
  %20 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @wi_setup_locked(%struct.wi_softc* %15, i32 %18, i32 3, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %14
  %26 = load %struct.wi_softc*, %struct.wi_softc** %2, align 8
  %27 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @device_printf(i32 %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.wi_softc*, %struct.wi_softc** %2, align 8
  %31 = call i32 @wi_stop(%struct.wi_softc* %30, i32 1)
  br label %46

32:                                               ; preds = %14
  %33 = load i32, i32* @WI_FLAGS_RUNNING, align 4
  %34 = load %struct.wi_softc*, %struct.wi_softc** %2, align 8
  %35 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load %struct.wi_softc*, %struct.wi_softc** %2, align 8
  %39 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %38, i32 0, i32 1
  %40 = load i32, i32* @hz, align 4
  %41 = load i32, i32* @wi_watchdog, align 4
  %42 = load %struct.wi_softc*, %struct.wi_softc** %2, align 8
  %43 = call i32 @callout_reset(i32* %39, i32 %40, i32 %41, %struct.wi_softc* %42)
  %44 = load %struct.wi_softc*, %struct.wi_softc** %2, align 8
  %45 = call i32 @wi_enable(%struct.wi_softc* %44)
  br label %46

46:                                               ; preds = %32, %25
  ret void
}

declare dso_local i32 @WI_LOCK_ASSERT(%struct.wi_softc*) #1

declare dso_local i32 @wi_stop(%struct.wi_softc*, i32) #1

declare dso_local i64 @wi_setup_locked(%struct.wi_softc*, i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.wi_softc*) #1

declare dso_local i32 @wi_enable(%struct.wi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
