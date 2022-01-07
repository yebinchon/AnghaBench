; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_ata_kauai.c_ata_kauai_setmode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_ata_kauai.c_ata_kauai_setmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_kauai_softc = type { i32*, i32*, i32*, i64 }

@ATA_UDMA6 = common dso_local global i32 0, align 4
@ATA_UDMA5 = common dso_local global i32 0, align 4
@ATA_DMA_MASK = common dso_local global i32 0, align 4
@udma_timing_shasta = common dso_local global i32* null, align 8
@ATA_MODE_MASK = common dso_local global i32 0, align 4
@dma_timing_shasta = common dso_local global i32* null, align 8
@pio_timing_shasta = common dso_local global i32* null, align 8
@ATA_PIO0 = common dso_local global i32 0, align 4
@udma_timing_kauai = common dso_local global i32* null, align 8
@dma_timing_kauai = common dso_local global i32* null, align 8
@pio_timing_kauai = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ata_kauai_setmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_kauai_setmode(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ata_kauai_softc*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.ata_kauai_softc* @device_get_softc(i32 %8)
  store %struct.ata_kauai_softc* %9, %struct.ata_kauai_softc** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.ata_kauai_softc*, %struct.ata_kauai_softc** %7, align 8
  %12 = getelementptr inbounds %struct.ata_kauai_softc, %struct.ata_kauai_softc* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @ATA_UDMA6, align 4
  br label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @ATA_UDMA5, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  %21 = call i32 @min(i32 %10, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.ata_kauai_softc*, %struct.ata_kauai_softc** %7, align 8
  %23 = getelementptr inbounds %struct.ata_kauai_softc, %struct.ata_kauai_softc* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %81

26:                                               ; preds = %19
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @ATA_DMA_MASK, align 4
  %29 = and i32 %27, %28
  switch i32 %29, label %64 [
    i32 129, label %30
    i32 128, label %44
  ]

30:                                               ; preds = %26
  %31 = load i32*, i32** @udma_timing_shasta, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @ATA_MODE_MASK, align 4
  %34 = and i32 %32, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %31, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ata_kauai_softc*, %struct.ata_kauai_softc** %7, align 8
  %39 = getelementptr inbounds %struct.ata_kauai_softc, %struct.ata_kauai_softc* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  store i32 %37, i32* %43, align 4
  br label %80

44:                                               ; preds = %26
  %45 = load %struct.ata_kauai_softc*, %struct.ata_kauai_softc** %7, align 8
  %46 = getelementptr inbounds %struct.ata_kauai_softc, %struct.ata_kauai_softc* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32 0, i32* %50, align 4
  %51 = load i32*, i32** @dma_timing_shasta, align 8
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @ATA_MODE_MASK, align 4
  %54 = and i32 %52, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %51, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ata_kauai_softc*, %struct.ata_kauai_softc** %7, align 8
  %59 = getelementptr inbounds %struct.ata_kauai_softc, %struct.ata_kauai_softc* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32 %57, i32* %63, align 4
  br label %80

64:                                               ; preds = %26
  %65 = load i32*, i32** @pio_timing_shasta, align 8
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @ATA_MODE_MASK, align 4
  %68 = and i32 %66, %67
  %69 = load i32, i32* @ATA_PIO0, align 4
  %70 = sub nsw i32 %68, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %65, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.ata_kauai_softc*, %struct.ata_kauai_softc** %7, align 8
  %75 = getelementptr inbounds %struct.ata_kauai_softc, %struct.ata_kauai_softc* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32 %73, i32* %79, align 4
  br label %80

80:                                               ; preds = %64, %44, %30
  br label %136

81:                                               ; preds = %19
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @ATA_DMA_MASK, align 4
  %84 = and i32 %82, %83
  switch i32 %84, label %119 [
    i32 129, label %85
    i32 128, label %99
  ]

85:                                               ; preds = %81
  %86 = load i32*, i32** @udma_timing_kauai, align 8
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @ATA_MODE_MASK, align 4
  %89 = and i32 %87, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %86, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.ata_kauai_softc*, %struct.ata_kauai_softc** %7, align 8
  %94 = getelementptr inbounds %struct.ata_kauai_softc, %struct.ata_kauai_softc* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %5, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  store i32 %92, i32* %98, align 4
  br label %135

99:                                               ; preds = %81
  %100 = load %struct.ata_kauai_softc*, %struct.ata_kauai_softc** %7, align 8
  %101 = getelementptr inbounds %struct.ata_kauai_softc, %struct.ata_kauai_softc* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %5, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  store i32 0, i32* %105, align 4
  %106 = load i32*, i32** @dma_timing_kauai, align 8
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @ATA_MODE_MASK, align 4
  %109 = and i32 %107, %108
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %106, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.ata_kauai_softc*, %struct.ata_kauai_softc** %7, align 8
  %114 = getelementptr inbounds %struct.ata_kauai_softc, %struct.ata_kauai_softc* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %5, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  store i32 %112, i32* %118, align 4
  br label %135

119:                                              ; preds = %81
  %120 = load i32*, i32** @pio_timing_kauai, align 8
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* @ATA_MODE_MASK, align 4
  %123 = and i32 %121, %122
  %124 = load i32, i32* @ATA_PIO0, align 4
  %125 = sub nsw i32 %123, %124
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %120, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.ata_kauai_softc*, %struct.ata_kauai_softc** %7, align 8
  %130 = getelementptr inbounds %struct.ata_kauai_softc, %struct.ata_kauai_softc* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %5, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  store i32 %128, i32* %134, align 4
  br label %135

135:                                              ; preds = %119, %99, %85
  br label %136

136:                                              ; preds = %135, %80
  %137 = load i32, i32* %6, align 4
  ret i32 %137
}

declare dso_local %struct.ata_kauai_softc* @device_get_softc(i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
