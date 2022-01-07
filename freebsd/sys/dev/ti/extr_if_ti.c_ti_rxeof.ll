; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ti/extr_if_ti.c_ti_rxeof.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ti/extr_if_ti.c_ti_rxeof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_softc = type { i64, i64, i64, i64, i64, %struct.TYPE_8__, i64, %struct.TYPE_6__, %struct.TYPE_5__, %struct.ifnet* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.mbuf**, %struct.mbuf**, i32, i32*, %struct.mbuf** }
%struct.mbuf = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, %struct.ifnet* }
%struct.TYPE_6__ = type { %struct.ti_rx_desc*, i32* }
%struct.ti_rx_desc = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.ifnet = type { i64, i32, i32 (%struct.ifnet*, %struct.mbuf*)* }
%struct.ti_cmd_desc = type { i32 }

@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@ETHERMTU = common dso_local global i64 0, align 8
@ETHER_HDR_LEN = common dso_local global i64 0, align 8
@ETHER_VLAN_ENCAP_LEN = common dso_local global i64 0, align 8
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@TI_RETURN_RING_CNT = common dso_local global i32 0, align 4
@TI_BDFLAG_VLAN_TAG = common dso_local global i32 0, align 4
@TI_BDFLAG_JUMBO_RING = common dso_local global i32 0, align 4
@TI_JUMBO_RX_RING_CNT = common dso_local global i32 0, align 4
@TI_BDFLAG_ERROR = common dso_local global i32 0, align 4
@IFCOUNTER_IERRORS = common dso_local global i32 0, align 4
@IFCOUNTER_IQDROPS = common dso_local global i32 0, align 4
@TI_BDFLAG_MINI_RING = common dso_local global i32 0, align 4
@TI_MINI_RX_RING_CNT = common dso_local global i32 0, align 4
@TI_STD_RX_RING_CNT = common dso_local global i32 0, align 4
@IFCOUNTER_IPACKETS = common dso_local global i32 0, align 4
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@TI_BDFLAG_IP_CKSUM = common dso_local global i32 0, align 4
@CSUM_IP_CHECKED = common dso_local global i32 0, align 4
@CSUM_IP_VALID = common dso_local global i32 0, align 4
@TI_BDFLAG_TCP_UDP_CKSUM = common dso_local global i32 0, align 4
@CSUM_DATA_VALID = common dso_local global i32 0, align 4
@M_VLANTAG = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@TI_HWREV_TIGON = common dso_local global i64 0, align 8
@TI_GCR_RXRETURNCONS_IDX = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ti_softc*)* @ti_rxeof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ti_rxeof(%struct.ti_softc* %0) #0 {
  %2 = alloca %struct.ti_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.ti_cmd_desc, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ti_rx_desc*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.mbuf*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ti_softc* %0, %struct.ti_softc** %2, align 8
  %14 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %15 = call i32 @TI_LOCK_ASSERT(%struct.ti_softc* %14)
  %16 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %17 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %16, i32 0, i32 9
  %18 = load %struct.ifnet*, %struct.ifnet** %17, align 8
  store %struct.ifnet* %18, %struct.ifnet** %3, align 8
  %19 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %20 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %19, i32 0, i32 5
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %24 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %23, i32 0, i32 5
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %28 = call i32 @bus_dmamap_sync(i32 %22, i32 %26, i32 %27)
  %29 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %30 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @ETHERMTU, align 8
  %33 = load i64, i64* @ETHER_HDR_LEN, align 8
  %34 = add nsw i64 %32, %33
  %35 = load i64, i64* @ETHER_VLAN_ENCAP_LEN, align 8
  %36 = add nsw i64 %34, %35
  %37 = icmp sgt i64 %31, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %1
  %39 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %40 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %39, i32 0, i32 5
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %44 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %43, i32 0, i32 5
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %48 = call i32 @bus_dmamap_sync(i32 %42, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %38, %1
  %50 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %51 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %50, i32 0, i32 7
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %66

55:                                               ; preds = %49
  %56 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %57 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %56, i32 0, i32 5
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %61 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %60, i32 0, i32 5
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %65 = call i32 @bus_dmamap_sync(i32 %59, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %55, %49
  %67 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %68 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %67, i32 0, i32 5
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 7
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %72 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %71, i32 0, i32 5
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %76 = call i32 @bus_dmamap_sync(i32 %70, i32 %74, i32 %75)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %77

77:                                               ; preds = %342, %251, %239, %207, %195, %156, %144, %66
  %78 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %79 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %82 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %81, i32 0, i32 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %80, %84
  br i1 %85, label %86, label %353

86:                                               ; preds = %77
  store %struct.mbuf* null, %struct.mbuf** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %87 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %88 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %87, i32 0, i32 7
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load %struct.ti_rx_desc*, %struct.ti_rx_desc** %89, align 8
  %91 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %92 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %struct.ti_rx_desc, %struct.ti_rx_desc* %90, i64 %93
  store %struct.ti_rx_desc* %94, %struct.ti_rx_desc** %9, align 8
  %95 = load %struct.ti_rx_desc*, %struct.ti_rx_desc** %9, align 8
  %96 = getelementptr inbounds %struct.ti_rx_desc, %struct.ti_rx_desc* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  store i64 %97, i64* %10, align 8
  %98 = load %struct.ti_rx_desc*, %struct.ti_rx_desc** %9, align 8
  %99 = getelementptr inbounds %struct.ti_rx_desc, %struct.ti_rx_desc* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  store i32 %100, i32* %8, align 4
  %101 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %102 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i32, i32* @TI_RETURN_RING_CNT, align 4
  %105 = call i32 @TI_INC(i64 %103, i32 %104)
  %106 = load %struct.ti_rx_desc*, %struct.ti_rx_desc** %9, align 8
  %107 = getelementptr inbounds %struct.ti_rx_desc, %struct.ti_rx_desc* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @TI_BDFLAG_VLAN_TAG, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %86
  store i32 1, i32* %13, align 4
  %113 = load %struct.ti_rx_desc*, %struct.ti_rx_desc** %9, align 8
  %114 = getelementptr inbounds %struct.ti_rx_desc, %struct.ti_rx_desc* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %12, align 4
  br label %116

116:                                              ; preds = %112, %86
  %117 = load %struct.ti_rx_desc*, %struct.ti_rx_desc** %9, align 8
  %118 = getelementptr inbounds %struct.ti_rx_desc, %struct.ti_rx_desc* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @TI_BDFLAG_JUMBO_RING, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %167

123:                                              ; preds = %116
  %124 = load i32, i32* %5, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %5, align 4
  %126 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %127 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load i32, i32* @TI_JUMBO_RX_RING_CNT, align 4
  %130 = call i32 @TI_INC(i64 %128, i32 %129)
  %131 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %132 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %131, i32 0, i32 5
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 12
  %134 = load %struct.mbuf**, %struct.mbuf*** %133, align 8
  %135 = load i64, i64* %10, align 8
  %136 = getelementptr inbounds %struct.mbuf*, %struct.mbuf** %134, i64 %135
  %137 = load %struct.mbuf*, %struct.mbuf** %136, align 8
  store %struct.mbuf* %137, %struct.mbuf** %11, align 8
  %138 = load %struct.ti_rx_desc*, %struct.ti_rx_desc** %9, align 8
  %139 = getelementptr inbounds %struct.ti_rx_desc, %struct.ti_rx_desc* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @TI_BDFLAG_ERROR, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %151

144:                                              ; preds = %123
  %145 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %146 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %147 = call i32 @if_inc_counter(%struct.ifnet* %145, i32 %146, i32 1)
  %148 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %149 = load i64, i64* %10, align 8
  %150 = call i32 @ti_discard_jumbo(%struct.ti_softc* %148, i64 %149)
  br label %77

151:                                              ; preds = %123
  %152 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %153 = load i64, i64* %10, align 8
  %154 = call i64 @ti_newbuf_jumbo(%struct.ti_softc* %152, i64 %153, %struct.mbuf* null)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %163

156:                                              ; preds = %151
  %157 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %158 = load i32, i32* @IFCOUNTER_IQDROPS, align 4
  %159 = call i32 @if_inc_counter(%struct.ifnet* %157, i32 %158, i32 1)
  %160 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %161 = load i64, i64* %10, align 8
  %162 = call i32 @ti_discard_jumbo(%struct.ti_softc* %160, i64 %161)
  br label %77

163:                                              ; preds = %151
  %164 = load i32, i32* %8, align 4
  %165 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %166 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %165, i32 0, i32 0
  store i32 %164, i32* %166, align 8
  br label %263

167:                                              ; preds = %116
  %168 = load %struct.ti_rx_desc*, %struct.ti_rx_desc** %9, align 8
  %169 = getelementptr inbounds %struct.ti_rx_desc, %struct.ti_rx_desc* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @TI_BDFLAG_MINI_RING, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %218

174:                                              ; preds = %167
  %175 = load i32, i32* %6, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %6, align 4
  %177 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %178 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %177, i32 0, i32 2
  %179 = load i64, i64* %178, align 8
  %180 = load i32, i32* @TI_MINI_RX_RING_CNT, align 4
  %181 = call i32 @TI_INC(i64 %179, i32 %180)
  %182 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %183 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %182, i32 0, i32 5
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 9
  %185 = load %struct.mbuf**, %struct.mbuf*** %184, align 8
  %186 = load i64, i64* %10, align 8
  %187 = getelementptr inbounds %struct.mbuf*, %struct.mbuf** %185, i64 %186
  %188 = load %struct.mbuf*, %struct.mbuf** %187, align 8
  store %struct.mbuf* %188, %struct.mbuf** %11, align 8
  %189 = load %struct.ti_rx_desc*, %struct.ti_rx_desc** %9, align 8
  %190 = getelementptr inbounds %struct.ti_rx_desc, %struct.ti_rx_desc* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @TI_BDFLAG_ERROR, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %202

195:                                              ; preds = %174
  %196 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %197 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %198 = call i32 @if_inc_counter(%struct.ifnet* %196, i32 %197, i32 1)
  %199 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %200 = load i64, i64* %10, align 8
  %201 = call i32 @ti_discard_mini(%struct.ti_softc* %199, i64 %200)
  br label %77

202:                                              ; preds = %174
  %203 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %204 = load i64, i64* %10, align 8
  %205 = call i64 @ti_newbuf_mini(%struct.ti_softc* %203, i64 %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %214

207:                                              ; preds = %202
  %208 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %209 = load i32, i32* @IFCOUNTER_IQDROPS, align 4
  %210 = call i32 @if_inc_counter(%struct.ifnet* %208, i32 %209, i32 1)
  %211 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %212 = load i64, i64* %10, align 8
  %213 = call i32 @ti_discard_mini(%struct.ti_softc* %211, i64 %212)
  br label %77

214:                                              ; preds = %202
  %215 = load i32, i32* %8, align 4
  %216 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %217 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %216, i32 0, i32 0
  store i32 %215, i32* %217, align 8
  br label %262

218:                                              ; preds = %167
  %219 = load i32, i32* %7, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %7, align 4
  %221 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %222 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %221, i32 0, i32 3
  %223 = load i64, i64* %222, align 8
  %224 = load i32, i32* @TI_STD_RX_RING_CNT, align 4
  %225 = call i32 @TI_INC(i64 %223, i32 %224)
  %226 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %227 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %226, i32 0, i32 5
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 8
  %229 = load %struct.mbuf**, %struct.mbuf*** %228, align 8
  %230 = load i64, i64* %10, align 8
  %231 = getelementptr inbounds %struct.mbuf*, %struct.mbuf** %229, i64 %230
  %232 = load %struct.mbuf*, %struct.mbuf** %231, align 8
  store %struct.mbuf* %232, %struct.mbuf** %11, align 8
  %233 = load %struct.ti_rx_desc*, %struct.ti_rx_desc** %9, align 8
  %234 = getelementptr inbounds %struct.ti_rx_desc, %struct.ti_rx_desc* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* @TI_BDFLAG_ERROR, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %246

239:                                              ; preds = %218
  %240 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %241 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %242 = call i32 @if_inc_counter(%struct.ifnet* %240, i32 %241, i32 1)
  %243 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %244 = load i64, i64* %10, align 8
  %245 = call i32 @ti_discard_std(%struct.ti_softc* %243, i64 %244)
  br label %77

246:                                              ; preds = %218
  %247 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %248 = load i64, i64* %10, align 8
  %249 = call i64 @ti_newbuf_std(%struct.ti_softc* %247, i64 %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %258

251:                                              ; preds = %246
  %252 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %253 = load i32, i32* @IFCOUNTER_IQDROPS, align 4
  %254 = call i32 @if_inc_counter(%struct.ifnet* %252, i32 %253, i32 1)
  %255 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %256 = load i64, i64* %10, align 8
  %257 = call i32 @ti_discard_std(%struct.ti_softc* %255, i64 %256)
  br label %77

258:                                              ; preds = %246
  %259 = load i32, i32* %8, align 4
  %260 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %261 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %260, i32 0, i32 0
  store i32 %259, i32* %261, align 8
  br label %262

262:                                              ; preds = %258, %214
  br label %263

263:                                              ; preds = %262, %163
  %264 = load i32, i32* %8, align 4
  %265 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %266 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %265, i32 0, i32 2
  %267 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %266, i32 0, i32 0
  store i32 %264, i32* %267, align 8
  %268 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %269 = load i32, i32* @IFCOUNTER_IPACKETS, align 4
  %270 = call i32 @if_inc_counter(%struct.ifnet* %268, i32 %269, i32 1)
  %271 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %272 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %273 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %272, i32 0, i32 2
  %274 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %273, i32 0, i32 4
  store %struct.ifnet* %271, %struct.ifnet** %274, align 8
  %275 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %276 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 8
  %278 = load i32, i32* @IFCAP_RXCSUM, align 4
  %279 = and i32 %277, %278
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %329

281:                                              ; preds = %263
  %282 = load %struct.ti_rx_desc*, %struct.ti_rx_desc** %9, align 8
  %283 = getelementptr inbounds %struct.ti_rx_desc, %struct.ti_rx_desc* %282, i32 0, i32 2
  %284 = load i32, i32* %283, align 4
  %285 = load i32, i32* @TI_BDFLAG_IP_CKSUM, align 4
  %286 = and i32 %284, %285
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %308

288:                                              ; preds = %281
  %289 = load i32, i32* @CSUM_IP_CHECKED, align 4
  %290 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %291 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %290, i32 0, i32 2
  %292 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %291, i32 0, i32 2
  %293 = load i32, i32* %292, align 8
  %294 = or i32 %293, %289
  store i32 %294, i32* %292, align 8
  %295 = load %struct.ti_rx_desc*, %struct.ti_rx_desc** %9, align 8
  %296 = getelementptr inbounds %struct.ti_rx_desc, %struct.ti_rx_desc* %295, i32 0, i32 3
  %297 = load i32, i32* %296, align 8
  %298 = xor i32 %297, 65535
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %300, label %307

300:                                              ; preds = %288
  %301 = load i32, i32* @CSUM_IP_VALID, align 4
  %302 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %303 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %302, i32 0, i32 2
  %304 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %303, i32 0, i32 2
  %305 = load i32, i32* %304, align 8
  %306 = or i32 %305, %301
  store i32 %306, i32* %304, align 8
  br label %307

307:                                              ; preds = %300, %288
  br label %308

308:                                              ; preds = %307, %281
  %309 = load %struct.ti_rx_desc*, %struct.ti_rx_desc** %9, align 8
  %310 = getelementptr inbounds %struct.ti_rx_desc, %struct.ti_rx_desc* %309, i32 0, i32 2
  %311 = load i32, i32* %310, align 4
  %312 = load i32, i32* @TI_BDFLAG_TCP_UDP_CKSUM, align 4
  %313 = and i32 %311, %312
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %328

315:                                              ; preds = %308
  %316 = load %struct.ti_rx_desc*, %struct.ti_rx_desc** %9, align 8
  %317 = getelementptr inbounds %struct.ti_rx_desc, %struct.ti_rx_desc* %316, i32 0, i32 4
  %318 = load i32, i32* %317, align 4
  %319 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %320 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %319, i32 0, i32 2
  %321 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %320, i32 0, i32 3
  store i32 %318, i32* %321, align 4
  %322 = load i32, i32* @CSUM_DATA_VALID, align 4
  %323 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %324 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %323, i32 0, i32 2
  %325 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %324, i32 0, i32 2
  %326 = load i32, i32* %325, align 8
  %327 = or i32 %326, %322
  store i32 %327, i32* %325, align 8
  br label %328

328:                                              ; preds = %315, %308
  br label %329

329:                                              ; preds = %328, %263
  %330 = load i32, i32* %13, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %342

332:                                              ; preds = %329
  %333 = load i32, i32* %12, align 4
  %334 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %335 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %334, i32 0, i32 2
  %336 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %335, i32 0, i32 1
  store i32 %333, i32* %336, align 4
  %337 = load i32, i32* @M_VLANTAG, align 4
  %338 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %339 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %338, i32 0, i32 1
  %340 = load i32, i32* %339, align 4
  %341 = or i32 %340, %337
  store i32 %341, i32* %339, align 4
  br label %342

342:                                              ; preds = %332, %329
  %343 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %344 = call i32 @TI_UNLOCK(%struct.ti_softc* %343)
  %345 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %346 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %345, i32 0, i32 2
  %347 = load i32 (%struct.ifnet*, %struct.mbuf*)*, i32 (%struct.ifnet*, %struct.mbuf*)** %346, align 8
  %348 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %349 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %350 = call i32 %347(%struct.ifnet* %348, %struct.mbuf* %349)
  %351 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %352 = call i32 @TI_LOCK(%struct.ti_softc* %351)
  br label %77

353:                                              ; preds = %77
  %354 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %355 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %354, i32 0, i32 5
  %356 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %355, i32 0, i32 7
  %357 = load i32, i32* %356, align 4
  %358 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %359 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %358, i32 0, i32 5
  %360 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %359, i32 0, i32 6
  %361 = load i32, i32* %360, align 8
  %362 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %363 = call i32 @bus_dmamap_sync(i32 %357, i32 %361, i32 %362)
  %364 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %365 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %364, i32 0, i32 4
  %366 = load i64, i64* %365, align 8
  %367 = load i64, i64* @TI_HWREV_TIGON, align 8
  %368 = icmp eq i64 %366, %367
  br i1 %368, label %369, label %376

369:                                              ; preds = %353
  %370 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %371 = load i32, i32* @TI_GCR_RXRETURNCONS_IDX, align 4
  %372 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %373 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %372, i32 0, i32 0
  %374 = load i64, i64* %373, align 8
  %375 = call i32 @CSR_WRITE_4(%struct.ti_softc* %370, i32 %371, i64 %374)
  br label %376

376:                                              ; preds = %369, %353
  %377 = load i32, i32* %7, align 4
  %378 = icmp sgt i32 %377, 0
  br i1 %378, label %379, label %395

379:                                              ; preds = %376
  %380 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %381 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %380, i32 0, i32 5
  %382 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %381, i32 0, i32 5
  %383 = load i32, i32* %382, align 4
  %384 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %385 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %384, i32 0, i32 5
  %386 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %385, i32 0, i32 4
  %387 = load i32, i32* %386, align 8
  %388 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %389 = call i32 @bus_dmamap_sync(i32 %383, i32 %387, i32 %388)
  %390 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %391 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %392 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %391, i32 0, i32 3
  %393 = load i64, i64* %392, align 8
  %394 = call i32 @TI_UPDATE_STDPROD(%struct.ti_softc* %390, i64 %393)
  br label %395

395:                                              ; preds = %379, %376
  %396 = load i32, i32* %6, align 4
  %397 = icmp sgt i32 %396, 0
  br i1 %397, label %398, label %414

398:                                              ; preds = %395
  %399 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %400 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %399, i32 0, i32 5
  %401 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %400, i32 0, i32 3
  %402 = load i32, i32* %401, align 4
  %403 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %404 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %403, i32 0, i32 5
  %405 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %404, i32 0, i32 2
  %406 = load i32, i32* %405, align 8
  %407 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %408 = call i32 @bus_dmamap_sync(i32 %402, i32 %406, i32 %407)
  %409 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %410 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %411 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %410, i32 0, i32 2
  %412 = load i64, i64* %411, align 8
  %413 = call i32 @TI_UPDATE_MINIPROD(%struct.ti_softc* %409, i64 %412)
  br label %414

414:                                              ; preds = %398, %395
  %415 = load i32, i32* %5, align 4
  %416 = icmp sgt i32 %415, 0
  br i1 %416, label %417, label %433

417:                                              ; preds = %414
  %418 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %419 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %418, i32 0, i32 5
  %420 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %419, i32 0, i32 1
  %421 = load i32, i32* %420, align 4
  %422 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %423 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %422, i32 0, i32 5
  %424 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %423, i32 0, i32 0
  %425 = load i32, i32* %424, align 8
  %426 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %427 = call i32 @bus_dmamap_sync(i32 %421, i32 %425, i32 %426)
  %428 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %429 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %430 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %429, i32 0, i32 1
  %431 = load i64, i64* %430, align 8
  %432 = call i32 @TI_UPDATE_JUMBOPROD(%struct.ti_softc* %428, i64 %431)
  br label %433

433:                                              ; preds = %417, %414
  ret void
}

declare dso_local i32 @TI_LOCK_ASSERT(%struct.ti_softc*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @TI_INC(i64, i32) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @ti_discard_jumbo(%struct.ti_softc*, i64) #1

declare dso_local i64 @ti_newbuf_jumbo(%struct.ti_softc*, i64, %struct.mbuf*) #1

declare dso_local i32 @ti_discard_mini(%struct.ti_softc*, i64) #1

declare dso_local i64 @ti_newbuf_mini(%struct.ti_softc*, i64) #1

declare dso_local i32 @ti_discard_std(%struct.ti_softc*, i64) #1

declare dso_local i64 @ti_newbuf_std(%struct.ti_softc*, i64) #1

declare dso_local i32 @TI_UNLOCK(%struct.ti_softc*) #1

declare dso_local i32 @TI_LOCK(%struct.ti_softc*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.ti_softc*, i32, i64) #1

declare dso_local i32 @TI_UPDATE_STDPROD(%struct.ti_softc*, i64) #1

declare dso_local i32 @TI_UPDATE_MINIPROD(%struct.ti_softc*, i64) #1

declare dso_local i32 @TI_UPDATE_JUMBOPROD(%struct.ti_softc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
