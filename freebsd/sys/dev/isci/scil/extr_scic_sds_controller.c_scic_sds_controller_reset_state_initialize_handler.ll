; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_controller.c_scic_sds_controller_reset_state_initialize_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_controller.c_scic_sds_controller_reset_state_initialize_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i64, i64, i64, i32, %struct.TYPE_27__*, i32*, i32*, i32 }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32*, %struct.TYPE_25__, %struct.TYPE_24__* }
%struct.TYPE_25__ = type { i32*, i32* }
%struct.TYPE_24__ = type { i32, i32 }

@SCI_SUCCESS = common dso_local global i64 0, align 8
@SCIC_LOG_OBJECT_CONTROLLER = common dso_local global i32 0, align 4
@SCIC_LOG_OBJECT_INITIALIZATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"scic_sds_controller_reset_state_initialize_handler(0x%x) enter\0A\00", align 1
@SCI_BASE_CONTROLLER_STATE_INITIALIZING = common dso_local global i32 0, align 4
@scic_sds_controller_timeout_handler = common dso_local global i32 0, align 4
@SCI_FAILURE = common dso_local global i64 0, align 8
@SCU_CONTEXT_RAM_INIT_STALL_TIME = common dso_local global i32 0, align 4
@SCU_RAM_INIT_COMPLETED = common dso_local global i64 0, align 8
@SCI_MODE_SPEED = common dso_local global i32 0, align 4
@PCI_RELAXED_ORDERING_ENABLE = common dso_local global i32 0, align 4
@SCI_MAX_PHYS = common dso_local global i64 0, align 8
@SCI_BASE_CONTROLLER_STATE_INITIALIZED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [91 x i8] c"Invalid Port Configuration from scic_sds_controller_reset_state_initialize_handler(0x%x) \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*)* @scic_sds_controller_reset_state_initialize_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @scic_sds_controller_reset_state_initialize_handler(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %13 = load i64, i64* @SCI_SUCCESS, align 8
  store i64 %13, i64* %4, align 8
  %14 = load i32*, i32** %2, align 8
  %15 = bitcast i32* %14 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %15, %struct.TYPE_28__** %5, align 8
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @sci_base_object_get_logger(i32* %16)
  %18 = load i32, i32* @SCIC_LOG_OBJECT_CONTROLLER, align 4
  %19 = load i32, i32* @SCIC_LOG_OBJECT_INITIALIZATION, align 4
  %20 = or i32 %18, %19
  %21 = load i32*, i32** %2, align 8
  %22 = ptrtoint i32* %21 to i32
  %23 = call i32 @SCIC_LOG_TRACE(i32 %22)
  %24 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %25 = call i32 @scic_sds_controller_get_base_state_machine(%struct.TYPE_28__* %24)
  %26 = load i32, i32* @SCI_BASE_CONTROLLER_STATE_INITIALIZING, align 4
  %27 = call i32 @sci_base_state_machine_change_state(i32 %25, i32 %26)
  %28 = load i32*, i32** %2, align 8
  %29 = load i32, i32* @scic_sds_controller_timeout_handler, align 4
  %30 = load i32*, i32** %2, align 8
  %31 = call i32 @scic_cb_timer_create(i32* %28, i32 %29, i32* %30)
  %32 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %32, i32 0, i32 7
  store i32 %31, i32* %33, align 8
  %34 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %35 = call i32 @scic_sds_controller_initialize_power_control(%struct.TYPE_28__* %34)
  %36 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %37 = call i32 @scic_sds_controller_reset_hardware(%struct.TYPE_28__* %36)
  %38 = load i64, i64* @SCI_SUCCESS, align 8
  %39 = load i64, i64* %4, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %69

41:                                               ; preds = %1
  %42 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %43 = call i32 @SMU_SMUSRCR_WRITE(%struct.TYPE_28__* %42, i32 0)
  %44 = load i64, i64* @SCI_FAILURE, align 8
  store i64 %44, i64* %4, align 8
  store i64 100, i64* %7, align 8
  br label %45

45:                                               ; preds = %67, %41
  %46 = load i64, i64* %7, align 8
  %47 = add nsw i64 %46, -1
  store i64 %47, i64* %7, align 8
  %48 = icmp ne i64 %46, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load i64, i64* %4, align 8
  %51 = load i64, i64* @SCI_SUCCESS, align 8
  %52 = icmp ne i64 %50, %51
  br label %53

53:                                               ; preds = %49, %45
  %54 = phi i1 [ false, %45 ], [ %52, %49 ]
  br i1 %54, label %55, label %68

