; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_main.c_cxgb_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_main.c_cxgb_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i32, i32, i32, %struct.port_info* }
%struct.port_info = type { i32, i32, %struct.adapter* }
%struct.adapter = type { i32 }
%struct.ifreq = type { i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ETHERMIN = common dso_local global i32 0, align 4
@ETHERMTU_JUMBO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@IFCAP_TXCSUM = common dso_local global i32 0, align 4
@CSUM_TCP = common dso_local global i32 0, align 4
@CSUM_UDP = common dso_local global i32 0, align 4
@CSUM_IP = common dso_local global i32 0, align 4
@IFCAP_TSO4 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"tso4 disabled due to -txcsum.\0A\00", align 1
@IFCAP_TXCSUM_IPV6 = common dso_local global i32 0, align 4
@CSUM_UDP_IPV6 = common dso_local global i32 0, align 4
@CSUM_TCP_IPV6 = common dso_local global i32 0, align 4
@IFCAP_TSO6 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"tso6 disabled due to -txcsum6.\0A\00", align 1
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@IFCAP_RXCSUM_IPV6 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"enable txcsum first.\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"enable txcsum6 first.\0A\00", align 1
@IFCAP_LRO = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTAGGING = common dso_local global i32 0, align 4
@IFCAP_VLAN_MTU = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTSO = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWCSUM = common dso_local global i32 0, align 4
@IFCAP_TOE4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i64, i64)* @cxgb_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgb_ioctl(%struct.ifnet* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.port_info*, align 8
  %9 = alloca %struct.adapter*, align 8
  %10 = alloca %struct.ifreq*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %16 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %15, i32 0, i32 5
  %17 = load %struct.port_info*, %struct.port_info** %16, align 8
  store %struct.port_info* %17, %struct.port_info** %8, align 8
  %18 = load %struct.port_info*, %struct.port_info** %8, align 8
  %19 = getelementptr inbounds %struct.port_info, %struct.port_info* %18, i32 0, i32 2
  %20 = load %struct.adapter*, %struct.adapter** %19, align 8
  store %struct.adapter* %20, %struct.adapter** %9, align 8
  %21 = load i64, i64* %7, align 8
  %22 = inttoptr i64 %21 to %struct.ifreq*
  store %struct.ifreq* %22, %struct.ifreq** %10, align 8
  store i32 0, i32* %12, align 4
  %23 = load i64, i64* %6, align 8
  switch i64 %23, label %493 [
    i64 128, label %24
    i64 130, label %76
    i64 134, label %161
    i64 133, label %161
    i64 131, label %200
    i64 129, label %486
    i64 132, label %486
  ]

24:                                               ; preds = %3
  %25 = load %struct.adapter*, %struct.adapter** %9, align 8
  %26 = call i32 @ADAPTER_LOCK(%struct.adapter* %25)
  %27 = load %struct.port_info*, %struct.port_info** %8, align 8
  %28 = call i32 @IS_DOOMED(%struct.port_info* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @ENXIO, align 4
  br label %41

32:                                               ; preds = %24
  %33 = load %struct.adapter*, %struct.adapter** %9, align 8
  %34 = call i32 @IS_BUSY(%struct.adapter* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* @EBUSY, align 4
  br label %39

38:                                               ; preds = %32
  br label %39

39:                                               ; preds = %38, %36
  %40 = phi i32 [ %37, %36 ], [ 0, %38 ]
  br label %41

41:                                               ; preds = %39, %30
  %42 = phi i32 [ %31, %30 ], [ %40, %39 ]
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  br label %46

46:                                               ; preds = %383, %354, %221, %182, %123, %82, %45
  %47 = load %struct.adapter*, %struct.adapter** %9, align 8
  %48 = call i32 @ADAPTER_UNLOCK(%struct.adapter* %47)
  %49 = load i32, i32* %12, align 4
  store i32 %49, i32* %4, align 4
  br label %500

50:                                               ; preds = %41
  %51 = load %struct.ifreq*, %struct.ifreq** %10, align 8
  %52 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* @ETHERMIN, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %61, label %57

57:                                               ; preds = %50
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* @ETHERMTU_JUMBO, align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %57, %50
  %62 = load i32, i32* @EINVAL, align 4
  store i32 %62, i32* %12, align 4
  br label %73

63:                                               ; preds = %57
  %64 = load i32, i32* %13, align 4
  %65 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %66 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.port_info*, %struct.port_info** %8, align 8
  %68 = call i32 @PORT_LOCK(%struct.port_info* %67)
  %69 = load %struct.port_info*, %struct.port_info** %8, align 8
  %70 = call i32 @cxgb_update_mac_settings(%struct.port_info* %69)
  %71 = load %struct.port_info*, %struct.port_info** %8, align 8
  %72 = call i32 @PORT_UNLOCK(%struct.port_info* %71)
  br label %73

73:                                               ; preds = %63, %61
  %74 = load %struct.adapter*, %struct.adapter** %9, align 8
  %75 = call i32 @ADAPTER_UNLOCK(%struct.adapter* %74)
  br label %498

76:                                               ; preds = %3
  %77 = load %struct.adapter*, %struct.adapter** %9, align 8
  %78 = call i32 @ADAPTER_LOCK(%struct.adapter* %77)
  %79 = load %struct.port_info*, %struct.port_info** %8, align 8
  %80 = call i32 @IS_DOOMED(%struct.port_info* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = load i32, i32* @ENXIO, align 4
  store i32 %83, i32* %12, align 4
  br label %46

84:                                               ; preds = %76
  %85 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %86 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @IFF_UP, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %144

91:                                               ; preds = %84
  %92 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %93 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %135

98:                                               ; preds = %91
  %99 = load %struct.port_info*, %struct.port_info** %8, align 8
  %100 = getelementptr inbounds %struct.port_info, %struct.port_info* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  store i32 %101, i32* %11, align 4
  %102 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %103 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %11, align 4
  %106 = xor i32 %104, %105
  %107 = load i32, i32* @IFF_PROMISC, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %119, label %110

110:                                              ; preds = %98
  %111 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %112 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %11, align 4
  %115 = xor i32 %113, %114
  %116 = load i32, i32* @IFF_ALLMULTI, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %132

119:                                              ; preds = %110, %98
  %120 = load %struct.adapter*, %struct.adapter** %9, align 8
  %121 = call i32 @IS_BUSY(%struct.adapter* %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %119
  %124 = load i32, i32* @EBUSY, align 4
  store i32 %124, i32* %12, align 4
  br label %46

125:                                              ; preds = %119
  %126 = load %struct.port_info*, %struct.port_info** %8, align 8
  %127 = call i32 @PORT_LOCK(%struct.port_info* %126)
  %128 = load %struct.port_info*, %struct.port_info** %8, align 8
  %129 = call i32 @cxgb_update_mac_settings(%struct.port_info* %128)
  %130 = load %struct.port_info*, %struct.port_info** %8, align 8
  %131 = call i32 @PORT_UNLOCK(%struct.port_info* %130)
  br label %132

132:                                              ; preds = %125, %110
  %133 = load %struct.adapter*, %struct.adapter** %9, align 8
  %134 = call i32 @ADAPTER_UNLOCK(%struct.adapter* %133)
  br label %138

135:                                              ; preds = %91
  %136 = load %struct.port_info*, %struct.port_info** %8, align 8
  %137 = call i32 @cxgb_init_locked(%struct.port_info* %136)
  store i32 %137, i32* %12, align 4
  br label %138

138:                                              ; preds = %135, %132
  %139 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %140 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.port_info*, %struct.port_info** %8, align 8
  %143 = getelementptr inbounds %struct.port_info, %struct.port_info* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 8
  br label %158

144:                                              ; preds = %84
  %145 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %146 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %144
  %152 = load %struct.port_info*, %struct.port_info** %8, align 8
  %153 = call i32 @cxgb_uninit_locked(%struct.port_info* %152)
  store i32 %153, i32* %12, align 4
  br label %157

154:                                              ; preds = %144
  %155 = load %struct.adapter*, %struct.adapter** %9, align 8
  %156 = call i32 @ADAPTER_UNLOCK(%struct.adapter* %155)
  br label %157

157:                                              ; preds = %154, %151
  br label %158

158:                                              ; preds = %157, %138
  %159 = load %struct.adapter*, %struct.adapter** %9, align 8
  %160 = call i32 @ADAPTER_LOCK_ASSERT_NOTOWNED(%struct.adapter* %159)
  br label %498

161:                                              ; preds = %3, %3
  %162 = load %struct.adapter*, %struct.adapter** %9, align 8
  %163 = call i32 @ADAPTER_LOCK(%struct.adapter* %162)
  %164 = load %struct.port_info*, %struct.port_info** %8, align 8
  %165 = call i32 @IS_DOOMED(%struct.port_info* %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %161
  %168 = load i32, i32* @ENXIO, align 4
  br label %178

169:                                              ; preds = %161
  %170 = load %struct.adapter*, %struct.adapter** %9, align 8
  %171 = call i32 @IS_BUSY(%struct.adapter* %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %169
  %174 = load i32, i32* @EBUSY, align 4
  br label %176

175:                                              ; preds = %169
  br label %176

176:                                              ; preds = %175, %173
  %177 = phi i32 [ %174, %173 ], [ 0, %175 ]
  br label %178

178:                                              ; preds = %176, %167
  %179 = phi i32 [ %168, %167 ], [ %177, %176 ]
  store i32 %179, i32* %12, align 4
  %180 = load i32, i32* %12, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %178
  br label %46

183:                                              ; preds = %178
  %184 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %185 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %197

190:                                              ; preds = %183
  %191 = load %struct.port_info*, %struct.port_info** %8, align 8
  %192 = call i32 @PORT_LOCK(%struct.port_info* %191)
  %193 = load %struct.port_info*, %struct.port_info** %8, align 8
  %194 = call i32 @cxgb_update_mac_settings(%struct.port_info* %193)
  %195 = load %struct.port_info*, %struct.port_info** %8, align 8
  %196 = call i32 @PORT_UNLOCK(%struct.port_info* %195)
  br label %197

197:                                              ; preds = %190, %183
  %198 = load %struct.adapter*, %struct.adapter** %9, align 8
  %199 = call i32 @ADAPTER_UNLOCK(%struct.adapter* %198)
  br label %498

200:                                              ; preds = %3
  %201 = load %struct.adapter*, %struct.adapter** %9, align 8
  %202 = call i32 @ADAPTER_LOCK(%struct.adapter* %201)
  %203 = load %struct.port_info*, %struct.port_info** %8, align 8
  %204 = call i32 @IS_DOOMED(%struct.port_info* %203)
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %200
  %207 = load i32, i32* @ENXIO, align 4
  br label %217

208:                                              ; preds = %200
  %209 = load %struct.adapter*, %struct.adapter** %9, align 8
  %210 = call i32 @IS_BUSY(%struct.adapter* %209)
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %208
  %213 = load i32, i32* @EBUSY, align 4
  br label %215

214:                                              ; preds = %208
  br label %215

215:                                              ; preds = %214, %212
  %216 = phi i32 [ %213, %212 ], [ 0, %214 ]
  br label %217

217:                                              ; preds = %215, %206
  %218 = phi i32 [ %207, %206 ], [ %216, %215 ]
  store i32 %218, i32* %12, align 4
  %219 = load i32, i32* %12, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %217
  br label %46

222:                                              ; preds = %217
  %223 = load %struct.ifreq*, %struct.ifreq** %10, align 8
  %224 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %227 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 4
  %229 = xor i32 %225, %228
  store i32 %229, i32* %14, align 4
  %230 = load i32, i32* %14, align 4
  %231 = load i32, i32* @IFCAP_TXCSUM, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %272

234:                                              ; preds = %222
  %235 = load i32, i32* @IFCAP_TXCSUM, align 4
  %236 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %237 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %236, i32 0, i32 3
  %238 = load i32, i32* %237, align 4
  %239 = xor i32 %238, %235
  store i32 %239, i32* %237, align 4
  %240 = load i32, i32* @CSUM_TCP, align 4
  %241 = load i32, i32* @CSUM_UDP, align 4
  %242 = or i32 %240, %241
  %243 = load i32, i32* @CSUM_IP, align 4
  %244 = or i32 %242, %243
  %245 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %246 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %245, i32 0, i32 4
  %247 = load i32, i32* %246, align 8
  %248 = xor i32 %247, %244
  store i32 %248, i32* %246, align 8
  %249 = load i32, i32* @IFCAP_TSO4, align 4
  %250 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %251 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %250, i32 0, i32 3
  %252 = load i32, i32* %251, align 4
  %253 = and i32 %249, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %271

255:                                              ; preds = %234
  %256 = load i32, i32* @IFCAP_TXCSUM, align 4
  %257 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %258 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 4
  %260 = and i32 %256, %259
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %271, label %262

262:                                              ; preds = %255
  %263 = load i32, i32* @IFCAP_TSO4, align 4
  %264 = xor i32 %263, -1
  %265 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %266 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %265, i32 0, i32 3
  %267 = load i32, i32* %266, align 4
  %268 = and i32 %267, %264
  store i32 %268, i32* %266, align 4
  %269 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %270 = call i32 @if_printf(%struct.ifnet* %269, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %271

271:                                              ; preds = %262, %255, %234
  br label %272

272:                                              ; preds = %271, %222
  %273 = load i32, i32* %14, align 4
  %274 = load i32, i32* @IFCAP_TXCSUM_IPV6, align 4
  %275 = and i32 %273, %274
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %313

277:                                              ; preds = %272
  %278 = load i32, i32* @IFCAP_TXCSUM_IPV6, align 4
  %279 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %280 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %279, i32 0, i32 3
  %281 = load i32, i32* %280, align 4
  %282 = xor i32 %281, %278
  store i32 %282, i32* %280, align 4
  %283 = load i32, i32* @CSUM_UDP_IPV6, align 4
  %284 = load i32, i32* @CSUM_TCP_IPV6, align 4
  %285 = or i32 %283, %284
  %286 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %287 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %286, i32 0, i32 4
  %288 = load i32, i32* %287, align 8
  %289 = xor i32 %288, %285
  store i32 %289, i32* %287, align 8
  %290 = load i32, i32* @IFCAP_TSO6, align 4
  %291 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %292 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %291, i32 0, i32 3
  %293 = load i32, i32* %292, align 4
  %294 = and i32 %290, %293
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %312

296:                                              ; preds = %277
  %297 = load i32, i32* @IFCAP_TXCSUM_IPV6, align 4
  %298 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %299 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %298, i32 0, i32 3
  %300 = load i32, i32* %299, align 4
  %301 = and i32 %297, %300
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %312, label %303

303:                                              ; preds = %296
  %304 = load i32, i32* @IFCAP_TSO6, align 4
  %305 = xor i32 %304, -1
  %306 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %307 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %306, i32 0, i32 3
  %308 = load i32, i32* %307, align 4
  %309 = and i32 %308, %305
  store i32 %309, i32* %307, align 4
  %310 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %311 = call i32 @if_printf(%struct.ifnet* %310, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %312

312:                                              ; preds = %303, %296, %277
  br label %313

313:                                              ; preds = %312, %272
  %314 = load i32, i32* %14, align 4
  %315 = load i32, i32* @IFCAP_RXCSUM, align 4
  %316 = and i32 %314, %315
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %324

318:                                              ; preds = %313
  %319 = load i32, i32* @IFCAP_RXCSUM, align 4
  %320 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %321 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %320, i32 0, i32 3
  %322 = load i32, i32* %321, align 4
  %323 = xor i32 %322, %319
  store i32 %323, i32* %321, align 4
  br label %324

324:                                              ; preds = %318, %313
  %325 = load i32, i32* %14, align 4
  %326 = load i32, i32* @IFCAP_RXCSUM_IPV6, align 4
  %327 = and i32 %325, %326
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %335

329:                                              ; preds = %324
  %330 = load i32, i32* @IFCAP_RXCSUM_IPV6, align 4
  %331 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %332 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %331, i32 0, i32 3
  %333 = load i32, i32* %332, align 4
  %334 = xor i32 %333, %330
  store i32 %334, i32* %332, align 4
  br label %335

335:                                              ; preds = %329, %324
  %336 = load i32, i32* %14, align 4
  %337 = load i32, i32* @IFCAP_TSO4, align 4
  %338 = and i32 %336, %337
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %364

340:                                              ; preds = %335
  %341 = load i32, i32* @IFCAP_TSO4, align 4
  %342 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %343 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %342, i32 0, i32 3
  %344 = load i32, i32* %343, align 4
  %345 = and i32 %341, %344
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %358, label %347

347:                                              ; preds = %340
  %348 = load i32, i32* @IFCAP_TXCSUM, align 4
  %349 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %350 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %349, i32 0, i32 3
  %351 = load i32, i32* %350, align 4
  %352 = and i32 %348, %351
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %358, label %354

354:                                              ; preds = %347
  %355 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %356 = call i32 @if_printf(%struct.ifnet* %355, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %357 = load i32, i32* @EAGAIN, align 4
  store i32 %357, i32* %12, align 4
  br label %46

358:                                              ; preds = %347, %340
  %359 = load i32, i32* @IFCAP_TSO4, align 4
  %360 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %361 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %360, i32 0, i32 3
  %362 = load i32, i32* %361, align 4
  %363 = xor i32 %362, %359
  store i32 %363, i32* %361, align 4
  br label %364

364:                                              ; preds = %358, %335
  %365 = load i32, i32* %14, align 4
  %366 = load i32, i32* @IFCAP_TSO6, align 4
  %367 = and i32 %365, %366
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %393

369:                                              ; preds = %364
  %370 = load i32, i32* @IFCAP_TSO6, align 4
  %371 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %372 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %371, i32 0, i32 3
  %373 = load i32, i32* %372, align 4
  %374 = and i32 %370, %373
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %387, label %376

376:                                              ; preds = %369
  %377 = load i32, i32* @IFCAP_TXCSUM_IPV6, align 4
  %378 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %379 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %378, i32 0, i32 3
  %380 = load i32, i32* %379, align 4
  %381 = and i32 %377, %380
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %387, label %383

383:                                              ; preds = %376
  %384 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %385 = call i32 @if_printf(%struct.ifnet* %384, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %386 = load i32, i32* @EAGAIN, align 4
  store i32 %386, i32* %12, align 4
  br label %46

387:                                              ; preds = %376, %369
  %388 = load i32, i32* @IFCAP_TSO6, align 4
  %389 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %390 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %389, i32 0, i32 3
  %391 = load i32, i32* %390, align 4
  %392 = xor i32 %391, %388
  store i32 %392, i32* %390, align 4
  br label %393

393:                                              ; preds = %387, %364
  %394 = load i32, i32* %14, align 4
  %395 = load i32, i32* @IFCAP_LRO, align 4
  %396 = and i32 %394, %395
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %398, label %411

398:                                              ; preds = %393
  %399 = load i32, i32* @IFCAP_LRO, align 4
  %400 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %401 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %400, i32 0, i32 3
  %402 = load i32, i32* %401, align 4
  %403 = xor i32 %402, %399
  store i32 %403, i32* %401, align 4
  %404 = load %struct.port_info*, %struct.port_info** %8, align 8
  %405 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %406 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %405, i32 0, i32 3
  %407 = load i32, i32* %406, align 4
  %408 = load i32, i32* @IFCAP_LRO, align 4
  %409 = and i32 %407, %408
  %410 = call i32 @cxgb_set_lro(%struct.port_info* %404, i32 %409)
  br label %411

411:                                              ; preds = %398, %393
  %412 = load i32, i32* %14, align 4
  %413 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %414 = and i32 %412, %413
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %416, label %436

416:                                              ; preds = %411
  %417 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %418 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %419 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %418, i32 0, i32 3
  %420 = load i32, i32* %419, align 4
  %421 = xor i32 %420, %417
  store i32 %421, i32* %419, align 4
  %422 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %423 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %422, i32 0, i32 2
  %424 = load i32, i32* %423, align 8
  %425 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %426 = and i32 %424, %425
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %428, label %435

428:                                              ; preds = %416
  %429 = load %struct.port_info*, %struct.port_info** %8, align 8
  %430 = call i32 @PORT_LOCK(%struct.port_info* %429)
  %431 = load %struct.port_info*, %struct.port_info** %8, align 8
  %432 = call i32 @cxgb_update_mac_settings(%struct.port_info* %431)
  %433 = load %struct.port_info*, %struct.port_info** %8, align 8
  %434 = call i32 @PORT_UNLOCK(%struct.port_info* %433)
  br label %435

435:                                              ; preds = %428, %416
  br label %436

436:                                              ; preds = %435, %411
  %437 = load i32, i32* %14, align 4
  %438 = load i32, i32* @IFCAP_VLAN_MTU, align 4
  %439 = and i32 %437, %438
  %440 = icmp ne i32 %439, 0
  br i1 %440, label %441, label %461

441:                                              ; preds = %436
  %442 = load i32, i32* @IFCAP_VLAN_MTU, align 4
  %443 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %444 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %443, i32 0, i32 3
  %445 = load i32, i32* %444, align 4
  %446 = xor i32 %445, %442
  store i32 %446, i32* %444, align 4
  %447 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %448 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %447, i32 0, i32 2
  %449 = load i32, i32* %448, align 8
  %450 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %451 = and i32 %449, %450
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %453, label %460

453:                                              ; preds = %441
  %454 = load %struct.port_info*, %struct.port_info** %8, align 8
  %455 = call i32 @PORT_LOCK(%struct.port_info* %454)
  %456 = load %struct.port_info*, %struct.port_info** %8, align 8
  %457 = call i32 @cxgb_update_mac_settings(%struct.port_info* %456)
  %458 = load %struct.port_info*, %struct.port_info** %8, align 8
  %459 = call i32 @PORT_UNLOCK(%struct.port_info* %458)
  br label %460

460:                                              ; preds = %453, %441
  br label %461

461:                                              ; preds = %460, %436
  %462 = load i32, i32* %14, align 4
  %463 = load i32, i32* @IFCAP_VLAN_HWTSO, align 4
  %464 = and i32 %462, %463
  %465 = icmp ne i32 %464, 0
  br i1 %465, label %466, label %472

466:                                              ; preds = %461
  %467 = load i32, i32* @IFCAP_VLAN_HWTSO, align 4
  %468 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %469 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %468, i32 0, i32 3
  %470 = load i32, i32* %469, align 4
  %471 = xor i32 %470, %467
  store i32 %471, i32* %469, align 4
  br label %472

472:                                              ; preds = %466, %461
  %473 = load i32, i32* %14, align 4
  %474 = load i32, i32* @IFCAP_VLAN_HWCSUM, align 4
  %475 = and i32 %473, %474
  %476 = icmp ne i32 %475, 0
  br i1 %476, label %477, label %483

477:                                              ; preds = %472
  %478 = load i32, i32* @IFCAP_VLAN_HWCSUM, align 4
  %479 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %480 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %479, i32 0, i32 3
  %481 = load i32, i32* %480, align 4
  %482 = xor i32 %481, %478
  store i32 %482, i32* %480, align 4
  br label %483

483:                                              ; preds = %477, %472
  %484 = load %struct.adapter*, %struct.adapter** %9, align 8
  %485 = call i32 @ADAPTER_UNLOCK(%struct.adapter* %484)
  br label %498

486:                                              ; preds = %3, %3
  %487 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %488 = load %struct.ifreq*, %struct.ifreq** %10, align 8
  %489 = load %struct.port_info*, %struct.port_info** %8, align 8
  %490 = getelementptr inbounds %struct.port_info, %struct.port_info* %489, i32 0, i32 1
  %491 = load i64, i64* %6, align 8
  %492 = call i32 @ifmedia_ioctl(%struct.ifnet* %487, %struct.ifreq* %488, i32* %490, i64 %491)
  store i32 %492, i32* %12, align 4
  br label %498

493:                                              ; preds = %3
  %494 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %495 = load i64, i64* %6, align 8
  %496 = load i64, i64* %7, align 8
  %497 = call i32 @ether_ioctl(%struct.ifnet* %494, i64 %495, i64 %496)
  store i32 %497, i32* %12, align 4
  br label %498

498:                                              ; preds = %493, %486, %483, %197, %158, %73
  %499 = load i32, i32* %12, align 4
  store i32 %499, i32* %4, align 4
  br label %500

500:                                              ; preds = %498, %46
  %501 = load i32, i32* %4, align 4
  ret i32 %501
}

declare dso_local i32 @ADAPTER_LOCK(%struct.adapter*) #1

declare dso_local i32 @IS_DOOMED(%struct.port_info*) #1

declare dso_local i32 @IS_BUSY(%struct.adapter*) #1

declare dso_local i32 @ADAPTER_UNLOCK(%struct.adapter*) #1

declare dso_local i32 @PORT_LOCK(%struct.port_info*) #1

declare dso_local i32 @cxgb_update_mac_settings(%struct.port_info*) #1

declare dso_local i32 @PORT_UNLOCK(%struct.port_info*) #1

declare dso_local i32 @cxgb_init_locked(%struct.port_info*) #1

declare dso_local i32 @cxgb_uninit_locked(%struct.port_info*) #1

declare dso_local i32 @ADAPTER_LOCK_ASSERT_NOTOWNED(%struct.adapter*) #1

declare dso_local i32 @if_printf(%struct.ifnet*, i8*) #1

declare dso_local i32 @cxgb_set_lro(%struct.port_info*, i32) #1

declare dso_local i32 @ifmedia_ioctl(%struct.ifnet*, %struct.ifreq*, i32*, i64) #1

declare dso_local i32 @ether_ioctl(%struct.ifnet*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
