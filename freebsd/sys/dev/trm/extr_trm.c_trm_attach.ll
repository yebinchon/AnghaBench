; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/trm/extr_trm.c_trm_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/trm/extr_trm.c_trm_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_devq = type { i32 }
%struct.TYPE_6__ = type { i32*, i32*, i64, i64, i64, i32, i64, i64, i32, i64, i64, i32*, i32 }

@.str = private unnamed_addr constant [24 x i8] c"trm%d: trm_init error!\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@INTR_TYPE_CAM = common dso_local global i32 0, align 4
@trm_Interrupt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"trm%d: register Interrupt handler error!\0A\00", align 1
@TRM_MAX_START_JOB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"trm%d: device_Q == NULL !\0A\00", align 1
@trm_action = common dso_local global i32 0, align 4
@trm_poll = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"trm\00", align 1
@Giant = common dso_local global i32 0, align 4
@TRM_MAX_TAGS_CMD_QUEUE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"trm%d: SIM allocate fault !\0A\00", align 1
@CAM_SUCCESS = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [33 x i8] c"trm%d: xpt_bus_register fault !\0A\00", align 1
@CAM_TARGET_WILDCARD = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [32 x i8] c"trm%d: xpt_create_path fault !\0A\00", align 1
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @trm_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trm_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.cam_devq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @device_get_unit(i32 %9)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @pci_get_devid(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call %struct.TYPE_6__* @trm_init(i32 %13, i32 %14)
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %6, align 8
  %16 = icmp eq %struct.TYPE_6__* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @ENXIO, align 4
  store i32 %20, i32* %2, align 4
  br label %248

21:                                               ; preds = %1
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @SYS_RES_IRQ, align 4
  %24 = load i32, i32* @RF_SHAREABLE, align 4
  %25 = load i32, i32* @RF_ACTIVE, align 4
  %26 = or i32 %24, %25
  %27 = call i32* @bus_alloc_resource_any(i32 %22, i32 %23, i32* %7, i32 %26)
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  store i32* %27, i32** %29, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %46, label %34

34:                                               ; preds = %21
  %35 = load i32, i32* %3, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* @INTR_TYPE_CAM, align 4
  %40 = load i32, i32* @trm_Interrupt, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  %44 = call i64 @bus_setup_intr(i32 %35, i32* %38, i32 %39, i32* null, i32 %40, %struct.TYPE_6__* %41, i64* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %34, %21
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  br label %108

49:                                               ; preds = %34
  %50 = load i32, i32* @TRM_MAX_START_JOB, align 4
  %51 = call %struct.cam_devq* @cam_simq_alloc(i32 %50)
  store %struct.cam_devq* %51, %struct.cam_devq** %4, align 8
  %52 = load %struct.cam_devq*, %struct.cam_devq** %4, align 8
  %53 = icmp eq %struct.cam_devq* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  br label %108

57:                                               ; preds = %49
  %58 = load i32, i32* @trm_action, align 4
  %59 = load i32, i32* @trm_poll, align 4
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @TRM_MAX_TAGS_CMD_QUEUE, align 4
  %63 = load %struct.cam_devq*, %struct.cam_devq** %4, align 8
  %64 = call i32* @cam_sim_alloc(i32 %58, i32 %59, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_6__* %60, i32 %61, i32* @Giant, i32 1, i32 %62, %struct.cam_devq* %63)
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  store i32* %64, i32** %66, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %76

71:                                               ; preds = %57
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %72)
  %74 = load %struct.cam_devq*, %struct.cam_devq** %4, align 8
  %75 = call i32 @cam_simq_free(%struct.cam_devq* %74)
  br label %108

76:                                               ; preds = %57
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %3, align 4
  %81 = call i64 @xpt_bus_register(i32* %79, i32 %80, i32 0)
  %82 = load i64, i64* @CAM_SUCCESS, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %76
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %85)
  br label %108

87:                                               ; preds = %76
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 12
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 @cam_sim_path(i32* %92)
  %94 = load i32, i32* @CAM_TARGET_WILDCARD, align 4
  %95 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %96 = call i64 @xpt_create_path(i32* %89, i32* null, i32 %93, i32 %94, i32 %95)
  %97 = load i64, i64* @CAM_REQ_CMP, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %107

99:                                               ; preds = %87
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %100)
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = call i32 @cam_sim_path(i32* %104)
  %106 = call i32 @xpt_bus_deregister(i32 %105)
  br label %108

107:                                              ; preds = %87
  store i32 0, i32* %2, align 4
  br label %248

108:                                              ; preds = %99, %84, %71, %54, %46
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 11
  %111 = load i32*, i32** %110, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %113, label %121

