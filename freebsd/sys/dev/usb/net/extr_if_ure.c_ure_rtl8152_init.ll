; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_ure.c_ure_rtl8152_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_ure.c_ure_rtl8152_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ure_softc = type { i32, i32 }

@URE_OCP_ALDPS_CONFIG = common dso_local global i32 0, align 4
@URE_ENPDNPS = common dso_local global i32 0, align 4
@URE_LINKENA = common dso_local global i32 0, align 4
@URE_DIS_SDSAVE = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@URE_CHIP_VER_4C00 = common dso_local global i32 0, align 4
@URE_PLA_LED_FEATURE = common dso_local global i32 0, align 4
@URE_MCU_TYPE_PLA = common dso_local global i32 0, align 4
@URE_LED_MODE_MASK = common dso_local global i32 0, align 4
@URE_USB_UPS_CTRL = common dso_local global i32 0, align 4
@URE_MCU_TYPE_USB = common dso_local global i32 0, align 4
@URE_POWER_CUT = common dso_local global i32 0, align 4
@URE_USB_PM_CTRL_STATUS = common dso_local global i32 0, align 4
@URE_RESUME_INDICATE = common dso_local global i32 0, align 4
@URE_PLA_PHY_PWR = common dso_local global i32 0, align 4
@URE_TX_10M_IDLE_EN = common dso_local global i32 0, align 4
@URE_PFM_PWM_SWITCH = common dso_local global i32 0, align 4
@URE_PLA_MAC_PWR_CTRL = common dso_local global i32 0, align 4
@URE_MCU_CLK_RATIO_MASK = common dso_local global i32 0, align 4
@URE_MCU_CLK_RATIO = common dso_local global i32 0, align 4
@URE_D3_CLK_GATED_EN = common dso_local global i32 0, align 4
@URE_PLA_GPHY_INTR_IMR = common dso_local global i32 0, align 4
@URE_GPHY_STS_MSK = common dso_local global i32 0, align 4
@URE_SPEED_DOWN_MSK = common dso_local global i32 0, align 4
@URE_SPDWN_RXDV_MSK = common dso_local global i32 0, align 4
@URE_SPDWN_LINKCHG_MSK = common dso_local global i32 0, align 4
@URE_USB_USB_CTRL = common dso_local global i32 0, align 4
@URE_RX_AGG_DISABLE = common dso_local global i32 0, align 4
@URE_USB_TX_AGG = common dso_local global i32 0, align 4
@URE_TX_AGG_MAX_THRESHOLD = common dso_local global i32 0, align 4
@URE_USB_RX_BUF_TH = common dso_local global i32 0, align 4
@URE_RX_THR_HIGH = common dso_local global i32 0, align 4
@URE_USB_TX_DMA = common dso_local global i32 0, align 4
@URE_TEST_MODE_DISABLE = common dso_local global i32 0, align 4
@URE_TX_SIZE_ADJUST1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ure_softc*)* @ure_rtl8152_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ure_rtl8152_init(%struct.ure_softc* %0) #0 {
  %2 = alloca %struct.ure_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.ure_softc* %0, %struct.ure_softc** %2, align 8
  %4 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %5 = load i32, i32* @URE_OCP_ALDPS_CONFIG, align 4
  %6 = load i32, i32* @URE_ENPDNPS, align 4
  %7 = load i32, i32* @URE_LINKENA, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @URE_DIS_SDSAVE, align 4
  %10 = or i32 %8, %9
  %11 = call i32 @ure_ocp_reg_write(%struct.ure_softc* %4, i32 %5, i32 %10)
  %12 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %13 = getelementptr inbounds %struct.ure_softc, %struct.ure_softc* %12, i32 0, i32 1
  %14 = load i32, i32* @hz, align 4
  %15 = sdiv i32 %14, 50
  %16 = call i32 @uether_pause(i32* %13, i32 %15)
  %17 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %18 = getelementptr inbounds %struct.ure_softc, %struct.ure_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @URE_CHIP_VER_4C00, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %1
  %24 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %25 = load i32, i32* @URE_PLA_LED_FEATURE, align 4
  %26 = load i32, i32* @URE_MCU_TYPE_PLA, align 4
  %27 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %28 = load i32, i32* @URE_PLA_LED_FEATURE, align 4
  %29 = load i32, i32* @URE_MCU_TYPE_PLA, align 4
  %30 = call i32 @ure_read_2(%struct.ure_softc* %27, i32 %28, i32 %29)
  %31 = load i32, i32* @URE_LED_MODE_MASK, align 4
  %32 = xor i32 %31, -1
  %33 = and i32 %30, %32
  %34 = call i32 @ure_write_2(%struct.ure_softc* %24, i32 %25, i32 %26, i32 %33)
  br label %35

