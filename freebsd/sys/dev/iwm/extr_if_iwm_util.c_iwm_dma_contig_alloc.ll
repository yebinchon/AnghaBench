; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_util.c_iwm_dma_contig_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_util.c_iwm_dma_contig_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_dma_info = type { i32*, i32*, i32*, i32, i32 }

@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@BUS_DMA_ZERO = common dso_local global i32 0, align 4
@BUS_DMA_COHERENT = common dso_local global i32 0, align 4
@iwm_dma_map_addr = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwm_dma_contig_alloc(i32 %0, %struct.iwm_dma_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwm_dma_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.iwm_dma_info* %1, %struct.iwm_dma_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.iwm_dma_info*, %struct.iwm_dma_info** %7, align 8
  %12 = getelementptr inbounds %struct.iwm_dma_info, %struct.iwm_dma_info* %11, i32 0, i32 1
  store i32* null, i32** %12, align 8
  %13 = load %struct.iwm_dma_info*, %struct.iwm_dma_info** %7, align 8
  %14 = getelementptr inbounds %struct.iwm_dma_info, %struct.iwm_dma_info* %13, i32 0, i32 0
  store i32* null, i32** %14, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.iwm_dma_info*, %struct.iwm_dma_info** %7, align 8
  %17 = getelementptr inbounds %struct.iwm_dma_info, %struct.iwm_dma_info* %16, i32 0, i32 4
  store i32 %15, i32* %17, align 4
  %18 = load %struct.iwm_dma_info*, %struct.iwm_dma_info** %7, align 8
  %19 = getelementptr inbounds %struct.iwm_dma_info, %struct.iwm_dma_info* %18, i32 0, i32 2
  store i32* null, i32** %19, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %23 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.iwm_dma_info*, %struct.iwm_dma_info** %7, align 8
  %27 = getelementptr inbounds %struct.iwm_dma_info, %struct.iwm_dma_info* %26, i32 0, i32 1
  %28 = call i32 @bus_dma_tag_create(i32 %20, i32 %21, i32 0, i32 %22, i32 %23, i32* null, i32* null, i32 %24, i32 1, i32 %25, i32 0, i32* null, i32* null, i32** %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %4
  br label %90

32:                                               ; preds = %4
  %33 = load %struct.iwm_dma_info*, %struct.iwm_dma_info** %7, align 8
  %34 = getelementptr inbounds %struct.iwm_dma_info, %struct.iwm_dma_info* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.iwm_dma_info*, %struct.iwm_dma_info** %7, align 8
  %37 = getelementptr inbounds %struct.iwm_dma_info, %struct.iwm_dma_info* %36, i32 0, i32 2
  %38 = bitcast i32** %37 to i8**
  %39 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %40 = load i32, i32* @BUS_DMA_ZERO, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %43 = or i32 %41, %42
  %44 = load %struct.iwm_dma_info*, %struct.iwm_dma_info** %7, align 8
  %45 = getelementptr inbounds %struct.iwm_dma_info, %struct.iwm_dma_info* %44, i32 0, i32 0
  %46 = call i32 @bus_dmamem_alloc(i32* %35, i8** %38, i32 %43, i32** %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %32
  br label %90

50:                                               ; preds = %32
  %51 = load %struct.iwm_dma_info*, %struct.iwm_dma_info** %7, align 8
  %52 = getelementptr inbounds %struct.iwm_dma_info, %struct.iwm_dma_info* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.iwm_dma_info*, %struct.iwm_dma_info** %7, align 8
  %55 = getelementptr inbounds %struct.iwm_dma_info, %struct.iwm_dma_info* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.iwm_dma_info*, %struct.iwm_dma_info** %7, align 8
  %58 = getelementptr inbounds %struct.iwm_dma_info, %struct.iwm_dma_info* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @iwm_dma_map_addr, align 4
  %62 = load %struct.iwm_dma_info*, %struct.iwm_dma_info** %7, align 8
  %63 = getelementptr inbounds %struct.iwm_dma_info, %struct.iwm_dma_info* %62, i32 0, i32 3
  %64 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %65 = call i32 @bus_dmamap_load(i32* %53, i32* %56, i32* %59, i32 %60, i32 %61, i32* %63, i32 %64)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %50
  %69 = load %struct.iwm_dma_info*, %struct.iwm_dma_info** %7, align 8
  %70 = getelementptr inbounds %struct.iwm_dma_info, %struct.iwm_dma_info* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.iwm_dma_info*, %struct.iwm_dma_info** %7, align 8
  %73 = getelementptr inbounds %struct.iwm_dma_info, %struct.iwm_dma_info* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.iwm_dma_info*, %struct.iwm_dma_info** %7, align 8
  %76 = getelementptr inbounds %struct.iwm_dma_info, %struct.iwm_dma_info* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @bus_dmamem_free(i32* %71, i32* %74, i32* %77)
  %79 = load %struct.iwm_dma_info*, %struct.iwm_dma_info** %7, align 8
  %80 = getelementptr inbounds %struct.iwm_dma_info, %struct.iwm_dma_info* %79, i32 0, i32 2
  store i32* null, i32** %80, align 8
  br label %90

81:                                               ; preds = %50
  %82 = load %struct.iwm_dma_info*, %struct.iwm_dma_info** %7, align 8
  %83 = getelementptr inbounds %struct.iwm_dma_info, %struct.iwm_dma_info* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load %struct.iwm_dma_info*, %struct.iwm_dma_info** %7, align 8
  %86 = getelementptr inbounds %struct.iwm_dma_info, %struct.iwm_dma_info* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %89 = call i32 @bus_dmamap_sync(i32* %84, i32* %87, i32 %88)
  store i32 0, i32* %5, align 4
  br label %94

90:                                               ; preds = %68, %49, %31
  %91 = load %struct.iwm_dma_info*, %struct.iwm_dma_info** %7, align 8
  %92 = call i32 @iwm_dma_contig_free(%struct.iwm_dma_info* %91)
  %93 = load i32, i32* %10, align 4
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %90, %81
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32**) #1

declare dso_local i32 @bus_dmamem_alloc(i32*, i8**, i32, i32**) #1

declare dso_local i32 @bus_dmamap_load(i32*, i32*, i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @bus_dmamem_free(i32*, i32*, i32*) #1

declare dso_local i32 @bus_dmamap_sync(i32*, i32*, i32) #1

declare dso_local i32 @iwm_dma_contig_free(%struct.iwm_dma_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
