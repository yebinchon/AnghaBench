; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192c/pci/extr_r92ce_init.c_r92ce_power_on.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192c/pci/extr_r92ce_init.c_r92ce_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i64, i32, %struct.r92c_softc* }
%struct.r92c_softc = type { i64, i32 }

@R92C_APS_FSMCO = common dso_local global i64 0, align 8
@R92C_APS_FSMCO_PFM_ALDN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"timeout waiting for chip autoload\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@R92C_RSV_CTRL = common dso_local global i64 0, align 8
@R92C_BOARD_TYPE_DONGLE = common dso_local global i64 0, align 8
@R92C_APS_FSMCO_SOP_ABG = common dso_local global i32 0, align 4
@R92C_APS_FSMCO_SOP_AMB = common dso_local global i32 0, align 4
@R92C_APS_FSMCO_XOP_BTCK = common dso_local global i32 0, align 4
@R92C_SPS0_CTRL = common dso_local global i64 0, align 8
@R92C_AFE_XTAL_CTRL = common dso_local global i64 0, align 8
@R92C_SYS_ISO_CTRL = common dso_local global i64 0, align 8
@R92C_SYS_ISO_CTRL_PWC_EV12V = common dso_local global i32 0, align 4
@R92C_SYS_ISO_CTRL_DIOR = common dso_local global i32 0, align 4
@R92C_APS_FSMCO_APFM_ONMAC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"timeout waiting for MAC auto ON\0A\00", align 1
@R92C_APS_FSMCO_AFSM_PCIE = common dso_local global i32 0, align 4
@R92C_APS_FSMCO_PDN_EN = common dso_local global i32 0, align 4
@R92C_CHIP_92C = common dso_local global i32 0, align 4
@R92C_PCIE_CTRL_REG = common dso_local global i64 0, align 8
@R92C_INT_MIG = common dso_local global i32 0, align 4
@R92C_GPIO_MUXCFG = common dso_local global i64 0, align 8
@R92C_GPIO_MUXCFG_RFKILL = common dso_local global i32 0, align 4
@R92C_GPIO_IO_SEL = common dso_local global i64 0, align 8
@R92C_GPIO_IO_SEL_RFKILL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"radio is disabled by hardware switch\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@R92C_APSD_CTRL = common dso_local global i64 0, align 8
@R92C_APSD_CTRL_OFF = common dso_local global i32 0, align 4
@R92C_APSD_CTRL_OFF_STATUS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"timeout waiting for MAC initialization\0A\00", align 1
@R92C_CR = common dso_local global i64 0, align 8
@R92C_CR_HCI_TXDMA_EN = common dso_local global i32 0, align 4
@R92C_CR_HCI_RXDMA_EN = common dso_local global i32 0, align 4
@R92C_CR_TXDMA_EN = common dso_local global i32 0, align 4
@R92C_CR_RXDMA_EN = common dso_local global i32 0, align 4
@R92C_CR_PROTOCOL_EN = common dso_local global i32 0, align 4
@R92C_CR_SCHEDULE_EN = common dso_local global i32 0, align 4
@R92C_CR_MACTXEN = common dso_local global i32 0, align 4
@R92C_CR_MACRXEN = common dso_local global i32 0, align 4
@RTWN_CRYPTO_SW = common dso_local global i64 0, align 8
@R92C_CR_ENSEC = common dso_local global i32 0, align 4
@R92C_MCUTST_1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r92ce_power_on(%struct.rtwn_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtwn_softc*, align 8
  %4 = alloca %struct.r92c_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %3, align 8
  %7 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %8 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %7, i32 0, i32 2
  %9 = load %struct.r92c_softc*, %struct.r92c_softc** %8, align 8
  store %struct.r92c_softc* %9, %struct.r92c_softc** %4, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %23, %1
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 1000
  br i1 %12, label %13, label %26

13:                                               ; preds = %10
  %14 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %15 = load i64, i64* @R92C_APS_FSMCO, align 8
  %16 = call i32 @rtwn_read_1(%struct.rtwn_softc* %14, i64 %15)
  %17 = load i32, i32* @R92C_APS_FSMCO_PFM_ALDN, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %26

21:                                               ; preds = %13
  %22 = call i32 @DELAY(i32 5)
  br label %23

23:                                               ; preds = %21
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %6, align 4
  br label %10

26:                                               ; preds = %20, %10
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %27, 1000
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %31 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @device_printf(i32 %32, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %34, i32* %2, align 4
  br label %230

35:                                               ; preds = %26
  %36 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %37 = load i64, i64* @R92C_RSV_CTRL, align 8
  %38 = call i32 @rtwn_write_1(%struct.rtwn_softc* %36, i64 %37, i32 0)
  %39 = load %struct.r92c_softc*, %struct.r92c_softc** %4, align 8
  %40 = getelementptr inbounds %struct.r92c_softc, %struct.r92c_softc* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @R92C_BOARD_TYPE_DONGLE, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %35
  %45 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %46 = load i64, i64* @R92C_APS_FSMCO, align 8
  %47 = load i32, i32* @R92C_APS_FSMCO_SOP_ABG, align 4
  %48 = load i32, i32* @R92C_APS_FSMCO_SOP_AMB, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @R92C_APS_FSMCO_XOP_BTCK, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @rtwn_setbits_4(%struct.rtwn_softc* %45, i64 %46, i32 0, i32 %51)
  br label %53

53:                                               ; preds = %44, %35
  %54 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %55 = load i64, i64* @R92C_SPS0_CTRL, align 8
  %56 = call i32 @rtwn_write_1(%struct.rtwn_softc* %54, i64 %55, i32 43)
  %57 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %58 = load i64, i64* @R92C_AFE_XTAL_CTRL, align 8
  %59 = call i32 @rtwn_write_1(%struct.rtwn_softc* %57, i64 %58, i32 15)
  %60 = load %struct.r92c_softc*, %struct.r92c_softc** %4, align 8
  %61 = getelementptr inbounds %struct.r92c_softc, %struct.r92c_softc* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @R92C_BOARD_TYPE_DONGLE, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %53
  %66 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %67 = load i64, i64* @R92C_AFE_XTAL_CTRL, align 8
  %68 = call i32 @rtwn_setbits_4(%struct.rtwn_softc* %66, i64 %67, i32 149504, i32 0)
  br label %69

69:                                               ; preds = %65, %53
  %70 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %71 = load i64, i64* @R92C_SYS_ISO_CTRL, align 8
  %72 = load i32, i32* @R92C_SYS_ISO_CTRL_PWC_EV12V, align 4
  %73 = load i32, i32* @R92C_SYS_ISO_CTRL_DIOR, align 4
  %74 = or i32 %72, %73
  %75 = call i32 @rtwn_setbits_2(%struct.rtwn_softc* %70, i64 %71, i32 65280, i32 %74)
  %76 = call i32 @DELAY(i32 200)
  %77 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %78 = load i64, i64* @R92C_APS_FSMCO, align 8
  %79 = load i32, i32* @R92C_APS_FSMCO_APFM_ONMAC, align 4
  %80 = call i32 @rtwn_setbits_2(%struct.rtwn_softc* %77, i64 %78, i32 0, i32 %79)
  store i32 0, i32* %6, align 4
  br label %81

81:                                               ; preds = %94, %69
  %82 = load i32, i32* %6, align 4
  %83 = icmp slt i32 %82, 1000
  br i1 %83, label %84, label %97

84:                                               ; preds = %81
  %85 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %86 = load i64, i64* @R92C_APS_FSMCO, align 8
  %87 = call i32 @rtwn_read_2(%struct.rtwn_softc* %85, i64 %86)
  %88 = load i32, i32* @R92C_APS_FSMCO_APFM_ONMAC, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %84
  br label %97

92:                                               ; preds = %84
  %93 = call i32 @DELAY(i32 5)
  br label %94

94:                                               ; preds = %92
  %95 = load i32, i32* %6, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %6, align 4
  br label %81

97:                                               ; preds = %91, %81
  %98 = load i32, i32* %6, align 4
  %99 = icmp eq i32 %98, 1000
  br i1 %99, label %100, label %106

100:                                              ; preds = %97
  %101 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %102 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @device_printf(i32 %103, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %105 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %105, i32* %2, align 4
  br label %230

106:                                              ; preds = %97
  %107 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %108 = load i64, i64* @R92C_APS_FSMCO, align 8
  %109 = load i32, i32* @R92C_APS_FSMCO_AFSM_PCIE, align 4
  %110 = load i32, i32* @R92C_APS_FSMCO_PDN_EN, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @R92C_APS_FSMCO_PFM_ALDN, align 4
  %113 = or i32 %111, %112
  %114 = call i32 @rtwn_write_2(%struct.rtwn_softc* %107, i64 %108, i32 %113)
  %115 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %116 = load i64, i64* @R92C_SYS_ISO_CTRL, align 8
  %117 = load i32, i32* @R92C_SYS_ISO_CTRL_DIOR, align 4
  %118 = call i32 @rtwn_setbits_2(%struct.rtwn_softc* %115, i64 %116, i32 %117, i32 0)
  %119 = load %struct.r92c_softc*, %struct.r92c_softc** %4, align 8
  %120 = getelementptr inbounds %struct.r92c_softc, %struct.r92c_softc* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @R92C_CHIP_92C, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %106
  %126 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %127 = load i64, i64* @R92C_PCIE_CTRL_REG, align 8
  %128 = add nsw i64 %127, 3
  %129 = call i32 @rtwn_write_1(%struct.rtwn_softc* %126, i64 %128, i32 119)
  br label %135

130:                                              ; preds = %106
  %131 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %132 = load i64, i64* @R92C_PCIE_CTRL_REG, align 8
  %133 = add nsw i64 %132, 3
  %134 = call i32 @rtwn_write_1(%struct.rtwn_softc* %131, i64 %133, i32 34)
  br label %135

135:                                              ; preds = %130, %125
  %136 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %137 = load i32, i32* @R92C_INT_MIG, align 4
  %138 = call i32 @rtwn_write_4(%struct.rtwn_softc* %136, i32 %137, i32 0)
  %139 = load %struct.r92c_softc*, %struct.r92c_softc** %4, align 8
  %140 = getelementptr inbounds %struct.r92c_softc, %struct.r92c_softc* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @R92C_BOARD_TYPE_DONGLE, align 8
  %143 = icmp ne i64 %141, %142
  br i1 %143, label %144, label %149

144:                                              ; preds = %135
  %145 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %146 = load i64, i64* @R92C_AFE_XTAL_CTRL, align 8
  %147 = add nsw i64 %146, 2
  %148 = call i32 @rtwn_setbits_1(%struct.rtwn_softc* %145, i64 %147, i32 2, i32 0)
  br label %149

149:                                              ; preds = %144, %135
  %150 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %151 = load i64, i64* @R92C_GPIO_MUXCFG, align 8
  %152 = load i32, i32* @R92C_GPIO_MUXCFG_RFKILL, align 4
  %153 = call i32 @rtwn_setbits_1(%struct.rtwn_softc* %150, i64 %151, i32 %152, i32 0)
  %154 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %155 = load i64, i64* @R92C_GPIO_IO_SEL, align 8
  %156 = call i32 @rtwn_read_1(%struct.rtwn_softc* %154, i64 %155)
  store i32 %156, i32* %5, align 4
  %157 = load i32, i32* %5, align 4
  %158 = load i32, i32* @R92C_GPIO_IO_SEL_RFKILL, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %167, label %161

161:                                              ; preds = %149
  %162 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %163 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @device_printf(i32 %164, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %166 = load i32, i32* @EPERM, align 4
  store i32 %166, i32* %2, align 4
  br label %230

167:                                              ; preds = %149
  %168 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %169 = load i64, i64* @R92C_APSD_CTRL, align 8
  %170 = load i32, i32* @R92C_APSD_CTRL_OFF, align 4
  %171 = call i32 @rtwn_setbits_1(%struct.rtwn_softc* %168, i64 %169, i32 %170, i32 0)
  store i32 0, i32* %6, align 4
  br label %172

172:                                              ; preds = %185, %167
  %173 = load i32, i32* %6, align 4
  %174 = icmp slt i32 %173, 200
  br i1 %174, label %175, label %188

175:                                              ; preds = %172
  %176 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %177 = load i64, i64* @R92C_APSD_CTRL, align 8
  %178 = call i32 @rtwn_read_1(%struct.rtwn_softc* %176, i64 %177)
  %179 = load i32, i32* @R92C_APSD_CTRL_OFF_STATUS, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %183, label %182

182:                                              ; preds = %175
  br label %188

183:                                              ; preds = %175
  %184 = call i32 @DELAY(i32 500)
  br label %185

185:                                              ; preds = %183
  %186 = load i32, i32* %6, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %6, align 4
  br label %172

188:                                              ; preds = %182, %172
  %189 = load i32, i32* %6, align 4
  %190 = icmp eq i32 %189, 200
  br i1 %190, label %191, label %197

191:                                              ; preds = %188
  %192 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %193 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @device_printf(i32 %194, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %196 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %196, i32* %2, align 4
  br label %230

197:                                              ; preds = %188
  %198 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %199 = load i64, i64* @R92C_CR, align 8
  %200 = load i32, i32* @R92C_CR_HCI_TXDMA_EN, align 4
  %201 = load i32, i32* @R92C_CR_HCI_RXDMA_EN, align 4
  %202 = or i32 %200, %201
  %203 = load i32, i32* @R92C_CR_TXDMA_EN, align 4
  %204 = or i32 %202, %203
  %205 = load i32, i32* @R92C_CR_RXDMA_EN, align 4
  %206 = or i32 %204, %205
  %207 = load i32, i32* @R92C_CR_PROTOCOL_EN, align 4
  %208 = or i32 %206, %207
  %209 = load i32, i32* @R92C_CR_SCHEDULE_EN, align 4
  %210 = or i32 %208, %209
  %211 = load i32, i32* @R92C_CR_MACTXEN, align 4
  %212 = or i32 %210, %211
  %213 = load i32, i32* @R92C_CR_MACRXEN, align 4
  %214 = or i32 %212, %213
  %215 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %216 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* @RTWN_CRYPTO_SW, align 8
  %219 = icmp ne i64 %217, %218
  br i1 %219, label %220, label %222

220:                                              ; preds = %197
  %221 = load i32, i32* @R92C_CR_ENSEC, align 4
  br label %223

222:                                              ; preds = %197
  br label %223

223:                                              ; preds = %222, %220
  %224 = phi i32 [ %221, %220 ], [ 0, %222 ]
  %225 = or i32 %214, %224
  %226 = call i32 @rtwn_setbits_2(%struct.rtwn_softc* %198, i64 %199, i32 0, i32 %225)
  %227 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %228 = load i32, i32* @R92C_MCUTST_1, align 4
  %229 = call i32 @rtwn_write_4(%struct.rtwn_softc* %227, i32 %228, i32 0)
  store i32 0, i32* %2, align 4
  br label %230

230:                                              ; preds = %223, %191, %161, %100, %29
  %231 = load i32, i32* %2, align 4
  ret i32 %231
}

declare dso_local i32 @rtwn_read_1(%struct.rtwn_softc*, i64) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @rtwn_write_1(%struct.rtwn_softc*, i64, i32) #1

declare dso_local i32 @rtwn_setbits_4(%struct.rtwn_softc*, i64, i32, i32) #1

declare dso_local i32 @rtwn_setbits_2(%struct.rtwn_softc*, i64, i32, i32) #1

declare dso_local i32 @rtwn_read_2(%struct.rtwn_softc*, i64) #1

declare dso_local i32 @rtwn_write_2(%struct.rtwn_softc*, i64, i32) #1

declare dso_local i32 @rtwn_write_4(%struct.rtwn_softc*, i32, i32) #1

declare dso_local i32 @rtwn_setbits_1(%struct.rtwn_softc*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
