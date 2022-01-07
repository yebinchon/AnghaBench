; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_crtc.c_drm_mode_page_flip_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_crtc.c_drm_mode_page_flip_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_mode_crtc_page_flip = type { i32, i64, i32, i32, i32 }
%struct.drm_mode_object = type { i32 }
%struct.drm_crtc = type { i32, i32, %struct.TYPE_11__*, i64, %struct.TYPE_7__, i32* }
%struct.TYPE_11__ = type { i32 (%struct.drm_crtc*, %struct.drm_framebuffer*, %struct.drm_pending_vblank_event*)* }
%struct.drm_framebuffer = type { i32, i32 }
%struct.drm_pending_vblank_event = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { void (%struct.drm_pending_event*)*, %struct.drm_file*, %struct.TYPE_8__* }
%struct.drm_pending_event = type opaque
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.drm_pending_event.0 = type opaque

@EINVAL = common dso_local global i32 0, align 4
@DRM_MODE_PAGE_FLIP_FLAGS = common dso_local global i32 0, align 4
@DRM_MODE_OBJECT_CRTC = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@DRM_MODE_OBJECT_FB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Invalid fb size %ux%u for CRTC viewport %ux%u+%d+%d%s.\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c" (inverted)\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ENOSPC = common dso_local global i32 0, align 4
@DRM_MODE_PAGE_FLIP_EVENT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DRM_MEM_KMS = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@DRM_EVENT_FLIP_COMPLETE = common dso_local global i32 0, align 4
@free_vblank_event = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_mode_page_flip_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_mode_crtc_page_flip*, align 8
  %9 = alloca %struct.drm_mode_object*, align 8
  %10 = alloca %struct.drm_crtc*, align 8
  %11 = alloca %struct.drm_framebuffer*, align 8
  %12 = alloca %struct.drm_pending_vblank_event*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = bitcast i8* %18 to %struct.drm_mode_crtc_page_flip*
  store %struct.drm_mode_crtc_page_flip* %19, %struct.drm_mode_crtc_page_flip** %8, align 8
  store %struct.drm_pending_vblank_event* null, %struct.drm_pending_vblank_event** %12, align 8
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %16, align 4
  %22 = load %struct.drm_mode_crtc_page_flip*, %struct.drm_mode_crtc_page_flip** %8, align 8
  %23 = getelementptr inbounds %struct.drm_mode_crtc_page_flip, %struct.drm_mode_crtc_page_flip* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @DRM_MODE_PAGE_FLIP_FLAGS, align 4
  %26 = xor i32 %25, -1
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %3
  %30 = load %struct.drm_mode_crtc_page_flip*, %struct.drm_mode_crtc_page_flip** %8, align 8
  %31 = getelementptr inbounds %struct.drm_mode_crtc_page_flip, %struct.drm_mode_crtc_page_flip* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29, %3
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %281

37:                                               ; preds = %29
  %38 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %39 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = call i32 @sx_xlock(i32* %40)
  %42 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %43 = load %struct.drm_mode_crtc_page_flip*, %struct.drm_mode_crtc_page_flip** %8, align 8
  %44 = getelementptr inbounds %struct.drm_mode_crtc_page_flip, %struct.drm_mode_crtc_page_flip* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @DRM_MODE_OBJECT_CRTC, align 4
  %47 = call %struct.drm_mode_object* @drm_mode_object_find(%struct.drm_device* %42, i32 %45, i32 %46)
  store %struct.drm_mode_object* %47, %struct.drm_mode_object** %9, align 8
  %48 = load %struct.drm_mode_object*, %struct.drm_mode_object** %9, align 8
  %49 = icmp ne %struct.drm_mode_object* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %37
  br label %275

51:                                               ; preds = %37
  %52 = load %struct.drm_mode_object*, %struct.drm_mode_object** %9, align 8
  %53 = call %struct.drm_crtc* @obj_to_crtc(%struct.drm_mode_object* %52)
  store %struct.drm_crtc* %53, %struct.drm_crtc** %10, align 8
  %54 = load %struct.drm_crtc*, %struct.drm_crtc** %10, align 8
  %55 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %54, i32 0, i32 5
  %56 = load i32*, i32** %55, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load i32, i32* @EBUSY, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %16, align 4
  br label %275

61:                                               ; preds = %51
  %62 = load %struct.drm_crtc*, %struct.drm_crtc** %10, align 8
  %63 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %62, i32 0, i32 2
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i32 (%struct.drm_crtc*, %struct.drm_framebuffer*, %struct.drm_pending_vblank_event*)*, i32 (%struct.drm_crtc*, %struct.drm_framebuffer*, %struct.drm_pending_vblank_event*)** %65, align 8
  %67 = icmp eq i32 (%struct.drm_crtc*, %struct.drm_framebuffer*, %struct.drm_pending_vblank_event*)* %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  br label %275

