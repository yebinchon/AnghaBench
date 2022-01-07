; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mmc/host/extr_dwmmc.c_dma_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mmc/host/extr_dwmmc.c_dma_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwmmc_softc = type { i32, i32, i32, i32, i64, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i64, i64, i32 }

@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@DESC_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"could not create ring DMA tag.\0A\00", align 1
@BUS_DMA_COHERENT = common dso_local global i32 0, align 4
@BUS_DMA_WAITOK = common dso_local global i32 0, align 4
@BUS_DMA_ZERO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"could not allocate descriptor ring.\0A\00", align 1
@dwmmc_get1paddr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"could not load descriptor ring map.\0A\00", align 1
@DES0_CH = common dso_local global i32 0, align 4
@MMC_SECTOR_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"could not create TX buffer DMA map.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwmmc_softc*)* @dma_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dma_setup(%struct.dwmmc_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dwmmc_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dwmmc_softc* %0, %struct.dwmmc_softc** %3, align 8
  %7 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %8 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @bus_get_dma_tag(i32 %9)
  %11 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %12 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %13 = load i32, i32* @DESC_SIZE, align 4
  %14 = load i32, i32* @DESC_SIZE, align 4
  %15 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %16 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %15, i32 0, i32 7
  %17 = call i32 @bus_dma_tag_create(i32 %10, i32 4096, i32 0, i32 %11, i32 %12, i32* null, i32* null, i32 %13, i32 1, i32 %14, i32 0, i32* null, i32* null, i32* %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %22 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @device_printf(i32 %23, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %156

25:                                               ; preds = %1
  %26 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %27 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %26, i32 0, i32 7
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %30 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %29, i32 0, i32 5
  %31 = bitcast %struct.TYPE_2__** %30 to i8**
  %32 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %33 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @BUS_DMA_ZERO, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %38 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %37, i32 0, i32 6
  %39 = call i32 @bus_dmamem_alloc(i32 %28, i8** %31, i32 %36, i32* %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %25
  %43 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %44 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @device_printf(i32 %45, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %156

47:                                               ; preds = %25
  %48 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %49 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %52 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %55 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %54, i32 0, i32 5
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* @DESC_SIZE, align 4
  %58 = load i32, i32* @dwmmc_get1paddr, align 4
  %59 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %60 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %59, i32 0, i32 4
  %61 = call i32 @bus_dmamap_load(i32 %50, i32 %53, %struct.TYPE_2__* %56, i32 %57, i32 %58, i64* %60, i32 0)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %47
  %65 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %66 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @device_printf(i32 %67, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %156

69:                                               ; preds = %47
  store i32 0, i32* %6, align 4
  br label %70

70:                                               ; preds = %112, %69
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %73 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %115

76:                                               ; preds = %70
  %77 = load i32, i32* @DES0_CH, align 4
  %78 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %79 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %78, i32 0, i32 5
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 2
  store i32 %77, i32* %84, align 8
  %85 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %86 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %85, i32 0, i32 5
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  store i64 0, i64* %91, align 8
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, 1
  %94 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %95 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = srem i32 %93, %96
  store i32 %97, i32* %5, align 4
  %98 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %99 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %98, i32 0, i32 4
  %100 = load i64, i64* %99, align 8
  %101 = load i32, i32* %5, align 4
  %102 = sext i32 %101 to i64
  %103 = mul i64 %102, 4
  %104 = add i64 %100, %103
  %105 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %106 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %105, i32 0, i32 5
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = load i32, i32* %6, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  store i64 %104, i64* %111, align 8
  br label %112

112:                                              ; preds = %76
  %113 = load i32, i32* %6, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %6, align 4
  br label %70

115:                                              ; preds = %70
  %116 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %117 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @bus_get_dma_tag(i32 %118)
  %120 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %121 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %122 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %123 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @MMC_SECTOR_SIZE, align 4
  %126 = mul nsw i32 %124, %125
  %127 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %128 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @MMC_SECTOR_SIZE, align 4
  %131 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %132 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %131, i32 0, i32 3
  %133 = call i32 @bus_dma_tag_create(i32 %119, i32 4096, i32 0, i32 %120, i32 %121, i32* null, i32* null, i32 %126, i32 %129, i32 %130, i32 0, i32* null, i32* null, i32* %132)
  store i32 %133, i32* %4, align 4
  %134 = load i32, i32* %4, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %115
  %137 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %138 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @device_printf(i32 %139, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %156

141:                                              ; preds = %115
  %142 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %143 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %146 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %145, i32 0, i32 2
  %147 = call i32 @bus_dmamap_create(i32 %144, i32 0, i32* %146)
  store i32 %147, i32* %4, align 4
  %148 = load i32, i32* %4, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %141
  %151 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %152 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @device_printf(i32 %153, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %156

155:                                              ; preds = %141
  store i32 0, i32* %2, align 4
  br label %156

156:                                              ; preds = %155, %150, %136, %64, %42, %20
  %157 = load i32, i32* %2, align 4
  ret i32 %157
}

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, %struct.TYPE_2__*, i32, i32, i64*, i32) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
