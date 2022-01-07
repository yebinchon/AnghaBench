; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_irq.c_drm_wait_vblank.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_irq.c_drm_wait_vblank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.drm_device = type { i32, i32*, i32, i32*, i64 }
%struct.drm_file = type { i32 }
%union.drm_wait_vblank = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i32 }
%struct.timeval = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@_DRM_VBLANK_SIGNAL = common dso_local global i32 0, align 4
@_DRM_VBLANK_TYPES_MASK = common dso_local global i32 0, align 4
@_DRM_VBLANK_FLAGS_MASK = common dso_local global i32 0, align 4
@_DRM_VBLANK_HIGH_CRTC_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Unsupported type value 0x%x, supported mask 0x%x\0A\00", align 1
@_DRM_VBLANK_HIGH_CRTC_SHIFT = common dso_local global i32 0, align 4
@_DRM_VBLANK_SECONDARY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"failed to acquire vblank counter, %d\0A\00", align 1
@_DRM_VBLANK_EVENT = common dso_local global i32 0, align 4
@_DRM_VBLANK_NEXTONMISS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"waiting on vblank count %d, crtc %d\0A\00", align 1
@PCATCH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"drmvbl\00", align 1
@hz = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@KTR_DRM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"wait_vblank %d %d rt %x success %d %d\00", align 1
@curproc = common dso_local global %struct.TYPE_6__* null, align 8
@.str.5 = private unnamed_addr constant [24 x i8] c"returning %d to client\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"wait_vblank %d %d rt %x error %d %d\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"vblank wait interrupted by signal\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_wait_vblank(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %union.drm_wait_vblank*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.timeval, align 4
  %15 = alloca i64, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %union.drm_wait_vblank*
  store %union.drm_wait_vblank* %17, %union.drm_wait_vblank** %8, align 8
  %18 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %19 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %296

25:                                               ; preds = %3
  %26 = load %union.drm_wait_vblank*, %union.drm_wait_vblank** %8, align 8
  %27 = bitcast %union.drm_wait_vblank* %26 to %struct.TYPE_5__*
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @_DRM_VBLANK_SIGNAL, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %296

36:                                               ; preds = %25
  %37 = load %union.drm_wait_vblank*, %union.drm_wait_vblank** %8, align 8
  %38 = bitcast %union.drm_wait_vblank* %37 to %struct.TYPE_5__*
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @_DRM_VBLANK_TYPES_MASK, align 4
  %42 = load i32, i32* @_DRM_VBLANK_FLAGS_MASK, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @_DRM_VBLANK_HIGH_CRTC_MASK, align 4
  %45 = or i32 %43, %44
  %46 = xor i32 %45, -1
  %47 = and i32 %40, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %36
  %50 = load %union.drm_wait_vblank*, %union.drm_wait_vblank** %8, align 8
  %51 = bitcast %union.drm_wait_vblank* %50 to %struct.TYPE_5__*
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @_DRM_VBLANK_TYPES_MASK, align 4
  %55 = load i32, i32* @_DRM_VBLANK_FLAGS_MASK, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @_DRM_VBLANK_HIGH_CRTC_MASK, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %58)
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %296

62:                                               ; preds = %36
  %63 = load %union.drm_wait_vblank*, %union.drm_wait_vblank** %8, align 8
  %64 = bitcast %union.drm_wait_vblank* %63 to %struct.TYPE_5__*
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @_DRM_VBLANK_FLAGS_MASK, align 4
  %68 = and i32 %66, %67
  store i32 %68, i32* %10, align 4
  %69 = load %union.drm_wait_vblank*, %union.drm_wait_vblank** %8, align 8
  %70 = bitcast %union.drm_wait_vblank* %69 to %struct.TYPE_5__*
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @_DRM_VBLANK_HIGH_CRTC_MASK, align 4
  %74 = and i32 %72, %73
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %13, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %62
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* @_DRM_VBLANK_HIGH_CRTC_SHIFT, align 4
  %80 = lshr i32 %78, %79
  store i32 %80, i32* %12, align 4
  br label %88

81:                                               ; preds = %62
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* @_DRM_VBLANK_SECONDARY, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i32 1, i32 0
  store i32 %87, i32* %12, align 4
  br label %88

88:                                               ; preds = %81, %77
  %89 = load i32, i32* %12, align 4
  %90 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %91 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp uge i32 %89, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %88
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %4, align 4
  br label %296

97:                                               ; preds = %88
  %98 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %99 = load i32, i32* %12, align 4
  %100 = call i32 @drm_vblank_get(%struct.drm_device* %98, i32 %99)
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %9, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %97
  %104 = load i32, i32* %9, align 4
  %105 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %104)
  %106 = load i32, i32* %9, align 4
  store i32 %106, i32* %4, align 4
  br label %296