113:                                              ; preds = %108
  %114 = load i32, i32* %3, align 4
  %115 = load i32, i32* @SYS_RES_IOPORT, align 4
  %116 = call i32 @PCIR_BAR(i32 0)
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 11
  %119 = load i32*, i32** %118, align 8
  %120 = call i32 @bus_release_resource(i32 %114, i32 %115, i32 %116, i32* %119)
  br label %121

121:                                              ; preds = %113, %108
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 10
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %121
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %128 = call i32 @trm_destroySRB(%struct.TYPE_6__* %127)
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 10
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @bus_dma_tag_destroy(i64 %131)
  br label %133

133:                                              ; preds = %126, %121
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 9
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %156

138:                                              ; preds = %133
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 7
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 8
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @bus_dmamap_unload(i64 %141, i32 %144)
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 7
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 9
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 8
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @bus_dmamem_free(i64 %148, i64 %151, i32 %154)
  br label %156

156:                                              ; preds = %138, %133
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 7
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %156
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 7
  %164 = load i64, i64* %163, align 8
  %165 = call i32 @bus_dma_tag_destroy(i64 %164)
  br label %166

166:                                              ; preds = %161, %156
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 6
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %189

171:                                              ; preds = %166
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 4
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 5
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @bus_dmamap_unload(i64 %174, i32 %177)
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 4
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 6
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 5
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @bus_dmamem_free(i64 %181, i64 %184, i32 %187)
  br label %189

189:                                              ; preds = %171, %166
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 4
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %199

194:                                              ; preds = %189
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 4
  %197 = load i64, i64* %196, align 8
  %198 = call i32 @bus_dma_tag_destroy(i64 %197)
  br label %199

199:                                              ; preds = %194, %189
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 3
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %209

204:                                              ; preds = %199
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 3
  %207 = load i64, i64* %206, align 8
  %208 = call i32 @bus_dma_tag_destroy(i64 %207)
  br label %209

209:                                              ; preds = %204, %199
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 2
  %212 = load i64, i64* %211, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %223

214:                                              ; preds = %209
  %215 = load i32, i32* %3, align 4
  %216 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 1
  %218 = load i32*, i32** %217, align 8
  %219 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 2
  %221 = load i64, i64* %220, align 8
  %222 = call i32 @bus_teardown_intr(i32 %215, i32* %218, i64 %221)
  br label %223

223:                                              ; preds = %214, %209
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 1
  %226 = load i32*, i32** %225, align 8
  %227 = icmp ne i32* %226, null
  br i1 %227, label %228, label %235

228:                                              ; preds = %223
  %229 = load i32, i32* %3, align 4
  %230 = load i32, i32* @SYS_RES_IRQ, align 4
  %231 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 1
  %233 = load i32*, i32** %232, align 8
  %234 = call i32 @bus_release_resource(i32 %229, i32 %230, i32 0, i32* %233)
  br label %235

235:                                              ; preds = %228, %223
  %236 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %236, i32 0, i32 0
  %238 = load i32*, i32** %237, align 8
  %239 = icmp ne i32* %238, null
  br i1 %239, label %240, label %246

240:                                              ; preds = %235
  %241 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 0
  %243 = load i32*, i32** %242, align 8
  %244 = load i32, i32* @TRUE, align 4
  %245 = call i32 @cam_sim_free(i32* %243, i32 %244)
  br label %246

246:                                              ; preds = %240, %235
  %247 = load i32, i32* @ENXIO, align 4
  store i32 %247, i32* %2, align 4
  br label %248

248:                                              ; preds = %246, %107, %17
  %249 = load i32, i32* %2, align 4
  ret i32 %249
}

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @pci_get_devid(i32) #1

declare dso_local %struct.TYPE_6__* @trm_init(i32, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i64 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.TYPE_6__*, i64*) #1

declare dso_local %struct.cam_devq* @cam_simq_alloc(i32) #1

declare dso_local i32* @cam_sim_alloc(i32, i32, i8*, %struct.TYPE_6__*, i32, i32*, i32, i32, %struct.cam_devq*) #1

declare dso_local i32 @cam_simq_free(%struct.cam_devq*) #1

declare dso_local i64 @xpt_bus_register(i32*, i32, i32) #1

declare dso_local i64 @xpt_create_path(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @cam_sim_path(i32*) #1

declare dso_local i32 @xpt_bus_deregister(i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i32 @trm_destroySRB(%struct.TYPE_6__*) #1

declare dso_local i32 @bus_dma_tag_destroy(i64) #1

declare dso_local i32 @bus_dmamap_unload(i64, i32) #1

declare dso_local i32 @bus_dmamem_free(i64, i64, i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i64) #1

declare dso_local i32 @cam_sim_free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
