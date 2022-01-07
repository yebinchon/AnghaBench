; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vte/extr_if_vte.c_vte_init_tx_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vte/extr_if_vte.c_vte_init_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vte_softc = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, %struct.vte_tx_desc*, i64, %struct.vte_txdesc*, %struct.TYPE_6__**, i64, i64, i64 }
%struct.vte_tx_desc = type { i32 }
%struct.vte_txdesc = type { %struct.vte_tx_desc*, i32* }
%struct.TYPE_6__ = type { i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }

@tx_deep_copy = common dso_local global i64 0, align 8
@VTE_TX_RING_CNT = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i32 0, align 4
@M_PKTHDR = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i8* null, align 8
@VTE_TX_RING_SZ = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vte_softc*)* @vte_init_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vte_init_tx_ring(%struct.vte_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vte_softc*, align 8
  %4 = alloca %struct.vte_tx_desc*, align 8
  %5 = alloca %struct.vte_txdesc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.vte_softc* %0, %struct.vte_softc** %3, align 8
  %8 = load %struct.vte_softc*, %struct.vte_softc** %3, align 8
  %9 = call i32 @VTE_LOCK_ASSERT(%struct.vte_softc* %8)
  %10 = load %struct.vte_softc*, %struct.vte_softc** %3, align 8
  %11 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 8
  store i64 0, i64* %12, align 8
  %13 = load %struct.vte_softc*, %struct.vte_softc** %3, align 8
  %14 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 7
  store i64 0, i64* %15, align 8
  %16 = load %struct.vte_softc*, %struct.vte_softc** %3, align 8
  %17 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 6
  store i64 0, i64* %18, align 8
  %19 = load i64, i64* @tx_deep_copy, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %75

21:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %71, %21
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @VTE_TX_RING_CNT, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %74

26:                                               ; preds = %22
  %27 = load i32, i32* @M_NOWAIT, align 4
  %28 = load i32, i32* @MT_DATA, align 4
  %29 = load i32, i32* @M_PKTHDR, align 4
  %30 = call %struct.TYPE_6__* @m_getcl(i32 %27, i32 %28, i32 %29)
  %31 = load %struct.vte_softc*, %struct.vte_softc** %3, align 8
  %32 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 5
  %34 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %34, i64 %36
  store %struct.TYPE_6__* %30, %struct.TYPE_6__** %37, align 8
  %38 = load %struct.vte_softc*, %struct.vte_softc** %3, align 8
  %39 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 5
  %41 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %41, i64 %43
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = icmp eq %struct.TYPE_6__* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %26
  %48 = load i32, i32* @ENOBUFS, align 4
  store i32 %48, i32* %2, align 4
  br label %148

49:                                               ; preds = %26
  %50 = load i8*, i8** @MCLBYTES, align 8
  %51 = load %struct.vte_softc*, %struct.vte_softc** %3, align 8
  %52 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 5
  %54 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %54, i64 %56
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  store i8* %50, i8** %60, align 8
  %61 = load i8*, i8** @MCLBYTES, align 8
  %62 = load %struct.vte_softc*, %struct.vte_softc** %3, align 8
  %63 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 5
  %65 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %65, i64 %67
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  store i8* %61, i8** %70, align 8
  br label %71

71:                                               ; preds = %49
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %22

74:                                               ; preds = %22
  br label %75

75:                                               ; preds = %74, %1
  %76 = load %struct.vte_softc*, %struct.vte_softc** %3, align 8
  %77 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 2
  %79 = load %struct.vte_tx_desc*, %struct.vte_tx_desc** %78, align 8
  store %struct.vte_tx_desc* %79, %struct.vte_tx_desc** %4, align 8
  %80 = load %struct.vte_tx_desc*, %struct.vte_tx_desc** %4, align 8
  %81 = load i32, i32* @VTE_TX_RING_SZ, align 4
  %82 = call i32 @bzero(%struct.vte_tx_desc* %80, i32 %81)
  store i32 0, i32* %7, align 4
  br label %83

83:                                               ; preds = %132, %75
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @VTE_TX_RING_CNT, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %135

87:                                               ; preds = %83
  %88 = load %struct.vte_softc*, %struct.vte_softc** %3, align 8
  %89 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 4
  %91 = load %struct.vte_txdesc*, %struct.vte_txdesc** %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.vte_txdesc, %struct.vte_txdesc* %91, i64 %93
  store %struct.vte_txdesc* %94, %struct.vte_txdesc** %5, align 8
  %95 = load %struct.vte_txdesc*, %struct.vte_txdesc** %5, align 8
  %96 = getelementptr inbounds %struct.vte_txdesc, %struct.vte_txdesc* %95, i32 0, i32 1
  store i32* null, i32** %96, align 8
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* @VTE_TX_RING_CNT, align 4
  %99 = sub nsw i32 %98, 1
  %100 = icmp ne i32 %97, %99
  br i1 %100, label %101, label %111

101:                                              ; preds = %87
  %102 = load %struct.vte_softc*, %struct.vte_softc** %3, align 8
  %103 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = mul i64 4, %108
  %110 = add i64 %105, %109
  store i64 %110, i64* %6, align 8
  br label %117

111:                                              ; preds = %87
  %112 = load %struct.vte_softc*, %struct.vte_softc** %3, align 8
  %113 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = add i64 %115, 0
  store i64 %116, i64* %6, align 8
  br label %117

117:                                              ; preds = %111, %101
  %118 = load %struct.vte_softc*, %struct.vte_softc** %3, align 8
  %119 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 2
  %121 = load %struct.vte_tx_desc*, %struct.vte_tx_desc** %120, align 8
  %122 = load i32, i32* %7, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.vte_tx_desc, %struct.vte_tx_desc* %121, i64 %123
  store %struct.vte_tx_desc* %124, %struct.vte_tx_desc** %4, align 8
  %125 = load i64, i64* %6, align 8
  %126 = call i32 @htole32(i64 %125)
  %127 = load %struct.vte_tx_desc*, %struct.vte_tx_desc** %4, align 8
  %128 = getelementptr inbounds %struct.vte_tx_desc, %struct.vte_tx_desc* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 4
  %129 = load %struct.vte_tx_desc*, %struct.vte_tx_desc** %4, align 8
  %130 = load %struct.vte_txdesc*, %struct.vte_txdesc** %5, align 8
  %131 = getelementptr inbounds %struct.vte_txdesc, %struct.vte_txdesc* %130, i32 0, i32 0
  store %struct.vte_tx_desc* %129, %struct.vte_tx_desc** %131, align 8
  br label %132

132:                                              ; preds = %117
  %133 = load i32, i32* %7, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %7, align 4
  br label %83

135:                                              ; preds = %83
  %136 = load %struct.vte_softc*, %struct.vte_softc** %3, align 8
  %137 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.vte_softc*, %struct.vte_softc** %3, align 8
  %141 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %145 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %146 = or i32 %144, %145
  %147 = call i32 @bus_dmamap_sync(i32 %139, i32 %143, i32 %146)
  store i32 0, i32* %2, align 4
  br label %148

148:                                              ; preds = %135, %47
  %149 = load i32, i32* %2, align 4
  ret i32 %149
}

declare dso_local i32 @VTE_LOCK_ASSERT(%struct.vte_softc*) #1

declare dso_local %struct.TYPE_6__* @m_getcl(i32, i32, i32) #1

declare dso_local i32 @bzero(%struct.vte_tx_desc*, i32) #1

declare dso_local i32 @htole32(i64) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
