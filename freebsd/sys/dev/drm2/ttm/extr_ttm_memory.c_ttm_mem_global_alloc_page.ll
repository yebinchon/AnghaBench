; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_memory.c_ttm_mem_global_alloc_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_memory.c_ttm_mem_global_alloc_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_mem_global = type { %struct.ttm_mem_zone*, i64 }
%struct.ttm_mem_zone = type { i32 }
%struct.vm_page = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_mem_global_alloc_page(%struct.ttm_mem_global* %0, %struct.vm_page* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ttm_mem_global*, align 8
  %6 = alloca %struct.vm_page*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ttm_mem_zone*, align 8
  store %struct.ttm_mem_global* %0, %struct.ttm_mem_global** %5, align 8
  store %struct.vm_page* %1, %struct.vm_page** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store %struct.ttm_mem_zone* null, %struct.ttm_mem_zone** %9, align 8
  %10 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %5, align 8
  %11 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %4
  %15 = load %struct.vm_page*, %struct.vm_page** %6, align 8
  %16 = call i32 @page_to_pfn(%struct.vm_page* %15)
  %17 = sext i32 %16 to i64
  %18 = icmp ugt i64 %17, 1048576
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %5, align 8
  %21 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %20, i32 0, i32 0
  %22 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %21, align 8
  store %struct.ttm_mem_zone* %22, %struct.ttm_mem_zone** %9, align 8
  br label %23

23:                                               ; preds = %19, %14, %4
  %24 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %5, align 8
  %25 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %9, align 8
  %26 = load i32, i32* @PAGE_SIZE, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @ttm_mem_global_alloc_zone(%struct.ttm_mem_global* %24, %struct.ttm_mem_zone* %25, i32 %26, i32 %27, i32 %28)
  ret i32 %29
}

declare dso_local i32 @page_to_pfn(%struct.vm_page*) #1

declare dso_local i32 @ttm_mem_global_alloc_zone(%struct.ttm_mem_global*, %struct.ttm_mem_zone*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
