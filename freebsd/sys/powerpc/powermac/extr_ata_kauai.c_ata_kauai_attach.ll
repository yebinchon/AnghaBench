; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_ata_kauai.c_ata_kauai_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_ata_kauai.c_ata_kauai_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_kauai_softc = type { i32*, %struct.TYPE_6__, i32*, i64*, i64* }
%struct.TYPE_6__ = type { i32, %struct.ata_channel, i32, i32* }
%struct.ata_channel = type { %struct.TYPE_5__, i32, i64, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64, i32* }

@PCIR_BARS = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"could not allocate memory\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@ATA_DATA = common dso_local global i32 0, align 4
@ATA_COMMAND = common dso_local global i32 0, align 4
@ATA_KAUAI_REGGAP = common dso_local global i32 0, align 4
@ATA_KAUAI_REGOFFSET = common dso_local global i64 0, align 8
@ATA_CONTROL = common dso_local global i64 0, align 8
@ATA_KAUAI_ALTOFFSET = common dso_local global i64 0, align 8
@ATA_USE_16BIT = common dso_local global i32 0, align 4
@ATA_NO_ATAPI_DMA = common dso_local global i32 0, align 4
@ATA_KAUAI_DBDMAOFFSET = common dso_local global i32 0, align 4
@PIO_CONFIG_REG = common dso_local global i32 0, align 4
@ata_kauai_begin_transaction = common dso_local global i32 0, align 4
@ATA_INTR_FLAGS = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@ata_kauai_dma_interrupt = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ata_kauai_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_kauai_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_kauai_softc*, align 8
  %5 = alloca %struct.ata_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.ata_kauai_softc* @device_get_softc(i32 %8)
  store %struct.ata_kauai_softc* %9, %struct.ata_kauai_softc** %4, align 8
  %10 = load %struct.ata_kauai_softc*, %struct.ata_kauai_softc** %4, align 8
  %11 = getelementptr inbounds %struct.ata_kauai_softc, %struct.ata_kauai_softc* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  store %struct.ata_channel* %12, %struct.ata_channel** %5, align 8
  %13 = load i32, i32* @PCIR_BARS, align 4
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @SYS_RES_MEMORY, align 4
  %16 = load i32, i32* @RF_ACTIVE, align 4
  %17 = call i8* @bus_alloc_resource_any(i32 %14, i32 %15, i32* %7, i32 %16)
  %18 = bitcast i8* %17 to i32*
  %19 = load %struct.ata_kauai_softc*, %struct.ata_kauai_softc** %4, align 8
  %20 = getelementptr inbounds %struct.ata_kauai_softc, %struct.ata_kauai_softc* %19, i32 0, i32 2
  store i32* %18, i32** %20, align 8
  %21 = load %struct.ata_kauai_softc*, %struct.ata_kauai_softc** %4, align 8
  %22 = getelementptr inbounds %struct.ata_kauai_softc, %struct.ata_kauai_softc* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @device_printf(i32 %26, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ENXIO, align 4
  store i32 %28, i32* %2, align 4
  br label %154

29:                                               ; preds = %1
  %30 = load i32, i32* @ATA_DATA, align 4
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %59, %29
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @ATA_COMMAND, align 4
  %34 = icmp sle i32 %32, %33
  br i1 %34, label %35, label %62

35:                                               ; preds = %31
  %36 = load %struct.ata_kauai_softc*, %struct.ata_kauai_softc** %4, align 8
  %37 = getelementptr inbounds %struct.ata_kauai_softc, %struct.ata_kauai_softc* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %40 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %39, i32 0, i32 3
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  store i32* %38, i32** %45, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @ATA_KAUAI_REGGAP, align 4
  %48 = mul nsw i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* @ATA_KAUAI_REGOFFSET, align 8
  %51 = add nsw i64 %49, %50
  %52 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %53 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %52, i32 0, i32 3
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  store i64 %51, i64* %58, align 8
  br label %59

59:                                               ; preds = %35
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %31

62:                                               ; preds = %31
  %63 = load %struct.ata_kauai_softc*, %struct.ata_kauai_softc** %4, align 8
  %64 = getelementptr inbounds %struct.ata_kauai_softc, %struct.ata_kauai_softc* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %67 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %66, i32 0, i32 3
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = load i64, i64* @ATA_CONTROL, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  store i32* %65, i32** %71, align 8
  %72 = load i64, i64* @ATA_KAUAI_ALTOFFSET, align 8
  %73 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %74 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %73, i32 0, i32 3
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = load i64, i64* @ATA_CONTROL, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  store i64 %72, i64* %78, align 8
  %79 = load i32, i32* %3, align 4
  %80 = call i32 @ata_default_registers(i32 %79)
  %81 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %82 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %81, i32 0, i32 2
  store i64 0, i64* %82, align 8
  %83 = load i32, i32* @ATA_USE_16BIT, align 4
  %84 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %85 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 4
  %88 = load i32, i32* @ATA_NO_ATAPI_DMA, align 4
  %89 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %90 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 4
  %93 = load i32, i32* %3, align 4
  %94 = call i32 @ata_generic_hw(i32 %93)
  %95 = load i32, i32* %3, align 4
  %96 = call i32 @pci_enable_busmaster(i32 %95)
  %97 = load %struct.ata_kauai_softc*, %struct.ata_kauai_softc** %4, align 8
  %98 = getelementptr inbounds %struct.ata_kauai_softc, %struct.ata_kauai_softc* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  store i32 1, i32* %99, align 8
  %100 = load %struct.ata_kauai_softc*, %struct.ata_kauai_softc** %4, align 8
  %101 = getelementptr inbounds %struct.ata_kauai_softc, %struct.ata_kauai_softc* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.ata_kauai_softc*, %struct.ata_kauai_softc** %4, align 8
  %104 = getelementptr inbounds %struct.ata_kauai_softc, %struct.ata_kauai_softc* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 3
  store i32* %102, i32** %105, align 8
  %106 = load i32, i32* @ATA_KAUAI_DBDMAOFFSET, align 4
  %107 = load %struct.ata_kauai_softc*, %struct.ata_kauai_softc** %4, align 8
  %108 = getelementptr inbounds %struct.ata_kauai_softc, %struct.ata_kauai_softc* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 2
  store i32 %106, i32* %109, align 8
  %110 = load i32, i32* %3, align 4
  %111 = call i32 @ata_dbdma_dmainit(i32 %110)
  %112 = load %struct.ata_kauai_softc*, %struct.ata_kauai_softc** %4, align 8
  %113 = getelementptr inbounds %struct.ata_kauai_softc, %struct.ata_kauai_softc* %112, i32 0, i32 2
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* @PIO_CONFIG_REG, align 4
  %116 = call i32 @bus_read_4(i32* %114, i32 %115)
  %117 = and i32 %116, 251662335
  %118 = load %struct.ata_kauai_softc*, %struct.ata_kauai_softc** %4, align 8
  %119 = getelementptr inbounds %struct.ata_kauai_softc, %struct.ata_kauai_softc* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 1
  store i32 %117, i32* %121, align 4
  %122 = load %struct.ata_kauai_softc*, %struct.ata_kauai_softc** %4, align 8
  %123 = getelementptr inbounds %struct.ata_kauai_softc, %struct.ata_kauai_softc* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 0
  store i32 %117, i32* %125, align 4
  %126 = load %struct.ata_kauai_softc*, %struct.ata_kauai_softc** %4, align 8
  %127 = getelementptr inbounds %struct.ata_kauai_softc, %struct.ata_kauai_softc* %126, i32 0, i32 4
  %128 = load i64*, i64** %127, align 8
  %129 = getelementptr inbounds i64, i64* %128, i64 1
  store i64 0, i64* %129, align 8
  %130 = load %struct.ata_kauai_softc*, %struct.ata_kauai_softc** %4, align 8
  %131 = getelementptr inbounds %struct.ata_kauai_softc, %struct.ata_kauai_softc* %130, i32 0, i32 4
  %132 = load i64*, i64** %131, align 8
  %133 = getelementptr inbounds i64, i64* %132, i64 0
  store i64 0, i64* %133, align 8
  %134 = load %struct.ata_kauai_softc*, %struct.ata_kauai_softc** %4, align 8
  %135 = getelementptr inbounds %struct.ata_kauai_softc, %struct.ata_kauai_softc* %134, i32 0, i32 3
  %136 = load i64*, i64** %135, align 8
  %137 = getelementptr inbounds i64, i64* %136, i64 1
  store i64 0, i64* %137, align 8
  %138 = load %struct.ata_kauai_softc*, %struct.ata_kauai_softc** %4, align 8
  %139 = getelementptr inbounds %struct.ata_kauai_softc, %struct.ata_kauai_softc* %138, i32 0, i32 3
  %140 = load i64*, i64** %139, align 8
  %141 = getelementptr inbounds i64, i64* %140, i64 0
  store i64 0, i64* %141, align 8
  %142 = load %struct.ata_kauai_softc*, %struct.ata_kauai_softc** %4, align 8
  %143 = getelementptr inbounds %struct.ata_kauai_softc, %struct.ata_kauai_softc* %142, i32 0, i32 2
  %144 = load i32*, i32** %143, align 8
  %145 = call i32 @bus_write_4(i32* %144, i32 0, i32 7)
  %146 = load i32, i32* @ata_kauai_begin_transaction, align 4
  %147 = load %struct.ata_kauai_softc*, %struct.ata_kauai_softc** %4, align 8
  %148 = getelementptr inbounds %struct.ata_kauai_softc, %struct.ata_kauai_softc* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 0
  store i32 %146, i32* %151, align 8
  %152 = load i32, i32* %3, align 4
  %153 = call i32 @ata_attach(i32 %152)
  store i32 %153, i32* %2, align 4
  br label %154

154:                                              ; preds = %62, %25
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

declare dso_local %struct.ata_kauai_softc* @device_get_softc(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @ata_default_registers(i32) #1

declare dso_local i32 @ata_generic_hw(i32) #1

declare dso_local i32 @pci_enable_busmaster(i32) #1

declare dso_local i32 @ata_dbdma_dmainit(i32) #1

declare dso_local i32 @bus_read_4(i32*, i32) #1

declare dso_local i32 @bus_write_4(i32*, i32, i32) #1

declare dso_local i32 @ata_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