55:                                               ; preds = %53
  %56 = load i32, i32* @SCU_CONTEXT_RAM_INIT_STALL_TIME, align 4
  %57 = call i32 @scic_cb_stall_execution(i32 %56)
  %58 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %59 = call i64 @SMU_SMUCSR_READ(%struct.TYPE_28__* %58)
  store i64 %59, i64* %6, align 8
  %60 = load i64, i64* %6, align 8
  %61 = load i64, i64* @SCU_RAM_INIT_COMPLETED, align 8
  %62 = and i64 %60, %61
  %63 = load i64, i64* @SCU_RAM_INIT_COMPLETED, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %55
  %66 = load i64, i64* @SCI_SUCCESS, align 8
  store i64 %66, i64* %4, align 8
  br label %67

67:                                               ; preds = %65, %55
  br label %45

68:                                               ; preds = %53
  br label %69

69:                                               ; preds = %68, %1
  %70 = load i64, i64* %4, align 8
  %71 = load i64, i64* @SCI_SUCCESS, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %131

73:                                               ; preds = %69
  %74 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %75 = call i64 @SMU_DCC_READ(%struct.TYPE_28__* %74)
  store i64 %75, i64* %11, align 8
  %76 = load i64, i64* %11, align 8
  %77 = call i64 @smu_dcc_get_max_ports(i64 %76)
  store i64 %77, i64* %8, align 8
  %78 = load i64, i64* %11, align 8
  %79 = call i64 @smu_dcc_get_max_remote_node_context(i64 %78)
  store i64 %79, i64* %9, align 8
  %80 = load i64, i64* %11, align 8
  %81 = call i64 @smu_dcc_get_max_task_context(i64 %80)
  store i64 %81, i64* %10, align 8
  store i64 0, i64* %3, align 8
  br label %82

82:                                               ; preds = %100, %73
  %83 = load i64, i64* %3, align 8
  %84 = load i64, i64* %8, align 8
  %85 = icmp slt i64 %83, %84
  br i1 %85, label %86, label %103

86:                                               ; preds = %82
  %87 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %88 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %88, i32 0, i32 4
  %90 = load %struct.TYPE_27__*, %struct.TYPE_27__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i64, i64* %3, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load i64, i64* %3, align 8
  %99 = call i32 @scu_register_write(%struct.TYPE_28__* %87, i32 %97, i64 %98)
  br label %100

100:                                              ; preds = %86
  %101 = load i64, i64* %3, align 8
  %102 = add nsw i64 %101, 1
  store i64 %102, i64* %3, align 8
  br label %82

103:                                              ; preds = %82
  %104 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %105 = load i32, i32* @SCI_MODE_SPEED, align 4
  %106 = call i32 @scic_controller_set_mode(%struct.TYPE_28__* %104, i32 %105)
  %107 = load i64, i64* %8, align 8
  %108 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = call i8* @MIN(i64 %107, i64 %110)
  %112 = ptrtoint i8* %111 to i64
  %113 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %113, i32 0, i32 0
  store i64 %112, i64* %114, align 8
  %115 = load i64, i64* %10, align 8
  %116 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = call i8* @MIN(i64 %115, i64 %118)
  %120 = ptrtoint i8* %119 to i64
  %121 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %121, i32 0, i32 1
  store i64 %120, i64* %122, align 8
  %123 = load i64, i64* %9, align 8
  %124 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = call i8* @MIN(i64 %123, i64 %126)
  %128 = ptrtoint i8* %127 to i64
  %129 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %129, i32 0, i32 2
  store i64 %128, i64* %130, align 8
  br label %131

131:                                              ; preds = %103, %69
  %132 = load i64, i64* %4, align 8
  %133 = load i64, i64* @SCI_SUCCESS, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %154

135:                                              ; preds = %131
  %136 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %137 = call i64 @SCU_PDMACR_READ(%struct.TYPE_28__* %136)
  store i64 %137, i64* %12, align 8
  %138 = load i32, i32* @PCI_RELAXED_ORDERING_ENABLE, align 4
  %139 = call i64 @SCU_PDMACR_GEN_BIT(i32 %138)
  %140 = load i64, i64* %12, align 8
  %141 = or i64 %140, %139
  store i64 %141, i64* %12, align 8
  %142 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %143 = load i64, i64* %12, align 8
  %144 = call i32 @SCU_PDMACR_WRITE(%struct.TYPE_28__* %142, i64 %143)
  %145 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %146 = call i64 @SCU_CDMACR_READ(%struct.TYPE_28__* %145)
  store i64 %146, i64* %12, align 8
  %147 = load i32, i32* @PCI_RELAXED_ORDERING_ENABLE, align 4
  %148 = call i64 @SCU_CDMACR_GEN_BIT(i32 %147)
  %149 = load i64, i64* %12, align 8
  %150 = or i64 %149, %148
  store i64 %150, i64* %12, align 8
  %151 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %152 = load i64, i64* %12, align 8
  %153 = call i32 @SCU_CDMACR_WRITE(%struct.TYPE_28__* %151, i64 %152)
  br label %154

