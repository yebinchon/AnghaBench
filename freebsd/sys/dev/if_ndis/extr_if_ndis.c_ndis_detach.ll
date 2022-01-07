; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/if_ndis/extr_if_ndis.c_ndis_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/if_ndis/extr_if_ndis.c_ndis_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.ndis_softc = type { i64, i32, i32*, i32, i64, i64, i64, i64, i32, i64, i32, i64, i32, i64, i32*, i32*, i32*, i32*, i32*, i32*, i32, %struct.ifnet* }

@IFF_UP = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@PCIBus = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"PCI Bus\00", align 1
@PCMCIABus = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"PCCARD Bus\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"USB Bus\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"couldn't find driver object\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ndis_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.ndis_softc*, align 8
  %5 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.ndis_softc* @device_get_softc(i32 %6)
  store %struct.ndis_softc* %7, %struct.ndis_softc** %4, align 8
  %8 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %9 = call i32 @NDIS_LOCK(%struct.ndis_softc* %8)
  %10 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %11 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %16 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %15, i32 0, i32 21
  %17 = load %struct.ifnet*, %struct.ifnet** %16, align 8
  store %struct.ifnet* %17, %struct.ifnet** %3, align 8
  br label %19

18:                                               ; preds = %1
  store %struct.ifnet* null, %struct.ifnet** %3, align 8
  br label %19