107:                                              ; preds = %97
  %108 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %109 = load i32, i32* %12, align 4
  %110 = call i32 @drm_vblank_count(%struct.drm_device* %108, i32 %109)
  store i32 %110, i32* %11, align 4
  %111 = load %union.drm_wait_vblank*, %union.drm_wait_vblank** %8, align 8
  %112 = bitcast %union.drm_wait_vblank* %111 to %struct.TYPE_5__*
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @_DRM_VBLANK_TYPES_MASK, align 4
  %116 = and i32 %114, %115
  switch i32 %116, label %130 [
    i32 128, label %117
    i32 129, label %129
  ]

117:                                              ; preds = %107
  %118 = load i32, i32* %11, align 4
  %119 = load %union.drm_wait_vblank*, %union.drm_wait_vblank** %8, align 8
  %120 = bitcast %union.drm_wait_vblank* %119 to %struct.TYPE_5__*
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = add i32 %122, %118
  store i32 %123, i32* %121, align 4
  %124 = load %union.drm_wait_vblank*, %union.drm_wait_vblank** %8, align 8
  %125 = bitcast %union.drm_wait_vblank* %124 to %struct.TYPE_5__*
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = and i32 %127, -129
  store i32 %128, i32* %126, align 8
  br label %129

129:                                              ; preds = %107, %117
  br label %133

130:                                              ; preds = %107
  %131 = load i32, i32* @EINVAL, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %9, align 4
  br label %291

133:                                              ; preds = %129
  %134 = load i32, i32* %10, align 4
  %135 = load i32, i32* @_DRM_VBLANK_EVENT, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %133
  %139 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %140 = load i32, i32* %12, align 4
  %141 = load %union.drm_wait_vblank*, %union.drm_wait_vblank** %8, align 8
  %142 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %143 = call i32 @drm_queue_vblank_event(%struct.drm_device* %139, i32 %140, %union.drm_wait_vblank* %141, %struct.drm_file* %142)
  store i32 %143, i32* %4, align 4
  br label %296

144:                                              ; preds = %133
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* @_DRM_VBLANK_NEXTONMISS, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %163

149:                                              ; preds = %144
  %150 = load i32, i32* %11, align 4
  %151 = load %union.drm_wait_vblank*, %union.drm_wait_vblank** %8, align 8
  %152 = bitcast %union.drm_wait_vblank* %151 to %struct.TYPE_5__*
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = sub i32 %150, %154
  %156 = icmp ule i32 %155, 8388608
  br i1 %156, label %157, label %163

157:                                              ; preds = %149
  %158 = load i32, i32* %11, align 4
  %159 = add i32 %158, 1
  %160 = load %union.drm_wait_vblank*, %union.drm_wait_vblank** %8, align 8
  %161 = bitcast %union.drm_wait_vblank* %160 to %struct.TYPE_5__*
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 1
  store i32 %159, i32* %162, align 4
  br label %163

163:                                              ; preds = %157, %149, %144
  %164 = load %union.drm_wait_vblank*, %union.drm_wait_vblank** %8, align 8
  %165 = bitcast %union.drm_wait_vblank* %164 to %struct.TYPE_5__*
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* %12, align 4
  %169 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %167, i32 %168)
  %170 = load %union.drm_wait_vblank*, %union.drm_wait_vblank** %8, align 8
  %171 = bitcast %union.drm_wait_vblank* %170 to %struct.TYPE_5__*
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %175 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %174, i32 0, i32 1
  %176 = load i32*, i32** %175, align 8
  %177 = load i32, i32* %12, align 4
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  store i32 %173, i32* %179, align 4
  %180 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %181 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %180, i32 0, i32 2
  %182 = call i32 @mtx_lock(i32* %181)
  br label %183

183:                                              ; preds = %225, %163
  %184 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %185 = load i32, i32* %12, align 4
  %186 = call i32 @drm_vblank_count(%struct.drm_device* %184, i32 %185)
  %187 = load %union.drm_wait_vblank*, %union.drm_wait_vblank** %8, align 8
  %188 = bitcast %union.drm_wait_vblank* %187 to %struct.TYPE_5__*
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = sub i32 %186, %190
  %192 = icmp ugt i32 %191, 8388608
  br i1 %192, label %193, label %198

193:                                              ; preds = %183
  %194 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %195 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %194, i32 0, i32 4
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br label %198

198:                                              ; preds = %193, %183
  %199 = phi i1 [ false, %183 ], [ %197, %193 ]
  br i1 %199, label %200, label %226

200:                                              ; preds = %198
  %201 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %202 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %201, i32 0, i32 3
  %203 = load i32*, i32** %202, align 8
  %204 = load i32, i32* %12, align 4
  %205 = zext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  %207 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %208 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %207, i32 0, i32 2
  %209 = load i32, i32* @PCATCH, align 4
  %210 = load i32, i32* @hz, align 4
  %211 = mul nsw i32 3, %210
  %212 = call i32 @msleep(i32* %206, i32* %208, i32 %209, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %211)
  %213 = sub nsw i32 0, %212
  store i32 %213, i32* %9, align 4
  %214 = load i32, i32* %9, align 4
  %215 = load i32, i32* @ERESTART, align 4
  %216 = sub nsw i32 0, %215
  %217 = icmp eq i32 %214, %216
  br i1 %217, label %218, label %221