154:                                              ; preds = %135, %131
  %155 = load i64, i64* %4, align 8
  %156 = load i64, i64* @SCI_SUCCESS, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %198

158:                                              ; preds = %154
  store i64 0, i64* %3, align 8
  br label %159

159:                                              ; preds = %194, %158
  %160 = load i64, i64* %4, align 8
  %161 = load i64, i64* @SCI_SUCCESS, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %167

163:                                              ; preds = %159
  %164 = load i64, i64* %3, align 8
  %165 = load i64, i64* @SCI_MAX_PHYS, align 8
  %166 = icmp slt i64 %164, %165
  br label %167

167:                                              ; preds = %163, %159
  %168 = phi i1 [ false, %159 ], [ %166, %163 ]
  br i1 %168, label %169, label %197

169:                                              ; preds = %167
  %170 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %170, i32 0, i32 6
  %172 = load i32*, i32** %171, align 8
  %173 = load i64, i64* %3, align 8
  %174 = getelementptr inbounds i32, i32* %172, i64 %173
  %175 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %175, i32 0, i32 4
  %177 = load %struct.TYPE_27__*, %struct.TYPE_27__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %178, i32 0, i32 2
  %180 = load %struct.TYPE_24__*, %struct.TYPE_24__** %179, align 8
  %181 = load i64, i64* %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %180, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %182, i32 0, i32 1
  %184 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %184, i32 0, i32 4
  %186 = load %struct.TYPE_27__*, %struct.TYPE_27__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %187, i32 0, i32 2
  %189 = load %struct.TYPE_24__*, %struct.TYPE_24__** %188, align 8
  %190 = load i64, i64* %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %189, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %191, i32 0, i32 0
  %193 = call i64 @scic_sds_phy_initialize(i32* %174, i32* %183, i32* %192)
  store i64 %193, i64* %4, align 8
  br label %194

194:                                              ; preds = %169
  %195 = load i64, i64* %3, align 8
  %196 = add nsw i64 %195, 1
  store i64 %196, i64* %3, align 8
  br label %159

197:                                              ; preds = %167
  br label %198

198:                                              ; preds = %197, %154
  %199 = load i64, i64* %4, align 8
  %200 = load i64, i64* @SCI_SUCCESS, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %202, label %205

202:                                              ; preds = %198
  %203 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %204 = call i32 @scic_sgpio_hardware_initialize(%struct.TYPE_28__* %203)
  br label %205

205:                                              ; preds = %202, %198
  %206 = load i64, i64* %4, align 8
  %207 = load i64, i64* @SCI_SUCCESS, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %209, label %256

209:                                              ; preds = %205
  store i64 0, i64* %3, align 8
  br label %210

210:                                              ; preds = %252, %209
  %211 = load i64, i64* %3, align 8
  %212 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = icmp slt i64 %211, %214
  br i1 %215, label %216, label %220

216:                                              ; preds = %210
  %217 = load i64, i64* %4, align 8
  %218 = load i64, i64* @SCI_SUCCESS, align 8
  %219 = icmp eq i64 %217, %218
  br label %220

220:                                              ; preds = %216, %210
  %221 = phi i1 [ false, %210 ], [ %219, %216 ]
  br i1 %221, label %222, label %255

222:                                              ; preds = %220
  %223 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %223, i32 0, i32 5
  %225 = load i32*, i32** %224, align 8
  %226 = load i64, i64* %3, align 8
  %227 = getelementptr inbounds i32, i32* %225, i64 %226
  %228 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %228, i32 0, i32 4
  %230 = load %struct.TYPE_27__*, %struct.TYPE_27__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %232, i32 0, i32 1
  %234 = load i32*, i32** %233, align 8
  %235 = load i64, i64* %3, align 8
  %236 = getelementptr inbounds i32, i32* %234, i64 %235
  %237 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %237, i32 0, i32 4
  %239 = load %struct.TYPE_27__*, %struct.TYPE_27__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %241, i32 0, i32 0
  %243 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %243, i32 0, i32 4
  %245 = load %struct.TYPE_27__*, %struct.TYPE_27__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %246, i32 0, i32 0
  %248 = load i32*, i32** %247, align 8
  %249 = load i64, i64* %3, align 8
  %250 = getelementptr inbounds i32, i32* %248, i64 %249
  %251 = call i64 @scic_sds_port_initialize(i32* %227, i32* %236, i32** %242, i32* %250)
  store i64 %251, i64* %4, align 8
  br label %252

