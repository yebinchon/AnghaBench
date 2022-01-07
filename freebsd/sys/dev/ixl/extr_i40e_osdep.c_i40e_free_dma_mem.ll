; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_osdep.c_i40e_free_dma_mem.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_osdep.c_i40e_free_dma_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }
%struct.i40e_dma_mem = type { i32, i32, i32 }

@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@I40E_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_free_dma_mem(%struct.i40e_hw* %0, %struct.i40e_dma_mem* %1) #0 {
  %3 = alloca %struct.i40e_hw*, align 8
  %4 = alloca %struct.i40e_dma_mem*, align 8
  store %struct.i40e_hw* %0, %struct.i40e_hw** %3, align 8
  store %struct.i40e_dma_mem* %1, %struct.i40e_dma_mem** %4, align 8
  %5 = load %struct.i40e_dma_mem*, %struct.i40e_dma_mem** %4, align 8
  %6 = getelementptr inbounds %struct.i40e_dma_mem, %struct.i40e_dma_mem* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.i40e_dma_mem*, %struct.i40e_dma_mem** %4, align 8
  %9 = getelementptr inbounds %struct.i40e_dma_mem, %struct.i40e_dma_mem* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %12 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @bus_dmamap_sync(i32 %7, i32 %10, i32 %13)
  %15 = load %struct.i40e_dma_mem*, %struct.i40e_dma_mem** %4, align 8
  %16 = getelementptr inbounds %struct.i40e_dma_mem, %struct.i40e_dma_mem* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.i40e_dma_mem*, %struct.i40e_dma_mem** %4, align 8
  %19 = getelementptr inbounds %struct.i40e_dma_mem, %struct.i40e_dma_mem* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @bus_dmamap_unload(i32 %17, i32 %20)
  %22 = load %struct.i40e_dma_mem*, %struct.i40e_dma_mem** %4, align 8
  %23 = getelementptr inbounds %struct.i40e_dma_mem, %struct.i40e_dma_mem* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.i40e_dma_mem*, %struct.i40e_dma_mem** %4, align 8
  %26 = getelementptr inbounds %struct.i40e_dma_mem, %struct.i40e_dma_mem* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.i40e_dma_mem*, %struct.i40e_dma_mem** %4, align 8
  %29 = getelementptr inbounds %struct.i40e_dma_mem, %struct.i40e_dma_mem* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @bus_dmamem_free(i32 %24, i32 %27, i32 %30)
  %32 = load %struct.i40e_dma_mem*, %struct.i40e_dma_mem** %4, align 8
  %33 = getelementptr inbounds %struct.i40e_dma_mem, %struct.i40e_dma_mem* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @bus_dma_tag_destroy(i32 %34)
  %36 = load i32, i32* @I40E_SUCCESS, align 4
  ret i32 %36
}

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @bus_dmamem_free(i32, i32, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
