; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64, i64, i64, i64, i64, i64, i32*, i32, i32*, i32*, %struct.TYPE_14__**, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i64, i32** }

@OCS_HW_RTN_SUCCESS = common dso_local global i32 0, align 4
@OCS_HW_STATE_ACTIVE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"HW state %d is not active\0A\00", align 1
@OCS_HW_STATE_RESET_IN_PROGRESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"All commands completed on MQ queue\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Some commands still pending on MQ queue\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"issuing function level reset\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"sli_reset failed\0A\00", align 1
@OCS_HW_RTN_ERROR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"issuing firmware reset\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"sli_soft_reset failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"unknown reset type - no reset performed\0A\00", align 1
@OCS_HW_STATE_UNINITIALIZED = common dso_local global i64 0, align 8
@OCS_HW_STATE_QUEUES_ALLOCATED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocs_hw_reset(%struct.TYPE_13__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* @OCS_HW_RTN_SUCCESS, align 4
  store i32 %12, i32* %7, align 4
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %9, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @OCS_HW_STATE_ACTIVE, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %2
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 20
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 (i32, i8*, ...) @ocs_log_test(i32 %24, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %27)
  br label %29

29:                                               ; preds = %21, %2
  %30 = load i64, i64* @OCS_HW_STATE_RESET_IN_PROGRESS, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %34 = call i32 @shutdown_target_wqe_timer(%struct.TYPE_13__* %33)
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %36 = call i32 @ocs_hw_flush(%struct.TYPE_13__* %35)
  store i64 10, i64* %8, align 8
  br label %37

37:                                               ; preds = %47, %29
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 21
  %40 = call i64 @ocs_list_empty(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = load i64, i64* %8, align 8
  %44 = icmp ne i64 %43, 0
  br label %45

45:                                               ; preds = %42, %37
  %46 = phi i1 [ false, %37 ], [ %44, %42 ]
  br i1 %46, label %47, label %53

47:                                               ; preds = %45
  %48 = call i32 @ocs_udelay(i32 10000)
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %50 = call i32 @ocs_hw_flush(%struct.TYPE_13__* %49)
  %51 = load i64, i64* %8, align 8
  %52 = add i64 %51, -1
  store i64 %52, i64* %8, align 8
  br label %37

53:                                               ; preds = %45
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 21
  %56 = call i64 @ocs_list_empty(i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 20
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @ocs_log_debug(i32 %61, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %68

63:                                               ; preds = %53
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 20
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @ocs_log_debug(i32 %66, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %68

68:                                               ; preds = %63, %58
  %69 = load i32, i32* %5, align 4
  switch i32 %69, label %117 [
    i32 128, label %70
    i32 129, label %86
  ]

70:                                               ; preds = %68
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 20
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @ocs_log_debug(i32 %73, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 8
  %77 = call i32 @sli_reset(i32* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %70
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 20
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @ocs_log_err(i32 %82, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %84 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %84, i32* %7, align 4
  br label %85

85:                                               ; preds = %79, %70
  br label %126

86:                                               ; preds = %68
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 20
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @ocs_log_debug(i32 %89, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 8
  %93 = call i32 @sli_fw_reset(i32* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %86
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 20
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @ocs_log_err(i32 %98, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %100 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %100, i32* %7, align 4
  br label %101

101:                                              ; preds = %95, %86
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 20
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @ocs_log_debug(i32 %104, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 8
  %108 = call i32 @sli_reset(i32* %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %101
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 20
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @ocs_log_err(i32 %113, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %115 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %115, i32* %7, align 4
  br label %116

116:                                              ; preds = %110, %101
  br label %126

117:                                              ; preds = %68
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 20
  %120 = load i32, i32* %119, align 8
  %121 = call i32 (i32, i8*, ...) @ocs_log_test(i32 %120, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  %122 = load i64, i64* %9, align 8
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 0
  store i64 %122, i64* %124, align 8
  %125 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %125, i32* %3, align 4
  br label %339

126:                                              ; preds = %116, %85
  %127 = load i64, i64* %9, align 8
  %128 = load i64, i64* @OCS_HW_STATE_UNINITIALIZED, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %186

130:                                              ; preds = %126
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %132 = call i32 @ocs_hw_command_cancel(%struct.TYPE_13__* %131)
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %134 = call i32 @ocs_hw_io_cancel(%struct.TYPE_13__* %133)
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 19
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @ocs_memset(i32 %137, i32 0, i32 4)
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 18
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @ocs_memset(i32 %141, i32 0, i32 4)
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %144 = call i32 @ocs_hw_link_event_init(%struct.TYPE_13__* %143)
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 14
  %147 = call i32 @ocs_lock(i32* %146)
  br label %148

148:                                              ; preds = %154, %130
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 17
  %151 = call i64 @ocs_list_empty(i32* %150)
  %152 = icmp ne i64 %151, 0
  %153 = xor i1 %152, true
  br i1 %153, label %154, label %158

154:                                              ; preds = %148
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 17
  %157 = call i32 @ocs_list_remove_head(i32* %156)
  br label %148

158:                                              ; preds = %148
  br label %159

159:                                              ; preds = %165, %158
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 16
  %162 = call i64 @ocs_list_empty(i32* %161)
  %163 = icmp ne i64 %162, 0
  %164 = xor i1 %163, true
  br i1 %164, label %165, label %169

165:                                              ; preds = %159
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 16
  %168 = call i32 @ocs_list_remove_head(i32* %167)
  br label %159

169:                                              ; preds = %159
  br label %170

170:                                              ; preds = %176, %169
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 15
  %173 = call i64 @ocs_list_empty(i32* %172)
  %174 = icmp ne i64 %173, 0
  %175 = xor i1 %174, true
  br i1 %175, label %176, label %180

176:                                              ; preds = %170
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 15
  %179 = call i32 @ocs_list_remove_head(i32* %178)
  br label %170

180:                                              ; preds = %170
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %182 = call i32 @ocs_hw_reqtag_reset(%struct.TYPE_13__* %181)
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 14
  %185 = call i32 @ocs_unlock(i32* %184)
  br label %186

186:                                              ; preds = %180, %126
  %187 = load i64, i64* %9, align 8
  %188 = load i64, i64* @OCS_HW_STATE_UNINITIALIZED, align 8
  %189 = icmp ne i64 %187, %188
  br i1 %189, label %190, label %329

190:                                              ; preds = %186
  store i64 0, i64* %6, align 8
  br label %191

191:                                              ; preds = %206, %190
  %192 = load i64, i64* %6, align 8
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = icmp ult i64 %192, %195
  br i1 %196, label %197, label %209

197:                                              ; preds = %191
  %198 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i32 0, i32 8
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 13
  %202 = load i32*, i32** %201, align 8
  %203 = load i64, i64* %6, align 8
  %204 = getelementptr inbounds i32, i32* %202, i64 %203
  %205 = call i32 @sli_queue_reset(i32* %199, i32* %204)
  br label %206

206:                                              ; preds = %197
  %207 = load i64, i64* %6, align 8
  %208 = add i64 %207, 1
  store i64 %208, i64* %6, align 8
  br label %191

209:                                              ; preds = %191
  store i64 0, i64* %6, align 8
  br label %210

210:                                              ; preds = %225, %209
  %211 = load i64, i64* %6, align 8
  %212 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i32 0, i32 2
  %214 = load i64, i64* %213, align 8
  %215 = icmp ult i64 %211, %214
  br i1 %215, label %216, label %228

216:                                              ; preds = %210
  %217 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i32 0, i32 8
  %219 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %219, i32 0, i32 12
  %221 = load i32*, i32** %220, align 8
  %222 = load i64, i64* %6, align 8
  %223 = getelementptr inbounds i32, i32* %221, i64 %222
  %224 = call i32 @sli_queue_reset(i32* %218, i32* %223)
  br label %225

225:                                              ; preds = %216
  %226 = load i64, i64* %6, align 8
  %227 = add i64 %226, 1
  store i64 %227, i64* %6, align 8
  br label %210

228:                                              ; preds = %210
  store i64 0, i64* %6, align 8
  br label %229

229:                                              ; preds = %264, %228
  %230 = load i64, i64* %6, align 8
  %231 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %231, i32 0, i32 3
  %233 = load i64, i64* %232, align 8
  %234 = icmp ult i64 %230, %233
  br i1 %234, label %235, label %267

235:                                              ; preds = %229
  %236 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %236, i32 0, i32 11
  %238 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %237, align 8
  %239 = load i64, i64* %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %238, i64 %239
  %241 = load %struct.TYPE_14__*, %struct.TYPE_14__** %240, align 8
  store %struct.TYPE_14__* %241, %struct.TYPE_14__** %10, align 8
  %242 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %243 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %242, i32 0, i32 1
  %244 = load i32**, i32*** %243, align 8
  %245 = icmp ne i32** %244, null
  br i1 %245, label %246, label %263

246:                                              ; preds = %235
  store i64 0, i64* %11, align 8
  br label %247

247:                                              ; preds = %259, %246
  %248 = load i64, i64* %11, align 8
  %249 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %250 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = icmp ult i64 %248, %251
  br i1 %252, label %253, label %262

253:                                              ; preds = %247
  %254 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %255 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %254, i32 0, i32 1
  %256 = load i32**, i32*** %255, align 8
  %257 = load i64, i64* %11, align 8
  %258 = getelementptr inbounds i32*, i32** %256, i64 %257
  store i32* null, i32** %258, align 8
  br label %259

259:                                              ; preds = %253
  %260 = load i64, i64* %11, align 8
  %261 = add i64 %260, 1
  store i64 %261, i64* %11, align 8
  br label %247

262:                                              ; preds = %247
  br label %263

263:                                              ; preds = %262, %235
  br label %264

264:                                              ; preds = %263
  %265 = load i64, i64* %6, align 8
  %266 = add i64 %265, 1
  store i64 %266, i64* %6, align 8
  br label %229

267:                                              ; preds = %229
  store i64 0, i64* %6, align 8
  br label %268

268:                                              ; preds = %283, %267
  %269 = load i64, i64* %6, align 8
  %270 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %271 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %270, i32 0, i32 4
  %272 = load i64, i64* %271, align 8
  %273 = icmp ult i64 %269, %272
  br i1 %273, label %274, label %286

274:                                              ; preds = %268
  %275 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %276 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %275, i32 0, i32 8
  %277 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %278 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %277, i32 0, i32 10
  %279 = load i32*, i32** %278, align 8
  %280 = load i64, i64* %6, align 8
  %281 = getelementptr inbounds i32, i32* %279, i64 %280
  %282 = call i32 @sli_queue_reset(i32* %276, i32* %281)
  br label %283

283:                                              ; preds = %274
  %284 = load i64, i64* %6, align 8
  %285 = add i64 %284, 1
  store i64 %285, i64* %6, align 8
  br label %268

286:                                              ; preds = %268
  store i64 0, i64* %6, align 8
  br label %287

287:                                              ; preds = %302, %286
  %288 = load i64, i64* %6, align 8
  %289 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %290 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %289, i32 0, i32 5
  %291 = load i64, i64* %290, align 8
  %292 = icmp ult i64 %288, %291
  br i1 %292, label %293, label %305

293:                                              ; preds = %287
  %294 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %295 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %294, i32 0, i32 8
  %296 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %297 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %296, i32 0, i32 9
  %298 = load i32*, i32** %297, align 8
  %299 = load i64, i64* %6, align 8
  %300 = getelementptr inbounds i32, i32* %298, i64 %299
  %301 = call i32 @sli_queue_reset(i32* %295, i32* %300)
  br label %302

302:                                              ; preds = %293
  %303 = load i64, i64* %6, align 8
  %304 = add i64 %303, 1
  store i64 %304, i64* %6, align 8
  br label %287

305:                                              ; preds = %287
  store i64 0, i64* %6, align 8
  br label %306

306:                                              ; preds = %321, %305
  %307 = load i64, i64* %6, align 8
  %308 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %309 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %308, i32 0, i32 6
  %310 = load i64, i64* %309, align 8
  %311 = icmp ult i64 %307, %310
  br i1 %311, label %312, label %324

312:                                              ; preds = %306
  %313 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %314 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %313, i32 0, i32 8
  %315 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %316 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %315, i32 0, i32 7
  %317 = load i32*, i32** %316, align 8
  %318 = load i64, i64* %6, align 8
  %319 = getelementptr inbounds i32, i32* %317, i64 %318
  %320 = call i32 @sli_queue_reset(i32* %314, i32* %319)
  br label %321

321:                                              ; preds = %312
  %322 = load i64, i64* %6, align 8
  %323 = add i64 %322, 1
  store i64 %323, i64* %6, align 8
  br label %306

324:                                              ; preds = %306
  %325 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %326 = call i32 @ocs_hw_rx_free(%struct.TYPE_13__* %325)
  %327 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %328 = call i32 @hw_queue_teardown(%struct.TYPE_13__* %327)
  br label %332

329:                                              ; preds = %186
  %330 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %331 = call i32 @ocs_hw_rx_free(%struct.TYPE_13__* %330)
  br label %332

332:                                              ; preds = %329, %324
  %333 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %334 = call i32 @ocs_hw_workaround_setup(%struct.TYPE_13__* %333)
  %335 = load i64, i64* @OCS_HW_STATE_QUEUES_ALLOCATED, align 8
  %336 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %337 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %336, i32 0, i32 0
  store i64 %335, i64* %337, align 8
  %338 = load i32, i32* %7, align 4
  store i32 %338, i32* %3, align 4
  br label %339

339:                                              ; preds = %332, %117
  %340 = load i32, i32* %3, align 4
  ret i32 %340
}

declare dso_local i32 @ocs_log_test(i32, i8*, ...) #1

declare dso_local i32 @shutdown_target_wqe_timer(%struct.TYPE_13__*) #1

declare dso_local i32 @ocs_hw_flush(%struct.TYPE_13__*) #1

declare dso_local i64 @ocs_list_empty(i32*) #1

declare dso_local i32 @ocs_udelay(i32) #1

declare dso_local i32 @ocs_log_debug(i32, i8*) #1

declare dso_local i32 @sli_reset(i32*) #1

declare dso_local i32 @ocs_log_err(i32, i8*) #1

declare dso_local i32 @sli_fw_reset(i32*) #1

declare dso_local i32 @ocs_hw_command_cancel(%struct.TYPE_13__*) #1

declare dso_local i32 @ocs_hw_io_cancel(%struct.TYPE_13__*) #1

declare dso_local i32 @ocs_memset(i32, i32, i32) #1

declare dso_local i32 @ocs_hw_link_event_init(%struct.TYPE_13__*) #1

declare dso_local i32 @ocs_lock(i32*) #1

declare dso_local i32 @ocs_list_remove_head(i32*) #1

declare dso_local i32 @ocs_hw_reqtag_reset(%struct.TYPE_13__*) #1

declare dso_local i32 @ocs_unlock(i32*) #1

declare dso_local i32 @sli_queue_reset(i32*, i32*) #1

declare dso_local i32 @ocs_hw_rx_free(%struct.TYPE_13__*) #1

declare dso_local i32 @hw_queue_teardown(%struct.TYPE_13__*) #1

declare dso_local i32 @ocs_hw_workaround_setup(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
