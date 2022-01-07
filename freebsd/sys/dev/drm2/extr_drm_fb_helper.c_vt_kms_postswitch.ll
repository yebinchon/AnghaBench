; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_fb_helper.c_vt_kms_postswitch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_fb_helper.c_vt_kms_postswitch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_kms_softc = type { i32, i32 }

@kdb_active = common dso_local global i32 0, align 4
@panicstr = common dso_local global i32* null, align 8
@taskqueue_thread = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @vt_kms_postswitch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vt_kms_postswitch(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.vt_kms_softc*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.vt_kms_softc*
  store %struct.vt_kms_softc* %5, %struct.vt_kms_softc** %3, align 8
  %6 = load i32, i32* @kdb_active, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %1
  %9 = load i32*, i32** @panicstr, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  %12 = load i32, i32* @taskqueue_thread, align 4
  %13 = load %struct.vt_kms_softc*, %struct.vt_kms_softc** %3, align 8
  %14 = getelementptr inbounds %struct.vt_kms_softc, %struct.vt_kms_softc* %13, i32 0, i32 1
  %15 = call i32 @taskqueue_enqueue(i32 %12, i32* %14)
  br label %21

16:                                               ; preds = %8, %1
  %17 = load %struct.vt_kms_softc*, %struct.vt_kms_softc** %3, align 8
  %18 = getelementptr inbounds %struct.vt_kms_softc, %struct.vt_kms_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @drm_fb_helper_restore_fbdev_mode(i32 %19)
  br label %21

21:                                               ; preds = %16, %11
  ret i32 0
}

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

declare dso_local i32 @drm_fb_helper_restore_fbdev_mode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
