; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_rxeof.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_rxeof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alc_softc = type { i32, %struct.TYPE_3__, %struct.ifnet* }
%struct.TYPE_3__ = type { i64, %struct.mbuf*, %struct.mbuf*, %struct.mbuf*, %struct.alc_rxdesc* }
%struct.mbuf = type { i32, i32, %struct.TYPE_4__, %struct.mbuf* }
%struct.TYPE_4__ = type { i64, i32, %struct.ifnet* }
%struct.alc_rxdesc = type { %struct.mbuf* }
%struct.ifnet = type { i32, i32 (%struct.ifnet*, %struct.mbuf*)* }
%struct.rx_rdesc = type { i32, i32, i32 }

@RRD_ERR_SUM = common dso_local global i32 0, align 4
@RRD_ERR_LENGTH = common dso_local global i32 0, align 4
@RRD_TCP_UDPCSUM_NOK = common dso_local global i32 0, align 4
@RRD_IPCSUM_NOK = common dso_local global i32 0, align 4
@RRD_ERR_CRC = common dso_local global i32 0, align 4
@RRD_ERR_ALIGN = common dso_local global i32 0, align 4
@RRD_ERR_TRUNC = common dso_local global i32 0, align 4
@RRD_ERR_RUNT = common dso_local global i32 0, align 4
@IFCOUNTER_IQDROPS = common dso_local global i32 0, align 4
@M_PKTHDR = common dso_local global i32 0, align 4
@ETHER_CRC_LEN = common dso_local global i64 0, align 8
@IFCAP_VLAN_HWTAGGING = common dso_local global i32 0, align 4
@RRD_VLAN_TAG = common dso_local global i32 0, align 4
@M_VLANTAG = common dso_local global i32 0, align 4
@ALC_RX_RING_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alc_softc*, %struct.rx_rdesc*)* @alc_rxeof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc_rxeof(%struct.alc_softc* %0, %struct.rx_rdesc* %1) #0 {
  %3 = alloca %struct.alc_softc*, align 8
  %4 = alloca %struct.rx_rdesc*, align 8
  %5 = alloca %struct.alc_rxdesc*, align 8
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.alc_softc* %0, %struct.alc_softc** %3, align 8
  store %struct.rx_rdesc* %1, %struct.rx_rdesc** %4, align 8
  %15 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %16 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %15, i32 0, i32 2
  %17 = load %struct.ifnet*, %struct.ifnet** %16, align 8
  store %struct.ifnet* %17, %struct.ifnet** %6, align 8
  %18 = load %struct.rx_rdesc*, %struct.rx_rdesc** %4, align 8
  %19 = getelementptr inbounds %struct.rx_rdesc, %struct.rx_rdesc* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @le32toh(i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load %struct.rx_rdesc*, %struct.rx_rdesc** %4, align 8
  %23 = getelementptr inbounds %struct.rx_rdesc, %struct.rx_rdesc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @le32toh(i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @RRD_RD_IDX(i32 %26)
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @RRD_RD_CNT(i32 %28)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call i64 @RRD_BYTES(i32 %30)
  %32 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %33 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i64 %31, i64* %34, align 8
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @RRD_ERR_SUM, align 4
  %37 = load i32, i32* @RRD_ERR_LENGTH, align 4
  %38 = or i32 %36, %37
  %39 = and i32 %35, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %2
  %42 = load i32, i32* @RRD_TCP_UDPCSUM_NOK, align 4
  %43 = load i32, i32* @RRD_IPCSUM_NOK, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* %10, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @RRD_ERR_CRC, align 4
  %49 = load i32, i32* @RRD_ERR_ALIGN, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @RRD_ERR_TRUNC, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @RRD_ERR_RUNT, align 4
  %54 = or i32 %52, %53
  %55 = and i32 %47, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %41
  br label %294

58:                                               ; preds = %41
  br label %59

59:                                               ; preds = %58, %2
  store i32 0, i32* %12, align 4
  br label %60

60:                                               ; preds = %285, %59
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %291

64:                                               ; preds = %60
  %65 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %66 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 4
  %68 = load %struct.alc_rxdesc*, %struct.alc_rxdesc** %67, align 8
  %69 = load i32, i32* %14, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.alc_rxdesc, %struct.alc_rxdesc* %68, i64 %70
  store %struct.alc_rxdesc* %71, %struct.alc_rxdesc** %5, align 8
  %72 = load %struct.alc_rxdesc*, %struct.alc_rxdesc** %5, align 8
  %73 = getelementptr inbounds %struct.alc_rxdesc, %struct.alc_rxdesc* %72, i32 0, i32 0
  %74 = load %struct.mbuf*, %struct.mbuf** %73, align 8
  store %struct.mbuf* %74, %struct.mbuf** %7, align 8
  %75 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %76 = load %struct.alc_rxdesc*, %struct.alc_rxdesc** %5, align 8
  %77 = call i64 @alc_newbuf(%struct.alc_softc* %75, %struct.alc_rxdesc* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %95

79:                                               ; preds = %64
  %80 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %81 = load i32, i32* @IFCOUNTER_IQDROPS, align 4
  %82 = call i32 @if_inc_counter(%struct.ifnet* %80, i32 %81, i32 1)
  %83 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %84 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 3
  %86 = load %struct.mbuf*, %struct.mbuf** %85, align 8
  %87 = icmp ne %struct.mbuf* %86, null
  br i1 %87, label %88, label %94

88:                                               ; preds = %79
  %89 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %90 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 3
  %92 = load %struct.mbuf*, %struct.mbuf** %91, align 8
  %93 = call i32 @m_freem(%struct.mbuf* %92)
  br label %94

94:                                               ; preds = %88, %79
  br label %291

95:                                               ; preds = %64
  %96 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %97 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %100 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %102 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 3
  %104 = load %struct.mbuf*, %struct.mbuf** %103, align 8
  %105 = icmp eq %struct.mbuf* %104, null
  br i1 %105, label %106, label %115

106:                                              ; preds = %95
  %107 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %108 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %109 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 3
  store %struct.mbuf* %107, %struct.mbuf** %110, align 8
  %111 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %112 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %113 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  store %struct.mbuf* %111, %struct.mbuf** %114, align 8
  br label %139

115:                                              ; preds = %95
  %116 = load i32, i32* @M_PKTHDR, align 4
  %117 = xor i32 %116, -1
  %118 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %119 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = and i32 %120, %117
  store i32 %121, i32* %119, align 4
  %122 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %123 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 1
  %125 = load %struct.mbuf*, %struct.mbuf** %124, align 8
  %126 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %127 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 2
  store %struct.mbuf* %125, %struct.mbuf** %128, align 8
  %129 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %130 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %131 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 1
  %133 = load %struct.mbuf*, %struct.mbuf** %132, align 8
  %134 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %133, i32 0, i32 3
  store %struct.mbuf* %129, %struct.mbuf** %134, align 8
  %135 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %136 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %137 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 1
  store %struct.mbuf* %135, %struct.mbuf** %138, align 8
  br label %139

139:                                              ; preds = %115, %106
  %140 = load i32, i32* %12, align 4
  %141 = load i32, i32* %13, align 4
  %142 = sub nsw i32 %141, 1
  %143 = icmp eq i32 %140, %142
  br i1 %143, label %144, label %284

144:                                              ; preds = %139
  %145 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %146 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 3
  %148 = load %struct.mbuf*, %struct.mbuf** %147, align 8
  store %struct.mbuf* %148, %struct.mbuf** %8, align 8
  %149 = load i32, i32* @M_PKTHDR, align 4
  %150 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %151 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = or i32 %152, %149
  store i32 %153, i32* %151, align 4
  %154 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %155 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @ETHER_CRC_LEN, align 8
  %159 = sub nsw i64 %157, %158
  %160 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %161 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  store i64 %159, i64* %162, align 8
  %163 = load i32, i32* %13, align 4
  %164 = icmp sgt i32 %163, 1
  br i1 %164, label %165, label %226

165:                                              ; preds = %144
  %166 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %167 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i32, i32* %13, align 4
  %171 = sub nsw i32 %170, 1
  %172 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %173 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = mul nsw i32 %171, %174
  %176 = sext i32 %175 to i64
  %177 = sub nsw i64 %169, %176
  %178 = trunc i64 %177 to i32
  %179 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %180 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %179, i32 0, i32 0
  store i32 %178, i32* %180, align 8
  %181 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %182 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = sext i32 %183 to i64
  %185 = load i64, i64* @ETHER_CRC_LEN, align 8
  %186 = icmp sle i64 %184, %185
  br i1 %186, label %187, label %217

187:                                              ; preds = %165
  %188 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %189 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 2
  %191 = load %struct.mbuf*, %struct.mbuf** %190, align 8
  %192 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %193 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 1
  store %struct.mbuf* %191, %struct.mbuf** %194, align 8
  %195 = load i64, i64* @ETHER_CRC_LEN, align 8
  %196 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %197 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = sext i32 %198 to i64
  %200 = sub nsw i64 %195, %199
  %201 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %202 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 1
  %204 = load %struct.mbuf*, %struct.mbuf** %203, align 8
  %205 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = sext i32 %206 to i64
  %208 = sub nsw i64 %207, %200
  %209 = trunc i64 %208 to i32
  store i32 %209, i32* %205, align 8
  %210 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %211 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %211, i32 0, i32 1
  %213 = load %struct.mbuf*, %struct.mbuf** %212, align 8
  %214 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %213, i32 0, i32 3
  store %struct.mbuf* null, %struct.mbuf** %214, align 8
  %215 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %216 = call i32 @m_freem(%struct.mbuf* %215)
  br label %225

217:                                              ; preds = %165
  %218 = load i64, i64* @ETHER_CRC_LEN, align 8
  %219 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %220 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = sext i32 %221 to i64
  %223 = sub nsw i64 %222, %218
  %224 = trunc i64 %223 to i32
  store i32 %224, i32* %220, align 8
  br label %225

225:                                              ; preds = %217, %187
  br label %234

226:                                              ; preds = %144
  %227 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %228 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %227, i32 0, i32 2
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = trunc i64 %230 to i32
  %232 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %233 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %232, i32 0, i32 0
  store i32 %231, i32* %233, align 8
  br label %234

234:                                              ; preds = %226, %225
  %235 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %236 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %237 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %236, i32 0, i32 2
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 2
  store %struct.ifnet* %235, %struct.ifnet** %238, align 8
  %239 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %240 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %266

245:                                              ; preds = %234
  %246 = load i32, i32* %10, align 4
  %247 = load i32, i32* @RRD_VLAN_TAG, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %266

250:                                              ; preds = %245
  %251 = load %struct.rx_rdesc*, %struct.rx_rdesc** %4, align 8
  %252 = getelementptr inbounds %struct.rx_rdesc, %struct.rx_rdesc* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @le32toh(i32 %253)
  %255 = call i32 @RRD_VLAN(i32 %254)
  store i32 %255, i32* %11, align 4
  %256 = load i32, i32* %11, align 4
  %257 = call i32 @ntohs(i32 %256)
  %258 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %259 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %258, i32 0, i32 2
  %260 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %259, i32 0, i32 1
  store i32 %257, i32* %260, align 8
  %261 = load i32, i32* @M_VLANTAG, align 4
  %262 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %263 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = or i32 %264, %261
  store i32 %265, i32* %263, align 4
  br label %266

266:                                              ; preds = %250, %245, %234
  %267 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %268 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %269 = call %struct.mbuf* @alc_fixup_rx(%struct.ifnet* %267, %struct.mbuf* %268)
  store %struct.mbuf* %269, %struct.mbuf** %8, align 8
  %270 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %271 = icmp ne %struct.mbuf* %270, null
  br i1 %271, label %272, label %283

272:                                              ; preds = %266
  %273 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %274 = call i32 @ALC_UNLOCK(%struct.alc_softc* %273)
  %275 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %276 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %275, i32 0, i32 1
  %277 = load i32 (%struct.ifnet*, %struct.mbuf*)*, i32 (%struct.ifnet*, %struct.mbuf*)** %276, align 8
  %278 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %279 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %280 = call i32 %277(%struct.ifnet* %278, %struct.mbuf* %279)
  %281 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %282 = call i32 @ALC_LOCK(%struct.alc_softc* %281)
  br label %283

283:                                              ; preds = %272, %266
  br label %284

284:                                              ; preds = %283, %139
  br label %285

285:                                              ; preds = %284
  %286 = load i32, i32* %12, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %12, align 4
  %288 = load i32, i32* %14, align 4
  %289 = load i32, i32* @ALC_RX_RING_CNT, align 4
  %290 = call i32 @ALC_DESC_INC(i32 %288, i32 %289)
  br label %60

291:                                              ; preds = %94, %60
  %292 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %293 = call i32 @ALC_RXCHAIN_RESET(%struct.alc_softc* %292)
  br label %294

294:                                              ; preds = %291, %57
  ret void
}

declare dso_local i32 @le32toh(i32) #1

declare dso_local i32 @RRD_RD_IDX(i32) #1

declare dso_local i32 @RRD_RD_CNT(i32) #1

declare dso_local i64 @RRD_BYTES(i32) #1

declare dso_local i64 @alc_newbuf(%struct.alc_softc*, %struct.alc_rxdesc*) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @RRD_VLAN(i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local %struct.mbuf* @alc_fixup_rx(%struct.ifnet*, %struct.mbuf*) #1

declare dso_local i32 @ALC_UNLOCK(%struct.alc_softc*) #1

declare dso_local i32 @ALC_LOCK(%struct.alc_softc*) #1

declare dso_local i32 @ALC_DESC_INC(i32, i32) #1

declare dso_local i32 @ALC_RXCHAIN_RESET(%struct.alc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
