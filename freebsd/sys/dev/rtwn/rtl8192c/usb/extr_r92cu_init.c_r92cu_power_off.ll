; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192c/usb/extr_r92cu_init.c_r92cu_power_off.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192c/usb/extr_r92cu_init.c_r92cu_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { %struct.r92c_softc* }
%struct.r92c_softc = type { i32, i64, i64, i32 }

@hz = common dso_local global i32 0, align 4
@R92C_TXPAUSE = common dso_local global i64 0, align 8
@R92C_TX_QUEUE_ALL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@R92C_APSD_CTRL = common dso_local global i64 0, align 8
@R92C_APSD_CTRL_OFF = common dso_local global i32 0, align 4
@R92C_SYS_FUNC_EN = common dso_local global i64 0, align 8
@R92C_SYS_FUNC_EN_USBD = common dso_local global i32 0, align 4
@R92C_SYS_FUNC_EN_USBA = common dso_local global i32 0, align 4
@R92C_SYS_FUNC_EN_BB_GLB_RST = common dso_local global i32 0, align 4
@R92C_MCUFWDL = common dso_local global i64 0, align 8
@R92C_MCUFWDL_RDY = common dso_local global i32 0, align 4
@RTWN_FW_RESET_SHUTDOWN = common dso_local global i32 0, align 4
@R92C_SYS_FUNC_EN_CPUEN = common dso_local global i32 0, align 4
@R92C_SYS_FUNC_EN_ELDR = common dso_local global i32 0, align 4
@R92C_SYS_FUNC_EN_HWPDN = common dso_local global i32 0, align 4
@R92C_SYS_CLKR = common dso_local global i32 0, align 4
@R92C_SYS_CLKR_ANAD16V_EN = common dso_local global i32 0, align 4
@R92C_SYS_CLKR_ANA8M = common dso_local global i32 0, align 4
@R92C_SYS_CLKR_LOADER_EN = common dso_local global i32 0, align 4
@R92C_SYS_CLKR_80M_SSC_DIS = common dso_local global i32 0, align 4
@R92C_SYS_CLKR_SYS_EN = common dso_local global i32 0, align 4
@R92C_SYS_CLKR_RING_EN = common dso_local global i32 0, align 4
@R92C_AFE_PLL_CTRL = common dso_local global i64 0, align 8
@R92C_AFE_XTAL_CTRL = common dso_local global i32 0, align 4
@R92C_SYS_ISO_CTRL = common dso_local global i64 0, align 8
@R92C_SYS_ISO_CTRL_MD2PP = common dso_local global i32 0, align 4
@R92C_SYS_ISO_CTRL_PA2PCIE = common dso_local global i32 0, align 4
@R92C_SYS_ISO_CTRL_PD2CORE = common dso_local global i32 0, align 4
@R92C_SYS_ISO_CTRL_IP2MAC = common dso_local global i32 0, align 4
@R92C_SYS_ISO_CTRL_DIOP = common dso_local global i32 0, align 4
@R92C_SYS_ISO_CTRL_DIOE = common dso_local global i32 0, align 4
@R92C_GPIO_IOSEL = common dso_local global i32 0, align 4
@R92C_GPIO_PIN_CTRL = common dso_local global i32 0, align 4
@R92C_MAC_PINMUX_CFG = common dso_local global i64 0, align 8
@R92C_GPIO_IO_SEL = common dso_local global i32 0, align 4
@R92C_LEDCFG0 = common dso_local global i32 0, align 4
@R92C_SYS_ISO_CTRL_DIOR = common dso_local global i32 0, align 4
@R92C_SYS_ISO_CTRL_PWC_EV12V = common dso_local global i32 0, align 4
@R92C_LDOA15_CTRL = common dso_local global i64 0, align 8
@R92C_LDOA15_CTRL_OBUF = common dso_local global i32 0, align 4
@R92C_LDOV12D_CTRL = common dso_local global i32 0, align 4
@R92C_LDOV12D_CTRL_LDV12_EN = common dso_local global i32 0, align 4
@R92C_SPS0_CTRL = common dso_local global i64 0, align 8
@R92C_APS_FSMCO = common dso_local global i32 0, align 4
@R92C_APS_FSMCO_APDM_HOST = common dso_local global i32 0, align 4
@R92C_APS_FSMCO_AFSM_HSUS = common dso_local global i32 0, align 4
@R92C_APS_FSMCO_PFM_ALDN = common dso_local global i32 0, align 4
@R92C_RSV_CTRL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r92cu_power_off(%struct.rtwn_softc* %0) #0 {
  %2 = alloca %struct.rtwn_softc*, align 8
  %3 = alloca %struct.r92c_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %2, align 8
  %6 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %7 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %6, i32 0, i32 0
  %8 = load %struct.r92c_softc*, %struct.r92c_softc** %7, align 8
  store %struct.r92c_softc* %8, %struct.r92c_softc** %3, align 8
  %9 = load %struct.r92c_softc*, %struct.r92c_softc** %3, align 8
  %10 = getelementptr inbounds %struct.r92c_softc, %struct.r92c_softc* %9, i32 0, i32 3
  %11 = call i32 @callout_stop(i32* %10)
  %12 = load %struct.r92c_softc*, %struct.r92c_softc** %3, align 8
  %13 = getelementptr inbounds %struct.r92c_softc, %struct.r92c_softc* %12, i32 0, i32 2
  store i64 0, i64* %13, align 8
  %14 = load %struct.r92c_softc*, %struct.r92c_softc** %3, align 8
  %15 = getelementptr inbounds %struct.r92c_softc, %struct.r92c_softc* %14, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = load i32, i32* @hz, align 4
  %17 = load %struct.r92c_softc*, %struct.r92c_softc** %3, align 8
  %18 = getelementptr inbounds %struct.r92c_softc, %struct.r92c_softc* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %20 = load i64, i64* @R92C_TXPAUSE, align 8
  %21 = load i32, i32* @R92C_TX_QUEUE_ALL, align 4
  %22 = call i32 @rtwn_write_1(%struct.rtwn_softc* %19, i64 %20, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @ENXIO, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  br label %192

27:                                               ; preds = %1
  %28 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %29 = call i32 @rtwn_rf_write(%struct.rtwn_softc* %28, i32 0, i32 0, i32 0)
  %30 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %31 = load i64, i64* @R92C_APSD_CTRL, align 8
  %32 = load i32, i32* @R92C_APSD_CTRL_OFF, align 4
  %33 = call i32 @rtwn_write_1(%struct.rtwn_softc* %30, i64 %31, i32 %32)
  %34 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %35 = load i64, i64* @R92C_SYS_FUNC_EN, align 8
  %36 = load i32, i32* @R92C_SYS_FUNC_EN_USBD, align 4
  %37 = load i32, i32* @R92C_SYS_FUNC_EN_USBA, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @R92C_SYS_FUNC_EN_BB_GLB_RST, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @rtwn_write_1(%struct.rtwn_softc* %34, i64 %35, i32 %40)
  %42 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %43 = load i64, i64* @R92C_SYS_FUNC_EN, align 8
  %44 = load i32, i32* @R92C_SYS_FUNC_EN_USBD, align 4
  %45 = load i32, i32* @R92C_SYS_FUNC_EN_USBA, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @rtwn_write_1(%struct.rtwn_softc* %42, i64 %43, i32 %46)
  %48 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %49 = load i64, i64* @R92C_MCUFWDL, align 8
  %50 = call i32 @rtwn_read_1(%struct.rtwn_softc* %48, i64 %49)
  %51 = load i32, i32* @R92C_MCUFWDL_RDY, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %27
  %55 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %56 = load i64, i64* @R92C_MCUFWDL, align 8
  %57 = call i32 @rtwn_write_1(%struct.rtwn_softc* %55, i64 %56, i32 0)
  %58 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %59 = load i32, i32* @RTWN_FW_RESET_SHUTDOWN, align 4
  %60 = call i32 @r92c_fw_reset(%struct.rtwn_softc* %58, i32 %59)
  br label %61

61:                                               ; preds = %54, %27
  %62 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %63 = load i64, i64* @R92C_SYS_FUNC_EN, align 8
  %64 = add nsw i64 %63, 1
  %65 = load i32, i32* @R92C_SYS_FUNC_EN_CPUEN, align 4
  %66 = load i32, i32* @R92C_SYS_FUNC_EN_ELDR, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @R92C_SYS_FUNC_EN_HWPDN, align 4
  %69 = or i32 %67, %68
  %70 = ashr i32 %69, 8
  %71 = call i32 @rtwn_write_1(%struct.rtwn_softc* %62, i64 %64, i32 %70)
  %72 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %73 = load i64, i64* @R92C_MCUFWDL, align 8
  %74 = call i32 @rtwn_write_1(%struct.rtwn_softc* %72, i64 %73, i32 0)
  %75 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %76 = load i32, i32* @R92C_SYS_CLKR, align 4
  %77 = load i32, i32* @R92C_SYS_CLKR_ANAD16V_EN, align 4
  %78 = load i32, i32* @R92C_SYS_CLKR_ANA8M, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @R92C_SYS_CLKR_LOADER_EN, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @R92C_SYS_CLKR_80M_SSC_DIS, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @R92C_SYS_CLKR_SYS_EN, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @R92C_SYS_CLKR_RING_EN, align 4
  %87 = or i32 %85, %86
  %88 = or i32 %87, 16384
  %89 = call i32 @rtwn_write_2(%struct.rtwn_softc* %75, i32 %76, i32 %88)
  %90 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %91 = load i64, i64* @R92C_AFE_PLL_CTRL, align 8
  %92 = call i32 @rtwn_write_1(%struct.rtwn_softc* %90, i64 %91, i32 128)
  %93 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %94 = load i32, i32* @R92C_AFE_XTAL_CTRL, align 4
  %95 = call i32 @rtwn_write_2(%struct.rtwn_softc* %93, i32 %94, i32 34831)
  %96 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %97 = load i64, i64* @R92C_SYS_ISO_CTRL, align 8
  %98 = load i32, i32* @R92C_SYS_ISO_CTRL_MD2PP, align 4
  %99 = load i32, i32* @R92C_SYS_ISO_CTRL_PA2PCIE, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @R92C_SYS_ISO_CTRL_PD2CORE, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @R92C_SYS_ISO_CTRL_IP2MAC, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* @R92C_SYS_ISO_CTRL_DIOP, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @R92C_SYS_ISO_CTRL_DIOE, align 4
  %108 = or i32 %106, %107
  %109 = call i32 @rtwn_write_1(%struct.rtwn_softc* %96, i64 %97, i32 %108)
  %110 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %111 = load i32, i32* @R92C_GPIO_IOSEL, align 4
  %112 = call i32 @rtwn_write_2(%struct.rtwn_softc* %110, i32 %111, i32 0)
  %113 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %114 = load i32, i32* @R92C_GPIO_PIN_CTRL, align 4
  %115 = call i32 @rtwn_read_4(%struct.rtwn_softc* %113, i32 %114)
  %116 = and i32 %115, -65281
  store i32 %116, i32* %4, align 4
  %117 = load i32, i32* %4, align 4
  %118 = shl i32 %117, 8
  %119 = and i32 %118, 65280
  %120 = or i32 %119, 16711680
  %121 = load i32, i32* %4, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %4, align 4
  %123 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %124 = load i32, i32* @R92C_GPIO_PIN_CTRL, align 4
  %125 = load i32, i32* %4, align 4
  %126 = call i32 @rtwn_write_4(%struct.rtwn_softc* %123, i32 %124, i32 %125)
  %127 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %128 = load i64, i64* @R92C_MAC_PINMUX_CFG, align 8
  %129 = call i32 @rtwn_write_1(%struct.rtwn_softc* %127, i64 %128, i32 0)
  %130 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %131 = load i32, i32* @R92C_GPIO_IO_SEL, align 4
  %132 = call i32 @rtwn_read_2(%struct.rtwn_softc* %130, i32 %131)
  %133 = and i32 %132, -241
  store i32 %133, i32* %4, align 4
  %134 = load i32, i32* %4, align 4
  %135 = and i32 %134, 15
  %136 = shl i32 %135, 4
  %137 = or i32 %136, 1920
  %138 = load i32, i32* %4, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %4, align 4
  %140 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %141 = load i32, i32* @R92C_GPIO_IO_SEL, align 4
  %142 = load i32, i32* %4, align 4
  %143 = call i32 @rtwn_write_2(%struct.rtwn_softc* %140, i32 %141, i32 %142)
  %144 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %145 = load i32, i32* @R92C_LEDCFG0, align 4
  %146 = call i32 @rtwn_write_2(%struct.rtwn_softc* %144, i32 %145, i32 32896)
  %147 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %148 = load i32, i32* @R92C_SYS_CLKR, align 4
  %149 = load i32, i32* @R92C_SYS_CLKR_ANAD16V_EN, align 4
  %150 = load i32, i32* @R92C_SYS_CLKR_ANA8M, align 4
  %151 = or i32 %149, %150
  %152 = load i32, i32* @R92C_SYS_CLKR_LOADER_EN, align 4
  %153 = or i32 %151, %152
  %154 = load i32, i32* @R92C_SYS_CLKR_80M_SSC_DIS, align 4
  %155 = or i32 %153, %154
  %156 = load i32, i32* @R92C_SYS_CLKR_SYS_EN, align 4
  %157 = or i32 %155, %156
  %158 = load i32, i32* @R92C_SYS_CLKR_RING_EN, align 4
  %159 = or i32 %157, %158
  %160 = or i32 %159, 16384
  %161 = call i32 @rtwn_write_2(%struct.rtwn_softc* %147, i32 %148, i32 %160)
  %162 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %163 = load i64, i64* @R92C_SYS_ISO_CTRL, align 8
  %164 = add nsw i64 %163, 1
  %165 = load i32, i32* @R92C_SYS_ISO_CTRL_DIOR, align 4
  %166 = load i32, i32* @R92C_SYS_ISO_CTRL_PWC_EV12V, align 4
  %167 = or i32 %165, %166
  %168 = ashr i32 %167, 8
  %169 = call i32 @rtwn_write_1(%struct.rtwn_softc* %162, i64 %164, i32 %168)
  %170 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %171 = load i64, i64* @R92C_LDOA15_CTRL, align 8
  %172 = load i32, i32* @R92C_LDOA15_CTRL_OBUF, align 4
  %173 = call i32 @rtwn_write_1(%struct.rtwn_softc* %170, i64 %171, i32 %172)
  %174 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %175 = load i32, i32* @R92C_LDOV12D_CTRL, align 4
  %176 = load i32, i32* @R92C_LDOV12D_CTRL_LDV12_EN, align 4
  %177 = call i32 @rtwn_setbits_1(%struct.rtwn_softc* %174, i32 %175, i32 %176, i32 0)
  %178 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %179 = load i64, i64* @R92C_SPS0_CTRL, align 8
  %180 = call i32 @rtwn_write_1(%struct.rtwn_softc* %178, i64 %179, i32 35)
  %181 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %182 = load i32, i32* @R92C_APS_FSMCO, align 4
  %183 = load i32, i32* @R92C_APS_FSMCO_APDM_HOST, align 4
  %184 = load i32, i32* @R92C_APS_FSMCO_AFSM_HSUS, align 4
  %185 = or i32 %183, %184
  %186 = load i32, i32* @R92C_APS_FSMCO_PFM_ALDN, align 4
  %187 = or i32 %185, %186
  %188 = call i32 @rtwn_write_2(%struct.rtwn_softc* %181, i32 %182, i32 %187)
  %189 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %190 = load i64, i64* @R92C_RSV_CTRL, align 8
  %191 = call i32 @rtwn_write_1(%struct.rtwn_softc* %189, i64 %190, i32 14)
  br label %192

192:                                              ; preds = %61, %26
  ret void
}

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @rtwn_write_1(%struct.rtwn_softc*, i64, i32) #1

declare dso_local i32 @rtwn_rf_write(%struct.rtwn_softc*, i32, i32, i32) #1

declare dso_local i32 @rtwn_read_1(%struct.rtwn_softc*, i64) #1

declare dso_local i32 @r92c_fw_reset(%struct.rtwn_softc*, i32) #1

declare dso_local i32 @rtwn_write_2(%struct.rtwn_softc*, i32, i32) #1

declare dso_local i32 @rtwn_read_4(%struct.rtwn_softc*, i32) #1

declare dso_local i32 @rtwn_write_4(%struct.rtwn_softc*, i32, i32) #1

declare dso_local i32 @rtwn_read_2(%struct.rtwn_softc*, i32) #1

declare dso_local i32 @rtwn_setbits_1(%struct.rtwn_softc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
