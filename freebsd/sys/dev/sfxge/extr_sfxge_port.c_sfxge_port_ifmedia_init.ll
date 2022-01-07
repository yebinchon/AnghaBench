; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_port.c_sfxge_port_ifmedia_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_port.c_sfxge_port_ifmedia_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_softc = type { i32, i32 }

@IFM_IMASK = common dso_local global i32 0, align 4
@sfxge_media_change = common dso_local global i32 0, align 4
@sfxge_media_status = common dso_local global i32 0, align 4
@EFX_PHY_CAP_PERM = common dso_local global i32 0, align 4
@EFX_LINK_10HDX = common dso_local global i64 0, align 8
@EFX_LINK_NMODES = common dso_local global i64 0, align 8
@EFX_PHY_CAP_INVALID = common dso_local global i32 0, align 4
@sfxge_link_mode = common dso_local global i32** null, align 8
@EFX_PHY_CAP_AN = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i32 0, align 4
@IFM_AUTO = common dso_local global i32 0, align 4
@IFM_ETH_RXPAUSE = common dso_local global i32 0, align 4
@IFM_ETH_TXPAUSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sfxge_port_ifmedia_init(%struct.sfxge_softc* %0) #0 {
  %2 = alloca %struct.sfxge_softc*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sfxge_softc* %0, %struct.sfxge_softc** %2, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %12 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @efx_filter_init(i32 %13)
  store i32 %14, i32* %10, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %112

17:                                               ; preds = %1
  %18 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %19 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @efx_port_init(i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %107

24:                                               ; preds = %17
  %25 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %26 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %25, i32 0, i32 1
  %27 = load i32, i32* @IFM_IMASK, align 4
  %28 = load i32, i32* @sfxge_media_change, align 4
  %29 = load i32, i32* @sfxge_media_status, align 4
  %30 = call i32 @ifmedia_init(i32* %26, i32 %27, i32 %28, i32 %29)
  %31 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %32 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @efx_phy_media_type_get(i32 %33, i64* %3)
  %35 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %36 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @EFX_PHY_CAP_PERM, align 4
  %39 = call i32 @efx_phy_adv_cap_get(i32 %37, i32 %38, i32* %4)
  %40 = load i64, i64* @EFX_LINK_10HDX, align 8
  store i64 %40, i64* %6, align 8
  br label %41

41:                                               ; preds = %76, %24
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* @EFX_LINK_NMODES, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %79

45:                                               ; preds = %41
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @sfxge_link_mode_to_phy_cap(i64 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @EFX_PHY_CAP_INVALID, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %76

52:                                               ; preds = %45
  %53 = load i32, i32* %7, align 4
  %54 = shl i32 1, %53
  store i32 %54, i32* %5, align 4
  %55 = load i32**, i32*** @sfxge_link_mode, align 8
  %56 = load i64, i64* %3, align 8
  %57 = getelementptr inbounds i32*, i32** %55, i64 %56
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* %6, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* %5, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %52
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %71 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %70, i32 0, i32 1
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @ifmedia_add(i32* %71, i32 %72, i32 0, i32* null)
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %9, align 4
  br label %75

75:                                               ; preds = %69, %66, %52
  br label %76

76:                                               ; preds = %75, %51
  %77 = load i64, i64* %6, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %6, align 8
  br label %41

79:                                               ; preds = %41
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @EFX_PHY_CAP_AN, align 4
  %82 = shl i32 1, %81
  %83 = and i32 %80, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %79
  %86 = load i32, i32* @IFM_ETHER, align 4
  %87 = load i32, i32* @IFM_AUTO, align 4
  %88 = or i32 %86, %87
  store i32 %88, i32* %8, align 4
  %89 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %90 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %89, i32 0, i32 1
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @ifmedia_add(i32* %90, i32 %91, i32 0, i32* null)
  %93 = load i32, i32* %8, align 4
  store i32 %93, i32* %9, align 4
  br label %94

94:                                               ; preds = %85, %79
  %95 = load i32, i32* %9, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %94
  %98 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %99 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %98, i32 0, i32 1
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @ifmedia_set(i32* %99, i32 %100)
  br label %102

102:                                              ; preds = %97, %94
  %103 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %104 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @efx_port_fini(i32 %105)
  br label %107

107:                                              ; preds = %102, %23
  %108 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %109 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @efx_filter_fini(i32 %110)
  br label %112

112:                                              ; preds = %107, %16
  %113 = load i32, i32* %10, align 4
  ret i32 %113
}

declare dso_local i32 @efx_filter_init(i32) #1

declare dso_local i32 @efx_port_init(i32) #1

declare dso_local i32 @ifmedia_init(i32*, i32, i32, i32) #1

declare dso_local i32 @efx_phy_media_type_get(i32, i64*) #1

declare dso_local i32 @efx_phy_adv_cap_get(i32, i32, i32*) #1

declare dso_local i32 @sfxge_link_mode_to_phy_cap(i64) #1

declare dso_local i32 @ifmedia_add(i32*, i32, i32, i32*) #1

declare dso_local i32 @ifmedia_set(i32*, i32) #1

declare dso_local i32 @efx_port_fini(i32) #1

declare dso_local i32 @efx_filter_fini(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
