; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_global.c_drm_global_release.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_global.c_drm_global_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_global_item = type { i64, i32, i32* }

@DRM_GLOBAL_NUM = common dso_local global i32 0, align 4
@glob = common dso_local global %struct.drm_global_item* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_global_release() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.drm_global_item*, align 8
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %27, %0
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* @DRM_GLOBAL_NUM, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %30

7:                                                ; preds = %3
  %8 = load %struct.drm_global_item*, %struct.drm_global_item** @glob, align 8
  %9 = load i32, i32* %1, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.drm_global_item, %struct.drm_global_item* %8, i64 %10
  store %struct.drm_global_item* %11, %struct.drm_global_item** %2, align 8
  %12 = load %struct.drm_global_item*, %struct.drm_global_item** %2, align 8
  %13 = getelementptr inbounds %struct.drm_global_item, %struct.drm_global_item* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @MPASS(i32 %16)
  %18 = load %struct.drm_global_item*, %struct.drm_global_item** %2, align 8
  %19 = getelementptr inbounds %struct.drm_global_item, %struct.drm_global_item* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @MPASS(i32 %22)
  %24 = load %struct.drm_global_item*, %struct.drm_global_item** %2, align 8
  %25 = getelementptr inbounds %struct.drm_global_item, %struct.drm_global_item* %24, i32 0, i32 1
  %26 = call i32 @sx_destroy(i32* %25)
  br label %27

27:                                               ; preds = %7
  %28 = load i32, i32* %1, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %1, align 4
  br label %3

30:                                               ; preds = %3
  ret void
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @sx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
