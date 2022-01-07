; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vge/extr_if_vge.c_vge_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vge/extr_if_vge.c_vge_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i32, i32, i32, i32, %struct.vge_softc* }
%struct.vge_softc = type { i32, i32, i32 }
%struct.ifreq = type { i32, i32 }
%struct.mii_data = type { i32 }

@ETHERMIN = common dso_local global i32 0, align 4
@VGE_JUMBO_MTU = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ETHERMTU = common dso_local global i32 0, align 4
@VGE_FLAG_JUMBO = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@IFCAP_TXCSUM = common dso_local global i32 0, align 4
@VGE_CSUM_FEATURES = common dso_local global i32 0, align 4
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@IFCAP_WOL_UCAST = common dso_local global i32 0, align 4
@IFCAP_WOL_MCAST = common dso_local global i32 0, align 4
@IFCAP_WOL_MAGIC = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWCSUM = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTAGGING = common dso_local global i32 0, align 4
@IFCAP_POLLING = common dso_local global i32 0, align 4
@VGE_CR3_INT_GMSK = common dso_local global i32 0, align 4
@VGE_CRS3 = common dso_local global i32 0, align 4
@VGE_IMR = common dso_local global i32 0, align 4
@VGE_INTRS = common dso_local global i32 0, align 4
@VGE_INTRS_POLLING = common dso_local global i32 0, align 4
@VGE_ISR = common dso_local global i32 0, align 4
@vge_poll = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i64)* @vge_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vge_ioctl(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.vge_softc*, align 8
  %8 = alloca %struct.ifreq*, align 8
  %9 = alloca %struct.mii_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %12 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %13 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %12, i32 0, i32 6
  %14 = load %struct.vge_softc*, %struct.vge_softc** %13, align 8
  store %struct.vge_softc* %14, %struct.vge_softc** %7, align 8
  %15 = load i64, i64* %6, align 8
  %16 = inttoptr i64 %15 to %struct.ifreq*
  store %struct.ifreq* %16, %struct.ifreq** %8, align 8
  store i32 0, i32* %10, align 4
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %311 [
    i32 128, label %18
    i32 130, label %68
    i32 134, label %123
    i32 133, label %123
    i32 132, label %138
    i32 129, label %138
    i32 131, label %149
  ]

18:                                               ; preds = %3
  %19 = load %struct.vge_softc*, %struct.vge_softc** %7, align 8
  %20 = call i32 @VGE_LOCK(%struct.vge_softc* %19)
  %21 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %22 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @ETHERMIN, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %18
  %27 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %28 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @VGE_JUMBO_MTU, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26, %18
  %33 = load i32, i32* @EINVAL, align 4
  store i32 %33, i32* %10, align 4
  br label %65

34:                                               ; preds = %26
  %35 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %36 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %39 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %37, %40
  br i1 %41, label %42, label %64

42:                                               ; preds = %34
  %43 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %44 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @ETHERMTU, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %42
  %49 = load %struct.vge_softc*, %struct.vge_softc** %7, align 8
  %50 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @VGE_FLAG_JUMBO, align 4
  %53 = and i32 %51, %52
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load i32, i32* @EINVAL, align 4
  store i32 %56, i32* %10, align 4
  br label %63

57:                                               ; preds = %48, %42
  %58 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %59 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %62 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %61, i32 0, i32 5
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %57, %55
  br label %64

64:                                               ; preds = %63, %34
  br label %65

65:                                               ; preds = %64, %32
  %66 = load %struct.vge_softc*, %struct.vge_softc** %7, align 8
  %67 = call i32 @VGE_UNLOCK(%struct.vge_softc* %66)
  br label %316

68:                                               ; preds = %3
  %69 = load %struct.vge_softc*, %struct.vge_softc** %7, align 8
  %70 = call i32 @VGE_LOCK(%struct.vge_softc* %69)
  %71 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %72 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @IFF_UP, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %104

77:                                               ; preds = %68
  %78 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %79 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %100

84:                                               ; preds = %77
  %85 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %86 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.vge_softc*, %struct.vge_softc** %7, align 8
  %89 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = xor i32 %87, %90
  %92 = load i32, i32* @IFF_PROMISC, align 4
  %93 = load i32, i32* @IFF_ALLMULTI, align 4
  %94 = or i32 %92, %93
  %95 = and i32 %91, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %84
  %98 = load %struct.vge_softc*, %struct.vge_softc** %7, align 8
  %99 = call i32 @vge_rxfilter(%struct.vge_softc* %98)
  br label %103

100:                                              ; preds = %84, %77
  %101 = load %struct.vge_softc*, %struct.vge_softc** %7, align 8
  %102 = call i32 @vge_init_locked(%struct.vge_softc* %101)
  br label %103

103:                                              ; preds = %100, %97
  br label %115

104:                                              ; preds = %68
  %105 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %106 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %104
  %112 = load %struct.vge_softc*, %struct.vge_softc** %7, align 8
  %113 = call i32 @vge_stop(%struct.vge_softc* %112)
  br label %114

114:                                              ; preds = %111, %104
  br label %115

115:                                              ; preds = %114, %103
  %116 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %117 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.vge_softc*, %struct.vge_softc** %7, align 8
  %120 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 4
  %121 = load %struct.vge_softc*, %struct.vge_softc** %7, align 8
  %122 = call i32 @VGE_UNLOCK(%struct.vge_softc* %121)
  br label %316

123:                                              ; preds = %3, %3
  %124 = load %struct.vge_softc*, %struct.vge_softc** %7, align 8
  %125 = call i32 @VGE_LOCK(%struct.vge_softc* %124)
  %126 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %127 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %123
  %133 = load %struct.vge_softc*, %struct.vge_softc** %7, align 8
  %134 = call i32 @vge_rxfilter(%struct.vge_softc* %133)
  br label %135

135:                                              ; preds = %132, %123
  %136 = load %struct.vge_softc*, %struct.vge_softc** %7, align 8
  %137 = call i32 @VGE_UNLOCK(%struct.vge_softc* %136)
  br label %316

138:                                              ; preds = %3, %3
  %139 = load %struct.vge_softc*, %struct.vge_softc** %7, align 8
  %140 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = call %struct.mii_data* @device_get_softc(i32 %141)
  store %struct.mii_data* %142, %struct.mii_data** %9, align 8
  %143 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %144 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %145 = load %struct.mii_data*, %struct.mii_data** %9, align 8
  %146 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %145, i32 0, i32 0
  %147 = load i32, i32* %5, align 4
  %148 = call i32 @ifmedia_ioctl(%struct.ifnet* %143, %struct.ifreq* %144, i32* %146, i32 %147)
  store i32 %148, i32* %10, align 4
  br label %316

149:                                              ; preds = %3
  %150 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %151 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %154 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = xor i32 %152, %155
  store i32 %156, i32* %11, align 4
  %157 = load %struct.vge_softc*, %struct.vge_softc** %7, align 8
  %158 = call i32 @VGE_LOCK(%struct.vge_softc* %157)
  %159 = load i32, i32* %11, align 4
  %160 = load i32, i32* @IFCAP_TXCSUM, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %196

163:                                              ; preds = %149
  %164 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %165 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @IFCAP_TXCSUM, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %196

170:                                              ; preds = %163
  %171 = load i32, i32* @IFCAP_TXCSUM, align 4
  %172 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %173 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = xor i32 %174, %171
  store i32 %175, i32* %173, align 8
  %176 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %177 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @IFCAP_TXCSUM, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %188

182:                                              ; preds = %170
  %183 = load i32, i32* @VGE_CSUM_FEATURES, align 4
  %184 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %185 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %184, i32 0, i32 4
  %186 = load i32, i32* %185, align 8
  %187 = or i32 %186, %183
  store i32 %187, i32* %185, align 8
  br label %195

188:                                              ; preds = %170
  %189 = load i32, i32* @VGE_CSUM_FEATURES, align 4
  %190 = xor i32 %189, -1
  %191 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %192 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %191, i32 0, i32 4
  %193 = load i32, i32* %192, align 8
  %194 = and i32 %193, %190
  store i32 %194, i32* %192, align 8
  br label %195

195:                                              ; preds = %188, %182
  br label %196

196:                                              ; preds = %195, %163, %149
  %197 = load i32, i32* %11, align 4
  %198 = load i32, i32* @IFCAP_RXCSUM, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %214

201:                                              ; preds = %196
  %202 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %203 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* @IFCAP_RXCSUM, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %214

208:                                              ; preds = %201
  %209 = load i32, i32* @IFCAP_RXCSUM, align 4
  %210 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %211 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = xor i32 %212, %209
  store i32 %213, i32* %211, align 8
  br label %214

214:                                              ; preds = %208, %201, %196
  %215 = load i32, i32* %11, align 4
  %216 = load i32, i32* @IFCAP_WOL_UCAST, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %232

219:                                              ; preds = %214
  %220 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %221 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* @IFCAP_WOL_UCAST, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %232

226:                                              ; preds = %219
  %227 = load i32, i32* @IFCAP_WOL_UCAST, align 4
  %228 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %229 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 8
  %231 = xor i32 %230, %227
  store i32 %231, i32* %229, align 8
  br label %232

232:                                              ; preds = %226, %219, %214
  %233 = load i32, i32* %11, align 4
  %234 = load i32, i32* @IFCAP_WOL_MCAST, align 4
  %235 = and i32 %233, %234
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %250

237:                                              ; preds = %232
  %238 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %239 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* @IFCAP_WOL_MCAST, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %250

244:                                              ; preds = %237
  %245 = load i32, i32* @IFCAP_WOL_MCAST, align 4
  %246 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %247 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 8
  %249 = xor i32 %248, %245
  store i32 %249, i32* %247, align 8
  br label %250

250:                                              ; preds = %244, %237, %232
  %251 = load i32, i32* %11, align 4
  %252 = load i32, i32* @IFCAP_WOL_MAGIC, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %268

255:                                              ; preds = %250
  %256 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %257 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %256, i32 0, i32 3
  %258 = load i32, i32* %257, align 4
  %259 = load i32, i32* @IFCAP_WOL_MAGIC, align 4
  %260 = and i32 %258, %259
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %268

262:                                              ; preds = %255
  %263 = load i32, i32* @IFCAP_WOL_MAGIC, align 4
  %264 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %265 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 8
  %267 = xor i32 %266, %263
  store i32 %267, i32* %265, align 8
  br label %268

268:                                              ; preds = %262, %255, %250
  %269 = load i32, i32* %11, align 4
  %270 = load i32, i32* @IFCAP_VLAN_HWCSUM, align 4
  %271 = and i32 %269, %270
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %286

273:                                              ; preds = %268
  %274 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %275 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %274, i32 0, i32 3
  %276 = load i32, i32* %275, align 4
  %277 = load i32, i32* @IFCAP_VLAN_HWCSUM, align 4
  %278 = and i32 %276, %277
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %286

280:                                              ; preds = %273
  %281 = load i32, i32* @IFCAP_VLAN_HWCSUM, align 4
  %282 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %283 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %282, i32 0, i32 2
  %284 = load i32, i32* %283, align 8
  %285 = xor i32 %284, %281
  store i32 %285, i32* %283, align 8
  br label %286

286:                                              ; preds = %280, %273, %268
  %287 = load i32, i32* %11, align 4
  %288 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %289 = and i32 %287, %288
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %306

291:                                              ; preds = %286
  %292 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %293 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %294 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %293, i32 0, i32 3
  %295 = load i32, i32* %294, align 4
  %296 = and i32 %292, %295
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %306

298:                                              ; preds = %291
  %299 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %300 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %301 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %300, i32 0, i32 2
  %302 = load i32, i32* %301, align 8
  %303 = xor i32 %302, %299
  store i32 %303, i32* %301, align 8
  %304 = load %struct.vge_softc*, %struct.vge_softc** %7, align 8
  %305 = call i32 @vge_setvlan(%struct.vge_softc* %304)
  br label %306

306:                                              ; preds = %298, %291, %286
  %307 = load %struct.vge_softc*, %struct.vge_softc** %7, align 8
  %308 = call i32 @VGE_UNLOCK(%struct.vge_softc* %307)
  %309 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %310 = call i32 @VLAN_CAPABILITIES(%struct.ifnet* %309)
  br label %316

311:                                              ; preds = %3
  %312 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %313 = load i32, i32* %5, align 4
  %314 = load i64, i64* %6, align 8
  %315 = call i32 @ether_ioctl(%struct.ifnet* %312, i32 %313, i64 %314)
  store i32 %315, i32* %10, align 4
  br label %316

316:                                              ; preds = %311, %306, %138, %135, %115, %65
  %317 = load i32, i32* %10, align 4
  ret i32 %317
}

declare dso_local i32 @VGE_LOCK(%struct.vge_softc*) #1

declare dso_local i32 @VGE_UNLOCK(%struct.vge_softc*) #1

declare dso_local i32 @vge_rxfilter(%struct.vge_softc*) #1

declare dso_local i32 @vge_init_locked(%struct.vge_softc*) #1

declare dso_local i32 @vge_stop(%struct.vge_softc*) #1

declare dso_local %struct.mii_data* @device_get_softc(i32) #1

declare dso_local i32 @ifmedia_ioctl(%struct.ifnet*, %struct.ifreq*, i32*, i32) #1

declare dso_local i32 @vge_setvlan(%struct.vge_softc*) #1

declare dso_local i32 @VLAN_CAPABILITIES(%struct.ifnet*) #1

declare dso_local i32 @ether_ioctl(%struct.ifnet*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
