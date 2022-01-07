; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mge/extr_if_mge.c_mge_intr_tx_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mge/extr_if_mge.c_mge_intr_tx_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mge_softc = type { i64, i32, i64, i32, %struct.mge_desc_wrapper*, i64, %struct.ifnet* }
%struct.mge_desc_wrapper = type { %struct.mbuf*, i32, i32, %struct.mge_desc* }
%struct.mbuf = type { i32 }
%struct.mge_desc = type { i32 }
%struct.ifnet = type { i32 }

@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@MGE_DMA_OWNED = common dso_local global i32 0, align 4
@MGE_TX_DESC_NUM = common dso_local global i32 0, align 4
@MGE_ERR_SUMMARY = common dso_local global i32 0, align 4
@MGE_ERR_MASK = common dso_local global i32 0, align 4
@MGE_TX_ERROR_LC = common dso_local global i32 0, align 4
@IFCOUNTER_COLLISIONS = common dso_local global i32 0, align 4
@MGE_TX_ERROR_RL = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@IFCOUNTER_OPACKETS = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mge_softc*)* @mge_intr_tx_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mge_intr_tx_locked(%struct.mge_softc* %0) #0 {
  %2 = alloca %struct.mge_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.mge_desc_wrapper*, align 8
  %5 = alloca %struct.mge_desc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mge_softc* %0, %struct.mge_softc** %2, align 8
  %8 = load %struct.mge_softc*, %struct.mge_softc** %2, align 8
  %9 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %8, i32 0, i32 6
  %10 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  store %struct.ifnet* %10, %struct.ifnet** %3, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.mge_softc*, %struct.mge_softc** %2, align 8
  %12 = call i32 @MGE_TRANSMIT_LOCK_ASSERT(%struct.mge_softc* %11)
  %13 = load %struct.mge_softc*, %struct.mge_softc** %2, align 8
  %14 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %13, i32 0, i32 5
  store i64 0, i64* %14, align 8
  br label %15

15:                                               ; preds = %86, %1
  %16 = load %struct.mge_softc*, %struct.mge_softc** %2, align 8
  %17 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %113

20:                                               ; preds = %15
  %21 = load %struct.mge_softc*, %struct.mge_softc** %2, align 8
  %22 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %21, i32 0, i32 4
  %23 = load %struct.mge_desc_wrapper*, %struct.mge_desc_wrapper** %22, align 8
  %24 = load %struct.mge_softc*, %struct.mge_softc** %2, align 8
  %25 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.mge_desc_wrapper, %struct.mge_desc_wrapper* %23, i64 %26
  store %struct.mge_desc_wrapper* %27, %struct.mge_desc_wrapper** %4, align 8
  %28 = load %struct.mge_desc_wrapper*, %struct.mge_desc_wrapper** %4, align 8
  %29 = getelementptr inbounds %struct.mge_desc_wrapper, %struct.mge_desc_wrapper* %28, i32 0, i32 3
  %30 = load %struct.mge_desc*, %struct.mge_desc** %29, align 8
  store %struct.mge_desc* %30, %struct.mge_desc** %5, align 8
  %31 = load %struct.mge_softc*, %struct.mge_softc** %2, align 8
  %32 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.mge_desc_wrapper*, %struct.mge_desc_wrapper** %4, align 8
  %35 = getelementptr inbounds %struct.mge_desc_wrapper, %struct.mge_desc_wrapper* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %38 = call i32 @bus_dmamap_sync(i32 %33, i32 %36, i32 %37)
  %39 = load %struct.mge_desc*, %struct.mge_desc** %5, align 8
  %40 = getelementptr inbounds %struct.mge_desc, %struct.mge_desc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @MGE_DMA_OWNED, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %20
  br label %113

47:                                               ; preds = %20
  %48 = load %struct.mge_softc*, %struct.mge_softc** %2, align 8
  %49 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %49, align 8
  %52 = load i32, i32* @MGE_TX_DESC_NUM, align 4
  %53 = sext i32 %52 to i64
  %54 = urem i64 %51, %53
  %55 = load %struct.mge_softc*, %struct.mge_softc** %2, align 8
  %56 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load %struct.mge_softc*, %struct.mge_softc** %2, align 8
  %58 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, -1
  store i64 %60, i64* %58, align 8
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @MGE_ERR_SUMMARY, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %86

65:                                               ; preds = %47
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @MGE_ERR_MASK, align 4
  %68 = and i32 %66, %67
  %69 = load i32, i32* @MGE_TX_ERROR_LC, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %73 = load i32, i32* @IFCOUNTER_COLLISIONS, align 4
  %74 = call i32 @if_inc_counter(%struct.ifnet* %72, i32 %73, i32 1)
  br label %75

75:                                               ; preds = %71, %65
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @MGE_ERR_MASK, align 4
  %78 = and i32 %76, %77
  %79 = load i32, i32* @MGE_TX_ERROR_RL, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %75
  %82 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %83 = load i32, i32* @IFCOUNTER_COLLISIONS, align 4
  %84 = call i32 @if_inc_counter(%struct.ifnet* %82, i32 %83, i32 16)
  br label %85

85:                                               ; preds = %81, %75
  br label %86

86:                                               ; preds = %85, %47
  %87 = load %struct.mge_softc*, %struct.mge_softc** %2, align 8
  %88 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.mge_desc_wrapper*, %struct.mge_desc_wrapper** %4, align 8
  %91 = getelementptr inbounds %struct.mge_desc_wrapper, %struct.mge_desc_wrapper* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %94 = call i32 @bus_dmamap_sync(i32 %89, i32 %92, i32 %93)
  %95 = load %struct.mge_softc*, %struct.mge_softc** %2, align 8
  %96 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.mge_desc_wrapper*, %struct.mge_desc_wrapper** %4, align 8
  %99 = getelementptr inbounds %struct.mge_desc_wrapper, %struct.mge_desc_wrapper* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @bus_dmamap_unload(i32 %97, i32 %100)
  %102 = load %struct.mge_desc_wrapper*, %struct.mge_desc_wrapper** %4, align 8
  %103 = getelementptr inbounds %struct.mge_desc_wrapper, %struct.mge_desc_wrapper* %102, i32 0, i32 0
  %104 = load %struct.mbuf*, %struct.mbuf** %103, align 8
  %105 = call i32 @m_freem(%struct.mbuf* %104)
  %106 = load %struct.mge_desc_wrapper*, %struct.mge_desc_wrapper** %4, align 8
  %107 = getelementptr inbounds %struct.mge_desc_wrapper, %struct.mge_desc_wrapper* %106, i32 0, i32 0
  store %struct.mbuf* null, %struct.mbuf** %107, align 8
  %108 = load i32, i32* %7, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %7, align 4
  %110 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %111 = load i32, i32* @IFCOUNTER_OPACKETS, align 4
  %112 = call i32 @if_inc_counter(%struct.ifnet* %110, i32 %111, i32 1)
  br label %15

113:                                              ; preds = %46, %15
  %114 = load i32, i32* %7, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %113
  %117 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %118 = xor i32 %117, -1
  %119 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %120 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = and i32 %121, %118
  store i32 %122, i32* %120, align 4
  %123 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %124 = call i32 @mge_start_locked(%struct.ifnet* %123)
  br label %125

125:                                              ; preds = %116, %113
  ret void
}

declare dso_local i32 @MGE_TRANSMIT_LOCK_ASSERT(%struct.mge_softc*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @mge_start_locked(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
