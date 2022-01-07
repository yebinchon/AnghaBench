; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rl/extr_if_rl.c_rl_watchdog.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rl/extr_if_rl.c_rl_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rl_softc = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"watchdog timeout\0A\00", align 1
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rl_softc*)* @rl_watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rl_watchdog(%struct.rl_softc* %0) #0 {
  %2 = alloca %struct.rl_softc*, align 8
  store %struct.rl_softc* %0, %struct.rl_softc** %2, align 8
  %3 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %4 = call i32 @RL_LOCK_ASSERT(%struct.rl_softc* %3)
  %5 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %6 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %11 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %12, -1
  store i64 %13, i64* %11, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %9, %1
  br label %40

16:                                               ; preds = %9
  %17 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %18 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @device_printf(i32 %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %22 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %25 = call i32 @if_inc_counter(%struct.TYPE_2__* %23, i32 %24, i32 1)
  %26 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %27 = call i32 @rl_txeof(%struct.rl_softc* %26)
  %28 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %29 = call i32 @rl_rxeof(%struct.rl_softc* %28)
  %30 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %31 = xor i32 %30, -1
  %32 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %33 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, %31
  store i32 %37, i32* %35, align 4
  %38 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %39 = call i32 @rl_init_locked(%struct.rl_softc* %38)
  br label %40

40:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @RL_LOCK_ASSERT(%struct.rl_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @if_inc_counter(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @rl_txeof(%struct.rl_softc*) #1

declare dso_local i32 @rl_rxeof(%struct.rl_softc*) #1

declare dso_local i32 @rl_init_locked(%struct.rl_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
