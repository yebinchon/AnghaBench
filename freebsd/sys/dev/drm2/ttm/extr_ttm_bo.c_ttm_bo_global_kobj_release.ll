; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_bo.c_ttm_bo_global_kobj_release.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_bo.c_ttm_bo_global_kobj_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_bo_global = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ttm_bo_global*)* @ttm_bo_global_kobj_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ttm_bo_global_kobj_release(%struct.ttm_bo_global* %0) #0 {
  %2 = alloca %struct.ttm_bo_global*, align 8
  store %struct.ttm_bo_global* %0, %struct.ttm_bo_global** %2, align 8
  %3 = load %struct.ttm_bo_global*, %struct.ttm_bo_global** %2, align 8
  %4 = getelementptr inbounds %struct.ttm_bo_global, %struct.ttm_bo_global* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.ttm_bo_global*, %struct.ttm_bo_global** %2, align 8
  %7 = getelementptr inbounds %struct.ttm_bo_global, %struct.ttm_bo_global* %6, i32 0, i32 1
  %8 = call i32 @ttm_mem_unregister_shrink(i32 %5, i32* %7)
  %9 = load %struct.ttm_bo_global*, %struct.ttm_bo_global** %2, align 8
  %10 = getelementptr inbounds %struct.ttm_bo_global, %struct.ttm_bo_global* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @vm_page_free(i32 %11)
  ret void
}

declare dso_local i32 @ttm_mem_unregister_shrink(i32, i32*) #1

declare dso_local i32 @vm_page_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
