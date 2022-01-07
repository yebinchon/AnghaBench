; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_page_alloc.c_ttm_page_alloc_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_page_alloc.c_ttm_page_alloc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.ttm_mem_global = type { i32 }

@_manager = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"[TTM] manager != NULL\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"[TTM] Initializing pool allocator\0A\00", align 1
@M_TTM_POOLMGR = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"wc\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"uc\00", align 1
@TTM_PAGE_FLAG_DMA32 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"wc dma\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"uc dma\00", align 1
@SMALL_ALLOCATION = common dso_local global i32 0, align 4
@NUM_PAGES_TO_ALLOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_page_alloc_init(%struct.ttm_mem_global* %0, i32 %1) #0 {
  %3 = alloca %struct.ttm_mem_global*, align 8
  %4 = alloca i32, align 4
  store %struct.ttm_mem_global* %0, %struct.ttm_mem_global** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** @_manager, align 8
  %6 = icmp ne %struct.TYPE_6__* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %7, %2
  %10 = call i32 @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %11 = load i32, i32* @M_TTM_POOLMGR, align 4
  %12 = load i32, i32* @M_WAITOK, align 4
  %13 = load i32, i32* @M_ZERO, align 4
  %14 = or i32 %12, %13
  %15 = call %struct.TYPE_6__* @malloc(i32 32, i32 %11, i32 %14)
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** @_manager, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** @_manager, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 5
  %18 = call i32 @ttm_page_pool_init_locked(i32* %17, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @_manager, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 4
  %21 = call i32 @ttm_page_pool_init_locked(i32* %20, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** @_manager, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 3
  %24 = load i32, i32* @TTM_PAGE_FLAG_DMA32, align 4
  %25 = call i32 @ttm_page_pool_init_locked(i32* %23, i32 %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** @_manager, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  %28 = load i32, i32* @TTM_PAGE_FLAG_DMA32, align 4
  %29 = call i32 @ttm_page_pool_init_locked(i32* %27, i32 %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** @_manager, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* @SMALL_ALLOCATION, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** @_manager, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* @NUM_PAGES_TO_ALLOC, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** @_manager, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** @_manager, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = call i32 @refcount_init(i32* %43, i32 1)
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** @_manager, align 8
  %46 = call i32 @ttm_pool_mm_shrink_init(%struct.TYPE_6__* %45)
  ret i32 0
}

declare dso_local i32 @printf(i8*) #1

declare dso_local %struct.TYPE_6__* @malloc(i32, i32, i32) #1

declare dso_local i32 @ttm_page_pool_init_locked(i32*, i32, i8*) #1

declare dso_local i32 @refcount_init(i32*, i32) #1

declare dso_local i32 @ttm_pool_mm_shrink_init(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
