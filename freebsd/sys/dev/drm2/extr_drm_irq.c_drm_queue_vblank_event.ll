; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_irq.c_drm_queue_vblank_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_irq.c_drm_queue_vblank_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.drm_device = type { i32, i32 }
%union.drm_wait_vblank = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.drm_file = type { i32 }
%struct.drm_pending_vblank_event = type { i32, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i32, %struct.drm_file*, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, i32 }
%struct.timeval = type { i32 }
%struct.TYPE_10__ = type { i32 }

@DRM_MEM_VBLANK = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@curproc = common dso_local global %struct.TYPE_12__* null, align 8
@DRM_EVENT_VBLANK = common dso_local global i32 0, align 4
@drm_vblank_event_destroy = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@_DRM_VBLANK_NEXTONMISS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"event on vblank count %d, current %d, crtc %d\0A\00", align 1
@KTR_DRM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"vblank_event_queued %d %d rt %x %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32, %union.drm_wait_vblank*, %struct.drm_file*)* @drm_queue_vblank_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_queue_vblank_event(%struct.drm_device* %0, i32 %1, %union.drm_wait_vblank* %2, %struct.drm_file* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %union.drm_wait_vblank*, align 8
  %9 = alloca %struct.drm_file*, align 8
  %10 = alloca %struct.drm_pending_vblank_event*, align 8
  %11 = alloca %struct.timeval, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store %union.drm_wait_vblank* %2, %union.drm_wait_vblank** %8, align 8
  store %struct.drm_file* %3, %struct.drm_file** %9, align 8
  %14 = load i32, i32* @DRM_MEM_VBLANK, align 4
  %15 = load i32, i32* @M_NOWAIT, align 4
  %16 = load i32, i32* @M_ZERO, align 4
  %17 = or i32 %15, %16
  %18 = call %struct.drm_pending_vblank_event* @malloc(i32 56, i32 %14, i32 %17)
  store %struct.drm_pending_vblank_event* %18, %struct.drm_pending_vblank_event** %10, align 8
  %19 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %10, align 8
  %20 = icmp eq %struct.drm_pending_vblank_event* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %13, align 4
  br label %186

24:                                               ; preds = %4
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %10, align 8
  %27 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** @curproc, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %10, align 8
  %32 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 4
  store i32 %30, i32* %33, align 8
  %34 = load i32, i32* @DRM_EVENT_VBLANK, align 4
  %35 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %10, align 8
  %36 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  store i32 %34, i32* %38, align 4
  %39 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %10, align 8
  %40 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  store i32 16, i32* %42, align 4
  %43 = load %union.drm_wait_vblank*, %union.drm_wait_vblank** %8, align 8
  %44 = bitcast %union.drm_wait_vblank* %43 to %struct.TYPE_11__*
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %10, align 8
  %48 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 2
  store i32 %46, i32* %49, align 4
  %50 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %10, align 8
  %51 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %10, align 8
  %54 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 3
  store %struct.TYPE_7__* %52, %struct.TYPE_7__** %55, align 8
  %56 = load %struct.drm_file*, %struct.drm_file** %9, align 8
  %57 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %10, align 8
  %58 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 2
  store %struct.drm_file* %56, %struct.drm_file** %59, align 8
  %60 = load i32, i32* @drm_vblank_event_destroy, align 4
  %61 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %10, align 8
  %62 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  store i32 %60, i32* %63, align 4
  %64 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %65 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %64, i32 0, i32 0
  %66 = call i32 @mtx_lock(i32* %65)
  %67 = load %struct.drm_file*, %struct.drm_file** %9, align 8
  %68 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = icmp ult i64 %70, 16
  br i1 %71, label %72, label %75

72:                                               ; preds = %24
  %73 = load i32, i32* @EBUSY, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %13, align 4
  br label %179

75:                                               ; preds = %24
  %76 = load %struct.drm_file*, %struct.drm_file** %9, align 8
  %77 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = sub i64 %79, 16
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %77, align 4
  %82 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @drm_vblank_count_and_time(%struct.drm_device* %82, i32 %83, %struct.timeval* %11)
  store i32 %84, i32* %12, align 4
  %85 = load %union.drm_wait_vblank*, %union.drm_wait_vblank** %8, align 8
  %86 = bitcast %union.drm_wait_vblank* %85 to %struct.TYPE_11__*
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @_DRM_VBLANK_NEXTONMISS, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %113

92:                                               ; preds = %75
  %93 = load i32, i32* %12, align 4
  %94 = load %union.drm_wait_vblank*, %union.drm_wait_vblank** %8, align 8
  %95 = bitcast %union.drm_wait_vblank* %94 to %struct.TYPE_11__*
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = sub i32 %93, %97
  %99 = icmp ule i32 %98, 8388608
  br i1 %99, label %100, label %113

