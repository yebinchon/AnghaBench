; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nge/extr_if_nge.c_nge_rxeof.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nge/extr_if_nge.c_nge_rxeof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nge_softc = type { i64, %struct.TYPE_5__, %struct.mbuf*, %struct.mbuf*, %struct.TYPE_4__, %struct.ifnet* }
%struct.TYPE_5__ = type { i32, i32, i32, %struct.nge_rxdesc* }
%struct.nge_rxdesc = type { %struct.mbuf* }
%struct.mbuf = type { i32, i32, %struct.TYPE_6__, %struct.mbuf* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, %struct.ifnet* }
%struct.TYPE_4__ = type { %struct.nge_desc* }
%struct.nge_desc = type { i32, i32 }
%struct.ifnet = type { i32, i32, i32 (%struct.ifnet*, %struct.mbuf*)* }

@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@NGE_RX_RING_CNT = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@NGE_CMDSTS_OWN = common dso_local global i32 0, align 4
@NGE_CMDSTS_BUFLEN = common dso_local global i32 0, align 4
@NGE_CMDSTS_MORE = common dso_local global i32 0, align 4
@IFCOUNTER_IQDROPS = common dso_local global i32 0, align 4
@M_PKTHDR = common dso_local global i32 0, align 4
@NGE_CMDSTS_PKT_OK = common dso_local global i32 0, align 4
@NGE_RXSTAT_RUNT = common dso_local global i32 0, align 4
@ETHER_MIN_LEN = common dso_local global i32 0, align 4
@ETHER_CRC_LEN = common dso_local global i32 0, align 4
@IFCOUNTER_IPACKETS = common dso_local global i32 0, align 4
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@NGE_RXEXTSTS_IPPKT = common dso_local global i32 0, align 4
@CSUM_IP_CHECKED = common dso_local global i32 0, align 4
@NGE_RXEXTSTS_IPCSUMERR = common dso_local global i32 0, align 4
@CSUM_IP_VALID = common dso_local global i32 0, align 4
@NGE_RXEXTSTS_TCPPKT = common dso_local global i32 0, align 4
@NGE_RXEXTSTS_TCPCSUMERR = common dso_local global i32 0, align 4
@NGE_RXEXTSTS_UDPPKT = common dso_local global i32 0, align 4
@NGE_RXEXTSTS_UDPCSUMERR = common dso_local global i32 0, align 4
@CSUM_DATA_VALID = common dso_local global i32 0, align 4
@CSUM_PSEUDO_HDR = common dso_local global i32 0, align 4
@NGE_RXEXTSTS_VLANPKT = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTAGGING = common dso_local global i32 0, align 4
@NGE_RXEXTSTS_VTCI = common dso_local global i32 0, align 4
@M_VLANTAG = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@IFCAP_POLLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nge_softc*)* @nge_rxeof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nge_rxeof(%struct.nge_softc* %0) #0 {
  %2 = alloca %struct.nge_softc*, align 8
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.nge_desc*, align 8
  %6 = alloca %struct.nge_rxdesc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nge_softc* %0, %struct.nge_softc** %2, align 8
  %13 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %14 = call i32 @NGE_LOCK_ASSERT(%struct.nge_softc* %13)
  %15 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %16 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %15, i32 0, i32 5
  %17 = load %struct.ifnet*, %struct.ifnet** %16, align 8
  store %struct.ifnet* %17, %struct.ifnet** %4, align 8
  %18 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %19 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %22 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %23 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %27 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %31 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @bus_dmamap_sync(i32 %25, i32 %29, i32 %32)
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %370, %1
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @NGE_RX_RING_CNT, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %34
  %39 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %40 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br label %45

45:                                               ; preds = %38, %34
  %46 = phi i1 [ false, %34 ], [ %44, %38 ]
  br i1 %46, label %47, label %374

