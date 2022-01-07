; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i32, i32, %struct.vtnet_softc* }
%struct.vtnet_softc = type { i32, i32, i32 }
%struct.ifreq = type { i32, i32 }

@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@VTNET_FLAG_CTRL_RX = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@IFCAP_TXCSUM = common dso_local global i32 0, align 4
@IFCAP_TXCSUM_IPV6 = common dso_local global i32 0, align 4
@IFCAP_TSO4 = common dso_local global i32 0, align 4
@IFCAP_TSO6 = common dso_local global i32 0, align 4
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@IFCAP_RXCSUM_IPV6 = common dso_local global i32 0, align 4
@IFCAP_LRO = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWFILTER = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTSO = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTAGGING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i64)* @vtnet_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtnet_ioctl(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.vtnet_softc*, align 8
  %8 = alloca %struct.ifreq*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %12 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %13 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %12, i32 0, i32 4
  %14 = load %struct.vtnet_softc*, %struct.vtnet_softc** %13, align 8
  store %struct.vtnet_softc* %14, %struct.vtnet_softc** %7, align 8
  %15 = load i64, i64* %6, align 8
  %16 = inttoptr i64 %15 to %struct.ifreq*
  store %struct.ifreq* %16, %struct.ifreq** %8, align 8
  store i32 0, i32* %11, align 4
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %310 [
    i32 128, label %18
    i32 130, label %37
    i32 134, label %124
    i32 133, label %124
    i32 129, label %147
    i32 132, label %147
    i32 131, label %154
  ]

18:                                               ; preds = %3
  %19 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %20 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %23 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %21, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %18
  %27 = load %struct.vtnet_softc*, %struct.vtnet_softc** %7, align 8
  %28 = call i32 @VTNET_CORE_LOCK(%struct.vtnet_softc* %27)
  %29 = load %struct.vtnet_softc*, %struct.vtnet_softc** %7, align 8
  %30 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %31 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @vtnet_change_mtu(%struct.vtnet_softc* %29, i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load %struct.vtnet_softc*, %struct.vtnet_softc** %7, align 8
  %35 = call i32 @VTNET_CORE_UNLOCK(%struct.vtnet_softc* %34)
  br label %36

36:                                               ; preds = %26, %18
  br label %315

37:                                               ; preds = %3
  %38 = load %struct.vtnet_softc*, %struct.vtnet_softc** %7, align 8
  %39 = call i32 @VTNET_CORE_LOCK(%struct.vtnet_softc* %38)
  %40 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %41 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @IFF_UP, align 4
  %44 = and i32 %42, %43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %37
  %47 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %48 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = load %struct.vtnet_softc*, %struct.vtnet_softc** %7, align 8
  %55 = call i32 @vtnet_stop(%struct.vtnet_softc* %54)
  br label %56

56:                                               ; preds = %53, %46
  br label %112

57:                                               ; preds = %37
  %58 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %59 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %108

64:                                               ; preds = %57
  %65 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %66 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.vtnet_softc*, %struct.vtnet_softc** %7, align 8
  %69 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = xor i32 %67, %70
  %72 = load i32, i32* @IFF_PROMISC, align 4
  %73 = load i32, i32* @IFF_ALLMULTI, align 4
  %74 = or i32 %72, %73
  %75 = and i32 %71, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %107

77:                                               ; preds = %64
  %78 = load %struct.vtnet_softc*, %struct.vtnet_softc** %7, align 8
  %79 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @VTNET_FLAG_CTRL_RX, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %77
  %85 = load %struct.vtnet_softc*, %struct.vtnet_softc** %7, align 8
  %86 = call i32 @vtnet_rx_filter(%struct.vtnet_softc* %85)
  br label %106

87:                                               ; preds = %77
  %88 = load i32, i32* @IFF_PROMISC, align 4
  %89 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %90 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 8
  %93 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %94 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.vtnet_softc*, %struct.vtnet_softc** %7, align 8
  %97 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = xor i32 %95, %98
  %100 = load i32, i32* @IFF_ALLMULTI, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %87
  %104 = load i32, i32* @ENOTSUP, align 4
  store i32 %104, i32* %11, align 4
  br label %105

105:                                              ; preds = %103, %87
  br label %106

106:                                              ; preds = %105, %84
  br label %107

107:                                              ; preds = %106, %64
  br label %111

108:                                              ; preds = %57
  %109 = load %struct.vtnet_softc*, %struct.vtnet_softc** %7, align 8
  %110 = call i32 @vtnet_init_locked(%struct.vtnet_softc* %109)
  br label %111

111:                                              ; preds = %108, %107
  br label %112

112:                                              ; preds = %111, %56
  %113 = load i32, i32* %11, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %112
  %116 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %117 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.vtnet_softc*, %struct.vtnet_softc** %7, align 8
  %120 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 4
  br label %121

121:                                              ; preds = %115, %112
  %122 = load %struct.vtnet_softc*, %struct.vtnet_softc** %7, align 8
  %123 = call i32 @VTNET_CORE_UNLOCK(%struct.vtnet_softc* %122)
  br label %315

124:                                              ; preds = %3, %3
  %125 = load %struct.vtnet_softc*, %struct.vtnet_softc** %7, align 8
  %126 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @VTNET_FLAG_CTRL_RX, align 4
  %129 = and i32 %127, %128
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %124
  br label %315

132:                                              ; preds = %124
  %133 = load %struct.vtnet_softc*, %struct.vtnet_softc** %7, align 8
  %134 = call i32 @VTNET_CORE_LOCK(%struct.vtnet_softc* %133)
  %135 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %136 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %132
  %142 = load %struct.vtnet_softc*, %struct.vtnet_softc** %7, align 8
  %143 = call i32 @vtnet_rx_filter_mac(%struct.vtnet_softc* %142)
  br label %144

144:                                              ; preds = %141, %132
  %145 = load %struct.vtnet_softc*, %struct.vtnet_softc** %7, align 8
  %146 = call i32 @VTNET_CORE_UNLOCK(%struct.vtnet_softc* %145)
  br label %315

147:                                              ; preds = %3, %3
  %148 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %149 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %150 = load %struct.vtnet_softc*, %struct.vtnet_softc** %7, align 8
  %151 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %150, i32 0, i32 2
  %152 = load i32, i32* %5, align 4
  %153 = call i32 @ifmedia_ioctl(%struct.ifnet* %148, %struct.ifreq* %149, i32* %151, i32 %152)
  store i32 %153, i32* %11, align 4
  br label %315

154:                                              ; preds = %3
  %155 = load %struct.vtnet_softc*, %struct.vtnet_softc** %7, align 8
  %156 = call i32 @VTNET_CORE_LOCK(%struct.vtnet_softc* %155)
  %157 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %158 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %161 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = xor i32 %159, %162
  store i32 %163, i32* %10, align 4
  %164 = load i32, i32* %10, align 4
  %165 = load i32, i32* @IFCAP_TXCSUM, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %154
  %169 = load i32, i32* @IFCAP_TXCSUM, align 4
  %170 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %171 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = xor i32 %172, %169
  store i32 %173, i32* %171, align 8
  br label %174

174:                                              ; preds = %168, %154
  %175 = load i32, i32* %10, align 4
  %176 = load i32, i32* @IFCAP_TXCSUM_IPV6, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %174
  %180 = load i32, i32* @IFCAP_TXCSUM_IPV6, align 4
  %181 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %182 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = xor i32 %183, %180
  store i32 %184, i32* %182, align 8
  br label %185

185:                                              ; preds = %179, %174
  %186 = load i32, i32* %10, align 4
  %187 = load i32, i32* @IFCAP_TSO4, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %196

190:                                              ; preds = %185
  %191 = load i32, i32* @IFCAP_TSO4, align 4
  %192 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %193 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = xor i32 %194, %191
  store i32 %195, i32* %193, align 8
  br label %196

196:                                              ; preds = %190, %185
  %197 = load i32, i32* %10, align 4
  %198 = load i32, i32* @IFCAP_TSO6, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %207

201:                                              ; preds = %196
  %202 = load i32, i32* @IFCAP_TSO6, align 4
  %203 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %204 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = xor i32 %205, %202
  store i32 %206, i32* %204, align 8
  br label %207

207:                                              ; preds = %201, %196
  %208 = load i32, i32* %10, align 4
  %209 = load i32, i32* @IFCAP_RXCSUM, align 4
  %210 = load i32, i32* @IFCAP_RXCSUM_IPV6, align 4
  %211 = or i32 %209, %210
  %212 = load i32, i32* @IFCAP_LRO, align 4
  %213 = or i32 %211, %212
  %214 = load i32, i32* @IFCAP_VLAN_HWFILTER, align 4
  %215 = or i32 %213, %214
  %216 = and i32 %208, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %263

218:                                              ; preds = %207
  store i32 1, i32* %9, align 4
  %219 = load i32, i32* %10, align 4
  %220 = load i32, i32* @IFCAP_RXCSUM, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %229

223:                                              ; preds = %218
  %224 = load i32, i32* @IFCAP_RXCSUM, align 4
  %225 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %226 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = xor i32 %227, %224
  store i32 %228, i32* %226, align 8
  br label %229

229:                                              ; preds = %223, %218
  %230 = load i32, i32* %10, align 4
  %231 = load i32, i32* @IFCAP_RXCSUM_IPV6, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %240

234:                                              ; preds = %229
  %235 = load i32, i32* @IFCAP_RXCSUM_IPV6, align 4
  %236 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %237 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = xor i32 %238, %235
  store i32 %239, i32* %237, align 8
  br label %240

240:                                              ; preds = %234, %229
  %241 = load i32, i32* %10, align 4
  %242 = load i32, i32* @IFCAP_LRO, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %251

245:                                              ; preds = %240
  %246 = load i32, i32* @IFCAP_LRO, align 4
  %247 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %248 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 8
  %250 = xor i32 %249, %246
  store i32 %250, i32* %248, align 8
  br label %251

251:                                              ; preds = %245, %240
  %252 = load i32, i32* %10, align 4
  %253 = load i32, i32* @IFCAP_VLAN_HWFILTER, align 4
  %254 = and i32 %252, %253
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %262

256:                                              ; preds = %251
  %257 = load i32, i32* @IFCAP_VLAN_HWFILTER, align 4
  %258 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %259 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 8
  %261 = xor i32 %260, %257
  store i32 %261, i32* %259, align 8
  br label %262

262:                                              ; preds = %256, %251
  br label %264

263:                                              ; preds = %207
  store i32 0, i32* %9, align 4
  br label %264

264:                                              ; preds = %263, %262
  %265 = load i32, i32* %10, align 4
  %266 = load i32, i32* @IFCAP_VLAN_HWTSO, align 4
  %267 = and i32 %265, %266
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %275

269:                                              ; preds = %264
  %270 = load i32, i32* @IFCAP_VLAN_HWTSO, align 4
  %271 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %272 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 8
  %274 = xor i32 %273, %270
  store i32 %274, i32* %272, align 8
  br label %275

275:                                              ; preds = %269, %264
  %276 = load i32, i32* %10, align 4
  %277 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %278 = and i32 %276, %277
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %286

280:                                              ; preds = %275
  %281 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %282 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %283 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %282, i32 0, i32 2
  %284 = load i32, i32* %283, align 8
  %285 = xor i32 %284, %281
  store i32 %285, i32* %283, align 8
  br label %286

286:                                              ; preds = %280, %275
  %287 = load i32, i32* %9, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %305

289:                                              ; preds = %286
  %290 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %291 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %294 = and i32 %292, %293
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %305

296:                                              ; preds = %289
  %297 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %298 = xor i32 %297, -1
  %299 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %300 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = and i32 %301, %298
  store i32 %302, i32* %300, align 4
  %303 = load %struct.vtnet_softc*, %struct.vtnet_softc** %7, align 8
  %304 = call i32 @vtnet_init_locked(%struct.vtnet_softc* %303)
  br label %305

305:                                              ; preds = %296, %289, %286
  %306 = load %struct.vtnet_softc*, %struct.vtnet_softc** %7, align 8
  %307 = call i32 @VTNET_CORE_UNLOCK(%struct.vtnet_softc* %306)
  %308 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %309 = call i32 @VLAN_CAPABILITIES(%struct.ifnet* %308)
  br label %315

310:                                              ; preds = %3
  %311 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %312 = load i32, i32* %5, align 4
  %313 = load i64, i64* %6, align 8
  %314 = call i32 @ether_ioctl(%struct.ifnet* %311, i32 %312, i64 %313)
  store i32 %314, i32* %11, align 4
  br label %315

315:                                              ; preds = %310, %305, %147, %144, %131, %121, %36
  %316 = load %struct.vtnet_softc*, %struct.vtnet_softc** %7, align 8
  %317 = call i32 @VTNET_CORE_LOCK_ASSERT_NOTOWNED(%struct.vtnet_softc* %316)
  %318 = load i32, i32* %11, align 4
  ret i32 %318
}

declare dso_local i32 @VTNET_CORE_LOCK(%struct.vtnet_softc*) #1

declare dso_local i32 @vtnet_change_mtu(%struct.vtnet_softc*, i32) #1

declare dso_local i32 @VTNET_CORE_UNLOCK(%struct.vtnet_softc*) #1

declare dso_local i32 @vtnet_stop(%struct.vtnet_softc*) #1

declare dso_local i32 @vtnet_rx_filter(%struct.vtnet_softc*) #1

declare dso_local i32 @vtnet_init_locked(%struct.vtnet_softc*) #1

declare dso_local i32 @vtnet_rx_filter_mac(%struct.vtnet_softc*) #1

declare dso_local i32 @ifmedia_ioctl(%struct.ifnet*, %struct.ifreq*, i32*, i32) #1

declare dso_local i32 @VLAN_CAPABILITIES(%struct.ifnet*) #1

declare dso_local i32 @ether_ioctl(%struct.ifnet*, i32, i64) #1

declare dso_local i32 @VTNET_CORE_LOCK_ASSERT_NOTOWNED(%struct.vtnet_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
