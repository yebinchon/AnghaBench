; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nfe/extr_if_nfe.c_nfe_alloc_tx_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nfe/extr_if_nfe.c_nfe_alloc_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfe_softc = type { i32, i32, i32 }
%struct.nfe_tx_ring = type { %struct.TYPE_2__*, i32, i64, i32, i32, i8*, i8*, i64, i64, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.nfe_dmamap_arg = type { i64 }

@NFE_40BIT_ADDR = common dso_local global i32 0, align 4
@NFE_RING_ALIGN = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@NFE_TX_RING_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"could not create desc DMA tag\0A\00", align 1
@BUS_DMA_WAITOK = common dso_local global i32 0, align 4
@BUS_DMA_COHERENT = common dso_local global i32 0, align 4
@BUS_DMA_ZERO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"could not create desc DMA map\0A\00", align 1
@nfe_dma_map_segs = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"could not load desc DMA map\0A\00", align 1
@NFE_TSO_MAXSIZE = common dso_local global i32 0, align 4
@NFE_MAX_SCATTER = common dso_local global i32 0, align 4
@NFE_TSO_MAXSGSIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"could not create Tx DMA tag\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"could not create Tx DMA map\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfe_softc*, %struct.nfe_tx_ring*)* @nfe_alloc_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfe_alloc_tx_ring(%struct.nfe_softc* %0, %struct.nfe_tx_ring* %1) #0 {
  %3 = alloca %struct.nfe_softc*, align 8
  %4 = alloca %struct.nfe_tx_ring*, align 8
  %5 = alloca %struct.nfe_dmamap_arg, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.nfe_softc* %0, %struct.nfe_softc** %3, align 8
  store %struct.nfe_tx_ring* %1, %struct.nfe_tx_ring** %4, align 8
  %10 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %11 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @NFE_40BIT_ADDR, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.nfe_tx_ring*, %struct.nfe_tx_ring** %4, align 8
  %18 = getelementptr inbounds %struct.nfe_tx_ring, %struct.nfe_tx_ring* %17, i32 0, i32 6
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %8, align 8
  store i32 4, i32* %9, align 4
  br label %24

20:                                               ; preds = %2
  %21 = load %struct.nfe_tx_ring*, %struct.nfe_tx_ring** %4, align 8
  %22 = getelementptr inbounds %struct.nfe_tx_ring, %struct.nfe_tx_ring* %21, i32 0, i32 5
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %8, align 8
  store i32 4, i32* %9, align 4
  br label %24

