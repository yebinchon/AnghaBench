; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_mmc.c_jz4780_mmc_setup_dma.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_mmc.c_jz4780_mmc_setup_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4780_mmc_softc = type { i32, i32, i32, i32, i32, i32, i32 }

@JZ_MSC_DMA_SEGS = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_DMA_WAITOK = common dso_local global i32 0, align 4
@BUS_DMA_ZERO = common dso_local global i32 0, align 4
@jz4780_mmc_dma_desc_cb = common dso_local global i32 0, align 4
@JZ_MSC_DMA_MAX_SIZE = common dso_local global i32 0, align 4
@BUS_DMA_ALLOCNOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jz4780_mmc_softc*)* @jz4780_mmc_setup_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4780_mmc_setup_dma(%struct.jz4780_mmc_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.jz4780_mmc_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.jz4780_mmc_softc* %0, %struct.jz4780_mmc_softc** %3, align 8
  %6 = load i32, i32* @JZ_MSC_DMA_SEGS, align 4
  %7 = sext i32 %6 to i64
  %8 = mul i64 4, %7
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %4, align 4
  %10 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %3, align 8
  %11 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @bus_get_dma_tag(i32 %12)
  %14 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %15 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %3, align 8
  %19 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %18, i32 0, i32 6
  %20 = call i32 @bus_dma_tag_create(i32 %13, i32 1, i32 0, i32 %14, i32 %15, i32* null, i32* null, i32 %16, i32 1, i32 %17, i32 0, i32* null, i32* null, i32* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %100

25:                                               ; preds = %1
  %26 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %3, align 8
  %27 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %3, align 8
  %30 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %29, i32 0, i32 4
  %31 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %32 = load i32, i32* @BUS_DMA_ZERO, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %3, align 8
  %35 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %34, i32 0, i32 5
  %36 = call i32 @bus_dmamem_alloc(i32 %28, i32* %30, i32 %33, i32* %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %25
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* %2, align 4
  br label %100

41:                                               ; preds = %25
  %42 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %3, align 8
  %43 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %3, align 8
  %46 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %3, align 8
  %49 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @jz4780_mmc_dma_desc_cb, align 4
  %53 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %3, align 8
  %54 = call i32 @bus_dmamap_load(i32 %44, i32 %47, i32 %50, i32 %51, i32 %52, %struct.jz4780_mmc_softc* %53, i32 0)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %41
  %58 = load i32, i32* %5, align 4
  store i32 %58, i32* %2, align 4
  br label %100

59:                                               ; preds = %41
  %60 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %3, align 8
  %61 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %3, align 8
  %66 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %2, align 4
  br label %100

68:                                               ; preds = %59
  %69 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %3, align 8
  %70 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @bus_get_dma_tag(i32 %71)
  %73 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %74 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %75 = load i32, i32* @JZ_MSC_DMA_MAX_SIZE, align 4
  %76 = load i32, i32* @JZ_MSC_DMA_SEGS, align 4
  %77 = mul nsw i32 %75, %76
  %78 = load i32, i32* @JZ_MSC_DMA_SEGS, align 4
  %79 = load i32, i32* @JZ_MSC_DMA_MAX_SIZE, align 4
  %80 = load i32, i32* @BUS_DMA_ALLOCNOW, align 4
  %81 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %3, align 8
  %82 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %81, i32 0, i32 2
  %83 = call i32 @bus_dma_tag_create(i32 %72, i32 1, i32 0, i32 %73, i32 %74, i32* null, i32* null, i32 %77, i32 %78, i32 %79, i32 %80, i32* null, i32* null, i32* %82)
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %5, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %68
  %87 = load i32, i32* %5, align 4
  store i32 %87, i32* %2, align 4
  br label %100

88:                                               ; preds = %68
  %89 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %3, align 8
  %90 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %3, align 8
  %93 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %92, i32 0, i32 1
  %94 = call i32 @bus_dmamap_create(i32 %91, i32 0, i32* %93)
  store i32 %94, i32* %5, align 4
  %95 = load i32, i32* %5, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %88
  %98 = load i32, i32* %5, align 4
  store i32 %98, i32* %2, align 4
  br label %100

99:                                               ; preds = %88
  store i32 0, i32* %2, align 4
  br label %100

100:                                              ; preds = %99, %97, %86, %64, %57, %39, %23
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @bus_dmamem_alloc(i32, i32*, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i32, i32, i32, %struct.jz4780_mmc_softc*, i32) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
