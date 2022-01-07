; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bge_softc = type { i32, i64, i32, i32, i32 }

@BGE_PCI_MISC_CTL = common dso_local global i32 0, align 4
@BGE_PCIMISCCTL_MASK_PCI_INTR = common dso_local global i32 0, align 4
@BGE_MBX_IRQ0_LO = common dso_local global i32 0, align 4
@BGE_RESET_SHUTDOWN = common dso_local global i32 0, align 4
@BGE_RX_MODE = common dso_local global i32 0, align 4
@BGE_RXMODE_ENABLE = common dso_local global i32 0, align 4
@BGE_RBDI_MODE = common dso_local global i32 0, align 4
@BGE_RBDIMODE_ENABLE = common dso_local global i32 0, align 4
@BGE_RXLP_MODE = common dso_local global i32 0, align 4
@BGE_RXLPMODE_ENABLE = common dso_local global i32 0, align 4
@BGE_RXLS_MODE = common dso_local global i32 0, align 4
@BGE_RXLSMODE_ENABLE = common dso_local global i32 0, align 4
@BGE_RDBDI_MODE = common dso_local global i32 0, align 4
@BGE_RDC_MODE = common dso_local global i32 0, align 4
@BGE_RDCMODE_ENABLE = common dso_local global i32 0, align 4
@BGE_RBDC_MODE = common dso_local global i32 0, align 4
@BGE_RBDCMODE_ENABLE = common dso_local global i32 0, align 4
@BGE_SRS_MODE = common dso_local global i32 0, align 4
@BGE_SRSMODE_ENABLE = common dso_local global i32 0, align 4
@BGE_SBDI_MODE = common dso_local global i32 0, align 4
@BGE_SBDIMODE_ENABLE = common dso_local global i32 0, align 4
@BGE_SDI_MODE = common dso_local global i32 0, align 4
@BGE_SDIMODE_ENABLE = common dso_local global i32 0, align 4
@BGE_RDMA_MODE = common dso_local global i32 0, align 4
@BGE_RDMAMODE_ENABLE = common dso_local global i32 0, align 4
@BGE_SDC_MODE = common dso_local global i32 0, align 4
@BGE_SDCMODE_ENABLE = common dso_local global i32 0, align 4
@BGE_DMAC_MODE = common dso_local global i32 0, align 4
@BGE_DMACMODE_ENABLE = common dso_local global i32 0, align 4
@BGE_SBDC_MODE = common dso_local global i32 0, align 4
@BGE_SBDCMODE_ENABLE = common dso_local global i32 0, align 4
@BGE_HCC_MODE = common dso_local global i32 0, align 4
@BGE_HCCMODE_ENABLE = common dso_local global i32 0, align 4
@BGE_WDMA_MODE = common dso_local global i32 0, align 4
@BGE_WDMAMODE_ENABLE = common dso_local global i32 0, align 4
@BGE_MBCF_MODE = common dso_local global i32 0, align 4
@BGE_MBCFMODE_ENABLE = common dso_local global i32 0, align 4
@BGE_FTQ_RESET = common dso_local global i32 0, align 4
@BGE_BMAN_MODE = common dso_local global i32 0, align 4
@BGE_BMANMODE_ENABLE = common dso_local global i32 0, align 4
@BGE_MARB_MODE = common dso_local global i32 0, align 4
@BGE_MARBMODE_ENABLE = common dso_local global i32 0, align 4
@ASF_STACKUP = common dso_local global i32 0, align 4
@BGE_MODE_CTL = common dso_local global i32 0, align 4
@BGE_MODECTL_STACKUP = common dso_local global i32 0, align 4
@BGE_TXCONS_UNSET = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"link DOWN\0A\00", align 1
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bge_softc*)* @bge_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bge_stop(%struct.bge_softc* %0) #0 {
  %2 = alloca %struct.bge_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.bge_softc* %0, %struct.bge_softc** %2, align 8
  %4 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %5 = call i32 @BGE_LOCK_ASSERT(%struct.bge_softc* %4)
  %6 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %7 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %3, align 4
  %9 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %10 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %9, i32 0, i32 4
  %11 = call i32 @callout_stop(i32* %10)
  %12 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %13 = load i32, i32* @BGE_PCI_MISC_CTL, align 4
  %14 = load i32, i32* @BGE_PCIMISCCTL_MASK_PCI_INTR, align 4
  %15 = call i32 @BGE_SETBIT(%struct.bge_softc* %12, i32 %13, i32 %14)
  %16 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %17 = load i32, i32* @BGE_MBX_IRQ0_LO, align 4
  %18 = call i32 @bge_writembx(%struct.bge_softc* %16, i32 %17, i32 1)
  %19 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %20 = call i32 @bge_stop_fw(%struct.bge_softc* %19)
  %21 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %22 = load i32, i32* @BGE_RESET_SHUTDOWN, align 4
  %23 = call i32 @bge_sig_pre_reset(%struct.bge_softc* %21, i32 %22)
  %24 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %25 = load i32, i32* @BGE_RX_MODE, align 4
  %26 = load i32, i32* @BGE_RXMODE_ENABLE, align 4
  %27 = call i32 @bge_stop_block(%struct.bge_softc* %24, i32 %25, i32 %26)
  %28 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %29 = load i32, i32* @BGE_RBDI_MODE, align 4
  %30 = load i32, i32* @BGE_RBDIMODE_ENABLE, align 4
  %31 = call i32 @bge_stop_block(%struct.bge_softc* %28, i32 %29, i32 %30)
  %32 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %33 = load i32, i32* @BGE_RXLP_MODE, align 4
  %34 = load i32, i32* @BGE_RXLPMODE_ENABLE, align 4
  %35 = call i32 @bge_stop_block(%struct.bge_softc* %32, i32 %33, i32 %34)
  %36 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %37 = call i64 @BGE_IS_5700_FAMILY(%struct.bge_softc* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %1
  %40 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %41 = load i32, i32* @BGE_RXLS_MODE, align 4
  %42 = load i32, i32* @BGE_RXLSMODE_ENABLE, align 4
  %43 = call i32 @bge_stop_block(%struct.bge_softc* %40, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %39, %1
  %45 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %46 = load i32, i32* @BGE_RDBDI_MODE, align 4
  %47 = load i32, i32* @BGE_RBDIMODE_ENABLE, align 4
  %48 = call i32 @bge_stop_block(%struct.bge_softc* %45, i32 %46, i32 %47)
  %49 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %50 = load i32, i32* @BGE_RDC_MODE, align 4
  %51 = load i32, i32* @BGE_RDCMODE_ENABLE, align 4
  %52 = call i32 @bge_stop_block(%struct.bge_softc* %49, i32 %50, i32 %51)
  %53 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %54 = load i32, i32* @BGE_RBDC_MODE, align 4
  %55 = load i32, i32* @BGE_RBDCMODE_ENABLE, align 4
  %56 = call i32 @bge_stop_block(%struct.bge_softc* %53, i32 %54, i32 %55)
  %57 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %58 = load i32, i32* @BGE_SRS_MODE, align 4
  %59 = load i32, i32* @BGE_SRSMODE_ENABLE, align 4
  %60 = call i32 @bge_stop_block(%struct.bge_softc* %57, i32 %58, i32 %59)
  %61 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %62 = load i32, i32* @BGE_SBDI_MODE, align 4
  %63 = load i32, i32* @BGE_SBDIMODE_ENABLE, align 4
  %64 = call i32 @bge_stop_block(%struct.bge_softc* %61, i32 %62, i32 %63)
  %65 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %66 = load i32, i32* @BGE_SDI_MODE, align 4
  %67 = load i32, i32* @BGE_SDIMODE_ENABLE, align 4
  %68 = call i32 @bge_stop_block(%struct.bge_softc* %65, i32 %66, i32 %67)
  %69 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %70 = load i32, i32* @BGE_RDMA_MODE, align 4
  %71 = load i32, i32* @BGE_RDMAMODE_ENABLE, align 4
  %72 = call i32 @bge_stop_block(%struct.bge_softc* %69, i32 %70, i32 %71)
  %73 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %74 = load i32, i32* @BGE_SDC_MODE, align 4
  %75 = load i32, i32* @BGE_SDCMODE_ENABLE, align 4
  %76 = call i32 @bge_stop_block(%struct.bge_softc* %73, i32 %74, i32 %75)
  %77 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %78 = call i64 @BGE_IS_5700_FAMILY(%struct.bge_softc* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %44
  %81 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %82 = load i32, i32* @BGE_DMAC_MODE, align 4
  %83 = load i32, i32* @BGE_DMACMODE_ENABLE, align 4
  %84 = call i32 @bge_stop_block(%struct.bge_softc* %81, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %80, %44
  %86 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %87 = load i32, i32* @BGE_SBDC_MODE, align 4
  %88 = load i32, i32* @BGE_SBDCMODE_ENABLE, align 4
  %89 = call i32 @bge_stop_block(%struct.bge_softc* %86, i32 %87, i32 %88)
  %90 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %91 = load i32, i32* @BGE_HCC_MODE, align 4
  %92 = load i32, i32* @BGE_HCCMODE_ENABLE, align 4
  %93 = call i32 @bge_stop_block(%struct.bge_softc* %90, i32 %91, i32 %92)
  %94 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %95 = load i32, i32* @BGE_WDMA_MODE, align 4
  %96 = load i32, i32* @BGE_WDMAMODE_ENABLE, align 4
  %97 = call i32 @bge_stop_block(%struct.bge_softc* %94, i32 %95, i32 %96)
  %98 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %99 = call i64 @BGE_IS_5700_FAMILY(%struct.bge_softc* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %85
  %102 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %103 = load i32, i32* @BGE_MBCF_MODE, align 4
  %104 = load i32, i32* @BGE_MBCFMODE_ENABLE, align 4
  %105 = call i32 @bge_stop_block(%struct.bge_softc* %102, i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %101, %85
  %107 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %108 = load i32, i32* @BGE_FTQ_RESET, align 4
  %109 = call i32 @CSR_WRITE_4(%struct.bge_softc* %107, i32 %108, i32 -1)
  %110 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %111 = load i32, i32* @BGE_FTQ_RESET, align 4
  %112 = call i32 @CSR_WRITE_4(%struct.bge_softc* %110, i32 %111, i32 0)
  %113 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %114 = call i64 @BGE_IS_5705_PLUS(%struct.bge_softc* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %125, label %116

116:                                              ; preds = %106
  %117 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %118 = load i32, i32* @BGE_BMAN_MODE, align 4
  %119 = load i32, i32* @BGE_BMANMODE_ENABLE, align 4
  %120 = call i32 @BGE_CLRBIT(%struct.bge_softc* %117, i32 %118, i32 %119)
  %121 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %122 = load i32, i32* @BGE_MARB_MODE, align 4
  %123 = load i32, i32* @BGE_MARBMODE_ENABLE, align 4
  %124 = call i32 @BGE_CLRBIT(%struct.bge_softc* %121, i32 %122, i32 %123)
  br label %125

125:                                              ; preds = %116, %106
  %126 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %127 = call i64 @BGE_IS_5705_PLUS(%struct.bge_softc* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %125
  %130 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %131 = call i32 @bge_stats_update_regs(%struct.bge_softc* %130)
  br label %132

132:                                              ; preds = %129, %125
  %133 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %134 = call i32 @bge_reset(%struct.bge_softc* %133)
  %135 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %136 = load i32, i32* @BGE_RESET_SHUTDOWN, align 4
  %137 = call i32 @bge_sig_legacy(%struct.bge_softc* %135, i32 %136)
  %138 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %139 = load i32, i32* @BGE_RESET_SHUTDOWN, align 4
  %140 = call i32 @bge_sig_post_reset(%struct.bge_softc* %138, i32 %139)
  %141 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %142 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @ASF_STACKUP, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %132
  %148 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %149 = load i32, i32* @BGE_MODE_CTL, align 4
  %150 = load i32, i32* @BGE_MODECTL_STACKUP, align 4
  %151 = call i32 @BGE_SETBIT(%struct.bge_softc* %148, i32 %149, i32 %150)
  br label %157

152:                                              ; preds = %132
  %153 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %154 = load i32, i32* @BGE_MODE_CTL, align 4
  %155 = load i32, i32* @BGE_MODECTL_STACKUP, align 4
  %156 = call i32 @BGE_CLRBIT(%struct.bge_softc* %153, i32 %154, i32 %155)
  br label %157

157:                                              ; preds = %152, %147
  %158 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %159 = call i32 @bge_free_rx_ring_std(%struct.bge_softc* %158)
  %160 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %161 = call i64 @BGE_IS_JUMBO_CAPABLE(%struct.bge_softc* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %157
  %164 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %165 = call i32 @bge_free_rx_ring_jumbo(%struct.bge_softc* %164)
  br label %166

166:                                              ; preds = %163, %157
  %167 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %168 = call i32 @bge_free_tx_ring(%struct.bge_softc* %167)
  %169 = load i32, i32* @BGE_TXCONS_UNSET, align 4
  %170 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %171 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %170, i32 0, i32 3
  store i32 %169, i32* %171, align 4
  %172 = load i64, i64* @bootverbose, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %184

174:                                              ; preds = %166
  %175 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %176 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %174
  %180 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %181 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @if_printf(i32 %182, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %184

184:                                              ; preds = %179, %174, %166
  %185 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %186 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %185, i32 0, i32 1
  store i64 0, i64* %186, align 8
  %187 = load i32, i32* %3, align 4
  %188 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %189 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %190 = or i32 %188, %189
  %191 = call i32 @if_setdrvflagbits(i32 %187, i32 0, i32 %190)
  ret void
}

declare dso_local i32 @BGE_LOCK_ASSERT(%struct.bge_softc*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @BGE_SETBIT(%struct.bge_softc*, i32, i32) #1

declare dso_local i32 @bge_writembx(%struct.bge_softc*, i32, i32) #1

declare dso_local i32 @bge_stop_fw(%struct.bge_softc*) #1

declare dso_local i32 @bge_sig_pre_reset(%struct.bge_softc*, i32) #1

declare dso_local i32 @bge_stop_block(%struct.bge_softc*, i32, i32) #1

declare dso_local i64 @BGE_IS_5700_FAMILY(%struct.bge_softc*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.bge_softc*, i32, i32) #1

declare dso_local i64 @BGE_IS_5705_PLUS(%struct.bge_softc*) #1

declare dso_local i32 @BGE_CLRBIT(%struct.bge_softc*, i32, i32) #1

declare dso_local i32 @bge_stats_update_regs(%struct.bge_softc*) #1

declare dso_local i32 @bge_reset(%struct.bge_softc*) #1

declare dso_local i32 @bge_sig_legacy(%struct.bge_softc*, i32) #1

declare dso_local i32 @bge_sig_post_reset(%struct.bge_softc*, i32) #1

declare dso_local i32 @bge_free_rx_ring_std(%struct.bge_softc*) #1

declare dso_local i64 @BGE_IS_JUMBO_CAPABLE(%struct.bge_softc*) #1

declare dso_local i32 @bge_free_rx_ring_jumbo(%struct.bge_softc*) #1

declare dso_local i32 @bge_free_tx_ring(%struct.bge_softc*) #1

declare dso_local i32 @if_printf(i32, i8*) #1

declare dso_local i32 @if_setdrvflagbits(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
