; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/if_ndis/extr_if_ndis.c_ndis_ifstart.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/if_ndis/extr_if_ndis.c_ndis_ifstart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i32, %struct.ndis_softc* }
%struct.ndis_softc = type { i64, i64, i32, %struct.TYPE_18__*, i32, i32*, i32, i64, %struct.TYPE_20__**, i32, i32 }
%struct.TYPE_18__ = type { i32* }
%struct.TYPE_20__ = type { i64, %struct.TYPE_17__, %struct.TYPE_14__, i32, %struct.TYPE_13__, %struct.mbuf* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_14__ = type { i32** }
%struct.TYPE_13__ = type { i32 }
%struct.mbuf = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }

@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@NDIS_STATUS_SUCCESS = common dso_local global i32 0, align 4
@NDIS_STATUS_PENDING = common dso_local global i32 0, align 4
@ndis_map_sclist = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@ndis_sclist_info = common dso_local global i64 0, align 8
@IFCAP_TXCSUM = common dso_local global i32 0, align 4
@ndis_tcpipcsum_info = common dso_local global i64 0, align 8
@NDIS_TXCSUM_DO_IPV4 = common dso_local global i32 0, align 4
@CSUM_IP = common dso_local global i32 0, align 4
@NDIS_TXCSUM_DO_IP = common dso_local global i32 0, align 4
@CSUM_TCP = common dso_local global i32 0, align 4
@NDIS_TXCSUM_DO_TCP = common dso_local global i32 0, align 4
@CSUM_UDP = common dso_local global i32 0, align 4
@NDIS_TXCSUM_DO_UDP = common dso_local global i32 0, align 4
@NDIS_PROTOCOL_ID_TCP_IP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*)* @ndis_ifstart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ndis_ifstart(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.ndis_softc*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca %struct.TYPE_20__**, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  store %struct.mbuf* null, %struct.mbuf** %4, align 8
  store %struct.TYPE_20__** null, %struct.TYPE_20__*** %5, align 8
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %6, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %11 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %10, i32 0, i32 3
  %12 = load %struct.ndis_softc*, %struct.ndis_softc** %11, align 8
  store %struct.ndis_softc* %12, %struct.ndis_softc** %3, align 8
  %13 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %14 = call i32 @NDIS_LOCK(%struct.ndis_softc* %13)
  %15 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %16 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %15, i32 0, i32 10
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %1
  %20 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %21 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19, %1
  %27 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %28 = call i32 @NDIS_UNLOCK(%struct.ndis_softc* %27)
  br label %284

29:                                               ; preds = %19
  %30 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %31 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %30, i32 0, i32 8
  %32 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %31, align 8
  %33 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %34 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %32, i64 %35
  store %struct.TYPE_20__** %36, %struct.TYPE_20__*** %5, align 8
  br label %37

37:                                               ; preds = %245, %29
  %38 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %39 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %246

42:                                               ; preds = %37
  %43 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %44 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %43, i32 0, i32 2
  %45 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %46 = call i32 @IFQ_DRV_DEQUEUE(i32* %44, %struct.mbuf* %45)
  %47 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %48 = icmp eq %struct.mbuf* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %246

50:                                               ; preds = %42
  %51 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %52 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %51, i32 0, i32 8
  %53 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %52, align 8
  %54 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %55 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %53, i64 %56
  %58 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %59 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %58, i32 0, i32 9
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @NdisAllocatePacket(i32* %9, %struct.TYPE_20__** %57, i32 %60)
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @NDIS_STATUS_SUCCESS, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %50
  br label %246

66:                                               ; preds = %50
  %67 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %68 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %69 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %68, i32 0, i32 8
  %70 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %69, align 8
  %71 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %72 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %70, i64 %73
  %75 = call i64 @ndis_mtop(%struct.mbuf* %67, %struct.TYPE_20__** %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %66
  %78 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %79 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %78, i32 0, i32 2
  %80 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %81 = call i32 @IFQ_DRV_PREPEND(i32* %79, %struct.mbuf* %80)
  %82 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %83 = call i32 @NDIS_UNLOCK(%struct.ndis_softc* %82)
  br label %284

84:                                               ; preds = %66
  %85 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %86 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %85, i32 0, i32 8
  %87 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %86, align 8
  %88 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %89 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %87, i64 %90
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %91, align 8
  store %struct.TYPE_20__* %92, %struct.TYPE_20__** %6, align 8
  %93 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %94 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 0
  store i64 %95, i64* %97, align 8
  %98 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %99 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 5
  store %struct.mbuf* %98, %struct.mbuf** %100, align 8
  %101 = load i32, i32* @NDIS_STATUS_PENDING, align 4
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 4
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 0
  store i32 %101, i32* %104, align 4
  %105 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %106 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %105, i32 0, i32 7
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %148

109:                                              ; preds = %84
  %110 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %111 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %110, i32 0, i32 6
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %114 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %113, i32 0, i32 5
  %115 = load i32*, i32** %114, align 8
  %116 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %117 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds i32, i32* %115, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %122 = load i32, i32* @ndis_map_sclist, align 4
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i32 0, i32 3
  %125 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %126 = call i32 @bus_dmamap_load_mbuf(i32 %112, i32 %120, %struct.mbuf* %121, i32 %122, i32* %124, i32 %125)
  %127 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %128 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %127, i32 0, i32 6
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %131 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %130, i32 0, i32 5
  %132 = load i32*, i32** %131, align 8
  %133 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %134 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = getelementptr inbounds i32, i32* %132, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %139 = call i32 @bus_dmamap_sync(i32 %129, i32 %137, i32 %138)
  %140 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %140, i32 0, i32 3
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 0
  %145 = load i32**, i32*** %144, align 8
  %146 = load i64, i64* @ndis_sclist_info, align 8
  %147 = getelementptr inbounds i32*, i32** %145, i64 %146
  store i32* %141, i32** %147, align 8
  br label %148

148:                                              ; preds = %109, %84
  %149 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %150 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @IFCAP_TXCSUM, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %222

155:                                              ; preds = %148
  %156 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %157 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %222

161:                                              ; preds = %155
  %162 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 0
  %165 = load i32**, i32*** %164, align 8
  %166 = load i64, i64* @ndis_tcpipcsum_info, align 8
  %167 = getelementptr inbounds i32*, i32** %165, i64 %166
  %168 = bitcast i32** %167 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %168, %struct.TYPE_19__** %7, align 8
  %169 = load i32, i32* @NDIS_TXCSUM_DO_IPV4, align 4
  %170 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 0
  store i32 %169, i32* %172, align 4
  %173 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %174 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @CSUM_IP, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %187

180:                                              ; preds = %161
  %181 = load i32, i32* @NDIS_TXCSUM_DO_IP, align 4
  %182 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = or i32 %185, %181
  store i32 %186, i32* %184, align 4
  br label %187

187:                                              ; preds = %180, %161
  %188 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %189 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @CSUM_TCP, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %202

195:                                              ; preds = %187
  %196 = load i32, i32* @NDIS_TXCSUM_DO_TCP, align 4
  %197 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = or i32 %200, %196
  store i32 %201, i32* %199, align 4
  br label %202

202:                                              ; preds = %195, %187
  %203 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %204 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @CSUM_UDP, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %217

210:                                              ; preds = %202
  %211 = load i32, i32* @NDIS_TXCSUM_DO_UDP, align 4
  %212 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %213 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = or i32 %215, %211
  store i32 %216, i32* %214, align 4
  br label %217

217:                                              ; preds = %210, %202
  %218 = load i32, i32* @NDIS_PROTOCOL_ID_TCP_IP, align 4
  %219 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %220, i32 0, i32 0
  store i32 %218, i32* %221, align 8
  br label %222

222:                                              ; preds = %217, %155, %148
  %223 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %224 = call i32 @NDIS_INC(%struct.ndis_softc* %223)
  %225 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %226 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = add nsw i64 %227, -1
  store i64 %228, i64* %226, align 8
  %229 = load i32, i32* %8, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %8, align 4
  %231 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %232 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %231, i32 0, i32 4
  %233 = load i32, i32* %232, align 8
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %239, label %235

235:                                              ; preds = %222
  %236 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %237 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %238 = call i32 @BPF_MTAP(%struct.ifnet* %236, %struct.mbuf* %237)
  br label %239

239:                                              ; preds = %235, %222
  %240 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %241 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = icmp eq i64 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %239
  br label %246

245:                                              ; preds = %239
  br label %37

246:                                              ; preds = %244, %65, %49, %37
  %247 = load i32, i32* %8, align 4
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %252

249:                                              ; preds = %246
  %250 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %251 = call i32 @NDIS_UNLOCK(%struct.ndis_softc* %250)
  br label %284

252:                                              ; preds = %246
  %253 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %254 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %253, i32 0, i32 1
  %255 = load i64, i64* %254, align 8
  %256 = icmp eq i64 %255, 0
  br i1 %256, label %257, label %263

257:                                              ; preds = %252
  %258 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %259 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %260 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = or i32 %261, %258
  store i32 %262, i32* %260, align 8
  br label %263

263:                                              ; preds = %257, %252
  %264 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %265 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %264, i32 0, i32 2
  store i32 5, i32* %265, align 8
  %266 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %267 = call i32 @NDIS_UNLOCK(%struct.ndis_softc* %266)
  %268 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %269 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %268, i32 0, i32 3
  %270 = load %struct.TYPE_18__*, %struct.TYPE_18__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %270, i32 0, i32 0
  %272 = load i32*, i32** %271, align 8
  %273 = icmp ne i32* %272, null
  br i1 %273, label %274, label %279

274:                                              ; preds = %263
  %275 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %276 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %5, align 8
  %277 = load i32, i32* %8, align 4
  %278 = call i32 @ndis_send_packets(%struct.ndis_softc* %275, %struct.TYPE_20__** %276, i32 %277)
  br label %283

279:                                              ; preds = %263
  %280 = load %struct.ndis_softc*, %struct.ndis_softc** %3, align 8
  %281 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %282 = call i32 @ndis_send_packet(%struct.ndis_softc* %280, %struct.TYPE_20__* %281)
  br label %283

283:                                              ; preds = %279, %274
  br label %284

284:                                              ; preds = %283, %249, %77, %26
  ret void
}

declare dso_local i32 @NDIS_LOCK(%struct.ndis_softc*) #1

declare dso_local i32 @NDIS_UNLOCK(%struct.ndis_softc*) #1

declare dso_local i32 @IFQ_DRV_DEQUEUE(i32*, %struct.mbuf*) #1

declare dso_local i32 @NdisAllocatePacket(i32*, %struct.TYPE_20__**, i32) #1

declare dso_local i64 @ndis_mtop(%struct.mbuf*, %struct.TYPE_20__**) #1

declare dso_local i32 @IFQ_DRV_PREPEND(i32*, %struct.mbuf*) #1

declare dso_local i32 @bus_dmamap_load_mbuf(i32, i32, %struct.mbuf*, i32, i32*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @NDIS_INC(%struct.ndis_softc*) #1

declare dso_local i32 @BPF_MTAP(%struct.ifnet*, %struct.mbuf*) #1

declare dso_local i32 @ndis_send_packets(%struct.ndis_softc*, %struct.TYPE_20__**, i32) #1

declare dso_local i32 @ndis_send_packet(%struct.ndis_softc*, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
