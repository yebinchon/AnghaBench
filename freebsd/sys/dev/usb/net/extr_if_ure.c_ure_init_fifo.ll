; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_ure.c_ure_init_fifo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_ure.c_ure_init_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ure_softc = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@URE_PLA_MISC_1 = common dso_local global i32 0, align 4
@URE_MCU_TYPE_PLA = common dso_local global i32 0, align 4
@URE_RXDY_GATED_EN = common dso_local global i32 0, align 4
@URE_PLA_RCR = common dso_local global i32 0, align 4
@URE_RCR_ACPT_ALL = common dso_local global i32 0, align 4
@URE_FLAG_8152 = common dso_local global i32 0, align 4
@URE_CHIP_VER_5C00 = common dso_local global i32 0, align 4
@URE_CHIP_VER_5C10 = common dso_local global i32 0, align 4
@URE_CHIP_VER_5C20 = common dso_local global i32 0, align 4
@URE_OCP_ADC_CFG = common dso_local global i32 0, align 4
@URE_CKADSEL_L = common dso_local global i32 0, align 4
@URE_ADC_EN = common dso_local global i32 0, align 4
@URE_EN_EMI_L = common dso_local global i32 0, align 4
@URE_OCP_EEE_CFG = common dso_local global i32 0, align 4
@URE_CTAP_SHORT_EN = common dso_local global i32 0, align 4
@URE_OCP_POWER_CFG = common dso_local global i32 0, align 4
@URE_EEE_CLKDIV_EN = common dso_local global i32 0, align 4
@URE_OCP_DOWN_SPEED = common dso_local global i32 0, align 4
@URE_EN_10M_BGOFF = common dso_local global i32 0, align 4
@URE_EN_10M_PLLOFF = common dso_local global i32 0, align 4
@URE_OCP_SRAM_ADDR = common dso_local global i32 0, align 4
@URE_SRAM_IMPEDANCE = common dso_local global i32 0, align 4
@URE_OCP_SRAM_DATA = common dso_local global i32 0, align 4
@URE_PLA_PHY_PWR = common dso_local global i32 0, align 4
@URE_PFM_PWM_SWITCH = common dso_local global i32 0, align 4
@URE_SRAM_LPF_CFG = common dso_local global i32 0, align 4
@URE_SRAM_10M_AMP1 = common dso_local global i32 0, align 4
@URE_SRAM_10M_AMP2 = common dso_local global i32 0, align 4
@URE_PLA_CR = common dso_local global i32 0, align 4
@URE_PLA_OOB_CTRL = common dso_local global i32 0, align 4
@URE_NOW_IS_OOB = common dso_local global i32 0, align 4
@URE_PLA_SFF_STS_7 = common dso_local global i32 0, align 4
@URE_MCU_BORW_EN = common dso_local global i32 0, align 4
@URE_TIMEOUT = common dso_local global i32 0, align 4
@URE_LINK_LIST_READY = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"timeout waiting for OOB control\0A\00", align 1
@URE_RE_INIT_LL = common dso_local global i32 0, align 4
@URE_PLA_CPCR = common dso_local global i32 0, align 4
@URE_CPCR_RX_VLAN = common dso_local global i32 0, align 4
@URE_PLA_TCR0 = common dso_local global i32 0, align 4
@URE_TCR0_AUTO_FIFO = common dso_local global i32 0, align 4
@URE_PLA_RXFIFO_CTRL0 = common dso_local global i32 0, align 4
@URE_RXFIFO_THR1_NORMAL = common dso_local global i32 0, align 4
@USB_SPEED_FULL = common dso_local global i64 0, align 8
@URE_RXFIFO_THR2_FULL = common dso_local global i32 0, align 4
@URE_RXFIFO_THR3_FULL = common dso_local global i32 0, align 4
@URE_RXFIFO_THR2_HIGH = common dso_local global i32 0, align 4
@URE_RXFIFO_THR3_HIGH = common dso_local global i32 0, align 4
@URE_PLA_RXFIFO_CTRL1 = common dso_local global i32 0, align 4
@URE_PLA_RXFIFO_CTRL2 = common dso_local global i32 0, align 4
@URE_PLA_TXFIFO_CTRL = common dso_local global i32 0, align 4
@URE_TXFIFO_THR_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ure_softc*)* @ure_init_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ure_init_fifo(%struct.ure_softc* %0) #0 {
  %2 = alloca %struct.ure_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ure_softc* %0, %struct.ure_softc** %2, align 8
  %6 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %7 = load i32, i32* @URE_PLA_MISC_1, align 4
  %8 = load i32, i32* @URE_MCU_TYPE_PLA, align 4
  %9 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %10 = load i32, i32* @URE_PLA_MISC_1, align 4
  %11 = load i32, i32* @URE_MCU_TYPE_PLA, align 4
  %12 = call i32 @ure_read_2(%struct.ure_softc* %9, i32 %10, i32 %11)
  %13 = load i32, i32* @URE_RXDY_GATED_EN, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @ure_write_2(%struct.ure_softc* %6, i32 %7, i32 %8, i32 %14)
  %16 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %17 = call i32 @ure_disable_teredo(%struct.ure_softc* %16)
  %18 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %19 = load i32, i32* @URE_PLA_RCR, align 4
  %20 = load i32, i32* @URE_MCU_TYPE_PLA, align 4
  %21 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %22 = load i32, i32* @URE_PLA_RCR, align 4
  %23 = load i32, i32* @URE_MCU_TYPE_PLA, align 4
  %24 = call i32 @ure_read_4(%struct.ure_softc* %21, i32 %22, i32 %23)
  %25 = load i32, i32* @URE_RCR_ACPT_ALL, align 4
  %26 = xor i32 %25, -1
  %27 = and i32 %24, %26
  %28 = call i32 @ure_write_4(%struct.ure_softc* %18, i32 %19, i32 %20, i32 %27)
  %29 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %30 = getelementptr inbounds %struct.ure_softc, %struct.ure_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @URE_FLAG_8152, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %135, label %35

