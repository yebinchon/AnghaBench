; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2560.c_rt2560_alloc_tx_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2560.c_rt2560_alloc_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2560_softc = type { i32 }
%struct.rt2560_tx_ring = type { i32, %struct.TYPE_2__*, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@RT2560_TX_DESC_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"could not create desc DMA tag\0A\00", align 1
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@BUS_DMA_ZERO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"could not allocate DMA memory\0A\00", align 1
@rt2560_dma_map_addr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"could not load desc DMA map\0A\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"could not allocate soft data\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i32 0, align 4
@RT2560_MAX_SCATTER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"could not create data DMA tag\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"could not create DMA map\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2560_softc*, %struct.rt2560_tx_ring*, i32)* @rt2560_alloc_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2560_alloc_tx_ring(%struct.rt2560_softc* %0, %struct.rt2560_tx_ring* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rt2560_softc*, align 8
  %6 = alloca %struct.rt2560_tx_ring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rt2560_softc* %0, %struct.rt2560_softc** %5, align 8
  store %struct.rt2560_tx_ring* %1, %struct.rt2560_tx_ring** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.rt2560_tx_ring*, %struct.rt2560_tx_ring** %6, align 8
  %12 = getelementptr inbounds %struct.rt2560_tx_ring, %struct.rt2560_tx_ring* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.rt2560_tx_ring*, %struct.rt2560_tx_ring** %6, align 8
  %14 = getelementptr inbounds %struct.rt2560_tx_ring, %struct.rt2560_tx_ring* %13, i32 0, i32 11
  store i64 0, i64* %14, align 8
  %15 = load %struct.rt2560_tx_ring*, %struct.rt2560_tx_ring** %6, align 8
  %16 = getelementptr inbounds %struct.rt2560_tx_ring, %struct.rt2560_tx_ring* %15, i32 0, i32 9
  store i64 0, i64* %16, align 8
  %17 = load %struct.rt2560_tx_ring*, %struct.rt2560_tx_ring** %6, align 8
  %18 = getelementptr inbounds %struct.rt2560_tx_ring, %struct.rt2560_tx_ring* %17, i32 0, i32 10
  store i64 0, i64* %18, align 8
  %19 = load %struct.rt2560_tx_ring*, %struct.rt2560_tx_ring** %6, align 8
  %20 = getelementptr inbounds %struct.rt2560_tx_ring, %struct.rt2560_tx_ring* %19, i32 0, i32 7
  store i64 0, i64* %20, align 8
  %21 = load %struct.rt2560_tx_ring*, %struct.rt2560_tx_ring** %6, align 8
  %22 = getelementptr inbounds %struct.rt2560_tx_ring, %struct.rt2560_tx_ring* %21, i32 0, i32 8
  store i64 0, i64* %22, align 8
  %23 = load %struct.rt2560_softc*, %struct.rt2560_softc** %5, align 8
  %24 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @bus_get_dma_tag(i32 %25)
  %27 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %28 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @RT2560_TX_DESC_SIZE, align 4
  %31 = mul nsw i32 %29, %30
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @RT2560_TX_DESC_SIZE, align 4
  %34 = mul nsw i32 %32, %33
  %35 = load %struct.rt2560_tx_ring*, %struct.rt2560_tx_ring** %6, align 8
  %36 = getelementptr inbounds %struct.rt2560_tx_ring, %struct.rt2560_tx_ring* %35, i32 0, i32 6
  %37 = call i32 @bus_dma_tag_create(i32 %26, i32 4, i32 0, i32 %27, i32 %28, i32* null, i32* null, i32 %31, i32 1, i32 %34, i32 0, i32* null, i32* null, i32* %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %3
  %41 = load %struct.rt2560_softc*, %struct.rt2560_softc** %5, align 8
  %42 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @device_printf(i32 %43, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %160

45:                                               ; preds = %3
  %46 = load %struct.rt2560_tx_ring*, %struct.rt2560_tx_ring** %6, align 8
  %47 = getelementptr inbounds %struct.rt2560_tx_ring, %struct.rt2560_tx_ring* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.rt2560_tx_ring*, %struct.rt2560_tx_ring** %6, align 8
  %50 = getelementptr inbounds %struct.rt2560_tx_ring, %struct.rt2560_tx_ring* %49, i32 0, i32 4
  %51 = bitcast i32* %50 to i8**
  %52 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %53 = load i32, i32* @BUS_DMA_ZERO, align 4
  %54 = or i32 %52, %53
  %55 = load %struct.rt2560_tx_ring*, %struct.rt2560_tx_ring** %6, align 8
  %56 = getelementptr inbounds %struct.rt2560_tx_ring, %struct.rt2560_tx_ring* %55, i32 0, i32 5
  %57 = call i32 @bus_dmamem_alloc(i32 %48, i8** %51, i32 %54, i32* %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %45
  %61 = load %struct.rt2560_softc*, %struct.rt2560_softc** %5, align 8
  %62 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @device_printf(i32 %63, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %160

65:                                               ; preds = %45
  %66 = load %struct.rt2560_tx_ring*, %struct.rt2560_tx_ring** %6, align 8
  %67 = getelementptr inbounds %struct.rt2560_tx_ring, %struct.rt2560_tx_ring* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.rt2560_tx_ring*, %struct.rt2560_tx_ring** %6, align 8
  %70 = getelementptr inbounds %struct.rt2560_tx_ring, %struct.rt2560_tx_ring* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.rt2560_tx_ring*, %struct.rt2560_tx_ring** %6, align 8
  %73 = getelementptr inbounds %struct.rt2560_tx_ring, %struct.rt2560_tx_ring* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @RT2560_TX_DESC_SIZE, align 4
  %77 = mul nsw i32 %75, %76
  %78 = load i32, i32* @rt2560_dma_map_addr, align 4
  %79 = load %struct.rt2560_tx_ring*, %struct.rt2560_tx_ring** %6, align 8
  %80 = getelementptr inbounds %struct.rt2560_tx_ring, %struct.rt2560_tx_ring* %79, i32 0, i32 3
  %81 = call i32 @bus_dmamap_load(i32 %68, i32 %71, i32 %74, i32 %77, i32 %78, i32* %80, i32 0)
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %65
  %85 = load %struct.rt2560_softc*, %struct.rt2560_softc** %5, align 8
  %86 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @device_printf(i32 %87, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %160

89:                                               ; preds = %65
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = mul i64 %91, 4
  %93 = trunc i64 %92 to i32
  %94 = load i32, i32* @M_DEVBUF, align 4
  %95 = load i32, i32* @M_NOWAIT, align 4
  %96 = load i32, i32* @M_ZERO, align 4
  %97 = or i32 %95, %96
  %98 = call %struct.TYPE_2__* @malloc(i32 %93, i32 %94, i32 %97)
  %99 = load %struct.rt2560_tx_ring*, %struct.rt2560_tx_ring** %6, align 8
  %100 = getelementptr inbounds %struct.rt2560_tx_ring, %struct.rt2560_tx_ring* %99, i32 0, i32 1
  store %struct.TYPE_2__* %98, %struct.TYPE_2__** %100, align 8
  %101 = load %struct.rt2560_tx_ring*, %struct.rt2560_tx_ring** %6, align 8
  %102 = getelementptr inbounds %struct.rt2560_tx_ring, %struct.rt2560_tx_ring* %101, i32 0, i32 1
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = icmp eq %struct.TYPE_2__* %103, null
  br i1 %104, label %105, label %111

105:                                              ; preds = %89
  %106 = load %struct.rt2560_softc*, %struct.rt2560_softc** %5, align 8
  %107 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @device_printf(i32 %108, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %110 = load i32, i32* @ENOMEM, align 4
  store i32 %110, i32* %9, align 4
  br label %160

111:                                              ; preds = %89
  %112 = load %struct.rt2560_softc*, %struct.rt2560_softc** %5, align 8
  %113 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @bus_get_dma_tag(i32 %114)
  %116 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %117 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %118 = load i32, i32* @MCLBYTES, align 4
  %119 = load i32, i32* @RT2560_MAX_SCATTER, align 4
  %120 = load i32, i32* @MCLBYTES, align 4
  %121 = load %struct.rt2560_tx_ring*, %struct.rt2560_tx_ring** %6, align 8
  %122 = getelementptr inbounds %struct.rt2560_tx_ring, %struct.rt2560_tx_ring* %121, i32 0, i32 2
  %123 = call i32 @bus_dma_tag_create(i32 %115, i32 1, i32 0, i32 %116, i32 %117, i32* null, i32* null, i32 %118, i32 %119, i32 %120, i32 0, i32* null, i32* null, i32* %122)
  store i32 %123, i32* %9, align 4
  %124 = load i32, i32* %9, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %111
  %127 = load %struct.rt2560_softc*, %struct.rt2560_softc** %5, align 8
  %128 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @device_printf(i32 %129, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %160

131:                                              ; preds = %111
  store i32 0, i32* %8, align 4
  br label %132

132:                                              ; preds = %156, %131
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* %7, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %159

136:                                              ; preds = %132
  %137 = load %struct.rt2560_tx_ring*, %struct.rt2560_tx_ring** %6, align 8
  %138 = getelementptr inbounds %struct.rt2560_tx_ring, %struct.rt2560_tx_ring* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.rt2560_tx_ring*, %struct.rt2560_tx_ring** %6, align 8
  %141 = getelementptr inbounds %struct.rt2560_tx_ring, %struct.rt2560_tx_ring* %140, i32 0, i32 1
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %141, align 8
  %143 = load i32, i32* %8, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  %147 = call i32 @bus_dmamap_create(i32 %139, i32 0, i32* %146)
  store i32 %147, i32* %9, align 4
  %148 = load i32, i32* %9, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %136
  %151 = load %struct.rt2560_softc*, %struct.rt2560_softc** %5, align 8
  %152 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @device_printf(i32 %153, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %160

155:                                              ; preds = %136
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %8, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %8, align 4
  br label %132

159:                                              ; preds = %132
  store i32 0, i32* %4, align 4
  br label %165

160:                                              ; preds = %150, %126, %105, %84, %60, %40
  %161 = load %struct.rt2560_softc*, %struct.rt2560_softc** %5, align 8
  %162 = load %struct.rt2560_tx_ring*, %struct.rt2560_tx_ring** %6, align 8
  %163 = call i32 @rt2560_free_tx_ring(%struct.rt2560_softc* %161, %struct.rt2560_tx_ring* %162)
  %164 = load i32, i32* %9, align 4
  store i32 %164, i32* %4, align 4
  br label %165

165:                                              ; preds = %160, %159
  %166 = load i32, i32* %4, align 4
  ret i32 %166
}

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local %struct.TYPE_2__* @malloc(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32*) #1

declare dso_local i32 @rt2560_free_tx_ring(%struct.rt2560_softc*, %struct.rt2560_tx_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