252:                                              ; preds = %222
  %253 = load i64, i64* %3, align 8
  %254 = add nsw i64 %253, 1
  store i64 %254, i64* %3, align 8
  br label %210

255:                                              ; preds = %220
  br label %256

256:                                              ; preds = %255, %205
  %257 = load i64, i64* @SCI_SUCCESS, align 8
  %258 = load i64, i64* %4, align 8
  %259 = icmp eq i64 %257, %258
  br i1 %259, label %260, label %265

260:                                              ; preds = %256
  %261 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %262 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %263 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %262, i32 0, i32 3
  %264 = call i64 @scic_sds_port_configuration_agent_initialize(%struct.TYPE_28__* %261, i32* %263)
  store i64 %264, i64* %4, align 8
  br label %265

265:                                              ; preds = %260, %256
  %266 = load i64, i64* %4, align 8
  %267 = load i64, i64* @SCI_SUCCESS, align 8
  %268 = icmp eq i64 %266, %267
  br i1 %268, label %269, label %274

269:                                              ; preds = %265
  %270 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %271 = call i32 @scic_sds_controller_get_base_state_machine(%struct.TYPE_28__* %270)
  %272 = load i32, i32* @SCI_BASE_CONTROLLER_STATE_INITIALIZED, align 4
  %273 = call i32 @sci_base_state_machine_change_state(i32 %271, i32 %272)
  br label %285

274:                                              ; preds = %265
  %275 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %276 = call i32 @scic_sds_controller_release_resource(%struct.TYPE_28__* %275)
  %277 = load i32*, i32** %2, align 8
  %278 = call i32 @sci_base_object_get_logger(i32* %277)
  %279 = load i32, i32* @SCIC_LOG_OBJECT_CONTROLLER, align 4
  %280 = load i32, i32* @SCIC_LOG_OBJECT_INITIALIZATION, align 4
  %281 = or i32 %279, %280
  %282 = load i32*, i32** %2, align 8
  %283 = ptrtoint i32* %282 to i32
  %284 = call i32 @SCIC_LOG_TRACE(i32 %283)
  br label %285

285:                                              ; preds = %274, %269
  %286 = load i64, i64* %4, align 8
  ret i64 %286
}

declare dso_local i32 @SCIC_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(i32*) #1

declare dso_local i32 @sci_base_state_machine_change_state(i32, i32) #1

declare dso_local i32 @scic_sds_controller_get_base_state_machine(%struct.TYPE_28__*) #1

declare dso_local i32 @scic_cb_timer_create(i32*, i32, i32*) #1

declare dso_local i32 @scic_sds_controller_initialize_power_control(%struct.TYPE_28__*) #1

declare dso_local i32 @scic_sds_controller_reset_hardware(%struct.TYPE_28__*) #1

declare dso_local i32 @SMU_SMUSRCR_WRITE(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @scic_cb_stall_execution(i32) #1

declare dso_local i64 @SMU_SMUCSR_READ(%struct.TYPE_28__*) #1

declare dso_local i64 @SMU_DCC_READ(%struct.TYPE_28__*) #1

declare dso_local i64 @smu_dcc_get_max_ports(i64) #1

declare dso_local i64 @smu_dcc_get_max_remote_node_context(i64) #1

declare dso_local i64 @smu_dcc_get_max_task_context(i64) #1

declare dso_local i32 @scu_register_write(%struct.TYPE_28__*, i32, i64) #1

declare dso_local i32 @scic_controller_set_mode(%struct.TYPE_28__*, i32) #1

declare dso_local i8* @MIN(i64, i64) #1

declare dso_local i64 @SCU_PDMACR_READ(%struct.TYPE_28__*) #1

declare dso_local i64 @SCU_PDMACR_GEN_BIT(i32) #1

declare dso_local i32 @SCU_PDMACR_WRITE(%struct.TYPE_28__*, i64) #1

declare dso_local i64 @SCU_CDMACR_READ(%struct.TYPE_28__*) #1

declare dso_local i64 @SCU_CDMACR_GEN_BIT(i32) #1

declare dso_local i32 @SCU_CDMACR_WRITE(%struct.TYPE_28__*, i64) #1

declare dso_local i64 @scic_sds_phy_initialize(i32*, i32*, i32*) #1

declare dso_local i32 @scic_sgpio_hardware_initialize(%struct.TYPE_28__*) #1

declare dso_local i64 @scic_sds_port_initialize(i32*, i32*, i32**, i32*) #1

declare dso_local i64 @scic_sds_port_configuration_agent_initialize(%struct.TYPE_28__*, i32*) #1

declare dso_local i32 @scic_sds_controller_release_resource(%struct.TYPE_28__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