218:                                              ; preds = %200
  %219 = load i32, i32* @ERESTARTSYS, align 4
  %220 = sub nsw i32 0, %219
  store i32 %220, i32* %9, align 4
  br label %221

221:                                              ; preds = %218, %200
  %222 = load i32, i32* %9, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %221
  br label %226

225:                                              ; preds = %221
  br label %183

226:                                              ; preds = %224, %198
  %227 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %228 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %227, i32 0, i32 2
  %229 = call i32 @mtx_unlock(i32* %228)
  %230 = load i32, i32* %9, align 4
  %231 = load i32, i32* @EINTR, align 4
  %232 = sub nsw i32 0, %231
  %233 = icmp ne i32 %230, %232
  br i1 %233, label %234, label %272

234:                                              ; preds = %226
  %235 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %236 = load i32, i32* %12, align 4
  %237 = call i64 @drm_vblank_count_and_time(%struct.drm_device* %235, i32 %236, %struct.timeval* %14)
  store i64 %237, i64* %15, align 8
  %238 = load i32, i32* @KTR_DRM, align 4
  %239 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curproc, align 8
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* %12, align 4
  %243 = load %union.drm_wait_vblank*, %union.drm_wait_vblank** %8, align 8
  %244 = bitcast %union.drm_wait_vblank* %243 to %struct.TYPE_5__*
  %245 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = load %union.drm_wait_vblank*, %union.drm_wait_vblank** %8, align 8
  %248 = bitcast %union.drm_wait_vblank* %247 to %struct.TYPE_5__*
  %249 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = load i64, i64* %15, align 8
  %252 = call i32 @CTR5(i32 %238, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %241, i32 %242, i32 %246, i32 %250, i64 %251)
  %253 = load i64, i64* %15, align 8
  %254 = load %union.drm_wait_vblank*, %union.drm_wait_vblank** %8, align 8
  %255 = bitcast %union.drm_wait_vblank* %254 to %struct.TYPE_4__*
  %256 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %255, i32 0, i32 0
  store i64 %253, i64* %256, align 8
  %257 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = load %union.drm_wait_vblank*, %union.drm_wait_vblank** %8, align 8
  %260 = bitcast %union.drm_wait_vblank* %259 to %struct.TYPE_4__*
  %261 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %260, i32 0, i32 2
  store i32 %258, i32* %261, align 4
  %262 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = load %union.drm_wait_vblank*, %union.drm_wait_vblank** %8, align 8
  %265 = bitcast %union.drm_wait_vblank* %264 to %struct.TYPE_4__*
  %266 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %265, i32 0, i32 1
  store i32 %263, i32* %266, align 8
  %267 = load %union.drm_wait_vblank*, %union.drm_wait_vblank** %8, align 8
  %268 = bitcast %union.drm_wait_vblank* %267 to %struct.TYPE_4__*
  %269 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %268, i32 0, i32 0
  %270 = load i64, i64* %269, align 8
  %271 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i64 %270)
  br label %290

272:                                              ; preds = %226
  %273 = load i32, i32* @KTR_DRM, align 4
  %274 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curproc, align 8
  %275 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 4
  %277 = load i32, i32* %12, align 4
  %278 = load %union.drm_wait_vblank*, %union.drm_wait_vblank** %8, align 8
  %279 = bitcast %union.drm_wait_vblank* %278 to %struct.TYPE_5__*
  %280 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = load i32, i32* %9, align 4
  %283 = load %union.drm_wait_vblank*, %union.drm_wait_vblank** %8, align 8
  %284 = bitcast %union.drm_wait_vblank* %283 to %struct.TYPE_5__*
  %285 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = zext i32 %286 to i64
  %288 = call i32 @CTR5(i32 %273, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %276, i32 %277, i32 %281, i32 %282, i64 %287)
  %289 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  br label %290

290:                                              ; preds = %272, %234
  br label %291

291:                                              ; preds = %290, %130
  %292 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %293 = load i32, i32* %12, align 4
  %294 = call i32 @drm_vblank_put(%struct.drm_device* %292, i32 %293)
  %295 = load i32, i32* %9, align 4
  store i32 %295, i32* %4, align 4
  br label %296

296:                                              ; preds = %291, %138, %103, %94, %49, %33, %22
  %297 = load i32, i32* %4, align 4
  ret i32 %297
}

declare dso_local i32 @DRM_ERROR(i8*, i32, i32) #1

declare dso_local i32 @drm_vblank_get(%struct.drm_device*, i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, ...) #1

declare dso_local i32 @drm_vblank_count(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_queue_vblank_event(%struct.drm_device*, i32, %union.drm_wait_vblank*, %struct.drm_file*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @msleep(i32*, i32*, i32, i8*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i64 @drm_vblank_count_and_time(%struct.drm_device*, i32, %struct.timeval*) #1

declare dso_local i32 @CTR5(i32, i8*, i32, i32, i32, i32, i64) #1

declare dso_local i32 @drm_vblank_put(%struct.drm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
