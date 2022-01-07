; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/re/extr_if_re.c_re_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/re/extr_if_re.c_re_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rl_softc = type { i32, i32, i32, i32, i64, %struct.TYPE_8__, i32*, i32, i32*, i32**, i32**, i64, i32, i32, %struct.ifnet* }
%struct.TYPE_8__ = type { i32, i32, i64, i32, i64, i64, i64, i64, %struct.TYPE_6__*, i64, i64, %struct.TYPE_5__*, i64, %struct.TYPE_7__*, i64, i32, i64, i64, i64, i32, i64, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { i64 }
%struct.ifnet = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"re mutex not initialized\00", align 1
@taskqueue_fast = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@RL_FLAG_MSI = common dso_local global i32 0, align 4
@RL_FLAG_MSIX = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@IFCAP_POLLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @re_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @re_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rl_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.rl_softc* @device_get_softc(i32 %7)
  store %struct.rl_softc* %8, %struct.rl_softc** %3, align 8
  %9 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %10 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %9, i32 0, i32 14
  %11 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  store %struct.ifnet* %11, %struct.ifnet** %4, align 8
  %12 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %13 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %12, i32 0, i32 3
  %14 = call i32 @mtx_initialized(i32* %13)
  %15 = call i32 @KASSERT(i32 %14, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %2, align 4
  %17 = call i64 @device_is_attached(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %41

19:                                               ; preds = %1
  %20 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %21 = call i32 @RL_LOCK(%struct.rl_softc* %20)
  %22 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %23 = call i32 @re_stop(%struct.rl_softc* %22)
  %24 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %25 = call i32 @RL_UNLOCK(%struct.rl_softc* %24)
  %26 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %27 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %26, i32 0, i32 13
  %28 = call i32 @callout_drain(i32* %27)
  %29 = load i32, i32* @taskqueue_fast, align 4
  %30 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %31 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %30, i32 0, i32 12
  %32 = call i32 @taskqueue_drain(i32 %29, i32* %31)
  %33 = load i32, i32* @IFF_UP, align 4
  %34 = xor i32 %33, -1
  %35 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %36 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %40 = call i32 @ether_ifdetach(%struct.ifnet* %39)
  br label %41

41:                                               ; preds = %19, %1
  %42 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %43 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %42, i32 0, i32 11
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load i32, i32* %2, align 4
  %48 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %49 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %48, i32 0, i32 11
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @device_delete_child(i32 %47, i64 %50)
  br label %52

52:                                               ; preds = %46, %41
  %53 = load i32, i32* %2, align 4
  %54 = call i32 @bus_generic_detach(i32 %53)
  %55 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %56 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %55, i32 0, i32 10
  %57 = load i32**, i32*** %56, align 8
  %58 = getelementptr inbounds i32*, i32** %57, i64 0
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %78

61:                                               ; preds = %52
  %62 = load i32, i32* %2, align 4
  %63 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %64 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %63, i32 0, i32 9
  %65 = load i32**, i32*** %64, align 8
  %66 = getelementptr inbounds i32*, i32** %65, i64 0
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %69 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %68, i32 0, i32 10
  %70 = load i32**, i32*** %69, align 8
  %71 = getelementptr inbounds i32*, i32** %70, i64 0
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @bus_teardown_intr(i32 %62, i32* %67, i32* %72)
  %74 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %75 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %74, i32 0, i32 10
  %76 = load i32**, i32*** %75, align 8
  %77 = getelementptr inbounds i32*, i32** %76, i64 0
  store i32* null, i32** %77, align 8
  br label %78

78:                                               ; preds = %61, %52
  %79 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %80 = icmp ne %struct.ifnet* %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %83 = call i32 @if_free(%struct.ifnet* %82)
  br label %84

84:                                               ; preds = %81, %78
  %85 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %86 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @RL_FLAG_MSI, align 4
  %89 = load i32, i32* @RL_FLAG_MSIX, align 4
  %90 = or i32 %88, %89
  %91 = and i32 %87, %90
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %84
  store i32 0, i32* %6, align 4
  br label %95

94:                                               ; preds = %84
  store i32 1, i32* %6, align 4
  br label %95

95:                                               ; preds = %94, %93
  %96 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %97 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %96, i32 0, i32 9
  %98 = load i32**, i32*** %97, align 8
  %99 = getelementptr inbounds i32*, i32** %98, i64 0
  %100 = load i32*, i32** %99, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %116

102:                                              ; preds = %95
  %103 = load i32, i32* %2, align 4
  %104 = load i32, i32* @SYS_RES_IRQ, align 4
  %105 = load i32, i32* %6, align 4
  %106 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %107 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %106, i32 0, i32 9
  %108 = load i32**, i32*** %107, align 8
  %109 = getelementptr inbounds i32*, i32** %108, i64 0
  %110 = load i32*, i32** %109, align 8
  %111 = call i32 @bus_release_resource(i32 %103, i32 %104, i32 %105, i32* %110)
  %112 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %113 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %112, i32 0, i32 9
  %114 = load i32**, i32*** %113, align 8
  %115 = getelementptr inbounds i32*, i32** %114, i64 0
  store i32* null, i32** %115, align 8
  br label %116

116:                                              ; preds = %102, %95
  %117 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %118 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @RL_FLAG_MSI, align 4
  %121 = load i32, i32* @RL_FLAG_MSIX, align 4
  %122 = or i32 %120, %121
  %123 = and i32 %119, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %116
  %126 = load i32, i32* %2, align 4
  %127 = call i32 @pci_release_msi(i32 %126)
  br label %128

128:                                              ; preds = %125, %116
  %129 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %130 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %129, i32 0, i32 8
  %131 = load i32*, i32** %130, align 8
  %132 = icmp ne i32* %131, null
  br i1 %132, label %133, label %142

133:                                              ; preds = %128
  %134 = call i32 @PCIR_BAR(i32 4)
  store i32 %134, i32* %6, align 4
  %135 = load i32, i32* %2, align 4
  %136 = load i32, i32* @SYS_RES_MEMORY, align 4
  %137 = load i32, i32* %6, align 4
  %138 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %139 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %138, i32 0, i32 8
  %140 = load i32*, i32** %139, align 8
  %141 = call i32 @bus_release_resource(i32 %135, i32 %136, i32 %137, i32* %140)
  br label %142

142:                                              ; preds = %133, %128
  %143 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %144 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %143, i32 0, i32 6
  %145 = load i32*, i32** %144, align 8
  %146 = icmp ne i32* %145, null
  br i1 %146, label %147, label %159

147:                                              ; preds = %142
  %148 = load i32, i32* %2, align 4
  %149 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %150 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %149, i32 0, i32 7
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %153 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %156 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %155, i32 0, i32 6
  %157 = load i32*, i32** %156, align 8
  %158 = call i32 @bus_release_resource(i32 %148, i32 %151, i32 %154, i32* %157)
  br label %159

159:                                              ; preds = %147, %142
  %160 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %161 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %160, i32 0, i32 5
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 18
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %207

165:                                              ; preds = %159
  %166 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %167 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %166, i32 0, i32 5
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 21
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %181

171:                                              ; preds = %165
  %172 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %173 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %172, i32 0, i32 5
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 18
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %177 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %176, i32 0, i32 5
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 19
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @bus_dmamap_unload(i64 %175, i32 %179)
  br label %181

181:                                              ; preds = %171, %165
  %182 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %183 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %182, i32 0, i32 5
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 20
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %201

187:                                              ; preds = %181
  %188 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %189 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %188, i32 0, i32 5
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 18
  %191 = load i64, i64* %190, align 8
  %192 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %193 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %192, i32 0, i32 5
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 20
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %197 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %196, i32 0, i32 5
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 19
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @bus_dmamem_free(i64 %191, i64 %195, i32 %199)
  br label %201

201:                                              ; preds = %187, %181
  %202 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %203 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %202, i32 0, i32 5
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 18
  %205 = load i64, i64* %204, align 8
  %206 = call i32 @bus_dma_tag_destroy(i64 %205)
  br label %207

207:                                              ; preds = %201, %159
  %208 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %209 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %208, i32 0, i32 5
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 14
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %255

213:                                              ; preds = %207
  %214 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %215 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %214, i32 0, i32 5
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 17
  %217 = load i64, i64* %216, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %229

219:                                              ; preds = %213
  %220 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %221 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %220, i32 0, i32 5
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 14
  %223 = load i64, i64* %222, align 8
  %224 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %225 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %224, i32 0, i32 5
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 15
  %227 = load i32, i32* %226, align 8
  %228 = call i32 @bus_dmamap_unload(i64 %223, i32 %227)
  br label %229

229:                                              ; preds = %219, %213
  %230 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %231 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %230, i32 0, i32 5
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 16
  %233 = load i64, i64* %232, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %249

235:                                              ; preds = %229
  %236 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %237 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %236, i32 0, i32 5
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %237, i32 0, i32 14
  %239 = load i64, i64* %238, align 8
  %240 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %241 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %240, i32 0, i32 5
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i32 0, i32 16
  %243 = load i64, i64* %242, align 8
  %244 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %245 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %244, i32 0, i32 5
  %246 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %245, i32 0, i32 15
  %247 = load i32, i32* %246, align 8
  %248 = call i32 @bus_dmamem_free(i64 %239, i64 %243, i32 %247)
  br label %249

249:                                              ; preds = %235, %229
  %250 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %251 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %250, i32 0, i32 5
  %252 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %251, i32 0, i32 14
  %253 = load i64, i64* %252, align 8
  %254 = call i32 @bus_dma_tag_destroy(i64 %253)
  br label %255

255:                                              ; preds = %249, %207
  %256 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %257 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %256, i32 0, i32 5
  %258 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %257, i32 0, i32 12
  %259 = load i64, i64* %258, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %305

261:                                              ; preds = %255
  store i32 0, i32* %5, align 4
  br label %262

262:                                              ; preds = %296, %261
  %263 = load i32, i32* %5, align 4
  %264 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %265 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %264, i32 0, i32 5
  %266 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = icmp slt i32 %263, %267
  br i1 %268, label %269, label %299

269:                                              ; preds = %262
  %270 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %271 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %270, i32 0, i32 5
  %272 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %271, i32 0, i32 13
  %273 = load %struct.TYPE_7__*, %struct.TYPE_7__** %272, align 8
  %274 = load i32, i32* %5, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %273, i64 %275
  %277 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %295

280:                                              ; preds = %269
  %281 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %282 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %281, i32 0, i32 5
  %283 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %282, i32 0, i32 12
  %284 = load i64, i64* %283, align 8
  %285 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %286 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %285, i32 0, i32 5
  %287 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %286, i32 0, i32 13
  %288 = load %struct.TYPE_7__*, %struct.TYPE_7__** %287, align 8
  %289 = load i32, i32* %5, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %288, i64 %290
  %292 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = call i32 @bus_dmamap_destroy(i64 %284, i64 %293)
  br label %295

295:                                              ; preds = %280, %269
  br label %296

296:                                              ; preds = %295
  %297 = load i32, i32* %5, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %5, align 4
  br label %262

299:                                              ; preds = %262
  %300 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %301 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %300, i32 0, i32 5
  %302 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %301, i32 0, i32 12
  %303 = load i64, i64* %302, align 8
  %304 = call i32 @bus_dma_tag_destroy(i64 %303)
  br label %305

305:                                              ; preds = %299, %255
  %306 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %307 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %306, i32 0, i32 5
  %308 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %307, i32 0, i32 9
  %309 = load i64, i64* %308, align 8
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %371

311:                                              ; preds = %305
  store i32 0, i32* %5, align 4
  br label %312

312:                                              ; preds = %346, %311
  %313 = load i32, i32* %5, align 4
  %314 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %315 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %314, i32 0, i32 5
  %316 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 4
  %318 = icmp slt i32 %313, %317
  br i1 %318, label %319, label %349

319:                                              ; preds = %312
  %320 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %321 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %320, i32 0, i32 5
  %322 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %321, i32 0, i32 11
  %323 = load %struct.TYPE_5__*, %struct.TYPE_5__** %322, align 8
  %324 = load i32, i32* %5, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %323, i64 %325
  %327 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %326, i32 0, i32 0
  %328 = load i64, i64* %327, align 8
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %330, label %345

330:                                              ; preds = %319
  %331 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %332 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %331, i32 0, i32 5
  %333 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %332, i32 0, i32 9
  %334 = load i64, i64* %333, align 8
  %335 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %336 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %335, i32 0, i32 5
  %337 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %336, i32 0, i32 11
  %338 = load %struct.TYPE_5__*, %struct.TYPE_5__** %337, align 8
  %339 = load i32, i32* %5, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %338, i64 %340
  %342 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %341, i32 0, i32 0
  %343 = load i64, i64* %342, align 8
  %344 = call i32 @bus_dmamap_destroy(i64 %334, i64 %343)
  br label %345

345:                                              ; preds = %330, %319
  br label %346

346:                                              ; preds = %345
  %347 = load i32, i32* %5, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %5, align 4
  br label %312

349:                                              ; preds = %312
  %350 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %351 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %350, i32 0, i32 5
  %352 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %351, i32 0, i32 10
  %353 = load i64, i64* %352, align 8
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %355, label %365

355:                                              ; preds = %349
  %356 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %357 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %356, i32 0, i32 5
  %358 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %357, i32 0, i32 9
  %359 = load i64, i64* %358, align 8
  %360 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %361 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %360, i32 0, i32 5
  %362 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %361, i32 0, i32 10
  %363 = load i64, i64* %362, align 8
  %364 = call i32 @bus_dmamap_destroy(i64 %359, i64 %363)
  br label %365

365:                                              ; preds = %355, %349
  %366 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %367 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %366, i32 0, i32 5
  %368 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %367, i32 0, i32 9
  %369 = load i64, i64* %368, align 8
  %370 = call i32 @bus_dma_tag_destroy(i64 %369)
  br label %371

371:                                              ; preds = %365, %305
  %372 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %373 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %372, i32 0, i32 5
  %374 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %373, i32 0, i32 6
  %375 = load i64, i64* %374, align 8
  %376 = icmp ne i64 %375, 0
  br i1 %376, label %377, label %437

377:                                              ; preds = %371
  store i32 0, i32* %5, align 4
  br label %378

378:                                              ; preds = %412, %377
  %379 = load i32, i32* %5, align 4
  %380 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %381 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %380, i32 0, i32 5
  %382 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %381, i32 0, i32 1
  %383 = load i32, i32* %382, align 4
  %384 = icmp slt i32 %379, %383
  br i1 %384, label %385, label %415

385:                                              ; preds = %378
  %386 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %387 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %386, i32 0, i32 5
  %388 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %387, i32 0, i32 8
  %389 = load %struct.TYPE_6__*, %struct.TYPE_6__** %388, align 8
  %390 = load i32, i32* %5, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %389, i64 %391
  %393 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %392, i32 0, i32 0
  %394 = load i64, i64* %393, align 8
  %395 = icmp ne i64 %394, 0
  br i1 %395, label %396, label %411

396:                                              ; preds = %385
  %397 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %398 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %397, i32 0, i32 5
  %399 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %398, i32 0, i32 6
  %400 = load i64, i64* %399, align 8
  %401 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %402 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %401, i32 0, i32 5
  %403 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %402, i32 0, i32 8
  %404 = load %struct.TYPE_6__*, %struct.TYPE_6__** %403, align 8
  %405 = load i32, i32* %5, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %404, i64 %406
  %408 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %407, i32 0, i32 0
  %409 = load i64, i64* %408, align 8
  %410 = call i32 @bus_dmamap_destroy(i64 %400, i64 %409)
  br label %411

411:                                              ; preds = %396, %385
  br label %412

412:                                              ; preds = %411
  %413 = load i32, i32* %5, align 4
  %414 = add nsw i32 %413, 1
  store i32 %414, i32* %5, align 4
  br label %378

415:                                              ; preds = %378
  %416 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %417 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %416, i32 0, i32 5
  %418 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %417, i32 0, i32 7
  %419 = load i64, i64* %418, align 8
  %420 = icmp ne i64 %419, 0
  br i1 %420, label %421, label %431

421:                                              ; preds = %415
  %422 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %423 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %422, i32 0, i32 5
  %424 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %423, i32 0, i32 6
  %425 = load i64, i64* %424, align 8
  %426 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %427 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %426, i32 0, i32 5
  %428 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %427, i32 0, i32 7
  %429 = load i64, i64* %428, align 8
  %430 = call i32 @bus_dmamap_destroy(i64 %425, i64 %429)
  br label %431

431:                                              ; preds = %421, %415
  %432 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %433 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %432, i32 0, i32 5
  %434 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %433, i32 0, i32 6
  %435 = load i64, i64* %434, align 8
  %436 = call i32 @bus_dma_tag_destroy(i64 %435)
  br label %437

437:                                              ; preds = %431, %371
  %438 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %439 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %438, i32 0, i32 5
  %440 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %439, i32 0, i32 2
  %441 = load i64, i64* %440, align 8
  %442 = icmp ne i64 %441, 0
  br i1 %442, label %443, label %485

443:                                              ; preds = %437
  %444 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %445 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %444, i32 0, i32 5
  %446 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %445, i32 0, i32 5
  %447 = load i64, i64* %446, align 8
  %448 = icmp ne i64 %447, 0
  br i1 %448, label %449, label %459

449:                                              ; preds = %443
  %450 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %451 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %450, i32 0, i32 5
  %452 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %451, i32 0, i32 2
  %453 = load i64, i64* %452, align 8
  %454 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %455 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %454, i32 0, i32 5
  %456 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %455, i32 0, i32 3
  %457 = load i32, i32* %456, align 8
  %458 = call i32 @bus_dmamap_unload(i64 %453, i32 %457)
  br label %459

459:                                              ; preds = %449, %443
  %460 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %461 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %460, i32 0, i32 5
  %462 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %461, i32 0, i32 4
  %463 = load i64, i64* %462, align 8
  %464 = icmp ne i64 %463, 0
  br i1 %464, label %465, label %479

465:                                              ; preds = %459
  %466 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %467 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %466, i32 0, i32 5
  %468 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %467, i32 0, i32 2
  %469 = load i64, i64* %468, align 8
  %470 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %471 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %470, i32 0, i32 5
  %472 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %471, i32 0, i32 4
  %473 = load i64, i64* %472, align 8
  %474 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %475 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %474, i32 0, i32 5
  %476 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %475, i32 0, i32 3
  %477 = load i32, i32* %476, align 8
  %478 = call i32 @bus_dmamem_free(i64 %469, i64 %473, i32 %477)
  br label %479

479:                                              ; preds = %465, %459
  %480 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %481 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %480, i32 0, i32 5
  %482 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %481, i32 0, i32 2
  %483 = load i64, i64* %482, align 8
  %484 = call i32 @bus_dma_tag_destroy(i64 %483)
  br label %485

485:                                              ; preds = %479, %437
  %486 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %487 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %486, i32 0, i32 4
  %488 = load i64, i64* %487, align 8
  %489 = icmp ne i64 %488, 0
  br i1 %489, label %490, label %495

490:                                              ; preds = %485
  %491 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %492 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %491, i32 0, i32 4
  %493 = load i64, i64* %492, align 8
  %494 = call i32 @bus_dma_tag_destroy(i64 %493)
  br label %495

495:                                              ; preds = %490, %485
  %496 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %497 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %496, i32 0, i32 3
  %498 = call i32 @mtx_destroy(i32* %497)
  ret i32 0
}

declare dso_local %struct.rl_softc* @device_get_softc(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_initialized(i32*) #1

declare dso_local i64 @device_is_attached(i32) #1

declare dso_local i32 @RL_LOCK(%struct.rl_softc*) #1

declare dso_local i32 @re_stop(%struct.rl_softc*) #1

declare dso_local i32 @RL_UNLOCK(%struct.rl_softc*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @taskqueue_drain(i32, i32*) #1

declare dso_local i32 @ether_ifdetach(%struct.ifnet*) #1

declare dso_local i32 @device_delete_child(i32, i64) #1

declare dso_local i32 @bus_generic_detach(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32*) #1

declare dso_local i32 @if_free(%struct.ifnet*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @pci_release_msi(i32) #1

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i32 @bus_dmamap_unload(i64, i32) #1

declare dso_local i32 @bus_dmamem_free(i64, i64, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i64) #1

declare dso_local i32 @bus_dmamap_destroy(i64, i64) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