19:                                               ; preds = %18, %14
  %20 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %21 = icmp ne %struct.ifnet* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load i32, i32* @IFF_UP, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %26 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %22, %19
  %30 = load i32, i32* %2, align 4
  %31 = call i64 @device_is_attached(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %54

33:                                               ; preds = %29
  %34 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %35 = call i32 @NDIS_UNLOCK(%struct.ndis_softc* %34)
  %36 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %37 = call i32 @ndis_stop(%struct.ndis_softc* %36)
  %38 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %39 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %33
  %43 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %44 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %43, i32 0, i32 20
  %45 = call i32 @ieee80211_ifdetach(i32* %44)
  br label %53

46:                                               ; preds = %33
  %47 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %48 = icmp ne %struct.ifnet* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %51 = call i32 @ether_ifdetach(%struct.ifnet* %50)
  br label %52

52:                                               ; preds = %49, %46
  br label %53

53:                                               ; preds = %52, %42
  br label %57

54:                                               ; preds = %29
  %55 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %56 = call i32 @NDIS_UNLOCK(%struct.ndis_softc* %55)
  br label %57

57:                                               ; preds = %54, %53
  %58 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %59 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %58, i32 0, i32 19
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %64 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %63, i32 0, i32 19
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @IoFreeWorkItem(i32* %65)
  br label %67

67:                                               ; preds = %62, %57
  %68 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %69 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %68, i32 0, i32 18
  %70 = load i32*, i32** %69, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %74 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %73, i32 0, i32 18
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @IoFreeWorkItem(i32* %75)
  br label %77

77:                                               ; preds = %72, %67
  %78 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %79 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %78, i32 0, i32 17
  %80 = load i32*, i32** %79, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %84 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %83, i32 0, i32 17
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @IoFreeWorkItem(i32* %85)
  br label %87

87:                                               ; preds = %82, %77
  %88 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %89 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %88, i32 0, i32 16
  %90 = load i32*, i32** %89, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %94 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %93, i32 0, i32 16
  %95 = load i32*, i32** %94, align 8
  %96 = call i32 @IoFreeWorkItem(i32* %95)
  br label %97

97:                                               ; preds = %92, %87
  %98 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %99 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %98, i32 0, i32 15
  %100 = load i32*, i32** %99, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %107

102:                                              ; preds = %97
  %103 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %104 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %103, i32 0, i32 15
  %105 = load i32*, i32** %104, align 8
  %106 = call i32 @IoFreeWorkItem(i32* %105)
  br label %107

107:                                              ; preds = %102, %97
  %108 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %109 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %108, i32 0, i32 14
  %110 = load i32*, i32** %109, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %117

112:                                              ; preds = %107
  %113 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %114 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %113, i32 0, i32 14
  %115 = load i32*, i32** %114, align 8
  %116 = call i32 @IoFreeWorkItem(i32* %115)
  br label %117

117:                                              ; preds = %112, %107
  %118 = load i32, i32* %2, align 4
  %119 = call i32 @bus_generic_detach(i32 %118)
  %120 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %121 = call i32 @ndis_unload_driver(%struct.ndis_softc* %120)
  %122 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %123 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %122, i32 0, i32 13
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %117
  %127 = load i32, i32* %2, align 4
  %128 = load i32, i32* @SYS_RES_IRQ, align 4
  %129 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %130 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %129, i32 0, i32 13
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @bus_release_resource(i32 %127, i32 %128, i32 0, i64 %131)
  br label %133

133:                                              ; preds = %126, %117
  %134 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %135 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %134, i32 0, i32 11
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %148

138:                                              ; preds = %133
  %139 = load i32, i32* %2, align 4
  %140 = load i32, i32* @SYS_RES_IOPORT, align 4
  %141 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %142 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %141, i32 0, i32 12
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %145 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %144, i32 0, i32 11
  %146 = load i64, i64* %145, align 8
  %147 = call i32 @bus_release_resource(i32 %139, i32 %140, i32 %143, i64 %146)
  br label %148

148:                                              ; preds = %138, %133
  %149 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %150 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %149, i32 0, i32 9
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %163

153:                                              ; preds = %148
  %154 = load i32, i32* %2, align 4
  %155 = load i32, i32* @SYS_RES_MEMORY, align 4
  %156 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %157 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %156, i32 0, i32 10
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %160 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %159, i32 0, i32 9
  %161 = load i64, i64* %160, align 8
  %162 = call i32 @bus_release_resource(i32 %154, i32 %155, i32 %158, i64 %161)
  br label %163

163:                                              ; preds = %153, %148
  %164 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %165 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %164, i32 0, i32 7
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %178

168:                                              ; preds = %163
  %169 = load i32, i32* %2, align 4
  %170 = load i32, i32* @SYS_RES_MEMORY, align 4
  %171 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %172 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %171, i32 0, i32 8
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %175 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %174, i32 0, i32 7
  %176 = load i64, i64* %175, align 8
  %177 = call i32 @bus_release_resource(i32 %169, i32 %170, i32 %173, i64 %176)
  br label %178

178:                                              ; preds = %168, %163
  %179 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %180 = icmp ne %struct.ifnet* %179, null
  br i1 %180, label %181, label %184

181:                                              ; preds = %178
  %182 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %183 = call i32 @if_free(%struct.ifnet* %182)
  br label %184

184:                                              ; preds = %181, %178
  %185 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %186 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %185, i32 0, i32 6
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %184
  %190 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %191 = call i32 @ndis_destroy_dma(%struct.ndis_softc* %190)
  br label %192

192:                                              ; preds = %189, %184
  %193 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %194 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %193, i32 0, i32 5
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %203

197:                                              ; preds = %192
  %198 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %199 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %198, i32 0, i32 5
  %200 = load i64, i64* %199, align 8
  %201 = load i32, i32* @M_DEVBUF, align 4
  %202 = call i32 @free(i64 %200, i32 %201)
  br label %203

203:                                              ; preds = %197, %192
  %204 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %205 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %204, i32 0, i32 4
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %212, label %208

208:                                              ; preds = %203
  %209 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %210 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %209, i32 0, i32 3
  %211 = call i32 @ifmedia_removeall(i32* %210)
  br label %212

212:                                              ; preds = %208, %203
  %213 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %214 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %213, i32 0, i32 2
  %215 = load i32*, i32** %214, align 8
  %216 = icmp ne i32* %215, null
  br i1 %216, label %217, label %222

217:                                              ; preds = %212
  %218 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %219 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %218, i32 0, i32 2
  %220 = load i32*, i32** %219, align 8
  %221 = call i32 @NdisFreePacketPool(i32* %220)
  br label %222

222:                                              ; preds = %217, %212
  %223 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %224 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* @PCIBus, align 8
  %227 = icmp eq i64 %225, %226
  br i1 %227, label %228, label %230

228:                                              ; preds = %222
  %229 = call i32* @windrv_lookup(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32* %229, i32** %5, align 8
  br label %241

230:                                              ; preds = %222
  %231 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %232 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = load i64, i64* @PCMCIABus, align 8
  %235 = icmp eq i64 %233, %234
  br i1 %235, label %236, label %238

236:                                              ; preds = %230
  %237 = call i32* @windrv_lookup(i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32* %237, i32** %5, align 8
  br label %240

238:                                              ; preds = %230
  %239 = call i32* @windrv_lookup(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i32* %239, i32** %5, align 8
  br label %240

240:                                              ; preds = %238, %236
  br label %241

241:                                              ; preds = %240, %228
  %242 = load i32*, i32** %5, align 8
  %243 = icmp eq i32* %242, null
  br i1 %243, label %244, label %246

244:                                              ; preds = %241
  %245 = call i32 @panic(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %246

246:                                              ; preds = %244, %241
  %247 = load i32*, i32** %5, align 8
  %248 = load i32, i32* %2, align 4
  %249 = call i32 @windrv_destroy_pdo(i32* %247, i32 %248)
  %250 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %251 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = load i64, i64* @PCIBus, align 8
  %254 = icmp eq i64 %252, %253
  br i1 %254, label %255, label %260

255:                                              ; preds = %246
  %256 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %257 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 8
  %259 = call i32 @bus_dma_tag_destroy(i32 %258)
  br label %260

260:                                              ; preds = %255, %246
  ret i32 0
}

declare dso_local %struct.ndis_softc* @device_get_softc(i32) #1

declare dso_local i32 @NDIS_LOCK(%struct.ndis_softc*) #1

declare dso_local i64 @device_is_attached(i32) #1

declare dso_local i32 @NDIS_UNLOCK(%struct.ndis_softc*) #1

declare dso_local i32 @ndis_stop(%struct.ndis_softc*) #1

declare dso_local i32 @ieee80211_ifdetach(i32*) #1

declare dso_local i32 @ether_ifdetach(%struct.ifnet*) #1

declare dso_local i32 @IoFreeWorkItem(i32*) #1

declare dso_local i32 @bus_generic_detach(i32) #1

declare dso_local i32 @ndis_unload_driver(%struct.ndis_softc*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i64) #1

declare dso_local i32 @if_free(%struct.ifnet*) #1

declare dso_local i32 @ndis_destroy_dma(%struct.ndis_softc*) #1

declare dso_local i32 @free(i64, i32) #1

declare dso_local i32 @ifmedia_removeall(i32*) #1

declare dso_local i32 @NdisFreePacketPool(i32*) #1

declare dso_local i32* @windrv_lookup(i32, i8*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @windrv_destroy_pdo(i32*, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
