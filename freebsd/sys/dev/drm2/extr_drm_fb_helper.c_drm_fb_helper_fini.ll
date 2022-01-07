; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_fb_helper.c_drm_fb_helper_fini.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_fb_helper.c_drm_fb_helper_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_fb_helper = type { i32 }

@kernel_fb_helper_list = common dso_local global i32 0, align 4
@panic_notifier_list = common dso_local global i32 0, align 4
@paniced = common dso_local global i32 0, align 4
@sysrq_drm_fb_helper_restore_op = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_fb_helper_fini(%struct.drm_fb_helper* %0) #0 {
  %2 = alloca %struct.drm_fb_helper*, align 8
  store %struct.drm_fb_helper* %0, %struct.drm_fb_helper** %2, align 8
  %3 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %2, align 8
  %4 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %3, i32 0, i32 0
  %5 = call i64 @list_empty(i32* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %2, align 8
  %9 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %8, i32 0, i32 0
  %10 = call i32 @list_del(i32* %9)
  br label %11

11:                                               ; preds = %7, %1
  %12 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %2, align 8
  %13 = call i32 @drm_fb_helper_crtc_free(%struct.drm_fb_helper* %12)
  ret void
}

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @drm_fb_helper_crtc_free(%struct.drm_fb_helper*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
