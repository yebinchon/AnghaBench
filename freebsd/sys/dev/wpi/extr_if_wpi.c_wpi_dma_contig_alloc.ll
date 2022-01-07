; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/wpi/extr_if_wpi.c_wpi_dma_contig_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/wpi/extr_if_wpi.c_wpi_dma_contig_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpi_softc = type { i32 }
%struct.wpi_dma_info = type { i8*, i32, i32*, i32, i32 }

@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@BUS_DMA_ZERO = common dso_local global i32 0, align 4
@BUS_DMA_COHERENT = common dso_local global i32 0, align 4
@wpi_dma_map_addr = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpi_softc*, %struct.wpi_dma_info*, i8**, i32, i32)* @wpi_dma_contig_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpi_dma_contig_alloc(%struct.wpi_softc* %0, %struct.wpi_dma_info* %1, i8** %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wpi_softc*, align 8
  %8 = alloca %struct.wpi_dma_info*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.wpi_softc* %0, %struct.wpi_softc** %7, align 8
  store %struct.wpi_dma_info* %1, %struct.wpi_dma_info** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.wpi_dma_info*, %struct.wpi_dma_info** %8, align 8
  %14 = getelementptr inbounds %struct.wpi_dma_info, %struct.wpi_dma_info* %13, i32 0, i32 2
  store i32* null, i32** %14, align 8
  %15 = load i32, i32* %10, align 4
  %16 = load %struct.wpi_dma_info*, %struct.wpi_dma_info** %8, align 8
  %17 = getelementptr inbounds %struct.wpi_dma_info, %struct.wpi_dma_info* %16, i32 0, i32 4
  store i32 %15, i32* %17, align 4
  %18 = load %struct.wpi_softc*, %struct.wpi_softc** %7, align 8
  %19 = getelementptr inbounds %struct.wpi_softc, %struct.wpi_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @bus_get_dma_tag(i32 %20)
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %24 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load %struct.wpi_dma_info*, %struct.wpi_dma_info** %8, align 8
  %28 = getelementptr inbounds %struct.wpi_dma_info, %struct.wpi_dma_info* %27, i32 0, i32 2
  %29 = call i32 @bus_dma_tag_create(i32 %21, i32 %22, i32 0, i32 %23, i32 %24, i32* null, i32* null, i32 %25, i32 1, i32 %26, i32 0, i32* null, i32* null, i32** %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %5
  br label %86

33:                                               ; preds = %5
  %34 = load %struct.wpi_dma_info*, %struct.wpi_dma_info** %8, align 8
  %35 = getelementptr inbounds %struct.wpi_dma_info, %struct.wpi_dma_info* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.wpi_dma_info*, %struct.wpi_dma_info** %8, align 8
  %38 = getelementptr inbounds %struct.wpi_dma_info, %struct.wpi_dma_info* %37, i32 0, i32 0
  %39 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %40 = load i32, i32* @BUS_DMA_ZERO, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %43 = or i32 %41, %42
  %44 = load %struct.wpi_dma_info*, %struct.wpi_dma_info** %8, align 8
  %45 = getelementptr inbounds %struct.wpi_dma_info, %struct.wpi_dma_info* %44, i32 0, i32 1
  %46 = call i32 @bus_dmamem_alloc(i32* %36, i8** %38, i32 %43, i32* %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %33
  br label %86

50:                                               ; preds = %33
  %51 = load %struct.wpi_dma_info*, %struct.wpi_dma_info** %8, align 8
  %52 = getelementptr inbounds %struct.wpi_dma_info, %struct.wpi_dma_info* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.wpi_dma_info*, %struct.wpi_dma_info** %8, align 8
  %55 = getelementptr inbounds %struct.wpi_dma_info, %struct.wpi_dma_info* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.wpi_dma_info*, %struct.wpi_dma_info** %8, align 8
  %58 = getelementptr inbounds %struct.wpi_dma_info, %struct.wpi_dma_info* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @wpi_dma_map_addr, align 4
  %62 = load %struct.wpi_dma_info*, %struct.wpi_dma_info** %8, align 8
  %63 = getelementptr inbounds %struct.wpi_dma_info, %struct.wpi_dma_info* %62, i32 0, i32 3
  %64 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %65 = call i32 @bus_dmamap_load(i32* %53, i32 %56, i8* %59, i32 %60, i32 %61, i32* %63, i32 %64)
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %50
  br label %86

69:                                               ; preds = %50
  %70 = load %struct.wpi_dma_info*, %struct.wpi_dma_info** %8, align 8
  %71 = getelementptr inbounds %struct.wpi_dma_info, %struct.wpi_dma_info* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.wpi_dma_info*, %struct.wpi_dma_info** %8, align 8
  %74 = getelementptr inbounds %struct.wpi_dma_info, %struct.wpi_dma_info* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %77 = call i32 @bus_dmamap_sync(i32* %72, i32 %75, i32 %76)
  %78 = load i8**, i8*** %9, align 8
  %79 = icmp ne i8** %78, null
  br i1 %79, label %80, label %85

80:                                               ; preds = %69
  %81 = load %struct.wpi_dma_info*, %struct.wpi_dma_info** %8, align 8
  %82 = getelementptr inbounds %struct.wpi_dma_info, %struct.wpi_dma_info* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = load i8**, i8*** %9, align 8
  store i8* %83, i8** %84, align 8
  br label %85

85:                                               ; preds = %80, %69
  store i32 0, i32* %6, align 4
  br label %90

86:                                               ; preds = %68, %49, %32
  %87 = load %struct.wpi_dma_info*, %struct.wpi_dma_info** %8, align 8
  %88 = call i32 @wpi_dma_contig_free(%struct.wpi_dma_info* %87)
  %89 = load i32, i32* %12, align 4
  store i32 %89, i32* %6, align 4
  br label %90

90:                                               ; preds = %86, %85
  %91 = load i32, i32* %6, align 4
  ret i32 %91
}

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32**) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @bus_dmamem_alloc(i32*, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32*, i32, i8*, i32, i32, i32*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32*, i32, i32) #1

declare dso_local i32 @wpi_dma_contig_free(%struct.wpi_dma_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
