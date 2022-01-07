; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_busdma_bounce.c_alloc_bounce_pages.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_busdma_bounce.c_alloc_bounce_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, %struct.bounce_zone* }
%struct.TYPE_4__ = type { i32 }
%struct.bounce_zone = type { i32, i32, i32, i32 }
%struct.bounce_page = type { i64, i32 }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@bounce_lock = common dso_local global i32 0, align 4
@links = common dso_local global i32 0, align 4
@total_bpages = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i64)* @alloc_bounce_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_bounce_pages(%struct.TYPE_5__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.bounce_zone*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bounce_page*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %10 = load %struct.bounce_zone*, %struct.bounce_zone** %9, align 8
  store %struct.bounce_zone* %10, %struct.bounce_zone** %5, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %52, %2
  %12 = load i64, i64* %4, align 8
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %80

14:                                               ; preds = %11
  %15 = load i32, i32* @M_DEVBUF, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @DOMAINSET_PREF(i32 %19)
  %21 = load i32, i32* @M_NOWAIT, align 4
  %22 = load i32, i32* @M_ZERO, align 4
  %23 = or i32 %21, %22
  %24 = call %struct.bounce_page* @malloc_domainset(i32 16, i32 %15, i32 %20, i32 %23)
  store %struct.bounce_page* %24, %struct.bounce_page** %7, align 8
  %25 = load %struct.bounce_page*, %struct.bounce_page** %7, align 8
  %26 = icmp eq %struct.bounce_page* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %14
  br label %80

28:                                               ; preds = %14
  %29 = load i32, i32* @PAGE_SIZE, align 4
  %30 = load i32, i32* @M_DEVBUF, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @DOMAINSET_PREF(i32 %34)
  %36 = load i32, i32* @M_NOWAIT, align 4
  %37 = load %struct.bounce_zone*, %struct.bounce_zone** %5, align 8
  %38 = getelementptr inbounds %struct.bounce_zone, %struct.bounce_zone* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @PAGE_SIZE, align 4
  %41 = call i64 @contigmalloc_domainset(i32 %29, i32 %30, i32 %35, i32 %36, i64 0, i32 %39, i32 %40, i32 0)
  %42 = load %struct.bounce_page*, %struct.bounce_page** %7, align 8
  %43 = getelementptr inbounds %struct.bounce_page, %struct.bounce_page* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load %struct.bounce_page*, %struct.bounce_page** %7, align 8
  %45 = getelementptr inbounds %struct.bounce_page, %struct.bounce_page* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %28
  %49 = load %struct.bounce_page*, %struct.bounce_page** %7, align 8
  %50 = load i32, i32* @M_DEVBUF, align 4
  %51 = call i32 @free_domain(%struct.bounce_page* %49, i32 %50)
  br label %80

52:                                               ; preds = %28
  %53 = load %struct.bounce_page*, %struct.bounce_page** %7, align 8
  %54 = getelementptr inbounds %struct.bounce_page, %struct.bounce_page* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @pmap_kextract(i64 %55)
  %57 = load %struct.bounce_page*, %struct.bounce_page** %7, align 8
  %58 = getelementptr inbounds %struct.bounce_page, %struct.bounce_page* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  %59 = call i32 @mtx_lock(i32* @bounce_lock)
  %60 = load %struct.bounce_zone*, %struct.bounce_zone** %5, align 8
  %61 = getelementptr inbounds %struct.bounce_zone, %struct.bounce_zone* %60, i32 0, i32 2
  %62 = load %struct.bounce_page*, %struct.bounce_page** %7, align 8
  %63 = load i32, i32* @links, align 4
  %64 = call i32 @STAILQ_INSERT_TAIL(i32* %61, %struct.bounce_page* %62, i32 %63)
  %65 = load i32, i32* @total_bpages, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* @total_bpages, align 4
  %67 = load %struct.bounce_zone*, %struct.bounce_zone** %5, align 8
  %68 = getelementptr inbounds %struct.bounce_zone, %struct.bounce_zone* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  %71 = load %struct.bounce_zone*, %struct.bounce_zone** %5, align 8
  %72 = getelementptr inbounds %struct.bounce_zone, %struct.bounce_zone* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  %75 = call i32 @mtx_unlock(i32* @bounce_lock)
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %6, align 4
  %78 = load i64, i64* %4, align 8
  %79 = add nsw i64 %78, -1
  store i64 %79, i64* %4, align 8
  br label %11

80:                                               ; preds = %48, %27, %11
  %81 = load i32, i32* %6, align 4
  ret i32 %81
}

declare dso_local %struct.bounce_page* @malloc_domainset(i32, i32, i32, i32) #1

declare dso_local i32 @DOMAINSET_PREF(i32) #1

declare dso_local i64 @contigmalloc_domainset(i32, i32, i32, i32, i64, i32, i32, i32) #1

declare dso_local i32 @free_domain(%struct.bounce_page*, i32) #1

declare dso_local i32 @pmap_kextract(i64) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.bounce_page*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
