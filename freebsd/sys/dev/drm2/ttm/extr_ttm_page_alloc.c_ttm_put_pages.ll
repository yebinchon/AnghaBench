; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_page_alloc.c_ttm_put_pages.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_page_alloc.c_ttm_put_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.ttm_page_pool = type { i64, i32, i32 }

@plinks = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@_manager = common dso_local global %struct.TYPE_6__* null, align 8
@NUM_PAGES_TO_ALLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, i32, i32, i32)* @ttm_put_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ttm_put_pages(i32** %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ttm_page_pool*, align 8
  %10 = alloca i32, align 4
  store i32** %0, i32*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %8, align 4
  %13 = call %struct.ttm_page_pool* @ttm_get_pool(i32 %11, i32 %12)
  store %struct.ttm_page_pool* %13, %struct.ttm_page_pool** %9, align 8
  %14 = load %struct.ttm_page_pool*, %struct.ttm_page_pool** %9, align 8
  %15 = icmp eq %struct.ttm_page_pool* %14, null
  br i1 %15, label %16, label %44

16:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %17

17:                                               ; preds = %40, %16
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %43

21:                                               ; preds = %17
  %22 = load i32**, i32*** %5, align 8
  %23 = load i32, i32* %10, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32*, i32** %22, i64 %24
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %39

28:                                               ; preds = %21
  %29 = load i32**, i32*** %5, align 8
  %30 = load i32, i32* %10, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32*, i32** %29, i64 %31
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @ttm_vm_page_free(i32* %33)
  %35 = load i32**, i32*** %5, align 8
  %36 = load i32, i32* %10, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  store i32* null, i32** %38, align 8
  br label %39

39:                                               ; preds = %28, %21
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %10, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %10, align 4
  br label %17

43:                                               ; preds = %17
  br label %116

44:                                               ; preds = %4
  %45 = load %struct.ttm_page_pool*, %struct.ttm_page_pool** %9, align 8
  %46 = getelementptr inbounds %struct.ttm_page_pool, %struct.ttm_page_pool* %45, i32 0, i32 1
  %47 = call i32 @mtx_lock(i32* %46)
  store i32 0, i32* %10, align 4
  br label %48

48:                                               ; preds = %78, %44
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %52, label %81

52:                                               ; preds = %48
  %53 = load i32**, i32*** %5, align 8
  %54 = load i32, i32* %10, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32*, i32** %53, i64 %55
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %77

59:                                               ; preds = %52
  %60 = load %struct.ttm_page_pool*, %struct.ttm_page_pool** %9, align 8
  %61 = getelementptr inbounds %struct.ttm_page_pool, %struct.ttm_page_pool* %60, i32 0, i32 2
  %62 = load i32**, i32*** %5, align 8
  %63 = load i32, i32* %10, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i32*, i32** %62, i64 %64
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @plinks, i32 0, i32 0), align 4
  %68 = call i32 @TAILQ_INSERT_TAIL(i32* %61, i32* %66, i32 %67)
  %69 = load i32**, i32*** %5, align 8
  %70 = load i32, i32* %10, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i32*, i32** %69, i64 %71
  store i32* null, i32** %72, align 8
  %73 = load %struct.ttm_page_pool*, %struct.ttm_page_pool** %9, align 8
  %74 = getelementptr inbounds %struct.ttm_page_pool, %struct.ttm_page_pool* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %75, 1
  store i64 %76, i64* %74, align 8
  br label %77

77:                                               ; preds = %59, %52
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %10, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %10, align 4
  br label %48

81:                                               ; preds = %48
  store i32 0, i32* %6, align 4
  %82 = load %struct.ttm_page_pool*, %struct.ttm_page_pool** %9, align 8
  %83 = getelementptr inbounds %struct.ttm_page_pool, %struct.ttm_page_pool* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** @_manager, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp sgt i64 %84, %88
  br i1 %89, label %90, label %106

90:                                               ; preds = %81
  %91 = load %struct.ttm_page_pool*, %struct.ttm_page_pool** %9, align 8
  %92 = getelementptr inbounds %struct.ttm_page_pool, %struct.ttm_page_pool* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** @_manager, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = sub nsw i64 %93, %97
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* @NUM_PAGES_TO_ALLOC, align 4
  %102 = icmp ult i32 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %90
  %104 = load i32, i32* @NUM_PAGES_TO_ALLOC, align 4
  store i32 %104, i32* %6, align 4
  br label %105

105:                                              ; preds = %103, %90
  br label %106

106:                                              ; preds = %105, %81
  %107 = load %struct.ttm_page_pool*, %struct.ttm_page_pool** %9, align 8
  %108 = getelementptr inbounds %struct.ttm_page_pool, %struct.ttm_page_pool* %107, i32 0, i32 1
  %109 = call i32 @mtx_unlock(i32* %108)
  %110 = load i32, i32* %6, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %106
  %113 = load %struct.ttm_page_pool*, %struct.ttm_page_pool** %9, align 8
  %114 = load i32, i32* %6, align 4
  %115 = call i32 @ttm_page_pool_free(%struct.ttm_page_pool* %113, i32 %114)
  br label %116

116:                                              ; preds = %43, %112, %106
  ret void
}

declare dso_local %struct.ttm_page_pool* @ttm_get_pool(i32, i32) #1

declare dso_local i32 @ttm_vm_page_free(i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, i32*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @ttm_page_pool_free(%struct.ttm_page_pool*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