24:                                               ; preds = %20, %16
  %25 = load %struct.nfe_tx_ring*, %struct.nfe_tx_ring** %4, align 8
  %26 = getelementptr inbounds %struct.nfe_tx_ring, %struct.nfe_tx_ring* %25, i32 0, i32 9
  store i64 0, i64* %26, align 8
  %27 = load %struct.nfe_tx_ring*, %struct.nfe_tx_ring** %4, align 8
  %28 = getelementptr inbounds %struct.nfe_tx_ring, %struct.nfe_tx_ring* %27, i32 0, i32 7
  store i64 0, i64* %28, align 8
  %29 = load %struct.nfe_tx_ring*, %struct.nfe_tx_ring** %4, align 8
  %30 = getelementptr inbounds %struct.nfe_tx_ring, %struct.nfe_tx_ring* %29, i32 0, i32 8
  store i64 0, i64* %30, align 8
  %31 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %32 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @NFE_RING_ALIGN, align 4
  %35 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %36 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %37 = load i32, i32* @NFE_TX_RING_COUNT, align 4
  %38 = load i32, i32* %9, align 4
  %39 = mul nsw i32 %37, %38
  %40 = load i32, i32* @NFE_TX_RING_COUNT, align 4
  %41 = load i32, i32* %9, align 4
  %42 = mul nsw i32 %40, %41
  %43 = load %struct.nfe_tx_ring*, %struct.nfe_tx_ring** %4, align 8
  %44 = getelementptr inbounds %struct.nfe_tx_ring, %struct.nfe_tx_ring* %43, i32 0, i32 4
  %45 = call i32 @bus_dma_tag_create(i32 %33, i32 %34, i32 0, i32 %35, i32 %36, i32* null, i32* null, i32 %39, i32 1, i32 %42, i32 0, i32* null, i32* null, i32* %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %24
  %49 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %50 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @device_printf(i32 %51, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %160

53:                                               ; preds = %24
  %54 = load %struct.nfe_tx_ring*, %struct.nfe_tx_ring** %4, align 8
  %55 = getelementptr inbounds %struct.nfe_tx_ring, %struct.nfe_tx_ring* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %58 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @BUS_DMA_ZERO, align 4
  %61 = or i32 %59, %60
  %62 = load %struct.nfe_tx_ring*, %struct.nfe_tx_ring** %4, align 8
  %63 = getelementptr inbounds %struct.nfe_tx_ring, %struct.nfe_tx_ring* %62, i32 0, i32 3
  %64 = call i32 @bus_dmamem_alloc(i32 %56, i8** %8, i32 %61, i32* %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %53
  %68 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %69 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @device_printf(i32 %70, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %160

72:                                               ; preds = %53
  %73 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %74 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @NFE_40BIT_ADDR, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %72
  %80 = load i8*, i8** %8, align 8
  %81 = load %struct.nfe_tx_ring*, %struct.nfe_tx_ring** %4, align 8
  %82 = getelementptr inbounds %struct.nfe_tx_ring, %struct.nfe_tx_ring* %81, i32 0, i32 6
  store i8* %80, i8** %82, align 8
  br label %87

83:                                               ; preds = %72
  %84 = load i8*, i8** %8, align 8
  %85 = load %struct.nfe_tx_ring*, %struct.nfe_tx_ring** %4, align 8
  %86 = getelementptr inbounds %struct.nfe_tx_ring, %struct.nfe_tx_ring* %85, i32 0, i32 5
  store i8* %84, i8** %86, align 8
  br label %87

87:                                               ; preds = %83, %79
  %88 = getelementptr inbounds %struct.nfe_dmamap_arg, %struct.nfe_dmamap_arg* %5, i32 0, i32 0
  store i64 0, i64* %88, align 8
  %89 = load %struct.nfe_tx_ring*, %struct.nfe_tx_ring** %4, align 8
  %90 = getelementptr inbounds %struct.nfe_tx_ring, %struct.nfe_tx_ring* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.nfe_tx_ring*, %struct.nfe_tx_ring** %4, align 8
  %93 = getelementptr inbounds %struct.nfe_tx_ring, %struct.nfe_tx_ring* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = load i8*, i8** %8, align 8
  %96 = load i32, i32* @NFE_TX_RING_COUNT, align 4
  %97 = load i32, i32* %9, align 4
  %98 = mul nsw i32 %96, %97
  %99 = load i32, i32* @nfe_dma_map_segs, align 4
  %100 = call i32 @bus_dmamap_load(i32 %91, i32 %94, i8* %95, i32 %98, i32 %99, %struct.nfe_dmamap_arg* %5, i32 0)
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %87
  %104 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %105 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @device_printf(i32 %106, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %160

108:                                              ; preds = %87
  %109 = getelementptr inbounds %struct.nfe_dmamap_arg, %struct.nfe_dmamap_arg* %5, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.nfe_tx_ring*, %struct.nfe_tx_ring** %4, align 8
  %112 = getelementptr inbounds %struct.nfe_tx_ring, %struct.nfe_tx_ring* %111, i32 0, i32 2
  store i64 %110, i64* %112, align 8
  %113 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %114 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %117 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %118 = load i32, i32* @NFE_TSO_MAXSIZE, align 4
  %119 = load i32, i32* @NFE_MAX_SCATTER, align 4
  %120 = load i32, i32* @NFE_TSO_MAXSGSIZE, align 4
  %121 = load %struct.nfe_tx_ring*, %struct.nfe_tx_ring** %4, align 8
  %122 = getelementptr inbounds %struct.nfe_tx_ring, %struct.nfe_tx_ring* %121, i32 0, i32 1
  %123 = call i32 @bus_dma_tag_create(i32 %115, i32 1, i32 0, i32 %116, i32 %117, i32* null, i32* null, i32 %118, i32 %119, i32 %120, i32 0, i32* null, i32* null, i32* %122)
  store i32 %123, i32* %7, align 4
  %124 = load i32, i32* %7, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %108
  %127 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %128 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @device_printf(i32 %129, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %160

131:                                              ; preds = %108
  store i32 0, i32* %6, align 4
  br label %132

132:                                              ; preds = %156, %131
  %133 = load i32, i32* %6, align 4
  %134 = load i32, i32* @NFE_TX_RING_COUNT, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %159

136:                                              ; preds = %132
  %137 = load %struct.nfe_tx_ring*, %struct.nfe_tx_ring** %4, align 8
  %138 = getelementptr inbounds %struct.nfe_tx_ring, %struct.nfe_tx_ring* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.nfe_tx_ring*, %struct.nfe_tx_ring** %4, align 8
  %141 = getelementptr inbounds %struct.nfe_tx_ring, %struct.nfe_tx_ring* %140, i32 0, i32 0
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %141, align 8
  %143 = load i32, i32* %6, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  %147 = call i32 @bus_dmamap_create(i32 %139, i32 0, i32* %146)
  store i32 %147, i32* %7, align 4
  %148 = load i32, i32* %7, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %136
  %151 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %152 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @device_printf(i32 %153, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %160

155:                                              ; preds = %136
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %6, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %6, align 4
  br label %132

159:                                              ; preds = %132
  br label %160

160:                                              ; preds = %159, %150, %126, %103, %67, %48
  %161 = load i32, i32* %7, align 4
  ret i32 %161
}

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i8*, i32, i32, %struct.nfe_dmamap_arg*, i32) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
