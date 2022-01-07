; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_mmc.c_jz4780_mmc_prepare_dma.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_mmc.c_jz4780_mmc_prepare_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4780_mmc_softc = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.mmc_command* }
%struct.mmc_command = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i64 }

@JZ_MSC_DMA_MAX_SIZE = common dso_local global i32 0, align 4
@JZ_MSC_DMA_SEGS = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@jz4780_mmc_dma_cb = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@MMC_DATA_WRITE = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@JZ_MODE_SEL = common dso_local global i32 0, align 4
@JZ_INCR_64 = common dso_local global i32 0, align 4
@JZ_DMAEN = common dso_local global i32 0, align 4
@JZ_AOFST_S = common dso_local global i32 0, align 4
@JZ_ALIGNEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jz4780_mmc_softc*)* @jz4780_mmc_prepare_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4780_mmc_prepare_dma(%struct.jz4780_mmc_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.jz4780_mmc_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mmc_command*, align 8
  %7 = alloca i32, align 4
  store %struct.jz4780_mmc_softc* %0, %struct.jz4780_mmc_softc** %3, align 8
  %8 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %3, align 8
  %9 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %8, i32 0, i32 7
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.mmc_command*, %struct.mmc_command** %11, align 8
  store %struct.mmc_command* %12, %struct.mmc_command** %6, align 8
  %13 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %14 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @JZ_MSC_DMA_MAX_SIZE, align 4
  %19 = load i32, i32* @JZ_MSC_DMA_SEGS, align 4
  %20 = mul nsw i32 %18, %19
  %21 = icmp sgt i32 %17, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* @EFBIG, align 4
  store i32 %23, i32* %2, align 4
  br label %117

24:                                               ; preds = %1
  %25 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %3, align 8
  %26 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %3, align 8
  %29 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %32 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %37 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @jz4780_mmc_dma_cb, align 4
  %42 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %3, align 8
  %43 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %44 = call i32 @bus_dmamap_load(i32 %27, i32 %30, i64 %35, i32 %40, i32 %41, %struct.jz4780_mmc_softc* %42, i32 %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %24
  %48 = load i32, i32* %5, align 4
  store i32 %48, i32* %2, align 4
  br label %117

49:                                               ; preds = %24
  %50 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %3, align 8
  %51 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %3, align 8
  %56 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %2, align 4
  br label %117

58:                                               ; preds = %49
  %59 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %3, align 8
  %60 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %59, i32 0, i32 1
  store i32 1, i32* %60, align 4
  %61 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %62 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @MMC_DATA_WRITE, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %58
  %70 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  store i32 %70, i32* %4, align 4
  br label %73

71:                                               ; preds = %58
  %72 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %71, %69
  %74 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %3, align 8
  %75 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %3, align 8
  %78 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %4, align 4
  %81 = call i32 @bus_dmamap_sync(i32 %76, i32 %79, i32 %80)
  %82 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %3, align 8
  %83 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %3, align 8
  %86 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %89 = call i32 @bus_dmamap_sync(i32 %84, i32 %87, i32 %88)
  %90 = load i32, i32* @JZ_MODE_SEL, align 4
  %91 = load i32, i32* @JZ_INCR_64, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @JZ_DMAEN, align 4
  %94 = or i32 %92, %93
  %95 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %3, align 8
  %96 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 8
  %97 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %98 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %97, i32 0, i32 0
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = and i64 %101, 3
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %7, align 4
  %104 = load i32, i32* %7, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %116

106:                                              ; preds = %73
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* @JZ_AOFST_S, align 4
  %109 = shl i32 %107, %108
  %110 = load i32, i32* @JZ_ALIGNEN, align 4
  %111 = or i32 %109, %110
  %112 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %3, align 8
  %113 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 8
  br label %116

116:                                              ; preds = %106, %73
  store i32 0, i32* %2, align 4
  br label %117

117:                                              ; preds = %116, %54, %47, %22
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local i32 @bus_dmamap_load(i32, i32, i64, i32, i32, %struct.jz4780_mmc_softc*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
