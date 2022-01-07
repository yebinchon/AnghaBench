; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_page_alloc.c_ttm_page_pool_get_pages.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_page_alloc.c_ttm_page_pool_get_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.ttm_page_pool = type { i32, i32, i32 }
%struct.pglist = type { i32 }

@plinks = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_page_pool*, %struct.pglist*, i32, i32, i32)* @ttm_page_pool_get_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttm_page_pool_get_pages(%struct.ttm_page_pool* %0, %struct.pglist* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ttm_page_pool*, align 8
  %7 = alloca %struct.pglist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ttm_page_pool* %0, %struct.ttm_page_pool** %6, align 8
  store %struct.pglist* %1, %struct.pglist** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.ttm_page_pool*, %struct.ttm_page_pool** %6, align 8
  %14 = getelementptr inbounds %struct.ttm_page_pool, %struct.ttm_page_pool* %13, i32 0, i32 1
  %15 = call i32 @mtx_lock(i32* %14)
  %16 = load %struct.ttm_page_pool*, %struct.ttm_page_pool** %6, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %10, align 4
  %20 = call i32 @ttm_page_pool_fill_locked(%struct.ttm_page_pool* %16, i32 %17, i32 %18, i32 %19)
  %21 = load i32, i32* %10, align 4
  %22 = load %struct.ttm_page_pool*, %struct.ttm_page_pool** %6, align 8
  %23 = getelementptr inbounds %struct.ttm_page_pool, %struct.ttm_page_pool* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp uge i32 %21, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %5
  %27 = load %struct.pglist*, %struct.pglist** %7, align 8
  %28 = load %struct.ttm_page_pool*, %struct.ttm_page_pool** %6, align 8
  %29 = getelementptr inbounds %struct.ttm_page_pool, %struct.ttm_page_pool* %28, i32 0, i32 2
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @plinks, i32 0, i32 0), align 4
  %31 = call i32 @TAILQ_CONCAT(%struct.pglist* %27, i32* %29, i32 %30)
  %32 = load %struct.ttm_page_pool*, %struct.ttm_page_pool** %6, align 8
  %33 = getelementptr inbounds %struct.ttm_page_pool, %struct.ttm_page_pool* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %10, align 4
  %36 = sub i32 %35, %34
  store i32 %36, i32* %10, align 4
  %37 = load %struct.ttm_page_pool*, %struct.ttm_page_pool** %6, align 8
  %38 = getelementptr inbounds %struct.ttm_page_pool, %struct.ttm_page_pool* %37, i32 0, i32 0
  store i32 0, i32* %38, align 4
  br label %66

39:                                               ; preds = %5
  store i32 0, i32* %12, align 4
  br label %40

40:                                               ; preds = %57, %39
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %60

44:                                               ; preds = %40
  %45 = load %struct.ttm_page_pool*, %struct.ttm_page_pool** %6, align 8
  %46 = getelementptr inbounds %struct.ttm_page_pool, %struct.ttm_page_pool* %45, i32 0, i32 2
  %47 = call i32 @TAILQ_FIRST(i32* %46)
  store i32 %47, i32* %11, align 4
  %48 = load %struct.ttm_page_pool*, %struct.ttm_page_pool** %6, align 8
  %49 = getelementptr inbounds %struct.ttm_page_pool, %struct.ttm_page_pool* %48, i32 0, i32 2
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @plinks, i32 0, i32 0), align 4
  %52 = call i32 @TAILQ_REMOVE(i32* %49, i32 %50, i32 %51)
  %53 = load %struct.pglist*, %struct.pglist** %7, align 8
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @plinks, i32 0, i32 0), align 4
  %56 = call i32 @TAILQ_INSERT_TAIL(%struct.pglist* %53, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %44
  %58 = load i32, i32* %12, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %12, align 4
  br label %40

60:                                               ; preds = %40
  %61 = load i32, i32* %10, align 4
  %62 = load %struct.ttm_page_pool*, %struct.ttm_page_pool** %6, align 8
  %63 = getelementptr inbounds %struct.ttm_page_pool, %struct.ttm_page_pool* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = sub i32 %64, %61
  store i32 %65, i32* %63, align 4
  store i32 0, i32* %10, align 4
  br label %66

66:                                               ; preds = %60, %26
  %67 = load %struct.ttm_page_pool*, %struct.ttm_page_pool** %6, align 8
  %68 = getelementptr inbounds %struct.ttm_page_pool, %struct.ttm_page_pool* %67, i32 0, i32 1
  %69 = call i32 @mtx_unlock(i32* %68)
  %70 = load i32, i32* %10, align 4
  ret i32 %70
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @ttm_page_pool_fill_locked(%struct.ttm_page_pool*, i32, i32, i32) #1

declare dso_local i32 @TAILQ_CONCAT(%struct.pglist*, i32*, i32) #1

declare dso_local i32 @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, i32, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(%struct.pglist*, i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
