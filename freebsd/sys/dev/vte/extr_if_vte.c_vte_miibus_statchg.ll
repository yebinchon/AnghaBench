; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vte/extr_if_vte.c_vte_miibus_statchg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vte/extr_if_vte.c_vte_miibus_statchg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vte_softc = type { i32, i32, i32, %struct.ifnet*, i32 }
%struct.ifnet = type { i32 }
%struct.mii_data = type { i32, i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@VTE_FLAG_LINK = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@IFM_AVALID = common dso_local global i32 0, align 4
@VTE_IM_TIMER_SHIFT = common dso_local global i32 0, align 4
@VTE_IM_BUNDLE_SHIFT = common dso_local global i32 0, align 4
@VTE_MRICR = common dso_local global i32 0, align 4
@VTE_MTICR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @vte_miibus_statchg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vte_miibus_statchg(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vte_softc*, align 8
  %4 = alloca %struct.mii_data*, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i8* @device_get_softc(i32 %7)
  %9 = bitcast i8* %8 to %struct.vte_softc*
  store %struct.vte_softc* %9, %struct.vte_softc** %3, align 8
  %10 = load %struct.vte_softc*, %struct.vte_softc** %3, align 8
  %11 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = call i8* @device_get_softc(i32 %12)
  %14 = bitcast i8* %13 to %struct.mii_data*
  store %struct.mii_data* %14, %struct.mii_data** %4, align 8
  %15 = load %struct.vte_softc*, %struct.vte_softc** %3, align 8
  %16 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %15, i32 0, i32 3
  %17 = load %struct.ifnet*, %struct.ifnet** %16, align 8
  store %struct.ifnet* %17, %struct.ifnet** %5, align 8
  %18 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %19 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %22 = and i32 %20, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %116

25:                                               ; preds = %1
  %26 = load i32, i32* @VTE_FLAG_LINK, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.vte_softc*, %struct.vte_softc** %3, align 8
  %29 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %33 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @IFM_ACTIVE, align 4
  %36 = load i32, i32* @IFM_AVALID, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %34, %37
  %39 = load i32, i32* @IFM_ACTIVE, align 4
  %40 = load i32, i32* @IFM_AVALID, align 4
  %41 = or i32 %39, %40
  %42 = icmp eq i32 %38, %41
  br i1 %42, label %43, label %56

43:                                               ; preds = %25
  %44 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %45 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @IFM_SUBTYPE(i32 %46)
  switch i32 %47, label %54 [
    i32 128, label %48
    i32 129, label %48
  ]

48:                                               ; preds = %43, %43
  %49 = load i32, i32* @VTE_FLAG_LINK, align 4
  %50 = load %struct.vte_softc*, %struct.vte_softc** %3, align 8
  %51 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  br label %55

54:                                               ; preds = %43
  br label %55

55:                                               ; preds = %54, %48
  br label %56

56:                                               ; preds = %55, %25
  %57 = load %struct.vte_softc*, %struct.vte_softc** %3, align 8
  %58 = call i32 @vte_stop_mac(%struct.vte_softc* %57)
  %59 = load %struct.vte_softc*, %struct.vte_softc** %3, align 8
  %60 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @VTE_FLAG_LINK, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %116

65:                                               ; preds = %56
  %66 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %67 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @IFM_SUBTYPE(i32 %68)
  %70 = icmp eq i32 %69, 129
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load i32, i32* @VTE_IM_TIMER_SHIFT, align 4
  %73 = shl i32 18, %72
  store i32 %73, i32* %6, align 4
  br label %77

74:                                               ; preds = %65
  %75 = load i32, i32* @VTE_IM_TIMER_SHIFT, align 4
  %76 = shl i32 1, %75
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %74, %71
  %78 = load %struct.vte_softc*, %struct.vte_softc** %3, align 8
  %79 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @VTE_IM_BUNDLE_SHIFT, align 4
  %82 = shl i32 %80, %81
  %83 = load i32, i32* %6, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %6, align 4
  %85 = load %struct.vte_softc*, %struct.vte_softc** %3, align 8
  %86 = load i32, i32* @VTE_MRICR, align 4
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @CSR_WRITE_2(%struct.vte_softc* %85, i32 %86, i32 %87)
  %89 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %90 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @IFM_SUBTYPE(i32 %91)
  %93 = icmp eq i32 %92, 129
  br i1 %93, label %94, label %97

94:                                               ; preds = %77
  %95 = load i32, i32* @VTE_IM_TIMER_SHIFT, align 4
  %96 = shl i32 18, %95
  store i32 %96, i32* %6, align 4
  br label %100

97:                                               ; preds = %77
  %98 = load i32, i32* @VTE_IM_TIMER_SHIFT, align 4
  %99 = shl i32 1, %98
  store i32 %99, i32* %6, align 4
  br label %100

100:                                              ; preds = %97, %94
  %101 = load %struct.vte_softc*, %struct.vte_softc** %3, align 8
  %102 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @VTE_IM_BUNDLE_SHIFT, align 4
  %105 = shl i32 %103, %104
  %106 = load i32, i32* %6, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %6, align 4
  %108 = load %struct.vte_softc*, %struct.vte_softc** %3, align 8
  %109 = load i32, i32* @VTE_MTICR, align 4
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @CSR_WRITE_2(%struct.vte_softc* %108, i32 %109, i32 %110)
  %112 = load %struct.vte_softc*, %struct.vte_softc** %3, align 8
  %113 = call i32 @vte_mac_config(%struct.vte_softc* %112)
  %114 = load %struct.vte_softc*, %struct.vte_softc** %3, align 8
  %115 = call i32 @vte_start_mac(%struct.vte_softc* %114)
  br label %116

116:                                              ; preds = %24, %100, %56
  ret void
}

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @vte_stop_mac(%struct.vte_softc*) #1

declare dso_local i32 @CSR_WRITE_2(%struct.vte_softc*, i32, i32) #1

declare dso_local i32 @vte_mac_config(%struct.vte_softc*) #1

declare dso_local i32 @vte_start_mac(%struct.vte_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
