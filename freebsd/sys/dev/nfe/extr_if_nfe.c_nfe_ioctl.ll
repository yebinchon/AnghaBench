; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nfe/extr_if_nfe.c_nfe_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nfe/extr_if_nfe.c_nfe_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfe_softc = type { i32, i32, i32, i32 }
%struct.ifreq = type { i32, i32 }
%struct.mii_data = type { i32 }

@ETHERMIN = common dso_local global i32 0, align 4
@NFE_JUMBO_MTU = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NFE_JUMBO_SUP = common dso_local global i32 0, align 4
@ETHERMTU = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@IFCAP_WOL_MAGIC = common dso_local global i32 0, align 4
@IFCAP_TXCSUM = common dso_local global i32 0, align 4
@NFE_CSUM_FEATURES = common dso_local global i32 0, align 4
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@IFCAP_TSO4 = common dso_local global i32 0, align 4
@CSUM_TSO = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTSO = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTAGGING = common dso_local global i32 0, align 4
@IFCAP_POLLING = common dso_local global i32 0, align 4
@nfe_poll = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64)* @nfe_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfe_ioctl(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.nfe_softc*, align 8
  %8 = alloca %struct.ifreq*, align 8
  %9 = alloca %struct.mii_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call %struct.nfe_softc* @if_getsoftc(i32 %13)
  store %struct.nfe_softc* %14, %struct.nfe_softc** %7, align 8
  %15 = load i64, i64* %6, align 8
  %16 = inttoptr i64 %15 to %struct.ifreq*
  store %struct.ifreq* %16, %struct.ifreq** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %336 [
    i32 128, label %18
    i32 130, label %84
    i32 134, label %134
    i32 133, label %134
    i32 129, label %148
    i32 132, label %148
    i32 131, label %159
  ]

18:                                               ; preds = %3
  %19 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %20 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ETHERMIN, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %18
  %25 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %26 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @NFE_JUMBO_MTU, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24, %18
  %31 = load i32, i32* @EINVAL, align 4
  store i32 %31, i32* %10, align 4
  br label %83

32:                                               ; preds = %24
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @if_getmtu(i32 %33)
  %35 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %36 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %34, %37
  br i1 %38, label %39, label %82

39:                                               ; preds = %32
  %40 = load %struct.nfe_softc*, %struct.nfe_softc** %7, align 8
  %41 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @NFE_JUMBO_SUP, align 4
  %44 = and i32 %42, %43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %39
  %47 = load %struct.nfe_softc*, %struct.nfe_softc** %7, align 8
  %48 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %46, %39
  %52 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %53 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @ETHERMTU, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* @EINVAL, align 4
  store i32 %58, i32* %10, align 4
  br label %81

59:                                               ; preds = %51, %46
  %60 = load %struct.nfe_softc*, %struct.nfe_softc** %7, align 8
  %61 = call i32 @NFE_LOCK(%struct.nfe_softc* %60)
  %62 = load i32, i32* %4, align 4
  %63 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %64 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @if_setmtu(i32 %62, i32 %65)
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @if_getdrvflags(i32 %67)
  %69 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %59
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %75 = call i32 @if_setdrvflagbits(i32 %73, i32 0, i32 %74)
  %76 = load %struct.nfe_softc*, %struct.nfe_softc** %7, align 8
  %77 = call i32 @nfe_init_locked(%struct.nfe_softc* %76)
  br label %78

78:                                               ; preds = %72, %59
  %79 = load %struct.nfe_softc*, %struct.nfe_softc** %7, align 8
  %80 = call i32 @NFE_UNLOCK(%struct.nfe_softc* %79)
  br label %81

81:                                               ; preds = %78, %57
  br label %82

82:                                               ; preds = %81, %32
  br label %83

83:                                               ; preds = %82, %30
  br label %341

84:                                               ; preds = %3
  %85 = load %struct.nfe_softc*, %struct.nfe_softc** %7, align 8
  %86 = call i32 @NFE_LOCK(%struct.nfe_softc* %85)
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @if_getflags(i32 %87)
  %89 = load i32, i32* @IFF_UP, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %117

92:                                               ; preds = %84
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @if_getdrvflags(i32 %93)
  %95 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %113

98:                                               ; preds = %92
  %99 = load i32, i32* %4, align 4
  %100 = call i32 @if_getflags(i32 %99)
  %101 = load %struct.nfe_softc*, %struct.nfe_softc** %7, align 8
  %102 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = xor i32 %100, %103
  %105 = load i32, i32* @IFF_ALLMULTI, align 4
  %106 = load i32, i32* @IFF_PROMISC, align 4
  %107 = or i32 %105, %106
  %108 = and i32 %104, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %98
  %111 = load %struct.nfe_softc*, %struct.nfe_softc** %7, align 8
  %112 = call i32 @nfe_setmulti(%struct.nfe_softc* %111)
  br label %116

113:                                              ; preds = %98, %92
  %114 = load %struct.nfe_softc*, %struct.nfe_softc** %7, align 8
  %115 = call i32 @nfe_init_locked(%struct.nfe_softc* %114)
  br label %116

116:                                              ; preds = %113, %110
  br label %127

117:                                              ; preds = %84
  %118 = load i32, i32* %4, align 4
  %119 = call i32 @if_getdrvflags(i32 %118)
  %120 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %117
  %124 = load i32, i32* %4, align 4
  %125 = call i32 @nfe_stop(i32 %124)
  br label %126

126:                                              ; preds = %123, %117
  br label %127

127:                                              ; preds = %126, %116
  %128 = load i32, i32* %4, align 4
  %129 = call i32 @if_getflags(i32 %128)
  %130 = load %struct.nfe_softc*, %struct.nfe_softc** %7, align 8
  %131 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 4
  %132 = load %struct.nfe_softc*, %struct.nfe_softc** %7, align 8
  %133 = call i32 @NFE_UNLOCK(%struct.nfe_softc* %132)
  store i32 0, i32* %10, align 4
  br label %341

134:                                              ; preds = %3, %3
  %135 = load i32, i32* %4, align 4
  %136 = call i32 @if_getdrvflags(i32 %135)
  %137 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %147

140:                                              ; preds = %134
  %141 = load %struct.nfe_softc*, %struct.nfe_softc** %7, align 8
  %142 = call i32 @NFE_LOCK(%struct.nfe_softc* %141)
  %143 = load %struct.nfe_softc*, %struct.nfe_softc** %7, align 8
  %144 = call i32 @nfe_setmulti(%struct.nfe_softc* %143)
  %145 = load %struct.nfe_softc*, %struct.nfe_softc** %7, align 8
  %146 = call i32 @NFE_UNLOCK(%struct.nfe_softc* %145)
  store i32 0, i32* %10, align 4
  br label %147

147:                                              ; preds = %140, %134
  br label %341

148:                                              ; preds = %3, %3
  %149 = load %struct.nfe_softc*, %struct.nfe_softc** %7, align 8
  %150 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = call %struct.mii_data* @device_get_softc(i32 %151)
  store %struct.mii_data* %152, %struct.mii_data** %9, align 8
  %153 = load i32, i32* %4, align 4
  %154 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %155 = load %struct.mii_data*, %struct.mii_data** %9, align 8
  %156 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %155, i32 0, i32 0
  %157 = load i32, i32* %5, align 4
  %158 = call i32 @ifmedia_ioctl(i32 %153, %struct.ifreq* %154, i32* %156, i32 %157)
  store i32 %158, i32* %10, align 4
  br label %341

159:                                              ; preds = %3
  %160 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %161 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %4, align 4
  %164 = call i32 @if_getcapenable(i32 %163)
  %165 = xor i32 %162, %164
  store i32 %165, i32* %12, align 4
  %166 = load i32, i32* %12, align 4
  %167 = load i32, i32* @IFCAP_WOL_MAGIC, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %180

170:                                              ; preds = %159
  %171 = load i32, i32* %4, align 4
  %172 = call i32 @if_getcapabilities(i32 %171)
  %173 = load i32, i32* @IFCAP_WOL_MAGIC, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %170
  %177 = load i32, i32* %4, align 4
  %178 = load i32, i32* @IFCAP_WOL_MAGIC, align 4
  %179 = call i32 @if_togglecapenable(i32 %177, i32 %178)
  br label %180

180:                                              ; preds = %176, %170, %159
  %181 = load i32, i32* %12, align 4
  %182 = load i32, i32* @IFCAP_TXCSUM, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %209

185:                                              ; preds = %180
  %186 = load i32, i32* %4, align 4
  %187 = call i32 @if_getcapabilities(i32 %186)
  %188 = load i32, i32* @IFCAP_TXCSUM, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %209

191:                                              ; preds = %185
  %192 = load i32, i32* %4, align 4
  %193 = load i32, i32* @IFCAP_TXCSUM, align 4
  %194 = call i32 @if_togglecapenable(i32 %192, i32 %193)
  %195 = load i32, i32* %4, align 4
  %196 = call i32 @if_getcapenable(i32 %195)
  %197 = load i32, i32* @IFCAP_TXCSUM, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %191
  %201 = load i32, i32* %4, align 4
  %202 = load i32, i32* @NFE_CSUM_FEATURES, align 4
  %203 = call i32 @if_sethwassistbits(i32 %201, i32 %202, i32 0)
  br label %208

204:                                              ; preds = %191
  %205 = load i32, i32* %4, align 4
  %206 = load i32, i32* @NFE_CSUM_FEATURES, align 4
  %207 = call i32 @if_sethwassistbits(i32 %205, i32 0, i32 %206)
  br label %208

208:                                              ; preds = %204, %200
  br label %209

209:                                              ; preds = %208, %185, %180
  %210 = load i32, i32* %12, align 4
  %211 = load i32, i32* @IFCAP_RXCSUM, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %226

214:                                              ; preds = %209
  %215 = load i32, i32* %4, align 4
  %216 = call i32 @if_getcapabilities(i32 %215)
  %217 = load i32, i32* @IFCAP_RXCSUM, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %226

220:                                              ; preds = %214
  %221 = load i32, i32* %4, align 4
  %222 = load i32, i32* @IFCAP_RXCSUM, align 4
  %223 = call i32 @if_togglecapenable(i32 %221, i32 %222)
  %224 = load i32, i32* %11, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %11, align 4
  br label %226

226:                                              ; preds = %220, %214, %209
  %227 = load i32, i32* %12, align 4
  %228 = load i32, i32* @IFCAP_TSO4, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %255

231:                                              ; preds = %226
  %232 = load i32, i32* %4, align 4
  %233 = call i32 @if_getcapabilities(i32 %232)
  %234 = load i32, i32* @IFCAP_TSO4, align 4
  %235 = and i32 %233, %234
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %255

237:                                              ; preds = %231
  %238 = load i32, i32* %4, align 4
  %239 = load i32, i32* @IFCAP_TSO4, align 4
  %240 = call i32 @if_togglecapenable(i32 %238, i32 %239)
  %241 = load i32, i32* @IFCAP_TSO4, align 4
  %242 = load i32, i32* %4, align 4
  %243 = call i32 @if_getcapenable(i32 %242)
  %244 = and i32 %241, %243
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %250

246:                                              ; preds = %237
  %247 = load i32, i32* %4, align 4
  %248 = load i32, i32* @CSUM_TSO, align 4
  %249 = call i32 @if_sethwassistbits(i32 %247, i32 %248, i32 0)
  br label %254

250:                                              ; preds = %237
  %251 = load i32, i32* %4, align 4
  %252 = load i32, i32* @CSUM_TSO, align 4
  %253 = call i32 @if_sethwassistbits(i32 %251, i32 0, i32 %252)
  br label %254

254:                                              ; preds = %250, %246
  br label %255

255:                                              ; preds = %254, %231, %226
  %256 = load i32, i32* %12, align 4
  %257 = load i32, i32* @IFCAP_VLAN_HWTSO, align 4
  %258 = and i32 %256, %257
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %270

260:                                              ; preds = %255
  %261 = load i32, i32* %4, align 4
  %262 = call i32 @if_getcapabilities(i32 %261)
  %263 = load i32, i32* @IFCAP_VLAN_HWTSO, align 4
  %264 = and i32 %262, %263
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %270

266:                                              ; preds = %260
  %267 = load i32, i32* %4, align 4
  %268 = load i32, i32* @IFCAP_VLAN_HWTSO, align 4
  %269 = call i32 @if_togglecapenable(i32 %267, i32 %268)
  br label %270

270:                                              ; preds = %266, %260, %255
  %271 = load i32, i32* %12, align 4
  %272 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %273 = and i32 %271, %272
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %297

275:                                              ; preds = %270
  %276 = load i32, i32* %4, align 4
  %277 = call i32 @if_getcapabilities(i32 %276)
  %278 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %279 = and i32 %277, %278
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %297

281:                                              ; preds = %275
  %282 = load i32, i32* %4, align 4
  %283 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %284 = call i32 @if_togglecapenable(i32 %282, i32 %283)
  %285 = load i32, i32* %4, align 4
  %286 = call i32 @if_getcapenable(i32 %285)
  %287 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %288 = and i32 %286, %287
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %290, label %294

290:                                              ; preds = %281
  %291 = load i32, i32* %4, align 4
  %292 = load i32, i32* @IFCAP_VLAN_HWTSO, align 4
  %293 = call i32 @if_setcapenablebit(i32 %291, i32 0, i32 %292)
  br label %294

294:                                              ; preds = %290, %281
  %295 = load i32, i32* %11, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %11, align 4
  br label %297

297:                                              ; preds = %294, %275, %270
  %298 = load i32, i32* %4, align 4
  %299 = call i32 @if_getcapenable(i32 %298)
  %300 = load i32, i32* @IFCAP_RXCSUM, align 4
  %301 = and i32 %299, %300
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %303, label %318

303:                                              ; preds = %297
  %304 = load i32, i32* %4, align 4
  %305 = call i32 @if_getcapenable(i32 %304)
  %306 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %307 = and i32 %305, %306
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %312

309:                                              ; preds = %303
  %310 = load i32, i32* %11, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %11, align 4
  br label %312

312:                                              ; preds = %309, %303
  %313 = load i32, i32* %4, align 4
  %314 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %315 = load i32, i32* @IFCAP_VLAN_HWTSO, align 4
  %316 = or i32 %314, %315
  %317 = call i32 @if_setcapenablebit(i32 %313, i32 0, i32 %316)
  br label %318

318:                                              ; preds = %312, %297
  %319 = load i32, i32* %11, align 4
  %320 = icmp sgt i32 %319, 0
  br i1 %320, label %321, label %333

321:                                              ; preds = %318
  %322 = load i32, i32* %4, align 4
  %323 = call i32 @if_getdrvflags(i32 %322)
  %324 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %325 = and i32 %323, %324
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %333

327:                                              ; preds = %321
  %328 = load i32, i32* %4, align 4
  %329 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %330 = call i32 @if_setdrvflagbits(i32 %328, i32 0, i32 %329)
  %331 = load %struct.nfe_softc*, %struct.nfe_softc** %7, align 8
  %332 = call i32 @nfe_init(%struct.nfe_softc* %331)
  br label %333

333:                                              ; preds = %327, %321, %318
  %334 = load i32, i32* %4, align 4
  %335 = call i32 @if_vlancap(i32 %334)
  br label %341

336:                                              ; preds = %3
  %337 = load i32, i32* %4, align 4
  %338 = load i32, i32* %5, align 4
  %339 = load i64, i64* %6, align 8
  %340 = call i32 @ether_ioctl(i32 %337, i32 %338, i64 %339)
  store i32 %340, i32* %10, align 4
  br label %341

341:                                              ; preds = %336, %333, %148, %147, %127, %83
  %342 = load i32, i32* %10, align 4
  ret i32 %342
}