69:                                               ; preds = %61
  %70 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %71 = load %struct.drm_mode_crtc_page_flip*, %struct.drm_mode_crtc_page_flip** %8, align 8
  %72 = getelementptr inbounds %struct.drm_mode_crtc_page_flip, %struct.drm_mode_crtc_page_flip* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @DRM_MODE_OBJECT_FB, align 4
  %75 = call %struct.drm_mode_object* @drm_mode_object_find(%struct.drm_device* %70, i32 %73, i32 %74)
  store %struct.drm_mode_object* %75, %struct.drm_mode_object** %9, align 8
  %76 = load %struct.drm_mode_object*, %struct.drm_mode_object** %9, align 8
  %77 = icmp ne %struct.drm_mode_object* %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %69
  br label %275

79:                                               ; preds = %69
  %80 = load %struct.drm_mode_object*, %struct.drm_mode_object** %9, align 8
  %81 = call %struct.drm_framebuffer* @obj_to_fb(%struct.drm_mode_object* %80)
  store %struct.drm_framebuffer* %81, %struct.drm_framebuffer** %11, align 8
  %82 = load %struct.drm_crtc*, %struct.drm_crtc** %10, align 8
  %83 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  store i32 %85, i32* %14, align 4
  %86 = load %struct.drm_crtc*, %struct.drm_crtc** %10, align 8
  %87 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %86, i32 0, i32 4
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %15, align 4
  %90 = load %struct.drm_crtc*, %struct.drm_crtc** %10, align 8
  %91 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %79
  %95 = load i32, i32* %15, align 4
  store i32 %95, i32* %17, align 4
  %96 = load i32, i32* %14, align 4
  store i32 %96, i32* %15, align 4
  %97 = load i32, i32* %17, align 4
  store i32 %97, i32* %14, align 4
  br label %98

98:                                               ; preds = %94, %79
  %99 = load i32, i32* %14, align 4
  %100 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  %101 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp sgt i32 %99, %102
  br i1 %103, label %130, label %104

104:                                              ; preds = %98
  %105 = load i32, i32* %15, align 4
  %106 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  %107 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = icmp sgt i32 %105, %108
  br i1 %109, label %130, label %110

110:                                              ; preds = %104
  %111 = load %struct.drm_crtc*, %struct.drm_crtc** %10, align 8
  %112 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  %115 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %14, align 4
  %118 = sub nsw i32 %116, %117
  %119 = icmp sgt i32 %113, %118
  br i1 %119, label %130, label %120

120:                                              ; preds = %110
  %121 = load %struct.drm_crtc*, %struct.drm_crtc** %10, align 8
  %122 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  %125 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %15, align 4
  %128 = sub nsw i32 %126, %127
  %129 = icmp sgt i32 %123, %128
  br i1 %129, label %130, label %154

130:                                              ; preds = %120, %110, %104, %98
  %131 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  %132 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  %135 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %14, align 4
  %138 = load i32, i32* %15, align 4
  %139 = load %struct.drm_crtc*, %struct.drm_crtc** %10, align 8
  %140 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.drm_crtc*, %struct.drm_crtc** %10, align 8
  %143 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.drm_crtc*, %struct.drm_crtc** %10, align 8
  %146 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %145, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  %149 = zext i1 %148 to i64
  %150 = select i1 %148, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %151 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %133, i32 %136, i32 %137, i32 %138, i32 %141, i32 %144, i8* %150)
  %152 = load i32, i32* @ENOSPC, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %16, align 4
  br label %275

154:                                              ; preds = %120
  %155 = load %struct.drm_mode_crtc_page_flip*, %struct.drm_mode_crtc_page_flip** %8, align 8
  %156 = getelementptr inbounds %struct.drm_mode_crtc_page_flip, %struct.drm_mode_crtc_page_flip* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @DRM_MODE_PAGE_FLIP_EVENT, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %238

161:                                              ; preds = %154
  %162 = load i32, i32* @ENOMEM, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %16, align 4
  %164 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %165 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %164, i32 0, i32 1
  %166 = call i32 @mtx_lock(i32* %165)
  %167 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %168 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = sext i32 %169 to i64
  %171 = icmp ult i64 %170, 12
  br i1 %171, label %172, label %176

172:                                              ; preds = %161
  %173 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %174 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %173, i32 0, i32 1
  %175 = call i32 @mtx_unlock(i32* %174)
  br label %275

176:                                              ; preds = %161
  %177 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %178 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = sext i32 %179 to i64
  %181 = sub i64 %180, 12
  %182 = trunc i64 %181 to i32
  store i32 %182, i32* %178, align 4
  %183 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %184 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %183, i32 0, i32 1
  %185 = call i32 @mtx_unlock(i32* %184)
  %186 = load i32, i32* @DRM_MEM_KMS, align 4
  %187 = load i32, i32* @M_WAITOK, align 4
  %188 = load i32, i32* @M_ZERO, align 4
  %189 = or i32 %187, %188
  %190 = call %struct.drm_pending_vblank_event* @malloc(i32 40, i32 %186, i32 %189)
  store %struct.drm_pending_vblank_event* %190, %struct.drm_pending_vblank_event** %12, align 8
  %191 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %12, align 8
  %192 = icmp eq %struct.drm_pending_vblank_event* %191, null
  br i1 %192, label %193, label %206

