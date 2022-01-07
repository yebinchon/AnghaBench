; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/re/extr_if_re.c_re_watchdog.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/re/extr_if_re.c_re_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rl_softc = type { i64, %struct.TYPE_2__, %struct.ifnet* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.ifnet = type { i32, i32 }

@.str = private unnamed_addr constant [55 x i8] c"watchdog timeout (missed Tx interrupts) -- recovering\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"watchdog timeout\0A\00", align 1
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rl_softc*)* @re_watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @re_watchdog(%struct.rl_softc* %0) #0 {
  %2 = alloca %struct.rl_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  store %struct.rl_softc* %0, %struct.rl_softc** %2, align 8
  %4 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %5 = call i32 @RL_LOCK_ASSERT(%struct.rl_softc* %4)
  %6 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %7 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %12 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, -1
  store i64 %14, i64* %12, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %10, %1
  br label %66

17:                                               ; preds = %10
  %18 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %19 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %18, i32 0, i32 2
  %20 = load %struct.ifnet*, %struct.ifnet** %19, align 8
  store %struct.ifnet* %20, %struct.ifnet** %3, align 8
  %21 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %22 = call i32 @re_txeof(%struct.rl_softc* %21)
  %23 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %24 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %28 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %26, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %17
  %33 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %34 = call i32 @if_printf(%struct.ifnet* %33, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %36 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %35, i32 0, i32 0
  %37 = call i32 @IFQ_DRV_IS_EMPTY(i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %32
  %40 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %41 = call i32 @re_start_locked(%struct.ifnet* %40)
  br label %42

42:                                               ; preds = %39, %32
  br label %66

43:                                               ; preds = %17
  %44 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %45 = call i32 @if_printf(%struct.ifnet* %44, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %46 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %47 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %48 = call i32 @if_inc_counter(%struct.ifnet* %46, i32 %47, i32 1)
  %49 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %50 = call i32 @re_rxeof(%struct.rl_softc* %49, i32* null)
  %51 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %52 = xor i32 %51, -1
  %53 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %54 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, %52
  store i32 %56, i32* %54, align 4
  %57 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %58 = call i32 @re_init_locked(%struct.rl_softc* %57)
  %59 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %60 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %59, i32 0, i32 0
  %61 = call i32 @IFQ_DRV_IS_EMPTY(i32* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %43
  %64 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %65 = call i32 @re_start_locked(%struct.ifnet* %64)
  br label %66

66:                                               ; preds = %16, %42, %63, %43
  ret void
}

declare dso_local i32 @RL_LOCK_ASSERT(%struct.rl_softc*) #1

declare dso_local i32 @re_txeof(%struct.rl_softc*) #1

declare dso_local i32 @if_printf(%struct.ifnet*, i8*) #1

declare dso_local i32 @IFQ_DRV_IS_EMPTY(i32*) #1

declare dso_local i32 @re_start_locked(%struct.ifnet*) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @re_rxeof(%struct.rl_softc*, i32*) #1

declare dso_local i32 @re_init_locked(%struct.rl_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