declare dso_local %struct.nfe_softc* @if_getsoftc(i32) #1

declare dso_local i32 @if_getmtu(i32) #1

declare dso_local i32 @NFE_LOCK(%struct.nfe_softc*) #1

declare dso_local i32 @if_setmtu(i32, i32) #1

declare dso_local i32 @if_getdrvflags(i32) #1

declare dso_local i32 @if_setdrvflagbits(i32, i32, i32) #1

declare dso_local i32 @nfe_init_locked(%struct.nfe_softc*) #1

declare dso_local i32 @NFE_UNLOCK(%struct.nfe_softc*) #1

declare dso_local i32 @if_getflags(i32) #1

declare dso_local i32 @nfe_setmulti(%struct.nfe_softc*) #1

declare dso_local i32 @nfe_stop(i32) #1

declare dso_local %struct.mii_data* @device_get_softc(i32) #1

declare dso_local i32 @ifmedia_ioctl(i32, %struct.ifreq*, i32*, i32) #1

declare dso_local i32 @if_getcapenable(i32) #1

declare dso_local i32 @if_getcapabilities(i32) #1

declare dso_local i32 @if_togglecapenable(i32, i32) #1

declare dso_local i32 @if_sethwassistbits(i32, i32, i32) #1

declare dso_local i32 @if_setcapenablebit(i32, i32, i32) #1

declare dso_local i32 @nfe_init(%struct.nfe_softc*) #1

declare dso_local i32 @if_vlancap(i32) #1

declare dso_local i32 @ether_ioctl(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
