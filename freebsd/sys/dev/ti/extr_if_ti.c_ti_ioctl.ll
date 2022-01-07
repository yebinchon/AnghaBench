; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ti/extr_if_ti.c_ti_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ti/extr_if_ti.c_ti_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i32, i32, i32, i32, %struct.ti_softc* }
%struct.ti_softc = type { i32, i32 }
%struct.ifreq = type { i32, i32 }
%struct.ti_cmd_desc = type { i32 }

@ETHERMIN = common dso_local global i32 0, align 4
@TI_JUMBO_MTU = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@TI_CMD_SET_PROMISC_MODE = common dso_local global i32 0, align 4
@TI_CMD_CODE_PROMISC_ENB = common dso_local global i32 0, align 4
@TI_CMD_CODE_PROMISC_DIS = common dso_local global i32 0, align 4
@IFCAP_TXCSUM = common dso_local global i32 0, align 4
@TI_CSUM_FEATURES = common dso_local global i32 0, align 4
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTAGGING = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWCSUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i64)* @ti_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_ioctl(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.ti_softc*, align 8
  %8 = alloca %struct.ifreq*, align 8
  %9 = alloca %struct.ti_cmd_desc, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %12 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %13 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %12, i32 0, i32 6
  %14 = load %struct.ti_softc*, %struct.ti_softc** %13, align 8
  store %struct.ti_softc* %14, %struct.ti_softc** %7, align 8
  %15 = load i64, i64* %6, align 8
  %16 = inttoptr i64 %15 to %struct.ifreq*
  store %struct.ifreq* %16, %struct.ifreq** %8, align 8
  store i32 0, i32* %11, align 4
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %296 [
    i32 128, label %18
    i32 130, label %59
    i32 134, label %142
    i32 133, label %142
    i32 129, label %157
    i32 132, label %157
    i32 131, label %164
  ]

18:                                               ; preds = %3
  %19 = load %struct.ti_softc*, %struct.ti_softc** %7, align 8
  %20 = call i32 @TI_LOCK(%struct.ti_softc* %19)
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
  %30 = load i32, i32* @TI_JUMBO_MTU, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26, %18
  %33 = load i32, i32* @EINVAL, align 4
  store i32 %33, i32* %11, align 4
  br label %56

34:                                               ; preds = %26
  %35 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %36 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %39 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 4
  %40 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %41 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %34
  %47 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %48 = xor i32 %47, -1
  %49 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %50 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = and i32 %51, %48
  store i32 %52, i32* %50, align 8
  %53 = load %struct.ti_softc*, %struct.ti_softc** %7, align 8
  %54 = call i32 @ti_init_locked(%struct.ti_softc* %53)
  br label %55

55:                                               ; preds = %46, %34
  br label %56

56:                                               ; preds = %55, %32
  %57 = load %struct.ti_softc*, %struct.ti_softc** %7, align 8
  %58 = call i32 @TI_UNLOCK(%struct.ti_softc* %57)
  br label %301

59:                                               ; preds = %3
  %60 = load %struct.ti_softc*, %struct.ti_softc** %7, align 8
  %61 = call i32 @TI_LOCK(%struct.ti_softc* %60)
  %62 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %63 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @IFF_UP, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %123

68:                                               ; preds = %59
  %69 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %70 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %93

75:                                               ; preds = %68
  %76 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %77 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @IFF_PROMISC, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %75
  %83 = load %struct.ti_softc*, %struct.ti_softc** %7, align 8
  %84 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @IFF_PROMISC, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %82
  %90 = load i32, i32* @TI_CMD_SET_PROMISC_MODE, align 4
  %91 = load i32, i32* @TI_CMD_CODE_PROMISC_ENB, align 4
  %92 = call i32 @TI_DO_CMD(i32 %90, i32 %91, i32 0)
  br label %122

93:                                               ; preds = %82, %75, %68
  %94 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %95 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %118

100:                                              ; preds = %93
  %101 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %102 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @IFF_PROMISC, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %118, label %107

107:                                              ; preds = %100
  %108 = load %struct.ti_softc*, %struct.ti_softc** %7, align 8
  %109 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @IFF_PROMISC, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %107
  %115 = load i32, i32* @TI_CMD_SET_PROMISC_MODE, align 4
  %116 = load i32, i32* @TI_CMD_CODE_PROMISC_DIS, align 4
  %117 = call i32 @TI_DO_CMD(i32 %115, i32 %116, i32 0)
  br label %121

118:                                              ; preds = %107, %100, %93
  %119 = load %struct.ti_softc*, %struct.ti_softc** %7, align 8
  %120 = call i32 @ti_init_locked(%struct.ti_softc* %119)
  br label %121

121:                                              ; preds = %118, %114
  br label %122

122:                                              ; preds = %121, %89
  br label %134

123:                                              ; preds = %59
  %124 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %125 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %123
  %131 = load %struct.ti_softc*, %struct.ti_softc** %7, align 8
  %132 = call i32 @ti_stop(%struct.ti_softc* %131)
  br label %133

133:                                              ; preds = %130, %123
  br label %134

134:                                              ; preds = %133, %122
  %135 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %136 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.ti_softc*, %struct.ti_softc** %7, align 8
  %139 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 4
  %140 = load %struct.ti_softc*, %struct.ti_softc** %7, align 8
  %141 = call i32 @TI_UNLOCK(%struct.ti_softc* %140)
  br label %301

142:                                              ; preds = %3, %3
  %143 = load %struct.ti_softc*, %struct.ti_softc** %7, align 8
  %144 = call i32 @TI_LOCK(%struct.ti_softc* %143)
  %145 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %146 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %142
  %152 = load %struct.ti_softc*, %struct.ti_softc** %7, align 8
  %153 = call i32 @ti_setmulti(%struct.ti_softc* %152)
  br label %154

154:                                              ; preds = %151, %142
  %155 = load %struct.ti_softc*, %struct.ti_softc** %7, align 8
  %156 = call i32 @TI_UNLOCK(%struct.ti_softc* %155)
  br label %301

157:                                              ; preds = %3, %3
  %158 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %159 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %160 = load %struct.ti_softc*, %struct.ti_softc** %7, align 8
  %161 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %160, i32 0, i32 1
  %162 = load i32, i32* %5, align 4
  %163 = call i32 @ifmedia_ioctl(%struct.ifnet* %158, %struct.ifreq* %159, i32* %161, i32 %162)
  store i32 %163, i32* %11, align 4
  br label %301

164:                                              ; preds = %3
  %165 = load %struct.ti_softc*, %struct.ti_softc** %7, align 8
  %166 = call i32 @TI_LOCK(%struct.ti_softc* %165)
  %167 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %168 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %171 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = xor i32 %169, %172
  store i32 %173, i32* %10, align 4
  %174 = load i32, i32* %10, align 4
  %175 = load i32, i32* @IFCAP_TXCSUM, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %211

178:                                              ; preds = %164
  %179 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %180 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @IFCAP_TXCSUM, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %211

185:                                              ; preds = %178
  %186 = load i32, i32* @IFCAP_TXCSUM, align 4
  %187 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %188 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = xor i32 %189, %186
  store i32 %190, i32* %188, align 8
  %191 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %192 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @IFCAP_TXCSUM, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %203

197:                                              ; preds = %185
  %198 = load i32, i32* @TI_CSUM_FEATURES, align 4
  %199 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %200 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 8
  %202 = or i32 %201, %198
  store i32 %202, i32* %200, align 8
  br label %210

203:                                              ; preds = %185
  %204 = load i32, i32* @TI_CSUM_FEATURES, align 4
  %205 = xor i32 %204, -1
  %206 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %207 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %206, i32 0, i32 4
  %208 = load i32, i32* %207, align 8
  %209 = and i32 %208, %205
  store i32 %209, i32* %207, align 8
  br label %210

210:                                              ; preds = %203, %197
  br label %211

211:                                              ; preds = %210, %178, %164
  %212 = load i32, i32* %10, align 4
  %213 = load i32, i32* @IFCAP_RXCSUM, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %229

216:                                              ; preds = %211
  %217 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %218 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @IFCAP_RXCSUM, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %229

223:                                              ; preds = %216
  %224 = load i32, i32* @IFCAP_RXCSUM, align 4
  %225 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %226 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = xor i32 %227, %224
  store i32 %228, i32* %226, align 8
  br label %229

229:                                              ; preds = %223, %216, %211
  %230 = load i32, i32* %10, align 4
  %231 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %247

234:                                              ; preds = %229
  %235 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %236 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %247

241:                                              ; preds = %234
  %242 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %243 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %244 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 8
  %246 = xor i32 %245, %242
  store i32 %246, i32* %244, align 8
  br label %247

247:                                              ; preds = %241, %234, %229
  %248 = load i32, i32* %10, align 4
  %249 = load i32, i32* @IFCAP_VLAN_HWCSUM, align 4
  %250 = and i32 %248, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %265

252:                                              ; preds = %247
  %253 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %254 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %253, i32 0, i32 3
  %255 = load i32, i32* %254, align 4
  %256 = load i32, i32* @IFCAP_VLAN_HWCSUM, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %265

259:                                              ; preds = %252
  %260 = load i32, i32* @IFCAP_VLAN_HWCSUM, align 4
  %261 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %262 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 8
  %264 = xor i32 %263, %260
  store i32 %264, i32* %262, align 8
  br label %265

265:                                              ; preds = %259, %252, %247
  %266 = load i32, i32* %10, align 4
  %267 = load i32, i32* @IFCAP_TXCSUM, align 4
  %268 = load i32, i32* @IFCAP_RXCSUM, align 4
  %269 = or i32 %267, %268
  %270 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %271 = or i32 %269, %270
  %272 = and i32 %266, %271
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %291

274:                                              ; preds = %265
  %275 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %276 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %279 = and i32 %277, %278
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %290

281:                                              ; preds = %274
  %282 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %283 = xor i32 %282, -1
  %284 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %285 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = and i32 %286, %283
  store i32 %287, i32* %285, align 8
  %288 = load %struct.ti_softc*, %struct.ti_softc** %7, align 8
  %289 = call i32 @ti_init_locked(%struct.ti_softc* %288)
  br label %290

290:                                              ; preds = %281, %274
  br label %291

291:                                              ; preds = %290, %265
  %292 = load %struct.ti_softc*, %struct.ti_softc** %7, align 8
  %293 = call i32 @TI_UNLOCK(%struct.ti_softc* %292)
  %294 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %295 = call i32 @VLAN_CAPABILITIES(%struct.ifnet* %294)
  br label %301

296:                                              ; preds = %3
  %297 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %298 = load i32, i32* %5, align 4
  %299 = load i64, i64* %6, align 8
  %300 = call i32 @ether_ioctl(%struct.ifnet* %297, i32 %298, i64 %299)
  store i32 %300, i32* %11, align 4
  br label %301

301:                                              ; preds = %296, %291, %157, %154, %134, %56
  %302 = load i32, i32* %11, align 4
  ret i32 %302
}

declare dso_local i32 @TI_LOCK(%struct.ti_softc*) #1

declare dso_local i32 @ti_init_locked(%struct.ti_softc*) #1

declare dso_local i32 @TI_UNLOCK(%struct.ti_softc*) #1

declare dso_local i32 @TI_DO_CMD(i32, i32, i32) #1

declare dso_local i32 @ti_stop(%struct.ti_softc*) #1

declare dso_local i32 @ti_setmulti(%struct.ti_softc*) #1

declare dso_local i32 @ifmedia_ioctl(%struct.ifnet*, %struct.ifreq*, i32*, i32) #1

declare dso_local i32 @VLAN_CAPABILITIES(%struct.ifnet*) #1

declare dso_local i32 @ether_ioctl(%struct.ifnet*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