35:                                               ; preds = %1
  %36 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %37 = getelementptr inbounds %struct.ure_softc, %struct.ure_softc* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @URE_CHIP_VER_5C00, align 4
  %40 = load i32, i32* @URE_CHIP_VER_5C10, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @URE_CHIP_VER_5C20, align 4
  %43 = or i32 %41, %42
  %44 = and i32 %38, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %35
  %47 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %48 = load i32, i32* @URE_OCP_ADC_CFG, align 4
  %49 = load i32, i32* @URE_CKADSEL_L, align 4
  %50 = load i32, i32* @URE_ADC_EN, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @URE_EN_EMI_L, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @ure_ocp_reg_write(%struct.ure_softc* %47, i32 %48, i32 %53)
  br label %55

55:                                               ; preds = %46, %35
  %56 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %57 = getelementptr inbounds %struct.ure_softc, %struct.ure_softc* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @URE_CHIP_VER_5C00, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %55
  %63 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %64 = load i32, i32* @URE_OCP_EEE_CFG, align 4
  %65 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %66 = load i32, i32* @URE_OCP_EEE_CFG, align 4
  %67 = call i32 @ure_ocp_reg_read(%struct.ure_softc* %65, i32 %66)
  %68 = load i32, i32* @URE_CTAP_SHORT_EN, align 4
  %69 = xor i32 %68, -1
  %70 = and i32 %67, %69
  %71 = call i32 @ure_ocp_reg_write(%struct.ure_softc* %63, i32 %64, i32 %70)
  br label %72

