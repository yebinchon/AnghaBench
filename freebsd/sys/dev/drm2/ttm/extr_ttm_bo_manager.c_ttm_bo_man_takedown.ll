; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_bo_manager.c_ttm_bo_man_takedown.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_bo_manager.c_ttm_bo_man_takedown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_mem_type_manager = type { i32* }
%struct.ttm_range_manager = type { i32, %struct.drm_mm }
%struct.drm_mm = type { i32 }

@M_TTM_RMAN = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_mem_type_manager*)* @ttm_bo_man_takedown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttm_bo_man_takedown(%struct.ttm_mem_type_manager* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ttm_mem_type_manager*, align 8
  %4 = alloca %struct.ttm_range_manager*, align 8
  %5 = alloca %struct.drm_mm*, align 8
  store %struct.ttm_mem_type_manager* %0, %struct.ttm_mem_type_manager** %3, align 8
  %6 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %3, align 8
  %7 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = bitcast i32* %8 to %struct.ttm_range_manager*
  store %struct.ttm_range_manager* %9, %struct.ttm_range_manager** %4, align 8
  %10 = load %struct.ttm_range_manager*, %struct.ttm_range_manager** %4, align 8
  %11 = getelementptr inbounds %struct.ttm_range_manager, %struct.ttm_range_manager* %10, i32 0, i32 1
  store %struct.drm_mm* %11, %struct.drm_mm** %5, align 8
  %12 = load %struct.ttm_range_manager*, %struct.ttm_range_manager** %4, align 8
  %13 = getelementptr inbounds %struct.ttm_range_manager, %struct.ttm_range_manager* %12, i32 0, i32 0
  %14 = call i32 @mtx_lock(i32* %13)
  %15 = load %struct.drm_mm*, %struct.drm_mm** %5, align 8
  %16 = call i64 @drm_mm_clean(%struct.drm_mm* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %1
  %19 = load %struct.drm_mm*, %struct.drm_mm** %5, align 8
  %20 = call i32 @drm_mm_takedown(%struct.drm_mm* %19)
  %21 = load %struct.ttm_range_manager*, %struct.ttm_range_manager** %4, align 8
  %22 = getelementptr inbounds %struct.ttm_range_manager, %struct.ttm_range_manager* %21, i32 0, i32 0
  %23 = call i32 @mtx_unlock(i32* %22)
  %24 = load %struct.ttm_range_manager*, %struct.ttm_range_manager** %4, align 8
  %25 = getelementptr inbounds %struct.ttm_range_manager, %struct.ttm_range_manager* %24, i32 0, i32 0
  %26 = call i32 @mtx_destroy(i32* %25)
  %27 = load %struct.ttm_range_manager*, %struct.ttm_range_manager** %4, align 8
  %28 = load i32, i32* @M_TTM_RMAN, align 4
  %29 = call i32 @free(%struct.ttm_range_manager* %27, i32 %28)
  %30 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %3, align 8
  %31 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %30, i32 0, i32 0
  store i32* null, i32** %31, align 8
  store i32 0, i32* %2, align 4
  br label %38

32:                                               ; preds = %1
  %33 = load %struct.ttm_range_manager*, %struct.ttm_range_manager** %4, align 8
  %34 = getelementptr inbounds %struct.ttm_range_manager, %struct.ttm_range_manager* %33, i32 0, i32 0
  %35 = call i32 @mtx_unlock(i32* %34)
  %36 = load i32, i32* @EBUSY, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %32, %18
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @drm_mm_clean(%struct.drm_mm*) #1

declare dso_local i32 @drm_mm_takedown(%struct.drm_mm*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @free(%struct.ttm_range_manager*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
