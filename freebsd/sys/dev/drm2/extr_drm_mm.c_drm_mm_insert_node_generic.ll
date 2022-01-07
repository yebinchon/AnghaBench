; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_mm.c_drm_mm_insert_node_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_mm.c_drm_mm_insert_node_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_mm = type { i32 }
%struct.drm_mm_node = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_mm_insert_node_generic(%struct.drm_mm* %0, %struct.drm_mm_node* %1, i64 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_mm*, align 8
  %8 = alloca %struct.drm_mm_node*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.drm_mm_node*, align 8
  store %struct.drm_mm* %0, %struct.drm_mm** %7, align 8
  store %struct.drm_mm_node* %1, %struct.drm_mm_node** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %13 = load %struct.drm_mm*, %struct.drm_mm** %7, align 8
  %14 = load i64, i64* %9, align 8
  %15 = load i32, i32* %10, align 4
  %16 = load i64, i64* %11, align 8
  %17 = call %struct.drm_mm_node* @drm_mm_search_free_generic(%struct.drm_mm* %13, i64 %14, i32 %15, i64 %16, i32 0)
  store %struct.drm_mm_node* %17, %struct.drm_mm_node** %12, align 8
  %18 = load %struct.drm_mm_node*, %struct.drm_mm_node** %12, align 8
  %19 = icmp ne %struct.drm_mm_node* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* @ENOSPC, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %30

23:                                               ; preds = %5
  %24 = load %struct.drm_mm_node*, %struct.drm_mm_node** %12, align 8
  %25 = load %struct.drm_mm_node*, %struct.drm_mm_node** %8, align 8
  %26 = load i64, i64* %9, align 8
  %27 = load i32, i32* %10, align 4
  %28 = load i64, i64* %11, align 8
  %29 = call i32 @drm_mm_insert_helper(%struct.drm_mm_node* %24, %struct.drm_mm_node* %25, i64 %26, i32 %27, i64 %28)
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %23, %20
  %31 = load i32, i32* %6, align 4
  ret i32 %31
}

declare dso_local %struct.drm_mm_node* @drm_mm_search_free_generic(%struct.drm_mm*, i64, i32, i64, i32) #1

declare dso_local i32 @drm_mm_insert_helper(%struct.drm_mm_node*, %struct.drm_mm_node*, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
