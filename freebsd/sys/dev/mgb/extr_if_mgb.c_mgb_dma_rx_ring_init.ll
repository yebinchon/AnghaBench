; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mgb/extr_if_mgb.c_mgb_dma_rx_ring_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mgb/extr_if_mgb.c_mgb_dma_rx_ring_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mgb_softc = type { i32, %struct.mgb_ring_data }
%struct.mgb_ring_data = type { i64, i64, i8* }

@MGB_DMAC_RX_START = common dso_local global i32 0, align 4
@DMAC_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Trying to init channels when not in init state\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Invalid ring bus addr.\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Invalid head wb bus addr.\0A\00", align 1
@MGB_DMA_HEAD_WB_ENBL = common dso_local global i32 0, align 4
@MGB_DMA_RING_LEN_MASK = common dso_local global i32 0, align 4
@MGB_DMA_RING_SIZE = common dso_local global i32 0, align 4
@MGB_DMA_RING_PAD_MASK = common dso_local global i32 0, align 4
@MGB_DMA_RING_PAD_0 = common dso_local global i32 0, align 4
@MGB_FCT_RX_CTL = common dso_local global i32 0, align 4
@FCT_RESET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Failed to reset RX FCT.\0A\00", align 1
@FCT_ENABLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"Failed to enable RX FCT.\0A\00", align 1
@DMAC_START = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"Failed to start RX DMAC.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mgb_softc*, i32)* @mgb_dma_rx_ring_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mgb_dma_rx_ring_init(%struct.mgb_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.mgb_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mgb_ring_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mgb_softc* %0, %struct.mgb_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %9 = getelementptr inbounds %struct.mgb_softc, %struct.mgb_softc* %8, i32 0, i32 1
  store %struct.mgb_ring_data* %9, %struct.mgb_ring_data** %5, align 8
  %10 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %11 = load i32, i32* @MGB_DMAC_RX_START, align 4
  %12 = load i32, i32* @DMAC_RESET, align 4
  %13 = call i32 @mgb_dmac_control(%struct.mgb_softc* %10, i32 %11, i32 0, i32 %12)
  %14 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %15 = load i32, i32* @MGB_DMAC_RX_START, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @MGB_DMAC_STATE_IS_INITIAL(%struct.mgb_softc* %14, i32 %15, i32 %16)
  %18 = call i32 @KASSERT(i32 %17, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.mgb_ring_data*, %struct.mgb_ring_data** %5, align 8
  %20 = getelementptr inbounds %struct.mgb_ring_data, %struct.mgb_ring_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %25 = getelementptr inbounds %struct.mgb_softc, %struct.mgb_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @device_printf(i32 %26, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %149

28:                                               ; preds = %2
  %29 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @MGB_DMA_RX_BASE_H(i32 %30)
  %32 = load %struct.mgb_ring_data*, %struct.mgb_ring_data** %5, align 8
  %33 = getelementptr inbounds %struct.mgb_ring_data, %struct.mgb_ring_data* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @CSR_TRANSLATE_ADDR_HIGH32(i64 %34)
  %36 = call i32 @CSR_WRITE_REG(%struct.mgb_softc* %29, i32 %31, i32 %35)
  %37 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @MGB_DMA_RX_BASE_L(i32 %38)
  %40 = load %struct.mgb_ring_data*, %struct.mgb_ring_data** %5, align 8
  %41 = getelementptr inbounds %struct.mgb_ring_data, %struct.mgb_ring_data* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @CSR_TRANSLATE_ADDR_LOW32(i64 %42)
  %44 = call i32 @CSR_WRITE_REG(%struct.mgb_softc* %37, i32 %39, i32 %43)
  %45 = load %struct.mgb_ring_data*, %struct.mgb_ring_data** %5, align 8
  %46 = getelementptr inbounds %struct.mgb_ring_data, %struct.mgb_ring_data* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %28
  %50 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %51 = getelementptr inbounds %struct.mgb_softc, %struct.mgb_softc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @device_printf(i32 %52, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %149

54:                                               ; preds = %28
  %55 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @MGB_DMA_RX_HEAD_WB_H(i32 %56)
  %58 = load %struct.mgb_ring_data*, %struct.mgb_ring_data** %5, align 8
  %59 = getelementptr inbounds %struct.mgb_ring_data, %struct.mgb_ring_data* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @CSR_TRANSLATE_ADDR_HIGH32(i64 %60)
  %62 = call i32 @CSR_WRITE_REG(%struct.mgb_softc* %55, i32 %57, i32 %61)
  %63 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @MGB_DMA_RX_HEAD_WB_L(i32 %64)
  %66 = load %struct.mgb_ring_data*, %struct.mgb_ring_data** %5, align 8
  %67 = getelementptr inbounds %struct.mgb_ring_data, %struct.mgb_ring_data* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @CSR_TRANSLATE_ADDR_LOW32(i64 %68)
  %70 = call i32 @CSR_WRITE_REG(%struct.mgb_softc* %63, i32 %65, i32 %69)
  %71 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @MGB_DMA_RX_CONFIG0(i32 %72)
  %74 = load i32, i32* @MGB_DMA_HEAD_WB_ENBL, align 4
  %75 = call i32 @CSR_WRITE_REG(%struct.mgb_softc* %71, i32 %73, i32 %74)
  %76 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @MGB_DMA_RX_CONFIG1(i32 %77)
  %79 = call i8* @CSR_READ_REG(%struct.mgb_softc* %76, i32 %78)
  %80 = ptrtoint i8* %79 to i32
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* @MGB_DMA_RING_LEN_MASK, align 4
  %82 = xor i32 %81, -1
  %83 = load i32, i32* %6, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* @MGB_DMA_RING_SIZE, align 4
  %86 = load i32, i32* @MGB_DMA_RING_LEN_MASK, align 4
  %87 = and i32 %85, %86
  %88 = load i32, i32* %6, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* @MGB_DMA_RING_PAD_MASK, align 4
  %91 = xor i32 %90, -1
  %92 = load i32, i32* %6, align 4
  %93 = and i32 %92, %91
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* @MGB_DMA_RING_PAD_0, align 4
  %95 = load i32, i32* @MGB_DMA_RING_PAD_MASK, align 4
  %96 = and i32 %94, %95
  %97 = load i32, i32* %6, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %6, align 4
  %99 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %100 = load i32, i32* %4, align 4
  %101 = call i32 @MGB_DMA_RX_CONFIG1(i32 %100)
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @CSR_WRITE_REG(%struct.mgb_softc* %99, i32 %101, i32 %102)
  %104 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %105 = load i32, i32* %4, align 4
  %106 = call i32 @MGB_DMA_RX_HEAD(i32 %105)
  %107 = call i8* @CSR_READ_REG(%struct.mgb_softc* %104, i32 %106)
  %108 = load %struct.mgb_ring_data*, %struct.mgb_ring_data** %5, align 8
  %109 = getelementptr inbounds %struct.mgb_ring_data, %struct.mgb_ring_data* %108, i32 0, i32 2
  store i8* %107, i8** %109, align 8
  %110 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %111 = load i32, i32* @MGB_FCT_RX_CTL, align 4
  %112 = load i32, i32* %4, align 4
  %113 = load i32, i32* @FCT_RESET, align 4
  %114 = call i32 @mgb_fct_control(%struct.mgb_softc* %110, i32 %111, i32 %112, i32 %113)
  %115 = load i32, i32* %7, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %54
  %118 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %119 = getelementptr inbounds %struct.mgb_softc, %struct.mgb_softc* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @device_printf(i32 %120, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %149

122:                                              ; preds = %54
  %123 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %124 = load i32, i32* @MGB_FCT_RX_CTL, align 4
  %125 = load i32, i32* %4, align 4
  %126 = load i32, i32* @FCT_ENABLE, align 4
  %127 = call i32 @mgb_fct_control(%struct.mgb_softc* %123, i32 %124, i32 %125, i32 %126)
  %128 = load i32, i32* %7, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %122
  %131 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %132 = getelementptr inbounds %struct.mgb_softc, %struct.mgb_softc* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @device_printf(i32 %133, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %149

135:                                              ; preds = %122
  %136 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %137 = load i32, i32* @MGB_DMAC_RX_START, align 4
  %138 = load i32, i32* %4, align 4
  %139 = load i32, i32* @DMAC_START, align 4
  %140 = call i32 @mgb_dmac_control(%struct.mgb_softc* %136, i32 %137, i32 %138, i32 %139)
  %141 = load i32, i32* %7, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %135
  %144 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %145 = getelementptr inbounds %struct.mgb_softc, %struct.mgb_softc* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @device_printf(i32 %146, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %148

148:                                              ; preds = %143, %135
  br label %149

149:                                              ; preds = %148, %130, %117, %49, %23
  %150 = load i32, i32* %7, align 4
  ret i32 %150
}

declare dso_local i32 @mgb_dmac_control(%struct.mgb_softc*, i32, i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @MGB_DMAC_STATE_IS_INITIAL(%struct.mgb_softc*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @CSR_WRITE_REG(%struct.mgb_softc*, i32, i32) #1

declare dso_local i32 @MGB_DMA_RX_BASE_H(i32) #1

declare dso_local i32 @CSR_TRANSLATE_ADDR_HIGH32(i64) #1

declare dso_local i32 @MGB_DMA_RX_BASE_L(i32) #1

declare dso_local i32 @CSR_TRANSLATE_ADDR_LOW32(i64) #1

declare dso_local i32 @MGB_DMA_RX_HEAD_WB_H(i32) #1

declare dso_local i32 @MGB_DMA_RX_HEAD_WB_L(i32) #1

declare dso_local i32 @MGB_DMA_RX_CONFIG0(i32) #1

declare dso_local i8* @CSR_READ_REG(%struct.mgb_softc*, i32) #1

declare dso_local i32 @MGB_DMA_RX_CONFIG1(i32) #1

declare dso_local i32 @MGB_DMA_RX_HEAD(i32) #1

declare dso_local i32 @mgb_fct_control(%struct.mgb_softc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