72:                                               ; preds = %62, %55
  %73 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %74 = load i32, i32* @URE_OCP_POWER_CFG, align 4
  %75 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %76 = load i32, i32* @URE_OCP_POWER_CFG, align 4
  %77 = call i32 @ure_ocp_reg_read(%struct.ure_softc* %75, i32 %76)
  %78 = load i32, i32* @URE_EEE_CLKDIV_EN, align 4
  %79 = or i32 %77, %78
  %80 = call i32 @ure_ocp_reg_write(%struct.ure_softc* %73, i32 %74, i32 %79)
  %81 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %82 = load i32, i32* @URE_OCP_DOWN_SPEED, align 4
  %83 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %84 = load i32, i32* @URE_OCP_DOWN_SPEED, align 4
  %85 = call i32 @ure_ocp_reg_read(%struct.ure_softc* %83, i32 %84)
  %86 = load i32, i32* @URE_EN_10M_BGOFF, align 4
  %87 = or i32 %85, %86
  %88 = call i32 @ure_ocp_reg_write(%struct.ure_softc* %81, i32 %82, i32 %87)
  %89 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %90 = load i32, i32* @URE_OCP_POWER_CFG, align 4
  %91 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %92 = load i32, i32* @URE_OCP_POWER_CFG, align 4
  %93 = call i32 @ure_ocp_reg_read(%struct.ure_softc* %91, i32 %92)
  %94 = load i32, i32* @URE_EN_10M_PLLOFF, align 4
  %95 = or i32 %93, %94
  %96 = call i32 @ure_ocp_reg_write(%struct.ure_softc* %89, i32 %90, i32 %95)
  %97 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %98 = load i32, i32* @URE_OCP_SRAM_ADDR, align 4
  %99 = load i32, i32* @URE_SRAM_IMPEDANCE, align 4
  %100 = call i32 @ure_ocp_reg_write(%struct.ure_softc* %97, i32 %98, i32 %99)
  %101 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %102 = load i32, i32* @URE_OCP_SRAM_DATA, align 4
  %103 = call i32 @ure_ocp_reg_write(%struct.ure_softc* %101, i32 %102, i32 2835)
  %104 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %105 = load i32, i32* @URE_PLA_PHY_PWR, align 4
  %106 = load i32, i32* @URE_MCU_TYPE_PLA, align 4
  %107 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %108 = load i32, i32* @URE_PLA_PHY_PWR, align 4
  %109 = load i32, i32* @URE_MCU_TYPE_PLA, align 4
  %110 = call i32 @ure_read_2(%struct.ure_softc* %107, i32 %108, i32 %109)
  %111 = load i32, i32* @URE_PFM_PWM_SWITCH, align 4
  %112 = or i32 %110, %111
  %113 = call i32 @ure_write_2(%struct.ure_softc* %104, i32 %105, i32 %106, i32 %112)
  %114 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %115 = load i32, i32* @URE_OCP_SRAM_ADDR, align 4
  %116 = load i32, i32* @URE_SRAM_LPF_CFG, align 4
  %117 = call i32 @ure_ocp_reg_write(%struct.ure_softc* %114, i32 %115, i32 %116)
  %118 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %119 = load i32, i32* @URE_OCP_SRAM_DATA, align 4
  %120 = call i32 @ure_ocp_reg_write(%struct.ure_softc* %118, i32 %119, i32 63247)
  %121 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %122 = load i32, i32* @URE_OCP_SRAM_ADDR, align 4
  %123 = load i32, i32* @URE_SRAM_10M_AMP1, align 4
  %124 = call i32 @ure_ocp_reg_write(%struct.ure_softc* %121, i32 %122, i32 %123)
  %125 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %126 = load i32, i32* @URE_OCP_SRAM_DATA, align 4
  %127 = call i32 @ure_ocp_reg_write(%struct.ure_softc* %125, i32 %126, i32 175)
  %128 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %129 = load i32, i32* @URE_OCP_SRAM_ADDR, align 4
  %130 = load i32, i32* @URE_SRAM_10M_AMP2, align 4
  %131 = call i32 @ure_ocp_reg_write(%struct.ure_softc* %128, i32 %129, i32 %130)
  %132 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %133 = load i32, i32* @URE_OCP_SRAM_DATA, align 4
  %134 = call i32 @ure_ocp_reg_write(%struct.ure_softc* %132, i32 %133, i32 520)
  br label %135

135:                                              ; preds = %72, %1
  %136 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %137 = call i32 @ure_reset(%struct.ure_softc* %136)
  %138 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %139 = load i32, i32* @URE_PLA_CR, align 4
  %140 = load i32, i32* @URE_MCU_TYPE_PLA, align 4
  %141 = call i32 @ure_write_1(%struct.ure_softc* %138, i32 %139, i32 %140, i32 0)
  %142 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %143 = load i32, i32* @URE_PLA_OOB_CTRL, align 4
  %144 = load i32, i32* @URE_MCU_TYPE_PLA, align 4
  %145 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %146 = load i32, i32* @URE_PLA_OOB_CTRL, align 4
  %147 = load i32, i32* @URE_MCU_TYPE_PLA, align 4
  %148 = call i32 @ure_read_1(%struct.ure_softc* %145, i32 %146, i32 %147)
  %149 = load i32, i32* @URE_NOW_IS_OOB, align 4
  %150 = xor i32 %149, -1
  %151 = and i32 %148, %150
  %152 = call i32 @ure_write_1(%struct.ure_softc* %142, i32 %143, i32 %144, i32 %151)
  %153 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %154 = load i32, i32* @URE_PLA_SFF_STS_7, align 4
  %155 = load i32, i32* @URE_MCU_TYPE_PLA, align 4
  %156 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %157 = load i32, i32* @URE_PLA_SFF_STS_7, align 4
  %158 = load i32, i32* @URE_MCU_TYPE_PLA, align 4
  %159 = call i32 @ure_read_2(%struct.ure_softc* %156, i32 %157, i32 %158)
  %160 = load i32, i32* @URE_MCU_BORW_EN, align 4
  %161 = xor i32 %160, -1
  %162 = and i32 %159, %161
  %163 = call i32 @ure_write_2(%struct.ure_softc* %153, i32 %154, i32 %155, i32 %162)
  store i32 0, i32* %5, align 4
  br label %164

