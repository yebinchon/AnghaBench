; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/stge/extr_if_stge.c_stge_rxeof.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/stge/extr_if_stge.c_stge_rxeof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stge_softc = type { i64, %struct.TYPE_8__, %struct.TYPE_6__, %struct.ifnet* }
%struct.TYPE_8__ = type { i32, i64, i64, i32, i32, %struct.mbuf*, %struct.mbuf*, %struct.stge_rxdesc* }
%struct.mbuf = type { i64, i32, %struct.TYPE_7__, %struct.mbuf* }
%struct.TYPE_7__ = type { i64, i32, i32, i32, %struct.ifnet* }
%struct.stge_rxdesc = type { %struct.mbuf* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.ifnet = type { i32, i32 (%struct.ifnet*, %struct.mbuf*)* }

@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@STGE_RX_RING_CNT = common dso_local global i32 0, align 4
@RFD_RFDDone = common dso_local global i32 0, align 4
@RFD_FrameEnd = common dso_local global i32 0, align 4
@RFD_RxFIFOOverrun = common dso_local global i32 0, align 4
@RFD_RxRuntFrame = common dso_local global i32 0, align 4
@RFD_RxAlignmentError = common dso_local global i32 0, align 4
@RFD_RxFCSError = common dso_local global i32 0, align 4
@RFD_RxLengthError = common dso_local global i32 0, align 4
@IFCOUNTER_IQDROPS = common dso_local global i32 0, align 4
@M_PKTHDR = common dso_local global i32 0, align 4
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@RFD_IPDetected = common dso_local global i32 0, align 4
@CSUM_IP_CHECKED = common dso_local global i32 0, align 4
@RFD_IPError = common dso_local global i32 0, align 4
@CSUM_IP_VALID = common dso_local global i32 0, align 4
@RFD_TCPDetected = common dso_local global i32 0, align 4
@RFD_TCPError = common dso_local global i32 0, align 4
@RFD_UDPDetected = common dso_local global i32 0, align 4
@RFD_UDPError = common dso_local global i32 0, align 4
@CSUM_DATA_VALID = common dso_local global i32 0, align 4
@CSUM_PSEUDO_HDR = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i64 0, align 8
@ETHER_ALIGN = common dso_local global i64 0, align 8
@RFD_VLANDetected = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTAGGING = common dso_local global i32 0, align 4
@M_VLANTAG = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@IFCAP_POLLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stge_softc*)* @stge_rxeof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stge_rxeof(%struct.stge_softc* %0) #0 {
  %2 = alloca %struct.stge_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.stge_rxdesc*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.stge_softc* %0, %struct.stge_softc** %2, align 8
  %12 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %13 = call i32 @STGE_LOCK_ASSERT(%struct.stge_softc* %12)
  store i32 0, i32* %11, align 4
  %14 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %15 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %14, i32 0, i32 3
  %16 = load %struct.ifnet*, %struct.ifnet** %15, align 8
  store %struct.ifnet* %16, %struct.ifnet** %3, align 8
  %17 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %18 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %22 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %26 = call i32 @bus_dmamap_sync(i32 %20, i32 %24, i32 %25)
  store i32 0, i32* %10, align 4
  %27 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %28 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %9, align 4
  br label %31

31:                                               ; preds = %336, %1
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @STGE_RX_RING_CNT, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %343

