; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_pcie_trans.c_iwm_apm_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_pcie_trans.c_iwm_apm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_softc = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@IWM_DEBUG_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"iwm apm start\0A\00", align 1
@IWM_DEVICE_FAMILY_8000 = common dso_local global i64 0, align 8
@IWM_CSR_GIO_CHICKEN_BITS = common dso_local global i32 0, align 4
@IWM_CSR_GIO_CHICKEN_BITS_REG_BIT_DIS_L0S_EXIT_TIMER = common dso_local global i64 0, align 8
@IWM_CSR_GIO_CHICKEN_BITS_REG_BIT_L1A_NO_L0S_RX = common dso_local global i64 0, align 8
@IWM_CSR_DBG_HPET_MEM_REG = common dso_local global i32 0, align 4
@IWM_CSR_DBG_HPET_MEM_REG_VAL = common dso_local global i64 0, align 8
@IWM_CSR_HW_IF_CONFIG_REG = common dso_local global i32 0, align 4
@IWM_CSR_HW_IF_CONFIG_REG_BIT_HAP_WAKE_L1A = common dso_local global i64 0, align 8
@IWM_CSR_GP_CNTRL = common dso_local global i32 0, align 4
@IWM_CSR_GP_CNTRL_REG_FLAG_INIT_DONE = common dso_local global i64 0, align 8
@IWM_CSR_GP_CNTRL_REG_FLAG_MAC_CLOCK_READY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"timeout waiting for clock stabilization\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@IWM_OSC_CLK = common dso_local global i32 0, align 4
@IWM_OSC_CLK_FORCE_CONTROL = common dso_local global i32 0, align 4
@IWM_DEVICE_FAMILY_7000 = common dso_local global i64 0, align 8
@IWM_APMG_CLK_EN_REG = common dso_local global i32 0, align 4
@IWM_APMG_CLK_VAL_DMA_CLK_RQT = common dso_local global i32 0, align 4
@IWM_APMG_PCIDEV_STT_REG = common dso_local global i32 0, align 4
@IWM_APMG_PCIDEV_STT_VAL_L1_ACT_DIS = common dso_local global i32 0, align 4
@IWM_APMG_RTC_INT_STT_REG = common dso_local global i32 0, align 4
@IWM_APMG_RTC_INT_STT_RFKILL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"apm init error %d\0A\00", align 1
@IWM_CSR_ANA_PLL_CFG = common dso_local global i32 0, align 4
@trans = common dso_local global %struct.iwm_softc* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwm_apm_init(%struct.iwm_softc* %0) #0 {
  %2 = alloca %struct.iwm_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.iwm_softc* %0, %struct.iwm_softc** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %5 = load i32, i32* @IWM_DEBUG_RESET, align 4
  %6 = call i32 @IWM_DPRINTF(%struct.iwm_softc* %4, i32 %5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %8 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @IWM_DEVICE_FAMILY_8000, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %16 = load i32, i32* @IWM_CSR_GIO_CHICKEN_BITS, align 4
  %17 = load i64, i64* @IWM_CSR_GIO_CHICKEN_BITS_REG_BIT_DIS_L0S_EXIT_TIMER, align 8
  %18 = call i32 @IWM_SETBITS(%struct.iwm_softc* %15, i32 %16, i64 %17)
  br label %19

19:                                               ; preds = %14, %1
  %20 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %21 = load i32, i32* @IWM_CSR_GIO_CHICKEN_BITS, align 4
  %22 = load i64, i64* @IWM_CSR_GIO_CHICKEN_BITS_REG_BIT_L1A_NO_L0S_RX, align 8
  %23 = call i32 @IWM_SETBITS(%struct.iwm_softc* %20, i32 %21, i64 %22)
  %24 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %25 = load i32, i32* @IWM_CSR_DBG_HPET_MEM_REG, align 4
  %26 = load i64, i64* @IWM_CSR_DBG_HPET_MEM_REG_VAL, align 8
  %27 = call i32 @IWM_SETBITS(%struct.iwm_softc* %24, i32 %25, i64 %26)
  %28 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %29 = load i32, i32* @IWM_CSR_HW_IF_CONFIG_REG, align 4
  %30 = load i64, i64* @IWM_CSR_HW_IF_CONFIG_REG_BIT_HAP_WAKE_L1A, align 8
  %31 = call i32 @IWM_SETBITS(%struct.iwm_softc* %28, i32 %29, i64 %30)
  %32 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %33 = call i32 @iwm_apm_config(%struct.iwm_softc* %32)
  %34 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %35 = load i32, i32* @IWM_CSR_GP_CNTRL, align 4
  %36 = load i64, i64* @IWM_CSR_GP_CNTRL_REG_FLAG_INIT_DONE, align 8
  %37 = call i32 @IWM_SETBITS(%struct.iwm_softc* %34, i32 %35, i64 %36)
  %38 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %39 = load i32, i32* @IWM_CSR_GP_CNTRL, align 4
  %40 = load i32, i32* @IWM_CSR_GP_CNTRL_REG_FLAG_MAC_CLOCK_READY, align 4
  %41 = load i32, i32* @IWM_CSR_GP_CNTRL_REG_FLAG_MAC_CLOCK_READY, align 4
  %42 = call i32 @iwm_poll_bit(%struct.iwm_softc* %38, i32 %39, i32 %40, i32 %41, i32 25000)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %19
  %45 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %46 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 (i32, i8*, ...) @device_printf(i32 %47, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %49, i32* %3, align 4
  br label %125

50:                                               ; preds = %19
  %51 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %52 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %88

57:                                               ; preds = %50
  %58 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %59 = call i64 @iwm_nic_lock(%struct.iwm_softc* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %57
  %62 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %63 = load i32, i32* @IWM_OSC_CLK, align 4
  %64 = call i32 @iwm_read_prph(%struct.iwm_softc* %62, i32 %63)
  %65 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %66 = load i32, i32* @IWM_OSC_CLK, align 4
  %67 = call i32 @iwm_read_prph(%struct.iwm_softc* %65, i32 %66)
  %68 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %69 = call i32 @iwm_nic_unlock(%struct.iwm_softc* %68)
  br label %70

70:                                               ; preds = %61, %57
  %71 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %72 = load i32, i32* @IWM_OSC_CLK, align 4
  %73 = load i32, i32* @IWM_OSC_CLK_FORCE_CONTROL, align 4
  %74 = call i32 @iwm_set_bits_prph(%struct.iwm_softc* %71, i32 %72, i32 %73)
  %75 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %76 = call i64 @iwm_nic_lock(%struct.iwm_softc* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %70
  %79 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %80 = load i32, i32* @IWM_OSC_CLK, align 4
  %81 = call i32 @iwm_read_prph(%struct.iwm_softc* %79, i32 %80)
  %82 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %83 = load i32, i32* @IWM_OSC_CLK, align 4
  %84 = call i32 @iwm_read_prph(%struct.iwm_softc* %82, i32 %83)
  %85 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %86 = call i32 @iwm_nic_unlock(%struct.iwm_softc* %85)
  br label %87

87:                                               ; preds = %78, %70
  br label %88

88:                                               ; preds = %87, %50
  %89 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %90 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %89, i32 0, i32 1
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @IWM_DEVICE_FAMILY_7000, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %124

96:                                               ; preds = %88
  %97 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %98 = call i64 @iwm_nic_lock(%struct.iwm_softc* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %96
  %101 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %102 = load i32, i32* @IWM_APMG_CLK_EN_REG, align 4
  %103 = load i32, i32* @IWM_APMG_CLK_VAL_DMA_CLK_RQT, align 4
  %104 = call i32 @iwm_write_prph(%struct.iwm_softc* %101, i32 %102, i32 %103)
  %105 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %106 = call i32 @iwm_nic_unlock(%struct.iwm_softc* %105)
  br label %107

107:                                              ; preds = %100, %96
  %108 = call i32 @DELAY(i32 20)
  %109 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %110 = load i32, i32* @IWM_APMG_PCIDEV_STT_REG, align 4
  %111 = load i32, i32* @IWM_APMG_PCIDEV_STT_VAL_L1_ACT_DIS, align 4
  %112 = call i32 @iwm_set_bits_prph(%struct.iwm_softc* %109, i32 %110, i32 %111)
  %113 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %114 = call i64 @iwm_nic_lock(%struct.iwm_softc* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %107
  %117 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %118 = load i32, i32* @IWM_APMG_RTC_INT_STT_REG, align 4
  %119 = load i32, i32* @IWM_APMG_RTC_INT_STT_RFKILL, align 4
  %120 = call i32 @iwm_write_prph(%struct.iwm_softc* %117, i32 %118, i32 %119)
  %121 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %122 = call i32 @iwm_nic_unlock(%struct.iwm_softc* %121)
  br label %123

123:                                              ; preds = %116, %107
  br label %124

124:                                              ; preds = %123, %88
  br label %125

125:                                              ; preds = %124, %44
  %126 = load i32, i32* %3, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %125
  %129 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %130 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* %3, align 4
  %133 = call i32 (i32, i8*, ...) @device_printf(i32 %131, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %132)
  br label %134

134:                                              ; preds = %128, %125
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local i32 @IWM_DPRINTF(%struct.iwm_softc*, i32, i8*) #1

declare dso_local i32 @IWM_SETBITS(%struct.iwm_softc*, i32, i64) #1

declare dso_local i32 @iwm_apm_config(%struct.iwm_softc*) #1

declare dso_local i32 @iwm_poll_bit(%struct.iwm_softc*, i32, i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i64 @iwm_nic_lock(%struct.iwm_softc*) #1

declare dso_local i32 @iwm_read_prph(%struct.iwm_softc*, i32) #1

declare dso_local i32 @iwm_nic_unlock(%struct.iwm_softc*) #1

declare dso_local i32 @iwm_set_bits_prph(%struct.iwm_softc*, i32, i32) #1

declare dso_local i32 @iwm_write_prph(%struct.iwm_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
