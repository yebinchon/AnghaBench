; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/esp/extr_esp_pci.c_esp_pci_dma_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/esp/extr_esp_pci.c_esp_pci_dma_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncr53c9x_softc = type { i32 }
%struct.esp_pci_softc = type { i64, i8**, i64*, i32, i32, i32 }

@DMA_CMD = common dso_local global i32 0, align 4
@DMACMD_IDLE = common dso_local global i64 0, align 8
@DMACMD_DIR = common dso_local global i64 0, align 8
@MDL_SEG_SIZE = common dso_local global i32 0, align 4
@DMA_STC = common dso_local global i32 0, align 4
@esp_pci_xfermap = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ncr53c9x_softc*, i8**, i64*, i32, i64*)* @esp_pci_dma_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esp_pci_dma_setup(%struct.ncr53c9x_softc* %0, i8** %1, i64* %2, i32 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ncr53c9x_softc*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca %struct.esp_pci_softc*, align 8
  %13 = alloca i32, align 4
  store %struct.ncr53c9x_softc* %0, %struct.ncr53c9x_softc** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i64* %2, i64** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  %14 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %7, align 8
  %15 = bitcast %struct.ncr53c9x_softc* %14 to %struct.esp_pci_softc*
  store %struct.esp_pci_softc* %15, %struct.esp_pci_softc** %12, align 8
  %16 = load %struct.esp_pci_softc*, %struct.esp_pci_softc** %12, align 8
  %17 = load i32, i32* @DMA_CMD, align 4
  %18 = load i64, i64* @DMACMD_IDLE, align 8
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i64, i64* @DMACMD_DIR, align 8
  br label %24

23:                                               ; preds = %5
  br label %24

24:                                               ; preds = %23, %21
  %25 = phi i64 [ %22, %21 ], [ 0, %23 ]
  %26 = or i64 %18, %25
  %27 = call i32 @WRITE_DMAREG(%struct.esp_pci_softc* %16, i32 %17, i64 %26)
  %28 = load i64*, i64** %11, align 8
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* @MDL_SEG_SIZE, align 4
  %31 = call i64 @ulmin(i64 %29, i32 %30)
  %32 = load %struct.esp_pci_softc*, %struct.esp_pci_softc** %12, align 8
  %33 = getelementptr inbounds %struct.esp_pci_softc, %struct.esp_pci_softc* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load i64*, i64** %11, align 8
  store i64 %31, i64* %34, align 8
  %35 = load i8**, i8*** %8, align 8
  %36 = load %struct.esp_pci_softc*, %struct.esp_pci_softc** %12, align 8
  %37 = getelementptr inbounds %struct.esp_pci_softc, %struct.esp_pci_softc* %36, i32 0, i32 1
  store i8** %35, i8*** %37, align 8
  %38 = load i64*, i64** %9, align 8
  %39 = load %struct.esp_pci_softc*, %struct.esp_pci_softc** %12, align 8
  %40 = getelementptr inbounds %struct.esp_pci_softc, %struct.esp_pci_softc* %39, i32 0, i32 2
  store i64* %38, i64** %40, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.esp_pci_softc*, %struct.esp_pci_softc** %12, align 8
  %43 = getelementptr inbounds %struct.esp_pci_softc, %struct.esp_pci_softc* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 8
  %44 = load i64*, i64** %11, align 8
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %24
  store i32 0, i32* %6, align 4
  br label %71

48:                                               ; preds = %24
  %49 = load %struct.esp_pci_softc*, %struct.esp_pci_softc** %12, align 8
  %50 = load i32, i32* @DMA_STC, align 4
  %51 = load i64*, i64** %11, align 8
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @WRITE_DMAREG(%struct.esp_pci_softc* %49, i32 %50, i64 %52)
  %54 = load %struct.esp_pci_softc*, %struct.esp_pci_softc** %12, align 8
  %55 = getelementptr inbounds %struct.esp_pci_softc, %struct.esp_pci_softc* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.esp_pci_softc*, %struct.esp_pci_softc** %12, align 8
  %58 = getelementptr inbounds %struct.esp_pci_softc, %struct.esp_pci_softc* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.esp_pci_softc*, %struct.esp_pci_softc** %12, align 8
  %61 = getelementptr inbounds %struct.esp_pci_softc, %struct.esp_pci_softc* %60, i32 0, i32 1
  %62 = load i8**, i8*** %61, align 8
  %63 = load i8*, i8** %62, align 8
  %64 = load i64*, i64** %11, align 8
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* @esp_pci_xfermap, align 4
  %67 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %7, align 8
  %68 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %69 = call i32 @bus_dmamap_load(i32 %56, i32 %59, i8* %63, i64 %65, i32 %66, %struct.ncr53c9x_softc* %67, i32 %68)
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %13, align 4
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %48, %47
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local i32 @WRITE_DMAREG(%struct.esp_pci_softc*, i32, i64) #1

declare dso_local i64 @ulmin(i64, i32) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i8*, i64, i32, %struct.ncr53c9x_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
