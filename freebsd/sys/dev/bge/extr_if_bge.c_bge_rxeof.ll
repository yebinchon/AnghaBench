; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_rxeof.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_rxeof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bge_softc = type { i64, i64, i32, i64, i64, i32, %struct.TYPE_6__, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, %struct.mbuf**, %struct.mbuf** }
%struct.mbuf = type { i64, i32, %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i64, i32, i64 }
%struct.TYPE_4__ = type { %struct.bge_rx_bd* }
%struct.bge_rx_bd = type { i64, i32, i64, i64 }

@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@ETHER_HDR_LEN = common dso_local global i64 0, align 8
@ETHER_CRC_LEN = common dso_local global i64 0, align 8
@ETHER_VLAN_ENCAP_LEN = common dso_local global i64 0, align 8
@MCLBYTES = common dso_local global i64 0, align 8
@ETHER_ALIGN = common dso_local global i64 0, align 8
@IFCAP_VLAN_HWTAGGING = common dso_local global i32 0, align 4
@BGE_RXBDFLAG_VLAN_TAG = common dso_local global i32 0, align 4
@BGE_RXBDFLAG_JUMBO_RING = common dso_local global i32 0, align 4
@BGE_RXBDFLAG_ERROR = common dso_local global i32 0, align 4
@IFCOUNTER_IQDROPS = common dso_local global i32 0, align 4
@BGE_JUMBO_RX_RING_CNT = common dso_local global i32 0, align 4
@BGE_STD_RX_RING_CNT = common dso_local global i32 0, align 4
@IFCOUNTER_IPACKETS = common dso_local global i32 0, align 4
@BGE_FLAG_RX_ALIGNBUG = common dso_local global i32 0, align 4
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@M_VLANTAG = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@BGE_MBX_RX_CONS0_LO = common dso_local global i32 0, align 4
@BGE_MBX_RX_STD_PROD_LO = common dso_local global i32 0, align 4
@BGE_MBX_RX_JUMBO_PROD_LO = common dso_local global i32 0, align 4
@BGE_RXLP_LOCSTAT_IFIN_DROPS = common dso_local global i32 0, align 4
@IFCAP_POLLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bge_softc*, i64, i32)* @bge_rxeof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bge_rxeof(%struct.bge_softc* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bge_softc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.bge_rx_bd*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.mbuf*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.bge_softc* %0, %struct.bge_softc** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %18 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %19 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %12, align 8
  %21 = load i64, i64* %12, align 8
  %22 = load i64, i64* %6, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %4, align 4
  br label %374

26:                                               ; preds = %3
  %27 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %28 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %27, i32 0, i32 8
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %8, align 4
  %30 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %31 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %30, i32 0, i32 6
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %35 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %34, i32 0, i32 6
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %39 = call i32 @bus_dmamap_sync(i32 %33, i32 %37, i32 %38)
  %40 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %41 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %40, i32 0, i32 6
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %45 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %44, i32 0, i32 6
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %49 = call i32 @bus_dmamap_sync(i32 %43, i32 %47, i32 %48)
  %50 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %51 = call i64 @BGE_IS_JUMBO_CAPABLE(%struct.bge_softc* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %77

53:                                               ; preds = %26
  %54 = load i32, i32* %8, align 4
  %55 = call i64 @if_getmtu(i32 %54)
  %56 = load i64, i64* @ETHER_HDR_LEN, align 8
  %57 = add nsw i64 %55, %56
  %58 = load i64, i64* @ETHER_CRC_LEN, align 8
  %59 = add nsw i64 %57, %58
  %60 = load i64, i64* @ETHER_VLAN_ENCAP_LEN, align 8
  %61 = add nsw i64 %59, %60
  %62 = load i64, i64* @MCLBYTES, align 8
  %63 = load i64, i64* @ETHER_ALIGN, align 8
  %64 = sub nsw i64 %62, %63
  %65 = icmp sgt i64 %61, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %53
  %67 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %68 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %67, i32 0, i32 6
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %72 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %71, i32 0, i32 6
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %76 = call i32 @bus_dmamap_sync(i32 %70, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %66, %53, %26
  br label %78

78:                                               ; preds = %287, %183, %174, %145, %136, %77
  %79 = load i64, i64* %12, align 8
  %80 = load i64, i64* %6, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %288

82:                                               ; preds = %78
  store %struct.mbuf* null, %struct.mbuf** %15, align 8
  store i64 0, i64* %16, align 8
  store i32 0, i32* %17, align 4
  %83 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %84 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %83, i32 0, i32 7
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load %struct.bge_rx_bd*, %struct.bge_rx_bd** %85, align 8
  %87 = load i64, i64* %12, align 8
  %88 = getelementptr inbounds %struct.bge_rx_bd, %struct.bge_rx_bd* %86, i64 %87
  store %struct.bge_rx_bd* %88, %struct.bge_rx_bd** %13, align 8
  %89 = load %struct.bge_rx_bd*, %struct.bge_rx_bd** %13, align 8
  %90 = getelementptr inbounds %struct.bge_rx_bd, %struct.bge_rx_bd* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %14, align 8
  %92 = load i64, i64* %12, align 8
  %93 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %94 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @BGE_INC(i64 %92, i32 %95)
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @if_getcapenable(i32 %97)
  %99 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %113

102:                                              ; preds = %82
  %103 = load %struct.bge_rx_bd*, %struct.bge_rx_bd** %13, align 8
  %104 = getelementptr inbounds %struct.bge_rx_bd, %struct.bge_rx_bd* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @BGE_RXBDFLAG_VLAN_TAG, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %102
  store i32 1, i32* %17, align 4
  %110 = load %struct.bge_rx_bd*, %struct.bge_rx_bd** %13, align 8
  %111 = getelementptr inbounds %struct.bge_rx_bd, %struct.bge_rx_bd* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* %16, align 8
  br label %113

113:                                              ; preds = %109, %102, %82
  %114 = load %struct.bge_rx_bd*, %struct.bge_rx_bd** %13, align 8
  %115 = getelementptr inbounds %struct.bge_rx_bd, %struct.bge_rx_bd* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @BGE_RXBDFLAG_JUMBO_RING, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %158

120:                                              ; preds = %113
  %121 = load i32, i32* %11, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %11, align 4
  %123 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %124 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %123, i32 0, i32 6
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 7
  %126 = load %struct.mbuf**, %struct.mbuf*** %125, align 8
  %127 = load i64, i64* %14, align 8
  %128 = getelementptr inbounds %struct.mbuf*, %struct.mbuf** %126, i64 %127
  %129 = load %struct.mbuf*, %struct.mbuf** %128, align 8
  store %struct.mbuf* %129, %struct.mbuf** %15, align 8
  %130 = load %struct.bge_rx_bd*, %struct.bge_rx_bd** %13, align 8
  %131 = getelementptr inbounds %struct.bge_rx_bd, %struct.bge_rx_bd* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @BGE_RXBDFLAG_ERROR, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %120
  %137 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %138 = load i64, i64* %14, align 8
  %139 = call i32 @bge_rxreuse_jumbo(%struct.bge_softc* %137, i64 %138)
  br label %78

140:                                              ; preds = %120
  %141 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %142 = load i64, i64* %14, align 8
  %143 = call i64 @bge_newbuf_jumbo(%struct.bge_softc* %141, i64 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %152

145:                                              ; preds = %140
  %146 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %147 = load i64, i64* %14, align 8
  %148 = call i32 @bge_rxreuse_jumbo(%struct.bge_softc* %146, i64 %147)
  %149 = load i32, i32* %8, align 4
  %150 = load i32, i32* @IFCOUNTER_IQDROPS, align 4
  %151 = call i32 @if_inc_counter(i32 %149, i32 %150, i32 1)
  br label %78

152:                                              ; preds = %140
  %153 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %154 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %153, i32 0, i32 3
  %155 = load i64, i64* %154, align 8
  %156 = load i32, i32* @BGE_JUMBO_RX_RING_CNT, align 4
  %157 = call i32 @BGE_INC(i64 %155, i32 %156)
  br label %196

158:                                              ; preds = %113
  %159 = load i32, i32* %10, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %10, align 4
  %161 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %162 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %161, i32 0, i32 6
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 6
  %164 = load %struct.mbuf**, %struct.mbuf*** %163, align 8
  %165 = load i64, i64* %14, align 8
  %166 = getelementptr inbounds %struct.mbuf*, %struct.mbuf** %164, i64 %165
  %167 = load %struct.mbuf*, %struct.mbuf** %166, align 8
  store %struct.mbuf* %167, %struct.mbuf** %15, align 8
  %168 = load %struct.bge_rx_bd*, %struct.bge_rx_bd** %13, align 8
  %169 = getelementptr inbounds %struct.bge_rx_bd, %struct.bge_rx_bd* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @BGE_RXBDFLAG_ERROR, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %158
  %175 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %176 = load i64, i64* %14, align 8
  %177 = call i32 @bge_rxreuse_std(%struct.bge_softc* %175, i64 %176)
  br label %78

178:                                              ; preds = %158
  %179 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %180 = load i64, i64* %14, align 8
  %181 = call i64 @bge_newbuf_std(%struct.bge_softc* %179, i64 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %190

183:                                              ; preds = %178
  %184 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %185 = load i64, i64* %14, align 8
  %186 = call i32 @bge_rxreuse_std(%struct.bge_softc* %184, i64 %185)
  %187 = load i32, i32* %8, align 4
  %188 = load i32, i32* @IFCOUNTER_IQDROPS, align 4
  %189 = call i32 @if_inc_counter(i32 %187, i32 %188, i32 1)
  br label %78

190:                                              ; preds = %178
  %191 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %192 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %191, i32 0, i32 4
  %193 = load i64, i64* %192, align 8
  %194 = load i32, i32* @BGE_STD_RX_RING_CNT, align 4
  %195 = call i32 @BGE_INC(i64 %193, i32 %194)
  br label %196

196:                                              ; preds = %190, %152
  %197 = load i32, i32* %8, align 4
  %198 = load i32, i32* @IFCOUNTER_IPACKETS, align 4
  %199 = call i32 @if_inc_counter(i32 %197, i32 %198, i32 1)
  %200 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %201 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %200, i32 0, i32 5
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* @BGE_FLAG_RX_ALIGNBUG, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %224

206:                                              ; preds = %196
  %207 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %208 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %211 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @ETHER_ALIGN, align 8
  %214 = add nsw i64 %212, %213
  %215 = load %struct.bge_rx_bd*, %struct.bge_rx_bd** %13, align 8
  %216 = getelementptr inbounds %struct.bge_rx_bd, %struct.bge_rx_bd* %215, i32 0, i32 3
  %217 = load i64, i64* %216, align 8
  %218 = call i32 @bcopy(i64 %209, i64 %214, i64 %217)
  %219 = load i64, i64* @ETHER_ALIGN, align 8
  %220 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %221 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = add nsw i64 %222, %219
  store i64 %223, i64* %221, align 8
  br label %224

224:                                              ; preds = %206, %196
  %225 = load %struct.bge_rx_bd*, %struct.bge_rx_bd** %13, align 8
  %226 = getelementptr inbounds %struct.bge_rx_bd, %struct.bge_rx_bd* %225, i32 0, i32 3
  %227 = load i64, i64* %226, align 8
  %228 = load i64, i64* @ETHER_CRC_LEN, align 8
  %229 = sub nsw i64 %227, %228
  %230 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %231 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %230, i32 0, i32 3
  store i64 %229, i64* %231, align 8
  %232 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %233 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %232, i32 0, i32 2
  %234 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i32 0, i32 2
  store i64 %229, i64* %234, align 8
  %235 = load i32, i32* %8, align 4
  %236 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %237 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %236, i32 0, i32 2
  %238 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %237, i32 0, i32 1
  store i32 %235, i32* %238, align 8
  %239 = load i32, i32* %8, align 4
  %240 = call i32 @if_getcapenable(i32 %239)
  %241 = load i32, i32* @IFCAP_RXCSUM, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %249

244:                                              ; preds = %224
  %245 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %246 = load %struct.bge_rx_bd*, %struct.bge_rx_bd** %13, align 8
  %247 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %248 = call i32 @bge_rxcsum(%struct.bge_softc* %245, %struct.bge_rx_bd* %246, %struct.mbuf* %247)
  br label %249

249:                                              ; preds = %244, %224
  %250 = load i32, i32* %17, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %262

252:                                              ; preds = %249
  %253 = load i64, i64* %16, align 8
  %254 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %255 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %254, i32 0, i32 2
  %256 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %255, i32 0, i32 0
  store i64 %253, i64* %256, align 8
  %257 = load i32, i32* @M_VLANTAG, align 4
  %258 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %259 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 8
  %261 = or i32 %260, %257
  store i32 %261, i32* %259, align 8
  br label %262

262:                                              ; preds = %252, %249
  %263 = load i32, i32* %7, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %273

265:                                              ; preds = %262
  %266 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %267 = call i32 @BGE_UNLOCK(%struct.bge_softc* %266)
  %268 = load i32, i32* %8, align 4
  %269 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %270 = call i32 @if_input(i32 %268, %struct.mbuf* %269)
  %271 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %272 = call i32 @BGE_LOCK(%struct.bge_softc* %271)
  br label %277

273:                                              ; preds = %262
  %274 = load i32, i32* %8, align 4
  %275 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %276 = call i32 @if_input(i32 %274, %struct.mbuf* %275)
  br label %277

277:                                              ; preds = %273, %265
  %278 = load i32, i32* %9, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %9, align 4
  %280 = load i32, i32* %8, align 4
  %281 = call i32 @if_getdrvflags(i32 %280)
  %282 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %283 = and i32 %281, %282
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %287, label %285

285:                                              ; preds = %277
  %286 = load i32, i32* %9, align 4
  store i32 %286, i32* %4, align 4
  br label %374

287:                                              ; preds = %277
  br label %78

288:                                              ; preds = %78
  %289 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %290 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %289, i32 0, i32 6
  %291 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %290, i32 0, i32 5
  %292 = load i32, i32* %291, align 4
  %293 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %294 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %293, i32 0, i32 6
  %295 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %294, i32 0, i32 4
  %296 = load i32, i32* %295, align 8
  %297 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %298 = call i32 @bus_dmamap_sync(i32 %292, i32 %296, i32 %297)
  %299 = load i32, i32* %10, align 4
  %300 = icmp sgt i32 %299, 0
  br i1 %300, label %301, label %312

301:                                              ; preds = %288
  %302 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %303 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %302, i32 0, i32 6
  %304 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %303, i32 0, i32 3
  %305 = load i32, i32* %304, align 4
  %306 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %307 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %306, i32 0, i32 6
  %308 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %307, i32 0, i32 2
  %309 = load i32, i32* %308, align 8
  %310 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %311 = call i32 @bus_dmamap_sync(i32 %305, i32 %309, i32 %310)
  br label %312

312:                                              ; preds = %301, %288
  %313 = load i32, i32* %11, align 4
  %314 = icmp sgt i32 %313, 0
  br i1 %314, label %315, label %326

315:                                              ; preds = %312
  %316 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %317 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %316, i32 0, i32 6
  %318 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 4
  %320 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %321 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %320, i32 0, i32 6
  %322 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  %324 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %325 = call i32 @bus_dmamap_sync(i32 %319, i32 %323, i32 %324)
  br label %326

326:                                              ; preds = %315, %312
  %327 = load i64, i64* %12, align 8
  %328 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %329 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %328, i32 0, i32 0
  store i64 %327, i64* %329, align 8
  %330 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %331 = load i32, i32* @BGE_MBX_RX_CONS0_LO, align 4
  %332 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %333 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %332, i32 0, i32 0
  %334 = load i64, i64* %333, align 8
  %335 = trunc i64 %334 to i32
  %336 = call i32 @bge_writembx(%struct.bge_softc* %330, i32 %331, i32 %335)
  %337 = load i32, i32* %10, align 4
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %354

339:                                              ; preds = %326
  %340 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %341 = load i32, i32* @BGE_MBX_RX_STD_PROD_LO, align 4
  %342 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %343 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %342, i32 0, i32 4
  %344 = load i64, i64* %343, align 8
  %345 = load i32, i32* @BGE_STD_RX_RING_CNT, align 4
  %346 = sext i32 %345 to i64
  %347 = add i64 %344, %346
  %348 = sub i64 %347, 1
  %349 = load i32, i32* @BGE_STD_RX_RING_CNT, align 4
  %350 = sext i32 %349 to i64
  %351 = urem i64 %348, %350
  %352 = trunc i64 %351 to i32
  %353 = call i32 @bge_writembx(%struct.bge_softc* %340, i32 %341, i32 %352)
  br label %354

354:                                              ; preds = %339, %326
  %355 = load i32, i32* %11, align 4
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %372

357:                                              ; preds = %354
  %358 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %359 = load i32, i32* @BGE_MBX_RX_JUMBO_PROD_LO, align 4
  %360 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %361 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %360, i32 0, i32 3
  %362 = load i64, i64* %361, align 8
  %363 = load i32, i32* @BGE_JUMBO_RX_RING_CNT, align 4
  %364 = sext i32 %363 to i64
  %365 = add i64 %362, %364
  %366 = sub i64 %365, 1
  %367 = load i32, i32* @BGE_JUMBO_RX_RING_CNT, align 4
  %368 = sext i32 %367 to i64
  %369 = urem i64 %366, %368
  %370 = trunc i64 %369 to i32
  %371 = call i32 @bge_writembx(%struct.bge_softc* %358, i32 %359, i32 %370)
  br label %372

372:                                              ; preds = %357, %354
  %373 = load i32, i32* %9, align 4
  store i32 %373, i32* %4, align 4
  br label %374

374:                                              ; preds = %372, %285, %24
  %375 = load i32, i32* %4, align 4
  ret i32 %375
}

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i64 @BGE_IS_JUMBO_CAPABLE(%struct.bge_softc*) #1

declare dso_local i64 @if_getmtu(i32) #1

declare dso_local i32 @BGE_INC(i64, i32) #1

declare dso_local i32 @if_getcapenable(i32) #1

declare dso_local i32 @bge_rxreuse_jumbo(%struct.bge_softc*, i64) #1

declare dso_local i64 @bge_newbuf_jumbo(%struct.bge_softc*, i64) #1

declare dso_local i32 @if_inc_counter(i32, i32, i32) #1

declare dso_local i32 @bge_rxreuse_std(%struct.bge_softc*, i64) #1

declare dso_local i64 @bge_newbuf_std(%struct.bge_softc*, i64) #1

declare dso_local i32 @bcopy(i64, i64, i64) #1

declare dso_local i32 @bge_rxcsum(%struct.bge_softc*, %struct.bge_rx_bd*, %struct.mbuf*) #1

declare dso_local i32 @BGE_UNLOCK(%struct.bge_softc*) #1

declare dso_local i32 @if_input(i32, %struct.mbuf*) #1

declare dso_local i32 @BGE_LOCK(%struct.bge_softc*) #1

declare dso_local i32 @if_getdrvflags(i32) #1

declare dso_local i32 @bge_writembx(%struct.bge_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
