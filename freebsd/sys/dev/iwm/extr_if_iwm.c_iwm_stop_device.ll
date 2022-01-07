; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_stop_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_stop_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_softc = type { %struct.TYPE_2__*, i32*, i32, i32, i32, i64, %struct.ieee80211com }
%struct.TYPE_2__ = type { i64 }
%struct.ieee80211com = type { i32 }
%struct.ieee80211vap = type { i32 }
%struct.iwm_vap = type { i64, i32* }

@IWM_FLAG_TE_ACTIVE = common dso_local global i32 0, align 4
@IWM_FLAG_USE_ICT = common dso_local global i32 0, align 4
@IWM_SCD_TXFACT = common dso_local global i32 0, align 4
@IWM_FH_TCSR_CHNL_NUM = common dso_local global i32 0, align 4
@IWM_FH_TSSR_TX_STATUS_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Failing on timeout while stopping DMA channel: [0x%08x]\0A\00", align 1
@IWM_DEVICE_FAMILY_7000 = common dso_local global i64 0, align 8
@IWM_APMG_CLK_DIS_REG = common dso_local global i32 0, align 4
@IWM_APMG_CLK_VAL_DMA_CLK_RQT = common dso_local global i32 0, align 4
@IWM_CSR_GP_CNTRL = common dso_local global i32 0, align 4
@IWM_CSR_GP_CNTRL_REG_FLAG_MAC_ACCESS_REQ = common dso_local global i32 0, align 4
@IWM_CSR_RESET = common dso_local global i32 0, align 4
@IWM_CSR_RESET_REG_FLAG_SW_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwm_softc*)* @iwm_stop_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwm_stop_device(%struct.iwm_softc* %0) #0 {
  %2 = alloca %struct.iwm_softc*, align 8
  %3 = alloca %struct.ieee80211com*, align 8
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.iwm_vap*, align 8
  store %struct.iwm_softc* %0, %struct.iwm_softc** %2, align 8
  %9 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %10 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %9, i32 0, i32 6
  store %struct.ieee80211com* %10, %struct.ieee80211com** %3, align 8
  %11 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %12 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %11, i32 0, i32 0
  %13 = call %struct.ieee80211vap* @TAILQ_FIRST(i32* %12)
  store %struct.ieee80211vap* %13, %struct.ieee80211vap** %4, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %15 = call i32 @iwm_disable_interrupts(%struct.iwm_softc* %14)
  %16 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %17 = icmp ne %struct.ieee80211vap* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %20 = call %struct.iwm_vap* @IWM_VAP(%struct.ieee80211vap* %19)
  store %struct.iwm_vap* %20, %struct.iwm_vap** %8, align 8
  %21 = load %struct.iwm_vap*, %struct.iwm_vap** %8, align 8
  %22 = getelementptr inbounds %struct.iwm_vap, %struct.iwm_vap* %21, i32 0, i32 1
  store i32* null, i32** %22, align 8
  %23 = load %struct.iwm_vap*, %struct.iwm_vap** %8, align 8
  %24 = getelementptr inbounds %struct.iwm_vap, %struct.iwm_vap* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  br label %25

