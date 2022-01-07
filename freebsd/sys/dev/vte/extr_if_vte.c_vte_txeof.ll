; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vte/extr_if_vte.c_vte_txeof.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vte/extr_if_vte.c_vte_txeof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vte_softc = type { i64, %struct.TYPE_4__, %struct.ifnet* }
%struct.TYPE_4__ = type { i64, i32, i32, %struct.vte_txdesc*, i32, i32 }
%struct.vte_txdesc = type { i32, i32*, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ifnet = type { i32 }

@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@VTE_DTST_TX_OWN = common dso_local global i32 0, align 4
@VTE_TXMBUF = common dso_local global i32 0, align 4
@VTE_TX_RING_CNT = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vte_softc*)* @vte_txeof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vte_txeof(%struct.vte_softc* %0) #0 {
  %2 = alloca %struct.vte_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.vte_txdesc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vte_softc* %0, %struct.vte_softc** %2, align 8
  %8 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %9 = call i32 @VTE_LOCK_ASSERT(%struct.vte_softc* %8)
  %10 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %11 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %10, i32 0, i32 2
  %12 = load %struct.ifnet*, %struct.ifnet** %11, align 8
  store %struct.ifnet* %12, %struct.ifnet** %3, align 8
  %13 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %14 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %135

19:                                               ; preds = %1
  %20 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %21 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %25 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %29 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @bus_dmamap_sync(i32 %23, i32 %27, i32 %30)
  %32 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %33 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %109, %19
  %37 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %38 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %112

42:                                               ; preds = %36
  %43 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %44 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 3
  %46 = load %struct.vte_txdesc*, %struct.vte_txdesc** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.vte_txdesc, %struct.vte_txdesc* %46, i64 %48
  store %struct.vte_txdesc* %49, %struct.vte_txdesc** %4, align 8
  %50 = load %struct.vte_txdesc*, %struct.vte_txdesc** %4, align 8
  %51 = getelementptr inbounds %struct.vte_txdesc, %struct.vte_txdesc* %50, i32 0, i32 3
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @le16toh(i32 %54)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @VTE_DTST_TX_OWN, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %42
  br label %112

61:                                               ; preds = %42
  %62 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %63 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, -1
  store i64 %66, i64* %64, align 8
  %67 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %68 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.vte_txdesc*, %struct.vte_txdesc** %4, align 8
  %72 = getelementptr inbounds %struct.vte_txdesc, %struct.vte_txdesc* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %75 = call i32 @bus_dmamap_sync(i32 %70, i32 %73, i32 %74)
  %76 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %77 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.vte_txdesc*, %struct.vte_txdesc** %4, align 8
  %81 = getelementptr inbounds %struct.vte_txdesc, %struct.vte_txdesc* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @bus_dmamap_unload(i32 %79, i32 %82)
  %84 = load %struct.vte_txdesc*, %struct.vte_txdesc** %4, align 8
  %85 = getelementptr inbounds %struct.vte_txdesc, %struct.vte_txdesc* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @VTE_TXMBUF, align 4
  %88 = and i32 %86, %87
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %61
  %91 = load %struct.vte_txdesc*, %struct.vte_txdesc** %4, align 8
  %92 = getelementptr inbounds %struct.vte_txdesc, %struct.vte_txdesc* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @m_freem(i32* %93)
  br label %95

95:                                               ; preds = %90, %61
  %96 = load i32, i32* @VTE_TXMBUF, align 4
  %97 = xor i32 %96, -1
  %98 = load %struct.vte_txdesc*, %struct.vte_txdesc** %4, align 8
  %99 = getelementptr inbounds %struct.vte_txdesc, %struct.vte_txdesc* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = and i32 %100, %97
  store i32 %101, i32* %99, align 8
  %102 = load %struct.vte_txdesc*, %struct.vte_txdesc** %4, align 8
  %103 = getelementptr inbounds %struct.vte_txdesc, %struct.vte_txdesc* %102, i32 0, i32 1
  store i32* null, i32** %103, align 8
  %104 = load i32, i32* %7, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* @VTE_TX_RING_CNT, align 4
  %108 = call i32 @VTE_DESC_INC(i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %95
  %110 = load i32, i32* %7, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %7, align 4
  br label %36

112:                                              ; preds = %60, %36
  %113 = load i32, i32* %7, align 4
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %115, label %135

115:                                              ; preds = %112
  %116 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %117 = xor i32 %116, -1
  %118 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %119 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = and i32 %120, %117
  store i32 %121, i32* %119, align 4
  %122 = load i32, i32* %6, align 4
  %123 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %124 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  store i32 %122, i32* %125, align 8
  %126 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %127 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %115
  %132 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %133 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %132, i32 0, i32 0
  store i64 0, i64* %133, align 8
  br label %134

134:                                              ; preds = %131, %115
  br label %135

135:                                              ; preds = %18, %134, %112
  ret void
}

declare dso_local i32 @VTE_LOCK_ASSERT(%struct.vte_softc*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @le16toh(i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @VTE_DESC_INC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
