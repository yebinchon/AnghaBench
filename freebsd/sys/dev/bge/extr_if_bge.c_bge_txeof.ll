; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_txeof.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_txeof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bge_softc = type { i64, i64, i64, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32**, i32*, i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.bge_tx_bd* }
%struct.bge_tx_bd = type { i32 }

@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@BGE_TXBDFLAG_END = common dso_local global i32 0, align 4
@IFCOUNTER_OPACKETS = common dso_local global i32 0, align 4
@BGE_TX_RING_CNT = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bge_softc*, i64)* @bge_txeof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bge_txeof(%struct.bge_softc* %0, i64 %1) #0 {
  %3 = alloca %struct.bge_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.bge_tx_bd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.bge_softc* %0, %struct.bge_softc** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %9 = call i32 @BGE_LOCK_ASSERT(%struct.bge_softc* %8)
  %10 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %11 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* %4, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %126

16:                                               ; preds = %2
  %17 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %18 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %6, align 4
  %20 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %21 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %25 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %29 = call i32 @bus_dmamap_sync(i32 %23, i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %105, %16
  %31 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %32 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %4, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %115

36:                                               ; preds = %30
  %37 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %38 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %7, align 8
  %40 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %41 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load %struct.bge_tx_bd*, %struct.bge_tx_bd** %42, align 8
  %44 = load i64, i64* %7, align 8
  %45 = getelementptr inbounds %struct.bge_tx_bd, %struct.bge_tx_bd* %43, i64 %44
  store %struct.bge_tx_bd* %45, %struct.bge_tx_bd** %5, align 8
  %46 = load %struct.bge_tx_bd*, %struct.bge_tx_bd** %5, align 8
  %47 = getelementptr inbounds %struct.bge_tx_bd, %struct.bge_tx_bd* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @BGE_TXBDFLAG_END, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %36
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @IFCOUNTER_OPACKETS, align 4
  %55 = call i32 @if_inc_counter(i32 %53, i32 %54, i32 1)
  br label %56

56:                                               ; preds = %52, %36
  %57 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %58 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32**, i32*** %59, align 8
  %61 = load i64, i64* %7, align 8
  %62 = getelementptr inbounds i32*, i32** %60, i64 %61
  %63 = load i32*, i32** %62, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %105

65:                                               ; preds = %56
  %66 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %67 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %71 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i64, i64* %7, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %78 = call i32 @bus_dmamap_sync(i32 %69, i32 %76, i32 %77)
  %79 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %80 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %84 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load i64, i64* %7, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @bus_dmamap_unload(i32 %82, i32 %89)
  %91 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %92 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32**, i32*** %93, align 8
  %95 = load i64, i64* %7, align 8
  %96 = getelementptr inbounds i32*, i32** %94, i64 %95
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @m_freem(i32* %97)
  %99 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %100 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32**, i32*** %101, align 8
  %103 = load i64, i64* %7, align 8
  %104 = getelementptr inbounds i32*, i32** %102, i64 %103
  store i32* null, i32** %104, align 8
  br label %105

105:                                              ; preds = %65, %56
  %106 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %107 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %108, -1
  store i64 %109, i64* %107, align 8
  %110 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %111 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i32, i32* @BGE_TX_RING_CNT, align 4
  %114 = call i32 @BGE_INC(i64 %112, i32 %113)
  br label %30

115:                                              ; preds = %30
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %118 = call i32 @if_setdrvflagbits(i32 %116, i32 0, i32 %117)
  %119 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %120 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %115
  %124 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %125 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %124, i32 0, i32 2
  store i64 0, i64* %125, align 8
  br label %126

126:                                              ; preds = %15, %123, %115
  ret void
}

declare dso_local i32 @BGE_LOCK_ASSERT(%struct.bge_softc*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @if_inc_counter(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @BGE_INC(i64, i32) #1

declare dso_local i32 @if_setdrvflagbits(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
