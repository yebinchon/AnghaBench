; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge.c_sfxge_if_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge.c_sfxge_if_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i32, i32, i32, i32, %struct.sfxge_softc* }
%struct.sfxge_softc = type { i32, i32, i32 }
%struct.ifreq = type { i32, i32 }
%struct.ifi2creq = type { i32, i32*, i32, i32 }

@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@SFXGE_MAX_MTU = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"Unsupported capabilities 0x%x requested 0x%x vs supported 0x%x\00", align 1
@SFXGE_CAP_FIXED = common dso_local global i32 0, align 4
@IFCAP_TSO4 = common dso_local global i32 0, align 4
@IFCAP_TXCSUM = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"enable txcsum before tso4\0A\00", align 1
@IFCAP_TSO6 = common dso_local global i32 0, align 4
@IFCAP_TXCSUM_IPV6 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"enable txcsum6 before tso6\0A\00", align 1
@CSUM_IP = common dso_local global i32 0, align 4
@CSUM_TCP = common dso_local global i32 0, align 4
@CSUM_UDP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"tso4 disabled due to -txcsum\0A\00", align 1
@CSUM_TCP_IPV6 = common dso_local global i32 0, align 4
@CSUM_UDP_IPV6 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"tso6 disabled due to -txcsum6\0A\00", align 1
@curthread = common dso_local global i32 0, align 4
@PRIV_DRIVER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i64, i64)* @sfxge_if_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfxge_if_ioctl(%struct.ifnet* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sfxge_softc*, align 8
  %9 = alloca %struct.ifreq*, align 8
  %10 = alloca %struct.ifi2creq, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ifi2creq, align 8
  store %struct.ifnet* %0, %struct.ifnet** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load i64, i64* %7, align 8
  %16 = inttoptr i64 %15 to %struct.ifreq*
  store %struct.ifreq* %16, %struct.ifreq** %9, align 8
  %17 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %18 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %17, i32 0, i32 6
  %19 = load %struct.sfxge_softc*, %struct.sfxge_softc** %18, align 8
  store %struct.sfxge_softc* %19, %struct.sfxge_softc** %8, align 8
  store i32 0, i32* %11, align 4
  %20 = load i64, i64* %6, align 8
  switch i64 %20, label %380 [
    i64 130, label %21
    i64 128, label %77
    i64 136, label %142
    i64 135, label %142
    i64 131, label %153
    i64 129, label %309
    i64 133, label %309
    i64 134, label %316
    i64 132, label %355
  ]

21:                                               ; preds = %3
  %22 = load %struct.sfxge_softc*, %struct.sfxge_softc** %8, align 8
  %23 = call i32 @SFXGE_ADAPTER_LOCK(%struct.sfxge_softc* %22)
  %24 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %25 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @IFF_UP, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %58

30:                                               ; preds = %21
  %31 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %32 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %30
  %38 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %39 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.sfxge_softc*, %struct.sfxge_softc** %8, align 8
  %42 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = xor i32 %40, %43
  %45 = load i32, i32* @IFF_PROMISC, align 4
  %46 = load i32, i32* @IFF_ALLMULTI, align 4
  %47 = or i32 %45, %46
  %48 = and i32 %44, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %37
  %51 = load %struct.sfxge_softc*, %struct.sfxge_softc** %8, align 8
  %52 = call i32 @sfxge_mac_filter_set(%struct.sfxge_softc* %51)
  br label %53

53:                                               ; preds = %50, %37
  br label %57

54:                                               ; preds = %30
  %55 = load %struct.sfxge_softc*, %struct.sfxge_softc** %8, align 8
  %56 = call i32 @sfxge_start(%struct.sfxge_softc* %55)
  br label %57

57:                                               ; preds = %54, %53
  br label %69

58:                                               ; preds = %21
  %59 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %60 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = load %struct.sfxge_softc*, %struct.sfxge_softc** %8, align 8
  %67 = call i32 @sfxge_stop(%struct.sfxge_softc* %66)
  br label %68

68:                                               ; preds = %65, %58
  br label %69

69:                                               ; preds = %68, %57
  %70 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %71 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.sfxge_softc*, %struct.sfxge_softc** %8, align 8
  %74 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load %struct.sfxge_softc*, %struct.sfxge_softc** %8, align 8
  %76 = call i32 @SFXGE_ADAPTER_UNLOCK(%struct.sfxge_softc* %75)
  br label %385

77:                                               ; preds = %3
  %78 = load %struct.ifreq*, %struct.ifreq** %9, align 8
  %79 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %82 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %80, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  store i32 0, i32* %11, align 4
  br label %141

86:                                               ; preds = %77
  %87 = load %struct.ifreq*, %struct.ifreq** %9, align 8
  %88 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @SFXGE_MAX_MTU, align 4
  %91 = icmp sgt i32 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %86
  %93 = load i32, i32* @EINVAL, align 4
  store i32 %93, i32* %11, align 4
  br label %140

94:                                               ; preds = %86
  %95 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %96 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %107, label %101

101:                                              ; preds = %94
  %102 = load %struct.ifreq*, %struct.ifreq** %9, align 8
  %103 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %106 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %105, i32 0, i32 5
  store i32 %104, i32* %106, align 4
  store i32 0, i32* %11, align 4
  br label %139

107:                                              ; preds = %94
  %108 = load %struct.sfxge_softc*, %struct.sfxge_softc** %8, align 8
  %109 = call i32 @SFXGE_ADAPTER_LOCK(%struct.sfxge_softc* %108)
  %110 = load %struct.sfxge_softc*, %struct.sfxge_softc** %8, align 8
  %111 = call i32 @sfxge_stop(%struct.sfxge_softc* %110)
  %112 = load %struct.ifreq*, %struct.ifreq** %9, align 8
  %113 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %116 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %115, i32 0, i32 5
  store i32 %114, i32* %116, align 4
  %117 = load %struct.sfxge_softc*, %struct.sfxge_softc** %8, align 8
  %118 = call i32 @sfxge_start(%struct.sfxge_softc* %117)
  store i32 %118, i32* %11, align 4
  %119 = load %struct.sfxge_softc*, %struct.sfxge_softc** %8, align 8
  %120 = call i32 @SFXGE_ADAPTER_UNLOCK(%struct.sfxge_softc* %119)
  %121 = load i32, i32* %11, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %138

123:                                              ; preds = %107
  %124 = load i32, i32* @IFF_UP, align 4
  %125 = xor i32 %124, -1
  %126 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %127 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = and i32 %128, %125
  store i32 %129, i32* %127, align 8
  %130 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %131 = xor i32 %130, -1
  %132 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %133 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = and i32 %134, %131
  store i32 %135, i32* %133, align 4
  %136 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %137 = call i32 @if_down(%struct.ifnet* %136)
  br label %138

138:                                              ; preds = %123, %107
  br label %139

139:                                              ; preds = %138, %101
  br label %140

140:                                              ; preds = %139, %92
  br label %141

141:                                              ; preds = %140, %85
  br label %385

142:                                              ; preds = %3, %3
  %143 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %144 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %142
  %150 = load %struct.sfxge_softc*, %struct.sfxge_softc** %8, align 8
  %151 = call i32 @sfxge_mac_filter_set(%struct.sfxge_softc* %150)
  br label %152

152:                                              ; preds = %149, %142
  br label %385

153:                                              ; preds = %3
  %154 = load %struct.ifreq*, %struct.ifreq** %9, align 8
  %155 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  store i32 %156, i32* %12, align 4
  %157 = load %struct.sfxge_softc*, %struct.sfxge_softc** %8, align 8
  %158 = call i32 @SFXGE_ADAPTER_LOCK(%struct.sfxge_softc* %157)
  %159 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %160 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* %12, align 4
  %163 = xor i32 %161, %162
  store i32 %163, i32* %13, align 4
  %164 = load i32, i32* %12, align 4
  %165 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %166 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = xor i32 %167, -1
  %169 = and i32 %164, %168
  %170 = icmp eq i32 %169, 0
  %171 = zext i1 %170 to i32
  %172 = load i32, i32* %12, align 4
  %173 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %174 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = xor i32 %175, -1
  %177 = and i32 %172, %176
  %178 = load i32, i32* %12, align 4
  %179 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %180 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = sext i32 %181 to i64
  %183 = inttoptr i64 %182 to i8*
  %184 = call i32 @KASSERT(i32 %171, i8* %183)
  %185 = load i32, i32* %13, align 4
  %186 = load i32, i32* @SFXGE_CAP_FIXED, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %153
  %190 = load i32, i32* @EINVAL, align 4
  store i32 %190, i32* %11, align 4
  %191 = load %struct.sfxge_softc*, %struct.sfxge_softc** %8, align 8
  %192 = call i32 @SFXGE_ADAPTER_UNLOCK(%struct.sfxge_softc* %191)
  br label %385

193:                                              ; preds = %153
  %194 = load i32, i32* %13, align 4
  %195 = load i32, i32* @IFCAP_TSO4, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %212

198:                                              ; preds = %193
  %199 = load i32, i32* %12, align 4
  %200 = load i32, i32* @IFCAP_TSO4, align 4
  %201 = load i32, i32* @IFCAP_TXCSUM, align 4
  %202 = or i32 %200, %201
  %203 = and i32 %199, %202
  %204 = load i32, i32* @IFCAP_TSO4, align 4
  %205 = icmp eq i32 %203, %204
  br i1 %205, label %206, label %212

206:                                              ; preds = %198
  %207 = load i32, i32* @EAGAIN, align 4
  store i32 %207, i32* %11, align 4
  %208 = load %struct.sfxge_softc*, %struct.sfxge_softc** %8, align 8
  %209 = call i32 @SFXGE_ADAPTER_UNLOCK(%struct.sfxge_softc* %208)
  %210 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %211 = call i32 @if_printf(%struct.ifnet* %210, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %385

212:                                              ; preds = %198, %193
  %213 = load i32, i32* %13, align 4
  %214 = load i32, i32* @IFCAP_TSO6, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %231

217:                                              ; preds = %212
  %218 = load i32, i32* %12, align 4
  %219 = load i32, i32* @IFCAP_TSO6, align 4
  %220 = load i32, i32* @IFCAP_TXCSUM_IPV6, align 4
  %221 = or i32 %219, %220
  %222 = and i32 %218, %221
  %223 = load i32, i32* @IFCAP_TSO6, align 4
  %224 = icmp eq i32 %222, %223
  br i1 %224, label %225, label %231

225:                                              ; preds = %217
  %226 = load i32, i32* @EAGAIN, align 4
  store i32 %226, i32* %11, align 4
  %227 = load %struct.sfxge_softc*, %struct.sfxge_softc** %8, align 8
  %228 = call i32 @SFXGE_ADAPTER_UNLOCK(%struct.sfxge_softc* %227)
  %229 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %230 = call i32 @if_printf(%struct.ifnet* %229, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %385

231:                                              ; preds = %217, %212
  %232 = load i32, i32* %12, align 4
  %233 = load i32, i32* @IFCAP_TXCSUM, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %246

236:                                              ; preds = %231
  %237 = load i32, i32* @CSUM_IP, align 4
  %238 = load i32, i32* @CSUM_TCP, align 4
  %239 = or i32 %237, %238
  %240 = load i32, i32* @CSUM_UDP, align 4
  %241 = or i32 %239, %240
  %242 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %243 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %242, i32 0, i32 4
  %244 = load i32, i32* %243, align 8
  %245 = or i32 %244, %241
  store i32 %245, i32* %243, align 8
  br label %269

246:                                              ; preds = %231
  %247 = load i32, i32* @CSUM_IP, align 4
  %248 = load i32, i32* @CSUM_TCP, align 4
  %249 = or i32 %247, %248
  %250 = load i32, i32* @CSUM_UDP, align 4
  %251 = or i32 %249, %250
  %252 = xor i32 %251, -1
  %253 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %254 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %253, i32 0, i32 4
  %255 = load i32, i32* %254, align 8
  %256 = and i32 %255, %252
  store i32 %256, i32* %254, align 8
  %257 = load i32, i32* %12, align 4
  %258 = load i32, i32* @IFCAP_TSO4, align 4
  %259 = and i32 %257, %258
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %268

261:                                              ; preds = %246
  %262 = load i32, i32* @IFCAP_TSO4, align 4
  %263 = xor i32 %262, -1
  %264 = load i32, i32* %12, align 4
  %265 = and i32 %264, %263
  store i32 %265, i32* %12, align 4
  %266 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %267 = call i32 @if_printf(%struct.ifnet* %266, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %268

268:                                              ; preds = %261, %246
  br label %269

269:                                              ; preds = %268, %236
  %270 = load i32, i32* %12, align 4
  %271 = load i32, i32* @IFCAP_TXCSUM_IPV6, align 4
  %272 = and i32 %270, %271
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %282

274:                                              ; preds = %269
  %275 = load i32, i32* @CSUM_TCP_IPV6, align 4
  %276 = load i32, i32* @CSUM_UDP_IPV6, align 4
  %277 = or i32 %275, %276
  %278 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %279 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %278, i32 0, i32 4
  %280 = load i32, i32* %279, align 8
  %281 = or i32 %280, %277
  store i32 %281, i32* %279, align 8
  br label %303

282:                                              ; preds = %269
  %283 = load i32, i32* @CSUM_TCP_IPV6, align 4
  %284 = load i32, i32* @CSUM_UDP_IPV6, align 4
  %285 = or i32 %283, %284
  %286 = xor i32 %285, -1
  %287 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %288 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %287, i32 0, i32 4
  %289 = load i32, i32* %288, align 8
  %290 = and i32 %289, %286
  store i32 %290, i32* %288, align 8
  %291 = load i32, i32* %12, align 4
  %292 = load i32, i32* @IFCAP_TSO6, align 4
  %293 = and i32 %291, %292
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %302

295:                                              ; preds = %282
  %296 = load i32, i32* @IFCAP_TSO6, align 4
  %297 = xor i32 %296, -1
  %298 = load i32, i32* %12, align 4
  %299 = and i32 %298, %297
  store i32 %299, i32* %12, align 4
  %300 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %301 = call i32 @if_printf(%struct.ifnet* %300, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %302

302:                                              ; preds = %295, %282
  br label %303

303:                                              ; preds = %302, %274
  %304 = load i32, i32* %12, align 4
  %305 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %306 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %305, i32 0, i32 2
  store i32 %304, i32* %306, align 8
  %307 = load %struct.sfxge_softc*, %struct.sfxge_softc** %8, align 8
  %308 = call i32 @SFXGE_ADAPTER_UNLOCK(%struct.sfxge_softc* %307)
  br label %385

309:                                              ; preds = %3, %3
  %310 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %311 = load %struct.ifreq*, %struct.ifreq** %9, align 8
  %312 = load %struct.sfxge_softc*, %struct.sfxge_softc** %8, align 8
  %313 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %312, i32 0, i32 2
  %314 = load i64, i64* %6, align 8
  %315 = call i32 @ifmedia_ioctl(%struct.ifnet* %310, %struct.ifreq* %311, i32* %313, i64 %314)
  store i32 %315, i32* %11, align 4
  br label %385

316:                                              ; preds = %3
  %317 = load %struct.ifreq*, %struct.ifreq** %9, align 8
  %318 = call i32 @ifr_data_get_ptr(%struct.ifreq* %317)
  %319 = call i32 @copyin(i32 %318, %struct.ifi2creq* %14, i32 24)
  store i32 %319, i32* %11, align 4
  %320 = load i32, i32* %11, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %323

322:                                              ; preds = %316
  br label %385

323:                                              ; preds = %316
  %324 = getelementptr inbounds %struct.ifi2creq, %struct.ifi2creq* %14, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  %326 = sext i32 %325 to i64
  %327 = icmp ugt i64 %326, 8
  br i1 %327, label %328, label %330

328:                                              ; preds = %323
  %329 = load i32, i32* @EINVAL, align 4
  store i32 %329, i32* %11, align 4
  br label %385

330:                                              ; preds = %323
  %331 = load %struct.sfxge_softc*, %struct.sfxge_softc** %8, align 8
  %332 = call i32 @SFXGE_ADAPTER_LOCK(%struct.sfxge_softc* %331)
  %333 = load %struct.sfxge_softc*, %struct.sfxge_softc** %8, align 8
  %334 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 4
  %336 = getelementptr inbounds %struct.ifi2creq, %struct.ifi2creq* %14, i32 0, i32 3
  %337 = load i32, i32* %336, align 4
  %338 = getelementptr inbounds %struct.ifi2creq, %struct.ifi2creq* %14, i32 0, i32 2
  %339 = load i32, i32* %338, align 8
  %340 = getelementptr inbounds %struct.ifi2creq, %struct.ifi2creq* %14, i32 0, i32 0
  %341 = load i32, i32* %340, align 8
  %342 = getelementptr inbounds %struct.ifi2creq, %struct.ifi2creq* %14, i32 0, i32 1
  %343 = load i32*, i32** %342, align 8
  %344 = getelementptr inbounds i32, i32* %343, i64 0
  %345 = call i32 @efx_phy_module_get_info(i32 %335, i32 %337, i32 %339, i32 %341, i32* %344)
  store i32 %345, i32* %11, align 4
  %346 = load %struct.sfxge_softc*, %struct.sfxge_softc** %8, align 8
  %347 = call i32 @SFXGE_ADAPTER_UNLOCK(%struct.sfxge_softc* %346)
  %348 = load i32, i32* %11, align 4
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %350, label %354

350:                                              ; preds = %330
  %351 = load %struct.ifreq*, %struct.ifreq** %9, align 8
  %352 = call i32 @ifr_data_get_ptr(%struct.ifreq* %351)
  %353 = call i32 @copyout(%struct.ifi2creq* %14, i32 %352, i32 24)
  store i32 %353, i32* %11, align 4
  br label %354

354:                                              ; preds = %350, %330
  br label %385

355:                                              ; preds = %3
  %356 = load i32, i32* @curthread, align 4
  %357 = load i32, i32* @PRIV_DRIVER, align 4
  %358 = call i32 @priv_check(i32 %356, i32 %357)
  store i32 %358, i32* %11, align 4
  %359 = load i32, i32* %11, align 4
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %362

361:                                              ; preds = %355
  br label %385

362:                                              ; preds = %355
  %363 = load %struct.ifreq*, %struct.ifreq** %9, align 8
  %364 = call i32 @ifr_data_get_ptr(%struct.ifreq* %363)
  %365 = call i32 @copyin(i32 %364, %struct.ifi2creq* %10, i32 24)
  store i32 %365, i32* %11, align 4
  %366 = load i32, i32* %11, align 4
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %370

368:                                              ; preds = %362
  %369 = load i32, i32* %11, align 4
  store i32 %369, i32* %4, align 4
  br label %387

370:                                              ; preds = %362
  %371 = load %struct.sfxge_softc*, %struct.sfxge_softc** %8, align 8
  %372 = call i32 @sfxge_private_ioctl(%struct.sfxge_softc* %371, %struct.ifi2creq* %10)
  store i32 %372, i32* %11, align 4
  %373 = load i32, i32* %11, align 4
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %375, label %379

375:                                              ; preds = %370
  %376 = load %struct.ifreq*, %struct.ifreq** %9, align 8
  %377 = call i32 @ifr_data_get_ptr(%struct.ifreq* %376)
  %378 = call i32 @copyout(%struct.ifi2creq* %10, i32 %377, i32 24)
  store i32 %378, i32* %11, align 4
  br label %379

379:                                              ; preds = %375, %370
  br label %385

380:                                              ; preds = %3
  %381 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %382 = load i64, i64* %6, align 8
  %383 = load i64, i64* %7, align 8
  %384 = call i32 @ether_ioctl(%struct.ifnet* %381, i64 %382, i64 %383)
  store i32 %384, i32* %11, align 4
  br label %385

385:                                              ; preds = %380, %379, %361, %354, %328, %322, %309, %303, %225, %206, %189, %152, %141, %69
  %386 = load i32, i32* %11, align 4
  store i32 %386, i32* %4, align 4
  br label %387

387:                                              ; preds = %385, %368
  %388 = load i32, i32* %4, align 4
  ret i32 %388
}

declare dso_local i32 @SFXGE_ADAPTER_LOCK(%struct.sfxge_softc*) #1

declare dso_local i32 @sfxge_mac_filter_set(%struct.sfxge_softc*) #1

declare dso_local i32 @sfxge_start(%struct.sfxge_softc*) #1

declare dso_local i32 @sfxge_stop(%struct.sfxge_softc*) #1

declare dso_local i32 @SFXGE_ADAPTER_UNLOCK(%struct.sfxge_softc*) #1

declare dso_local i32 @if_down(%struct.ifnet*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @if_printf(%struct.ifnet*, i8*) #1

declare dso_local i32 @ifmedia_ioctl(%struct.ifnet*, %struct.ifreq*, i32*, i64) #1

declare dso_local i32 @copyin(i32, %struct.ifi2creq*, i32) #1

declare dso_local i32 @ifr_data_get_ptr(%struct.ifreq*) #1

declare dso_local i32 @efx_phy_module_get_info(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @copyout(%struct.ifi2creq*, i32, i32) #1

declare dso_local i32 @priv_check(i32, i32) #1

declare dso_local i32 @sfxge_private_ioctl(%struct.sfxge_softc*, %struct.ifi2creq*) #1

declare dso_local i32 @ether_ioctl(%struct.ifnet*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
