; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_page_alloc_dma.c_ttm_dma_page_alloc_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_page_alloc_dma.c_ttm_dma_page_alloc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.ttm_mem_global = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@_manager = common dso_local global %struct.TYPE_7__* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"Initializing DMA pool allocator\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@SMALL_ALLOCATION = common dso_local global i32 0, align 4
@NUM_PAGES_TO_ALLOC = common dso_local global i32 0, align 4
@ttm_pool_kobj_type = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"dma_pool\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_dma_page_alloc_init(%struct.ttm_mem_global* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ttm_mem_global*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ttm_mem_global* %0, %struct.ttm_mem_global** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @ENOMEM, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %6, align 4
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** @_manager, align 8
  %10 = call i32 @WARN_ON(%struct.TYPE_7__* %9)
  %11 = call i32 @pr_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.TYPE_7__* @kzalloc(i32 24, i32 %12)
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** @_manager, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** @_manager, align 8
  %15 = icmp ne %struct.TYPE_7__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %53

17:                                               ; preds = %2
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** @_manager, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 3
  %20 = call i32 @mutex_init(i32* %19)
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** @_manager, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 2
  %23 = call i32 @INIT_LIST_HEAD(i32* %22)
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** @_manager, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  %28 = load i32, i32* @SMALL_ALLOCATION, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** @_manager, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* @NUM_PAGES_TO_ALLOC, align 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** @_manager, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  store i32 %32, i32* %35, align 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** @_manager, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %4, align 8
  %39 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %38, i32 0, i32 0
  %40 = call i32 @kobject_init_and_add(i32* %37, i32* @ttm_pool_kobj_type, i32* %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %17
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** @_manager, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = call i32 @kobject_put(i32* %48)
  br label %53

50:                                               ; preds = %17
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** @_manager, align 8
  %52 = call i32 @ttm_dma_pool_mm_shrink_init(%struct.TYPE_7__* %51)
  store i32 0, i32* %3, align 4
  br label %55

53:                                               ; preds = %46, %16
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %53, %50
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @WARN_ON(%struct.TYPE_7__*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local %struct.TYPE_7__* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @kobject_init_and_add(i32*, i32*, i32*, i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kobject_put(i32*) #1

declare dso_local i32 @ttm_dma_pool_mm_shrink_init(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
