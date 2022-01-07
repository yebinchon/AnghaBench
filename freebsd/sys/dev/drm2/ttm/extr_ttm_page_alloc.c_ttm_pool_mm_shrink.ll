; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_page_alloc.c_ttm_pool_mm_shrink.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_page_alloc.c_ttm_pool_mm_shrink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.ttm_page_pool* }
%struct.ttm_page_pool = type { i32 }

@ttm_pool_mm_shrink.start_pool = internal global i32 0, align 4
@NUM_POOLS = common dso_local global i32 0, align 4
@_manager = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @ttm_pool_mm_shrink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttm_pool_mm_shrink(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ttm_page_pool*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = call i32 @atomic_fetchadd_int(i32* @ttm_pool_mm_shrink.start_pool, i32 1)
  store i32 %8, i32* %4, align 4
  store i32 100, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @NUM_POOLS, align 4
  %11 = urem i32 %9, %10
  store i32 %11, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %35, %1
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @NUM_POOLS, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %38

16:                                               ; preds = %12
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %38

21:                                               ; preds = %16
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @_manager, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.ttm_page_pool*, %struct.ttm_page_pool** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* %4, align 4
  %27 = add i32 %25, %26
  %28 = load i32, i32* @NUM_POOLS, align 4
  %29 = urem i32 %27, %28
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.ttm_page_pool, %struct.ttm_page_pool* %24, i64 %30
  store %struct.ttm_page_pool* %31, %struct.ttm_page_pool** %5, align 8
  %32 = load %struct.ttm_page_pool*, %struct.ttm_page_pool** %5, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @ttm_page_pool_free(%struct.ttm_page_pool* %32, i32 %33)
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %21
  %36 = load i32, i32* %3, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %12

38:                                               ; preds = %20, %12
  %39 = call i32 (...) @ttm_pool_get_num_unused_pages()
  ret i32 %39
}

declare dso_local i32 @atomic_fetchadd_int(i32*, i32) #1

declare dso_local i32 @ttm_page_pool_free(%struct.ttm_page_pool*, i32) #1

declare dso_local i32 @ttm_pool_get_num_unused_pages(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
