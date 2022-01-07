; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_busdma_machdep.c_alloc_bounce_pages.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_busdma_machdep.c_alloc_bounce_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.bounce_zone* }
%struct.bounce_zone = type { i32, i32, i32, i32 }
%struct.bounce_page = type { i64, i32, i8* }

@M_BUSDMA = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@M_BOUNCE = common dso_local global i32 0, align 4
@bounce_lock = common dso_local global i32 0, align 4
@links = common dso_local global i32 0, align 4
@total_bpages = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i64)* @alloc_bounce_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_bounce_pages(%struct.TYPE_3__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.bounce_zone*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bounce_page*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.bounce_zone*, %struct.bounce_zone** %9, align 8
  store %struct.bounce_zone* %10, %struct.bounce_zone** %5, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %45, %2
  %12 = load i64, i64* %4, align 8
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %81

14:                                               ; preds = %11
  %15 = load i32, i32* @M_BUSDMA, align 4
  %16 = load i32, i32* @M_NOWAIT, align 4
  %17 = load i32, i32* @M_ZERO, align 4
  %18 = or i32 %16, %17
  %19 = call i64 @malloc(i32 24, i32 %15, i32 %18)
  %20 = inttoptr i64 %19 to %struct.bounce_page*
  store %struct.bounce_page* %20, %struct.bounce_page** %7, align 8
  %21 = load %struct.bounce_page*, %struct.bounce_page** %7, align 8
  %22 = icmp eq %struct.bounce_page* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  br label %81

24:                                               ; preds = %14
  %25 = load i32, i32* @PAGE_SIZE, align 4
  %26 = load i32, i32* @M_BOUNCE, align 4
  %27 = load i32, i32* @M_NOWAIT, align 4
  %28 = load %struct.bounce_zone*, %struct.bounce_zone** %5, align 8
  %29 = getelementptr inbounds %struct.bounce_zone, %struct.bounce_zone* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @PAGE_SIZE, align 4
  %32 = call i64 @contigmalloc(i32 %25, i32 %26, i32 %27, i64 0, i32 %30, i32 %31, i32 0)
  %33 = inttoptr i64 %32 to i8*
  %34 = ptrtoint i8* %33 to i64
  %35 = load %struct.bounce_page*, %struct.bounce_page** %7, align 8
  %36 = getelementptr inbounds %struct.bounce_page, %struct.bounce_page* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.bounce_page*, %struct.bounce_page** %7, align 8
  %38 = getelementptr inbounds %struct.bounce_page, %struct.bounce_page* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %24
  %42 = load %struct.bounce_page*, %struct.bounce_page** %7, align 8
  %43 = load i32, i32* @M_BUSDMA, align 4
  %44 = call i32 @free(%struct.bounce_page* %42, i32 %43)
  br label %81

45:                                               ; preds = %24
  %46 = load %struct.bounce_page*, %struct.bounce_page** %7, align 8
  %47 = getelementptr inbounds %struct.bounce_page, %struct.bounce_page* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @pmap_kextract(i64 %48)
  %50 = load %struct.bounce_page*, %struct.bounce_page** %7, align 8
  %51 = getelementptr inbounds %struct.bounce_page, %struct.bounce_page* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  %52 = load %struct.bounce_page*, %struct.bounce_page** %7, align 8
  %53 = getelementptr inbounds %struct.bounce_page, %struct.bounce_page* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @PAGE_SIZE, align 4
  %56 = call i64 @pmap_mapdev(i32 %54, i32 %55)
  %57 = inttoptr i64 %56 to i8*
  %58 = load %struct.bounce_page*, %struct.bounce_page** %7, align 8
  %59 = getelementptr inbounds %struct.bounce_page, %struct.bounce_page* %58, i32 0, i32 2
  store i8* %57, i8** %59, align 8
  %60 = call i32 @mtx_lock(i32* @bounce_lock)
  %61 = load %struct.bounce_zone*, %struct.bounce_zone** %5, align 8
  %62 = getelementptr inbounds %struct.bounce_zone, %struct.bounce_zone* %61, i32 0, i32 2
  %63 = load %struct.bounce_page*, %struct.bounce_page** %7, align 8
  %64 = load i32, i32* @links, align 4
  %65 = call i32 @STAILQ_INSERT_TAIL(i32* %62, %struct.bounce_page* %63, i32 %64)
  %66 = load i32, i32* @total_bpages, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* @total_bpages, align 4
  %68 = load %struct.bounce_zone*, %struct.bounce_zone** %5, align 8
  %69 = getelementptr inbounds %struct.bounce_zone, %struct.bounce_zone* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  %72 = load %struct.bounce_zone*, %struct.bounce_zone** %5, align 8
  %73 = getelementptr inbounds %struct.bounce_zone, %struct.bounce_zone* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  %76 = call i32 @mtx_unlock(i32* @bounce_lock)
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %6, align 4
  %79 = load i64, i64* %4, align 8
  %80 = add nsw i64 %79, -1
  store i64 %80, i64* %4, align 8
  br label %11

81:                                               ; preds = %41, %23, %11
  %82 = load i32, i32* %6, align 4
  ret i32 %82
}

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i64 @contigmalloc(i32, i32, i32, i64, i32, i32, i32) #1

declare dso_local i32 @free(%struct.bounce_page*, i32) #1

declare dso_local i32 @pmap_kextract(i64) #1

declare dso_local i64 @pmap_mapdev(i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.bounce_page*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
