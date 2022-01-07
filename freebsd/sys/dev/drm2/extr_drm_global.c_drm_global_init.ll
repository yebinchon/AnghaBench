; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_global.c_drm_global_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_global.c_drm_global_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_global_item = type { i64, i32*, i32 }

@DRM_GLOBAL_NUM = common dso_local global i32 0, align 4
@glob = common dso_local global %struct.drm_global_item* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"drmgi\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_global_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.drm_global_item*, align 8
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %19, %0
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* @DRM_GLOBAL_NUM, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %22

7:                                                ; preds = %3
  %8 = load %struct.drm_global_item*, %struct.drm_global_item** @glob, align 8
  %9 = load i32, i32* %1, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.drm_global_item, %struct.drm_global_item* %8, i64 %10
  store %struct.drm_global_item* %11, %struct.drm_global_item** %2, align 8
  %12 = load %struct.drm_global_item*, %struct.drm_global_item** %2, align 8
  %13 = getelementptr inbounds %struct.drm_global_item, %struct.drm_global_item* %12, i32 0, i32 2
  %14 = call i32 @sx_init(i32* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.drm_global_item*, %struct.drm_global_item** %2, align 8
  %16 = getelementptr inbounds %struct.drm_global_item, %struct.drm_global_item* %15, i32 0, i32 1
  store i32* null, i32** %16, align 8
  %17 = load %struct.drm_global_item*, %struct.drm_global_item** %2, align 8
  %18 = getelementptr inbounds %struct.drm_global_item, %struct.drm_global_item* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  br label %19

19:                                               ; preds = %7
  %20 = load i32, i32* %1, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %1, align 4
  br label %3

22:                                               ; preds = %3
  ret void
}

declare dso_local i32 @sx_init(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