35:                                               ; preds = %31
  %36 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %37 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @le64toh(i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @RFD_RxStatus(i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @RFD_RFDDone, align 4
  %50 = and i32 %48, %49
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %35
  br label %343

53:                                               ; preds = %35
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %10, align 4
  %56 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %57 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 7
  %59 = load %struct.stge_rxdesc*, %struct.stge_rxdesc** %58, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.stge_rxdesc, %struct.stge_rxdesc* %59, i64 %61
  store %struct.stge_rxdesc* %62, %struct.stge_rxdesc** %4, align 8
  %63 = load %struct.stge_rxdesc*, %struct.stge_rxdesc** %4, align 8
  %64 = getelementptr inbounds %struct.stge_rxdesc, %struct.stge_rxdesc* %63, i32 0, i32 0
  %65 = load %struct.mbuf*, %struct.mbuf** %64, align 8
  store %struct.mbuf* %65, %struct.mbuf** %5, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @RFD_FrameEnd, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %101

70:                                               ; preds = %53
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @RFD_RxFIFOOverrun, align 4
  %73 = load i32, i32* @RFD_RxRuntFrame, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @RFD_RxAlignmentError, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @RFD_RxFCSError, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @RFD_RxLengthError, align 4
  %80 = or i32 %78, %79
  %81 = and i32 %71, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %101

83:                                               ; preds = %70
  %84 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @stge_discard_rxbuf(%struct.stge_softc* %84, i32 %85)
  %87 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %88 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 5
  %90 = load %struct.mbuf*, %struct.mbuf** %89, align 8
  %91 = icmp ne %struct.mbuf* %90, null
  br i1 %91, label %92, label %100

92:                                               ; preds = %83
  %93 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %94 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 5
  %96 = load %struct.mbuf*, %struct.mbuf** %95, align 8
  %97 = call i32 @m_freem(%struct.mbuf* %96)
  %98 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %99 = call i32 @STGE_RXCHAIN_RESET(%struct.stge_softc* %98)
  br label %100

100:                                              ; preds = %92, %83
  br label %336

101:                                              ; preds = %70, %53
  %102 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %103 = load i32, i32* %9, align 4
  %104 = call i64 @stge_newbuf(%struct.stge_softc* %102, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %127

106:                                              ; preds = %101
  %107 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %108 = load i32, i32* @IFCOUNTER_IQDROPS, align 4
  %109 = call i32 @if_inc_counter(%struct.ifnet* %107, i32 %108, i32 1)
  %110 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %111 = load i32, i32* %9, align 4
  %112 = call i32 @stge_discard_rxbuf(%struct.stge_softc* %110, i32 %111)
  %113 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %114 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 5
  %116 = load %struct.mbuf*, %struct.mbuf** %115, align 8
  %117 = icmp ne %struct.mbuf* %116, null
  br i1 %117, label %118, label %126

118:                                              ; preds = %106
  %119 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %120 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 5
  %122 = load %struct.mbuf*, %struct.mbuf** %121, align 8
  %123 = call i32 @m_freem(%struct.mbuf* %122)
  %124 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %125 = call i32 @STGE_RXCHAIN_RESET(%struct.stge_softc* %124)
  br label %126

126:                                              ; preds = %118, %106
  br label %336

127:                                              ; preds = %101
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* @RFD_FrameEnd, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %142

132:                                              ; preds = %127
  %133 = load i32, i32* %8, align 4
  %134 = call i64 @RFD_RxDMAFrameLen(i32 %133)
  %135 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %136 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = sub nsw i64 %134, %138
  %140 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %141 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %140, i32 0, i32 0
  store i64 %139, i64* %141, align 8
  br label %142

142:                                              ; preds = %132, %127
  %143 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %144 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %147 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = add nsw i64 %149, %145
  store i64 %150, i64* %148, align 8
  %151 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %152 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 5
  %154 = load %struct.mbuf*, %struct.mbuf** %153, align 8
  %155 = icmp eq %struct.mbuf* %154, null
  br i1 %155, label %156, label %165

156:                                              ; preds = %142
  %157 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %158 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %159 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 5
  store %struct.mbuf* %157, %struct.mbuf** %160, align 8
  %161 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %162 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %163 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 6
  store %struct.mbuf* %161, %struct.mbuf** %164, align 8
  br label %182

165:                                              ; preds = %142
  %166 = load i32, i32* @M_PKTHDR, align 4
  %167 = xor i32 %166, -1
  %168 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %169 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = and i32 %170, %167
  store i32 %171, i32* %169, align 8
  %172 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %173 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %174 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 6
  %176 = load %struct.mbuf*, %struct.mbuf** %175, align 8
  %177 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %176, i32 0, i32 3
  store %struct.mbuf* %172, %struct.mbuf** %177, align 8
  %178 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %179 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %180 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 6
  store %struct.mbuf* %178, %struct.mbuf** %181, align 8
  br label %182

182:                                              ; preds = %165, %156
  %183 = load i32, i32* %8, align 4
  %184 = load i32, i32* @RFD_FrameEnd, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %335

187:                                              ; preds = %182
  %188 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %189 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 5
  %191 = load %struct.mbuf*, %struct.mbuf** %190, align 8
  store %struct.mbuf* %191, %struct.mbuf** %6, align 8
  %192 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %193 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %194 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 4
  store %struct.ifnet* %192, %struct.ifnet** %195, align 8
  %196 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %197 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 2
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %201 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %200, i32 0, i32 2
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 0
  store i64 %199, i64* %202, align 8
  %203 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %204 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %203, i32 0, i32 2
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %208 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = icmp sgt i64 %206, %209
  br i1 %210, label %211, label %216

211:                                              ; preds = %187
  %212 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %213 = call i32 @m_freem(%struct.mbuf* %212)
  %214 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %215 = call i32 @STGE_RXCHAIN_RESET(%struct.stge_softc* %214)
  br label %336

216:                                              ; preds = %187
  %217 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %218 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* @IFCAP_RXCSUM, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %280

223:                                              ; preds = %216
  %224 = load i32, i32* %8, align 4
  %225 = load i32, i32* @RFD_IPDetected, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %247

228:                                              ; preds = %223
  %229 = load i32, i32* @CSUM_IP_CHECKED, align 4
  %230 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %231 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %230, i32 0, i32 2
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 8
  %234 = or i32 %233, %229
  store i32 %234, i32* %232, align 8
  %235 = load i32, i32* %8, align 4
  %236 = load i32, i32* @RFD_IPError, align 4
  %237 = and i32 %235, %236
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %246

239:                                              ; preds = %228
  %240 = load i32, i32* @CSUM_IP_VALID, align 4
  %241 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %242 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %241, i32 0, i32 2
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 8
  %245 = or i32 %244, %240
  store i32 %245, i32* %243, align 8
  br label %246

246:                                              ; preds = %239, %228
  br label %247

247:                                              ; preds = %246, %223
  %248 = load i32, i32* %8, align 4
  %249 = load i32, i32* @RFD_TCPDetected, align 4
  %250 = and i32 %248, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %257

252:                                              ; preds = %247
  %253 = load i32, i32* %8, align 4
  %254 = load i32, i32* @RFD_TCPError, align 4
  %255 = and i32 %253, %254
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %267, label %257

257:                                              ; preds = %252, %247
  %258 = load i32, i32* %8, align 4
  %259 = load i32, i32* @RFD_UDPDetected, align 4
  %260 = and i32 %258, %259
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %279

262:                                              ; preds = %257
  %263 = load i32, i32* %8, align 4
  %264 = load i32, i32* @RFD_UDPError, align 4
  %265 = and i32 %263, %264
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %279

267:                                              ; preds = %262, %252
  %268 = load i32, i32* @CSUM_DATA_VALID, align 4
  %269 = load i32, i32* @CSUM_PSEUDO_HDR, align 4
  %270 = or i32 %268, %269
  %271 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %272 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %271, i32 0, i32 2
  %273 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 8
  %275 = or i32 %274, %270
  store i32 %275, i32* %273, align 8
  %276 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %277 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %276, i32 0, i32 2
  %278 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %277, i32 0, i32 2
  store i32 65535, i32* %278, align 4
  br label %279

279:                                              ; preds = %267, %262, %257
  br label %280

280:                                              ; preds = %279, %216
  %281 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %282 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %281, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = load i64, i64* @MCLBYTES, align 8
  %285 = load i64, i64* @ETHER_ALIGN, align 8
  %286 = sub nsw i64 %284, %285
  %287 = icmp sgt i64 %283, %286
  br i1 %287, label %288, label %297

288:                                              ; preds = %280
  %289 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %290 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %291 = call %struct.mbuf* @stge_fixup_rx(%struct.stge_softc* %289, %struct.mbuf* %290)
  store %struct.mbuf* %291, %struct.mbuf** %6, align 8
  %292 = icmp eq %struct.mbuf* %291, null
  br i1 %292, label %293, label %296

293:                                              ; preds = %288
  %294 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %295 = call i32 @STGE_RXCHAIN_RESET(%struct.stge_softc* %294)
  br label %336

296:                                              ; preds = %288
  br label %297

297:                                              ; preds = %296, %280
  %298 = load i32, i32* %8, align 4
  %299 = load i32, i32* @RFD_VLANDetected, align 4
  %300 = and i32 %298, %299
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %320

302:                                              ; preds = %297
  %303 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %304 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %307 = and i32 %305, %306
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %320

309:                                              ; preds = %302
  %310 = load i32, i32* %7, align 4
  %311 = call i32 @RFD_TCI(i32 %310)
  %312 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %313 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %312, i32 0, i32 2
  %314 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %313, i32 0, i32 3
  store i32 %311, i32* %314, align 8
  %315 = load i32, i32* @M_VLANTAG, align 4
  %316 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %317 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 8
  %319 = or i32 %318, %315
  store i32 %319, i32* %317, align 8
  br label %320

320:                                              ; preds = %309, %302, %297
  %321 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %322 = call i32 @STGE_UNLOCK(%struct.stge_softc* %321)
  %323 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %324 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %323, i32 0, i32 1
  %325 = load i32 (%struct.ifnet*, %struct.mbuf*)*, i32 (%struct.ifnet*, %struct.mbuf*)** %324, align 8
  %326 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %327 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %328 = call i32 %325(%struct.ifnet* %326, %struct.mbuf* %327)
  %329 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %330 = call i32 @STGE_LOCK(%struct.stge_softc* %329)
  %331 = load i32, i32* %11, align 4
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %11, align 4
  %333 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %334 = call i32 @STGE_RXCHAIN_RESET(%struct.stge_softc* %333)
  br label %335

335:                                              ; preds = %320, %182
  br label %336

336:                                              ; preds = %335, %293, %211, %126, %100
  %337 = load i32, i32* %10, align 4
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* %10, align 4
  %339 = load i32, i32* %9, align 4
  %340 = add nsw i32 %339, 1
  %341 = load i32, i32* @STGE_RX_RING_CNT, align 4
  %342 = srem i32 %340, %341
  store i32 %342, i32* %9, align 4
  br label %31

343:                                              ; preds = %52, %31
  %344 = load i32, i32* %10, align 4
  %345 = icmp sgt i32 %344, 0
  br i1 %345, label %346, label %363

346:                                              ; preds = %343
  %347 = load i32, i32* %9, align 4
  %348 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %349 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %348, i32 0, i32 1
  %350 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %349, i32 0, i32 0
  store i32 %347, i32* %350, align 8
  %351 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %352 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %351, i32 0, i32 1
  %353 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %352, i32 0, i32 4
  %354 = load i32, i32* %353, align 4
  %355 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %356 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %355, i32 0, i32 1
  %357 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %356, i32 0, i32 3
  %358 = load i32, i32* %357, align 8
  %359 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %360 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %361 = or i32 %359, %360
  %362 = call i32 @bus_dmamap_sync(i32 %354, i32 %358, i32 %361)
  br label %363

363:                                              ; preds = %346, %343
  %364 = load i32, i32* %11, align 4
  ret i32 %364
}

declare dso_local i32 @STGE_LOCK_ASSERT(%struct.stge_softc*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @le64toh(i32) #1

declare dso_local i32 @RFD_RxStatus(i32) #1

declare dso_local i32 @stge_discard_rxbuf(%struct.stge_softc*, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @STGE_RXCHAIN_RESET(%struct.stge_softc*) #1

declare dso_local i64 @stge_newbuf(%struct.stge_softc*, i32) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i64 @RFD_RxDMAFrameLen(i32) #1

declare dso_local %struct.mbuf* @stge_fixup_rx(%struct.stge_softc*, %struct.mbuf*) #1

declare dso_local i32 @RFD_TCI(i32) #1

declare dso_local i32 @STGE_UNLOCK(%struct.stge_softc*) #1

declare dso_local i32 @STGE_LOCK(%struct.stge_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
