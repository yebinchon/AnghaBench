; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/age/extr_if_age.c_age_rxeof.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/age/extr_if_age.c_age_rxeof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.age_softc = type { %struct.TYPE_3__, %struct.ifnet* }
%struct.TYPE_3__ = type { i64, %struct.mbuf*, %struct.mbuf*, %struct.mbuf*, %struct.age_rxdesc* }
%struct.mbuf = type { i32, i32, %struct.TYPE_4__, %struct.mbuf* }
%struct.TYPE_4__ = type { i64, i32, i32, i32, %struct.ifnet* }
%struct.age_rxdesc = type { %struct.mbuf* }
%struct.ifnet = type { i32, i32 (%struct.ifnet*, %struct.mbuf*)* }
%struct.rx_rdesc = type { i32, i32, i32, i32 }

@AGE_RRD_ERROR = common dso_local global i32 0, align 4
@AGE_RRD_LENGTH_NOK = common dso_local global i32 0, align 4
@AGE_RRD_IPCSUM_NOK = common dso_local global i32 0, align 4
@AGE_RRD_TCP_UDPCSUM_NOK = common dso_local global i32 0, align 4
@AGE_RRD_CRC = common dso_local global i32 0, align 4
@AGE_RRD_CODE = common dso_local global i32 0, align 4
@AGE_RRD_DRIBBLE = common dso_local global i32 0, align 4
@AGE_RRD_RUNT = common dso_local global i32 0, align 4
@AGE_RRD_OFLOW = common dso_local global i32 0, align 4
@AGE_RRD_TRUNC = common dso_local global i32 0, align 4
@IFCOUNTER_IQDROPS = common dso_local global i32 0, align 4
@AGE_RX_BUF_SIZE = common dso_local global i32 0, align 4
@M_PKTHDR = common dso_local global i32 0, align 4
@ETHER_CRC_LEN = common dso_local global i64 0, align 8
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@AGE_RRD_IPV4 = common dso_local global i32 0, align 4
@CSUM_IP_CHECKED = common dso_local global i32 0, align 4
@CSUM_IP_VALID = common dso_local global i32 0, align 4
@AGE_RRD_TCP = common dso_local global i32 0, align 4
@AGE_RRD_UDP = common dso_local global i32 0, align 4
@CSUM_DATA_VALID = common dso_local global i32 0, align 4
@CSUM_PSEUDO_HDR = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTAGGING = common dso_local global i32 0, align 4
@AGE_RRD_VLAN = common dso_local global i32 0, align 4
@M_VLANTAG = common dso_local global i32 0, align 4
@AGE_RX_RING_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.age_softc*, %struct.rx_rdesc*)* @age_rxeof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @age_rxeof(%struct.age_softc* %0, %struct.rx_rdesc* %1) #0 {
  %3 = alloca %struct.age_softc*, align 8
  %4 = alloca %struct.rx_rdesc*, align 8
  %5 = alloca %struct.age_rxdesc*, align 8
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.age_softc* %0, %struct.age_softc** %3, align 8
  store %struct.rx_rdesc* %1, %struct.rx_rdesc** %4, align 8
  %15 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %16 = call i32 @AGE_LOCK_ASSERT(%struct.age_softc* %15)
  %17 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %18 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %17, i32 0, i32 1
  %19 = load %struct.ifnet*, %struct.ifnet** %18, align 8
  store %struct.ifnet* %19, %struct.ifnet** %6, align 8
  %20 = load %struct.rx_rdesc*, %struct.rx_rdesc** %4, align 8
  %21 = getelementptr inbounds %struct.rx_rdesc, %struct.rx_rdesc* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @le32toh(i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.rx_rdesc*, %struct.rx_rdesc** %4, align 8
  %25 = getelementptr inbounds %struct.rx_rdesc, %struct.rx_rdesc* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @le32toh(i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @AGE_RX_CONS(i32 %28)
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @AGE_RX_NSEGS(i32 %30)
  store i32 %31, i32* %13, align 4
  %32 = load %struct.rx_rdesc*, %struct.rx_rdesc** %4, align 8
  %33 = getelementptr inbounds %struct.rx_rdesc, %struct.rx_rdesc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @le32toh(i32 %34)
  %36 = call i64 @AGE_RX_BYTES(i32 %35)
  %37 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %38 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i64 %36, i64* %39, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @AGE_RRD_ERROR, align 4
  %42 = load i32, i32* @AGE_RRD_LENGTH_NOK, align 4
  %43 = or i32 %41, %42
  %44 = and i32 %40, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %68

46:                                               ; preds = %2
  %47 = load i32, i32* @AGE_RRD_IPCSUM_NOK, align 4
  %48 = load i32, i32* @AGE_RRD_TCP_UDPCSUM_NOK, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* %9, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @AGE_RRD_CRC, align 4
  %54 = load i32, i32* @AGE_RRD_CODE, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @AGE_RRD_DRIBBLE, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @AGE_RRD_RUNT, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @AGE_RRD_OFLOW, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @AGE_RRD_TRUNC, align 4
  %63 = or i32 %61, %62
  %64 = and i32 %52, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %46
  br label %350

67:                                               ; preds = %46
  br label %68

68:                                               ; preds = %67, %2
  store i32 0, i32* %12, align 4
  br label %69

69:                                               ; preds = %341, %68
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* %13, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %347

73:                                               ; preds = %69
  %74 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %75 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 4
  %77 = load %struct.age_rxdesc*, %struct.age_rxdesc** %76, align 8
  %78 = load i32, i32* %14, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.age_rxdesc, %struct.age_rxdesc* %77, i64 %79
  store %struct.age_rxdesc* %80, %struct.age_rxdesc** %5, align 8
  %81 = load %struct.age_rxdesc*, %struct.age_rxdesc** %5, align 8
  %82 = getelementptr inbounds %struct.age_rxdesc, %struct.age_rxdesc* %81, i32 0, i32 0
  %83 = load %struct.mbuf*, %struct.mbuf** %82, align 8
  store %struct.mbuf* %83, %struct.mbuf** %7, align 8
  %84 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %85 = load %struct.age_rxdesc*, %struct.age_rxdesc** %5, align 8
  %86 = call i64 @age_newbuf(%struct.age_softc* %84, %struct.age_rxdesc* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %104

88:                                               ; preds = %73
  %89 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %90 = load i32, i32* @IFCOUNTER_IQDROPS, align 4
  %91 = call i32 @if_inc_counter(%struct.ifnet* %89, i32 %90, i32 1)
  %92 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %93 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 3
  %95 = load %struct.mbuf*, %struct.mbuf** %94, align 8
  %96 = icmp ne %struct.mbuf* %95, null
  br i1 %96, label %97, label %103

97:                                               ; preds = %88
  %98 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %99 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 3
  %101 = load %struct.mbuf*, %struct.mbuf** %100, align 8
  %102 = call i32 @m_freem(%struct.mbuf* %101)
  br label %103

103:                                              ; preds = %97, %88
  br label %347

104:                                              ; preds = %73
  %105 = load i32, i32* @AGE_RX_BUF_SIZE, align 4
  %106 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %107 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  %108 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %109 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 3
  %111 = load %struct.mbuf*, %struct.mbuf** %110, align 8
  %112 = icmp eq %struct.mbuf* %111, null
  br i1 %112, label %113, label %122

113:                                              ; preds = %104
  %114 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %115 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %116 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 3
  store %struct.mbuf* %114, %struct.mbuf** %117, align 8
  %118 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %119 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %120 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 1
  store %struct.mbuf* %118, %struct.mbuf** %121, align 8
  br label %146

122:                                              ; preds = %104
  %123 = load i32, i32* @M_PKTHDR, align 4
  %124 = xor i32 %123, -1
  %125 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %126 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = and i32 %127, %124
  store i32 %128, i32* %126, align 4
  %129 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %130 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 1
  %132 = load %struct.mbuf*, %struct.mbuf** %131, align 8
  %133 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %134 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 2
  store %struct.mbuf* %132, %struct.mbuf** %135, align 8
  %136 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %137 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %138 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 1
  %140 = load %struct.mbuf*, %struct.mbuf** %139, align 8
  %141 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %140, i32 0, i32 3
  store %struct.mbuf* %136, %struct.mbuf** %141, align 8
  %142 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %143 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %144 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 1
  store %struct.mbuf* %142, %struct.mbuf** %145, align 8
  br label %146

146:                                              ; preds = %122, %113
  %147 = load i32, i32* %12, align 4
  %148 = load i32, i32* %13, align 4
  %149 = sub nsw i32 %148, 1
  %150 = icmp eq i32 %147, %149
  br i1 %150, label %151, label %340

151:                                              ; preds = %146
  %152 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %153 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 3
  %155 = load %struct.mbuf*, %struct.mbuf** %154, align 8
  store %struct.mbuf* %155, %struct.mbuf** %8, align 8
  %156 = load i32, i32* @M_PKTHDR, align 4
  %157 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %158 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = or i32 %159, %156
  store i32 %160, i32* %158, align 4
  %161 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %162 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @ETHER_CRC_LEN, align 8
  %166 = sub nsw i64 %164, %165
  %167 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %168 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  store i64 %166, i64* %169, align 8
  %170 = load i32, i32* %13, align 4
  %171 = icmp sgt i32 %170, 1
  br i1 %171, label %172, label %231

172:                                              ; preds = %151
  %173 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %174 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load i32, i32* %13, align 4
  %178 = sub nsw i32 %177, 1
  %179 = load i32, i32* @AGE_RX_BUF_SIZE, align 4
  %180 = mul nsw i32 %178, %179
  %181 = sext i32 %180 to i64
  %182 = sub nsw i64 %176, %181
  %183 = trunc i64 %182 to i32
  %184 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %185 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %184, i32 0, i32 0
  store i32 %183, i32* %185, align 8
  %186 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %187 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = sext i32 %188 to i64
  %190 = load i64, i64* @ETHER_CRC_LEN, align 8
  %191 = icmp sle i64 %189, %190
  br i1 %191, label %192, label %222

192:                                              ; preds = %172
  %193 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %194 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 2
  %196 = load %struct.mbuf*, %struct.mbuf** %195, align 8
  %197 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %198 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 1
  store %struct.mbuf* %196, %struct.mbuf** %199, align 8
  %200 = load i64, i64* @ETHER_CRC_LEN, align 8
  %201 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %202 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = sext i32 %203 to i64
  %205 = sub nsw i64 %200, %204
  %206 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %207 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 1
  %209 = load %struct.mbuf*, %struct.mbuf** %208, align 8
  %210 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = sext i32 %211 to i64
  %213 = sub nsw i64 %212, %205
  %214 = trunc i64 %213 to i32
  store i32 %214, i32* %210, align 8
  %215 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %216 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 1
  %218 = load %struct.mbuf*, %struct.mbuf** %217, align 8
  %219 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %218, i32 0, i32 3
  store %struct.mbuf* null, %struct.mbuf** %219, align 8
  %220 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %221 = call i32 @m_freem(%struct.mbuf* %220)
  br label %230

222:                                              ; preds = %172
  %223 = load i64, i64* @ETHER_CRC_LEN, align 8
  %224 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %225 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = sext i32 %226 to i64
  %228 = sub nsw i64 %227, %223
  %229 = trunc i64 %228 to i32
  store i32 %229, i32* %225, align 8
  br label %230

230:                                              ; preds = %222, %192
  br label %239

231:                                              ; preds = %151
  %232 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %233 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %232, i32 0, i32 2
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = trunc i64 %235 to i32
  %237 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %238 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %237, i32 0, i32 0
  store i32 %236, i32* %238, align 8
  br label %239

239:                                              ; preds = %231, %230
  %240 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %241 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %242 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %241, i32 0, i32 2
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %242, i32 0, i32 4
  store %struct.ifnet* %240, %struct.ifnet** %243, align 8
  %244 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %245 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = load i32, i32* @IFCAP_RXCSUM, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %294

250:                                              ; preds = %239
  %251 = load i32, i32* %9, align 4
  %252 = load i32, i32* @AGE_RRD_IPV4, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %294

255:                                              ; preds = %250
  %256 = load i32, i32* %9, align 4
  %257 = load i32, i32* @AGE_RRD_IPCSUM_NOK, align 4
  %258 = and i32 %256, %257
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %269

260:                                              ; preds = %255
  %261 = load i32, i32* @CSUM_IP_CHECKED, align 4
  %262 = load i32, i32* @CSUM_IP_VALID, align 4
  %263 = or i32 %261, %262
  %264 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %265 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %264, i32 0, i32 2
  %266 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 8
  %268 = or i32 %267, %263
  store i32 %268, i32* %266, align 8
  br label %269

269:                                              ; preds = %260, %255
  %270 = load i32, i32* %9, align 4
  %271 = load i32, i32* @AGE_RRD_TCP, align 4
  %272 = load i32, i32* @AGE_RRD_UDP, align 4
  %273 = or i32 %271, %272
  %274 = and i32 %270, %273
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %293

276:                                              ; preds = %269
  %277 = load i32, i32* %9, align 4
  %278 = load i32, i32* @AGE_RRD_TCP_UDPCSUM_NOK, align 4
  %279 = and i32 %277, %278
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %281, label %293

281:                                              ; preds = %276
  %282 = load i32, i32* @CSUM_DATA_VALID, align 4
  %283 = load i32, i32* @CSUM_PSEUDO_HDR, align 4
  %284 = or i32 %282, %283
  %285 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %286 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %285, i32 0, i32 2
  %287 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 8
  %289 = or i32 %288, %284
  store i32 %289, i32* %287, align 8
  %290 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %291 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %290, i32 0, i32 2
  %292 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %291, i32 0, i32 2
  store i32 65535, i32* %292, align 4
  br label %293

293:                                              ; preds = %281, %276, %269
  br label %294

294:                                              ; preds = %293, %250, %239
  %295 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %296 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %299 = and i32 %297, %298
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %322

301:                                              ; preds = %294
  %302 = load i32, i32* %9, align 4
  %303 = load i32, i32* @AGE_RRD_VLAN, align 4
  %304 = and i32 %302, %303
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %322

306:                                              ; preds = %301
  %307 = load %struct.rx_rdesc*, %struct.rx_rdesc** %4, align 8
  %308 = getelementptr inbounds %struct.rx_rdesc, %struct.rx_rdesc* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 4
  %310 = call i32 @le32toh(i32 %309)
  %311 = call i32 @AGE_RX_VLAN(i32 %310)
  store i32 %311, i32* %11, align 4
  %312 = load i32, i32* %11, align 4
  %313 = call i32 @AGE_RX_VLAN_TAG(i32 %312)
  %314 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %315 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %314, i32 0, i32 2
  %316 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %315, i32 0, i32 3
  store i32 %313, i32* %316, align 8
  %317 = load i32, i32* @M_VLANTAG, align 4
  %318 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %319 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 4
  %321 = or i32 %320, %317
  store i32 %321, i32* %319, align 4
  br label %322

322:                                              ; preds = %306, %301, %294
  %323 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %324 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %325 = call %struct.mbuf* @age_fixup_rx(%struct.ifnet* %323, %struct.mbuf* %324)
  store %struct.mbuf* %325, %struct.mbuf** %8, align 8
  %326 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %327 = icmp ne %struct.mbuf* %326, null
  br i1 %327, label %328, label %339

328:                                              ; preds = %322
  %329 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %330 = call i32 @AGE_UNLOCK(%struct.age_softc* %329)
  %331 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %332 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %331, i32 0, i32 1
  %333 = load i32 (%struct.ifnet*, %struct.mbuf*)*, i32 (%struct.ifnet*, %struct.mbuf*)** %332, align 8
  %334 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %335 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %336 = call i32 %333(%struct.ifnet* %334, %struct.mbuf* %335)
  %337 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %338 = call i32 @AGE_LOCK(%struct.age_softc* %337)
  br label %339

339:                                              ; preds = %328, %322
  br label %340

340:                                              ; preds = %339, %146
  br label %341

341:                                              ; preds = %340
  %342 = load i32, i32* %12, align 4
  %343 = add nsw i32 %342, 1
  store i32 %343, i32* %12, align 4
  %344 = load i32, i32* %14, align 4
  %345 = load i32, i32* @AGE_RX_RING_CNT, align 4
  %346 = call i32 @AGE_DESC_INC(i32 %344, i32 %345)
  br label %69

347:                                              ; preds = %103, %69
  %348 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %349 = call i32 @AGE_RXCHAIN_RESET(%struct.age_softc* %348)
  br label %350

350:                                              ; preds = %347, %66
  ret void
}

declare dso_local i32 @AGE_LOCK_ASSERT(%struct.age_softc*) #1

declare dso_local i32 @le32toh(i32) #1

declare dso_local i32 @AGE_RX_CONS(i32) #1

declare dso_local i32 @AGE_RX_NSEGS(i32) #1

declare dso_local i64 @AGE_RX_BYTES(i32) #1

declare dso_local i64 @age_newbuf(%struct.age_softc*, %struct.age_rxdesc*) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @AGE_RX_VLAN(i32) #1

declare dso_local i32 @AGE_RX_VLAN_TAG(i32) #1

declare dso_local %struct.mbuf* @age_fixup_rx(%struct.ifnet*, %struct.mbuf*) #1

declare dso_local i32 @AGE_UNLOCK(%struct.age_softc*) #1

declare dso_local i32 @AGE_LOCK(%struct.age_softc*) #1

declare dso_local i32 @AGE_DESC_INC(i32, i32) #1

declare dso_local i32 @AGE_RXCHAIN_RESET(%struct.age_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
