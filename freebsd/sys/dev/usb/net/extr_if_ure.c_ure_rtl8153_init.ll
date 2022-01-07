; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_ure.c_ure_rtl8153_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_ure.c_ure_rtl8153_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ure_softc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@URE_OCP_POWER_CFG = common dso_local global i32 0, align 4
@URE_EN_ALDPS = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@URE_USB_TOLERANCE = common dso_local global i32 0, align 4
@URE_MCU_TYPE_USB = common dso_local global i32 0, align 4
@URE_BYTE_EN_SIX_BYTES = common dso_local global i32 0, align 4
@URE_TIMEOUT = common dso_local global i32 0, align 4
@URE_PLA_BOOT_CTRL = common dso_local global i32 0, align 4
@URE_MCU_TYPE_PLA = common dso_local global i32 0, align 4
@URE_AUTOLOAD_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"timeout waiting for chip autoload\0A\00", align 1
@URE_OCP_PHY_STATUS = common dso_local global i32 0, align 4
@URE_PHY_STAT_MASK = common dso_local global i32 0, align 4
@URE_PHY_STAT_LAN_ON = common dso_local global i32 0, align 4
@URE_PHY_STAT_PWRDN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"timeout waiting for phy to stabilize\0A\00", align 1
@URE_USB_U2P3_CTRL = common dso_local global i32 0, align 4
@URE_U2P3_ENABLE = common dso_local global i32 0, align 4
@URE_CHIP_VER_5C10 = common dso_local global i32 0, align 4
@URE_USB_SSPHYLINK2 = common dso_local global i32 0, align 4
@URE_PWD_DN_SCALE_MASK = common dso_local global i32 0, align 4
@URE_USB_USB2PHY = common dso_local global i32 0, align 4
@URE_USB2PHY_L1 = common dso_local global i32 0, align 4
@URE_USB2PHY_SUSPEND = common dso_local global i32 0, align 4
@URE_CHIP_VER_5C20 = common dso_local global i32 0, align 4
@URE_PLA_DMY_REG0 = common dso_local global i32 0, align 4
@URE_ECM_ALDPS = common dso_local global i32 0, align 4
@URE_CHIP_VER_5C30 = common dso_local global i32 0, align 4
@URE_USB_CSR_DUMMY1 = common dso_local global i32 0, align 4
@URE_USB_BURST_SIZE = common dso_local global i32 0, align 4
@URE_DYNAMIC_BURST = common dso_local global i32 0, align 4
@URE_USB_CSR_DUMMY2 = common dso_local global i32 0, align 4
@URE_EP4_FULL_FC = common dso_local global i32 0, align 4
@URE_USB_WDT11_CTRL = common dso_local global i32 0, align 4
@URE_TIMER11_EN = common dso_local global i32 0, align 4
@URE_PLA_LED_FEATURE = common dso_local global i32 0, align 4
@URE_LED_MODE_MASK = common dso_local global i32 0, align 4
@USB_SPEED_SUPER = common dso_local global i64 0, align 8
@URE_LPM_TIMER_500MS = common dso_local global i32 0, align 4
@URE_LPM_TIMER_500US = common dso_local global i32 0, align 4
@URE_USB_LPM_CTRL = common dso_local global i32 0, align 4
@URE_FIFO_EMPTY_1FB = common dso_local global i32 0, align 4
@URE_ROK_EXIT_LPM = common dso_local global i32 0, align 4
@URE_USB_AFE_CTRL2 = common dso_local global i32 0, align 4
@URE_SEN_VAL_MASK = common dso_local global i32 0, align 4
@URE_SEN_VAL_NORMAL = common dso_local global i32 0, align 4
@URE_SEL_RXIDLE = common dso_local global i32 0, align 4
@URE_USB_CONNECT_TIMER = common dso_local global i32 0, align 4
@URE_USB_POWER_CUT = common dso_local global i32 0, align 4
@URE_PWR_EN = common dso_local global i32 0, align 4
@URE_PHASE2_EN = common dso_local global i32 0, align 4
@URE_USB_MISC_0 = common dso_local global i32 0, align 4
@URE_PCUT_STATUS = common dso_local global i32 0, align 4
@URE_PLA_MAC_PWR_CTRL = common dso_local global i32 0, align 4
@URE_ALDPS_SPDWN_RATIO = common dso_local global i32 0, align 4
@URE_PLA_MAC_PWR_CTRL2 = common dso_local global i32 0, align 4
@URE_EEE_SPDWN_RATIO = common dso_local global i32 0, align 4
@URE_PLA_MAC_PWR_CTRL3 = common dso_local global i32 0, align 4
@URE_PKT_AVAIL_SPDWN_EN = common dso_local global i32 0, align 4
@URE_SUSPEND_SPDWN_EN = common dso_local global i32 0, align 4
@URE_U1U2_SPDWN_EN = common dso_local global i32 0, align 4
@URE_L1_SPDWN_EN = common dso_local global i32 0, align 4
@URE_PLA_MAC_PWR_CTRL4 = common dso_local global i32 0, align 4
@URE_PWRSAVE_SPDWN_EN = common dso_local global i32 0, align 4
@URE_RXDV_SPDWN_EN = common dso_local global i32 0, align 4
@URE_TX10MIDLE_EN = common dso_local global i32 0, align 4
@URE_TP100_SPDWN_EN = common dso_local global i32 0, align 4
@URE_TP500_SPDWN_EN = common dso_local global i32 0, align 4
@URE_TP1000_SPDWN_EN = common dso_local global i32 0, align 4
@URE_EEE_SPDWN_EN = common dso_local global i32 0, align 4
@URE_CHIP_VER_5C00 = common dso_local global i32 0, align 4
@URE_USB_USB_CTRL = common dso_local global i32 0, align 4
@URE_RX_AGG_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ure_softc*)* @ure_rtl8153_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ure_rtl8153_init(%struct.ure_softc* %0) #0 {
  %2 = alloca %struct.ure_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [8 x i32], align 16
  %5 = alloca i32, align 4
  store %struct.ure_softc* %0, %struct.ure_softc** %2, align 8
  %6 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %7 = load i32, i32* @URE_OCP_POWER_CFG, align 4
  %8 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %9 = load i32, i32* @URE_OCP_POWER_CFG, align 4
  %10 = call i32 @ure_ocp_reg_read(%struct.ure_softc* %8, i32 %9)
  %11 = load i32, i32* @URE_EN_ALDPS, align 4
  %12 = xor i32 %11, -1
  %13 = and i32 %10, %12
  %14 = call i32 @ure_ocp_reg_write(%struct.ure_softc* %6, i32 %7, i32 %13)
  %15 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %16 = getelementptr inbounds %struct.ure_softc, %struct.ure_softc* %15, i32 0, i32 1
  %17 = load i32, i32* @hz, align 4
  %18 = sdiv i32 %17, 50
  %19 = call i32 @uether_pause(%struct.TYPE_2__* %16, i32 %18)
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %21 = call i32 @memset(i32* %20, i32 0, i32 32)
  %22 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %23 = load i32, i32* @URE_USB_TOLERANCE, align 4
  %24 = load i32, i32* @URE_MCU_TYPE_USB, align 4
  %25 = load i32, i32* @URE_BYTE_EN_SIX_BYTES, align 4
  %26 = or i32 %24, %25
  %27 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %28 = call i32 @ure_write_mem(%struct.ure_softc* %22, i32 %23, i32 %26, i32* %27, i32 32)
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %48, %1
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @URE_TIMEOUT, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %51

