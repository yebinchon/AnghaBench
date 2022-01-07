; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sge/extr_if_sge.c_sge_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sge/extr_if_sge.c_sge_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i32, i32, i32, %struct.sge_softc* }
%struct.sge_softc = type { i32, i32 }
%struct.ifreq = type { i32 }
%struct.mii_data = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@IFCAP_TXCSUM = common dso_local global i32 0, align 4
@SGE_CSUM_FEATURES = common dso_local global i32 0, align 4
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWCSUM = common dso_local global i32 0, align 4
@IFCAP_TSO4 = common dso_local global i32 0, align 4
@CSUM_TSO = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTSO = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTAGGING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i64)* @sge_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sge_ioctl(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.sge_softc*, align 8
  %8 = alloca %struct.ifreq*, align 8
  %9 = alloca %struct.mii_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %14 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %13, i32 0, i32 5
  %15 = load %struct.sge_softc*, %struct.sge_softc** %14, align 8
  store %struct.sge_softc* %15, %struct.sge_softc** %7, align 8
  %16 = load i64, i64* %6, align 8
  %17 = inttoptr i64 %16 to %struct.ifreq*
  store %struct.ifreq* %17, %struct.ifreq** %8, align 8
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %297 [
    i32 129, label %19
    i32 130, label %74
    i32 133, label %271
    i32 132, label %271
    i32 131, label %286
    i32 128, label %286
  ]

19:                                               ; preds = %3
  %20 = load %struct.sge_softc*, %struct.sge_softc** %7, align 8
  %21 = call i32 @SGE_LOCK(%struct.sge_softc* %20)
  %22 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %23 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @IFF_UP, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %55

28:                                               ; preds = %19
  %29 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %30 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %28
  %36 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %37 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.sge_softc*, %struct.sge_softc** %7, align 8
  %40 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = xor i32 %38, %41
  %43 = load i32, i32* @IFF_PROMISC, align 4
  %44 = load i32, i32* @IFF_ALLMULTI, align 4
  %45 = or i32 %43, %44
  %46 = and i32 %42, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %35
  %49 = load %struct.sge_softc*, %struct.sge_softc** %7, align 8
  %50 = call i32 @sge_rxfilter(%struct.sge_softc* %49)
  br label %54

51:                                               ; preds = %35, %28
  %52 = load %struct.sge_softc*, %struct.sge_softc** %7, align 8
  %53 = call i32 @sge_init_locked(%struct.sge_softc* %52)
  br label %54

54:                                               ; preds = %51, %48
  br label %66

55:                                               ; preds = %19
  %56 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %57 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = load %struct.sge_softc*, %struct.sge_softc** %7, align 8
  %64 = call i32 @sge_stop(%struct.sge_softc* %63)
  br label %65

65:                                               ; preds = %62, %55
  br label %66

66:                                               ; preds = %65, %54
  %67 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %68 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.sge_softc*, %struct.sge_softc** %7, align 8
  %71 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  %72 = load %struct.sge_softc*, %struct.sge_softc** %7, align 8
  %73 = call i32 @SGE_UNLOCK(%struct.sge_softc* %72)
  br label %302

74:                                               ; preds = %3
  %75 = load %struct.sge_softc*, %struct.sge_softc** %7, align 8
  %76 = call i32 @SGE_LOCK(%struct.sge_softc* %75)
  store i32 0, i32* %12, align 4
  %77 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %78 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %81 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = xor i32 %79, %82
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* @IFCAP_TXCSUM, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %121

88:                                               ; preds = %74
  %89 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %90 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @IFCAP_TXCSUM, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %121

95:                                               ; preds = %88
  %96 = load i32, i32* @IFCAP_TXCSUM, align 4
  %97 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %98 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = xor i32 %99, %96
  store i32 %100, i32* %98, align 8
  %101 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %102 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @IFCAP_TXCSUM, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %95
  %108 = load i32, i32* @SGE_CSUM_FEATURES, align 4
  %109 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %110 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 8
  br label %120

113:                                              ; preds = %95
  %114 = load i32, i32* @SGE_CSUM_FEATURES, align 4
  %115 = xor i32 %114, -1
  %116 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %117 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = and i32 %118, %115
  store i32 %119, i32* %117, align 8
  br label %120

120:                                              ; preds = %113, %107
  br label %121

121:                                              ; preds = %120, %88, %74
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* @IFCAP_RXCSUM, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %139

126:                                              ; preds = %121
  %127 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %128 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @IFCAP_RXCSUM, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %126
  %134 = load i32, i32* @IFCAP_RXCSUM, align 4
  %135 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %136 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = xor i32 %137, %134
  store i32 %138, i32* %136, align 8
  br label %139

139:                                              ; preds = %133, %126, %121
  %140 = load i32, i32* %11, align 4
  %141 = load i32, i32* @IFCAP_VLAN_HWCSUM, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %157

144:                                              ; preds = %139
  %145 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %146 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @IFCAP_VLAN_HWCSUM, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %144
  %152 = load i32, i32* @IFCAP_VLAN_HWCSUM, align 4
  %153 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %154 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = xor i32 %155, %152
  store i32 %156, i32* %154, align 8
  br label %157

157:                                              ; preds = %151, %144, %139
  %158 = load i32, i32* %11, align 4
  %159 = load i32, i32* @IFCAP_TSO4, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %195

162:                                              ; preds = %157
  %163 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %164 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @IFCAP_TSO4, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %195

169:                                              ; preds = %162
  %170 = load i32, i32* @IFCAP_TSO4, align 4
  %171 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %172 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = xor i32 %173, %170
  store i32 %174, i32* %172, align 8
  %175 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %176 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @IFCAP_TSO4, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %187

181:                                              ; preds = %169
  %182 = load i32, i32* @CSUM_TSO, align 4
  %183 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %184 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %183, i32 0, i32 4
  %185 = load i32, i32* %184, align 8
  %186 = or i32 %185, %182
  store i32 %186, i32* %184, align 8
  br label %194

187:                                              ; preds = %169
  %188 = load i32, i32* @CSUM_TSO, align 4
  %189 = xor i32 %188, -1
  %190 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %191 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %190, i32 0, i32 4
  %192 = load i32, i32* %191, align 8
  %193 = and i32 %192, %189
  store i32 %193, i32* %191, align 8
  br label %194

194:                                              ; preds = %187, %181
  br label %195

195:                                              ; preds = %194, %162, %157
  %196 = load i32, i32* %11, align 4
  %197 = load i32, i32* @IFCAP_VLAN_HWTSO, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %213

200:                                              ; preds = %195
  %201 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %202 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @IFCAP_VLAN_HWTSO, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %213

207:                                              ; preds = %200
  %208 = load i32, i32* @IFCAP_VLAN_HWTSO, align 4
  %209 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %210 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = xor i32 %211, %208
  store i32 %212, i32* %210, align 8
  br label %213

213:                                              ; preds = %207, %200, %195
  %214 = load i32, i32* %11, align 4
  %215 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %247

218:                                              ; preds = %213
  %219 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %220 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %247

225:                                              ; preds = %218
  %226 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %227 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %228 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 8
  %230 = xor i32 %229, %226
  store i32 %230, i32* %228, align 8
  %231 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %232 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %235 = and i32 %233, %234
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %246

237:                                              ; preds = %225
  %238 = load i32, i32* @IFCAP_VLAN_HWTSO, align 4
  %239 = load i32, i32* @IFCAP_VLAN_HWCSUM, align 4
  %240 = or i32 %238, %239
  %241 = xor i32 %240, -1
  %242 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %243 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 8
  %245 = and i32 %244, %241
  store i32 %245, i32* %243, align 8
  br label %246

246:                                              ; preds = %237, %225
  store i32 1, i32* %12, align 4
  br label %247

247:                                              ; preds = %246, %218, %213
  %248 = load i32, i32* %12, align 4
  %249 = icmp sgt i32 %248, 0
  br i1 %249, label %250, label %266

250:                                              ; preds = %247
  %251 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %252 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %266

257:                                              ; preds = %250
  %258 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %259 = xor i32 %258, -1
  %260 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %261 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = and i32 %262, %259
  store i32 %263, i32* %261, align 4
  %264 = load %struct.sge_softc*, %struct.sge_softc** %7, align 8
  %265 = call i32 @sge_init_locked(%struct.sge_softc* %264)
  br label %266

266:                                              ; preds = %257, %250, %247
  %267 = load %struct.sge_softc*, %struct.sge_softc** %7, align 8
  %268 = call i32 @SGE_UNLOCK(%struct.sge_softc* %267)
  %269 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %270 = call i32 @VLAN_CAPABILITIES(%struct.ifnet* %269)
  br label %302

271:                                              ; preds = %3, %3
  %272 = load %struct.sge_softc*, %struct.sge_softc** %7, align 8
  %273 = call i32 @SGE_LOCK(%struct.sge_softc* %272)
  %274 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %275 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %278 = and i32 %276, %277
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %283

280:                                              ; preds = %271
  %281 = load %struct.sge_softc*, %struct.sge_softc** %7, align 8
  %282 = call i32 @sge_rxfilter(%struct.sge_softc* %281)
  br label %283

283:                                              ; preds = %280, %271
  %284 = load %struct.sge_softc*, %struct.sge_softc** %7, align 8
  %285 = call i32 @SGE_UNLOCK(%struct.sge_softc* %284)
  br label %302

286:                                              ; preds = %3, %3
  %287 = load %struct.sge_softc*, %struct.sge_softc** %7, align 8
  %288 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = call %struct.mii_data* @device_get_softc(i32 %289)
  store %struct.mii_data* %290, %struct.mii_data** %9, align 8
  %291 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %292 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %293 = load %struct.mii_data*, %struct.mii_data** %9, align 8
  %294 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %293, i32 0, i32 0
  %295 = load i32, i32* %5, align 4
  %296 = call i32 @ifmedia_ioctl(%struct.ifnet* %291, %struct.ifreq* %292, i32* %294, i32 %295)
  store i32 %296, i32* %10, align 4
  br label %302

297:                                              ; preds = %3
  %298 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %299 = load i32, i32* %5, align 4
  %300 = load i64, i64* %6, align 8
  %301 = call i32 @ether_ioctl(%struct.ifnet* %298, i32 %299, i64 %300)
  store i32 %301, i32* %10, align 4
  br label %302

302:                                              ; preds = %297, %286, %283, %266, %66
  %303 = load i32, i32* %10, align 4
  ret i32 %303
}

declare dso_local i32 @SGE_LOCK(%struct.sge_softc*) #1

declare dso_local i32 @sge_rxfilter(%struct.sge_softc*) #1

declare dso_local i32 @sge_init_locked(%struct.sge_softc*) #1

declare dso_local i32 @sge_stop(%struct.sge_softc*) #1

declare dso_local i32 @SGE_UNLOCK(%struct.sge_softc*) #1

declare dso_local i32 @VLAN_CAPABILITIES(%struct.ifnet*) #1

declare dso_local %struct.mii_data* @device_get_softc(i32) #1

declare dso_local i32 @ifmedia_ioctl(%struct.ifnet*, %struct.ifreq*, i32*, i32) #1

declare dso_local i32 @ether_ioctl(%struct.ifnet*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
