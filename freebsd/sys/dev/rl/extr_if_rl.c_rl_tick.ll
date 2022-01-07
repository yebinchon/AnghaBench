; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rl/extr_if_rl.c_rl_tick.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rl/extr_if_rl.c_rl_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rl_softc = type { i32, i64, i32, i64, i32, i32 }
%struct.mii_data = type { i32 }

@RL_FLAG_LINK = common dso_local global i32 0, align 4
@DONE = common dso_local global i64 0, align 8
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @rl_tick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rl_tick(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.rl_softc*, align 8
  %4 = alloca %struct.mii_data*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.rl_softc*
  store %struct.rl_softc* %7, %struct.rl_softc** %3, align 8
  %8 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %9 = call i32 @RL_LOCK_ASSERT(%struct.rl_softc* %8)
  %10 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %11 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.mii_data* @device_get_softc(i32 %12)
  store %struct.mii_data* %13, %struct.mii_data** %4, align 8
  %14 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %15 = call i32 @mii_tick(%struct.mii_data* %14)
  %16 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %17 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @RL_FLAG_LINK, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %24 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @rl_miibus_statchg(i32 %25)
  br label %27

27:                                               ; preds = %22, %1
  %28 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %29 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %56

32:                                               ; preds = %27
  %33 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %34 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @DONE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %40 = call i32 @rl_watchdog(%struct.rl_softc* %39)
  br label %44

41:                                               ; preds = %32
  %42 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %43 = call i32 @rl_twister_update(%struct.rl_softc* %42)
  br label %44

44:                                               ; preds = %41, %38
  %45 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %46 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @DONE, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* @hz, align 4
  store i32 %51, i32* %5, align 4
  br label %55

52:                                               ; preds = %44
  %53 = load i32, i32* @hz, align 4
  %54 = sdiv i32 %53, 10
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %52, %50
  br label %60

56:                                               ; preds = %27
  %57 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %58 = call i32 @rl_watchdog(%struct.rl_softc* %57)
  %59 = load i32, i32* @hz, align 4
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %56, %55
  %61 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %62 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %61, i32 0, i32 2
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %65 = call i32 @callout_reset(i32* %62, i32 %63, void (i8*)* @rl_tick, %struct.rl_softc* %64)
  ret void
}

declare dso_local i32 @RL_LOCK_ASSERT(%struct.rl_softc*) #1

declare dso_local %struct.mii_data* @device_get_softc(i32) #1

declare dso_local i32 @mii_tick(%struct.mii_data*) #1

declare dso_local i32 @rl_miibus_statchg(i32) #1

declare dso_local i32 @rl_watchdog(%struct.rl_softc*) #1

declare dso_local i32 @rl_twister_update(%struct.rl_softc*) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.rl_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
