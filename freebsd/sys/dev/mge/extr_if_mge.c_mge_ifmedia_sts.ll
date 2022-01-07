; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mge/extr_if_mge.c_mge_ifmedia_sts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mge/extr_if_mge.c_mge_ifmedia_sts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.mge_softc* }
%struct.mge_softc = type { %struct.mii_data*, i32 }
%struct.mii_data = type { i32, i32 }
%struct.ifmediareq = type { i32, i32 }

@IFM_1000_T = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i32 0, align 4
@IFM_AVALID = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*, %struct.ifmediareq*)* @mge_ifmedia_sts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mge_ifmedia_sts(%struct.ifnet* %0, %struct.ifmediareq* %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.ifmediareq*, align 8
  %5 = alloca %struct.mge_softc*, align 8
  %6 = alloca %struct.mii_data*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store %struct.ifmediareq* %1, %struct.ifmediareq** %4, align 8
  %7 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %8 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %7, i32 0, i32 0
  %9 = load %struct.mge_softc*, %struct.mge_softc** %8, align 8
  store %struct.mge_softc* %9, %struct.mge_softc** %5, align 8
  %10 = load %struct.mge_softc*, %struct.mge_softc** %5, align 8
  %11 = call i32 @MGE_GLOBAL_LOCK(%struct.mge_softc* %10)
  %12 = load %struct.mge_softc*, %struct.mge_softc** %5, align 8
  %13 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %29, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @IFM_1000_T, align 4
  %18 = load i32, i32* @IFM_FDX, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @IFM_ETHER, align 4
  %21 = or i32 %19, %20
  %22 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %23 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @IFM_AVALID, align 4
  %25 = load i32, i32* @IFM_ACTIVE, align 4
  %26 = or i32 %24, %25
  %27 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %28 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  br label %45

29:                                               ; preds = %2
  %30 = load %struct.mge_softc*, %struct.mge_softc** %5, align 8
  %31 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %30, i32 0, i32 0
  %32 = load %struct.mii_data*, %struct.mii_data** %31, align 8
  store %struct.mii_data* %32, %struct.mii_data** %6, align 8
  %33 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %34 = call i32 @mii_pollstat(%struct.mii_data* %33)
  %35 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %36 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %39 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %41 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %44 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %29, %16
  %46 = load %struct.mge_softc*, %struct.mge_softc** %5, align 8
  %47 = call i32 @MGE_GLOBAL_UNLOCK(%struct.mge_softc* %46)
  ret void
}

declare dso_local i32 @MGE_GLOBAL_LOCK(%struct.mge_softc*) #1

declare dso_local i32 @mii_pollstat(%struct.mii_data*) #1

declare dso_local i32 @MGE_GLOBAL_UNLOCK(%struct.mge_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
