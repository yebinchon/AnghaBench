; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ale/extr_if_ale.c_ale_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ale/extr_if_ale.c_ale_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i32, i32, i32, i32, %struct.ale_softc* }
%struct.ale_softc = type { i32, i32, i32 }
%struct.ifreq = type { i32, i32 }
%struct.mii_data = type { i32 }

@ETHERMIN = common dso_local global i32 0, align 4
@ALE_JUMBO_MTU = common dso_local global i32 0, align 4
@ALE_FLAG_JUMBO = common dso_local global i32 0, align 4
@ETHERMTU = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@IFCAP_TXCSUM = common dso_local global i32 0, align 4
@ALE_CSUM_FEATURES = common dso_local global i32 0, align 4
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@IFCAP_TSO4 = common dso_local global i32 0, align 4
@CSUM_TSO = common dso_local global i32 0, align 4
@IFCAP_WOL_MCAST = common dso_local global i32 0, align 4
@IFCAP_WOL_MAGIC = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWCSUM = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTSO = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTAGGING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i64)* @ale_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ale_ioctl(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.ale_softc*, align 8
  %8 = alloca %struct.ifreq*, align 8
  %9 = alloca %struct.mii_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %12 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %13 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %12, i32 0, i32 6
  %14 = load %struct.ale_softc*, %struct.ale_softc** %13, align 8
  store %struct.ale_softc* %14, %struct.ale_softc** %7, align 8
  %15 = load i64, i64* %6, align 8
  %16 = inttoptr i64 %15 to %struct.ifreq*
  store %struct.ifreq* %16, %struct.ifreq** %8, align 8
  store i32 0, i32* %10, align 4
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %377 [
    i32 128, label %18
    i32 130, label %81
    i32 134, label %137
    i32 133, label %137
    i32 129, label %152
    i32 132, label %152
    i32 131, label %163
  ]

18:                                               ; preds = %3
  %19 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %20 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ETHERMIN, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %43, label %24

24:                                               ; preds = %18
  %25 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %26 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @ALE_JUMBO_MTU, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %43, label %30

30:                                               ; preds = %24
  %31 = load %struct.ale_softc*, %struct.ale_softc** %7, align 8
  %32 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @ALE_FLAG_JUMBO, align 4
  %35 = and i32 %33, %34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %30
  %38 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %39 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @ETHERMTU, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37, %24, %18
  %44 = load i32, i32* @EINVAL, align 4
  store i32 %44, i32* %10, align 4
  br label %80

45:                                               ; preds = %37, %30
  %46 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %47 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %50 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %48, %51
  br i1 %52, label %53, label %79

53:                                               ; preds = %45
  %54 = load %struct.ale_softc*, %struct.ale_softc** %7, align 8
  %55 = call i32 @ALE_LOCK(%struct.ale_softc* %54)
  %56 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %57 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %60 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %59, i32 0, i32 5
  store i32 %58, i32* %60, align 4
  %61 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %62 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %53
  %68 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %69 = xor i32 %68, -1
  %70 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %71 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = and i32 %72, %69
  store i32 %73, i32* %71, align 8
  %74 = load %struct.ale_softc*, %struct.ale_softc** %7, align 8
  %75 = call i32 @ale_init_locked(%struct.ale_softc* %74)
  br label %76

76:                                               ; preds = %67, %53
  %77 = load %struct.ale_softc*, %struct.ale_softc** %7, align 8
  %78 = call i32 @ALE_UNLOCK(%struct.ale_softc* %77)
  br label %79

79:                                               ; preds = %76, %45
  br label %80

80:                                               ; preds = %79, %43
  br label %382

81:                                               ; preds = %3
  %82 = load %struct.ale_softc*, %struct.ale_softc** %7, align 8
  %83 = call i32 @ALE_LOCK(%struct.ale_softc* %82)
  %84 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %85 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @IFF_UP, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %118

90:                                               ; preds = %81
  %91 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %92 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %114

97:                                               ; preds = %90
  %98 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %99 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.ale_softc*, %struct.ale_softc** %7, align 8
  %102 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = xor i32 %100, %103
  %105 = load i32, i32* @IFF_PROMISC, align 4
  %106 = load i32, i32* @IFF_ALLMULTI, align 4
  %107 = or i32 %105, %106
  %108 = and i32 %104, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %97
  %111 = load %struct.ale_softc*, %struct.ale_softc** %7, align 8
  %112 = call i32 @ale_rxfilter(%struct.ale_softc* %111)
  br label %113

113:                                              ; preds = %110, %97
  br label %117

114:                                              ; preds = %90
  %115 = load %struct.ale_softc*, %struct.ale_softc** %7, align 8
  %116 = call i32 @ale_init_locked(%struct.ale_softc* %115)
  br label %117

117:                                              ; preds = %114, %113
  br label %129

118:                                              ; preds = %81
  %119 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %120 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %118
  %126 = load %struct.ale_softc*, %struct.ale_softc** %7, align 8
  %127 = call i32 @ale_stop(%struct.ale_softc* %126)
  br label %128

128:                                              ; preds = %125, %118
  br label %129

129:                                              ; preds = %128, %117
  %130 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %131 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.ale_softc*, %struct.ale_softc** %7, align 8
  %134 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 4
  %135 = load %struct.ale_softc*, %struct.ale_softc** %7, align 8
  %136 = call i32 @ALE_UNLOCK(%struct.ale_softc* %135)
  br label %382

137:                                              ; preds = %3, %3
  %138 = load %struct.ale_softc*, %struct.ale_softc** %7, align 8
  %139 = call i32 @ALE_LOCK(%struct.ale_softc* %138)
  %140 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %141 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %137
  %147 = load %struct.ale_softc*, %struct.ale_softc** %7, align 8
  %148 = call i32 @ale_rxfilter(%struct.ale_softc* %147)
  br label %149

149:                                              ; preds = %146, %137
  %150 = load %struct.ale_softc*, %struct.ale_softc** %7, align 8
  %151 = call i32 @ALE_UNLOCK(%struct.ale_softc* %150)
  br label %382

152:                                              ; preds = %3, %3
  %153 = load %struct.ale_softc*, %struct.ale_softc** %7, align 8
  %154 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = call %struct.mii_data* @device_get_softc(i32 %155)
  store %struct.mii_data* %156, %struct.mii_data** %9, align 8
  %157 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %158 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %159 = load %struct.mii_data*, %struct.mii_data** %9, align 8
  %160 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %159, i32 0, i32 0
  %161 = load i32, i32* %5, align 4
  %162 = call i32 @ifmedia_ioctl(%struct.ifnet* %157, %struct.ifreq* %158, i32* %160, i32 %161)
  store i32 %162, i32* %10, align 4
  br label %382

163:                                              ; preds = %3
  %164 = load %struct.ale_softc*, %struct.ale_softc** %7, align 8
  %165 = call i32 @ALE_LOCK(%struct.ale_softc* %164)
  %166 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %167 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %170 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = xor i32 %168, %171
  store i32 %172, i32* %11, align 4
  %173 = load i32, i32* %11, align 4
  %174 = load i32, i32* @IFCAP_TXCSUM, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %210

177:                                              ; preds = %163
  %178 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %179 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @IFCAP_TXCSUM, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %210

184:                                              ; preds = %177
  %185 = load i32, i32* @IFCAP_TXCSUM, align 4
  %186 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %187 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = xor i32 %188, %185
  store i32 %189, i32* %187, align 8
  %190 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %191 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* @IFCAP_TXCSUM, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %202

196:                                              ; preds = %184
  %197 = load i32, i32* @ALE_CSUM_FEATURES, align 4
  %198 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %199 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %198, i32 0, i32 4
  %200 = load i32, i32* %199, align 8
  %201 = or i32 %200, %197
  store i32 %201, i32* %199, align 8
  br label %209

202:                                              ; preds = %184
  %203 = load i32, i32* @ALE_CSUM_FEATURES, align 4
  %204 = xor i32 %203, -1
  %205 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %206 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %205, i32 0, i32 4
  %207 = load i32, i32* %206, align 8
  %208 = and i32 %207, %204
  store i32 %208, i32* %206, align 8
  br label %209

209:                                              ; preds = %202, %196
  br label %210

210:                                              ; preds = %209, %177, %163
  %211 = load i32, i32* %11, align 4
  %212 = load i32, i32* @IFCAP_RXCSUM, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %228

215:                                              ; preds = %210
  %216 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %217 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* @IFCAP_RXCSUM, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %228

222:                                              ; preds = %215
  %223 = load i32, i32* @IFCAP_RXCSUM, align 4
  %224 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %225 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = xor i32 %226, %223
  store i32 %227, i32* %225, align 8
  br label %228

228:                                              ; preds = %222, %215, %210
  %229 = load i32, i32* %11, align 4
  %230 = load i32, i32* @IFCAP_TSO4, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %266

233:                                              ; preds = %228
  %234 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %235 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %234, i32 0, i32 3
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* @IFCAP_TSO4, align 4
  %238 = and i32 %236, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %266

240:                                              ; preds = %233
  %241 = load i32, i32* @IFCAP_TSO4, align 4
  %242 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %243 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 8
  %245 = xor i32 %244, %241
  store i32 %245, i32* %243, align 8
  %246 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %247 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 8
  %249 = load i32, i32* @IFCAP_TSO4, align 4
  %250 = and i32 %248, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %258

252:                                              ; preds = %240
  %253 = load i32, i32* @CSUM_TSO, align 4
  %254 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %255 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %254, i32 0, i32 4
  %256 = load i32, i32* %255, align 8
  %257 = or i32 %256, %253
  store i32 %257, i32* %255, align 8
  br label %265

258:                                              ; preds = %240
  %259 = load i32, i32* @CSUM_TSO, align 4
  %260 = xor i32 %259, -1
  %261 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %262 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %261, i32 0, i32 4
  %263 = load i32, i32* %262, align 8
  %264 = and i32 %263, %260
  store i32 %264, i32* %262, align 8
  br label %265

265:                                              ; preds = %258, %252
  br label %266

266:                                              ; preds = %265, %233, %228
  %267 = load i32, i32* %11, align 4
  %268 = load i32, i32* @IFCAP_WOL_MCAST, align 4
  %269 = and i32 %267, %268
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %284

271:                                              ; preds = %266
  %272 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %273 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %272, i32 0, i32 3
  %274 = load i32, i32* %273, align 4
  %275 = load i32, i32* @IFCAP_WOL_MCAST, align 4
  %276 = and i32 %274, %275
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %284

278:                                              ; preds = %271
  %279 = load i32, i32* @IFCAP_WOL_MCAST, align 4
  %280 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %281 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %280, i32 0, i32 2
  %282 = load i32, i32* %281, align 8
  %283 = xor i32 %282, %279
  store i32 %283, i32* %281, align 8
  br label %284

284:                                              ; preds = %278, %271, %266
  %285 = load i32, i32* %11, align 4
  %286 = load i32, i32* @IFCAP_WOL_MAGIC, align 4
  %287 = and i32 %285, %286
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %302

289:                                              ; preds = %284
  %290 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %291 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %290, i32 0, i32 3
  %292 = load i32, i32* %291, align 4
  %293 = load i32, i32* @IFCAP_WOL_MAGIC, align 4
  %294 = and i32 %292, %293
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %302

296:                                              ; preds = %289
  %297 = load i32, i32* @IFCAP_WOL_MAGIC, align 4
  %298 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %299 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %298, i32 0, i32 2
  %300 = load i32, i32* %299, align 8
  %301 = xor i32 %300, %297
  store i32 %301, i32* %299, align 8
  br label %302

302:                                              ; preds = %296, %289, %284
  %303 = load i32, i32* %11, align 4
  %304 = load i32, i32* @IFCAP_VLAN_HWCSUM, align 4
  %305 = and i32 %303, %304
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %320

307:                                              ; preds = %302
  %308 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %309 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %308, i32 0, i32 3
  %310 = load i32, i32* %309, align 4
  %311 = load i32, i32* @IFCAP_VLAN_HWCSUM, align 4
  %312 = and i32 %310, %311
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %320

314:                                              ; preds = %307
  %315 = load i32, i32* @IFCAP_VLAN_HWCSUM, align 4
  %316 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %317 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %316, i32 0, i32 2
  %318 = load i32, i32* %317, align 8
  %319 = xor i32 %318, %315
  store i32 %319, i32* %317, align 8
  br label %320

320:                                              ; preds = %314, %307, %302
  %321 = load i32, i32* %11, align 4
  %322 = load i32, i32* @IFCAP_VLAN_HWTSO, align 4
  %323 = and i32 %321, %322
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %338

325:                                              ; preds = %320
  %326 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %327 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %326, i32 0, i32 3
  %328 = load i32, i32* %327, align 4
  %329 = load i32, i32* @IFCAP_VLAN_HWTSO, align 4
  %330 = and i32 %328, %329
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %338

332:                                              ; preds = %325
  %333 = load i32, i32* @IFCAP_VLAN_HWTSO, align 4
  %334 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %335 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %334, i32 0, i32 2
  %336 = load i32, i32* %335, align 8
  %337 = xor i32 %336, %333
  store i32 %337, i32* %335, align 8
  br label %338

338:                                              ; preds = %332, %325, %320
  %339 = load i32, i32* %11, align 4
  %340 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %341 = and i32 %339, %340
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %372

343:                                              ; preds = %338
  %344 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %345 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %344, i32 0, i32 3
  %346 = load i32, i32* %345, align 4
  %347 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %348 = and i32 %346, %347
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %372

350:                                              ; preds = %343
  %351 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %352 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %353 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %352, i32 0, i32 2
  %354 = load i32, i32* %353, align 8
  %355 = xor i32 %354, %351
  store i32 %355, i32* %353, align 8
  %356 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %357 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %356, i32 0, i32 2
  %358 = load i32, i32* %357, align 8
  %359 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %360 = and i32 %358, %359
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %362, label %369

362:                                              ; preds = %350
  %363 = load i32, i32* @IFCAP_VLAN_HWTSO, align 4
  %364 = xor i32 %363, -1
  %365 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %366 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %365, i32 0, i32 2
  %367 = load i32, i32* %366, align 8
  %368 = and i32 %367, %364
  store i32 %368, i32* %366, align 8
  br label %369

369:                                              ; preds = %362, %350
  %370 = load %struct.ale_softc*, %struct.ale_softc** %7, align 8
  %371 = call i32 @ale_rxvlan(%struct.ale_softc* %370)
  br label %372

372:                                              ; preds = %369, %343, %338
  %373 = load %struct.ale_softc*, %struct.ale_softc** %7, align 8
  %374 = call i32 @ALE_UNLOCK(%struct.ale_softc* %373)
  %375 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %376 = call i32 @VLAN_CAPABILITIES(%struct.ifnet* %375)
  br label %382

377:                                              ; preds = %3
  %378 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %379 = load i32, i32* %5, align 4
  %380 = load i64, i64* %6, align 8
  %381 = call i32 @ether_ioctl(%struct.ifnet* %378, i32 %379, i64 %380)
  store i32 %381, i32* %10, align 4
  br label %382

382:                                              ; preds = %377, %372, %152, %149, %129, %80
  %383 = load i32, i32* %10, align 4
  ret i32 %383
}

declare dso_local i32 @ALE_LOCK(%struct.ale_softc*) #1

declare dso_local i32 @ale_init_locked(%struct.ale_softc*) #1

declare dso_local i32 @ALE_UNLOCK(%struct.ale_softc*) #1

declare dso_local i32 @ale_rxfilter(%struct.ale_softc*) #1

declare dso_local i32 @ale_stop(%struct.ale_softc*) #1

declare dso_local %struct.mii_data* @device_get_softc(i32) #1

declare dso_local i32 @ifmedia_ioctl(%struct.ifnet*, %struct.ifreq*, i32*, i32) #1

declare dso_local i32 @ale_rxvlan(%struct.ale_softc*) #1

declare dso_local i32 @VLAN_CAPABILITIES(%struct.ifnet*) #1

declare dso_local i32 @ether_ioctl(%struct.ifnet*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
