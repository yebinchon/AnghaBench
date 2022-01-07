; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/if_ndis/extr_if_ndis.c_ndis_80211transmit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/if_ndis/extr_if_ndis.c_ndis_80211transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { %struct.ndis_softc* }
%struct.ndis_softc = type { i64, i64, i32, %struct.TYPE_11__*, i32*, i32, i64, %struct.TYPE_12__**, i32, i32, i32 }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_12__ = type { i64, i32, %struct.TYPE_10__, %struct.TYPE_9__, %struct.mbuf* }
%struct.TYPE_10__ = type { i32** }
%struct.TYPE_9__ = type { i32 }
%struct.mbuf = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@NDIS_STATUS_SUCCESS = common dso_local global i32 0, align 4
@NDIS_STATUS_PENDING = common dso_local global i32 0, align 4
@ndis_map_sclist = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@ndis_sclist_info = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211com*, %struct.mbuf*)* @ndis_80211transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ndis_80211transmit(%struct.ieee80211com* %0, %struct.mbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211com*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.ndis_softc*, align 8
  %7 = alloca %struct.TYPE_12__**, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32, align 4
  store %struct.ieee80211com* %0, %struct.ieee80211com** %4, align 8
  store %struct.mbuf* %1, %struct.mbuf** %5, align 8
  %10 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %10, i32 0, i32 0
  %12 = load %struct.ndis_softc*, %struct.ndis_softc** %11, align 8
  store %struct.ndis_softc* %12, %struct.ndis_softc** %6, align 8
  store %struct.TYPE_12__** null, %struct.TYPE_12__*** %7, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %8, align 8
  %13 = load %struct.ndis_softc*, %struct.ndis_softc** %6, align 8
  %14 = call i32 @NDIS_LOCK(%struct.ndis_softc* %13)
  %15 = load %struct.ndis_softc*, %struct.ndis_softc** %6, align 8
  %16 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %15, i32 0, i32 10
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.ndis_softc*, %struct.ndis_softc** %6, align 8
  %21 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %20, i32 0, i32 9
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %19, %2
  %25 = load %struct.ndis_softc*, %struct.ndis_softc** %6, align 8
  %26 = call i32 @NDIS_UNLOCK(%struct.ndis_softc* %25)
  %27 = load i32, i32* @ENXIO, align 4
  store i32 %27, i32* %3, align 4
  br label %168

28:                                               ; preds = %19
  %29 = load %struct.ndis_softc*, %struct.ndis_softc** %6, align 8
  %30 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load %struct.ndis_softc*, %struct.ndis_softc** %6, align 8
  %35 = call i32 @NDIS_UNLOCK(%struct.ndis_softc* %34)
  %36 = load i32, i32* @ENOBUFS, align 4
  store i32 %36, i32* %3, align 4
  br label %168

37:                                               ; preds = %28
  %38 = load %struct.ndis_softc*, %struct.ndis_softc** %6, align 8
  %39 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %38, i32 0, i32 7
  %40 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %39, align 8
  %41 = load %struct.ndis_softc*, %struct.ndis_softc** %6, align 8
  %42 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %40, i64 %43
  store %struct.TYPE_12__** %44, %struct.TYPE_12__*** %7, align 8
  %45 = load %struct.ndis_softc*, %struct.ndis_softc** %6, align 8
  %46 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %45, i32 0, i32 7
  %47 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %46, align 8
  %48 = load %struct.ndis_softc*, %struct.ndis_softc** %6, align 8
  %49 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %47, i64 %50
  %52 = load %struct.ndis_softc*, %struct.ndis_softc** %6, align 8
  %53 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %52, i32 0, i32 8
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @NdisAllocatePacket(i32* %9, %struct.TYPE_12__** %51, i32 %54)
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @NDIS_STATUS_SUCCESS, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %37
  %60 = load %struct.ndis_softc*, %struct.ndis_softc** %6, align 8
  %61 = call i32 @NDIS_UNLOCK(%struct.ndis_softc* %60)
  %62 = load i32, i32* @ENOBUFS, align 4
  store i32 %62, i32* %3, align 4
  br label %168

63:                                               ; preds = %37
  %64 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %65 = load %struct.ndis_softc*, %struct.ndis_softc** %6, align 8
  %66 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %65, i32 0, i32 7
  %67 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %66, align 8
  %68 = load %struct.ndis_softc*, %struct.ndis_softc** %6, align 8
  %69 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %67, i64 %70
  %72 = call i64 @ndis_mtop(%struct.mbuf* %64, %struct.TYPE_12__** %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %63
  %75 = load %struct.ndis_softc*, %struct.ndis_softc** %6, align 8
  %76 = call i32 @NDIS_UNLOCK(%struct.ndis_softc* %75)
  %77 = load i32, i32* @ENOBUFS, align 4
  store i32 %77, i32* %3, align 4
  br label %168

78:                                               ; preds = %63
  %79 = load %struct.ndis_softc*, %struct.ndis_softc** %6, align 8
  %80 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %79, i32 0, i32 7
  %81 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %80, align 8
  %82 = load %struct.ndis_softc*, %struct.ndis_softc** %6, align 8
  %83 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %81, i64 %84
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %85, align 8
  store %struct.TYPE_12__* %86, %struct.TYPE_12__** %8, align 8
  %87 = load %struct.ndis_softc*, %struct.ndis_softc** %6, align 8
  %88 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  %92 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 4
  store %struct.mbuf* %92, %struct.mbuf** %94, align 8
  %95 = load i32, i32* @NDIS_STATUS_PENDING, align 4
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  store i32 %95, i32* %98, align 8
  %99 = load %struct.ndis_softc*, %struct.ndis_softc** %6, align 8
  %100 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %99, i32 0, i32 6
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %142

103:                                              ; preds = %78
  %104 = load %struct.ndis_softc*, %struct.ndis_softc** %6, align 8
  %105 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.ndis_softc*, %struct.ndis_softc** %6, align 8
  %108 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %107, i32 0, i32 4
  %109 = load i32*, i32** %108, align 8
  %110 = load %struct.ndis_softc*, %struct.ndis_softc** %6, align 8
  %111 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds i32, i32* %109, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %116 = load i32, i32* @ndis_map_sclist, align 4
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 1
  %119 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %120 = call i32 @bus_dmamap_load_mbuf(i32 %106, i32 %114, %struct.mbuf* %115, i32 %116, i32* %118, i32 %119)
  %121 = load %struct.ndis_softc*, %struct.ndis_softc** %6, align 8
  %122 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.ndis_softc*, %struct.ndis_softc** %6, align 8
  %125 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %124, i32 0, i32 4
  %126 = load i32*, i32** %125, align 8
  %127 = load %struct.ndis_softc*, %struct.ndis_softc** %6, align 8
  %128 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = getelementptr inbounds i32, i32* %126, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %133 = call i32 @bus_dmamap_sync(i32 %123, i32 %131, i32 %132)
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  %139 = load i32**, i32*** %138, align 8
  %140 = load i64, i64* @ndis_sclist_info, align 8
  %141 = getelementptr inbounds i32*, i32** %139, i64 %140
  store i32* %135, i32** %141, align 8
  br label %142

142:                                              ; preds = %103, %78
  %143 = load %struct.ndis_softc*, %struct.ndis_softc** %6, align 8
  %144 = call i32 @NDIS_INC(%struct.ndis_softc* %143)
  %145 = load %struct.ndis_softc*, %struct.ndis_softc** %6, align 8
  %146 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = add nsw i64 %147, -1
  store i64 %148, i64* %146, align 8
  %149 = load %struct.ndis_softc*, %struct.ndis_softc** %6, align 8
  %150 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %149, i32 0, i32 2
  store i32 5, i32* %150, align 8
  %151 = load %struct.ndis_softc*, %struct.ndis_softc** %6, align 8
  %152 = call i32 @NDIS_UNLOCK(%struct.ndis_softc* %151)
  %153 = load %struct.ndis_softc*, %struct.ndis_softc** %6, align 8
  %154 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %153, i32 0, i32 3
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = icmp ne i32* %157, null
  br i1 %158, label %159, label %163

159:                                              ; preds = %142
  %160 = load %struct.ndis_softc*, %struct.ndis_softc** %6, align 8
  %161 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %162 = call i32 @ndis_send_packets(%struct.ndis_softc* %160, %struct.TYPE_12__** %161, i32 1)
  br label %167

163:                                              ; preds = %142
  %164 = load %struct.ndis_softc*, %struct.ndis_softc** %6, align 8
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %166 = call i32 @ndis_send_packet(%struct.ndis_softc* %164, %struct.TYPE_12__* %165)
  br label %167

167:                                              ; preds = %163, %159
  store i32 0, i32* %3, align 4
  br label %168

168:                                              ; preds = %167, %74, %59, %33, %24
  %169 = load i32, i32* %3, align 4
  ret i32 %169
}

declare dso_local i32 @NDIS_LOCK(%struct.ndis_softc*) #1

declare dso_local i32 @NDIS_UNLOCK(%struct.ndis_softc*) #1

declare dso_local i32 @NdisAllocatePacket(i32*, %struct.TYPE_12__**, i32) #1

declare dso_local i64 @ndis_mtop(%struct.mbuf*, %struct.TYPE_12__**) #1

declare dso_local i32 @bus_dmamap_load_mbuf(i32, i32, %struct.mbuf*, i32, i32*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @NDIS_INC(%struct.ndis_softc*) #1

declare dso_local i32 @ndis_send_packets(%struct.ndis_softc*, %struct.TYPE_12__**, i32) #1

declare dso_local i32 @ndis_send_packet(%struct.ndis_softc*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
