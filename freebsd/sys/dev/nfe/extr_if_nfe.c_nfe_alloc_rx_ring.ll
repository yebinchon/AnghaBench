; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nfe/extr_if_nfe.c_nfe_alloc_rx_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nfe/extr_if_nfe.c_nfe_alloc_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfe_softc = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.nfe_rx_data* }
%struct.nfe_rx_data = type { i32*, i32* }
%struct.nfe_rx_ring = type { i32, i32*, i64, i32, i32, i8*, i8*, i64, i64 }
%struct.nfe_dmamap_arg = type { i64 }

@NFE_40BIT_ADDR = common dso_local global i32 0, align 4
@NFE_RING_ALIGN = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@NFE_RX_RING_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"could not create desc DMA tag\0A\00", align 1
@BUS_DMA_WAITOK = common dso_local global i32 0, align 4
@BUS_DMA_COHERENT = common dso_local global i32 0, align 4
@BUS_DMA_ZERO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"could not create desc DMA map\0A\00", align 1
@nfe_dma_map_segs = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"could not load desc DMA map\0A\00", align 1
@MCLBYTES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"could not create Rx DMA tag\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"could not create Rx DMA spare map\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"could not create Rx DMA map\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfe_softc*, %struct.nfe_rx_ring*)* @nfe_alloc_rx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfe_alloc_rx_ring(%struct.nfe_softc* %0, %struct.nfe_rx_ring* %1) #0 {
  %3 = alloca %struct.nfe_softc*, align 8
  %4 = alloca %struct.nfe_rx_ring*, align 8
  %5 = alloca %struct.nfe_dmamap_arg, align 8
  %6 = alloca %struct.nfe_rx_data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nfe_softc* %0, %struct.nfe_softc** %3, align 8
  store %struct.nfe_rx_ring* %1, %struct.nfe_rx_ring** %4, align 8
  %11 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %12 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @NFE_40BIT_ADDR, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.nfe_rx_ring*, %struct.nfe_rx_ring** %4, align 8
  %19 = getelementptr inbounds %struct.nfe_rx_ring, %struct.nfe_rx_ring* %18, i32 0, i32 6
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %7, align 8
  store i32 4, i32* %10, align 4
  br label %25

21:                                               ; preds = %2
  %22 = load %struct.nfe_rx_ring*, %struct.nfe_rx_ring** %4, align 8
  %23 = getelementptr inbounds %struct.nfe_rx_ring, %struct.nfe_rx_ring* %22, i32 0, i32 5
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %7, align 8
  store i32 4, i32* %10, align 4
  br label %25