164:                                              ; preds = %183, %135
  %165 = load i32, i32* %5, align 4
  %166 = load i32, i32* @URE_TIMEOUT, align 4
  %167 = icmp slt i32 %165, %166
  br i1 %167, label %168, label %186

168:                                              ; preds = %164
  %169 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %170 = load i32, i32* @URE_PLA_OOB_CTRL, align 4
  %171 = load i32, i32* @URE_MCU_TYPE_PLA, align 4
  %172 = call i32 @ure_read_1(%struct.ure_softc* %169, i32 %170, i32 %171)
  %173 = load i32, i32* @URE_LINK_LIST_READY, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %168
  br label %186

177:                                              ; preds = %168
  %178 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %179 = getelementptr inbounds %struct.ure_softc, %struct.ure_softc* %178, i32 0, i32 2
  %180 = load i32, i32* @hz, align 4
  %181 = sdiv i32 %180, 100
  %182 = call i32 @uether_pause(%struct.TYPE_2__* %179, i32 %181)
  br label %183

183:                                              ; preds = %177
  %184 = load i32, i32* %5, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %5, align 4
  br label %164

186:                                              ; preds = %176, %164
  %187 = load i32, i32* %5, align 4
  %188 = load i32, i32* @URE_TIMEOUT, align 4
  %189 = icmp eq i32 %187, %188
  br i1 %189, label %190, label %196