35:                                               ; preds = %23, %1
  %36 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %37 = load i32, i32* @URE_USB_UPS_CTRL, align 4
  %38 = load i32, i32* @URE_MCU_TYPE_USB, align 4
  %39 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %40 = load i32, i32* @URE_USB_UPS_CTRL, align 4
  %41 = load i32, i32* @URE_MCU_TYPE_USB, align 4
  %42 = call i32 @ure_read_2(%struct.ure_softc* %39, i32 %40, i32 %41)
  %43 = load i32, i32* @URE_POWER_CUT, align 4
  %44 = xor i32 %43, -1
  %45 = and i32 %42, %44
  %46 = call i32 @ure_write_2(%struct.ure_softc* %36, i32 %37, i32 %38, i32 %45)
  %47 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %48 = load i32, i32* @URE_USB_PM_CTRL_STATUS, align 4
  %49 = load i32, i32* @URE_MCU_TYPE_USB, align 4
  %50 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %51 = load i32, i32* @URE_USB_PM_CTRL_STATUS, align 4
  %52 = load i32, i32* @URE_MCU_TYPE_USB, align 4
  %53 = call i32 @ure_read_2(%struct.ure_softc* %50, i32 %51, i32 %52)
  %54 = load i32, i32* @URE_RESUME_INDICATE, align 4
  %55 = xor i32 %54, -1
  %56 = and i32 %53, %55
  %57 = call i32 @ure_write_2(%struct.ure_softc* %47, i32 %48, i32 %49, i32 %56)
  %58 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %59 = load i32, i32* @URE_PLA_PHY_PWR, align 4
  %60 = load i32, i32* @URE_MCU_TYPE_PLA, align 4
  %61 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %62 = load i32, i32* @URE_PLA_PHY_PWR, align 4
  %63 = load i32, i32* @URE_MCU_TYPE_PLA, align 4
  %64 = call i32 @ure_read_2(%struct.ure_softc* %61, i32 %62, i32 %63)
  %65 = load i32, i32* @URE_TX_10M_IDLE_EN, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @URE_PFM_PWM_SWITCH, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @ure_write_2(%struct.ure_softc* %58, i32 %59, i32 %60, i32 %68)
  %70 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %71 = load i32, i32* @URE_PLA_MAC_PWR_CTRL, align 4
  %72 = load i32, i32* @URE_MCU_TYPE_PLA, align 4
  %73 = call i32 @ure_read_4(%struct.ure_softc* %70, i32 %71, i32 %72)
  store i32 %73, i32* %3, align 4
  %74 = load i32, i32* @URE_MCU_CLK_RATIO_MASK, align 4
  %75 = xor i32 %74, -1
  %76 = load i32, i32* %3, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %3, align 4
  %78 = load i32, i32* @URE_MCU_CLK_RATIO, align 4
  %79 = load i32, i32* @URE_D3_CLK_GATED_EN, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* %3, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %3, align 4
  %83 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %84 = load i32, i32* @URE_PLA_MAC_PWR_CTRL, align 4
  %85 = load i32, i32* @URE_MCU_TYPE_PLA, align 4
  %86 = load i32, i32* %3, align 4
  %87 = call i32 @ure_write_4(%struct.ure_softc* %83, i32 %84, i32 %85, i32 %86)
  %88 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %89 = load i32, i32* @URE_PLA_GPHY_INTR_IMR, align 4
  %90 = load i32, i32* @URE_MCU_TYPE_PLA, align 4
  %91 = load i32, i32* @URE_GPHY_STS_MSK, align 4
  %92 = load i32, i32* @URE_SPEED_DOWN_MSK, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @URE_SPDWN_RXDV_MSK, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @URE_SPDWN_LINKCHG_MSK, align 4
  %97 = or i32 %95, %96
  %98 = call i32 @ure_write_2(%struct.ure_softc* %88, i32 %89, i32 %90, i32 %97)
  %99 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %100 = load i32, i32* @URE_USB_USB_CTRL, align 4
  %101 = load i32, i32* @URE_MCU_TYPE_USB, align 4
  %102 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %103 = load i32, i32* @URE_USB_USB_CTRL, align 4
  %104 = load i32, i32* @URE_MCU_TYPE_USB, align 4
  %105 = call i32 @ure_read_2(%struct.ure_softc* %102, i32 %103, i32 %104)
  %106 = load i32, i32* @URE_RX_AGG_DISABLE, align 4
  %107 = or i32 %105, %106
  %108 = call i32 @ure_write_2(%struct.ure_softc* %99, i32 %100, i32 %101, i32 %107)
  %109 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %110 = load i32, i32* @URE_OCP_ALDPS_CONFIG, align 4
  %111 = load i32, i32* @URE_ENPDNPS, align 4
  %112 = load i32, i32* @URE_LINKENA, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @URE_DIS_SDSAVE, align 4
  %115 = or i32 %113, %114
  %116 = call i32 @ure_ocp_reg_write(%struct.ure_softc* %109, i32 %110, i32 %115)
  %117 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %118 = getelementptr inbounds %struct.ure_softc, %struct.ure_softc* %117, i32 0, i32 1
  %119 = load i32, i32* @hz, align 4
  %120 = sdiv i32 %119, 50
  %121 = call i32 @uether_pause(i32* %118, i32 %120)
  %122 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %123 = call i32 @ure_init_fifo(%struct.ure_softc* %122)
  %124 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %125 = load i32, i32* @URE_USB_TX_AGG, align 4
  %126 = load i32, i32* @URE_MCU_TYPE_USB, align 4
  %127 = load i32, i32* @URE_TX_AGG_MAX_THRESHOLD, align 4
  %128 = call i32 @ure_write_1(%struct.ure_softc* %124, i32 %125, i32 %126, i32 %127)
  %129 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %130 = load i32, i32* @URE_USB_RX_BUF_TH, align 4
  %131 = load i32, i32* @URE_MCU_TYPE_USB, align 4
  %132 = load i32, i32* @URE_RX_THR_HIGH, align 4
  %133 = call i32 @ure_write_4(%struct.ure_softc* %129, i32 %130, i32 %131, i32 %132)
  %134 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %135 = load i32, i32* @URE_USB_TX_DMA, align 4
  %136 = load i32, i32* @URE_MCU_TYPE_USB, align 4
  %137 = load i32, i32* @URE_TEST_MODE_DISABLE, align 4
  %138 = load i32, i32* @URE_TX_SIZE_ADJUST1, align 4
  %139 = or i32 %137, %138
  %140 = call i32 @ure_write_4(%struct.ure_softc* %134, i32 %135, i32 %136, i32 %139)
  ret void
}

declare dso_local i32 @ure_ocp_reg_write(%struct.ure_softc*, i32, i32) #1

declare dso_local i32 @uether_pause(i32*, i32) #1

declare dso_local i32 @ure_write_2(%struct.ure_softc*, i32, i32, i32) #1

declare dso_local i32 @ure_read_2(%struct.ure_softc*, i32, i32) #1

declare dso_local i32 @ure_read_4(%struct.ure_softc*, i32, i32) #1

declare dso_local i32 @ure_write_4(%struct.ure_softc*, i32, i32, i32) #1

declare dso_local i32 @ure_init_fifo(%struct.ure_softc*) #1

declare dso_local i32 @ure_write_1(%struct.ure_softc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
