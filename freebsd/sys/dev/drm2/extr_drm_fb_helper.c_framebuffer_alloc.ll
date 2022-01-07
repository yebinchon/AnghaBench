; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_fb_helper.c_framebuffer_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_fb_helper.c_framebuffer_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32*, %struct.vt_kms_softc* }
%struct.vt_kms_softc = type { i32 }

@DRM_MEM_KMS = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@vt_restore_fbdev_mode = common dso_local global i32 0, align 4
@vt_kms_postswitch = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fb_info* @framebuffer_alloc() #0 {
  %1 = alloca %struct.fb_info*, align 8
  %2 = alloca %struct.vt_kms_softc*, align 8
  %3 = load i32, i32* @DRM_MEM_KMS, align 4
  %4 = load i32, i32* @M_WAITOK, align 4
  %5 = load i32, i32* @M_ZERO, align 4
  %6 = or i32 %4, %5
  %7 = call i8* @malloc(i32 16, i32 %3, i32 %6)
  %8 = bitcast i8* %7 to %struct.fb_info*
  store %struct.fb_info* %8, %struct.fb_info** %1, align 8
  %9 = load i32, i32* @DRM_MEM_KMS, align 4
  %10 = load i32, i32* @M_WAITOK, align 4
  %11 = load i32, i32* @M_ZERO, align 4
  %12 = or i32 %10, %11
  %13 = call i8* @malloc(i32 4, i32 %9, i32 %12)
  %14 = bitcast i8* %13 to %struct.vt_kms_softc*
  store %struct.vt_kms_softc* %14, %struct.vt_kms_softc** %2, align 8
  %15 = load %struct.vt_kms_softc*, %struct.vt_kms_softc** %2, align 8
  %16 = getelementptr inbounds %struct.vt_kms_softc, %struct.vt_kms_softc* %15, i32 0, i32 0
  %17 = load i32, i32* @vt_restore_fbdev_mode, align 4
  %18 = load %struct.vt_kms_softc*, %struct.vt_kms_softc** %2, align 8
  %19 = call i32 @TASK_INIT(i32* %16, i32 0, i32 %17, %struct.vt_kms_softc* %18)
  %20 = load %struct.vt_kms_softc*, %struct.vt_kms_softc** %2, align 8
  %21 = load %struct.fb_info*, %struct.fb_info** %1, align 8
  %22 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %21, i32 0, i32 1
  store %struct.vt_kms_softc* %20, %struct.vt_kms_softc** %22, align 8
  %23 = load %struct.fb_info*, %struct.fb_info** %1, align 8
  %24 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %23, i32 0, i32 0
  store i32* @vt_kms_postswitch, i32** %24, align 8
  %25 = load %struct.fb_info*, %struct.fb_info** %1, align 8
  ret %struct.fb_info* %25
}

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.vt_kms_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