33:                                               ; preds = %29
  %34 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %35 = load i32, i32* @URE_PLA_BOOT_CTRL, align 4
  %36 = load i32, i32* @URE_MCU_TYPE_PLA, align 4
  %37 = call i32 @ure_read_2(%struct.ure_softc* %34, i32 %35, i32 %36)
  %38 = load i32, i32* @URE_AUTOLOAD_DONE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %51

42:                                               ; preds = %33
  %43 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %44 = getelementptr inbounds %struct.ure_softc, %struct.ure_softc* %43, i32 0, i32 1
  %45 = load i32, i32* @hz, align 4
  %46 = sdiv i32 %45, 100
  %47 = call i32 @uether_pause(%struct.TYPE_2__* %44, i32 %46)
  br label %48

48:                                               ; preds = %42
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %29

51:                                               ; preds = %41, %29
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @URE_TIMEOUT, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %51
  %56 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %57 = getelementptr inbounds %struct.ure_softc, %struct.ure_softc* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @device_printf(i32 %59, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %61

61:                                               ; preds = %55, %51
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %86, %61
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @URE_TIMEOUT, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %89

66:                                               ; preds = %62
  %67 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %68 = load i32, i32* @URE_OCP_PHY_STATUS, align 4
  %69 = call i32 @ure_ocp_reg_read(%struct.ure_softc* %67, i32 %68)
  %70 = load i32, i32* @URE_PHY_STAT_MASK, align 4
  %71 = and i32 %69, %70
  store i32 %71, i32* %3, align 4
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* @URE_PHY_STAT_LAN_ON, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %79, label %75

75:                                               ; preds = %66
  %76 = load i32, i32* %3, align 4
  %77 = load i32, i32* @URE_PHY_STAT_PWRDN, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %75, %66
  br label %89

80:                                               ; preds = %75
  %81 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %82 = getelementptr inbounds %struct.ure_softc, %struct.ure_softc* %81, i32 0, i32 1
  %83 = load i32, i32* @hz, align 4
  %84 = sdiv i32 %83, 100
  %85 = call i32 @uether_pause(%struct.TYPE_2__* %82, i32 %84)
  br label %86

86:                                               ; preds = %80
  %87 = load i32, i32* %5, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %5, align 4
  br label %62

89:                                               ; preds = %79, %62
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* @URE_TIMEOUT, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %89
  %94 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %95 = getelementptr inbounds %struct.ure_softc, %struct.ure_softc* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @device_printf(i32 %97, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %99

99:                                               ; preds = %93, %89
  %100 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %101 = load i32, i32* @URE_USB_U2P3_CTRL, align 4
  %102 = load i32, i32* @URE_MCU_TYPE_USB, align 4
  %103 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %104 = load i32, i32* @URE_USB_U2P3_CTRL, align 4
  %105 = load i32, i32* @URE_MCU_TYPE_USB, align 4
  %106 = call i32 @ure_read_2(%struct.ure_softc* %103, i32 %104, i32 %105)
  %107 = load i32, i32* @URE_U2P3_ENABLE, align 4
  %108 = xor i32 %107, -1
  %109 = and i32 %106, %108
  %110 = call i32 @ure_write_2(%struct.ure_softc* %100, i32 %101, i32 %102, i32 %109)
  %111 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %112 = getelementptr inbounds %struct.ure_softc, %struct.ure_softc* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @URE_CHIP_VER_5C10, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %146

117:                                              ; preds = %99
  %118 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %119 = load i32, i32* @URE_USB_SSPHYLINK2, align 4
  %120 = load i32, i32* @URE_MCU_TYPE_USB, align 4
  %121 = call i32 @ure_read_2(%struct.ure_softc* %118, i32 %119, i32 %120)
  store i32 %121, i32* %3, align 4
  %122 = load i32, i32* @URE_PWD_DN_SCALE_MASK, align 4
  %123 = xor i32 %122, -1
  %124 = load i32, i32* %3, align 4
  %125 = and i32 %124, %123
  store i32 %125, i32* %3, align 4
  %126 = call i32 @URE_PWD_DN_SCALE(i32 96)
  %127 = load i32, i32* %3, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %3, align 4
  %129 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %130 = load i32, i32* @URE_USB_SSPHYLINK2, align 4
  %131 = load i32, i32* @URE_MCU_TYPE_USB, align 4
  %132 = load i32, i32* %3, align 4
  %133 = call i32 @ure_write_2(%struct.ure_softc* %129, i32 %130, i32 %131, i32 %132)
  %134 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %135 = load i32, i32* @URE_USB_USB2PHY, align 4
  %136 = load i32, i32* @URE_MCU_TYPE_USB, align 4
  %137 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %138 = load i32, i32* @URE_USB_USB2PHY, align 4
  %139 = load i32, i32* @URE_MCU_TYPE_USB, align 4
  %140 = call i32 @ure_read_1(%struct.ure_softc* %137, i32 %138, i32 %139)
  %141 = load i32, i32* @URE_USB2PHY_L1, align 4
  %142 = or i32 %140, %141
  %143 = load i32, i32* @URE_USB2PHY_SUSPEND, align 4
  %144 = or i32 %142, %143
  %145 = call i32 @ure_write_1(%struct.ure_softc* %134, i32 %135, i32 %136, i32 %144)
  br label %166

146:                                              ; preds = %99
  %147 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %148 = getelementptr inbounds %struct.ure_softc, %struct.ure_softc* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @URE_CHIP_VER_5C20, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %165

153:                                              ; preds = %146
  %154 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %155 = load i32, i32* @URE_PLA_DMY_REG0, align 4
  %156 = load i32, i32* @URE_MCU_TYPE_PLA, align 4
  %157 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %158 = load i32, i32* @URE_PLA_DMY_REG0, align 4
  %159 = load i32, i32* @URE_MCU_TYPE_PLA, align 4
  %160 = call i32 @ure_read_1(%struct.ure_softc* %157, i32 %158, i32 %159)
  %161 = load i32, i32* @URE_ECM_ALDPS, align 4
  %162 = xor i32 %161, -1
  %163 = and i32 %160, %162
  %164 = call i32 @ure_write_1(%struct.ure_softc* %154, i32 %155, i32 %156, i32 %163)
  br label %165

165:                                              ; preds = %153, %146
  br label %166

166:                                              ; preds = %165, %117
  %167 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %168 = getelementptr inbounds %struct.ure_softc, %struct.ure_softc* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @URE_CHIP_VER_5C20, align 4
  %171 = load i32, i32* @URE_CHIP_VER_5C30, align 4
  %172 = or i32 %170, %171
  %173 = and i32 %169, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %200

175:                                              ; preds = %166
  %176 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %177 = load i32, i32* @URE_USB_CSR_DUMMY1, align 4
  %178 = load i32, i32* @URE_MCU_TYPE_USB, align 4
  %179 = call i32 @ure_read_1(%struct.ure_softc* %176, i32 %177, i32 %178)
  store i32 %179, i32* %3, align 4
  %180 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %181 = load i32, i32* @URE_USB_BURST_SIZE, align 4
  %182 = load i32, i32* @URE_MCU_TYPE_USB, align 4
  %183 = call i32 @ure_read_2(%struct.ure_softc* %180, i32 %181, i32 %182)
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %175
  %186 = load i32, i32* @URE_DYNAMIC_BURST, align 4
  %187 = xor i32 %186, -1
  %188 = load i32, i32* %3, align 4
  %189 = and i32 %188, %187
  store i32 %189, i32* %3, align 4
  br label %194

190:                                              ; preds = %175
  %191 = load i32, i32* @URE_DYNAMIC_BURST, align 4
  %192 = load i32, i32* %3, align 4
  %193 = or i32 %192, %191
  store i32 %193, i32* %3, align 4
  br label %194

194:                                              ; preds = %190, %185
  %195 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %196 = load i32, i32* @URE_USB_CSR_DUMMY1, align 4
  %197 = load i32, i32* @URE_MCU_TYPE_USB, align 4
  %198 = load i32, i32* %3, align 4
  %199 = call i32 @ure_write_1(%struct.ure_softc* %195, i32 %196, i32 %197, i32 %198)
  br label %200

200:                                              ; preds = %194, %166
  %201 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %202 = load i32, i32* @URE_USB_CSR_DUMMY2, align 4
  %203 = load i32, i32* @URE_MCU_TYPE_USB, align 4
  %204 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %205 = load i32, i32* @URE_USB_CSR_DUMMY2, align 4
  %206 = load i32, i32* @URE_MCU_TYPE_USB, align 4
  %207 = call i32 @ure_read_1(%struct.ure_softc* %204, i32 %205, i32 %206)
  %208 = load i32, i32* @URE_EP4_FULL_FC, align 4
  %209 = or i32 %207, %208
  %210 = call i32 @ure_write_1(%struct.ure_softc* %201, i32 %202, i32 %203, i32 %209)
  %211 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %212 = load i32, i32* @URE_USB_WDT11_CTRL, align 4
  %213 = load i32, i32* @URE_MCU_TYPE_USB, align 4
  %214 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %215 = load i32, i32* @URE_USB_WDT11_CTRL, align 4
  %216 = load i32, i32* @URE_MCU_TYPE_USB, align 4
  %217 = call i32 @ure_read_2(%struct.ure_softc* %214, i32 %215, i32 %216)
  %218 = load i32, i32* @URE_TIMER11_EN, align 4
  %219 = xor i32 %218, -1
  %220 = and i32 %217, %219
  %221 = call i32 @ure_write_2(%struct.ure_softc* %211, i32 %212, i32 %213, i32 %220)
  %222 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %223 = load i32, i32* @URE_PLA_LED_FEATURE, align 4
  %224 = load i32, i32* @URE_MCU_TYPE_PLA, align 4
  %225 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %226 = load i32, i32* @URE_PLA_LED_FEATURE, align 4
  %227 = load i32, i32* @URE_MCU_TYPE_PLA, align 4
  %228 = call i32 @ure_read_2(%struct.ure_softc* %225, i32 %226, i32 %227)
  %229 = load i32, i32* @URE_LED_MODE_MASK, align 4
  %230 = xor i32 %229, -1
  %231 = and i32 %228, %230
  %232 = call i32 @ure_write_2(%struct.ure_softc* %222, i32 %223, i32 %224, i32 %231)
  %233 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %234 = getelementptr inbounds %struct.ure_softc, %struct.ure_softc* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* @URE_CHIP_VER_5C10, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %249

239:                                              ; preds = %200
  %240 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %241 = getelementptr inbounds %struct.ure_softc, %struct.ure_softc* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = call i64 @usbd_get_speed(i32 %243)
  %245 = load i64, i64* @USB_SPEED_SUPER, align 8
  %246 = icmp ne i64 %244, %245
  br i1 %246, label %247, label %249

247:                                              ; preds = %239
  %248 = load i32, i32* @URE_LPM_TIMER_500MS, align 4
  store i32 %248, i32* %3, align 4
  br label %251

249:                                              ; preds = %239, %200
  %250 = load i32, i32* @URE_LPM_TIMER_500US, align 4
  store i32 %250, i32* %3, align 4
  br label %251

251:                                              ; preds = %249, %247
  %252 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %253 = load i32, i32* @URE_USB_LPM_CTRL, align 4
  %254 = load i32, i32* @URE_MCU_TYPE_USB, align 4
  %255 = load i32, i32* %3, align 4
  %256 = load i32, i32* @URE_FIFO_EMPTY_1FB, align 4
  %257 = or i32 %255, %256
  %258 = load i32, i32* @URE_ROK_EXIT_LPM, align 4
  %259 = or i32 %257, %258
  %260 = call i32 @ure_write_1(%struct.ure_softc* %252, i32 %253, i32 %254, i32 %259)
  %261 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %262 = load i32, i32* @URE_USB_AFE_CTRL2, align 4
  %263 = load i32, i32* @URE_MCU_TYPE_USB, align 4
  %264 = call i32 @ure_read_2(%struct.ure_softc* %261, i32 %262, i32 %263)
  store i32 %264, i32* %3, align 4
  %265 = load i32, i32* @URE_SEN_VAL_MASK, align 4
  %266 = xor i32 %265, -1
  %267 = load i32, i32* %3, align 4
  %268 = and i32 %267, %266
  store i32 %268, i32* %3, align 4
  %269 = load i32, i32* @URE_SEN_VAL_NORMAL, align 4
  %270 = load i32, i32* @URE_SEL_RXIDLE, align 4
  %271 = or i32 %269, %270
  %272 = load i32, i32* %3, align 4
  %273 = or i32 %272, %271
  store i32 %273, i32* %3, align 4
  %274 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %275 = load i32, i32* @URE_USB_AFE_CTRL2, align 4
  %276 = load i32, i32* @URE_MCU_TYPE_USB, align 4
  %277 = load i32, i32* %3, align 4
  %278 = call i32 @ure_write_2(%struct.ure_softc* %274, i32 %275, i32 %276, i32 %277)
  %279 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %280 = load i32, i32* @URE_USB_CONNECT_TIMER, align 4
  %281 = load i32, i32* @URE_MCU_TYPE_USB, align 4
  %282 = call i32 @ure_write_2(%struct.ure_softc* %279, i32 %280, i32 %281, i32 1)
  %283 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %284 = load i32, i32* @URE_USB_POWER_CUT, align 4
  %285 = load i32, i32* @URE_MCU_TYPE_USB, align 4
  %286 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %287 = load i32, i32* @URE_USB_POWER_CUT, align 4
  %288 = load i32, i32* @URE_MCU_TYPE_USB, align 4
  %289 = call i32 @ure_read_2(%struct.ure_softc* %286, i32 %287, i32 %288)
  %290 = load i32, i32* @URE_PWR_EN, align 4
  %291 = load i32, i32* @URE_PHASE2_EN, align 4
  %292 = or i32 %290, %291
  %293 = xor i32 %292, -1
  %294 = and i32 %289, %293
  %295 = call i32 @ure_write_2(%struct.ure_softc* %283, i32 %284, i32 %285, i32 %294)
  %296 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %297 = load i32, i32* @URE_USB_MISC_0, align 4
  %298 = load i32, i32* @URE_MCU_TYPE_USB, align 4
  %299 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %300 = load i32, i32* @URE_USB_MISC_0, align 4
  %301 = load i32, i32* @URE_MCU_TYPE_USB, align 4
  %302 = call i32 @ure_read_2(%struct.ure_softc* %299, i32 %300, i32 %301)
  %303 = load i32, i32* @URE_PCUT_STATUS, align 4
  %304 = xor i32 %303, -1
  %305 = and i32 %302, %304
  %306 = call i32 @ure_write_2(%struct.ure_softc* %296, i32 %297, i32 %298, i32 %305)
  %307 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %308 = call i32 @memset(i32* %307, i32 255, i32 32)
  %309 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %310 = load i32, i32* @URE_USB_TOLERANCE, align 4
  %311 = load i32, i32* @URE_MCU_TYPE_USB, align 4
  %312 = load i32, i32* @URE_BYTE_EN_SIX_BYTES, align 4
  %313 = or i32 %311, %312
  %314 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %315 = call i32 @ure_write_mem(%struct.ure_softc* %309, i32 %310, i32 %313, i32* %314, i32 32)
  %316 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %317 = load i32, i32* @URE_PLA_MAC_PWR_CTRL, align 4
  %318 = load i32, i32* @URE_MCU_TYPE_PLA, align 4
  %319 = load i32, i32* @URE_ALDPS_SPDWN_RATIO, align 4
  %320 = call i32 @ure_write_2(%struct.ure_softc* %316, i32 %317, i32 %318, i32 %319)
  %321 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %322 = load i32, i32* @URE_PLA_MAC_PWR_CTRL2, align 4
  %323 = load i32, i32* @URE_MCU_TYPE_PLA, align 4
  %324 = load i32, i32* @URE_EEE_SPDWN_RATIO, align 4
  %325 = call i32 @ure_write_2(%struct.ure_softc* %321, i32 %322, i32 %323, i32 %324)
  %326 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %327 = load i32, i32* @URE_PLA_MAC_PWR_CTRL3, align 4
  %328 = load i32, i32* @URE_MCU_TYPE_PLA, align 4
  %329 = load i32, i32* @URE_PKT_AVAIL_SPDWN_EN, align 4
  %330 = load i32, i32* @URE_SUSPEND_SPDWN_EN, align 4
  %331 = or i32 %329, %330
  %332 = load i32, i32* @URE_U1U2_SPDWN_EN, align 4
  %333 = or i32 %331, %332
  %334 = load i32, i32* @URE_L1_SPDWN_EN, align 4
  %335 = or i32 %333, %334
  %336 = call i32 @ure_write_2(%struct.ure_softc* %326, i32 %327, i32 %328, i32 %335)
  %337 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %338 = load i32, i32* @URE_PLA_MAC_PWR_CTRL4, align 4
  %339 = load i32, i32* @URE_MCU_TYPE_PLA, align 4
  %340 = load i32, i32* @URE_PWRSAVE_SPDWN_EN, align 4
  %341 = load i32, i32* @URE_RXDV_SPDWN_EN, align 4
  %342 = or i32 %340, %341
  %343 = load i32, i32* @URE_TX10MIDLE_EN, align 4
  %344 = or i32 %342, %343
  %345 = load i32, i32* @URE_TP100_SPDWN_EN, align 4
  %346 = or i32 %344, %345
  %347 = load i32, i32* @URE_TP500_SPDWN_EN, align 4
  %348 = or i32 %346, %347
  %349 = load i32, i32* @URE_TP1000_SPDWN_EN, align 4
  %350 = or i32 %348, %349
  %351 = load i32, i32* @URE_EEE_SPDWN_EN, align 4
  %352 = or i32 %350, %351
  %353 = call i32 @ure_write_2(%struct.ure_softc* %337, i32 %338, i32 %339, i32 %352)
  %354 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %355 = load i32, i32* @URE_USB_U2P3_CTRL, align 4
  %356 = load i32, i32* @URE_MCU_TYPE_USB, align 4
  %357 = call i32 @ure_read_2(%struct.ure_softc* %354, i32 %355, i32 %356)
  store i32 %357, i32* %3, align 4
  %358 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %359 = getelementptr inbounds %struct.ure_softc, %struct.ure_softc* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 4
  %361 = load i32, i32* @URE_CHIP_VER_5C00, align 4
  %362 = load i32, i32* @URE_CHIP_VER_5C10, align 4
  %363 = or i32 %361, %362
  %364 = and i32 %360, %363
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %370, label %366

366:                                              ; preds = %251
  %367 = load i32, i32* @URE_U2P3_ENABLE, align 4
  %368 = load i32, i32* %3, align 4
  %369 = or i32 %368, %367
  store i32 %369, i32* %3, align 4
  br label %375

370:                                              ; preds = %251
  %371 = load i32, i32* @URE_U2P3_ENABLE, align 4
  %372 = xor i32 %371, -1
  %373 = load i32, i32* %3, align 4
  %374 = and i32 %373, %372
  store i32 %374, i32* %3, align 4
  br label %375

375:                                              ; preds = %370, %366
  %376 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %377 = load i32, i32* @URE_USB_U2P3_CTRL, align 4
  %378 = load i32, i32* @URE_MCU_TYPE_USB, align 4
  %379 = load i32, i32* %3, align 4
  %380 = call i32 @ure_write_2(%struct.ure_softc* %376, i32 %377, i32 %378, i32 %379)
  %381 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %382 = call i32 @memset(i32* %381, i32 0, i32 32)
  %383 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %384 = load i32, i32* @URE_USB_TOLERANCE, align 4
  %385 = load i32, i32* @URE_MCU_TYPE_USB, align 4
  %386 = load i32, i32* @URE_BYTE_EN_SIX_BYTES, align 4
  %387 = or i32 %385, %386
  %388 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %389 = call i32 @ure_write_mem(%struct.ure_softc* %383, i32 %384, i32 %387, i32* %388, i32 32)
  %390 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %391 = load i32, i32* @URE_OCP_POWER_CFG, align 4
  %392 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %393 = load i32, i32* @URE_OCP_POWER_CFG, align 4
  %394 = call i32 @ure_ocp_reg_read(%struct.ure_softc* %392, i32 %393)
  %395 = load i32, i32* @URE_EN_ALDPS, align 4
  %396 = xor i32 %395, -1
  %397 = and i32 %394, %396
  %398 = call i32 @ure_ocp_reg_write(%struct.ure_softc* %390, i32 %391, i32 %397)
  %399 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %400 = getelementptr inbounds %struct.ure_softc, %struct.ure_softc* %399, i32 0, i32 1
  %401 = load i32, i32* @hz, align 4
  %402 = sdiv i32 %401, 50
  %403 = call i32 @uether_pause(%struct.TYPE_2__* %400, i32 %402)
  %404 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %405 = call i32 @ure_init_fifo(%struct.ure_softc* %404)
  %406 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %407 = load i32, i32* @URE_USB_USB_CTRL, align 4
  %408 = load i32, i32* @URE_MCU_TYPE_USB, align 4
  %409 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %410 = load i32, i32* @URE_USB_USB_CTRL, align 4
  %411 = load i32, i32* @URE_MCU_TYPE_USB, align 4
  %412 = call i32 @ure_read_2(%struct.ure_softc* %409, i32 %410, i32 %411)
  %413 = load i32, i32* @URE_RX_AGG_DISABLE, align 4
  %414 = or i32 %412, %413
  %415 = call i32 @ure_write_2(%struct.ure_softc* %406, i32 %407, i32 %408, i32 %414)
  %416 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %417 = load i32, i32* @URE_USB_U2P3_CTRL, align 4
  %418 = load i32, i32* @URE_MCU_TYPE_USB, align 4
  %419 = call i32 @ure_read_2(%struct.ure_softc* %416, i32 %417, i32 %418)
  store i32 %419, i32* %3, align 4
  %420 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %421 = getelementptr inbounds %struct.ure_softc, %struct.ure_softc* %420, i32 0, i32 0
  %422 = load i32, i32* %421, align 4
  %423 = load i32, i32* @URE_CHIP_VER_5C00, align 4
  %424 = load i32, i32* @URE_CHIP_VER_5C10, align 4
  %425 = or i32 %423, %424
  %426 = and i32 %422, %425
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %432, label %428

428:                                              ; preds = %375
  %429 = load i32, i32* @URE_U2P3_ENABLE, align 4
  %430 = load i32, i32* %3, align 4
  %431 = or i32 %430, %429
  store i32 %431, i32* %3, align 4
  br label %437

432:                                              ; preds = %375
  %433 = load i32, i32* @URE_U2P3_ENABLE, align 4
  %434 = xor i32 %433, -1
  %435 = load i32, i32* %3, align 4
  %436 = and i32 %435, %434
  store i32 %436, i32* %3, align 4
  br label %437

437:                                              ; preds = %432, %428
  %438 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %439 = load i32, i32* @URE_USB_U2P3_CTRL, align 4
  %440 = load i32, i32* @URE_MCU_TYPE_USB, align 4
  %441 = load i32, i32* %3, align 4
  %442 = call i32 @ure_write_2(%struct.ure_softc* %438, i32 %439, i32 %440, i32 %441)
  %443 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %444 = call i32 @memset(i32* %443, i32 255, i32 32)
  %445 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %446 = load i32, i32* @URE_USB_TOLERANCE, align 4
  %447 = load i32, i32* @URE_MCU_TYPE_USB, align 4
  %448 = load i32, i32* @URE_BYTE_EN_SIX_BYTES, align 4
  %449 = or i32 %447, %448
  %450 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %451 = call i32 @ure_write_mem(%struct.ure_softc* %445, i32 %446, i32 %449, i32* %450, i32 32)
  ret void
}

declare dso_local i32 @ure_ocp_reg_write(%struct.ure_softc*, i32, i32) #1

declare dso_local i32 @ure_ocp_reg_read(%struct.ure_softc*, i32) #1

declare dso_local i32 @uether_pause(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ure_write_mem(%struct.ure_softc*, i32, i32, i32*, i32) #1

declare dso_local i32 @ure_read_2(%struct.ure_softc*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @ure_write_2(%struct.ure_softc*, i32, i32, i32) #1

declare dso_local i32 @URE_PWD_DN_SCALE(i32) #1

declare dso_local i32 @ure_write_1(%struct.ure_softc*, i32, i32, i32) #1

declare dso_local i32 @ure_read_1(%struct.ure_softc*, i32, i32) #1

declare dso_local i64 @usbd_get_speed(i32) #1

declare dso_local i32 @ure_init_fifo(%struct.ure_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