47:                                               ; preds = %45
  %48 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %49 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load %struct.nge_desc*, %struct.nge_desc** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.nge_desc, %struct.nge_desc* %51, i64 %53
  store %struct.nge_desc* %54, %struct.nge_desc** %5, align 8
  %55 = load %struct.nge_desc*, %struct.nge_desc** %5, align 8
  %56 = getelementptr inbounds %struct.nge_desc, %struct.nge_desc* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @le32toh(i32 %57)
  store i32 %58, i32* %11, align 4
  %59 = load %struct.nge_desc*, %struct.nge_desc** %5, align 8
  %60 = getelementptr inbounds %struct.nge_desc, %struct.nge_desc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @le32toh(i32 %61)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @NGE_CMDSTS_OWN, align 4
  %65 = and i32 %63, %64
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %47
  br label %374

68:                                               ; preds = %47
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  %71 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %72 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 3
  %74 = load %struct.nge_rxdesc*, %struct.nge_rxdesc** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.nge_rxdesc, %struct.nge_rxdesc* %74, i64 %76
  store %struct.nge_rxdesc* %77, %struct.nge_rxdesc** %6, align 8
  %78 = load %struct.nge_rxdesc*, %struct.nge_rxdesc** %6, align 8
  %79 = getelementptr inbounds %struct.nge_rxdesc, %struct.nge_rxdesc* %78, i32 0, i32 0
  %80 = load %struct.mbuf*, %struct.mbuf** %79, align 8
  store %struct.mbuf* %80, %struct.mbuf** %3, align 8
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* @NGE_CMDSTS_BUFLEN, align 4
  %83 = and i32 %81, %82
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* @NGE_CMDSTS_MORE, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %156