25:                                               ; preds = %21, %17
  %26 = load %struct.nfe_rx_ring*, %struct.nfe_rx_ring** %4, align 8
  %27 = getelementptr inbounds %struct.nfe_rx_ring, %struct.nfe_rx_ring* %26, i32 0, i32 7
  store i64 0, i64* %27, align 8
  %28 = load %struct.nfe_rx_ring*, %struct.nfe_rx_ring** %4, align 8
  %29 = getelementptr inbounds %struct.nfe_rx_ring, %struct.nfe_rx_ring* %28, i32 0, i32 8
  store i64 0, i64* %29, align 8
  %30 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %31 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @NFE_RING_ALIGN, align 4
  %34 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %35 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %36 = load i32, i32* @NFE_RX_RING_COUNT, align 4
  %37 = load i32, i32* %10, align 4
  %38 = mul nsw i32 %36, %37
  %39 = load i32, i32* @NFE_RX_RING_COUNT, align 4
  %40 = load i32, i32* %10, align 4
  %41 = mul nsw i32 %39, %40
  %42 = load %struct.nfe_rx_ring*, %struct.nfe_rx_ring** %4, align 8
  %43 = getelementptr inbounds %struct.nfe_rx_ring, %struct.nfe_rx_ring* %42, i32 0, i32 4
  %44 = call i32 @bus_dma_tag_create(i32 %32, i32 %33, i32 0, i32 %34, i32 %35, i32* null, i32* null, i32 %38, i32 1, i32 %41, i32 0, i32* null, i32* null, i32* %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %25
  %48 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %49 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @device_printf(i32 %50, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %178

52:                                               ; preds = %25
  %53 = load %struct.nfe_rx_ring*, %struct.nfe_rx_ring** %4, align 8
  %54 = getelementptr inbounds %struct.nfe_rx_ring, %struct.nfe_rx_ring* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %57 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @BUS_DMA_ZERO, align 4
  %60 = or i32 %58, %59
  %61 = load %struct.nfe_rx_ring*, %struct.nfe_rx_ring** %4, align 8
  %62 = getelementptr inbounds %struct.nfe_rx_ring, %struct.nfe_rx_ring* %61, i32 0, i32 3
  %63 = call i32 @bus_dmamem_alloc(i32 %55, i8** %7, i32 %60, i32* %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %52
  %67 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %68 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @device_printf(i32 %69, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %178

71:                                               ; preds = %52
  %72 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %73 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @NFE_40BIT_ADDR, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %71
  %79 = load i8*, i8** %7, align 8
  %80 = load %struct.nfe_rx_ring*, %struct.nfe_rx_ring** %4, align 8
  %81 = getelementptr inbounds %struct.nfe_rx_ring, %struct.nfe_rx_ring* %80, i32 0, i32 6
  store i8* %79, i8** %81, align 8
  br label %86

82:                                               ; preds = %71
  %83 = load i8*, i8** %7, align 8
  %84 = load %struct.nfe_rx_ring*, %struct.nfe_rx_ring** %4, align 8
  %85 = getelementptr inbounds %struct.nfe_rx_ring, %struct.nfe_rx_ring* %84, i32 0, i32 5
  store i8* %83, i8** %85, align 8
  br label %86

86:                                               ; preds = %82, %78
  %87 = getelementptr inbounds %struct.nfe_dmamap_arg, %struct.nfe_dmamap_arg* %5, i32 0, i32 0
  store i64 0, i64* %87, align 8
  %88 = load %struct.nfe_rx_ring*, %struct.nfe_rx_ring** %4, align 8
  %89 = getelementptr inbounds %struct.nfe_rx_ring, %struct.nfe_rx_ring* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.nfe_rx_ring*, %struct.nfe_rx_ring** %4, align 8
  %92 = getelementptr inbounds %struct.nfe_rx_ring, %struct.nfe_rx_ring* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = load i8*, i8** %7, align 8
  %95 = load i32, i32* @NFE_RX_RING_COUNT, align 4
  %96 = load i32, i32* %10, align 4
  %97 = mul nsw i32 %95, %96
  %98 = load i32, i32* @nfe_dma_map_segs, align 4
  %99 = call i32 @bus_dmamap_load(i32 %90, i32 %93, i8* %94, i32 %97, i32 %98, %struct.nfe_dmamap_arg* %5, i32 0)
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %9, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %86
  %103 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %104 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @device_printf(i32 %105, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %178

107:                                              ; preds = %86
  %108 = getelementptr inbounds %struct.nfe_dmamap_arg, %struct.nfe_dmamap_arg* %5, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.nfe_rx_ring*, %struct.nfe_rx_ring** %4, align 8
  %111 = getelementptr inbounds %struct.nfe_rx_ring, %struct.nfe_rx_ring* %110, i32 0, i32 2
  store i64 %109, i64* %111, align 8
  %112 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %113 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %116 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %117 = load i32, i32* @MCLBYTES, align 4
  %118 = load i32, i32* @MCLBYTES, align 4
  %119 = load %struct.nfe_rx_ring*, %struct.nfe_rx_ring** %4, align 8
  %120 = getelementptr inbounds %struct.nfe_rx_ring, %struct.nfe_rx_ring* %119, i32 0, i32 0
  %121 = call i32 @bus_dma_tag_create(i32 %114, i32 1, i32 0, i32 %115, i32 %116, i32* null, i32* null, i32 %117, i32 1, i32 %118, i32 0, i32* null, i32* null, i32* %120)
  store i32 %121, i32* %9, align 4
  %122 = load i32, i32* %9, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %107
  %125 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %126 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @device_printf(i32 %127, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %178

129:                                              ; preds = %107
  %130 = load %struct.nfe_rx_ring*, %struct.nfe_rx_ring** %4, align 8
  %131 = getelementptr inbounds %struct.nfe_rx_ring, %struct.nfe_rx_ring* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.nfe_rx_ring*, %struct.nfe_rx_ring** %4, align 8
  %134 = getelementptr inbounds %struct.nfe_rx_ring, %struct.nfe_rx_ring* %133, i32 0, i32 1
  %135 = call i32 @bus_dmamap_create(i32 %132, i32 0, i32** %134)
  store i32 %135, i32* %9, align 4
  %136 = load i32, i32* %9, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %129
  %139 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %140 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @device_printf(i32 %141, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %178

143:                                              ; preds = %129
  store i32 0, i32* %8, align 4
  br label %144

144:                                              ; preds = %174, %143
  %145 = load i32, i32* %8, align 4
  %146 = load i32, i32* @NFE_RX_RING_COUNT, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %177

148:                                              ; preds = %144
  %149 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %150 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 0
  %152 = load %struct.nfe_rx_data*, %struct.nfe_rx_data** %151, align 8
  %153 = load i32, i32* %8, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.nfe_rx_data, %struct.nfe_rx_data* %152, i64 %154
  store %struct.nfe_rx_data* %155, %struct.nfe_rx_data** %6, align 8
  %156 = load %struct.nfe_rx_data*, %struct.nfe_rx_data** %6, align 8
  %157 = getelementptr inbounds %struct.nfe_rx_data, %struct.nfe_rx_data* %156, i32 0, i32 0
  store i32* null, i32** %157, align 8
  %158 = load %struct.nfe_rx_data*, %struct.nfe_rx_data** %6, align 8
  %159 = getelementptr inbounds %struct.nfe_rx_data, %struct.nfe_rx_data* %158, i32 0, i32 1
  store i32* null, i32** %159, align 8
  %160 = load %struct.nfe_rx_ring*, %struct.nfe_rx_ring** %4, align 8
  %161 = getelementptr inbounds %struct.nfe_rx_ring, %struct.nfe_rx_ring* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.nfe_rx_data*, %struct.nfe_rx_data** %6, align 8
  %164 = getelementptr inbounds %struct.nfe_rx_data, %struct.nfe_rx_data* %163, i32 0, i32 0
  %165 = call i32 @bus_dmamap_create(i32 %162, i32 0, i32** %164)
  store i32 %165, i32* %9, align 4
  %166 = load i32, i32* %9, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %148
  %169 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %170 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @device_printf(i32 %171, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %178

173:                                              ; preds = %148
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %8, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %8, align 4
  br label %144

177:                                              ; preds = %144
  br label %178

178:                                              ; preds = %177, %168, %138, %124, %102, %66, %47
  %179 = load i32, i32* %9, align 4
  ret i32 %179
}

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i8*, i32, i32, %struct.nfe_dmamap_arg*, i32) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
