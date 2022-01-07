; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nfe/extr_if_nfe.c_nfe_rxeof.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nfe/extr_if_nfe.c_nfe_rxeof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfe_softc = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, i32, i32, %struct.nfe_desc32*, %struct.nfe_desc64*, %struct.nfe_rx_data* }
%struct.nfe_desc32 = type { i32, i32 }
%struct.nfe_desc64 = type { i32, i32, i32* }
%struct.nfe_rx_data = type { %struct.mbuf* }
%struct.mbuf = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@NFE_40BIT_ADDR = common dso_local global i32 0, align 4
@NFE_RX_LEN_MASK = common dso_local global i32 0, align 4
@NFE_RX_READY = common dso_local global i32 0, align 4
@NFE_JUMBO_SUP = common dso_local global i32 0, align 4
@NFE_RX_VALID_V1 = common dso_local global i32 0, align 4
@IFCOUNTER_IERRORS = common dso_local global i32 0, align 4
@NFE_RX_FIXME_V1 = common dso_local global i32 0, align 4
@NFE_RX_ERROR = common dso_local global i32 0, align 4
@NFE_RX_VALID_V2 = common dso_local global i32 0, align 4
@NFE_RX_FIXME_V2 = common dso_local global i32 0, align 4
@IFCOUNTER_IQDROPS = common dso_local global i32 0, align 4
@NFE_RX_VTAG = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTAGGING = common dso_local global i32 0, align 4
@M_VLANTAG = common dso_local global i32 0, align 4
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@NFE_RX_IP_CSUMOK = common dso_local global i32 0, align 4
@CSUM_IP_CHECKED = common dso_local global i32 0, align 4
@CSUM_IP_VALID = common dso_local global i32 0, align 4
@NFE_RX_TCP_CSUMOK = common dso_local global i32 0, align 4
@NFE_RX_UDP_CSUMOK = common dso_local global i32 0, align 4
@CSUM_DATA_VALID = common dso_local global i32 0, align 4
@CSUM_PSEUDO_HDR = common dso_local global i32 0, align 4
@IFCOUNTER_IPACKETS = common dso_local global i32 0, align 4
@NFE_RX_RING_COUNT = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfe_softc*, i32, i32*)* @nfe_rxeof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfe_rxeof(%struct.nfe_softc* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.nfe_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nfe_desc32*, align 8
  %9 = alloca %struct.nfe_desc64*, align 8
  %10 = alloca %struct.nfe_rx_data*, align 8
  %11 = alloca %struct.mbuf*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.nfe_softc* %0, %struct.nfe_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %17 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %18 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %7, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  %20 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %21 = call i32 @NFE_LOCK_ASSERT(%struct.nfe_softc* %20)
  %22 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %23 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %27 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %31 = call i32 @bus_dmamap_sync(i32 %25, i32 %29, i32 %30)
  store i32 0, i32* %14, align 4
  br label %32

32:                                               ; preds = %303, %3
  %33 = load i32, i32* %5, align 4
  %34 = icmp sle i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  br label %310

36:                                               ; preds = %32
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %5, align 4
  %39 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %40 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 5
  %42 = load %struct.nfe_rx_data*, %struct.nfe_rx_data** %41, align 8
  %43 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %44 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.nfe_rx_data, %struct.nfe_rx_data* %42, i64 %46
  store %struct.nfe_rx_data* %47, %struct.nfe_rx_data** %10, align 8
  %48 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %49 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @NFE_40BIT_ADDR, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %80

54:                                               ; preds = %36
  %55 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %56 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 4
  %58 = load %struct.nfe_desc64*, %struct.nfe_desc64** %57, align 8
  %59 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %60 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.nfe_desc64, %struct.nfe_desc64* %58, i64 %62
  store %struct.nfe_desc64* %63, %struct.nfe_desc64** %9, align 8
  %64 = load %struct.nfe_desc64*, %struct.nfe_desc64** %9, align 8
  %65 = getelementptr inbounds %struct.nfe_desc64, %struct.nfe_desc64* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @le32toh(i32 %68)
  store i32 %69, i32* %16, align 4
  %70 = load %struct.nfe_desc64*, %struct.nfe_desc64** %9, align 8
  %71 = getelementptr inbounds %struct.nfe_desc64, %struct.nfe_desc64* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @le16toh(i32 %72)
  store i32 %73, i32* %12, align 4
  %74 = load %struct.nfe_desc64*, %struct.nfe_desc64** %9, align 8
  %75 = getelementptr inbounds %struct.nfe_desc64, %struct.nfe_desc64* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @le16toh(i32 %76)
  %78 = load i32, i32* @NFE_RX_LEN_MASK, align 4
  %79 = and i32 %77, %78
  store i32 %79, i32* %13, align 4
  br label %100

80:                                               ; preds = %36
  %81 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %82 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 3
  %84 = load %struct.nfe_desc32*, %struct.nfe_desc32** %83, align 8
  %85 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %86 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds %struct.nfe_desc32, %struct.nfe_desc32* %84, i64 %88
  store %struct.nfe_desc32* %89, %struct.nfe_desc32** %8, align 8
  %90 = load %struct.nfe_desc32*, %struct.nfe_desc32** %8, align 8
  %91 = getelementptr inbounds %struct.nfe_desc32, %struct.nfe_desc32* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @le16toh(i32 %92)
  store i32 %93, i32* %12, align 4
  %94 = load %struct.nfe_desc32*, %struct.nfe_desc32** %8, align 8
  %95 = getelementptr inbounds %struct.nfe_desc32, %struct.nfe_desc32* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @le16toh(i32 %96)
  %98 = load i32, i32* @NFE_RX_LEN_MASK, align 4
  %99 = and i32 %97, %98
  store i32 %99, i32* %13, align 4
  br label %100

100:                                              ; preds = %80, %54
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* @NFE_RX_READY, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  br label %310

106:                                              ; preds = %100
  %107 = load i32, i32* %14, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %14, align 4
  %109 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %110 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @NFE_JUMBO_SUP, align 4
  %113 = load i32, i32* @NFE_40BIT_ADDR, align 4
  %114 = or i32 %112, %113
  %115 = and i32 %111, %114
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %146

117:                                              ; preds = %106
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* @NFE_RX_VALID_V1, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %132, label %122

122:                                              ; preds = %117
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %125 = call i32 @if_inc_counter(i32 %123, i32 %124, i32 1)
  %126 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %127 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %128 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = call i32 @nfe_discard_rxbuf(%struct.nfe_softc* %126, i64 %130)
  br label %303

132:                                              ; preds = %117
  %133 = load i32, i32* %12, align 4
  %134 = load i32, i32* @NFE_RX_FIXME_V1, align 4
  %135 = and i32 %133, %134
  %136 = load i32, i32* @NFE_RX_FIXME_V1, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %145

138:                                              ; preds = %132
  %139 = load i32, i32* @NFE_RX_ERROR, align 4
  %140 = xor i32 %139, -1
  %141 = load i32, i32* %12, align 4
  %142 = and i32 %141, %140
  store i32 %142, i32* %12, align 4
  %143 = load i32, i32* %13, align 4
  %144 = add nsw i32 %143, -1
  store i32 %144, i32* %13, align 4
  br label %145

145:                                              ; preds = %138, %132
  br label %175

146:                                              ; preds = %106
  %147 = load i32, i32* %12, align 4
  %148 = load i32, i32* @NFE_RX_VALID_V2, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %161, label %151

151:                                              ; preds = %146
  %152 = load i32, i32* %7, align 4
  %153 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %154 = call i32 @if_inc_counter(i32 %152, i32 %153, i32 1)
  %155 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %156 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %157 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = call i32 @nfe_discard_rxbuf(%struct.nfe_softc* %155, i64 %159)
  br label %303

161:                                              ; preds = %146
  %162 = load i32, i32* %12, align 4
  %163 = load i32, i32* @NFE_RX_FIXME_V2, align 4
  %164 = and i32 %162, %163
  %165 = load i32, i32* @NFE_RX_FIXME_V2, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %174

167:                                              ; preds = %161
  %168 = load i32, i32* @NFE_RX_ERROR, align 4
  %169 = xor i32 %168, -1
  %170 = load i32, i32* %12, align 4
  %171 = and i32 %170, %169
  store i32 %171, i32* %12, align 4
  %172 = load i32, i32* %13, align 4
  %173 = add nsw i32 %172, -1
  store i32 %173, i32* %13, align 4
  br label %174

174:                                              ; preds = %167, %161
  br label %175

175:                                              ; preds = %174, %145
  %176 = load i32, i32* %12, align 4
  %177 = load i32, i32* @NFE_RX_ERROR, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %190

180:                                              ; preds = %175
  %181 = load i32, i32* %7, align 4
  %182 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %183 = call i32 @if_inc_counter(i32 %181, i32 %182, i32 1)
  %184 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %185 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %186 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = call i32 @nfe_discard_rxbuf(%struct.nfe_softc* %184, i64 %188)
  br label %303

190:                                              ; preds = %175
  %191 = load %struct.nfe_rx_data*, %struct.nfe_rx_data** %10, align 8
  %192 = getelementptr inbounds %struct.nfe_rx_data, %struct.nfe_rx_data* %191, i32 0, i32 0
  %193 = load %struct.mbuf*, %struct.mbuf** %192, align 8
  store %struct.mbuf* %193, %struct.mbuf** %11, align 8
  %194 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %195 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %196 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = call i64 @nfe_newbuf(%struct.nfe_softc* %194, i64 %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %211

201:                                              ; preds = %190
  %202 = load i32, i32* %7, align 4
  %203 = load i32, i32* @IFCOUNTER_IQDROPS, align 4
  %204 = call i32 @if_inc_counter(i32 %202, i32 %203, i32 1)
  %205 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %206 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %207 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = call i32 @nfe_discard_rxbuf(%struct.nfe_softc* %205, i64 %209)
  br label %303

211:                                              ; preds = %190
  %212 = load i32, i32* %16, align 4
  %213 = load i32, i32* @NFE_RX_VTAG, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %233

216:                                              ; preds = %211
  %217 = load i32, i32* %7, align 4
  %218 = call i32 @if_getcapenable(i32 %217)
  %219 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %233

222:                                              ; preds = %216
  %223 = load i32, i32* %16, align 4
  %224 = and i32 %223, 65535
  %225 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %226 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %226, i32 0, i32 0
  store i32 %224, i32* %227, align 4
  %228 = load i32, i32* @M_VLANTAG, align 4
  %229 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %230 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 4
  %232 = or i32 %231, %228
  store i32 %232, i32* %230, align 4
  br label %233

233:                                              ; preds = %222, %216, %211
  %234 = load i32, i32* %13, align 4
  %235 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %236 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %235, i32 0, i32 0
  store i32 %234, i32* %236, align 4
  %237 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %238 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %238, i32 0, i32 1
  store i32 %234, i32* %239, align 4
  %240 = load i32, i32* %7, align 4
  %241 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %242 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %242, i32 0, i32 4
  store i32 %240, i32* %243, align 4
  %244 = load i32, i32* %7, align 4
  %245 = call i32 @if_getcapenable(i32 %244)
  %246 = load i32, i32* @IFCAP_RXCSUM, align 4
  %247 = and i32 %245, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %290

249:                                              ; preds = %233
  %250 = load i32, i32* %12, align 4
  %251 = load i32, i32* @NFE_RX_IP_CSUMOK, align 4
  %252 = and i32 %250, %251
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %289

254:                                              ; preds = %249
  %255 = load i32, i32* @CSUM_IP_CHECKED, align 4
  %256 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %257 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 4
  %260 = or i32 %259, %255
  store i32 %260, i32* %258, align 4
  %261 = load i32, i32* @CSUM_IP_VALID, align 4
  %262 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %263 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %263, i32 0, i32 2
  %265 = load i32, i32* %264, align 4
  %266 = or i32 %265, %261
  store i32 %266, i32* %264, align 4
  %267 = load i32, i32* %12, align 4
  %268 = load i32, i32* @NFE_RX_TCP_CSUMOK, align 4
  %269 = and i32 %267, %268
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %276, label %271

271:                                              ; preds = %254
  %272 = load i32, i32* %12, align 4
  %273 = load i32, i32* @NFE_RX_UDP_CSUMOK, align 4
  %274 = and i32 %272, %273
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %288

276:                                              ; preds = %271, %254
  %277 = load i32, i32* @CSUM_DATA_VALID, align 4
  %278 = load i32, i32* @CSUM_PSEUDO_HDR, align 4
  %279 = or i32 %277, %278
  %280 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %281 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %280, i32 0, i32 1
  %282 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 4
  %284 = or i32 %283, %279
  store i32 %284, i32* %282, align 4
  %285 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %286 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %285, i32 0, i32 1
  %287 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %286, i32 0, i32 3
  store i32 65535, i32* %287, align 4
  br label %288

288:                                              ; preds = %276, %271
  br label %289

289:                                              ; preds = %288, %249
  br label %290

290:                                              ; preds = %289, %233
  %291 = load i32, i32* %7, align 4
  %292 = load i32, i32* @IFCOUNTER_IPACKETS, align 4
  %293 = call i32 @if_inc_counter(i32 %291, i32 %292, i32 1)
  %294 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %295 = call i32 @NFE_UNLOCK(%struct.nfe_softc* %294)
  %296 = load i32, i32* %7, align 4
  %297 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %298 = call i32 @if_input(i32 %296, %struct.mbuf* %297)
  %299 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %300 = call i32 @NFE_LOCK(%struct.nfe_softc* %299)
  %301 = load i32, i32* %15, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %15, align 4
  br label %303

303:                                              ; preds = %290, %201, %180, %151, %122
  %304 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %305 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %304, i32 0, i32 1
  %306 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %305, i32 0, i32 0
  %307 = load i64, i64* %306, align 8
  %308 = load i32, i32* @NFE_RX_RING_COUNT, align 4
  %309 = call i32 @NFE_INC(i64 %307, i32 %308)
  store i32 0, i32* %16, align 4
  br label %32

310:                                              ; preds = %105, %35
  %311 = load i32, i32* %14, align 4
  %312 = icmp sgt i32 %311, 0
  br i1 %312, label %313, label %326

313:                                              ; preds = %310
  %314 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %315 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %314, i32 0, i32 1
  %316 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %315, i32 0, i32 2
  %317 = load i32, i32* %316, align 4
  %318 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %319 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %318, i32 0, i32 1
  %320 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 8
  %322 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %323 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %324 = or i32 %322, %323
  %325 = call i32 @bus_dmamap_sync(i32 %317, i32 %321, i32 %324)
  br label %326

326:                                              ; preds = %313, %310
  %327 = load i32*, i32** %6, align 8
  %328 = icmp ne i32* %327, null
  br i1 %328, label %329, label %332

329:                                              ; preds = %326
  %330 = load i32, i32* %15, align 4
  %331 = load i32*, i32** %6, align 8
  store i32 %330, i32* %331, align 4
  br label %332

332:                                              ; preds = %329, %326
  %333 = load i32, i32* %5, align 4
  %334 = icmp sgt i32 %333, 0
  br i1 %334, label %335, label %336

335:                                              ; preds = %332
  br label %338

336:                                              ; preds = %332
  %337 = load i32, i32* @EAGAIN, align 4
  br label %338

338:                                              ; preds = %336, %335
  %339 = phi i32 [ 0, %335 ], [ %337, %336 ]
  ret i32 %339
}

declare dso_local i32 @NFE_LOCK_ASSERT(%struct.nfe_softc*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @le32toh(i32) #1

declare dso_local i32 @le16toh(i32) #1

declare dso_local i32 @if_inc_counter(i32, i32, i32) #1

declare dso_local i32 @nfe_discard_rxbuf(%struct.nfe_softc*, i64) #1

declare dso_local i64 @nfe_newbuf(%struct.nfe_softc*, i64) #1

declare dso_local i32 @if_getcapenable(i32) #1

declare dso_local i32 @NFE_UNLOCK(%struct.nfe_softc*) #1

declare dso_local i32 @if_input(i32, %struct.mbuf*) #1

declare dso_local i32 @NFE_LOCK(%struct.nfe_softc*) #1

declare dso_local i32 @NFE_INC(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
