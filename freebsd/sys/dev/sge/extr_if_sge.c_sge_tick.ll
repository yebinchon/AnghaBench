; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sge/extr_if_sge.c_sge_tick.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sge/extr_if_sge.c_sge_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge_softc = type { i32, i32, i32, i32, %struct.ifnet* }
%struct.ifnet = type { i32 }
%struct.mii_data = type { i32 }

@SGE_FLAG_LINK = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @sge_tick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sge_tick(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sge_softc*, align 8
  %4 = alloca %struct.mii_data*, align 8
  %5 = alloca %struct.ifnet*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.sge_softc*
  store %struct.sge_softc* %7, %struct.sge_softc** %3, align 8
  %8 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %9 = call i32 @SGE_LOCK_ASSERT(%struct.sge_softc* %8)
  %10 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %11 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %10, i32 0, i32 4
  %12 = load %struct.ifnet*, %struct.ifnet** %11, align 8
  store %struct.ifnet* %12, %struct.ifnet** %5, align 8
  %13 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %14 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.mii_data* @device_get_softc(i32 %15)
  store %struct.mii_data* %16, %struct.mii_data** %4, align 8
  %17 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %18 = call i32 @mii_tick(%struct.mii_data* %17)
  %19 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %20 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @SGE_FLAG_LINK, align 4
  %23 = and i32 %21, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %1
  %26 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %27 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @sge_miibus_statchg(i32 %28)
  %30 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %31 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @SGE_FLAG_LINK, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %25
  %37 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %38 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %37, i32 0, i32 0
  %39 = call i32 @IFQ_DRV_IS_EMPTY(i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %43 = call i32 @sge_start_locked(%struct.ifnet* %42)
  br label %44

44:                                               ; preds = %41, %36, %25
  br label %45

45:                                               ; preds = %44, %1
  %46 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %47 = call i32 @sge_txeof(%struct.sge_softc* %46)
  %48 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %49 = call i32 @sge_watchdog(%struct.sge_softc* %48)
  %50 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %51 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %50, i32 0, i32 1
  %52 = load i32, i32* @hz, align 4
  %53 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %54 = call i32 @callout_reset(i32* %51, i32 %52, void (i8*)* @sge_tick, %struct.sge_softc* %53)
  ret void
}

declare dso_local i32 @SGE_LOCK_ASSERT(%struct.sge_softc*) #1

declare dso_local %struct.mii_data* @device_get_softc(i32) #1

declare dso_local i32 @mii_tick(%struct.mii_data*) #1

declare dso_local i32 @sge_miibus_statchg(i32) #1

declare dso_local i32 @IFQ_DRV_IS_EMPTY(i32*) #1

declare dso_local i32 @sge_start_locked(%struct.ifnet*) #1

declare dso_local i32 @sge_txeof(%struct.sge_softc*) #1

declare dso_local i32 @sge_watchdog(%struct.sge_softc*) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.sge_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
