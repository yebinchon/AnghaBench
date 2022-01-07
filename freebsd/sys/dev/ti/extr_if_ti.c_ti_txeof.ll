; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ti/extr_if_ti.c_ti_txeof.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ti/extr_if_ti.c_ti_txeof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_softc = type { i32, i64, i64, i64, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, %struct.ifnet* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.ti_tx_desc* }
%struct.ti_tx_desc = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ifnet = type { i32 }
%struct.ti_txdesc = type { i32*, i32 }

@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@TI_HWREV_TIGON = common dso_local global i64 0, align 8
@TI_TX_RING_BASE = common dso_local global i64 0, align 8
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@TI_BDFLAG_END = common dso_local global i32 0, align 4
@IFCOUNTER_OPACKETS = common dso_local global i32 0, align 4
@tx_q = common dso_local global i32 0, align 4
@TI_TX_RING_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ti_softc*)* @ti_txeof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ti_txeof(%struct.ti_softc* %0) #0 {
  %2 = alloca %struct.ti_softc*, align 8
  %3 = alloca %struct.ti_txdesc*, align 8
  %4 = alloca %struct.ti_tx_desc, align 4
  %5 = alloca %struct.ti_tx_desc*, align 8
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca i32, align 4
  store %struct.ti_softc* %0, %struct.ti_softc** %2, align 8
  store %struct.ti_tx_desc* null, %struct.ti_tx_desc** %5, align 8
  %8 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %9 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %8, i32 0, i32 7
  %10 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  store %struct.ifnet* %10, %struct.ifnet** %6, align 8
  %11 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %12 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = call %struct.ti_txdesc* @STAILQ_FIRST(i32* %13)
  store %struct.ti_txdesc* %14, %struct.ti_txdesc** %3, align 8
  %15 = load %struct.ti_txdesc*, %struct.ti_txdesc** %3, align 8
  %16 = icmp eq %struct.ti_txdesc* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %143

18:                                               ; preds = %1
  %19 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %20 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %19, i32 0, i32 5
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.ti_tx_desc*, %struct.ti_tx_desc** %21, align 8
  %23 = icmp ne %struct.ti_tx_desc* %22, null
  br i1 %23, label %24, label %35

24:                                               ; preds = %18
  %25 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %26 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %30 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %34 = call i32 @bus_dmamap_sync(i32 %28, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %24, %18
  %36 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %37 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %128, %35
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %42 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %41, i32 0, i32 6
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %40, %44
  br i1 %45, label %46, label %132

46:                                               ; preds = %39
  %47 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %48 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @TI_HWREV_TIGON, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %46
  %53 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %54 = load i64, i64* @TI_TX_RING_BASE, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = mul i64 %56, 4
  %58 = add i64 %54, %57
  %59 = call i32 @ti_mem_read(%struct.ti_softc* %53, i64 %58, i32 4, %struct.ti_tx_desc* %4)
  store %struct.ti_tx_desc* %4, %struct.ti_tx_desc** %5, align 8
  br label %68

60:                                               ; preds = %46
  %61 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %62 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %61, i32 0, i32 5
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load %struct.ti_tx_desc*, %struct.ti_tx_desc** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.ti_tx_desc, %struct.ti_tx_desc* %64, i64 %66
  store %struct.ti_tx_desc* %67, %struct.ti_tx_desc** %5, align 8
  br label %68

68:                                               ; preds = %60, %52
  %69 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %70 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %71, -1
  store i64 %72, i64* %70, align 8
  %73 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %74 = xor i32 %73, -1
  %75 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %76 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, %74
  store i32 %78, i32* %76, align 4
  %79 = load %struct.ti_tx_desc*, %struct.ti_tx_desc** %5, align 8
  %80 = getelementptr inbounds %struct.ti_tx_desc, %struct.ti_tx_desc* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @TI_BDFLAG_END, align 4
  %83 = and i32 %81, %82
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %68
  br label %128

86:                                               ; preds = %68
  %87 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %88 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.ti_txdesc*, %struct.ti_txdesc** %3, align 8
  %92 = getelementptr inbounds %struct.ti_txdesc, %struct.ti_txdesc* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %95 = call i32 @bus_dmamap_sync(i32 %90, i32 %93, i32 %94)
  %96 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %97 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %96, i32 0, i32 4
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.ti_txdesc*, %struct.ti_txdesc** %3, align 8
  %101 = getelementptr inbounds %struct.ti_txdesc, %struct.ti_txdesc* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @bus_dmamap_unload(i32 %99, i32 %102)
  %104 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %105 = load i32, i32* @IFCOUNTER_OPACKETS, align 4
  %106 = call i32 @if_inc_counter(%struct.ifnet* %104, i32 %105, i32 1)
  %107 = load %struct.ti_txdesc*, %struct.ti_txdesc** %3, align 8
  %108 = getelementptr inbounds %struct.ti_txdesc, %struct.ti_txdesc* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = call i32 @m_freem(i32* %109)
  %111 = load %struct.ti_txdesc*, %struct.ti_txdesc** %3, align 8
  %112 = getelementptr inbounds %struct.ti_txdesc, %struct.ti_txdesc* %111, i32 0, i32 0
  store i32* null, i32** %112, align 8
  %113 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %114 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %113, i32 0, i32 4
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i32, i32* @tx_q, align 4
  %117 = call i32 @STAILQ_REMOVE_HEAD(i32* %115, i32 %116)
  %118 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %119 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %118, i32 0, i32 4
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  %121 = load %struct.ti_txdesc*, %struct.ti_txdesc** %3, align 8
  %122 = load i32, i32* @tx_q, align 4
  %123 = call i32 @STAILQ_INSERT_TAIL(i32* %120, %struct.ti_txdesc* %121, i32 %122)
  %124 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %125 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %124, i32 0, i32 4
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = call %struct.ti_txdesc* @STAILQ_FIRST(i32* %126)
  store %struct.ti_txdesc* %127, %struct.ti_txdesc** %3, align 8
  br label %128

128:                                              ; preds = %86, %85
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* @TI_TX_RING_CNT, align 4
  %131 = call i32 @TI_INC(i32 %129, i32 %130)
  br label %39

132:                                              ; preds = %39
  %133 = load i32, i32* %7, align 4
  %134 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %135 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 8
  %136 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %137 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %132
  %141 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %142 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %141, i32 0, i32 3
  store i64 0, i64* %142, align 8
  br label %143

143:                                              ; preds = %17, %140, %132
  ret void
}

declare dso_local %struct.ti_txdesc* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @ti_mem_read(%struct.ti_softc*, i64, i32, %struct.ti_tx_desc*) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.ti_txdesc*, i32) #1

declare dso_local i32 @TI_INC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
