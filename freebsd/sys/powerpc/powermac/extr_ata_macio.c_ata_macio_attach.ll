; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_ata_macio.c_ata_macio_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_ata_macio.c_ata_macio_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_macio_softc = type { i32, i32*, i32*, i32*, %struct.TYPE_6__, i32* }
%struct.TYPE_6__ = type { i32, %struct.ata_channel, i8* }
%struct.ata_channel = type { i32, %struct.TYPE_5__, i64, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32* }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"could not allocate memory\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@ATA_DATA = common dso_local global i32 0, align 4
@ATA_COMMAND = common dso_local global i32 0, align 4
@ATA_MACIO_REGGAP = common dso_local global i32 0, align 4
@ATA_CONTROL = common dso_local global i64 0, align 8
@ATA_MACIO_ALTOFFSET = common dso_local global i32 0, align 4
@ATA_USE_16BIT = common dso_local global i32 0, align 4
@ATA_NO_ATAPI_DMA = common dso_local global i32 0, align 4
@ATA_MACIO_TIMINGREG = common dso_local global i32 0, align 4
@ata_macio_begin_transaction = common dso_local global i32 0, align 4
@ATA_INTR_FLAGS = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@ata_interrupt = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ata_macio_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_macio_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_macio_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ata_channel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.ata_macio_softc* @device_get_softc(i32 %9)
  store %struct.ata_macio_softc* %10, %struct.ata_macio_softc** %4, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.ata_macio_softc*, %struct.ata_macio_softc** %4, align 8
  %12 = getelementptr inbounds %struct.ata_macio_softc, %struct.ata_macio_softc* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  store %struct.ata_channel* %13, %struct.ata_channel** %6, align 8
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @SYS_RES_MEMORY, align 4
  %16 = load i32, i32* @RF_ACTIVE, align 4
  %17 = call i8* @bus_alloc_resource_any(i32 %14, i32 %15, i32* %7, i32 %16)
  %18 = bitcast i8* %17 to i32*
  %19 = load %struct.ata_macio_softc*, %struct.ata_macio_softc** %4, align 8
  %20 = getelementptr inbounds %struct.ata_macio_softc, %struct.ata_macio_softc* %19, i32 0, i32 5
  store i32* %18, i32** %20, align 8
  %21 = load %struct.ata_macio_softc*, %struct.ata_macio_softc** %4, align 8
  %22 = getelementptr inbounds %struct.ata_macio_softc, %struct.ata_macio_softc* %21, i32 0, i32 5
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @device_printf(i32 %26, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ENXIO, align 4
  store i32 %28, i32* %2, align 4
  br label %182

29:                                               ; preds = %1
  %30 = load i32, i32* @ATA_DATA, align 4
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %56, %29
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @ATA_COMMAND, align 4
  %34 = icmp sle i32 %32, %33
  br i1 %34, label %35, label %59

35:                                               ; preds = %31
  %36 = load %struct.ata_macio_softc*, %struct.ata_macio_softc** %4, align 8
  %37 = getelementptr inbounds %struct.ata_macio_softc, %struct.ata_macio_softc* %36, i32 0, i32 5
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.ata_channel*, %struct.ata_channel** %6, align 8
  %40 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %39, i32 0, i32 3
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  store i32* %38, i32** %45, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @ATA_MACIO_REGGAP, align 4
  %48 = mul nsw i32 %46, %47
  %49 = load %struct.ata_channel*, %struct.ata_channel** %6, align 8
  %50 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %49, i32 0, i32 3
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i32 %48, i32* %55, align 8
  br label %56

56:                                               ; preds = %35
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %31

59:                                               ; preds = %31
  %60 = load %struct.ata_macio_softc*, %struct.ata_macio_softc** %4, align 8
  %61 = getelementptr inbounds %struct.ata_macio_softc, %struct.ata_macio_softc* %60, i32 0, i32 5
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.ata_channel*, %struct.ata_channel** %6, align 8
  %64 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %63, i32 0, i32 3
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = load i64, i64* @ATA_CONTROL, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  store i32* %62, i32** %68, align 8
  %69 = load i32, i32* @ATA_MACIO_ALTOFFSET, align 4
  %70 = load %struct.ata_channel*, %struct.ata_channel** %6, align 8
  %71 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %70, i32 0, i32 3
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = load i64, i64* @ATA_CONTROL, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  store i32 %69, i32* %75, align 8
  %76 = load i32, i32* %3, align 4
  %77 = call i32 @ata_default_registers(i32 %76)
  %78 = load %struct.ata_channel*, %struct.ata_channel** %6, align 8
  %79 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %78, i32 0, i32 2
  store i64 0, i64* %79, align 8
  %80 = load i32, i32* @ATA_USE_16BIT, align 4
  %81 = load i32, i32* @ATA_NO_ATAPI_DMA, align 4
  %82 = or i32 %80, %81
  %83 = load %struct.ata_channel*, %struct.ata_channel** %6, align 8
  %84 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 8
  %87 = load i32, i32* %3, align 4
  %88 = call i32 @ata_generic_hw(i32 %87)
  %89 = load %struct.ata_macio_softc*, %struct.ata_macio_softc** %4, align 8
  %90 = getelementptr inbounds %struct.ata_macio_softc, %struct.ata_macio_softc* %89, i32 0, i32 4
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  store i32 1, i32* %91, align 8
  %92 = load i32, i32* %3, align 4
  %93 = load i32, i32* @SYS_RES_MEMORY, align 4
  %94 = load %struct.ata_macio_softc*, %struct.ata_macio_softc** %4, align 8
  %95 = getelementptr inbounds %struct.ata_macio_softc, %struct.ata_macio_softc* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32, i32* @RF_ACTIVE, align 4
  %98 = call i8* @bus_alloc_resource_any(i32 %92, i32 %93, i32* %96, i32 %97)
  %99 = load %struct.ata_macio_softc*, %struct.ata_macio_softc** %4, align 8
  %100 = getelementptr inbounds %struct.ata_macio_softc, %struct.ata_macio_softc* %99, i32 0, i32 4
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 2
  store i8* %98, i8** %101, align 8
  %102 = load i32, i32* %3, align 4
  %103 = call i32 @ata_dbdma_dmainit(i32 %102)
  %104 = load %struct.ata_macio_softc*, %struct.ata_macio_softc** %4, align 8
  %105 = getelementptr inbounds %struct.ata_macio_softc, %struct.ata_macio_softc* %104, i32 0, i32 5
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* @ATA_MACIO_TIMINGREG, align 4
  %108 = call i32 @bus_read_4(i32* %106, i32 %107)
  store i32 %108, i32* %5, align 4
  %109 = load %struct.ata_macio_softc*, %struct.ata_macio_softc** %4, align 8
  %110 = getelementptr inbounds %struct.ata_macio_softc, %struct.ata_macio_softc* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp eq i32 %111, 4
  br i1 %112, label %113, label %144

113:                                              ; preds = %59
  %114 = load i32, i32* %5, align 4
  %115 = and i32 %114, 535822336
  %116 = load %struct.ata_macio_softc*, %struct.ata_macio_softc** %4, align 8
  %117 = getelementptr inbounds %struct.ata_macio_softc, %struct.ata_macio_softc* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 1
  store i32 %115, i32* %119, align 4
  %120 = load %struct.ata_macio_softc*, %struct.ata_macio_softc** %4, align 8
  %121 = getelementptr inbounds %struct.ata_macio_softc, %struct.ata_macio_softc* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 0
  store i32 %115, i32* %123, align 4
  %124 = load i32, i32* %5, align 4
  %125 = and i32 %124, 2096128
  %126 = load %struct.ata_macio_softc*, %struct.ata_macio_softc** %4, align 8
  %127 = getelementptr inbounds %struct.ata_macio_softc, %struct.ata_macio_softc* %126, i32 0, i32 2
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 1
  store i32 %125, i32* %129, align 4
  %130 = load %struct.ata_macio_softc*, %struct.ata_macio_softc** %4, align 8
  %131 = getelementptr inbounds %struct.ata_macio_softc, %struct.ata_macio_softc* %130, i32 0, i32 2
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  store i32 %125, i32* %133, align 4
  %134 = load i32, i32* %5, align 4
  %135 = and i32 %134, 1023
  %136 = load %struct.ata_macio_softc*, %struct.ata_macio_softc** %4, align 8
  %137 = getelementptr inbounds %struct.ata_macio_softc, %struct.ata_macio_softc* %136, i32 0, i32 3
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 1
  store i32 %135, i32* %139, align 4
  %140 = load %struct.ata_macio_softc*, %struct.ata_macio_softc** %4, align 8
  %141 = getelementptr inbounds %struct.ata_macio_softc, %struct.ata_macio_softc* %140, i32 0, i32 3
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 0
  store i32 %135, i32* %143, align 4
  br label %173

144:                                              ; preds = %59
  %145 = load %struct.ata_macio_softc*, %struct.ata_macio_softc** %4, align 8
  %146 = getelementptr inbounds %struct.ata_macio_softc, %struct.ata_macio_softc* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 1
  store i32 0, i32* %148, align 4
  %149 = load %struct.ata_macio_softc*, %struct.ata_macio_softc** %4, align 8
  %150 = getelementptr inbounds %struct.ata_macio_softc, %struct.ata_macio_softc* %149, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 0
  store i32 0, i32* %152, align 4
  %153 = load i32, i32* %5, align 4
  %154 = and i32 %153, -2048
  %155 = load %struct.ata_macio_softc*, %struct.ata_macio_softc** %4, align 8
  %156 = getelementptr inbounds %struct.ata_macio_softc, %struct.ata_macio_softc* %155, i32 0, i32 2
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 1
  store i32 %154, i32* %158, align 4
  %159 = load %struct.ata_macio_softc*, %struct.ata_macio_softc** %4, align 8
  %160 = getelementptr inbounds %struct.ata_macio_softc, %struct.ata_macio_softc* %159, i32 0, i32 2
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 0
  store i32 %154, i32* %162, align 4
  %163 = load i32, i32* %5, align 4
  %164 = and i32 %163, 2047
  %165 = load %struct.ata_macio_softc*, %struct.ata_macio_softc** %4, align 8
  %166 = getelementptr inbounds %struct.ata_macio_softc, %struct.ata_macio_softc* %165, i32 0, i32 3
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 1
  store i32 %164, i32* %168, align 4
  %169 = load %struct.ata_macio_softc*, %struct.ata_macio_softc** %4, align 8
  %170 = getelementptr inbounds %struct.ata_macio_softc, %struct.ata_macio_softc* %169, i32 0, i32 3
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 0
  store i32 %164, i32* %172, align 4
  br label %173

173:                                              ; preds = %144, %113
  %174 = load i32, i32* @ata_macio_begin_transaction, align 4
  %175 = load %struct.ata_macio_softc*, %struct.ata_macio_softc** %4, align 8
  %176 = getelementptr inbounds %struct.ata_macio_softc, %struct.ata_macio_softc* %175, i32 0, i32 4
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 0
  store i32 %174, i32* %179, align 4
  %180 = load i32, i32* %3, align 4
  %181 = call i32 @ata_attach(i32 %180)
  store i32 %181, i32* %2, align 4
  br label %182

182:                                              ; preds = %173, %25
  %183 = load i32, i32* %2, align 4
  ret i32 %183
}

declare dso_local %struct.ata_macio_softc* @device_get_softc(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @ata_default_registers(i32) #1

declare dso_local i32 @ata_generic_hw(i32) #1

declare dso_local i32 @ata_dbdma_dmainit(i32) #1

declare dso_local i32 @bus_read_4(i32*, i32) #1

declare dso_local i32 @ata_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