25:                                               ; preds = %18, %1
  %26 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %27 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %26, i32 0, i32 5
  store i64 0, i64* %27, align 8
  %28 = load i32, i32* @IWM_FLAG_TE_ACTIVE, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %31 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = load i32, i32* @IWM_FLAG_USE_ICT, align 4
  %35 = xor i32 %34, -1
  %36 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %37 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 8
  %40 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %41 = call i64 @iwm_nic_lock(%struct.iwm_softc* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %81

43:                                               ; preds = %25
  %44 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %45 = load i32, i32* @IWM_SCD_TXFACT, align 4
  %46 = call i32 @iwm_write_prph(%struct.iwm_softc* %44, i32 %45, i32 0)
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %60, %43
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @IWM_FH_TCSR_CHNL_NUM, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %47
  %52 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @IWM_FH_TCSR_CHNL_TX_CONFIG_REG(i32 %53)
  %55 = call i32 @IWM_WRITE(%struct.iwm_softc* %52, i32 %54, i32 0)
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @IWM_FH_TSSR_TX_STATUS_REG_MSK_CHNL_IDLE(i32 %56)
  %58 = load i32, i32* %7, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %51
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %47

63:                                               ; preds = %47
  %64 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %65 = load i32, i32* @IWM_FH_TSSR_TX_STATUS_REG, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @iwm_poll_bit(%struct.iwm_softc* %64, i32 %65, i32 %66, i32 %67, i32 5000)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %78, label %70

70:                                               ; preds = %63
  %71 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %72 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %75 = load i32, i32* @IWM_FH_TSSR_TX_STATUS_REG, align 4
  %76 = call i32 @IWM_READ(%struct.iwm_softc* %74, i32 %75)
  %77 = call i32 @device_printf(i32 %73, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %76)
  br label %78

78:                                               ; preds = %70, %63
  %79 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %80 = call i32 @iwm_nic_unlock(%struct.iwm_softc* %79)
  br label %81

81:                                               ; preds = %78, %25
  %82 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %83 = call i32 @iwm_pcie_rx_stop(%struct.iwm_softc* %82)
  %84 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %85 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %86 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %85, i32 0, i32 2
  %87 = call i32 @iwm_reset_rx_ring(%struct.iwm_softc* %84, i32* %86)
  store i32 0, i32* %6, align 4
  br label %88

88:                                               ; preds = %104, %81
  %89 = load i32, i32* %6, align 4
  %90 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %91 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 @nitems(i32* %92)
  %94 = icmp slt i32 %89, %93
  br i1 %94, label %95, label %107

95:                                               ; preds = %88
  %96 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %97 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %98 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %6, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = call i32 @iwm_reset_tx_ring(%struct.iwm_softc* %96, i32* %102)
  br label %104

104:                                              ; preds = %95
  %105 = load i32, i32* %6, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %6, align 4
  br label %88

107:                                              ; preds = %88
  %108 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %109 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %108, i32 0, i32 0
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @IWM_DEVICE_FAMILY_7000, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %128

115:                                              ; preds = %107
  %116 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %117 = call i64 @iwm_nic_lock(%struct.iwm_softc* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %115
  %120 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %121 = load i32, i32* @IWM_APMG_CLK_DIS_REG, align 4
  %122 = load i32, i32* @IWM_APMG_CLK_VAL_DMA_CLK_RQT, align 4
  %123 = call i32 @iwm_write_prph(%struct.iwm_softc* %120, i32 %121, i32 %122)
  %124 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %125 = call i32 @iwm_nic_unlock(%struct.iwm_softc* %124)
  br label %126

126:                                              ; preds = %119, %115
  %127 = call i32 @DELAY(i32 5)
  br label %128

128:                                              ; preds = %126, %107
  %129 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %130 = load i32, i32* @IWM_CSR_GP_CNTRL, align 4
  %131 = load i32, i32* @IWM_CSR_GP_CNTRL_REG_FLAG_MAC_ACCESS_REQ, align 4
  %132 = call i32 @IWM_CLRBITS(%struct.iwm_softc* %129, i32 %130, i32 %131)
  %133 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %134 = call i32 @iwm_apm_stop(%struct.iwm_softc* %133)
  %135 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %136 = load i32, i32* @IWM_CSR_RESET, align 4
  %137 = load i32, i32* @IWM_CSR_RESET_REG_FLAG_SW_RESET, align 4
  %138 = call i32 @IWM_SETBITS(%struct.iwm_softc* %135, i32 %136, i32 %137)
  %139 = call i32 @DELAY(i32 5000)
  %140 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %141 = call i32 @iwm_disable_interrupts(%struct.iwm_softc* %140)
  %142 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %143 = call i32 @iwm_enable_rfkill_int(%struct.iwm_softc* %142)
  %144 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %145 = call i32 @iwm_check_rfkill(%struct.iwm_softc* %144)
  %146 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %147 = call i32 @iwm_prepare_card_hw(%struct.iwm_softc* %146)
  ret void
}

declare dso_local %struct.ieee80211vap* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @iwm_disable_interrupts(%struct.iwm_softc*) #1

declare dso_local %struct.iwm_vap* @IWM_VAP(%struct.ieee80211vap*) #1

declare dso_local i64 @iwm_nic_lock(%struct.iwm_softc*) #1

declare dso_local i32 @iwm_write_prph(%struct.iwm_softc*, i32, i32) #1

declare dso_local i32 @IWM_WRITE(%struct.iwm_softc*, i32, i32) #1

declare dso_local i32 @IWM_FH_TCSR_CHNL_TX_CONFIG_REG(i32) #1

declare dso_local i32 @IWM_FH_TSSR_TX_STATUS_REG_MSK_CHNL_IDLE(i32) #1

declare dso_local i32 @iwm_poll_bit(%struct.iwm_softc*, i32, i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @IWM_READ(%struct.iwm_softc*, i32) #1

declare dso_local i32 @iwm_nic_unlock(%struct.iwm_softc*) #1

declare dso_local i32 @iwm_pcie_rx_stop(%struct.iwm_softc*) #1

declare dso_local i32 @iwm_reset_rx_ring(%struct.iwm_softc*, i32*) #1

declare dso_local i32 @nitems(i32*) #1

declare dso_local i32 @iwm_reset_tx_ring(%struct.iwm_softc*, i32*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @IWM_CLRBITS(%struct.iwm_softc*, i32, i32) #1

declare dso_local i32 @iwm_apm_stop(%struct.iwm_softc*) #1

declare dso_local i32 @IWM_SETBITS(%struct.iwm_softc*, i32, i32) #1

declare dso_local i32 @iwm_enable_rfkill_int(%struct.iwm_softc*) #1

declare dso_local i32 @iwm_check_rfkill(%struct.iwm_softc*) #1

declare dso_local i32 @iwm_prepare_card_hw(%struct.iwm_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
