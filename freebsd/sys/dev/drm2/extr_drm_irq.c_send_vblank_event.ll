; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_irq.c_send_vblank_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_irq.c_send_vblank_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_pending_vblank_event = type { %struct.TYPE_5__, i32, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i64, i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.timeval = type { i32, i32 }

@KTR_DRM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"vblank_event_delivered %d %d %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, %struct.drm_pending_vblank_event*, i64, %struct.timeval*)* @send_vblank_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_vblank_event(%struct.drm_device* %0, %struct.drm_pending_vblank_event* %1, i64 %2, %struct.timeval* %3) #0 {
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_pending_vblank_event*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.timeval*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.drm_pending_vblank_event* %1, %struct.drm_pending_vblank_event** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.timeval* %3, %struct.timeval** %8, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 0
  %11 = call i32 @mtx_owned(i32* %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @WARN_ON_SMP(i32 %14)
  %16 = load i64, i64* %7, align 8
  %17 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %6, align 8
  %18 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store i64 %16, i64* %19, align 8
  %20 = load %struct.timeval*, %struct.timeval** %8, align 8
  %21 = getelementptr inbounds %struct.timeval, %struct.timeval* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %6, align 8
  %24 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  store i32 %22, i32* %25, align 4
  %26 = load %struct.timeval*, %struct.timeval** %8, align 8
  %27 = getelementptr inbounds %struct.timeval, %struct.timeval* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %6, align 8
  %30 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 8
  %32 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %6, align 8
  %33 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  %35 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %6, align 8
  %36 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = call i32 @list_add_tail(i32* %34, i32* %39)
  %41 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %6, align 8
  %42 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %41, i32 0, i32 2
  %43 = call i32 @drm_event_wakeup(%struct.TYPE_6__* %42)
  %44 = load i32, i32* @KTR_DRM, align 4
  %45 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %6, align 8
  %46 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %6, align 8
  %50 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %6, align 8
  %53 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @CTR3(i32 %44, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %51, i64 %55)
  ret void
}

declare dso_local i32 @WARN_ON_SMP(i32) #1

declare dso_local i32 @mtx_owned(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @drm_event_wakeup(%struct.TYPE_6__*) #1

declare dso_local i32 @CTR3(i32, i8*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
