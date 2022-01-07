; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nge/extr_if_nge.c_nge_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nge/extr_if_nge.c_nge_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i32, i32, i32, i32, %struct.nge_softc* }
%struct.nge_softc = type { i32, i32, i32 }
%struct.ifreq = type { i32, i32 }
%struct.mii_data = type { i32 }

@ETHERMIN = common dso_local global i32 0, align 4
@NGE_JUMBO_MTU = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IFCAP_TXCSUM = common dso_local global i32 0, align 4
@NGE_CSUM_FEATURES = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@NGE_FLAG_DETACH = common dso_local global i32 0, align 4
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@IFCAP_WOL = common dso_local global i32 0, align 4
@IFCAP_WOL_UCAST = common dso_local global i32 0, align 4
@IFCAP_WOL_MCAST = common dso_local global i32 0, align 4
@IFCAP_WOL_MAGIC = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWCSUM = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTAGGING = common dso_local global i32 0, align 4
@NGE_VLAN_IP_RXCTL = common dso_local global i32 0, align 4
@NGE_VIPRXCTL_TAG_STRIP_ENB = common dso_local global i32 0, align 4
@IFCAP_POLLING = common dso_local global i32 0, align 4
@NGE_IER = common dso_local global i32 0, align 4
@nge_poll = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i64)* @nge_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nge_ioctl(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.nge_softc*, align 8
  %8 = alloca %struct.ifreq*, align 8
  %9 = alloca %struct.mii_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %12 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %13 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %12, i32 0, i32 6
  %14 = load %struct.nge_softc*, %struct.nge_softc** %13, align 8
  store %struct.nge_softc* %14, %struct.nge_softc** %7, align 8
  %15 = load i64, i64* %6, align 8
  %16 = inttoptr i64 %15 to %struct.ifreq*
  store %struct.ifreq* %16, %struct.ifreq** %8, align 8
  store i32 0, i32* %10, align 4
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %369 [
    i32 128, label %18
    i32 130, label %74
    i32 134, label %138
    i32 133, label %138
    i32 132, label %153
    i32 129, label %153
    i32 131, label %164
  ]

18:                                               ; preds = %3
  %19 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %20 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ETHERMIN, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %18
  %25 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %26 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @NGE_JUMBO_MTU, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24, %18
  %31 = load i32, i32* @EINVAL, align 4
  store i32 %31, i32* %10, align 4
  br label %73

32:                                               ; preds = %24
  %33 = load %struct.nge_softc*, %struct.nge_softc** %7, align 8
  %34 = call i32 @NGE_LOCK(%struct.nge_softc* %33)
  %35 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %36 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %39 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %41 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp sge i32 %42, 8152
  br i1 %43, label %44, label %57

44:                                               ; preds = %32
  %45 = load i32, i32* @IFCAP_TXCSUM, align 4
  %46 = xor i32 %45, -1
  %47 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %48 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load i32, i32* @NGE_CSUM_FEATURES, align 4
  %52 = xor i32 %51, -1
  %53 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %54 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, %52
  store i32 %56, i32* %54, align 4
  br label %68

57:                                               ; preds = %32
  %58 = load i32, i32* @IFCAP_TXCSUM, align 4
  %59 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %60 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  %63 = load i32, i32* @NGE_CSUM_FEATURES, align 4
  %64 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %65 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %57, %44
  %69 = load %struct.nge_softc*, %struct.nge_softc** %7, align 8
  %70 = call i32 @NGE_UNLOCK(%struct.nge_softc* %69)
  %71 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %72 = call i32 @VLAN_CAPABILITIES(%struct.ifnet* %71)
  br label %73

73:                                               ; preds = %68, %30
  br label %374

74:                                               ; preds = %3
  %75 = load %struct.nge_softc*, %struct.nge_softc** %7, align 8
  %76 = call i32 @NGE_LOCK(%struct.nge_softc* %75)
  %77 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %78 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @IFF_UP, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %119

83:                                               ; preds = %74
  %84 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %85 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %107

90:                                               ; preds = %83
  %91 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %92 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.nge_softc*, %struct.nge_softc** %7, align 8
  %95 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = xor i32 %93, %96
  %98 = load i32, i32* @IFF_PROMISC, align 4
  %99 = load i32, i32* @IFF_ALLMULTI, align 4
  %100 = or i32 %98, %99
  %101 = and i32 %97, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %90
  %104 = load %struct.nge_softc*, %struct.nge_softc** %7, align 8
  %105 = call i32 @nge_rxfilter(%struct.nge_softc* %104)
  br label %106

106:                                              ; preds = %103, %90
  br label %118

107:                                              ; preds = %83
  %108 = load %struct.nge_softc*, %struct.nge_softc** %7, align 8
  %109 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @NGE_FLAG_DETACH, align 4
  %112 = and i32 %110, %111
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %107
  %115 = load %struct.nge_softc*, %struct.nge_softc** %7, align 8
  %116 = call i32 @nge_init_locked(%struct.nge_softc* %115)
  br label %117

117:                                              ; preds = %114, %107
  br label %118

118:                                              ; preds = %117, %106
  br label %130

119:                                              ; preds = %74
  %120 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %121 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %119
  %127 = load %struct.nge_softc*, %struct.nge_softc** %7, align 8
  %128 = call i32 @nge_stop(%struct.nge_softc* %127)
  br label %129

129:                                              ; preds = %126, %119
  br label %130

130:                                              ; preds = %129, %118
  %131 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %132 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.nge_softc*, %struct.nge_softc** %7, align 8
  %135 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 4
  %136 = load %struct.nge_softc*, %struct.nge_softc** %7, align 8
  %137 = call i32 @NGE_UNLOCK(%struct.nge_softc* %136)
  store i32 0, i32* %10, align 4
  br label %374

138:                                              ; preds = %3, %3
  %139 = load %struct.nge_softc*, %struct.nge_softc** %7, align 8
  %140 = call i32 @NGE_LOCK(%struct.nge_softc* %139)
  %141 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %142 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %138
  %148 = load %struct.nge_softc*, %struct.nge_softc** %7, align 8
  %149 = call i32 @nge_rxfilter(%struct.nge_softc* %148)
  br label %150

150:                                              ; preds = %147, %138
  %151 = load %struct.nge_softc*, %struct.nge_softc** %7, align 8
  %152 = call i32 @NGE_UNLOCK(%struct.nge_softc* %151)
  br label %374

153:                                              ; preds = %3, %3
  %154 = load %struct.nge_softc*, %struct.nge_softc** %7, align 8
  %155 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = call %struct.mii_data* @device_get_softc(i32 %156)
  store %struct.mii_data* %157, %struct.mii_data** %9, align 8
  %158 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %159 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %160 = load %struct.mii_data*, %struct.mii_data** %9, align 8
  %161 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %160, i32 0, i32 0
  %162 = load i32, i32* %5, align 4
  %163 = call i32 @ifmedia_ioctl(%struct.ifnet* %158, %struct.ifreq* %159, i32* %161, i32 %162)
  store i32 %163, i32* %10, align 4
  br label %374

164:                                              ; preds = %3
  %165 = load %struct.nge_softc*, %struct.nge_softc** %7, align 8
  %166 = call i32 @NGE_LOCK(%struct.nge_softc* %165)
  %167 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %168 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %171 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = xor i32 %169, %172
  store i32 %173, i32* %11, align 4
  %174 = load i32, i32* %11, align 4
  %175 = load i32, i32* @IFCAP_TXCSUM, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %211

178:                                              ; preds = %164
  %179 = load i32, i32* @IFCAP_TXCSUM, align 4
  %180 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %181 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 8
  %183 = and i32 %179, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %211

185:                                              ; preds = %178
  %186 = load i32, i32* @IFCAP_TXCSUM, align 4
  %187 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %188 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = xor i32 %189, %186
  store i32 %190, i32* %188, align 4
  %191 = load i32, i32* @IFCAP_TXCSUM, align 4
  %192 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %193 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = and i32 %191, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %203

197:                                              ; preds = %185
  %198 = load i32, i32* @NGE_CSUM_FEATURES, align 4
  %199 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %200 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %199, i32 0, i32 5
  %201 = load i32, i32* %200, align 4
  %202 = or i32 %201, %198
  store i32 %202, i32* %200, align 4
  br label %210

203:                                              ; preds = %185
  %204 = load i32, i32* @NGE_CSUM_FEATURES, align 4
  %205 = xor i32 %204, -1
  %206 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %207 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %206, i32 0, i32 5
  %208 = load i32, i32* %207, align 4
  %209 = and i32 %208, %205
  store i32 %209, i32* %207, align 4
  br label %210

210:                                              ; preds = %203, %197
  br label %211

211:                                              ; preds = %210, %178, %164
  %212 = load i32, i32* %11, align 4
  %213 = load i32, i32* @IFCAP_RXCSUM, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %229

216:                                              ; preds = %211
  %217 = load i32, i32* @IFCAP_RXCSUM, align 4
  %218 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %219 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %218, i32 0, i32 4
  %220 = load i32, i32* %219, align 8
  %221 = and i32 %217, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %229

223:                                              ; preds = %216
  %224 = load i32, i32* @IFCAP_RXCSUM, align 4
  %225 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %226 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = xor i32 %227, %224
  store i32 %228, i32* %226, align 4
  br label %229

229:                                              ; preds = %223, %216, %211
  %230 = load i32, i32* %11, align 4
  %231 = load i32, i32* @IFCAP_WOL, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %275

234:                                              ; preds = %229
  %235 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %236 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %235, i32 0, i32 4
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* @IFCAP_WOL, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %275

241:                                              ; preds = %234
  %242 = load i32, i32* %11, align 4
  %243 = load i32, i32* @IFCAP_WOL_UCAST, align 4
  %244 = and i32 %242, %243
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %252

246:                                              ; preds = %241
  %247 = load i32, i32* @IFCAP_WOL_UCAST, align 4
  %248 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %249 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = xor i32 %250, %247
  store i32 %251, i32* %249, align 4
  br label %252

252:                                              ; preds = %246, %241
  %253 = load i32, i32* %11, align 4
  %254 = load i32, i32* @IFCAP_WOL_MCAST, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %263

257:                                              ; preds = %252
  %258 = load i32, i32* @IFCAP_WOL_MCAST, align 4
  %259 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %260 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = xor i32 %261, %258
  store i32 %262, i32* %260, align 4
  br label %263

263:                                              ; preds = %257, %252
  %264 = load i32, i32* %11, align 4
  %265 = load i32, i32* @IFCAP_WOL_MAGIC, align 4
  %266 = and i32 %264, %265
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %274

268:                                              ; preds = %263
  %269 = load i32, i32* @IFCAP_WOL_MAGIC, align 4
  %270 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %271 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = xor i32 %272, %269
  store i32 %273, i32* %271, align 4
  br label %274

274:                                              ; preds = %268, %263
  br label %275

275:                                              ; preds = %274, %234, %229
  %276 = load i32, i32* %11, align 4
  %277 = load i32, i32* @IFCAP_VLAN_HWCSUM, align 4
  %278 = and i32 %276, %277
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %293

280:                                              ; preds = %275
  %281 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %282 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %281, i32 0, i32 4
  %283 = load i32, i32* %282, align 8
  %284 = load i32, i32* @IFCAP_VLAN_HWCSUM, align 4
  %285 = and i32 %283, %284
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %293

287:                                              ; preds = %280
  %288 = load i32, i32* @IFCAP_VLAN_HWCSUM, align 4
  %289 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %290 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = xor i32 %291, %288
  store i32 %292, i32* %290, align 4
  br label %293

293:                                              ; preds = %287, %280, %275
  %294 = load i32, i32* %11, align 4
  %295 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %296 = and i32 %294, %295
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %336

298:                                              ; preds = %293
  %299 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %300 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %299, i32 0, i32 4
  %301 = load i32, i32* %300, align 8
  %302 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %303 = and i32 %301, %302
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %336

305:                                              ; preds = %298
  %306 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %307 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %308 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 4
  %310 = xor i32 %309, %306
  store i32 %310, i32* %308, align 4
  %311 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %312 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %311, i32 0, i32 3
  %313 = load i32, i32* %312, align 4
  %314 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %315 = and i32 %313, %314
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %335

317:                                              ; preds = %305
  %318 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %319 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 4
  %321 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %322 = and i32 %320, %321
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %329

324:                                              ; preds = %317
  %325 = load %struct.nge_softc*, %struct.nge_softc** %7, align 8
  %326 = load i32, i32* @NGE_VLAN_IP_RXCTL, align 4
  %327 = load i32, i32* @NGE_VIPRXCTL_TAG_STRIP_ENB, align 4
  %328 = call i32 @NGE_SETBIT(%struct.nge_softc* %325, i32 %326, i32 %327)
  br label %334

329:                                              ; preds = %317
  %330 = load %struct.nge_softc*, %struct.nge_softc** %7, align 8
  %331 = load i32, i32* @NGE_VLAN_IP_RXCTL, align 4
  %332 = load i32, i32* @NGE_VIPRXCTL_TAG_STRIP_ENB, align 4
  %333 = call i32 @NGE_CLRBIT(%struct.nge_softc* %330, i32 %331, i32 %332)
  br label %334

334:                                              ; preds = %329, %324
  br label %335

335:                                              ; preds = %334, %305
  br label %336

336:                                              ; preds = %335, %298, %293
  %337 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %338 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %337, i32 0, i32 1
  %339 = load i32, i32* %338, align 4
  %340 = load i32, i32* @IFCAP_TXCSUM, align 4
  %341 = and i32 %339, %340
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %343, label %350

343:                                              ; preds = %336
  %344 = load i32, i32* @IFCAP_VLAN_HWCSUM, align 4
  %345 = xor i32 %344, -1
  %346 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %347 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %346, i32 0, i32 1
  %348 = load i32, i32* %347, align 4
  %349 = and i32 %348, %345
  store i32 %349, i32* %347, align 4
  br label %350

350:                                              ; preds = %343, %336
  %351 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %352 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %351, i32 0, i32 1
  %353 = load i32, i32* %352, align 4
  %354 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %355 = and i32 %353, %354
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %357, label %364

357:                                              ; preds = %350
  %358 = load i32, i32* @IFCAP_VLAN_HWCSUM, align 4
  %359 = xor i32 %358, -1
  %360 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %361 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %360, i32 0, i32 1
  %362 = load i32, i32* %361, align 4
  %363 = and i32 %362, %359
  store i32 %363, i32* %361, align 4
  br label %364

364:                                              ; preds = %357, %350
  %365 = load %struct.nge_softc*, %struct.nge_softc** %7, align 8
  %366 = call i32 @NGE_UNLOCK(%struct.nge_softc* %365)
  %367 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %368 = call i32 @VLAN_CAPABILITIES(%struct.ifnet* %367)
  br label %374

369:                                              ; preds = %3
  %370 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %371 = load i32, i32* %5, align 4
  %372 = load i64, i64* %6, align 8
  %373 = call i32 @ether_ioctl(%struct.ifnet* %370, i32 %371, i64 %372)
  store i32 %373, i32* %10, align 4
  br label %374

374:                                              ; preds = %369, %364, %153, %150, %130, %73
  %375 = load i32, i32* %10, align 4
  ret i32 %375
}

declare dso_local i32 @NGE_LOCK(%struct.nge_softc*) #1

declare dso_local i32 @NGE_UNLOCK(%struct.nge_softc*) #1

declare dso_local i32 @VLAN_CAPABILITIES(%struct.ifnet*) #1

declare dso_local i32 @nge_rxfilter(%struct.nge_softc*) #1

declare dso_local i32 @nge_init_locked(%struct.nge_softc*) #1

declare dso_local i32 @nge_stop(%struct.nge_softc*) #1

declare dso_local %struct.mii_data* @device_get_softc(i32) #1

declare dso_local i32 @ifmedia_ioctl(%struct.ifnet*, %struct.ifreq*, i32*, i32) #1

declare dso_local i32 @NGE_SETBIT(%struct.nge_softc*, i32, i32) #1

declare dso_local i32 @NGE_CLRBIT(%struct.nge_softc*, i32, i32) #1

declare dso_local i32 @ether_ioctl(%struct.ifnet*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