88:                                               ; preds = %68
  %89 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %90 = load i32, i32* %7, align 4
  %91 = call i64 @nge_newbuf(%struct.nge_softc* %89, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %114

93:                                               ; preds = %88
  %94 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %95 = load i32, i32* @IFCOUNTER_IQDROPS, align 4
  %96 = call i32 @if_inc_counter(%struct.ifnet* %94, i32 %95, i32 1)
  %97 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %98 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %97, i32 0, i32 3
  %99 = load %struct.mbuf*, %struct.mbuf** %98, align 8
  %100 = icmp ne %struct.mbuf* %99, null
  br i1 %100, label %101, label %110

101:                                              ; preds = %93
  %102 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %103 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %102, i32 0, i32 3
  %104 = load %struct.mbuf*, %struct.mbuf** %103, align 8
  %105 = call i32 @m_freem(%struct.mbuf* %104)
  %106 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %107 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %106, i32 0, i32 2
  store %struct.mbuf* null, %struct.mbuf** %107, align 8
  %108 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %109 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %108, i32 0, i32 3
  store %struct.mbuf* null, %struct.mbuf** %109, align 8
  br label %110

110:                                              ; preds = %101, %93
  %111 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @nge_discard_rxbuf(%struct.nge_softc* %111, i32 %112)
  br label %370

114:                                              ; preds = %88
  %115 = load i32, i32* %10, align 4
  %116 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %117 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  %118 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %119 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %118, i32 0, i32 3
  %120 = load %struct.mbuf*, %struct.mbuf** %119, align 8
  %121 = icmp eq %struct.mbuf* %120, null
  br i1 %121, label %122, label %132

122:                                              ; preds = %114
  %123 = load i32, i32* %10, align 4
  %124 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %125 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  store i32 %123, i32* %126, align 8
  %127 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %128 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %129 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %128, i32 0, i32 2
  store %struct.mbuf* %127, %struct.mbuf** %129, align 8
  %130 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %131 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %130, i32 0, i32 3
  store %struct.mbuf* %127, %struct.mbuf** %131, align 8
  br label %155

132:                                              ; preds = %114
  %133 = load i32, i32* @M_PKTHDR, align 4
  %134 = xor i32 %133, -1
  %135 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %136 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = and i32 %137, %134
  store i32 %138, i32* %136, align 4
  %139 = load i32, i32* %10, align 4
  %140 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %141 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %140, i32 0, i32 3
  %142 = load %struct.mbuf*, %struct.mbuf** %141, align 8
  %143 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = add nsw i32 %145, %139
  store i32 %146, i32* %144, align 8
  %147 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %148 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %149 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %148, i32 0, i32 2
  %150 = load %struct.mbuf*, %struct.mbuf** %149, align 8
  %151 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %150, i32 0, i32 3
  store %struct.mbuf* %147, %struct.mbuf** %151, align 8
  %152 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %153 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %154 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %153, i32 0, i32 2
  store %struct.mbuf* %152, %struct.mbuf** %154, align 8
  br label %155

155:                                              ; preds = %132, %122
  br label %370

156:                                              ; preds = %68
  %157 = load i32, i32* %11, align 4
  %158 = load i32, i32* @NGE_CMDSTS_PKT_OK, align 4
  %159 = and i32 %157, %158
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %193

161:                                              ; preds = %156
  %162 = load i32, i32* %11, align 4
  %163 = load i32, i32* @NGE_RXSTAT_RUNT, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %174

166:                                              ; preds = %161
  %167 = load i32, i32* %10, align 4
  %168 = load i32, i32* @ETHER_MIN_LEN, align 4
  %169 = load i32, i32* @ETHER_CRC_LEN, align 4
  %170 = sub nsw i32 %168, %169
  %171 = sub nsw i32 %170, 4
  %172 = icmp sge i32 %167, %171
  br i1 %172, label %173, label %174

173:                                              ; preds = %166
  br label %192

174:                                              ; preds = %166, %161
  %175 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %176 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %175, i32 0, i32 3
  %177 = load %struct.mbuf*, %struct.mbuf** %176, align 8
  %178 = icmp ne %struct.mbuf* %177, null
  br i1 %178, label %179, label %188

179:                                              ; preds = %174
  %180 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %181 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %180, i32 0, i32 3
  %182 = load %struct.mbuf*, %struct.mbuf** %181, align 8
  %183 = call i32 @m_freem(%struct.mbuf* %182)
  %184 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %185 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %184, i32 0, i32 2
  store %struct.mbuf* null, %struct.mbuf** %185, align 8
  %186 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %187 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %186, i32 0, i32 3
  store %struct.mbuf* null, %struct.mbuf** %187, align 8
  br label %188

188:                                              ; preds = %179, %174
  %189 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %190 = load i32, i32* %7, align 4
  %191 = call i32 @nge_discard_rxbuf(%struct.nge_softc* %189, i32 %190)
  br label %370

192:                                              ; preds = %173
  br label %193

193:                                              ; preds = %192, %156
  %194 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %195 = load i32, i32* %7, align 4
  %196 = call i64 @nge_newbuf(%struct.nge_softc* %194, i32 %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %219

198:                                              ; preds = %193
  %199 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %200 = load i32, i32* @IFCOUNTER_IQDROPS, align 4
  %201 = call i32 @if_inc_counter(%struct.ifnet* %199, i32 %200, i32 1)
  %202 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %203 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %202, i32 0, i32 3
  %204 = load %struct.mbuf*, %struct.mbuf** %203, align 8
  %205 = icmp ne %struct.mbuf* %204, null
  br i1 %205, label %206, label %215

206:                                              ; preds = %198
  %207 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %208 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %207, i32 0, i32 3
  %209 = load %struct.mbuf*, %struct.mbuf** %208, align 8
  %210 = call i32 @m_freem(%struct.mbuf* %209)
  %211 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %212 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %211, i32 0, i32 2
  store %struct.mbuf* null, %struct.mbuf** %212, align 8
  %213 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %214 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %213, i32 0, i32 3
  store %struct.mbuf* null, %struct.mbuf** %214, align 8
  br label %215

215:                                              ; preds = %206, %198
  %216 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %217 = load i32, i32* %7, align 4
  %218 = call i32 @nge_discard_rxbuf(%struct.nge_softc* %216, i32 %217)
  br label %370

219:                                              ; preds = %193
  %220 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %221 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %220, i32 0, i32 3
  %222 = load %struct.mbuf*, %struct.mbuf** %221, align 8
  %223 = icmp ne %struct.mbuf* %222, null
  br i1 %223, label %224, label %252

224:                                              ; preds = %219
  %225 = load i32, i32* %10, align 4
  %226 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %227 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %226, i32 0, i32 0
  store i32 %225, i32* %227, align 8
  %228 = load i32, i32* @M_PKTHDR, align 4
  %229 = xor i32 %228, -1
  %230 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %231 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = and i32 %232, %229
  store i32 %233, i32* %231, align 4
  %234 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %235 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %236 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %235, i32 0, i32 2
  %237 = load %struct.mbuf*, %struct.mbuf** %236, align 8
  %238 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %237, i32 0, i32 3
  store %struct.mbuf* %234, %struct.mbuf** %238, align 8
  %239 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %240 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %239, i32 0, i32 3
  %241 = load %struct.mbuf*, %struct.mbuf** %240, align 8
  store %struct.mbuf* %241, %struct.mbuf** %3, align 8
  %242 = load i32, i32* %10, align 4
  %243 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %244 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %243, i32 0, i32 2
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = add nsw i32 %246, %242
  store i32 %247, i32* %245, align 8
  %248 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %249 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %248, i32 0, i32 2
  store %struct.mbuf* null, %struct.mbuf** %249, align 8
  %250 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %251 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %250, i32 0, i32 3
  store %struct.mbuf* null, %struct.mbuf** %251, align 8
  br label %259

252:                                              ; preds = %219
  %253 = load i32, i32* %10, align 4
  %254 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %255 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %254, i32 0, i32 0
  store i32 %253, i32* %255, align 8
  %256 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %257 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %256, i32 0, i32 2
  %258 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %257, i32 0, i32 0
  store i32 %253, i32* %258, align 8
  br label %259

259:                                              ; preds = %252, %224
  %260 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %261 = call i32 @nge_fixup_rx(%struct.mbuf* %260)
  %262 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %263 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %264 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %263, i32 0, i32 2
  %265 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %264, i32 0, i32 4
  store %struct.ifnet* %262, %struct.ifnet** %265, align 8
  %266 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %267 = load i32, i32* @IFCOUNTER_IPACKETS, align 4
  %268 = call i32 @if_inc_counter(%struct.ifnet* %266, i32 %267, i32 1)
  %269 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %270 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* @IFCAP_RXCSUM, align 4
  %273 = and i32 %271, %272
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %332

275:                                              ; preds = %259
  %276 = load i32, i32* %12, align 4
  %277 = load i32, i32* @NGE_RXEXTSTS_IPPKT, align 4
  %278 = and i32 %276, %277
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %287

280:                                              ; preds = %275
  %281 = load i32, i32* @CSUM_IP_CHECKED, align 4
  %282 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %283 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %282, i32 0, i32 2
  %284 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = or i32 %285, %281
  store i32 %286, i32* %284, align 4
  br label %287

287:                                              ; preds = %280, %275
  %288 = load i32, i32* %12, align 4
  %289 = load i32, i32* @NGE_RXEXTSTS_IPCSUMERR, align 4
  %290 = and i32 %288, %289
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %292, label %299

292:                                              ; preds = %287
  %293 = load i32, i32* @CSUM_IP_VALID, align 4
  %294 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %295 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %294, i32 0, i32 2
  %296 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = or i32 %297, %293
  store i32 %298, i32* %296, align 4
  br label %299

299:                                              ; preds = %292, %287
  %300 = load i32, i32* %12, align 4
  %301 = load i32, i32* @NGE_RXEXTSTS_TCPPKT, align 4
  %302 = and i32 %300, %301
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %309

304:                                              ; preds = %299
  %305 = load i32, i32* %12, align 4
  %306 = load i32, i32* @NGE_RXEXTSTS_TCPCSUMERR, align 4
  %307 = and i32 %305, %306
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %319

309:                                              ; preds = %304, %299
  %310 = load i32, i32* %12, align 4
  %311 = load i32, i32* @NGE_RXEXTSTS_UDPPKT, align 4
  %312 = and i32 %310, %311
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %331

314:                                              ; preds = %309
  %315 = load i32, i32* %12, align 4
  %316 = load i32, i32* @NGE_RXEXTSTS_UDPCSUMERR, align 4
  %317 = and i32 %315, %316
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %331, label %319

319:                                              ; preds = %314, %304
  %320 = load i32, i32* @CSUM_DATA_VALID, align 4
  %321 = load i32, i32* @CSUM_PSEUDO_HDR, align 4
  %322 = or i32 %320, %321
  %323 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %324 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %323, i32 0, i32 2
  %325 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 4
  %327 = or i32 %326, %322
  store i32 %327, i32* %325, align 4
  %328 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %329 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %328, i32 0, i32 2
  %330 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %329, i32 0, i32 2
  store i32 65535, i32* %330, align 8
  br label %331

331:                                              ; preds = %319, %314, %309
  br label %332

332:                                              ; preds = %331, %259
  %333 = load i32, i32* %12, align 4
  %334 = load i32, i32* @NGE_RXEXTSTS_VLANPKT, align 4
  %335 = and i32 %333, %334
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %357

337:                                              ; preds = %332
  %338 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %339 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %338, i32 0, i32 1
  %340 = load i32, i32* %339, align 4
  %341 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %342 = and i32 %340, %341
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %357

344:                                              ; preds = %337
  %345 = load i32, i32* %12, align 4
  %346 = load i32, i32* @NGE_RXEXTSTS_VTCI, align 4
  %347 = and i32 %345, %346
  %348 = call i32 @bswap16(i32 %347)
  %349 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %350 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %349, i32 0, i32 2
  %351 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %350, i32 0, i32 3
  store i32 %348, i32* %351, align 4
  %352 = load i32, i32* @M_VLANTAG, align 4
  %353 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %354 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %353, i32 0, i32 1
  %355 = load i32, i32* %354, align 4
  %356 = or i32 %355, %352
  store i32 %356, i32* %354, align 4
  br label %357

357:                                              ; preds = %344, %337, %332
  %358 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %359 = call i32 @NGE_UNLOCK(%struct.nge_softc* %358)
  %360 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %361 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %360, i32 0, i32 2
  %362 = load i32 (%struct.ifnet*, %struct.mbuf*)*, i32 (%struct.ifnet*, %struct.mbuf*)** %361, align 8
  %363 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %364 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %365 = call i32 %362(%struct.ifnet* %363, %struct.mbuf* %364)
  %366 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %367 = call i32 @NGE_LOCK(%struct.nge_softc* %366)
  %368 = load i32, i32* %9, align 4
  %369 = add nsw i32 %368, 1
  store i32 %369, i32* %9, align 4
  br label %370

370:                                              ; preds = %357, %215, %188, %155, %110
  %371 = load i32, i32* %7, align 4
  %372 = load i32, i32* @NGE_RX_RING_CNT, align 4
  %373 = call i32 @NGE_INC(i32 %371, i32 %372)
  br label %34

374:                                              ; preds = %67, %45
  %375 = load i32, i32* %8, align 4
  %376 = icmp sgt i32 %375, 0
  br i1 %376, label %377, label %394

377:                                              ; preds = %374
  %378 = load i32, i32* %7, align 4
  %379 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %380 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %379, i32 0, i32 1
  %381 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %380, i32 0, i32 0
  store i32 %378, i32* %381, align 8
  %382 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %383 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %382, i32 0, i32 1
  %384 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %383, i32 0, i32 2
  %385 = load i32, i32* %384, align 8
  %386 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %387 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %386, i32 0, i32 1
  %388 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %387, i32 0, i32 1
  %389 = load i32, i32* %388, align 4
  %390 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %391 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %392 = or i32 %390, %391
  %393 = call i32 @bus_dmamap_sync(i32 %385, i32 %389, i32 %392)
  br label %394

394:                                              ; preds = %377, %374
  %395 = load i32, i32* %9, align 4
  ret i32 %395
}

declare dso_local i32 @NGE_LOCK_ASSERT(%struct.nge_softc*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @le32toh(i32) #1

declare dso_local i64 @nge_newbuf(%struct.nge_softc*, i32) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @nge_discard_rxbuf(%struct.nge_softc*, i32) #1

declare dso_local i32 @nge_fixup_rx(%struct.mbuf*) #1

declare dso_local i32 @bswap16(i32) #1

declare dso_local i32 @NGE_UNLOCK(%struct.nge_softc*) #1

declare dso_local i32 @NGE_LOCK(%struct.nge_softc*) #1

declare dso_local i32 @NGE_INC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
