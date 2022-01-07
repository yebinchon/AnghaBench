; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vge/extr_if_vge.c_vge_rxeof.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vge/extr_if_vge.c_vge_rxeof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vge_softc = type { %struct.TYPE_6__, %struct.TYPE_4__, %struct.ifnet* }
%struct.TYPE_6__ = type { i32, i64, i32, i32, %struct.mbuf*, %struct.mbuf*, %struct.vge_rxdesc* }
%struct.mbuf = type { i32, i32, %struct.TYPE_5__, %struct.mbuf* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, %struct.ifnet* }
%struct.vge_rxdesc = type { %struct.mbuf* }
%struct.TYPE_4__ = type { %struct.vge_rx_desc* }
%struct.vge_rx_desc = type { i32, i32 }
%struct.ifnet = type { i32, i32, i32 (%struct.ifnet*, %struct.mbuf*)* }

@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@VGE_RDSTS_OWN = common dso_local global i32 0, align 4
@VGE_RXPKT_SOF = common dso_local global i32 0, align 4
@IFCOUNTER_IQDROPS = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i32 0, align 4
@VGE_RX_BUF_ALIGN = common dso_local global i32 0, align 4
@M_PKTHDR = common dso_local global i32 0, align 4
@VGE_RDSTS_RXOK = common dso_local global i32 0, align 4
@VGE_RDSTS_VIDM = common dso_local global i32 0, align 4
@VGE_RDSTS_RLERR = common dso_local global i32 0, align 4
@VGE_RDSTS_CSUMERR = common dso_local global i32 0, align 4
@IFCOUNTER_IERRORS = common dso_local global i32 0, align 4
@ETHER_CRC_LEN = common dso_local global i32 0, align 4
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@VGE_RDCTL_FRAG = common dso_local global i32 0, align 4
@VGE_RDCTL_IPPKT = common dso_local global i32 0, align 4
@CSUM_IP_CHECKED = common dso_local global i32 0, align 4
@VGE_RDCTL_IPCSUMOK = common dso_local global i32 0, align 4
@CSUM_IP_VALID = common dso_local global i32 0, align 4
@VGE_RDCTL_TCPPKT = common dso_local global i32 0, align 4
@VGE_RDCTL_UDPPKT = common dso_local global i32 0, align 4
@VGE_RDCTL_PROTOCSUMOK = common dso_local global i32 0, align 4
@CSUM_DATA_VALID = common dso_local global i32 0, align 4
@CSUM_PSEUDO_HDR = common dso_local global i32 0, align 4
@VGE_RDSTS_VTAG = common dso_local global i32 0, align 4
@VGE_RDCTL_VLANID = common dso_local global i32 0, align 4
@M_VLANTAG = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@VGE_RXDESC_RESIDUECNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vge_softc*, i32)* @vge_rxeof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vge_rxeof(%struct.vge_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.vge_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.vge_rxdesc*, align 8
  %11 = alloca %struct.vge_rx_desc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.vge_softc* %0, %struct.vge_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %15 = call i32 @VGE_LOCK_ASSERT(%struct.vge_softc* %14)
  %16 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %17 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %16, i32 0, i32 2
  %18 = load %struct.ifnet*, %struct.ifnet** %17, align 8
  store %struct.ifnet* %18, %struct.ifnet** %6, align 8
  %19 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %20 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %24 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %28 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @bus_dmamap_sync(i32 %22, i32 %26, i32 %29)
  %31 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %32 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %362, %2
  %36 = load i32, i32* %4, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %40 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br label %45

45:                                               ; preds = %38, %35
  %46 = phi i1 [ false, %35 ], [ %44, %38 ]
  br i1 %46, label %47, label %365

47:                                               ; preds = %45
  %48 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %49 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load %struct.vge_rx_desc*, %struct.vge_rx_desc** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.vge_rx_desc, %struct.vge_rx_desc* %51, i64 %53
  store %struct.vge_rx_desc* %54, %struct.vge_rx_desc** %11, align 8
  %55 = load %struct.vge_rx_desc*, %struct.vge_rx_desc** %11, align 8
  %56 = getelementptr inbounds %struct.vge_rx_desc, %struct.vge_rx_desc* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @le32toh(i32 %57)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* @VGE_RDSTS_OWN, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %47
  br label %365

64:                                               ; preds = %47
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %8, align 4
  %69 = load %struct.vge_rx_desc*, %struct.vge_rx_desc** %11, align 8
  %70 = getelementptr inbounds %struct.vge_rx_desc, %struct.vge_rx_desc* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @le32toh(i32 %71)
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @VGE_RXBYTES(i32 %73)
  store i32 %74, i32* %9, align 4
  %75 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %76 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 6
  %78 = load %struct.vge_rxdesc*, %struct.vge_rxdesc** %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.vge_rxdesc, %struct.vge_rxdesc* %78, i64 %80
  store %struct.vge_rxdesc* %81, %struct.vge_rxdesc** %10, align 8
  %82 = load %struct.vge_rxdesc*, %struct.vge_rxdesc** %10, align 8
  %83 = getelementptr inbounds %struct.vge_rxdesc, %struct.vge_rxdesc* %82, i32 0, i32 0
  %84 = load %struct.mbuf*, %struct.mbuf** %83, align 8
  store %struct.mbuf* %84, %struct.mbuf** %5, align 8
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* @VGE_RXPKT_SOF, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %141

89:                                               ; preds = %64
  %90 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %91 = load i32, i32* %7, align 4
  %92 = call i64 @vge_newbuf(%struct.vge_softc* %90, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %89
  %95 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %96 = load i32, i32* @IFCOUNTER_IQDROPS, align 4
  %97 = call i32 @if_inc_counter(%struct.ifnet* %95, i32 %96, i32 1)
  %98 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %99 = call i32 @VGE_CHAIN_RESET(%struct.vge_softc* %98)
  %100 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @vge_discard_rxbuf(%struct.vge_softc* %100, i32 %101)
  br label %362

103:                                              ; preds = %89
  %104 = load i32, i32* @MCLBYTES, align 4
  %105 = load i32, i32* @VGE_RX_BUF_ALIGN, align 4
  %106 = sub nsw i32 %104, %105
  %107 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %108 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %110 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 5
  %112 = load %struct.mbuf*, %struct.mbuf** %111, align 8
  %113 = icmp eq %struct.mbuf* %112, null
  br i1 %113, label %114, label %123

114:                                              ; preds = %103
  %115 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %116 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %117 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 5
  store %struct.mbuf* %115, %struct.mbuf** %118, align 8
  %119 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %120 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %121 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 4
  store %struct.mbuf* %119, %struct.mbuf** %122, align 8
  br label %140

123:                                              ; preds = %103
  %124 = load i32, i32* @M_PKTHDR, align 4
  %125 = xor i32 %124, -1
  %126 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %127 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = and i32 %128, %125
  store i32 %129, i32* %127, align 4
  %130 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %131 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %132 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 4
  %134 = load %struct.mbuf*, %struct.mbuf** %133, align 8
  %135 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %134, i32 0, i32 3
  store %struct.mbuf* %130, %struct.mbuf** %135, align 8
  %136 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %137 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %138 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 4
  store %struct.mbuf* %136, %struct.mbuf** %139, align 8
  br label %140

140:                                              ; preds = %123, %114
  br label %362

141:                                              ; preds = %64
  %142 = load i32, i32* %12, align 4
  %143 = load i32, i32* @VGE_RDSTS_RXOK, align 4
  %144 = and i32 %142, %143
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %164

146:                                              ; preds = %141
  %147 = load i32, i32* %12, align 4
  %148 = load i32, i32* @VGE_RDSTS_VIDM, align 4
  %149 = load i32, i32* @VGE_RDSTS_RLERR, align 4
  %150 = or i32 %148, %149
  %151 = load i32, i32* @VGE_RDSTS_CSUMERR, align 4
  %152 = or i32 %150, %151
  %153 = and i32 %147, %152
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %164

155:                                              ; preds = %146
  %156 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %157 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %158 = call i32 @if_inc_counter(%struct.ifnet* %156, i32 %157, i32 1)
  %159 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %160 = call i32 @VGE_CHAIN_RESET(%struct.vge_softc* %159)
  %161 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %162 = load i32, i32* %7, align 4
  %163 = call i32 @vge_discard_rxbuf(%struct.vge_softc* %161, i32 %162)
  br label %362

164:                                              ; preds = %146, %141
  %165 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %166 = load i32, i32* %7, align 4
  %167 = call i64 @vge_newbuf(%struct.vge_softc* %165, i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %178

169:                                              ; preds = %164
  %170 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %171 = load i32, i32* @IFCOUNTER_IQDROPS, align 4
  %172 = call i32 @if_inc_counter(%struct.ifnet* %170, i32 %171, i32 1)
  %173 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %174 = call i32 @VGE_CHAIN_RESET(%struct.vge_softc* %173)
  %175 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %176 = load i32, i32* %7, align 4
  %177 = call i32 @vge_discard_rxbuf(%struct.vge_softc* %175, i32 %176)
  br label %362

178:                                              ; preds = %164
  %179 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %180 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 5
  %182 = load %struct.mbuf*, %struct.mbuf** %181, align 8
  %183 = icmp ne %struct.mbuf* %182, null
  br i1 %183, label %184, label %246

184:                                              ; preds = %178
  %185 = load i32, i32* %9, align 4
  %186 = load i32, i32* @MCLBYTES, align 4
  %187 = load i32, i32* @VGE_RX_BUF_ALIGN, align 4
  %188 = sub nsw i32 %186, %187
  %189 = srem i32 %185, %188
  %190 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %191 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %190, i32 0, i32 0
  store i32 %189, i32* %191, align 8
  %192 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %193 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @ETHER_CRC_LEN, align 4
  %196 = icmp sle i32 %194, %195
  br i1 %196, label %197, label %212

197:                                              ; preds = %184
  %198 = load i32, i32* @ETHER_CRC_LEN, align 4
  %199 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %200 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = sub nsw i32 %198, %201
  %203 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %204 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 4
  %206 = load %struct.mbuf*, %struct.mbuf** %205, align 8
  %207 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = sub nsw i32 %208, %202
  store i32 %209, i32* %207, align 8
  %210 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %211 = call i32 @m_freem(%struct.mbuf* %210)
  br label %230

212:                                              ; preds = %184
  %213 = load i32, i32* @ETHER_CRC_LEN, align 4
  %214 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %215 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = sub nsw i32 %216, %213
  store i32 %217, i32* %215, align 8
  %218 = load i32, i32* @M_PKTHDR, align 4
  %219 = xor i32 %218, -1
  %220 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %221 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = and i32 %222, %219
  store i32 %223, i32* %221, align 4
  %224 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %225 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %226 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 4
  %228 = load %struct.mbuf*, %struct.mbuf** %227, align 8
  %229 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %228, i32 0, i32 3
  store %struct.mbuf* %224, %struct.mbuf** %229, align 8
  br label %230

230:                                              ; preds = %212, %197
  %231 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %232 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 5
  %234 = load %struct.mbuf*, %struct.mbuf** %233, align 8
  store %struct.mbuf* %234, %struct.mbuf** %5, align 8
  %235 = load i32, i32* @M_PKTHDR, align 4
  %236 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %237 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = or i32 %238, %235
  store i32 %239, i32* %237, align 4
  %240 = load i32, i32* %9, align 4
  %241 = load i32, i32* @ETHER_CRC_LEN, align 4
  %242 = sub nsw i32 %240, %241
  %243 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %244 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %243, i32 0, i32 2
  %245 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %244, i32 0, i32 0
  store i32 %242, i32* %245, align 8
  br label %260

246:                                              ; preds = %178
  %247 = load i32, i32* @M_PKTHDR, align 4
  %248 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %249 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = or i32 %250, %247
  store i32 %251, i32* %249, align 4
  %252 = load i32, i32* %9, align 4
  %253 = load i32, i32* @ETHER_CRC_LEN, align 4
  %254 = sub nsw i32 %252, %253
  %255 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %256 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %255, i32 0, i32 0
  store i32 %254, i32* %256, align 8
  %257 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %258 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %257, i32 0, i32 2
  %259 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %258, i32 0, i32 0
  store i32 %254, i32* %259, align 8
  br label %260

260:                                              ; preds = %246, %230
  %261 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %262 = call i32 @vge_fixup_rx(%struct.mbuf* %261)
  %263 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %264 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %265 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %264, i32 0, i32 2
  %266 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %265, i32 0, i32 4
  store %struct.ifnet* %263, %struct.ifnet** %266, align 8
  %267 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %268 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* @IFCAP_RXCSUM, align 4
  %271 = and i32 %269, %270
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %327

273:                                              ; preds = %260
  %274 = load i32, i32* %13, align 4
  %275 = load i32, i32* @VGE_RDCTL_FRAG, align 4
  %276 = and i32 %274, %275
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %278, label %327

278:                                              ; preds = %273
  %279 = load i32, i32* %13, align 4
  %280 = load i32, i32* @VGE_RDCTL_IPPKT, align 4
  %281 = and i32 %279, %280
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %290

283:                                              ; preds = %278
  %284 = load i32, i32* @CSUM_IP_CHECKED, align 4
  %285 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %286 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %285, i32 0, i32 2
  %287 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = or i32 %288, %284
  store i32 %289, i32* %287, align 4
  br label %290

290:                                              ; preds = %283, %278
  %291 = load i32, i32* %13, align 4
  %292 = load i32, i32* @VGE_RDCTL_IPCSUMOK, align 4
  %293 = and i32 %291, %292
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %302

295:                                              ; preds = %290
  %296 = load i32, i32* @CSUM_IP_VALID, align 4
  %297 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %298 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %297, i32 0, i32 2
  %299 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  %301 = or i32 %300, %296
  store i32 %301, i32* %299, align 4
  br label %302

302:                                              ; preds = %295, %290
  %303 = load i32, i32* %13, align 4
  %304 = load i32, i32* @VGE_RDCTL_TCPPKT, align 4
  %305 = load i32, i32* @VGE_RDCTL_UDPPKT, align 4
  %306 = or i32 %304, %305
  %307 = and i32 %303, %306
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %326

309:                                              ; preds = %302
  %310 = load i32, i32* %13, align 4
  %311 = load i32, i32* @VGE_RDCTL_PROTOCSUMOK, align 4
  %312 = and i32 %310, %311
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %326

314:                                              ; preds = %309
  %315 = load i32, i32* @CSUM_DATA_VALID, align 4
  %316 = load i32, i32* @CSUM_PSEUDO_HDR, align 4
  %317 = or i32 %315, %316
  %318 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %319 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %318, i32 0, i32 2
  %320 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 4
  %322 = or i32 %321, %317
  store i32 %322, i32* %320, align 4
  %323 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %324 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %323, i32 0, i32 2
  %325 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %324, i32 0, i32 2
  store i32 65535, i32* %325, align 8
  br label %326

326:                                              ; preds = %314, %309, %302
  br label %327

327:                                              ; preds = %326, %273, %260
  %328 = load i32, i32* %12, align 4
  %329 = load i32, i32* @VGE_RDSTS_VTAG, align 4
  %330 = and i32 %328, %329
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %345

332:                                              ; preds = %327
  %333 = load i32, i32* %13, align 4
  %334 = load i32, i32* @VGE_RDCTL_VLANID, align 4
  %335 = and i32 %333, %334
  %336 = call i32 @bswap16(i32 %335)
  %337 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %338 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %337, i32 0, i32 2
  %339 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %338, i32 0, i32 3
  store i32 %336, i32* %339, align 4
  %340 = load i32, i32* @M_VLANTAG, align 4
  %341 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %342 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %341, i32 0, i32 1
  %343 = load i32, i32* %342, align 4
  %344 = or i32 %343, %340
  store i32 %344, i32* %342, align 4
  br label %345

345:                                              ; preds = %332, %327
  %346 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %347 = call i32 @VGE_UNLOCK(%struct.vge_softc* %346)
  %348 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %349 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %348, i32 0, i32 2
  %350 = load i32 (%struct.ifnet*, %struct.mbuf*)*, i32 (%struct.ifnet*, %struct.mbuf*)** %349, align 8
  %351 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %352 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %353 = call i32 %350(%struct.ifnet* %351, %struct.mbuf* %352)
  %354 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %355 = call i32 @VGE_LOCK(%struct.vge_softc* %354)
  %356 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %357 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %356, i32 0, i32 0
  %358 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %357, i32 0, i32 5
  store %struct.mbuf* null, %struct.mbuf** %358, align 8
  %359 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %360 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %359, i32 0, i32 0
  %361 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %360, i32 0, i32 4
  store %struct.mbuf* null, %struct.mbuf** %361, align 8
  br label %362

362:                                              ; preds = %345, %169, %155, %140, %94
  %363 = load i32, i32* %7, align 4
  %364 = call i32 @VGE_RX_DESC_INC(i32 %363)
  br label %35

365:                                              ; preds = %63, %45
  %366 = load i32, i32* %8, align 4
  %367 = icmp sgt i32 %366, 0
  br i1 %367, label %368, label %402

368:                                              ; preds = %365
  %369 = load i32, i32* %7, align 4
  %370 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %371 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %370, i32 0, i32 0
  %372 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %371, i32 0, i32 0
  store i32 %369, i32* %372, align 8
  %373 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %374 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %373, i32 0, i32 0
  %375 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %374, i32 0, i32 3
  %376 = load i32, i32* %375, align 4
  %377 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %378 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %377, i32 0, i32 0
  %379 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %378, i32 0, i32 2
  %380 = load i32, i32* %379, align 8
  %381 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %382 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %383 = or i32 %381, %382
  %384 = call i32 @bus_dmamap_sync(i32 %376, i32 %380, i32 %383)
  %385 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %386 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %385, i32 0, i32 0
  %387 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %386, i32 0, i32 1
  %388 = load i64, i64* %387, align 8
  %389 = icmp ne i64 %388, 0
  br i1 %389, label %390, label %401

390:                                              ; preds = %368
  %391 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %392 = load i32, i32* @VGE_RXDESC_RESIDUECNT, align 4
  %393 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %394 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %393, i32 0, i32 0
  %395 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %394, i32 0, i32 1
  %396 = load i64, i64* %395, align 8
  %397 = call i32 @CSR_WRITE_2(%struct.vge_softc* %391, i32 %392, i64 %396)
  %398 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %399 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %398, i32 0, i32 0
  %400 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %399, i32 0, i32 1
  store i64 0, i64* %400, align 8
  br label %401

401:                                              ; preds = %390, %368
  br label %402

402:                                              ; preds = %401, %365
  %403 = load i32, i32* %8, align 4
  ret i32 %403
}

declare dso_local i32 @VGE_LOCK_ASSERT(%struct.vge_softc*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @le32toh(i32) #1

declare dso_local i32 @VGE_RXBYTES(i32) #1

declare dso_local i64 @vge_newbuf(%struct.vge_softc*, i32) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @VGE_CHAIN_RESET(%struct.vge_softc*) #1

declare dso_local i32 @vge_discard_rxbuf(%struct.vge_softc*, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @vge_fixup_rx(%struct.mbuf*) #1

declare dso_local i32 @bswap16(i32) #1

declare dso_local i32 @VGE_UNLOCK(%struct.vge_softc*) #1

declare dso_local i32 @VGE_LOCK(%struct.vge_softc*) #1

declare dso_local i32 @VGE_RX_DESC_INC(i32) #1

declare dso_local i32 @CSR_WRITE_2(%struct.vge_softc*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
