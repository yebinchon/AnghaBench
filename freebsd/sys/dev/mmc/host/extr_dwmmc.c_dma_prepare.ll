; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mmc/host/extr_dwmmc.c_dma_prepare.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mmc/host/extr_dwmmc.c_dma_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwmmc_softc = type { i32, i32, i32, i32, i32 }
%struct.mmc_command = type { %struct.mmc_data* }
%struct.mmc_data = type { i32, i32, i32 }

@SDMMC_INTMASK = common dso_local global i32 0, align 4
@SDMMC_INTMASK_TXDR = common dso_local global i32 0, align 4
@SDMMC_INTMASK_RXDR = common dso_local global i32 0, align 4
@dwmmc_ring_setup = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"dmamap_load failed\0A\00", align 1
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@MMC_DATA_WRITE = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@DEF_MSIZE = common dso_local global i32 0, align 4
@SDMMC_FIFOTH_MSIZE_S = common dso_local global i32 0, align 4
@SDMMC_FIFOTH_RXWMARK_S = common dso_local global i32 0, align 4
@SDMMC_FIFOTH_TXWMARK_S = common dso_local global i32 0, align 4
@SDMMC_FIFOTH = common dso_local global i32 0, align 4
@SDMMC_CTRL = common dso_local global i32 0, align 4
@SDMMC_CTRL_USE_IDMAC = common dso_local global i32 0, align 4
@SDMMC_CTRL_DMA_ENABLE = common dso_local global i32 0, align 4
@SDMMC_BMOD = common dso_local global i32 0, align 4
@SDMMC_BMOD_DE = common dso_local global i32 0, align 4
@SDMMC_BMOD_FB = common dso_local global i32 0, align 4
@SDMMC_PLDMND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwmmc_softc*, %struct.mmc_command*)* @dma_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dma_prepare(%struct.dwmmc_softc* %0, %struct.mmc_command* %1) #0 {
  %3 = alloca %struct.dwmmc_softc*, align 8
  %4 = alloca %struct.mmc_command*, align 8
  %5 = alloca %struct.mmc_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dwmmc_softc* %0, %struct.dwmmc_softc** %3, align 8
  store %struct.mmc_command* %1, %struct.mmc_command** %4, align 8
  %8 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %9 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %8, i32 0, i32 0
  %10 = load %struct.mmc_data*, %struct.mmc_data** %9, align 8
  store %struct.mmc_data* %10, %struct.mmc_data** %5, align 8
  %11 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %12 = load i32, i32* @SDMMC_INTMASK, align 4
  %13 = call i32 @READ4(%struct.dwmmc_softc* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* @SDMMC_INTMASK_TXDR, align 4
  %15 = load i32, i32* @SDMMC_INTMASK_RXDR, align 4
  %16 = or i32 %14, %15
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %7, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %7, align 4
  %20 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %21 = load i32, i32* @SDMMC_INTMASK, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @WRITE4(%struct.dwmmc_softc* %20, i32 %21, i32 %22)
  %24 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %25 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %28 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %31 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %34 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @dwmmc_ring_setup, align 4
  %37 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %38 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %39 = call i32 @bus_dmamap_load(i32 %26, i32 %29, i32 %32, i32 %35, i32 %36, %struct.dwmmc_softc* %37, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %2
  %43 = call i32 @panic(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %2
  %45 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %46 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %49 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %52 = call i32 @bus_dmamap_sync(i32 %47, i32 %50, i32 %51)
  %53 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %54 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @MMC_DATA_WRITE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %44
  %60 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %61 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %64 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %67 = call i32 @bus_dmamap_sync(i32 %62, i32 %65, i32 %66)
  br label %77

68:                                               ; preds = %44
  %69 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %70 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %73 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %76 = call i32 @bus_dmamap_sync(i32 %71, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %68, %59
  %78 = load i32, i32* @DEF_MSIZE, align 4
  %79 = load i32, i32* @SDMMC_FIFOTH_MSIZE_S, align 4
  %80 = shl i32 %78, %79
  store i32 %80, i32* %7, align 4
  %81 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %82 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = sdiv i32 %83, 2
  %85 = sub nsw i32 %84, 1
  %86 = load i32, i32* @SDMMC_FIFOTH_RXWMARK_S, align 4
  %87 = shl i32 %85, %86
  %88 = load i32, i32* %7, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %7, align 4
  %90 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %91 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = sdiv i32 %92, 2
  %94 = load i32, i32* @SDMMC_FIFOTH_TXWMARK_S, align 4
  %95 = shl i32 %93, %94
  %96 = load i32, i32* %7, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %7, align 4
  %98 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %99 = load i32, i32* @SDMMC_FIFOTH, align 4
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @WRITE4(%struct.dwmmc_softc* %98, i32 %99, i32 %100)
  %102 = call i32 (...) @wmb()
  %103 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %104 = load i32, i32* @SDMMC_CTRL, align 4
  %105 = call i32 @READ4(%struct.dwmmc_softc* %103, i32 %104)
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* @SDMMC_CTRL_USE_IDMAC, align 4
  %107 = load i32, i32* @SDMMC_CTRL_DMA_ENABLE, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* %7, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %7, align 4
  %111 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %112 = load i32, i32* @SDMMC_CTRL, align 4
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @WRITE4(%struct.dwmmc_softc* %111, i32 %112, i32 %113)
  %115 = call i32 (...) @wmb()
  %116 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %117 = load i32, i32* @SDMMC_BMOD, align 4
  %118 = call i32 @READ4(%struct.dwmmc_softc* %116, i32 %117)
  store i32 %118, i32* %7, align 4
  %119 = load i32, i32* @SDMMC_BMOD_DE, align 4
  %120 = load i32, i32* @SDMMC_BMOD_FB, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* %7, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %7, align 4
  %124 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %125 = load i32, i32* @SDMMC_BMOD, align 4
  %126 = load i32, i32* %7, align 4
  %127 = call i32 @WRITE4(%struct.dwmmc_softc* %124, i32 %125, i32 %126)
  %128 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %129 = load i32, i32* @SDMMC_PLDMND, align 4
  %130 = call i32 @WRITE4(%struct.dwmmc_softc* %128, i32 %129, i32 1)
  ret i32 0
}

declare dso_local i32 @READ4(%struct.dwmmc_softc*, i32) #1

declare dso_local i32 @WRITE4(%struct.dwmmc_softc*, i32, i32) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i32, i32, i32, %struct.dwmmc_softc*, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
