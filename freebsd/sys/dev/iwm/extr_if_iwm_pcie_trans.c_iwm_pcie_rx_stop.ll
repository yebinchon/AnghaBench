; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_pcie_trans.c_iwm_pcie_rx_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_pcie_trans.c_iwm_pcie_rx_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@IWM_RFH_RXF_DMA_CFG = common dso_local global i32 0, align 4
@IWM_RFH_GEN_STATUS = common dso_local global i32 0, align 4
@IWM_RXF_DMA_IDLE = common dso_local global i32 0, align 4
@IWM_FH_MEM_RCSR_CHNL0_CONFIG_REG = common dso_local global i32 0, align 4
@IWM_FH_MEM_RSSR_RX_STATUS_REG = common dso_local global i32 0, align 4
@IWM_FH_RSSR_CHNL0_RX_STATUS_CHNL_IDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwm_pcie_rx_stop(%struct.iwm_softc* %0) #0 {
  %2 = alloca %struct.iwm_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.iwm_softc* %0, %struct.iwm_softc** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %5 = call i64 @iwm_nic_lock(%struct.iwm_softc* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %35

7:                                                ; preds = %1
  %8 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %9 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %7
  %15 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %16 = load i32, i32* @IWM_RFH_RXF_DMA_CFG, align 4
  %17 = call i32 @iwm_write_prph(%struct.iwm_softc* %15, i32 %16, i32 0)
  %18 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %19 = load i32, i32* @IWM_RFH_GEN_STATUS, align 4
  %20 = load i32, i32* @IWM_RXF_DMA_IDLE, align 4
  %21 = load i32, i32* @IWM_RXF_DMA_IDLE, align 4
  %22 = call i32 @iwm_poll_prph(%struct.iwm_softc* %18, i32 %19, i32 %20, i32 %21, i32 1000)
  store i32 %22, i32* %3, align 4
  br label %32

23:                                               ; preds = %7
  %24 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %25 = load i32, i32* @IWM_FH_MEM_RCSR_CHNL0_CONFIG_REG, align 4
  %26 = call i32 @IWM_WRITE(%struct.iwm_softc* %24, i32 %25, i32 0)
  %27 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %28 = load i32, i32* @IWM_FH_MEM_RSSR_RX_STATUS_REG, align 4
  %29 = load i32, i32* @IWM_FH_RSSR_CHNL0_RX_STATUS_CHNL_IDLE, align 4
  %30 = load i32, i32* @IWM_FH_RSSR_CHNL0_RX_STATUS_CHNL_IDLE, align 4
  %31 = call i32 @iwm_poll_bit(%struct.iwm_softc* %27, i32 %28, i32 %29, i32 %30, i32 1000)
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %23, %14
  %33 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %34 = call i32 @iwm_nic_unlock(%struct.iwm_softc* %33)
  br label %35

35:                                               ; preds = %32, %1
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i64 @iwm_nic_lock(%struct.iwm_softc*) #1

declare dso_local i32 @iwm_write_prph(%struct.iwm_softc*, i32, i32) #1

declare dso_local i32 @iwm_poll_prph(%struct.iwm_softc*, i32, i32, i32, i32) #1

declare dso_local i32 @IWM_WRITE(%struct.iwm_softc*, i32, i32) #1

declare dso_local i32 @iwm_poll_bit(%struct.iwm_softc*, i32, i32, i32, i32) #1

declare dso_local i32 @iwm_nic_unlock(%struct.iwm_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