100:                                              ; preds = %92
  %101 = load i32, i32* %12, align 4
  %102 = add i32 %101, 1
  %103 = load %union.drm_wait_vblank*, %union.drm_wait_vblank** %8, align 8
  %104 = bitcast %union.drm_wait_vblank* %103 to %struct.TYPE_11__*
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 1
  store i32 %102, i32* %105, align 4
  %106 = load %union.drm_wait_vblank*, %union.drm_wait_vblank** %8, align 8
  %107 = bitcast %union.drm_wait_vblank* %106 to %struct.TYPE_11__*
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %union.drm_wait_vblank*, %union.drm_wait_vblank** %8, align 8
  %111 = bitcast %union.drm_wait_vblank* %110 to %struct.TYPE_10__*
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  store i32 %109, i32* %112, align 4
  br label %113

113:                                              ; preds = %100, %92, %75
  %114 = load %union.drm_wait_vblank*, %union.drm_wait_vblank** %8, align 8
  %115 = bitcast %union.drm_wait_vblank* %114 to %struct.TYPE_11__*
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* %7, align 4
  %120 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %117, i32 %118, i32 %119)
  %121 = load i32, i32* @KTR_DRM, align 4
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** @curproc, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %7, align 4
  %126 = load %union.drm_wait_vblank*, %union.drm_wait_vblank** %8, align 8
  %127 = bitcast %union.drm_wait_vblank* %126 to %struct.TYPE_11__*
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %union.drm_wait_vblank*, %union.drm_wait_vblank** %8, align 8
  %131 = bitcast %union.drm_wait_vblank* %130 to %struct.TYPE_11__*
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @CTR4(i32 %121, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %124, i32 %125, i32 %129, i32 %133)
  %135 = load %union.drm_wait_vblank*, %union.drm_wait_vblank** %8, align 8
  %136 = bitcast %union.drm_wait_vblank* %135 to %struct.TYPE_11__*
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %10, align 8
  %140 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  store i32 %138, i32* %141, align 8
  %142 = load i32, i32* %12, align 4
  %143 = load %union.drm_wait_vblank*, %union.drm_wait_vblank** %8, align 8
  %144 = bitcast %union.drm_wait_vblank* %143 to %struct.TYPE_11__*
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = sub i32 %142, %146
  %148 = icmp ule i32 %147, 8388608
  br i1 %148, label %149, label %161

149:                                              ; preds = %113
  %150 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %151 = load i32, i32* %7, align 4
  %152 = call i32 @drm_vblank_put(%struct.drm_device* %150, i32 %151)
  %153 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %154 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %10, align 8
  %155 = load i32, i32* %12, align 4
  %156 = call i32 @send_vblank_event(%struct.drm_device* %153, %struct.drm_pending_vblank_event* %154, i32 %155, %struct.timeval* %11)
  %157 = load i32, i32* %12, align 4
  %158 = load %union.drm_wait_vblank*, %union.drm_wait_vblank** %8, align 8
  %159 = bitcast %union.drm_wait_vblank* %158 to %struct.TYPE_10__*
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 0
  store i32 %157, i32* %160, align 4
  br label %175

161:                                              ; preds = %113
  %162 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %10, align 8
  %163 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 0
  %165 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %166 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %165, i32 0, i32 1
  %167 = call i32 @list_add_tail(i32* %164, i32* %166)
  %168 = load %union.drm_wait_vblank*, %union.drm_wait_vblank** %8, align 8
  %169 = bitcast %union.drm_wait_vblank* %168 to %struct.TYPE_11__*
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load %union.drm_wait_vblank*, %union.drm_wait_vblank** %8, align 8
  %173 = bitcast %union.drm_wait_vblank* %172 to %struct.TYPE_10__*
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 0
  store i32 %171, i32* %174, align 4
  br label %175

175:                                              ; preds = %161, %149
  %176 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %177 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %176, i32 0, i32 0
  %178 = call i32 @mtx_unlock(i32* %177)
  store i32 0, i32* %5, align 4
  br label %191

179:                                              ; preds = %72
  %180 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %181 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %180, i32 0, i32 0
  %182 = call i32 @mtx_unlock(i32* %181)
  %183 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %10, align 8
  %184 = load i32, i32* @DRM_MEM_VBLANK, align 4
  %185 = call i32 @free(%struct.drm_pending_vblank_event* %183, i32 %184)
  br label %186

186:                                              ; preds = %179, %21
  %187 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %188 = load i32, i32* %7, align 4
  %189 = call i32 @drm_vblank_put(%struct.drm_device* %187, i32 %188)
  %190 = load i32, i32* %13, align 4
  store i32 %190, i32* %5, align 4
  br label %191

191:                                              ; preds = %186, %175
  %192 = load i32, i32* %5, align 4
  ret i32 %192
}

declare dso_local %struct.drm_pending_vblank_event* @malloc(i32, i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @drm_vblank_count_and_time(%struct.drm_device*, i32, %struct.timeval*) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32, i32, i32) #1

declare dso_local i32 @CTR4(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @drm_vblank_put(%struct.drm_device*, i32) #1

declare dso_local i32 @send_vblank_event(%struct.drm_device*, %struct.drm_pending_vblank_event*, i32, %struct.timeval*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @free(%struct.drm_pending_vblank_event*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
