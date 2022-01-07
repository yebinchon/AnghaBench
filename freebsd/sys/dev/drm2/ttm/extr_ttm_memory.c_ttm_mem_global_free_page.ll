; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_memory.c_ttm_mem_global_free_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_memory.c_ttm_mem_global_free_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_mem_global = type { %struct.ttm_mem_zone*, i64 }
%struct.ttm_mem_zone = type { i32 }
%struct.vm_page = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ttm_mem_global_free_page(%struct.ttm_mem_global* %0, %struct.vm_page* %1) #0 {
  %3 = alloca %struct.ttm_mem_global*, align 8
  %4 = alloca %struct.vm_page*, align 8
  %5 = alloca %struct.ttm_mem_zone*, align 8
  store %struct.ttm_mem_global* %0, %struct.ttm_mem_global** %3, align 8
  store %struct.vm_page* %1, %struct.vm_page** %4, align 8
  store %struct.ttm_mem_zone* null, %struct.ttm_mem_zone** %5, align 8
  %6 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %3, align 8
  %7 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = load %struct.vm_page*, %struct.vm_page** %4, align 8
  %12 = call i32 @page_to_pfn(%struct.vm_page* %11)
  %13 = sext i32 %12 to i64
  %14 = icmp ugt i64 %13, 1048576
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %3, align 8
  %17 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %16, i32 0, i32 0
  %18 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %17, align 8
  store %struct.ttm_mem_zone* %18, %struct.ttm_mem_zone** %5, align 8
  br label %19

19:                                               ; preds = %15, %10, %2
  %20 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %3, align 8
  %21 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %5, align 8
  %22 = load i32, i32* @PAGE_SIZE, align 4
  %23 = call i32 @ttm_mem_global_free_zone(%struct.ttm_mem_global* %20, %struct.ttm_mem_zone* %21, i32 %22)
  ret void
}

declare dso_local i32 @page_to_pfn(%struct.vm_page*) #1

declare dso_local i32 @ttm_mem_global_free_zone(%struct.ttm_mem_global*, %struct.ttm_mem_zone*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
