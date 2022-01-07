; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_util.c_oce_page_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_util.c_oce_page_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.phys_addr = type { i32 }
%struct._oce_dmamap_paddr_table = type { i32, i64, %struct.phys_addr* }

@oce_dma_map_ring = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @oce_page_list(%struct.TYPE_5__* %0, %struct.phys_addr* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.phys_addr*, align 8
  %5 = alloca %struct._oce_dmamap_paddr_table, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store %struct.phys_addr* %1, %struct.phys_addr** %4, align 8
  %6 = getelementptr inbounds %struct._oce_dmamap_paddr_table, %struct._oce_dmamap_paddr_table* %5, i32 0, i32 0
  store i32 8, i32* %6, align 8
  %7 = getelementptr inbounds %struct._oce_dmamap_paddr_table, %struct._oce_dmamap_paddr_table* %5, i32 0, i32 1
  store i64 0, i64* %7, align 8
  %8 = load %struct.phys_addr*, %struct.phys_addr** %4, align 8
  %9 = getelementptr inbounds %struct._oce_dmamap_paddr_table, %struct._oce_dmamap_paddr_table* %5, i32 0, i32 2
  store %struct.phys_addr* %8, %struct.phys_addr** %9, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %24, %27
  %29 = load i32, i32* @oce_dma_map_ring, align 4
  %30 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %31 = call i32 @bus_dmamap_load(i32 %13, i32 %17, i32 %21, i32 %28, i32 %29, %struct._oce_dmamap_paddr_table* %5, i32 %30)
  %32 = getelementptr inbounds %struct._oce_dmamap_paddr_table, %struct._oce_dmamap_paddr_table* %5, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  ret i64 %33
}

declare dso_local i32 @bus_dmamap_load(i32, i32, i32, i32, i32, %struct._oce_dmamap_paddr_table*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