193:                                              ; preds = %176
  %194 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %195 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %194, i32 0, i32 1
  %196 = call i32 @mtx_lock(i32* %195)
  %197 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %198 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = sext i32 %199 to i64
  %201 = add i64 %200, 12
  %202 = trunc i64 %201 to i32
  store i32 %202, i32* %198, align 4
  %203 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %204 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %203, i32 0, i32 1
  %205 = call i32 @mtx_unlock(i32* %204)
  br label %275

206:                                              ; preds = %176
  %207 = load i32, i32* @DRM_EVENT_FLIP_COMPLETE, align 4
  %208 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %12, align 8
  %209 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 1
  store i32 %207, i32* %211, align 4
  %212 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %12, align 8
  %213 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 0
  store i32 12, i32* %215, align 8
  %216 = load %struct.drm_mode_crtc_page_flip*, %struct.drm_mode_crtc_page_flip** %8, align 8
  %217 = getelementptr inbounds %struct.drm_mode_crtc_page_flip, %struct.drm_mode_crtc_page_flip* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %12, align 8
  %220 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 1
  store i32 %218, i32* %221, align 8
  %222 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %12, align 8
  %223 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %223, i32 0, i32 0
  %225 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %12, align 8
  %226 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 2
  store %struct.TYPE_8__* %224, %struct.TYPE_8__** %227, align 8
  %228 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %229 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %12, align 8
  %230 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i32 0, i32 1
  store %struct.drm_file* %228, %struct.drm_file** %231, align 8
  %232 = load i64, i64* @free_vblank_event, align 8
  %233 = inttoptr i64 %232 to void (%struct.drm_pending_event.0*)*
  %234 = bitcast void (%struct.drm_pending_event.0*)* %233 to void (%struct.drm_pending_event*)*
  %235 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %12, align 8
  %236 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %236, i32 0, i32 0
  store void (%struct.drm_pending_event*)* %234, void (%struct.drm_pending_event*)** %237, align 8
  br label %238

238:                                              ; preds = %206, %154
  %239 = load %struct.drm_crtc*, %struct.drm_crtc** %10, align 8
  %240 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %239, i32 0, i32 2
  %241 = load %struct.TYPE_11__*, %struct.TYPE_11__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %241, i32 0, i32 0
  %243 = load i32 (%struct.drm_crtc*, %struct.drm_framebuffer*, %struct.drm_pending_vblank_event*)*, i32 (%struct.drm_crtc*, %struct.drm_framebuffer*, %struct.drm_pending_vblank_event*)** %242, align 8
  %244 = load %struct.drm_crtc*, %struct.drm_crtc** %10, align 8
  %245 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  %246 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %12, align 8
  %247 = call i32 %243(%struct.drm_crtc* %244, %struct.drm_framebuffer* %245, %struct.drm_pending_vblank_event* %246)
  store i32 %247, i32* %16, align 4
  %248 = load i32, i32* %16, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %274

250:                                              ; preds = %238
  %251 = load %struct.drm_mode_crtc_page_flip*, %struct.drm_mode_crtc_page_flip** %8, align 8
  %252 = getelementptr inbounds %struct.drm_mode_crtc_page_flip, %struct.drm_mode_crtc_page_flip* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* @DRM_MODE_PAGE_FLIP_EVENT, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %273

257:                                              ; preds = %250
  %258 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %259 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %258, i32 0, i32 1
  %260 = call i32 @mtx_lock(i32* %259)
  %261 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %262 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = sext i32 %263 to i64
  %265 = add i64 %264, 12
  %266 = trunc i64 %265 to i32
  store i32 %266, i32* %262, align 4
  %267 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %268 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %267, i32 0, i32 1
  %269 = call i32 @mtx_unlock(i32* %268)
  %270 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %12, align 8
  %271 = load i32, i32* @DRM_MEM_KMS, align 4
  %272 = call i32 @free(%struct.drm_pending_vblank_event* %270, i32 %271)
  br label %273

273:                                              ; preds = %257, %250
  br label %274

274:                                              ; preds = %273, %238
  br label %275

275:                                              ; preds = %274, %193, %172, %130, %78, %68, %58, %50
  %276 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %277 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %277, i32 0, i32 0
  %279 = call i32 @sx_xunlock(i32* %278)
  %280 = load i32, i32* %16, align 4
  store i32 %280, i32* %4, align 4
  br label %281

281:                                              ; preds = %275, %34
  %282 = load i32, i32* %4, align 4
  ret i32 %282
}

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local %struct.drm_mode_object* @drm_mode_object_find(%struct.drm_device*, i32, i32) #1

declare dso_local %struct.drm_crtc* @obj_to_crtc(%struct.drm_mode_object*) #1

declare dso_local %struct.drm_framebuffer* @obj_to_fb(%struct.drm_mode_object*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local %struct.drm_pending_vblank_event* @malloc(i32, i32, i32) #1

declare dso_local i32 @free(%struct.drm_pending_vblank_event*, i32) #1

declare dso_local i32 @sx_xunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
