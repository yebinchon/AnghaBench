; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_busdma_bounce.c_busdma_swi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_busdma_bounce.c_busdma_swi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 (i32, i32)* }
%struct.bus_dmamap = type { i32, i32, i32, %struct.TYPE_5__* }

@bounce_lock = common dso_local global i32 0, align 4
@bounce_map_callbacklist = common dso_local global i32 0, align 4
@links = common dso_local global i32 0, align 4
@BUS_DMA_LOCK = common dso_local global i32 0, align 4
@BUS_DMA_WAITOK = common dso_local global i32 0, align 4
@BUS_DMA_UNLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @busdma_swi() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = alloca %struct.bus_dmamap*, align 8
  %3 = call i32 @mtx_lock(i32* @bounce_lock)
  br label %4

4:                                                ; preds = %7, %0
  %5 = call %struct.bus_dmamap* @STAILQ_FIRST(i32* @bounce_map_callbacklist)
  store %struct.bus_dmamap* %5, %struct.bus_dmamap** %2, align 8
  %6 = icmp ne %struct.bus_dmamap* %5, null
  br i1 %6, label %7, label %49

7:                                                ; preds = %4
  %8 = load i32, i32* @links, align 4
  %9 = call i32 @STAILQ_REMOVE_HEAD(i32* @bounce_map_callbacklist, i32 %8)
  %10 = call i32 @mtx_unlock(i32* @bounce_lock)
  %11 = load %struct.bus_dmamap*, %struct.bus_dmamap** %2, align 8
  %12 = getelementptr inbounds %struct.bus_dmamap, %struct.bus_dmamap* %11, i32 0, i32 3
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %1, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32 (i32, i32)*, i32 (i32, i32)** %16, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @BUS_DMA_LOCK, align 4
  %23 = call i32 %17(i32 %21, i32 %22)
  %24 = load %struct.bus_dmamap*, %struct.bus_dmamap** %2, align 8
  %25 = getelementptr inbounds %struct.bus_dmamap, %struct.bus_dmamap* %24, i32 0, i32 3
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = load %struct.bus_dmamap*, %struct.bus_dmamap** %2, align 8
  %28 = load %struct.bus_dmamap*, %struct.bus_dmamap** %2, align 8
  %29 = getelementptr inbounds %struct.bus_dmamap, %struct.bus_dmamap* %28, i32 0, i32 2
  %30 = load %struct.bus_dmamap*, %struct.bus_dmamap** %2, align 8
  %31 = getelementptr inbounds %struct.bus_dmamap, %struct.bus_dmamap* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.bus_dmamap*, %struct.bus_dmamap** %2, align 8
  %34 = getelementptr inbounds %struct.bus_dmamap, %struct.bus_dmamap* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %37 = call i32 @bus_dmamap_load_mem(%struct.TYPE_5__* %26, %struct.bus_dmamap* %27, i32* %29, i32 %32, i32 %35, i32 %36)
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32 (i32, i32)*, i32 (i32, i32)** %40, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @BUS_DMA_UNLOCK, align 4
  %47 = call i32 %41(i32 %45, i32 %46)
  %48 = call i32 @mtx_lock(i32* @bounce_lock)
  br label %4

49:                                               ; preds = %4
  %50 = call i32 @mtx_unlock(i32* @bounce_lock)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.bus_dmamap* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @bus_dmamap_load_mem(%struct.TYPE_5__*, %struct.bus_dmamap*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
