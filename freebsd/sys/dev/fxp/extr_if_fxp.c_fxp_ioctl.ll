; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fxp/extr_if_fxp.c_fxp_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fxp/extr_if_fxp.c_fxp_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fxp_softc = type { i32, i32, i32, i32, i32* }
%struct.ifreq = type { i32 }
%struct.mii_data = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@IFF_LINK0 = common dso_local global i32 0, align 4
@IFCAP_TXCSUM = common dso_local global i32 0, align 4
@FXP_CSUM_FEATURES = common dso_local global i32 0, align 4
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@FXP_FLAG_82559_RXCSUM = common dso_local global i32 0, align 4
@IFCAP_TSO4 = common dso_local global i32 0, align 4
@CSUM_TSO = common dso_local global i32 0, align 4
@IFCAP_WOL_MAGIC = common dso_local global i32 0, align 4
@IFCAP_VLAN_MTU = common dso_local global i32 0, align 4
@FXP_REV_82557 = common dso_local global i32 0, align 4
@FXP_FLAG_LONG_PKT_EN = common dso_local global i32 0, align 4
@FXP_FLAG_SAVE_BAD = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWCSUM = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTSO = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTAGGING = common dso_local global i32 0, align 4
@FXP_CSR_SCB_INTRCNTL = common dso_local global i32 0, align 4
@FXP_SCB_INTR_DISABLE = common dso_local global i32 0, align 4
@IFCAP_POLLING = common dso_local global i32 0, align 4
@fxp_poll = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64)* @fxp_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fxp_ioctl(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.fxp_softc*, align 8
  %8 = alloca %struct.ifreq*, align 8
  %9 = alloca %struct.mii_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call %struct.fxp_softc* @if_getsoftc(i32 %14)
  store %struct.fxp_softc* %15, %struct.fxp_softc** %7, align 8
  %16 = load i64, i64* %6, align 8
  %17 = inttoptr i64 %16 to %struct.ifreq*
  store %struct.ifreq* %17, %struct.ifreq** %8, align 8
  store i32 0, i32* %12, align 4
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %346 [
    i32 129, label %19
    i32 133, label %81
    i32 132, label %81
    i32 128, label %98
    i32 131, label %98
    i32 130, label %122
  ]

19:                                               ; preds = %3
  %20 = load %struct.fxp_softc*, %struct.fxp_softc** %7, align 8
  %21 = call i32 @FXP_LOCK(%struct.fxp_softc* %20)
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @if_getflags(i32 %22)
  %24 = load i32, i32* @IFF_UP, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %64

27:                                               ; preds = %19
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @if_getdrvflags(i32 %28)
  %30 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %53

33:                                               ; preds = %27
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @if_getflags(i32 %34)
  %36 = load %struct.fxp_softc*, %struct.fxp_softc** %7, align 8
  %37 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = xor i32 %35, %38
  %40 = load i32, i32* @IFF_PROMISC, align 4
  %41 = load i32, i32* @IFF_ALLMULTI, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @IFF_LINK0, align 4
  %44 = or i32 %42, %43
  %45 = and i32 %39, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %33
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %50 = call i32 @if_setdrvflagbits(i32 %48, i32 0, i32 %49)
  %51 = load %struct.fxp_softc*, %struct.fxp_softc** %7, align 8
  %52 = call i32 @fxp_init_body(%struct.fxp_softc* %51, i32 0)
  br label %63

53:                                               ; preds = %33, %27
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @if_getdrvflags(i32 %54)
  %56 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %57 = and i32 %55, %56
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load %struct.fxp_softc*, %struct.fxp_softc** %7, align 8
  %61 = call i32 @fxp_init_body(%struct.fxp_softc* %60, i32 1)
  br label %62

62:                                               ; preds = %59, %53
  br label %63

63:                                               ; preds = %62, %47
  br label %74

64:                                               ; preds = %19
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @if_getdrvflags(i32 %65)
  %67 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load %struct.fxp_softc*, %struct.fxp_softc** %7, align 8
  %72 = call i32 @fxp_stop(%struct.fxp_softc* %71)
  br label %73

73:                                               ; preds = %70, %64
  br label %74

74:                                               ; preds = %73, %63
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @if_getflags(i32 %75)
  %77 = load %struct.fxp_softc*, %struct.fxp_softc** %7, align 8
  %78 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load %struct.fxp_softc*, %struct.fxp_softc** %7, align 8
  %80 = call i32 @FXP_UNLOCK(%struct.fxp_softc* %79)
  br label %351

81:                                               ; preds = %3, %3
  %82 = load %struct.fxp_softc*, %struct.fxp_softc** %7, align 8
  %83 = call i32 @FXP_LOCK(%struct.fxp_softc* %82)
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @if_getdrvflags(i32 %84)
  %86 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %81
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %92 = call i32 @if_setdrvflagbits(i32 %90, i32 0, i32 %91)
  %93 = load %struct.fxp_softc*, %struct.fxp_softc** %7, align 8
  %94 = call i32 @fxp_init_body(%struct.fxp_softc* %93, i32 0)
  br label %95

95:                                               ; preds = %89, %81
  %96 = load %struct.fxp_softc*, %struct.fxp_softc** %7, align 8
  %97 = call i32 @FXP_UNLOCK(%struct.fxp_softc* %96)
  br label %351

98:                                               ; preds = %3, %3
  %99 = load %struct.fxp_softc*, %struct.fxp_softc** %7, align 8
  %100 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %99, i32 0, i32 4
  %101 = load i32*, i32** %100, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %114

103:                                              ; preds = %98
  %104 = load %struct.fxp_softc*, %struct.fxp_softc** %7, align 8
  %105 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %104, i32 0, i32 4
  %106 = load i32*, i32** %105, align 8
  %107 = call %struct.mii_data* @device_get_softc(i32* %106)
  store %struct.mii_data* %107, %struct.mii_data** %9, align 8
  %108 = load i32, i32* %4, align 4
  %109 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %110 = load %struct.mii_data*, %struct.mii_data** %9, align 8
  %111 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %110, i32 0, i32 0
  %112 = load i32, i32* %5, align 4
  %113 = call i32 @ifmedia_ioctl(i32 %108, %struct.ifreq* %109, i32* %111, i32 %112)
  store i32 %113, i32* %12, align 4
  br label %121

114:                                              ; preds = %98
  %115 = load i32, i32* %4, align 4
  %116 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %117 = load %struct.fxp_softc*, %struct.fxp_softc** %7, align 8
  %118 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %117, i32 0, i32 3
  %119 = load i32, i32* %5, align 4
  %120 = call i32 @ifmedia_ioctl(i32 %115, %struct.ifreq* %116, i32* %118, i32 %119)
  store i32 %120, i32* %12, align 4
  br label %121

121:                                              ; preds = %114, %103
  br label %351

122:                                              ; preds = %3
  store i32 0, i32* %13, align 4
  %123 = load i32, i32* %4, align 4
  %124 = call i32 @if_getcapenable(i32 %123)
  %125 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %126 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = xor i32 %124, %127
  store i32 %128, i32* %11, align 4
  %129 = load %struct.fxp_softc*, %struct.fxp_softc** %7, align 8
  %130 = call i32 @FXP_LOCK(%struct.fxp_softc* %129)
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* @IFCAP_TXCSUM, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %159

135:                                              ; preds = %122
  %136 = load i32, i32* %4, align 4
  %137 = call i32 @if_getcapabilities(i32 %136)
  %138 = load i32, i32* @IFCAP_TXCSUM, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %159

141:                                              ; preds = %135
  %142 = load i32, i32* %4, align 4
  %143 = load i32, i32* @IFCAP_TXCSUM, align 4
  %144 = call i32 @if_togglecapenable(i32 %142, i32 %143)
  %145 = load i32, i32* %4, align 4
  %146 = call i32 @if_getcapenable(i32 %145)
  %147 = load i32, i32* @IFCAP_TXCSUM, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %141
  %151 = load i32, i32* %4, align 4
  %152 = load i32, i32* @FXP_CSUM_FEATURES, align 4
  %153 = call i32 @if_sethwassistbits(i32 %151, i32 %152, i32 0)
  br label %158

154:                                              ; preds = %141
  %155 = load i32, i32* %4, align 4
  %156 = load i32, i32* @FXP_CSUM_FEATURES, align 4
  %157 = call i32 @if_sethwassistbits(i32 %155, i32 0, i32 %156)
  br label %158

158:                                              ; preds = %154, %150
  br label %159

159:                                              ; preds = %158, %135, %122
  %160 = load i32, i32* %11, align 4
  %161 = load i32, i32* @IFCAP_RXCSUM, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %184

164:                                              ; preds = %159
  %165 = load i32, i32* %4, align 4
  %166 = call i32 @if_getcapabilities(i32 %165)
  %167 = load i32, i32* @IFCAP_RXCSUM, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %184

170:                                              ; preds = %164
  %171 = load i32, i32* %4, align 4
  %172 = load i32, i32* @IFCAP_RXCSUM, align 4
  %173 = call i32 @if_togglecapenable(i32 %171, i32 %172)
  %174 = load %struct.fxp_softc*, %struct.fxp_softc** %7, align 8
  %175 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @FXP_FLAG_82559_RXCSUM, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %170
  %181 = load i32, i32* %13, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %13, align 4
  br label %183

183:                                              ; preds = %180, %170
  br label %184

184:                                              ; preds = %183, %164, %159
  %185 = load i32, i32* %11, align 4
  %186 = load i32, i32* @IFCAP_TSO4, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %213

189:                                              ; preds = %184
  %190 = load i32, i32* %4, align 4
  %191 = call i32 @if_getcapabilities(i32 %190)
  %192 = load i32, i32* @IFCAP_TSO4, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %213

195:                                              ; preds = %189
  %196 = load i32, i32* %4, align 4
  %197 = load i32, i32* @IFCAP_TSO4, align 4
  %198 = call i32 @if_togglecapenable(i32 %196, i32 %197)
  %199 = load i32, i32* %4, align 4
  %200 = call i32 @if_getcapenable(i32 %199)
  %201 = load i32, i32* @IFCAP_TSO4, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %208

204:                                              ; preds = %195
  %205 = load i32, i32* %4, align 4
  %206 = load i32, i32* @CSUM_TSO, align 4
  %207 = call i32 @if_sethwassistbits(i32 %205, i32 %206, i32 0)
  br label %212

208:                                              ; preds = %195
  %209 = load i32, i32* %4, align 4
  %210 = load i32, i32* @CSUM_TSO, align 4
  %211 = call i32 @if_sethwassistbits(i32 %209, i32 0, i32 %210)
  br label %212

212:                                              ; preds = %208, %204
  br label %213

213:                                              ; preds = %212, %189, %184
  %214 = load i32, i32* %11, align 4
  %215 = load i32, i32* @IFCAP_WOL_MAGIC, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %228

218:                                              ; preds = %213
  %219 = load i32, i32* %4, align 4
  %220 = call i32 @if_getcapabilities(i32 %219)
  %221 = load i32, i32* @IFCAP_WOL_MAGIC, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %228

224:                                              ; preds = %218
  %225 = load i32, i32* %4, align 4
  %226 = load i32, i32* @IFCAP_WOL_MAGIC, align 4
  %227 = call i32 @if_togglecapenable(i32 %225, i32 %226)
  br label %228

228:                                              ; preds = %224, %218, %213
  %229 = load i32, i32* %11, align 4
  %230 = load i32, i32* @IFCAP_VLAN_MTU, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %267

233:                                              ; preds = %228
  %234 = load i32, i32* %4, align 4
  %235 = call i32 @if_getcapabilities(i32 %234)
  %236 = load i32, i32* @IFCAP_VLAN_MTU, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %267

239:                                              ; preds = %233
  %240 = load i32, i32* %4, align 4
  %241 = load i32, i32* @IFCAP_VLAN_MTU, align 4
  %242 = call i32 @if_togglecapenable(i32 %240, i32 %241)
  %243 = load %struct.fxp_softc*, %struct.fxp_softc** %7, align 8
  %244 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 8
  %246 = load i32, i32* @FXP_REV_82557, align 4
  %247 = icmp ne i32 %245, %246
  br i1 %247, label %248, label %250

248:                                              ; preds = %239
  %249 = load i32, i32* @FXP_FLAG_LONG_PKT_EN, align 4
  store i32 %249, i32* %10, align 4
  br label %252

250:                                              ; preds = %239
  %251 = load i32, i32* @FXP_FLAG_SAVE_BAD, align 4
  store i32 %251, i32* %10, align 4
  br label %252

252:                                              ; preds = %250, %248
  %253 = load i32, i32* %10, align 4
  %254 = load %struct.fxp_softc*, %struct.fxp_softc** %7, align 8
  %255 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = xor i32 %256, %253
  store i32 %257, i32* %255, align 4
  %258 = load i32, i32* %4, align 4
  %259 = call i32 @if_getflags(i32 %258)
  %260 = load i32, i32* @IFF_UP, align 4
  %261 = and i32 %259, %260
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %266

263:                                              ; preds = %252
  %264 = load i32, i32* %13, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %13, align 4
  br label %266

266:                                              ; preds = %263, %252
  br label %267

267:                                              ; preds = %266, %233, %228
  %268 = load i32, i32* %11, align 4
  %269 = load i32, i32* @IFCAP_VLAN_HWCSUM, align 4
  %270 = and i32 %268, %269
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %282

272:                                              ; preds = %267
  %273 = load i32, i32* %4, align 4
  %274 = call i32 @if_getcapabilities(i32 %273)
  %275 = load i32, i32* @IFCAP_VLAN_HWCSUM, align 4
  %276 = and i32 %274, %275
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %282

278:                                              ; preds = %272
  %279 = load i32, i32* %4, align 4
  %280 = load i32, i32* @IFCAP_VLAN_HWCSUM, align 4
  %281 = call i32 @if_togglecapenable(i32 %279, i32 %280)
  br label %282

282:                                              ; preds = %278, %272, %267
  %283 = load i32, i32* %11, align 4
  %284 = load i32, i32* @IFCAP_VLAN_HWTSO, align 4
  %285 = and i32 %283, %284
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %297

287:                                              ; preds = %282
  %288 = load i32, i32* %4, align 4
  %289 = call i32 @if_getcapabilities(i32 %288)
  %290 = load i32, i32* @IFCAP_VLAN_HWTSO, align 4
  %291 = and i32 %289, %290
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %297

293:                                              ; preds = %287
  %294 = load i32, i32* %4, align 4
  %295 = load i32, i32* @IFCAP_VLAN_HWTSO, align 4
  %296 = call i32 @if_togglecapenable(i32 %294, i32 %295)
  br label %297

297:                                              ; preds = %293, %287, %282
  %298 = load i32, i32* %11, align 4
  %299 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %300 = and i32 %298, %299
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %326

302:                                              ; preds = %297
  %303 = load i32, i32* %4, align 4
  %304 = call i32 @if_getcapabilities(i32 %303)
  %305 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %306 = and i32 %304, %305
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %326

308:                                              ; preds = %302
  %309 = load i32, i32* %4, align 4
  %310 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %311 = call i32 @if_togglecapenable(i32 %309, i32 %310)
  %312 = load i32, i32* %4, align 4
  %313 = call i32 @if_getcapenable(i32 %312)
  %314 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %315 = and i32 %313, %314
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %317, label %323

317:                                              ; preds = %308
  %318 = load i32, i32* %4, align 4
  %319 = load i32, i32* @IFCAP_VLAN_HWTSO, align 4
  %320 = load i32, i32* @IFCAP_VLAN_HWCSUM, align 4
  %321 = or i32 %319, %320
  %322 = call i32 @if_setcapenablebit(i32 %318, i32 0, i32 %321)
  br label %323

323:                                              ; preds = %317, %308
  %324 = load i32, i32* %13, align 4
  %325 = add nsw i32 %324, 1
  store i32 %325, i32* %13, align 4
  br label %326

326:                                              ; preds = %323, %302, %297
  %327 = load i32, i32* %13, align 4
  %328 = icmp sgt i32 %327, 0
  br i1 %328, label %329, label %341

329:                                              ; preds = %326
  %330 = load i32, i32* %4, align 4
  %331 = call i32 @if_getdrvflags(i32 %330)
  %332 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %333 = and i32 %331, %332
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %341

335:                                              ; preds = %329
  %336 = load i32, i32* %4, align 4
  %337 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %338 = call i32 @if_setdrvflagbits(i32 %336, i32 0, i32 %337)
  %339 = load %struct.fxp_softc*, %struct.fxp_softc** %7, align 8
  %340 = call i32 @fxp_init_body(%struct.fxp_softc* %339, i32 0)
  br label %341

341:                                              ; preds = %335, %329, %326
  %342 = load %struct.fxp_softc*, %struct.fxp_softc** %7, align 8
  %343 = call i32 @FXP_UNLOCK(%struct.fxp_softc* %342)
  %344 = load i32, i32* %4, align 4
  %345 = call i32 @if_vlancap(i32 %344)
  br label %351

346:                                              ; preds = %3
  %347 = load i32, i32* %4, align 4
  %348 = load i32, i32* %5, align 4
  %349 = load i64, i64* %6, align 8
  %350 = call i32 @ether_ioctl(i32 %347, i32 %348, i64 %349)
  store i32 %350, i32* %12, align 4
  br label %351

351:                                              ; preds = %346, %341, %121, %95, %74
  %352 = load i32, i32* %12, align 4
  ret i32 %352
}

declare dso_local %struct.fxp_softc* @if_getsoftc(i32) #1

declare dso_local i32 @FXP_LOCK(%struct.fxp_softc*) #1

declare dso_local i32 @if_getflags(i32) #1

declare dso_local i32 @if_getdrvflags(i32) #1

declare dso_local i32 @if_setdrvflagbits(i32, i32, i32) #1

declare dso_local i32 @fxp_init_body(%struct.fxp_softc*, i32) #1

declare dso_local i32 @fxp_stop(%struct.fxp_softc*) #1

declare dso_local i32 @FXP_UNLOCK(%struct.fxp_softc*) #1

declare dso_local %struct.mii_data* @device_get_softc(i32*) #1

declare dso_local i32 @ifmedia_ioctl(i32, %struct.ifreq*, i32*, i32) #1

declare dso_local i32 @if_getcapenable(i32) #1

declare dso_local i32 @if_getcapabilities(i32) #1

declare dso_local i32 @if_togglecapenable(i32, i32) #1

declare dso_local i32 @if_sethwassistbits(i32, i32, i32) #1

declare dso_local i32 @if_setcapenablebit(i32, i32, i32) #1

declare dso_local i32 @if_vlancap(i32) #1

declare dso_local i32 @ether_ioctl(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
