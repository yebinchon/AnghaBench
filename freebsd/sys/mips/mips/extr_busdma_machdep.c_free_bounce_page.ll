; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_busdma_machdep.c_free_bounce_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_busdma_machdep.c_free_bounce_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.bounce_zone* }
%struct.bounce_zone = type { i32, i32, i32, i32 }
%struct.bounce_page = type { i32, i32, i64, i64 }
%struct.bus_dmamap = type { i32 }

@BUS_DMA_KEEP_PG_OFFSET = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@bounce_lock = common dso_local global i32 0, align 4
@links = common dso_local global i32 0, align 4
@bounce_map_waitinglist = common dso_local global i32 0, align 4
@bounce_map_callbacklist = common dso_local global i32 0, align 4
@busdma_swi_pending = common dso_local global i32 0, align 4
@vm_ih = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, %struct.bounce_page*)* @free_bounce_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_bounce_page(%struct.TYPE_3__* %0, %struct.bounce_page* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.bounce_page*, align 8
  %5 = alloca %struct.bus_dmamap*, align 8
  %6 = alloca %struct.bounce_zone*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store %struct.bounce_page* %1, %struct.bounce_page** %4, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %9 = load %struct.bounce_zone*, %struct.bounce_zone** %8, align 8
  store %struct.bounce_zone* %9, %struct.bounce_zone** %6, align 8
  %10 = load %struct.bounce_page*, %struct.bounce_page** %4, align 8
  %11 = getelementptr inbounds %struct.bounce_page, %struct.bounce_page* %10, i32 0, i32 3
  store i64 0, i64* %11, align 8
  %12 = load %struct.bounce_page*, %struct.bounce_page** %4, align 8
  %13 = getelementptr inbounds %struct.bounce_page, %struct.bounce_page* %12, i32 0, i32 2
  store i64 0, i64* %13, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @BUS_DMA_KEEP_PG_OFFSET, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %2
  %21 = load i32, i32* @PAGE_MASK, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.bounce_page*, %struct.bounce_page** %4, align 8
  %24 = getelementptr inbounds %struct.bounce_page, %struct.bounce_page* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load i32, i32* @PAGE_MASK, align 4
  %28 = xor i32 %27, -1
  %29 = load %struct.bounce_page*, %struct.bounce_page** %4, align 8
  %30 = getelementptr inbounds %struct.bounce_page, %struct.bounce_page* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %31, %28
  store i32 %32, i32* %30, align 8
  br label %33

33:                                               ; preds = %20, %2
  %34 = call i32 @mtx_lock(i32* @bounce_lock)
  %35 = load %struct.bounce_zone*, %struct.bounce_zone** %6, align 8
  %36 = getelementptr inbounds %struct.bounce_zone, %struct.bounce_zone* %35, i32 0, i32 3
  %37 = load %struct.bounce_page*, %struct.bounce_page** %4, align 8
  %38 = load i32, i32* @links, align 4
  %39 = call i32 @STAILQ_INSERT_HEAD(i32* %36, %struct.bounce_page* %37, i32 %38)
  %40 = load %struct.bounce_zone*, %struct.bounce_zone** %6, align 8
  %41 = getelementptr inbounds %struct.bounce_zone, %struct.bounce_zone* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  %44 = load %struct.bounce_zone*, %struct.bounce_zone** %6, align 8
  %45 = getelementptr inbounds %struct.bounce_zone, %struct.bounce_zone* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %45, align 4
  %48 = call %struct.bus_dmamap* @STAILQ_FIRST(i32* @bounce_map_waitinglist)
  store %struct.bus_dmamap* %48, %struct.bus_dmamap** %5, align 8
  %49 = icmp ne %struct.bus_dmamap* %48, null
  br i1 %49, label %50, label %70

50:                                               ; preds = %33
  %51 = load %struct.bus_dmamap*, %struct.bus_dmamap** %5, align 8
  %52 = getelementptr inbounds %struct.bus_dmamap, %struct.bus_dmamap* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.bus_dmamap*, %struct.bus_dmamap** %5, align 8
  %55 = call i64 @reserve_bounce_pages(i32 %53, %struct.bus_dmamap* %54, i32 1)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %50
  %58 = load i32, i32* @links, align 4
  %59 = call i32 @STAILQ_REMOVE_HEAD(i32* @bounce_map_waitinglist, i32 %58)
  %60 = load %struct.bus_dmamap*, %struct.bus_dmamap** %5, align 8
  %61 = load i32, i32* @links, align 4
  %62 = call i32 @STAILQ_INSERT_TAIL(i32* @bounce_map_callbacklist, %struct.bus_dmamap* %60, i32 %61)
  store i32 1, i32* @busdma_swi_pending, align 4
  %63 = load %struct.bounce_zone*, %struct.bounce_zone** %6, align 8
  %64 = getelementptr inbounds %struct.bounce_zone, %struct.bounce_zone* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  %67 = load i32, i32* @vm_ih, align 4
  %68 = call i32 @swi_sched(i32 %67, i32 0)
  br label %69

69:                                               ; preds = %57, %50
  br label %70

70:                                               ; preds = %69, %33
  %71 = call i32 @mtx_unlock(i32* @bounce_lock)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @STAILQ_INSERT_HEAD(i32*, %struct.bounce_page*, i32) #1

declare dso_local %struct.bus_dmamap* @STAILQ_FIRST(i32*) #1

declare dso_local i64 @reserve_bounce_pages(i32, %struct.bus_dmamap*, i32) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.bus_dmamap*, i32) #1

declare dso_local i32 @swi_sched(i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
