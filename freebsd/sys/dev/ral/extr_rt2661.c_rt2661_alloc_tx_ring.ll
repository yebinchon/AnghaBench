; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2661.c_rt2661_alloc_tx_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2661.c_rt2661_alloc_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2661_softc = type { i32 }
%struct.rt2661_tx_ring = type { i32, %struct.TYPE_2__*, i32, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@RT2661_TX_DESC_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"could not create desc DMA tag\0A\00", align 1
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@BUS_DMA_ZERO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"could not allocate DMA memory\0A\00", align 1
@rt2661_dma_map_addr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"could not load desc DMA map\0A\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"could not allocate soft data\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i32 0, align 4
@RT2661_MAX_SCATTER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"could not create data DMA tag\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"could not create DMA map\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2661_softc*, %struct.rt2661_tx_ring*, i32)* @rt2661_alloc_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2661_alloc_tx_ring(%struct.rt2661_softc* %0, %struct.rt2661_tx_ring* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rt2661_softc*, align 8
  %6 = alloca %struct.rt2661_tx_ring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rt2661_softc* %0, %struct.rt2661_softc** %5, align 8
  store %struct.rt2661_tx_ring* %1, %struct.rt2661_tx_ring** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.rt2661_tx_ring*, %struct.rt2661_tx_ring** %6, align 8
  %12 = getelementptr inbounds %struct.rt2661_tx_ring, %struct.rt2661_tx_ring* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.rt2661_tx_ring*, %struct.rt2661_tx_ring** %6, align 8
  %14 = getelementptr inbounds %struct.rt2661_tx_ring, %struct.rt2661_tx_ring* %13, i32 0, i32 10
  store i64 0, i64* %14, align 8
  %15 = load %struct.rt2661_tx_ring*, %struct.rt2661_tx_ring** %6, align 8
  %16 = getelementptr inbounds %struct.rt2661_tx_ring, %struct.rt2661_tx_ring* %15, i32 0, i32 7
  store i64 0, i64* %16, align 8
  %17 = load %struct.rt2661_tx_ring*, %struct.rt2661_tx_ring** %6, align 8
  %18 = getelementptr inbounds %struct.rt2661_tx_ring, %struct.rt2661_tx_ring* %17, i32 0, i32 8
  store i64 0, i64* %18, align 8
  %19 = load %struct.rt2661_tx_ring*, %struct.rt2661_tx_ring** %6, align 8
  %20 = getelementptr inbounds %struct.rt2661_tx_ring, %struct.rt2661_tx_ring* %19, i32 0, i32 9
  store i64 0, i64* %20, align 8
  %21 = load %struct.rt2661_softc*, %struct.rt2661_softc** %5, align 8
  %22 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @bus_get_dma_tag(i32 %23)
  %25 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %26 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @RT2661_TX_DESC_SIZE, align 4
  %29 = mul nsw i32 %27, %28
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @RT2661_TX_DESC_SIZE, align 4
  %32 = mul nsw i32 %30, %31
  %33 = load %struct.rt2661_tx_ring*, %struct.rt2661_tx_ring** %6, align 8
  %34 = getelementptr inbounds %struct.rt2661_tx_ring, %struct.rt2661_tx_ring* %33, i32 0, i32 6
  %35 = call i32 @bus_dma_tag_create(i32 %24, i32 4, i32 0, i32 %25, i32 %26, i32* null, i32* null, i32 %29, i32 1, i32 %32, i32 0, i32* null, i32* null, i32* %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %3
  %39 = load %struct.rt2661_softc*, %struct.rt2661_softc** %5, align 8
  %40 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @device_printf(i32 %41, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %158

43:                                               ; preds = %3
  %44 = load %struct.rt2661_tx_ring*, %struct.rt2661_tx_ring** %6, align 8
  %45 = getelementptr inbounds %struct.rt2661_tx_ring, %struct.rt2661_tx_ring* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.rt2661_tx_ring*, %struct.rt2661_tx_ring** %6, align 8
  %48 = getelementptr inbounds %struct.rt2661_tx_ring, %struct.rt2661_tx_ring* %47, i32 0, i32 4
  %49 = bitcast i32* %48 to i8**
  %50 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %51 = load i32, i32* @BUS_DMA_ZERO, align 4
  %52 = or i32 %50, %51
  %53 = load %struct.rt2661_tx_ring*, %struct.rt2661_tx_ring** %6, align 8
  %54 = getelementptr inbounds %struct.rt2661_tx_ring, %struct.rt2661_tx_ring* %53, i32 0, i32 5
  %55 = call i32 @bus_dmamem_alloc(i32 %46, i8** %49, i32 %52, i32* %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %43
  %59 = load %struct.rt2661_softc*, %struct.rt2661_softc** %5, align 8
  %60 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @device_printf(i32 %61, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %158

63:                                               ; preds = %43
  %64 = load %struct.rt2661_tx_ring*, %struct.rt2661_tx_ring** %6, align 8
  %65 = getelementptr inbounds %struct.rt2661_tx_ring, %struct.rt2661_tx_ring* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.rt2661_tx_ring*, %struct.rt2661_tx_ring** %6, align 8
  %68 = getelementptr inbounds %struct.rt2661_tx_ring, %struct.rt2661_tx_ring* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.rt2661_tx_ring*, %struct.rt2661_tx_ring** %6, align 8
  %71 = getelementptr inbounds %struct.rt2661_tx_ring, %struct.rt2661_tx_ring* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @RT2661_TX_DESC_SIZE, align 4
  %75 = mul nsw i32 %73, %74
  %76 = load i32, i32* @rt2661_dma_map_addr, align 4
  %77 = load %struct.rt2661_tx_ring*, %struct.rt2661_tx_ring** %6, align 8
  %78 = getelementptr inbounds %struct.rt2661_tx_ring, %struct.rt2661_tx_ring* %77, i32 0, i32 3
  %79 = call i32 @bus_dmamap_load(i32 %66, i32 %69, i32 %72, i32 %75, i32 %76, i32* %78, i32 0)
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %63
  %83 = load %struct.rt2661_softc*, %struct.rt2661_softc** %5, align 8
  %84 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @device_printf(i32 %85, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %158

87:                                               ; preds = %63
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = mul i64 %89, 4
  %91 = trunc i64 %90 to i32
  %92 = load i32, i32* @M_DEVBUF, align 4
  %93 = load i32, i32* @M_NOWAIT, align 4
  %94 = load i32, i32* @M_ZERO, align 4
  %95 = or i32 %93, %94
  %96 = call %struct.TYPE_2__* @malloc(i32 %91, i32 %92, i32 %95)
  %97 = load %struct.rt2661_tx_ring*, %struct.rt2661_tx_ring** %6, align 8
  %98 = getelementptr inbounds %struct.rt2661_tx_ring, %struct.rt2661_tx_ring* %97, i32 0, i32 1
  store %struct.TYPE_2__* %96, %struct.TYPE_2__** %98, align 8
  %99 = load %struct.rt2661_tx_ring*, %struct.rt2661_tx_ring** %6, align 8
  %100 = getelementptr inbounds %struct.rt2661_tx_ring, %struct.rt2661_tx_ring* %99, i32 0, i32 1
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = icmp eq %struct.TYPE_2__* %101, null
  br i1 %102, label %103, label %109

103:                                              ; preds = %87
  %104 = load %struct.rt2661_softc*, %struct.rt2661_softc** %5, align 8
  %105 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @device_printf(i32 %106, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %108 = load i32, i32* @ENOMEM, align 4
  store i32 %108, i32* %9, align 4
  br label %158

109:                                              ; preds = %87
  %110 = load %struct.rt2661_softc*, %struct.rt2661_softc** %5, align 8
  %111 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @bus_get_dma_tag(i32 %112)
  %114 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %115 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %116 = load i32, i32* @MCLBYTES, align 4
  %117 = load i32, i32* @RT2661_MAX_SCATTER, align 4
  %118 = load i32, i32* @MCLBYTES, align 4
  %119 = load %struct.rt2661_tx_ring*, %struct.rt2661_tx_ring** %6, align 8
  %120 = getelementptr inbounds %struct.rt2661_tx_ring, %struct.rt2661_tx_ring* %119, i32 0, i32 2
  %121 = call i32 @bus_dma_tag_create(i32 %113, i32 1, i32 0, i32 %114, i32 %115, i32* null, i32* null, i32 %116, i32 %117, i32 %118, i32 0, i32* null, i32* null, i32* %120)
  store i32 %121, i32* %9, align 4
  %122 = load i32, i32* %9, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %109
  %125 = load %struct.rt2661_softc*, %struct.rt2661_softc** %5, align 8
  %126 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @device_printf(i32 %127, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %158

129:                                              ; preds = %109
  store i32 0, i32* %8, align 4
  br label %130

130:                                              ; preds = %154, %129
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* %7, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %157

134:                                              ; preds = %130
  %135 = load %struct.rt2661_tx_ring*, %struct.rt2661_tx_ring** %6, align 8
  %136 = getelementptr inbounds %struct.rt2661_tx_ring, %struct.rt2661_tx_ring* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.rt2661_tx_ring*, %struct.rt2661_tx_ring** %6, align 8
  %139 = getelementptr inbounds %struct.rt2661_tx_ring, %struct.rt2661_tx_ring* %138, i32 0, i32 1
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %139, align 8
  %141 = load i32, i32* %8, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  %145 = call i32 @bus_dmamap_create(i32 %137, i32 0, i32* %144)
  store i32 %145, i32* %9, align 4
  %146 = load i32, i32* %9, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %134
  %149 = load %struct.rt2661_softc*, %struct.rt2661_softc** %5, align 8
  %150 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @device_printf(i32 %151, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %158

153:                                              ; preds = %134
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %8, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %8, align 4
  br label %130

157:                                              ; preds = %130
  store i32 0, i32* %4, align 4
  br label %163

158:                                              ; preds = %148, %124, %103, %82, %58, %38
  %159 = load %struct.rt2661_softc*, %struct.rt2661_softc** %5, align 8
  %160 = load %struct.rt2661_tx_ring*, %struct.rt2661_tx_ring** %6, align 8
  %161 = call i32 @rt2661_free_tx_ring(%struct.rt2661_softc* %159, %struct.rt2661_tx_ring* %160)
  %162 = load i32, i32* %9, align 4
  store i32 %162, i32* %4, align 4
  br label %163

163:                                              ; preds = %158, %157
  %164 = load i32, i32* %4, align 4
  ret i32 %164
}

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local %struct.TYPE_2__* @malloc(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32*) #1

declare dso_local i32 @rt2661_free_tx_ring(%struct.rt2661_softc*, %struct.rt2661_tx_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