190:                                              ; preds = %186
  %191 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %192 = getelementptr inbounds %struct.ure_softc, %struct.ure_softc* %191, i32 0, i32 2
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @device_printf(i32 %194, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %196

196:                                              ; preds = %190, %186
  %197 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %198 = load i32, i32* @URE_PLA_SFF_STS_7, align 4
  %199 = load i32, i32* @URE_MCU_TYPE_PLA, align 4
  %200 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %201 = load i32, i32* @URE_PLA_SFF_STS_7, align 4
  %202 = load i32, i32* @URE_MCU_TYPE_PLA, align 4
  %203 = call i32 @ure_read_2(%struct.ure_softc* %200, i32 %201, i32 %202)
  %204 = load i32, i32* @URE_RE_INIT_LL, align 4
  %205 = or i32 %203, %204
  %206 = call i32 @ure_write_2(%struct.ure_softc* %197, i32 %198, i32 %199, i32 %205)
  store i32 0, i32* %5, align 4
  br label %207

207:                                              ; preds = %226, %196
  %208 = load i32, i32* %5, align 4
  %209 = load i32, i32* @URE_TIMEOUT, align 4
  %210 = icmp slt i32 %208, %209
  br i1 %210, label %211, label %229

211:                                              ; preds = %207
  %212 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %213 = load i32, i32* @URE_PLA_OOB_CTRL, align 4
  %214 = load i32, i32* @URE_MCU_TYPE_PLA, align 4
  %215 = call i32 @ure_read_1(%struct.ure_softc* %212, i32 %213, i32 %214)
  %216 = load i32, i32* @URE_LINK_LIST_READY, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %211
  br label %229

220:                                              ; preds = %211
  %221 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %222 = getelementptr inbounds %struct.ure_softc, %struct.ure_softc* %221, i32 0, i32 2
  %223 = load i32, i32* @hz, align 4
  %224 = sdiv i32 %223, 100
  %225 = call i32 @uether_pause(%struct.TYPE_2__* %222, i32 %224)
  br label %226

226:                                              ; preds = %220
  %227 = load i32, i32* %5, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %5, align 4
  br label %207

229:                                              ; preds = %219, %207
  %230 = load i32, i32* %5, align 4
  %231 = load i32, i32* @URE_TIMEOUT, align 4
  %232 = icmp eq i32 %230, %231
  br i1 %232, label %233, label %239

233:                                              ; preds = %229
  %234 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %235 = getelementptr inbounds %struct.ure_softc, %struct.ure_softc* %234, i32 0, i32 2
  %236 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @device_printf(i32 %237, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %239

239:                                              ; preds = %233, %229
  %240 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %241 = load i32, i32* @URE_PLA_CPCR, align 4
  %242 = load i32, i32* @URE_MCU_TYPE_PLA, align 4
  %243 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %244 = load i32, i32* @URE_PLA_CPCR, align 4
  %245 = load i32, i32* @URE_MCU_TYPE_PLA, align 4
  %246 = call i32 @ure_read_2(%struct.ure_softc* %243, i32 %244, i32 %245)
  %247 = load i32, i32* @URE_CPCR_RX_VLAN, align 4
  %248 = xor i32 %247, -1
  %249 = and i32 %246, %248
  %250 = call i32 @ure_write_2(%struct.ure_softc* %240, i32 %241, i32 %242, i32 %249)
  %251 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %252 = load i32, i32* @URE_PLA_TCR0, align 4
  %253 = load i32, i32* @URE_MCU_TYPE_PLA, align 4
  %254 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %255 = load i32, i32* @URE_PLA_TCR0, align 4
  %256 = load i32, i32* @URE_MCU_TYPE_PLA, align 4
  %257 = call i32 @ure_read_2(%struct.ure_softc* %254, i32 %255, i32 %256)
  %258 = load i32, i32* @URE_TCR0_AUTO_FIFO, align 4
  %259 = or i32 %257, %258
  %260 = call i32 @ure_write_2(%struct.ure_softc* %251, i32 %252, i32 %253, i32 %259)
  %261 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %262 = load i32, i32* @URE_PLA_RXFIFO_CTRL0, align 4
  %263 = load i32, i32* @URE_MCU_TYPE_PLA, align 4
  %264 = load i32, i32* @URE_RXFIFO_THR1_NORMAL, align 4
  %265 = call i32 @ure_write_4(%struct.ure_softc* %261, i32 %262, i32 %263, i32 %264)
  %266 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %267 = getelementptr inbounds %struct.ure_softc, %struct.ure_softc* %266, i32 0, i32 2
  %268 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = call i64 @usbd_get_speed(i32 %269)
  %271 = load i64, i64* @USB_SPEED_FULL, align 8
  %272 = icmp eq i64 %270, %271
  br i1 %272, label %273, label %276

273:                                              ; preds = %239
  %274 = load i32, i32* @URE_RXFIFO_THR2_FULL, align 4
  store i32 %274, i32* %3, align 4
  %275 = load i32, i32* @URE_RXFIFO_THR3_FULL, align 4
  store i32 %275, i32* %4, align 4
  br label %279

276:                                              ; preds = %239
  %277 = load i32, i32* @URE_RXFIFO_THR2_HIGH, align 4
  store i32 %277, i32* %3, align 4
  %278 = load i32, i32* @URE_RXFIFO_THR3_HIGH, align 4
  store i32 %278, i32* %4, align 4
  br label %279

279:                                              ; preds = %276, %273
  %280 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %281 = load i32, i32* @URE_PLA_RXFIFO_CTRL1, align 4
  %282 = load i32, i32* @URE_MCU_TYPE_PLA, align 4
  %283 = load i32, i32* %3, align 4
  %284 = call i32 @ure_write_4(%struct.ure_softc* %280, i32 %281, i32 %282, i32 %283)
  %285 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %286 = load i32, i32* @URE_PLA_RXFIFO_CTRL2, align 4
  %287 = load i32, i32* @URE_MCU_TYPE_PLA, align 4
  %288 = load i32, i32* %4, align 4
  %289 = call i32 @ure_write_4(%struct.ure_softc* %285, i32 %286, i32 %287, i32 %288)
  %290 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %291 = load i32, i32* @URE_PLA_TXFIFO_CTRL, align 4
  %292 = load i32, i32* @URE_MCU_TYPE_PLA, align 4
  %293 = load i32, i32* @URE_TXFIFO_THR_NORMAL, align 4
  %294 = call i32 @ure_write_4(%struct.ure_softc* %290, i32 %291, i32 %292, i32 %293)
  ret void
}

declare dso_local i32 @ure_write_2(%struct.ure_softc*, i32, i32, i32) #1

declare dso_local i32 @ure_read_2(%struct.ure_softc*, i32, i32) #1

declare dso_local i32 @ure_disable_teredo(%struct.ure_softc*) #1

declare dso_local i32 @ure_write_4(%struct.ure_softc*, i32, i32, i32) #1

declare dso_local i32 @ure_read_4(%struct.ure_softc*, i32, i32) #1

declare dso_local i32 @ure_ocp_reg_write(%struct.ure_softc*, i32, i32) #1

declare dso_local i32 @ure_ocp_reg_read(%struct.ure_softc*, i32) #1

declare dso_local i32 @ure_reset(%struct.ure_softc*) #1

declare dso_local i32 @ure_write_1(%struct.ure_softc*, i32, i32, i32) #1

declare dso_local i32 @ure_read_1(%struct.ure_softc*, i32, i32) #1

declare dso_local i32 @uether_pause(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @usbd_get_speed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
