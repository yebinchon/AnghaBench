; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_port.c_sfxge_media_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_port.c_sfxge_media_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.sfxge_softc* }
%struct.sfxge_softc = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.ifmediareq = type { i32, i32 }

@IFM_AVALID = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@sfxge_link_mode = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*, %struct.ifmediareq*)* @sfxge_media_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sfxge_media_status(%struct.ifnet* %0, %struct.ifmediareq* %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.ifmediareq*, align 8
  %5 = alloca %struct.sfxge_softc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store %struct.ifmediareq* %1, %struct.ifmediareq** %4, align 8
  %8 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %9 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %8, i32 0, i32 0
  %10 = load %struct.sfxge_softc*, %struct.sfxge_softc** %9, align 8
  store %struct.sfxge_softc* %10, %struct.sfxge_softc** %5, align 8
  %11 = load %struct.sfxge_softc*, %struct.sfxge_softc** %5, align 8
  %12 = call i32 @SFXGE_ADAPTER_LOCK(%struct.sfxge_softc* %11)
  %13 = load i32, i32* @IFM_AVALID, align 4
  %14 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %15 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @IFM_ETHER, align 4
  %17 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %18 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.sfxge_softc*, %struct.sfxge_softc** %5, align 8
  %20 = call i64 @SFXGE_RUNNING(%struct.sfxge_softc* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %57

22:                                               ; preds = %2
  %23 = load %struct.sfxge_softc*, %struct.sfxge_softc** %5, align 8
  %24 = call i64 @SFXGE_LINK_UP(%struct.sfxge_softc* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %57

26:                                               ; preds = %22
  %27 = load i32, i32* @IFM_ACTIVE, align 4
  %28 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %29 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load %struct.sfxge_softc*, %struct.sfxge_softc** %5, align 8
  %33 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @efx_phy_media_type_get(i32 %34, i64* %6)
  %36 = load %struct.sfxge_softc*, %struct.sfxge_softc** %5, align 8
  %37 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %7, align 8
  %40 = load i32**, i32*** @sfxge_link_mode, align 8
  %41 = load i64, i64* %6, align 8
  %42 = getelementptr inbounds i32*, i32** %40, i64 %41
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* %7, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %48 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load %struct.sfxge_softc*, %struct.sfxge_softc** %5, align 8
  %52 = call i32 @sfxge_port_link_fc_ifm(%struct.sfxge_softc* %51)
  %53 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %54 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %26, %22, %2
  %58 = load %struct.sfxge_softc*, %struct.sfxge_softc** %5, align 8
  %59 = call i32 @SFXGE_ADAPTER_UNLOCK(%struct.sfxge_softc* %58)
  ret void
}

declare dso_local i32 @SFXGE_ADAPTER_LOCK(%struct.sfxge_softc*) #1

declare dso_local i64 @SFXGE_RUNNING(%struct.sfxge_softc*) #1

declare dso_local i64 @SFXGE_LINK_UP(%struct.sfxge_softc*) #1

declare dso_local i32 @efx_phy_media_type_get(i32, i64*) #1

declare dso_local i32 @sfxge_port_link_fc_ifm(%struct.sfxge_softc*) #1

declare dso_local i32 @SFXGE_ADAPTER_UNLOCK(%struct.sfxge_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
