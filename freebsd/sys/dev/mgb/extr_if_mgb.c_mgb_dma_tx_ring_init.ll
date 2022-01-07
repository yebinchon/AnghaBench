; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mgb/extr_if_mgb.c_mgb_dma_tx_ring_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mgb/extr_if_mgb.c_mgb_dma_tx_ring_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mgb_softc = type { i32, %struct.mgb_ring_data }
%struct.mgb_ring_data = type { i64, i64, i32, i8* }

@MGB_FCT_TX_CTL = common dso_local global i32 0, align 4
@FCT_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Failed to reset TX FCT.\0A\00", align 1
@FCT_ENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to enable TX FCT.\0A\00", align 1
@MGB_DMAC_TX_START = common dso_local global i32 0, align 4
@DMAC_RESET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Failed to reset TX DMAC.\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"Trying to init channels in not init state\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Invalid ring bus addr.\0A\00", align 1
@MGB_DMA_RING_LEN_MASK = common dso_local global i32 0, align 4
@MGB_DMA_RING_SIZE = common dso_local global i32 0, align 4
@MGB_DMA_HEAD_WB_LS_ENBL = common dso_local global i32 0, align 4
@MGB_DMA_HEAD_WB_ENBL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"Invalid head wb bus addr.\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"MGB_DMA_TX_HEAD was not reset.\0A\00", align 1
@DMAC_START = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"Failed to start TX DMAC.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mgb_softc*, i32)* @mgb_dma_tx_ring_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mgb_dma_tx_ring_init(%struct.mgb_softc* %0, i32 %1) #0 {
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
  %11 = load i32, i32* @MGB_FCT_TX_CTL, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @FCT_RESET, align 4
  %14 = call i32 @mgb_fct_control(%struct.mgb_softc* %10, i32 %11, i32 %12, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %18 = getelementptr inbounds %struct.mgb_softc, %struct.mgb_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @device_printf(i32 %19, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %163

21:                                               ; preds = %2
  %22 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %23 = load i32, i32* @MGB_FCT_TX_CTL, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @FCT_ENABLE, align 4
  %26 = call i32 @mgb_fct_control(%struct.mgb_softc* %22, i32 %23, i32 %24, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %21
  %29 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %30 = getelementptr inbounds %struct.mgb_softc, %struct.mgb_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @device_printf(i32 %31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %163

33:                                               ; preds = %21
  %34 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %35 = load i32, i32* @MGB_DMAC_TX_START, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @DMAC_RESET, align 4
  %38 = call i32 @mgb_dmac_control(%struct.mgb_softc* %34, i32 %35, i32 %36, i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %33
  %41 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %42 = getelementptr inbounds %struct.mgb_softc, %struct.mgb_softc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @device_printf(i32 %43, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %163

45:                                               ; preds = %33
  %46 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %47 = load i32, i32* @MGB_DMAC_TX_START, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @MGB_DMAC_STATE_IS_INITIAL(%struct.mgb_softc* %46, i32 %47, i32 %48)
  %50 = call i32 @KASSERT(i32 %49, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %51 = load %struct.mgb_ring_data*, %struct.mgb_ring_data** %5, align 8
  %52 = getelementptr inbounds %struct.mgb_ring_data, %struct.mgb_ring_data* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %45
  %56 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %57 = getelementptr inbounds %struct.mgb_softc, %struct.mgb_softc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @device_printf(i32 %58, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %163

60:                                               ; preds = %45
  %61 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @MGB_DMA_TX_BASE_H(i32 %62)
  %64 = load %struct.mgb_ring_data*, %struct.mgb_ring_data** %5, align 8
  %65 = getelementptr inbounds %struct.mgb_ring_data, %struct.mgb_ring_data* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @CSR_TRANSLATE_ADDR_HIGH32(i64 %66)
  %68 = call i32 @CSR_WRITE_REG(%struct.mgb_softc* %61, i32 %63, i32 %67)
  %69 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @MGB_DMA_TX_BASE_L(i32 %70)
  %72 = load %struct.mgb_ring_data*, %struct.mgb_ring_data** %5, align 8
  %73 = getelementptr inbounds %struct.mgb_ring_data, %struct.mgb_ring_data* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @CSR_TRANSLATE_ADDR_LOW32(i64 %74)
  %76 = call i32 @CSR_WRITE_REG(%struct.mgb_softc* %69, i32 %71, i32 %75)
  %77 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @MGB_DMA_TX_CONFIG1(i32 %78)
  %80 = call i8* @CSR_READ_REG(%struct.mgb_softc* %77, i32 %79)
  %81 = ptrtoint i8* %80 to i32
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* @MGB_DMA_RING_LEN_MASK, align 4
  %83 = xor i32 %82, -1
  %84 = load i32, i32* %6, align 4
  %85 = and i32 %84, %83
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* @MGB_DMA_RING_SIZE, align 4
  %87 = load i32, i32* @MGB_DMA_RING_LEN_MASK, align 4
  %88 = and i32 %86, %87
  %89 = load i32, i32* %6, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %6, align 4
  %91 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %92 = load i32, i32* %4, align 4
  %93 = call i32 @MGB_DMA_TX_CONFIG1(i32 %92)
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @CSR_WRITE_REG(%struct.mgb_softc* %91, i32 %93, i32 %94)
  %96 = load i32, i32* @MGB_DMA_HEAD_WB_LS_ENBL, align 4
  %97 = load i32, i32* @MGB_DMA_HEAD_WB_ENBL, align 4
  %98 = or i32 %96, %97
  store i32 %98, i32* %6, align 4
  %99 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %100 = load i32, i32* %4, align 4
  %101 = call i32 @MGB_DMA_TX_CONFIG0(i32 %100)
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @CSR_WRITE_REG(%struct.mgb_softc* %99, i32 %101, i32 %102)
  %104 = load %struct.mgb_ring_data*, %struct.mgb_ring_data** %5, align 8
  %105 = getelementptr inbounds %struct.mgb_ring_data, %struct.mgb_ring_data* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %60
  %109 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %110 = getelementptr inbounds %struct.mgb_softc, %struct.mgb_softc* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @device_printf(i32 %111, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %163

113:                                              ; preds = %60
  %114 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %115 = load i32, i32* %4, align 4
  %116 = call i32 @MGB_DMA_TX_HEAD_WB_H(i32 %115)
  %117 = load %struct.mgb_ring_data*, %struct.mgb_ring_data** %5, align 8
  %118 = getelementptr inbounds %struct.mgb_ring_data, %struct.mgb_ring_data* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @CSR_TRANSLATE_ADDR_HIGH32(i64 %119)
  %121 = call i32 @CSR_WRITE_REG(%struct.mgb_softc* %114, i32 %116, i32 %120)
  %122 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %123 = load i32, i32* %4, align 4
  %124 = call i32 @MGB_DMA_TX_HEAD_WB_L(i32 %123)
  %125 = load %struct.mgb_ring_data*, %struct.mgb_ring_data** %5, align 8
  %126 = getelementptr inbounds %struct.mgb_ring_data, %struct.mgb_ring_data* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @CSR_TRANSLATE_ADDR_LOW32(i64 %127)
  %129 = call i32 @CSR_WRITE_REG(%struct.mgb_softc* %122, i32 %124, i32 %128)
  %130 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %131 = load i32, i32* %4, align 4
  %132 = call i32 @MGB_DMA_TX_HEAD(i32 %131)
  %133 = call i8* @CSR_READ_REG(%struct.mgb_softc* %130, i32 %132)
  %134 = load %struct.mgb_ring_data*, %struct.mgb_ring_data** %5, align 8
  %135 = getelementptr inbounds %struct.mgb_ring_data, %struct.mgb_ring_data* %134, i32 0, i32 3
  store i8* %133, i8** %135, align 8
  %136 = load %struct.mgb_ring_data*, %struct.mgb_ring_data** %5, align 8
  %137 = getelementptr inbounds %struct.mgb_ring_data, %struct.mgb_ring_data* %136, i32 0, i32 3
  %138 = load i8*, i8** %137, align 8
  %139 = icmp eq i8* %138, null
  %140 = zext i1 %139 to i32
  %141 = call i32 @KASSERT(i32 %140, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %142 = load %struct.mgb_ring_data*, %struct.mgb_ring_data** %5, align 8
  %143 = getelementptr inbounds %struct.mgb_ring_data, %struct.mgb_ring_data* %142, i32 0, i32 2
  store i32 0, i32* %143, align 8
  %144 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %145 = load i32, i32* %4, align 4
  %146 = call i32 @MGB_DMA_TX_TAIL(i32 %145)
  %147 = load %struct.mgb_ring_data*, %struct.mgb_ring_data** %5, align 8
  %148 = getelementptr inbounds %struct.mgb_ring_data, %struct.mgb_ring_data* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @CSR_WRITE_REG(%struct.mgb_softc* %144, i32 %146, i32 %149)
  %151 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %152 = load i32, i32* @MGB_DMAC_TX_START, align 4
  %153 = load i32, i32* %4, align 4
  %154 = load i32, i32* @DMAC_START, align 4
  %155 = call i32 @mgb_dmac_control(%struct.mgb_softc* %151, i32 %152, i32 %153, i32 %154)
  store i32 %155, i32* %7, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %113
  %158 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %159 = getelementptr inbounds %struct.mgb_softc, %struct.mgb_softc* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @device_printf(i32 %160, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  br label %162

162:                                              ; preds = %157, %113
  br label %163

163:                                              ; preds = %162, %108, %55, %40, %28, %16
  %164 = load i32, i32* %7, align 4
  ret i32 %164
}

declare dso_local i32 @mgb_fct_control(%struct.mgb_softc*, i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @mgb_dmac_control(%struct.mgb_softc*, i32, i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @MGB_DMAC_STATE_IS_INITIAL(%struct.mgb_softc*, i32, i32) #1

declare dso_local i32 @CSR_WRITE_REG(%struct.mgb_softc*, i32, i32) #1

declare dso_local i32 @MGB_DMA_TX_BASE_H(i32) #1

declare dso_local i32 @CSR_TRANSLATE_ADDR_HIGH32(i64) #1

declare dso_local i32 @MGB_DMA_TX_BASE_L(i32) #1

declare dso_local i32 @CSR_TRANSLATE_ADDR_LOW32(i64) #1

declare dso_local i8* @CSR_READ_REG(%struct.mgb_softc*, i32) #1

declare dso_local i32 @MGB_DMA_TX_CONFIG1(i32) #1

declare dso_local i32 @MGB_DMA_TX_CONFIG0(i32) #1

declare dso_local i32 @MGB_DMA_TX_HEAD_WB_H(i32) #1

declare dso_local i32 @MGB_DMA_TX_HEAD_WB_L(i32) #1

declare dso_local i32 @MGB_DMA_TX_HEAD(i32) #1

declare dso_local i32 @MGB_DMA_TX_TAIL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
