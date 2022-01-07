; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_mvm_nic_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_mvm_nic_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_softc = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@IWM_FW_PHY_CFG_RADIO_TYPE = common dso_local global i32 0, align 4
@IWM_FW_PHY_CFG_RADIO_TYPE_POS = common dso_local global i32 0, align 4
@IWM_FW_PHY_CFG_RADIO_STEP = common dso_local global i32 0, align 4
@IWM_FW_PHY_CFG_RADIO_STEP_POS = common dso_local global i32 0, align 4
@IWM_FW_PHY_CFG_RADIO_DASH = common dso_local global i32 0, align 4
@IWM_FW_PHY_CFG_RADIO_DASH_POS = common dso_local global i32 0, align 4
@IWM_CSR_HW_IF_CONFIG_REG_POS_MAC_STEP = common dso_local global i32 0, align 4
@IWM_CSR_HW_IF_CONFIG_REG_POS_MAC_DASH = common dso_local global i32 0, align 4
@IWM_CSR_HW_IF_CONFIG_REG_POS_PHY_TYPE = common dso_local global i32 0, align 4
@IWM_CSR_HW_IF_CONFIG_REG_POS_PHY_STEP = common dso_local global i32 0, align 4
@IWM_CSR_HW_IF_CONFIG_REG_POS_PHY_DASH = common dso_local global i32 0, align 4
@IWM_CSR_HW_IF_CONFIG_REG = common dso_local global i32 0, align 4
@IWM_CSR_HW_IF_CONFIG_REG_MSK_MAC_DASH = common dso_local global i32 0, align 4
@IWM_CSR_HW_IF_CONFIG_REG_MSK_MAC_STEP = common dso_local global i32 0, align 4
@IWM_CSR_HW_IF_CONFIG_REG_MSK_PHY_STEP = common dso_local global i32 0, align 4
@IWM_CSR_HW_IF_CONFIG_REG_MSK_PHY_DASH = common dso_local global i32 0, align 4
@IWM_CSR_HW_IF_CONFIG_REG_MSK_PHY_TYPE = common dso_local global i32 0, align 4
@IWM_CSR_HW_IF_CONFIG_REG_BIT_RADIO_SI = common dso_local global i32 0, align 4
@IWM_CSR_HW_IF_CONFIG_REG_BIT_MAC_SI = common dso_local global i32 0, align 4
@IWM_DEBUG_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Radio type=0x%x-0x%x-0x%x\0A\00", align 1
@IWM_DEVICE_FAMILY_7000 = common dso_local global i64 0, align 8
@IWM_APMG_PS_CTRL_REG = common dso_local global i32 0, align 4
@IWM_APMG_PS_CTRL_EARLY_PWR_OFF_RESET_DIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwm_softc*)* @iwm_mvm_nic_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwm_mvm_nic_config(%struct.iwm_softc* %0) #0 {
  %2 = alloca %struct.iwm_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.iwm_softc* %0, %struct.iwm_softc** %2, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %9 = call i32 @iwm_mvm_get_phy_config(%struct.iwm_softc* %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @IWM_FW_PHY_CFG_RADIO_TYPE, align 4
  %12 = and i32 %10, %11
  %13 = load i32, i32* @IWM_FW_PHY_CFG_RADIO_TYPE_POS, align 4
  %14 = ashr i32 %12, %13
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @IWM_FW_PHY_CFG_RADIO_STEP, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* @IWM_FW_PHY_CFG_RADIO_STEP_POS, align 4
  %19 = ashr i32 %17, %18
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @IWM_FW_PHY_CFG_RADIO_DASH, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* @IWM_FW_PHY_CFG_RADIO_DASH_POS, align 4
  %24 = ashr i32 %22, %23
  store i32 %24, i32* %5, align 4
  %25 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %26 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @IWM_CSR_HW_REV_STEP(i32 %27)
  %29 = load i32, i32* @IWM_CSR_HW_IF_CONFIG_REG_POS_MAC_STEP, align 4
  %30 = shl i32 %28, %29
  %31 = load i32, i32* %6, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %6, align 4
  %33 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %34 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @IWM_CSR_HW_REV_DASH(i32 %35)
  %37 = load i32, i32* @IWM_CSR_HW_IF_CONFIG_REG_POS_MAC_DASH, align 4
  %38 = shl i32 %36, %37
  %39 = load i32, i32* %6, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @IWM_CSR_HW_IF_CONFIG_REG_POS_PHY_TYPE, align 4
  %43 = shl i32 %41, %42
  %44 = load i32, i32* %6, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @IWM_CSR_HW_IF_CONFIG_REG_POS_PHY_STEP, align 4
  %48 = shl i32 %46, %47
  %49 = load i32, i32* %6, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @IWM_CSR_HW_IF_CONFIG_REG_POS_PHY_DASH, align 4
  %53 = shl i32 %51, %52
  %54 = load i32, i32* %6, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %6, align 4
  %56 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %57 = load i32, i32* @IWM_CSR_HW_IF_CONFIG_REG, align 4
  %58 = load i32, i32* @IWM_CSR_HW_IF_CONFIG_REG_MSK_MAC_DASH, align 4
  %59 = load i32, i32* @IWM_CSR_HW_IF_CONFIG_REG_MSK_MAC_STEP, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @IWM_CSR_HW_IF_CONFIG_REG_MSK_PHY_STEP, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @IWM_CSR_HW_IF_CONFIG_REG_MSK_PHY_DASH, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @IWM_CSR_HW_IF_CONFIG_REG_MSK_PHY_TYPE, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @IWM_CSR_HW_IF_CONFIG_REG_BIT_RADIO_SI, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @IWM_CSR_HW_IF_CONFIG_REG_BIT_MAC_SI, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* %6, align 4
  %72 = or i32 %70, %71
  %73 = call i32 @IWM_WRITE(%struct.iwm_softc* %56, i32 %57, i32 %72)
  %74 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %75 = load i32, i32* @IWM_DEBUG_RESET, align 4
  %76 = load i32, i32* %3, align 4
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @IWM_DPRINTF(%struct.iwm_softc* %74, i32 %75, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %76, i32 %77, i32 %78)
  %80 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %81 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @IWM_DEVICE_FAMILY_7000, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %1
  %88 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %89 = load i32, i32* @IWM_APMG_PS_CTRL_REG, align 4
  %90 = load i32, i32* @IWM_APMG_PS_CTRL_EARLY_PWR_OFF_RESET_DIS, align 4
  %91 = load i32, i32* @IWM_APMG_PS_CTRL_EARLY_PWR_OFF_RESET_DIS, align 4
  %92 = xor i32 %91, -1
  %93 = call i32 @iwm_set_bits_mask_prph(%struct.iwm_softc* %88, i32 %89, i32 %90, i32 %92)
  br label %94

94:                                               ; preds = %87, %1
  ret void
}

declare dso_local i32 @iwm_mvm_get_phy_config(%struct.iwm_softc*) #1

declare dso_local i32 @IWM_CSR_HW_REV_STEP(i32) #1

declare dso_local i32 @IWM_CSR_HW_REV_DASH(i32) #1

declare dso_local i32 @IWM_WRITE(%struct.iwm_softc*, i32, i32) #1

declare dso_local i32 @IWM_DPRINTF(%struct.iwm_softc*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @iwm_set_bits_mask_prph(%struct.iwm_softc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
