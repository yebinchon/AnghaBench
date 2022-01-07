; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/et/extr_if_et.c_et_tick.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/et/extr_if_et.c_et_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et_softc = type { i32, i32, %struct.ifnet* }
%struct.ifnet = type { i32 }
%struct.mii_data = type { i32 }

@EJUSTRETURN = common dso_local global i64 0, align 8
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @et_tick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @et_tick(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.et_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.mii_data*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.et_softc*
  store %struct.et_softc* %7, %struct.et_softc** %3, align 8
  %8 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %9 = call i32 @ET_LOCK_ASSERT(%struct.et_softc* %8)
  %10 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %11 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %10, i32 0, i32 2
  %12 = load %struct.ifnet*, %struct.ifnet** %11, align 8
  store %struct.ifnet* %12, %struct.ifnet** %4, align 8
  %13 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %14 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.mii_data* @device_get_softc(i32 %15)
  store %struct.mii_data* %16, %struct.mii_data** %5, align 8
  %17 = load %struct.mii_data*, %struct.mii_data** %5, align 8
  %18 = call i32 @mii_tick(%struct.mii_data* %17)
  %19 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %20 = call i32 @et_stats_update(%struct.et_softc* %19)
  %21 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %22 = call i64 @et_watchdog(%struct.et_softc* %21)
  %23 = load i64, i64* @EJUSTRETURN, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  br label %32

26:                                               ; preds = %1
  %27 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %28 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %27, i32 0, i32 0
  %29 = load i32, i32* @hz, align 4
  %30 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %31 = call i32 @callout_reset(i32* %28, i32 %29, void (i8*)* @et_tick, %struct.et_softc* %30)
  br label %32

32:                                               ; preds = %26, %25
  ret void
}

declare dso_local i32 @ET_LOCK_ASSERT(%struct.et_softc*) #1

declare dso_local %struct.mii_data* @device_get_softc(i32) #1

declare dso_local i32 @mii_tick(%struct.mii_data*) #1

declare dso_local i32 @et_stats_update(%struct.et_softc*) #1

declare dso_local i64 @et_watchdog(%struct.et_softc*) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.et_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
