; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/age/extr_if_age.c_age_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/age/extr_if_age.c_age_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i32, i32, i32, i32, %struct.age_softc* }
%struct.age_softc = type { i32, i32, i32 }
%struct.ifreq = type { i32, i32 }
%struct.mii_data = type { i32 }

@ETHERMIN = common dso_local global i32 0, align 4
@AGE_JUMBO_MTU = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@AGE_FLAG_DETACH = common dso_local global i32 0, align 4
@IFCAP_TXCSUM = common dso_local global i32 0, align 4
@AGE_CSUM_FEATURES = common dso_local global i32 0, align 4
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@AGE_MAC_CFG = common dso_local global i32 0, align 4
@MAC_CFG_RXCSUM_ENB = common dso_local global i32 0, align 4
@IFCAP_TSO4 = common dso_local global i32 0, align 4
@CSUM_TSO = common dso_local global i32 0, align 4
@IFCAP_WOL_MCAST = common dso_local global i32 0, align 4
@IFCAP_WOL_MAGIC = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWCSUM = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTSO = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTAGGING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i64)* @age_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @age_ioctl(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.age_softc*, align 8
  %8 = alloca %struct.ifreq*, align 8
  %9 = alloca %struct.mii_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %13 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %14 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %13, i32 0, i32 6
  %15 = load %struct.age_softc*, %struct.age_softc** %14, align 8
  store %struct.age_softc* %15, %struct.age_softc** %7, align 8
  %16 = load i64, i64* %6, align 8
  %17 = inttoptr i64 %16 to %struct.ifreq*
  store %struct.ifreq* %17, %struct.ifreq** %8, align 8
  store i32 0, i32* %11, align 4
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %395 [
    i32 128, label %19
    i32 130, label %69
    i32 134, label %133
    i32 133, label %133
    i32 129, label %148
    i32 132, label %148
    i32 131, label %159
  ]

19:                                               ; preds = %3
  %20 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %21 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @ETHERMIN, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %27 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @AGE_JUMBO_MTU, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %25, %19
  %32 = load i32, i32* @EINVAL, align 4
  store i32 %32, i32* %11, align 4
  br label %68

33:                                               ; preds = %25
  %34 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %35 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %38 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %36, %39
  br i1 %40, label %41, label %67

41:                                               ; preds = %33
  %42 = load %struct.age_softc*, %struct.age_softc** %7, align 8
  %43 = call i32 @AGE_LOCK(%struct.age_softc* %42)
  %44 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %45 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %48 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 4
  %49 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %50 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %41
  %56 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %57 = xor i32 %56, -1
  %58 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %59 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = and i32 %60, %57
  store i32 %61, i32* %59, align 8
  %62 = load %struct.age_softc*, %struct.age_softc** %7, align 8
  %63 = call i32 @age_init_locked(%struct.age_softc* %62)
  br label %64

64:                                               ; preds = %55, %41
  %65 = load %struct.age_softc*, %struct.age_softc** %7, align 8
  %66 = call i32 @AGE_UNLOCK(%struct.age_softc* %65)
  br label %67

67:                                               ; preds = %64, %33
  br label %68

68:                                               ; preds = %67, %31
  br label %400

69:                                               ; preds = %3
  %70 = load %struct.age_softc*, %struct.age_softc** %7, align 8
  %71 = call i32 @AGE_LOCK(%struct.age_softc* %70)
  %72 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %73 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @IFF_UP, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %114

78:                                               ; preds = %69
  %79 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %80 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %102

85:                                               ; preds = %78
  %86 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %87 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.age_softc*, %struct.age_softc** %7, align 8
  %90 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = xor i32 %88, %91
  %93 = load i32, i32* @IFF_PROMISC, align 4
  %94 = load i32, i32* @IFF_ALLMULTI, align 4
  %95 = or i32 %93, %94
  %96 = and i32 %92, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %85
  %99 = load %struct.age_softc*, %struct.age_softc** %7, align 8
  %100 = call i32 @age_rxfilter(%struct.age_softc* %99)
  br label %101

101:                                              ; preds = %98, %85
  br label %113

102:                                              ; preds = %78
  %103 = load %struct.age_softc*, %struct.age_softc** %7, align 8
  %104 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @AGE_FLAG_DETACH, align 4
  %107 = and i32 %105, %106
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %102
  %110 = load %struct.age_softc*, %struct.age_softc** %7, align 8
  %111 = call i32 @age_init_locked(%struct.age_softc* %110)
  br label %112

112:                                              ; preds = %109, %102
  br label %113

113:                                              ; preds = %112, %101
  br label %125

114:                                              ; preds = %69
  %115 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %116 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %114
  %122 = load %struct.age_softc*, %struct.age_softc** %7, align 8
  %123 = call i32 @age_stop(%struct.age_softc* %122)
  br label %124

124:                                              ; preds = %121, %114
  br label %125

125:                                              ; preds = %124, %113
  %126 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %127 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.age_softc*, %struct.age_softc** %7, align 8
  %130 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 4
  %131 = load %struct.age_softc*, %struct.age_softc** %7, align 8
  %132 = call i32 @AGE_UNLOCK(%struct.age_softc* %131)
  br label %400

133:                                              ; preds = %3, %3
  %134 = load %struct.age_softc*, %struct.age_softc** %7, align 8
  %135 = call i32 @AGE_LOCK(%struct.age_softc* %134)
  %136 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %137 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %133
  %143 = load %struct.age_softc*, %struct.age_softc** %7, align 8
  %144 = call i32 @age_rxfilter(%struct.age_softc* %143)
  br label %145

145:                                              ; preds = %142, %133
  %146 = load %struct.age_softc*, %struct.age_softc** %7, align 8
  %147 = call i32 @AGE_UNLOCK(%struct.age_softc* %146)
  br label %400

148:                                              ; preds = %3, %3
  %149 = load %struct.age_softc*, %struct.age_softc** %7, align 8
  %150 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = call %struct.mii_data* @device_get_softc(i32 %151)
  store %struct.mii_data* %152, %struct.mii_data** %9, align 8
  %153 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %154 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %155 = load %struct.mii_data*, %struct.mii_data** %9, align 8
  %156 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %155, i32 0, i32 0
  %157 = load i32, i32* %5, align 4
  %158 = call i32 @ifmedia_ioctl(%struct.ifnet* %153, %struct.ifreq* %154, i32* %156, i32 %157)
  store i32 %158, i32* %11, align 4
  br label %400

159:                                              ; preds = %3
  %160 = load %struct.age_softc*, %struct.age_softc** %7, align 8
  %161 = call i32 @AGE_LOCK(%struct.age_softc* %160)
  %162 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %163 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %166 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = xor i32 %164, %167
  store i32 %168, i32* %12, align 4
  %169 = load i32, i32* %12, align 4
  %170 = load i32, i32* @IFCAP_TXCSUM, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %206

173:                                              ; preds = %159
  %174 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %175 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @IFCAP_TXCSUM, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %206

180:                                              ; preds = %173
  %181 = load i32, i32* @IFCAP_TXCSUM, align 4
  %182 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %183 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = xor i32 %184, %181
  store i32 %185, i32* %183, align 8
  %186 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %187 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @IFCAP_TXCSUM, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %198

192:                                              ; preds = %180
  %193 = load i32, i32* @AGE_CSUM_FEATURES, align 4
  %194 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %195 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %194, i32 0, i32 4
  %196 = load i32, i32* %195, align 8
  %197 = or i32 %196, %193
  store i32 %197, i32* %195, align 8
  br label %205

198:                                              ; preds = %180
  %199 = load i32, i32* @AGE_CSUM_FEATURES, align 4
  %200 = xor i32 %199, -1
  %201 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %202 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %201, i32 0, i32 4
  %203 = load i32, i32* %202, align 8
  %204 = and i32 %203, %200
  store i32 %204, i32* %202, align 8
  br label %205

205:                                              ; preds = %198, %192
  br label %206

206:                                              ; preds = %205, %173, %159
  %207 = load i32, i32* %12, align 4
  %208 = load i32, i32* @IFCAP_RXCSUM, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %246

211:                                              ; preds = %206
  %212 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %213 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* @IFCAP_RXCSUM, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %246

218:                                              ; preds = %211
  %219 = load i32, i32* @IFCAP_RXCSUM, align 4
  %220 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %221 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 8
  %223 = xor i32 %222, %219
  store i32 %223, i32* %221, align 8
  %224 = load %struct.age_softc*, %struct.age_softc** %7, align 8
  %225 = load i32, i32* @AGE_MAC_CFG, align 4
  %226 = call i32 @CSR_READ_4(%struct.age_softc* %224, i32 %225)
  store i32 %226, i32* %10, align 4
  %227 = load i32, i32* @MAC_CFG_RXCSUM_ENB, align 4
  %228 = xor i32 %227, -1
  %229 = load i32, i32* %10, align 4
  %230 = and i32 %229, %228
  store i32 %230, i32* %10, align 4
  %231 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %232 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* @IFCAP_RXCSUM, align 4
  %235 = and i32 %233, %234
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %241

237:                                              ; preds = %218
  %238 = load i32, i32* @MAC_CFG_RXCSUM_ENB, align 4
  %239 = load i32, i32* %10, align 4
  %240 = or i32 %239, %238
  store i32 %240, i32* %10, align 4
  br label %241

241:                                              ; preds = %237, %218
  %242 = load %struct.age_softc*, %struct.age_softc** %7, align 8
  %243 = load i32, i32* @AGE_MAC_CFG, align 4
  %244 = load i32, i32* %10, align 4
  %245 = call i32 @CSR_WRITE_4(%struct.age_softc* %242, i32 %243, i32 %244)
  br label %246

246:                                              ; preds = %241, %211, %206
  %247 = load i32, i32* %12, align 4
  %248 = load i32, i32* @IFCAP_TSO4, align 4
  %249 = and i32 %247, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %284

251:                                              ; preds = %246
  %252 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %253 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %252, i32 0, i32 3
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* @IFCAP_TSO4, align 4
  %256 = and i32 %254, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %284

258:                                              ; preds = %251
  %259 = load i32, i32* @IFCAP_TSO4, align 4
  %260 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %261 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 8
  %263 = xor i32 %262, %259
  store i32 %263, i32* %261, align 8
  %264 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %265 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 8
  %267 = load i32, i32* @IFCAP_TSO4, align 4
  %268 = and i32 %266, %267
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %276

270:                                              ; preds = %258
  %271 = load i32, i32* @CSUM_TSO, align 4
  %272 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %273 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %272, i32 0, i32 4
  %274 = load i32, i32* %273, align 8
  %275 = or i32 %274, %271
  store i32 %275, i32* %273, align 8
  br label %283

276:                                              ; preds = %258
  %277 = load i32, i32* @CSUM_TSO, align 4
  %278 = xor i32 %277, -1
  %279 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %280 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %279, i32 0, i32 4
  %281 = load i32, i32* %280, align 8
  %282 = and i32 %281, %278
  store i32 %282, i32* %280, align 8
  br label %283

283:                                              ; preds = %276, %270
  br label %284

284:                                              ; preds = %283, %251, %246
  %285 = load i32, i32* %12, align 4
  %286 = load i32, i32* @IFCAP_WOL_MCAST, align 4
  %287 = and i32 %285, %286
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %302

289:                                              ; preds = %284
  %290 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %291 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %290, i32 0, i32 3
  %292 = load i32, i32* %291, align 4
  %293 = load i32, i32* @IFCAP_WOL_MCAST, align 4
  %294 = and i32 %292, %293
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %302

296:                                              ; preds = %289
  %297 = load i32, i32* @IFCAP_WOL_MCAST, align 4
  %298 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %299 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %298, i32 0, i32 2
  %300 = load i32, i32* %299, align 8
  %301 = xor i32 %300, %297
  store i32 %301, i32* %299, align 8
  br label %302

302:                                              ; preds = %296, %289, %284
  %303 = load i32, i32* %12, align 4
  %304 = load i32, i32* @IFCAP_WOL_MAGIC, align 4
  %305 = and i32 %303, %304
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %320

307:                                              ; preds = %302
  %308 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %309 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %308, i32 0, i32 3
  %310 = load i32, i32* %309, align 4
  %311 = load i32, i32* @IFCAP_WOL_MAGIC, align 4
  %312 = and i32 %310, %311
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %320

314:                                              ; preds = %307
  %315 = load i32, i32* @IFCAP_WOL_MAGIC, align 4
  %316 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %317 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %316, i32 0, i32 2
  %318 = load i32, i32* %317, align 8
  %319 = xor i32 %318, %315
  store i32 %319, i32* %317, align 8
  br label %320

320:                                              ; preds = %314, %307, %302
  %321 = load i32, i32* %12, align 4
  %322 = load i32, i32* @IFCAP_VLAN_HWCSUM, align 4
  %323 = and i32 %321, %322
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %338

325:                                              ; preds = %320
  %326 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %327 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %326, i32 0, i32 3
  %328 = load i32, i32* %327, align 4
  %329 = load i32, i32* @IFCAP_VLAN_HWCSUM, align 4
  %330 = and i32 %328, %329
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %338

332:                                              ; preds = %325
  %333 = load i32, i32* @IFCAP_VLAN_HWCSUM, align 4
  %334 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %335 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %334, i32 0, i32 2
  %336 = load i32, i32* %335, align 8
  %337 = xor i32 %336, %333
  store i32 %337, i32* %335, align 8
  br label %338

338:                                              ; preds = %332, %325, %320
  %339 = load i32, i32* %12, align 4
  %340 = load i32, i32* @IFCAP_VLAN_HWTSO, align 4
  %341 = and i32 %339, %340
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %356

343:                                              ; preds = %338
  %344 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %345 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %344, i32 0, i32 3
  %346 = load i32, i32* %345, align 4
  %347 = load i32, i32* @IFCAP_VLAN_HWTSO, align 4
  %348 = and i32 %346, %347
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %356

350:                                              ; preds = %343
  %351 = load i32, i32* @IFCAP_VLAN_HWTSO, align 4
  %352 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %353 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %352, i32 0, i32 2
  %354 = load i32, i32* %353, align 8
  %355 = xor i32 %354, %351
  store i32 %355, i32* %353, align 8
  br label %356

356:                                              ; preds = %350, %343, %338
  %357 = load i32, i32* %12, align 4
  %358 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %359 = and i32 %357, %358
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %390

361:                                              ; preds = %356
  %362 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %363 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %362, i32 0, i32 3
  %364 = load i32, i32* %363, align 4
  %365 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %366 = and i32 %364, %365
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %390

368:                                              ; preds = %361
  %369 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %370 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %371 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %370, i32 0, i32 2
  %372 = load i32, i32* %371, align 8
  %373 = xor i32 %372, %369
  store i32 %373, i32* %371, align 8
  %374 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %375 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %374, i32 0, i32 2
  %376 = load i32, i32* %375, align 8
  %377 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %378 = and i32 %376, %377
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %380, label %387

380:                                              ; preds = %368
  %381 = load i32, i32* @IFCAP_VLAN_HWTSO, align 4
  %382 = xor i32 %381, -1
  %383 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %384 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %383, i32 0, i32 2
  %385 = load i32, i32* %384, align 8
  %386 = and i32 %385, %382
  store i32 %386, i32* %384, align 8
  br label %387

387:                                              ; preds = %380, %368
  %388 = load %struct.age_softc*, %struct.age_softc** %7, align 8
  %389 = call i32 @age_rxvlan(%struct.age_softc* %388)
  br label %390

390:                                              ; preds = %387, %361, %356
  %391 = load %struct.age_softc*, %struct.age_softc** %7, align 8
  %392 = call i32 @AGE_UNLOCK(%struct.age_softc* %391)
  %393 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %394 = call i32 @VLAN_CAPABILITIES(%struct.ifnet* %393)
  br label %400

395:                                              ; preds = %3
  %396 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %397 = load i32, i32* %5, align 4
  %398 = load i64, i64* %6, align 8
  %399 = call i32 @ether_ioctl(%struct.ifnet* %396, i32 %397, i64 %398)
  store i32 %399, i32* %11, align 4
  br label %400

400:                                              ; preds = %395, %390, %148, %145, %125, %68
  %401 = load i32, i32* %11, align 4
  ret i32 %401
}

declare dso_local i32 @AGE_LOCK(%struct.age_softc*) #1

declare dso_local i32 @age_init_locked(%struct.age_softc*) #1

declare dso_local i32 @AGE_UNLOCK(%struct.age_softc*) #1

declare dso_local i32 @age_rxfilter(%struct.age_softc*) #1

declare dso_local i32 @age_stop(%struct.age_softc*) #1

declare dso_local %struct.mii_data* @device_get_softc(i32) #1

declare dso_local i32 @ifmedia_ioctl(%struct.ifnet*, %struct.ifreq*, i32*, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.age_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.age_softc*, i32, i32) #1

declare dso_local i32 @age_rxvlan(%struct.age_softc*) #1

declare dso_local i32 @VLAN_CAPABILITIES(%struct.ifnet*) #1

declare dso_local i32 @ether_ioctl(%struct.ifnet*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
