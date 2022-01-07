; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_mm.c_drm_mm_get_block_range_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_mm.c_drm_mm_get_block_range_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_mm_node = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_mm_node* @drm_mm_get_block_range_generic(%struct.drm_mm_node* %0, i64 %1, i32 %2, i64 %3, i64 %4, i64 %5, i32 %6) #0 {
  %8 = alloca %struct.drm_mm_node*, align 8
  %9 = alloca %struct.drm_mm_node*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.drm_mm_node*, align 8
  store %struct.drm_mm_node* %0, %struct.drm_mm_node** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32 %2, i32* %11, align 4
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  %17 = load %struct.drm_mm_node*, %struct.drm_mm_node** %9, align 8
  %18 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %15, align 4
  %21 = call %struct.drm_mm_node* @drm_mm_kmalloc(i32 %19, i32 %20)
  store %struct.drm_mm_node* %21, %struct.drm_mm_node** %16, align 8
  %22 = load %struct.drm_mm_node*, %struct.drm_mm_node** %16, align 8
  %23 = icmp eq %struct.drm_mm_node* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %7
  store %struct.drm_mm_node* null, %struct.drm_mm_node** %8, align 8
  br label %38

28:                                               ; preds = %7
  %29 = load %struct.drm_mm_node*, %struct.drm_mm_node** %9, align 8
  %30 = load %struct.drm_mm_node*, %struct.drm_mm_node** %16, align 8
  %31 = load i64, i64* %10, align 8
  %32 = load i32, i32* %11, align 4
  %33 = load i64, i64* %12, align 8
  %34 = load i64, i64* %13, align 8
  %35 = load i64, i64* %14, align 8
  %36 = call i32 @drm_mm_insert_helper_range(%struct.drm_mm_node* %29, %struct.drm_mm_node* %30, i64 %31, i32 %32, i64 %33, i64 %34, i64 %35)
  %37 = load %struct.drm_mm_node*, %struct.drm_mm_node** %16, align 8
  store %struct.drm_mm_node* %37, %struct.drm_mm_node** %8, align 8
  br label %38

38:                                               ; preds = %28, %27
  %39 = load %struct.drm_mm_node*, %struct.drm_mm_node** %8, align 8
  ret %struct.drm_mm_node* %39
}

declare dso_local %struct.drm_mm_node* @drm_mm_kmalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @drm_mm_insert_helper_range(%struct.drm_mm_node*, %struct.drm_mm_node*, i64, i32, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
