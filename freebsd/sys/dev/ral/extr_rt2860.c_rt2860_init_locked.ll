; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt2860_init_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt2860_init_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.rt2860_softc = type { i32*, i32, i32, i64, i32*, i32, i32, i32, i32, %struct.TYPE_8__*, i32, %struct.TYPE_7__, %struct.TYPE_6__*, i64, %struct.ieee80211com }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ieee80211com = type { i32, i32, i32 }
%struct.ieee80211vap = type { i32 }

@RT2860_GPIO_CTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"radio is disabled by hardware switch\0A\00", align 1
@RT2860_PWR_PIN_CFG = common dso_local global i32 0, align 4
@RT2860_IO_RA_PE = common dso_local global i32 0, align 4
@RT2860_WPDMA_GLO_CFG = common dso_local global i32 0, align 4
@RT2860_RX_DMA_BUSY = common dso_local global i32 0, align 4
@RT2860_RX_DMA_EN = common dso_local global i32 0, align 4
@RT2860_TX_DMA_BUSY = common dso_local global i32 0, align 4
@RT2860_TX_DMA_EN = common dso_local global i32 0, align 4
@RT2860_TX_WB_DDONE = common dso_local global i32 0, align 4
@RT2860_WPDMA_RST_IDX = common dso_local global i32 0, align 4
@RT2860_RST_DRX_IDX0 = common dso_local global i32 0, align 4
@RT2860_RST_DTX_IDX5 = common dso_local global i32 0, align 4
@RT2860_RST_DTX_IDX4 = common dso_local global i32 0, align 4
@RT2860_RST_DTX_IDX3 = common dso_local global i32 0, align 4
@RT2860_RST_DTX_IDX2 = common dso_local global i32 0, align 4
@RT2860_RST_DTX_IDX1 = common dso_local global i32 0, align 4
@RT2860_RST_DTX_IDX0 = common dso_local global i32 0, align 4
@RT2860_SYS_CTRL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"could not load 8051 microcode\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"timeout waiting for DMA engine\0A\00", align 1
@RT2860_IO_RF_PE = common dso_local global i32 0, align 4
@RT2860_MAC_SYS_CTRL = common dso_local global i32 0, align 4
@RT2860_BBP_HRST = common dso_local global i32 0, align 4
@RT2860_MAC_SRST = common dso_local global i32 0, align 4
@rt2860_def_mac = common dso_local global %struct.TYPE_9__* null, align 8
@RT2860_TX_SW_CFG0 = common dso_local global i32 0, align 4
@RT2860_DLY_PAPE_EN_SHIFT = common dso_local global i32 0, align 4
@RT2860_PCI_CFG = common dso_local global i32 0, align 4
@RT2860_PCI_CFG_PCI = common dso_local global i32 0, align 4
@RT2860_PCIE = common dso_local global i32 0, align 4
@RT2860_US_CYC_CNT = common dso_local global i32 0, align 4
@RT2860_MAC_STATUS_REG = common dso_local global i32 0, align 4
@RT2860_RX_STATUS_BUSY = common dso_local global i32 0, align 4
@RT2860_TX_STATUS_BUSY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"timeout waiting for MAC\0A\00", align 1
@RT2860_H2M_BBPAGENT = common dso_local global i32 0, align 4
@RT2860_H2M_MAILBOX = common dso_local global i32 0, align 4
@RT2860_MCU_CMD_RFRESET = common dso_local global i32 0, align 4
@RT2860_SKEY_MODE_0_7 = common dso_local global i32 0, align 4
@RT2860_TX_RING_COUNT = common dso_local global i32 0, align 4
@RT2860_RX_BASE_PTR = common dso_local global i32 0, align 4
@RT2860_RX_MAX_CNT = common dso_local global i32 0, align 4
@RT2860_RX_RING_COUNT = common dso_local global i32 0, align 4
@RT2860_RX_CALC_IDX = common dso_local global i32 0, align 4
@RT2860_MAX_LEN_CFG = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i32 0, align 4
@RT2860_DELAY_INT_CFG = common dso_local global i32 0, align 4
@RT3070_RF_2020 = common dso_local global i64 0, align 8
@RT3070_RF_3020 = common dso_local global i64 0, align 8
@RT3070_RF_3320 = common dso_local global i64 0, align 8
@RT2860_MCU_CMD_LED1 = common dso_local global i32 0, align 4
@RT2860_MCU_CMD_LED2 = common dso_local global i32 0, align 4
@RT2860_MCU_CMD_LED3 = common dso_local global i32 0, align 4
@RT2860_MCU_CMD_SLEEP = common dso_local global i32 0, align 4
@RT2860_MCU_CMD_WAKEUP = common dso_local global i32 0, align 4
@RT2860_TX_RTS_CFG = common dso_local global i32 0, align 4
@IEEE80211_RTS_DEFAULT = common dso_local global i32 0, align 4
@RT2860_LED_RADIO = common dso_local global i32 0, align 4
@RT2860_INT_STATUS = common dso_local global i32 0, align 4
@RT2860_INT_MASK = common dso_local global i32 0, align 4
@RT2860_ADVANCED_PS = common dso_local global i32 0, align 4
@RT2860_MCU_CMD_PSLEVEL = common dso_local global i32 0, align 4
@RT2860_RUNNING = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@rt2860_watchdog = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2860_softc*)* @rt2860_init_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2860_init_locked(%struct.rt2860_softc* %0) #0 {
  %2 = alloca %struct.rt2860_softc*, align 8
  %3 = alloca %struct.ieee80211com*, align 8
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.rt2860_softc* %0, %struct.rt2860_softc** %2, align 8
  %13 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %14 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %13, i32 0, i32 14
  store %struct.ieee80211com* %14, %struct.ieee80211com** %3, align 8
  %15 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %16 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %15, i32 0, i32 2
  %17 = call %struct.ieee80211vap* @TAILQ_FIRST(i32* %16)
  store %struct.ieee80211vap* %17, %struct.ieee80211vap** %4, align 8
  %18 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %19 = call i32 @RAL_LOCK_ASSERT(%struct.rt2860_softc* %18)
  %20 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %21 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %20, i32 0, i32 13
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %1
  %25 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %26 = load i32, i32* @RT2860_GPIO_CTRL, align 4
  %27 = call i32 @RAL_READ(%struct.rt2860_softc* %25, i32 %26)
  %28 = and i32 %27, 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %24
  %31 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %32 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %31, i32 0, i32 10
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @device_printf(i32 %33, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %30, %24
  br label %36

36:                                               ; preds = %35, %1
  %37 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %38 = load i32, i32* @RT2860_PWR_PIN_CFG, align 4
  %39 = load i32, i32* @RT2860_IO_RA_PE, align 4
  %40 = call i32 @RAL_WRITE(%struct.rt2860_softc* %37, i32 %38, i32 %39)
  %41 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %42 = load i32, i32* @RT2860_WPDMA_GLO_CFG, align 4
  %43 = call i32 @RAL_READ(%struct.rt2860_softc* %41, i32 %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* @RT2860_RX_DMA_BUSY, align 4
  %45 = load i32, i32* @RT2860_RX_DMA_EN, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @RT2860_TX_DMA_BUSY, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @RT2860_TX_DMA_EN, align 4
  %50 = or i32 %48, %49
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %5, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* @RT2860_TX_WB_DDONE, align 4
  %55 = load i32, i32* %5, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %5, align 4
  %57 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %58 = load i32, i32* @RT2860_WPDMA_GLO_CFG, align 4
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @RAL_WRITE(%struct.rt2860_softc* %57, i32 %58, i32 %59)
  %61 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %62 = load i32, i32* @RT2860_WPDMA_RST_IDX, align 4
  %63 = load i32, i32* @RT2860_RST_DRX_IDX0, align 4
  %64 = load i32, i32* @RT2860_RST_DTX_IDX5, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @RT2860_RST_DTX_IDX4, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @RT2860_RST_DTX_IDX3, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @RT2860_RST_DTX_IDX2, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @RT2860_RST_DTX_IDX1, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @RT2860_RST_DTX_IDX0, align 4
  %75 = or i32 %73, %74
  %76 = call i32 @RAL_WRITE(%struct.rt2860_softc* %61, i32 %62, i32 %75)
  %77 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %78 = load i32, i32* @RT2860_SYS_CTRL, align 4
  %79 = call i32 @RAL_WRITE(%struct.rt2860_softc* %77, i32 %78, i32 3615)
  %80 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %81 = call i32 @RAL_BARRIER_WRITE(%struct.rt2860_softc* %80)
  %82 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %83 = load i32, i32* @RT2860_SYS_CTRL, align 4
  %84 = call i32 @RAL_WRITE(%struct.rt2860_softc* %82, i32 %83, i32 3584)
  %85 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %86 = call i32 @rt2860_load_microcode(%struct.rt2860_softc* %85)
  store i32 %86, i32* %12, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %36
  %89 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %90 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %89, i32 0, i32 10
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @device_printf(i32 %91, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %93 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %94 = call i32 @rt2860_stop_locked(%struct.rt2860_softc* %93)
  br label %731

95:                                               ; preds = %36
  %96 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %97 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %98 = icmp ne %struct.ieee80211vap* %97, null
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %101 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  br label %107

103:                                              ; preds = %95
  %104 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %105 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  br label %107

107:                                              ; preds = %103, %99
  %108 = phi i32 [ %102, %99 ], [ %106, %103 ]
  %109 = call i32 @rt2860_set_macaddr(%struct.rt2860_softc* %96, i32 %108)
  store i32 0, i32* %10, align 4
  br label %110

110:                                              ; preds = %135, %107
  %111 = load i32, i32* %10, align 4
  %112 = icmp slt i32 %111, 5
  br i1 %112, label %113, label %138

113:                                              ; preds = %110
  %114 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %115 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %10, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %120, -1
  br i1 %121, label %122, label %123

122:                                              ; preds = %113
  br label %135

123:                                              ; preds = %113
  %124 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %125 = load i32, i32* %10, align 4
  %126 = call i32 @RT2860_TX_PWR_CFG(i32 %125)
  %127 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %128 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %10, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @RAL_WRITE(%struct.rt2860_softc* %124, i32 %126, i32 %133)
  br label %135

135:                                              ; preds = %123, %122
  %136 = load i32, i32* %10, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %10, align 4
  br label %110

138:                                              ; preds = %110
  store i32 0, i32* %11, align 4
  br label %139

139:                                              ; preds = %155, %138
  %140 = load i32, i32* %11, align 4
  %141 = icmp slt i32 %140, 100
  br i1 %141, label %142, label %158

142:                                              ; preds = %139
  %143 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %144 = load i32, i32* @RT2860_WPDMA_GLO_CFG, align 4
  %145 = call i32 @RAL_READ(%struct.rt2860_softc* %143, i32 %144)
  store i32 %145, i32* %5, align 4
  %146 = load i32, i32* %5, align 4
  %147 = load i32, i32* @RT2860_TX_DMA_BUSY, align 4
  %148 = load i32, i32* @RT2860_RX_DMA_BUSY, align 4
  %149 = or i32 %147, %148
  %150 = and i32 %146, %149
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %142
  br label %158

153:                                              ; preds = %142
  %154 = call i32 @DELAY(i32 1000)
  br label %155

155:                                              ; preds = %153
  %156 = load i32, i32* %11, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %11, align 4
  br label %139

158:                                              ; preds = %152, %139
  %159 = load i32, i32* %11, align 4
  %160 = icmp eq i32 %159, 100
  br i1 %160, label %161, label %168

161:                                              ; preds = %158
  %162 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %163 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %162, i32 0, i32 10
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @device_printf(i32 %164, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %166 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %167 = call i32 @rt2860_stop_locked(%struct.rt2860_softc* %166)
  br label %731

168:                                              ; preds = %158
  %169 = load i32, i32* @RT2860_RX_DMA_BUSY, align 4
  %170 = load i32, i32* @RT2860_RX_DMA_EN, align 4
  %171 = or i32 %169, %170
  %172 = load i32, i32* @RT2860_TX_DMA_BUSY, align 4
  %173 = or i32 %171, %172
  %174 = load i32, i32* @RT2860_TX_DMA_EN, align 4
  %175 = or i32 %173, %174
  %176 = xor i32 %175, -1
  %177 = load i32, i32* %5, align 4
  %178 = and i32 %177, %176
  store i32 %178, i32* %5, align 4
  %179 = load i32, i32* @RT2860_TX_WB_DDONE, align 4
  %180 = load i32, i32* %5, align 4
  %181 = or i32 %180, %179
  store i32 %181, i32* %5, align 4
  %182 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %183 = load i32, i32* @RT2860_WPDMA_GLO_CFG, align 4
  %184 = load i32, i32* %5, align 4
  %185 = call i32 @RAL_WRITE(%struct.rt2860_softc* %182, i32 %183, i32 %184)
  %186 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %187 = load i32, i32* @RT2860_WPDMA_RST_IDX, align 4
  %188 = call i32 @RAL_WRITE(%struct.rt2860_softc* %186, i32 %187, i32 65599)
  %189 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %190 = load i32, i32* @RT2860_SYS_CTRL, align 4
  %191 = call i32 @RAL_WRITE(%struct.rt2860_softc* %189, i32 %190, i32 3615)
  %192 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %193 = call i32 @RAL_BARRIER_WRITE(%struct.rt2860_softc* %192)
  %194 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %195 = load i32, i32* @RT2860_SYS_CTRL, align 4
  %196 = call i32 @RAL_WRITE(%struct.rt2860_softc* %194, i32 %195, i32 3584)
  %197 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %198 = load i32, i32* @RT2860_PWR_PIN_CFG, align 4
  %199 = load i32, i32* @RT2860_IO_RA_PE, align 4
  %200 = load i32, i32* @RT2860_IO_RF_PE, align 4
  %201 = or i32 %199, %200
  %202 = call i32 @RAL_WRITE(%struct.rt2860_softc* %197, i32 %198, i32 %201)
  %203 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %204 = load i32, i32* @RT2860_MAC_SYS_CTRL, align 4
  %205 = load i32, i32* @RT2860_BBP_HRST, align 4
  %206 = load i32, i32* @RT2860_MAC_SRST, align 4
  %207 = or i32 %205, %206
  %208 = call i32 @RAL_WRITE(%struct.rt2860_softc* %203, i32 %204, i32 %207)
  %209 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %210 = call i32 @RAL_BARRIER_WRITE(%struct.rt2860_softc* %209)
  %211 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %212 = load i32, i32* @RT2860_MAC_SYS_CTRL, align 4
  %213 = call i32 @RAL_WRITE(%struct.rt2860_softc* %211, i32 %212, i32 0)
  store i32 0, i32* %8, align 4
  br label %214

214:                                              ; preds = %234, %168
  %215 = load i32, i32* %8, align 4
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** @rt2860_def_mac, align 8
  %217 = call i32 @nitems(%struct.TYPE_9__* %216)
  %218 = icmp slt i32 %215, %217
  br i1 %218, label %219, label %237

219:                                              ; preds = %214
  %220 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %221 = load %struct.TYPE_9__*, %struct.TYPE_9__** @rt2860_def_mac, align 8
  %222 = load i32, i32* %8, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.TYPE_9__*, %struct.TYPE_9__** @rt2860_def_mac, align 8
  %228 = load i32, i32* %8, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %227, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @RAL_WRITE(%struct.rt2860_softc* %220, i32 %226, i32 %232)
  br label %234

234:                                              ; preds = %219
  %235 = load i32, i32* %8, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %8, align 4
  br label %214

237:                                              ; preds = %214
  %238 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %239 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 8
  %241 = icmp sge i32 %240, 21392
  br i1 %241, label %242, label %246

242:                                              ; preds = %237
  %243 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %244 = load i32, i32* @RT2860_TX_SW_CFG0, align 4
  %245 = call i32 @RAL_WRITE(%struct.rt2860_softc* %243, i32 %244, i32 1028)
  br label %258

246:                                              ; preds = %237
  %247 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %248 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 8
  %250 = icmp sge i32 %249, 12401
  br i1 %250, label %251, label %257

251:                                              ; preds = %246
  %252 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %253 = load i32, i32* @RT2860_TX_SW_CFG0, align 4
  %254 = load i32, i32* @RT2860_DLY_PAPE_EN_SHIFT, align 4
  %255 = shl i32 4, %254
  %256 = call i32 @RAL_WRITE(%struct.rt2860_softc* %252, i32 %253, i32 %255)
  br label %257

257:                                              ; preds = %251, %246
  br label %258

258:                                              ; preds = %257, %242
  %259 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %260 = load i32, i32* @RT2860_PCI_CFG, align 4
  %261 = call i32 @RAL_READ(%struct.rt2860_softc* %259, i32 %260)
  %262 = load i32, i32* @RT2860_PCI_CFG_PCI, align 4
  %263 = and i32 %261, %262
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %281, label %265

265:                                              ; preds = %258
  %266 = load i32, i32* @RT2860_PCIE, align 4
  %267 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %268 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 4
  %270 = or i32 %269, %266
  store i32 %270, i32* %268, align 4
  %271 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %272 = load i32, i32* @RT2860_US_CYC_CNT, align 4
  %273 = call i32 @RAL_READ(%struct.rt2860_softc* %271, i32 %272)
  store i32 %273, i32* %5, align 4
  %274 = load i32, i32* %5, align 4
  %275 = and i32 %274, -256
  %276 = or i32 %275, 125
  store i32 %276, i32* %5, align 4
  %277 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %278 = load i32, i32* @RT2860_US_CYC_CNT, align 4
  %279 = load i32, i32* %5, align 4
  %280 = call i32 @RAL_WRITE(%struct.rt2860_softc* %277, i32 %278, i32 %279)
  br label %281

281:                                              ; preds = %265, %258
  store i32 0, i32* %11, align 4
  br label %282

282:                                              ; preds = %297, %281
  %283 = load i32, i32* %11, align 4
  %284 = icmp slt i32 %283, 100
  br i1 %284, label %285, label %300

285:                                              ; preds = %282
  %286 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %287 = load i32, i32* @RT2860_MAC_STATUS_REG, align 4
  %288 = call i32 @RAL_READ(%struct.rt2860_softc* %286, i32 %287)
  %289 = load i32, i32* @RT2860_RX_STATUS_BUSY, align 4
  %290 = load i32, i32* @RT2860_TX_STATUS_BUSY, align 4
  %291 = or i32 %289, %290
  %292 = and i32 %288, %291
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %295, label %294

294:                                              ; preds = %285
  br label %300

295:                                              ; preds = %285
  %296 = call i32 @DELAY(i32 1000)
  br label %297

297:                                              ; preds = %295
  %298 = load i32, i32* %11, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %11, align 4
  br label %282

300:                                              ; preds = %294, %282
  %301 = load i32, i32* %11, align 4
  %302 = icmp eq i32 %301, 100
  br i1 %302, label %303, label %310

303:                                              ; preds = %300
  %304 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %305 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %304, i32 0, i32 10
  %306 = load i32, i32* %305, align 8
  %307 = call i32 @device_printf(i32 %306, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %308 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %309 = call i32 @rt2860_stop_locked(%struct.rt2860_softc* %308)
  br label %731

310:                                              ; preds = %300
  %311 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %312 = load i32, i32* @RT2860_H2M_BBPAGENT, align 4
  %313 = call i32 @RAL_WRITE(%struct.rt2860_softc* %311, i32 %312, i32 0)
  %314 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %315 = load i32, i32* @RT2860_H2M_MAILBOX, align 4
  %316 = call i32 @RAL_WRITE(%struct.rt2860_softc* %314, i32 %315, i32 0)
  %317 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %318 = load i32, i32* @RT2860_MCU_CMD_RFRESET, align 4
  %319 = call i32 @rt2860_mcu_cmd(%struct.rt2860_softc* %317, i32 %318, i32 0, i32 0)
  %320 = call i32 @DELAY(i32 1000)
  %321 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %322 = call i32 @rt2860_bbp_init(%struct.rt2860_softc* %321)
  store i32 %322, i32* %12, align 4
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %327

324:                                              ; preds = %310
  %325 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %326 = call i32 @rt2860_stop_locked(%struct.rt2860_softc* %325)
  br label %731

327:                                              ; preds = %310
  %328 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %329 = call i32 @RT2860_WCID_ENTRY(i32 0)
  %330 = call i32 @RAL_SET_REGION_4(%struct.rt2860_softc* %328, i32 %329, i32 0, i32 512)
  %331 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %332 = call i32 @RT2860_PKEY(i32 0)
  %333 = call i32 @RAL_SET_REGION_4(%struct.rt2860_softc* %331, i32 %332, i32 0, i32 2048)
  %334 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %335 = call i32 @RT2860_IVEIV(i32 0)
  %336 = call i32 @RAL_SET_REGION_4(%struct.rt2860_softc* %334, i32 %335, i32 0, i32 512)
  %337 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %338 = call i32 @RT2860_WCID_ATTR(i32 0)
  %339 = call i32 @RAL_SET_REGION_4(%struct.rt2860_softc* %337, i32 %338, i32 0, i32 256)
  %340 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %341 = call i32 @RT2860_SKEY(i32 0, i32 0)
  %342 = call i32 @RAL_SET_REGION_4(%struct.rt2860_softc* %340, i32 %341, i32 0, i32 256)
  %343 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %344 = load i32, i32* @RT2860_SKEY_MODE_0_7, align 4
  %345 = call i32 @RAL_SET_REGION_4(%struct.rt2860_softc* %343, i32 %344, i32 0, i32 4)
  store i32 0, i32* %9, align 4
  br label %346

346:                                              ; preds = %371, %327
  %347 = load i32, i32* %9, align 4
  %348 = icmp slt i32 %347, 6
  br i1 %348, label %349, label %374

349:                                              ; preds = %346
  %350 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %351 = load i32, i32* %9, align 4
  %352 = call i32 @RT2860_TX_BASE_PTR(i32 %351)
  %353 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %354 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %353, i32 0, i32 12
  %355 = load %struct.TYPE_6__*, %struct.TYPE_6__** %354, align 8
  %356 = load i32, i32* %9, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %355, i64 %357
  %359 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 4
  %361 = call i32 @RAL_WRITE(%struct.rt2860_softc* %350, i32 %352, i32 %360)
  %362 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %363 = load i32, i32* %9, align 4
  %364 = call i32 @RT2860_TX_MAX_CNT(i32 %363)
  %365 = load i32, i32* @RT2860_TX_RING_COUNT, align 4
  %366 = call i32 @RAL_WRITE(%struct.rt2860_softc* %362, i32 %364, i32 %365)
  %367 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %368 = load i32, i32* %9, align 4
  %369 = call i32 @RT2860_TX_CTX_IDX(i32 %368)
  %370 = call i32 @RAL_WRITE(%struct.rt2860_softc* %367, i32 %369, i32 0)
  br label %371

371:                                              ; preds = %349
  %372 = load i32, i32* %9, align 4
  %373 = add nsw i32 %372, 1
  store i32 %373, i32* %9, align 4
  br label %346

374:                                              ; preds = %346
  %375 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %376 = load i32, i32* @RT2860_RX_BASE_PTR, align 4
  %377 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %378 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %377, i32 0, i32 11
  %379 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 4
  %381 = call i32 @RAL_WRITE(%struct.rt2860_softc* %375, i32 %376, i32 %380)
  %382 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %383 = load i32, i32* @RT2860_RX_MAX_CNT, align 4
  %384 = load i32, i32* @RT2860_RX_RING_COUNT, align 4
  %385 = call i32 @RAL_WRITE(%struct.rt2860_softc* %382, i32 %383, i32 %384)
  %386 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %387 = load i32, i32* @RT2860_RX_CALC_IDX, align 4
  %388 = load i32, i32* @RT2860_RX_RING_COUNT, align 4
  %389 = sub nsw i32 %388, 1
  %390 = call i32 @RAL_WRITE(%struct.rt2860_softc* %386, i32 %387, i32 %389)
  %391 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %392 = load i32, i32* @RT2860_MAX_LEN_CFG, align 4
  %393 = load i32, i32* @MCLBYTES, align 4
  %394 = sext i32 %393 to i64
  %395 = sub i64 %394, 4
  %396 = sub i64 %395, 2
  %397 = or i64 4096, %396
  %398 = trunc i64 %397 to i32
  %399 = call i32 @RAL_WRITE(%struct.rt2860_softc* %391, i32 %392, i32 %398)
  store i32 0, i32* %11, align 4
  br label %400

400:                                              ; preds = %416, %374
  %401 = load i32, i32* %11, align 4
  %402 = icmp slt i32 %401, 100
  br i1 %402, label %403, label %419

403:                                              ; preds = %400
  %404 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %405 = load i32, i32* @RT2860_WPDMA_GLO_CFG, align 4
  %406 = call i32 @RAL_READ(%struct.rt2860_softc* %404, i32 %405)
  store i32 %406, i32* %5, align 4
  %407 = load i32, i32* %5, align 4
  %408 = load i32, i32* @RT2860_TX_DMA_BUSY, align 4
  %409 = load i32, i32* @RT2860_RX_DMA_BUSY, align 4
  %410 = or i32 %408, %409
  %411 = and i32 %407, %410
  %412 = icmp eq i32 %411, 0
  br i1 %412, label %413, label %414

413:                                              ; preds = %403
  br label %419

414:                                              ; preds = %403
  %415 = call i32 @DELAY(i32 1000)
  br label %416

416:                                              ; preds = %414
  %417 = load i32, i32* %11, align 4
  %418 = add nsw i32 %417, 1
  store i32 %418, i32* %11, align 4
  br label %400

419:                                              ; preds = %413, %400
  %420 = load i32, i32* %11, align 4
  %421 = icmp eq i32 %420, 100
  br i1 %421, label %422, label %429

422:                                              ; preds = %419
  %423 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %424 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %423, i32 0, i32 10
  %425 = load i32, i32* %424, align 8
  %426 = call i32 @device_printf(i32 %425, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %427 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %428 = call i32 @rt2860_stop_locked(%struct.rt2860_softc* %427)
  br label %731

429:                                              ; preds = %419
  %430 = load i32, i32* @RT2860_RX_DMA_BUSY, align 4
  %431 = load i32, i32* @RT2860_RX_DMA_EN, align 4
  %432 = or i32 %430, %431
  %433 = load i32, i32* @RT2860_TX_DMA_BUSY, align 4
  %434 = or i32 %432, %433
  %435 = load i32, i32* @RT2860_TX_DMA_EN, align 4
  %436 = or i32 %434, %435
  %437 = xor i32 %436, -1
  %438 = load i32, i32* %5, align 4
  %439 = and i32 %438, %437
  store i32 %439, i32* %5, align 4
  %440 = load i32, i32* @RT2860_TX_WB_DDONE, align 4
  %441 = load i32, i32* %5, align 4
  %442 = or i32 %441, %440
  store i32 %442, i32* %5, align 4
  %443 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %444 = load i32, i32* @RT2860_WPDMA_GLO_CFG, align 4
  %445 = load i32, i32* %5, align 4
  %446 = call i32 @RAL_WRITE(%struct.rt2860_softc* %443, i32 %444, i32 %445)
  %447 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %448 = load i32, i32* @RT2860_DELAY_INT_CFG, align 4
  %449 = call i32 @RAL_WRITE(%struct.rt2860_softc* %447, i32 %448, i32 0)
  store i32 0, i32* %8, align 4
  br label %450

450:                                              ; preds = %493, %429
  %451 = load i32, i32* %8, align 4
  %452 = icmp slt i32 %451, 8
  br i1 %452, label %453, label %496

453:                                              ; preds = %450
  %454 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %455 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %454, i32 0, i32 9
  %456 = load %struct.TYPE_8__*, %struct.TYPE_8__** %455, align 8
  %457 = load i32, i32* %8, align 4
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %456, i64 %458
  %460 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %459, i32 0, i32 0
  %461 = load i32, i32* %460, align 4
  %462 = icmp eq i32 %461, 0
  br i1 %462, label %473, label %463

463:                                              ; preds = %453
  %464 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %465 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %464, i32 0, i32 9
  %466 = load %struct.TYPE_8__*, %struct.TYPE_8__** %465, align 8
  %467 = load i32, i32* %8, align 4
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %466, i64 %468
  %470 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %469, i32 0, i32 0
  %471 = load i32, i32* %470, align 4
  %472 = icmp eq i32 %471, 255
  br i1 %472, label %473, label %474

473:                                              ; preds = %463, %453
  br label %493

474:                                              ; preds = %463
  %475 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %476 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %477 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %476, i32 0, i32 9
  %478 = load %struct.TYPE_8__*, %struct.TYPE_8__** %477, align 8
  %479 = load i32, i32* %8, align 4
  %480 = sext i32 %479 to i64
  %481 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %478, i64 %480
  %482 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %481, i32 0, i32 0
  %483 = load i32, i32* %482, align 4
  %484 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %485 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %484, i32 0, i32 9
  %486 = load %struct.TYPE_8__*, %struct.TYPE_8__** %485, align 8
  %487 = load i32, i32* %8, align 4
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %486, i64 %488
  %490 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %489, i32 0, i32 1
  %491 = load i32, i32* %490, align 4
  %492 = call i32 @rt2860_mcu_bbp_write(%struct.rt2860_softc* %475, i32 %483, i32 %491)
  br label %493

493:                                              ; preds = %474, %473
  %494 = load i32, i32* %8, align 4
  %495 = add nsw i32 %494, 1
  store i32 %495, i32* %8, align 4
  br label %450

496:                                              ; preds = %450
  %497 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %498 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %497, i32 0, i32 3
  %499 = load i64, i64* %498, align 8
  %500 = load i64, i64* @RT3070_RF_2020, align 8
  %501 = icmp eq i64 %499, %500
  br i1 %501, label %519, label %502

502:                                              ; preds = %496
  %503 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %504 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %503, i32 0, i32 3
  %505 = load i64, i64* %504, align 8
  %506 = load i64, i64* @RT3070_RF_3020, align 8
  %507 = icmp eq i64 %505, %506
  br i1 %507, label %519, label %508

508:                                              ; preds = %502
  %509 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %510 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %509, i32 0, i32 3
  %511 = load i64, i64* %510, align 8
  %512 = load i64, i64* @RT3070_RF_3320, align 8
  %513 = icmp eq i64 %511, %512
  br i1 %513, label %519, label %514

514:                                              ; preds = %508
  %515 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %516 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %515, i32 0, i32 1
  %517 = load i32, i32* %516, align 8
  %518 = icmp eq i32 %517, 21392
  br i1 %518, label %519, label %522

519:                                              ; preds = %514, %508, %502, %496
  %520 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %521 = call i32 @rt3090_set_rx_antenna(%struct.rt2860_softc* %520, i32 0)
  br label %522

522:                                              ; preds = %519, %514
  %523 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %524 = load i32, i32* @RT2860_MCU_CMD_LED1, align 4
  %525 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %526 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %525, i32 0, i32 4
  %527 = load i32*, i32** %526, align 8
  %528 = getelementptr inbounds i32, i32* %527, i64 0
  %529 = load i32, i32* %528, align 4
  %530 = call i32 @rt2860_mcu_cmd(%struct.rt2860_softc* %523, i32 %524, i32 %529, i32 0)
  %531 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %532 = load i32, i32* @RT2860_MCU_CMD_LED2, align 4
  %533 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %534 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %533, i32 0, i32 4
  %535 = load i32*, i32** %534, align 8
  %536 = getelementptr inbounds i32, i32* %535, i64 1
  %537 = load i32, i32* %536, align 4
  %538 = call i32 @rt2860_mcu_cmd(%struct.rt2860_softc* %531, i32 %532, i32 %537, i32 0)
  %539 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %540 = load i32, i32* @RT2860_MCU_CMD_LED3, align 4
  %541 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %542 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %541, i32 0, i32 4
  %543 = load i32*, i32** %542, align 8
  %544 = getelementptr inbounds i32, i32* %543, i64 2
  %545 = load i32, i32* %544, align 4
  %546 = call i32 @rt2860_mcu_cmd(%struct.rt2860_softc* %539, i32 %540, i32 %545, i32 0)
  %547 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %548 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %547, i32 0, i32 1
  %549 = load i32, i32* %548, align 8
  %550 = icmp sge i32 %549, 21392
  br i1 %550, label %551, label %554

551:                                              ; preds = %522
  %552 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %553 = call i32 @rt5390_rf_init(%struct.rt2860_softc* %552)
  br label %568

554:                                              ; preds = %522
  %555 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %556 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %555, i32 0, i32 1
  %557 = load i32, i32* %556, align 8
  %558 = icmp sge i32 %557, 12401
  br i1 %558, label %559, label %567

559:                                              ; preds = %554
  %560 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %561 = call i32 @rt3090_rf_init(%struct.rt2860_softc* %560)
  store i32 %561, i32* %12, align 4
  %562 = icmp ne i32 %561, 0
  br i1 %562, label %563, label %566

563:                                              ; preds = %559
  %564 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %565 = call i32 @rt2860_stop_locked(%struct.rt2860_softc* %564)
  br label %731

566:                                              ; preds = %559
  br label %567

567:                                              ; preds = %566, %554
  br label %568

568:                                              ; preds = %567, %551
  %569 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %570 = load i32, i32* @RT2860_MCU_CMD_SLEEP, align 4
  %571 = call i32 @rt2860_mcu_cmd(%struct.rt2860_softc* %569, i32 %570, i32 767, i32 1)
  %572 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %573 = load i32, i32* @RT2860_MCU_CMD_WAKEUP, align 4
  %574 = call i32 @rt2860_mcu_cmd(%struct.rt2860_softc* %572, i32 %573, i32 0, i32 1)
  %575 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %576 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %575, i32 0, i32 1
  %577 = load i32, i32* %576, align 8
  %578 = icmp sge i32 %577, 21392
  br i1 %578, label %579, label %582

579:                                              ; preds = %568
  %580 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %581 = call i32 @rt5390_rf_wakeup(%struct.rt2860_softc* %580)
  br label %591

582:                                              ; preds = %568
  %583 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %584 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %583, i32 0, i32 1
  %585 = load i32, i32* %584, align 8
  %586 = icmp sge i32 %585, 12401
  br i1 %586, label %587, label %590

587:                                              ; preds = %582
  %588 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %589 = call i32 @rt3090_rf_wakeup(%struct.rt2860_softc* %588)
  br label %590

590:                                              ; preds = %587, %582
  br label %591

591:                                              ; preds = %590, %579
  %592 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %593 = call i32 @rt2860_mcu_bbp_read(%struct.rt2860_softc* %592, i32 3)
  store i32 %593, i32* %7, align 4
  %594 = load i32, i32* %7, align 4
  %595 = and i32 %594, -25
  store i32 %595, i32* %7, align 4
  %596 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %597 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %596, i32 0, i32 5
  %598 = load i32, i32* %597, align 8
  %599 = icmp eq i32 %598, 2
  br i1 %599, label %600, label %603

600:                                              ; preds = %591
  %601 = load i32, i32* %7, align 4
  %602 = or i32 %601, 8
  store i32 %602, i32* %7, align 4
  br label %612

603:                                              ; preds = %591
  %604 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %605 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %604, i32 0, i32 5
  %606 = load i32, i32* %605, align 8
  %607 = icmp eq i32 %606, 3
  br i1 %607, label %608, label %611

608:                                              ; preds = %603
  %609 = load i32, i32* %7, align 4
  %610 = or i32 %609, 16
  store i32 %610, i32* %7, align 4
  br label %611

611:                                              ; preds = %608, %603
  br label %612

612:                                              ; preds = %611, %600
  %613 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %614 = load i32, i32* %7, align 4
  %615 = call i32 @rt2860_mcu_bbp_write(%struct.rt2860_softc* %613, i32 3, i32 %614)
  %616 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %617 = call i32 @rt2860_mcu_bbp_read(%struct.rt2860_softc* %616, i32 1)
  store i32 %617, i32* %6, align 4
  %618 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %619 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %618, i32 0, i32 6
  %620 = load i32, i32* %619, align 4
  %621 = icmp eq i32 %620, 1
  br i1 %621, label %622, label %625

622:                                              ; preds = %612
  %623 = load i32, i32* %6, align 4
  %624 = and i32 %623, -25
  store i32 %624, i32* %6, align 4
  br label %655

625:                                              ; preds = %612
  %626 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %627 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %626, i32 0, i32 1
  %628 = load i32, i32* %627, align 8
  %629 = icmp eq i32 %628, 13715
  br i1 %629, label %630, label %639

630:                                              ; preds = %625
  %631 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %632 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %631, i32 0, i32 6
  %633 = load i32, i32* %632, align 4
  %634 = icmp eq i32 %633, 2
  br i1 %634, label %635, label %639

635:                                              ; preds = %630
  %636 = load i32, i32* %6, align 4
  %637 = and i32 %636, -17
  %638 = or i32 %637, 8
  store i32 %638, i32* %6, align 4
  br label %654

639:                                              ; preds = %630, %625
  %640 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %641 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %640, i32 0, i32 1
  %642 = load i32, i32* %641, align 8
  %643 = icmp eq i32 %642, 13715
  br i1 %643, label %644, label %653

644:                                              ; preds = %639
  %645 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %646 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %645, i32 0, i32 6
  %647 = load i32, i32* %646, align 4
  %648 = icmp eq i32 %647, 3
  br i1 %648, label %649, label %653

649:                                              ; preds = %644
  %650 = load i32, i32* %6, align 4
  %651 = and i32 %650, -9
  %652 = or i32 %651, 16
  store i32 %652, i32* %6, align 4
  br label %653

653:                                              ; preds = %649, %644, %639
  br label %654

654:                                              ; preds = %653, %635
  br label %655

655:                                              ; preds = %654, %622
  %656 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %657 = load i32, i32* %6, align 4
  %658 = call i32 @rt2860_mcu_bbp_write(%struct.rt2860_softc* %656, i32 1, i32 %657)
  %659 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %660 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %659, i32 0, i32 1
  %661 = load i32, i32* %660, align 8
  %662 = icmp sge i32 %661, 12401
  br i1 %662, label %663, label %666

663:                                              ; preds = %655
  %664 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %665 = call i32 @rt3090_rf_setup(%struct.rt2860_softc* %664)
  br label %666

666:                                              ; preds = %663, %655
  %667 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %668 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %669 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %668, i32 0, i32 0
  %670 = load i32, i32* %669, align 4
  %671 = call i32 @rt2860_switch_chan(%struct.rt2860_softc* %667, i32 %670)
  %672 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %673 = load i32, i32* @RT2860_MCU_CMD_RFRESET, align 4
  %674 = call i32 @rt2860_mcu_cmd(%struct.rt2860_softc* %672, i32 %673, i32 0, i32 0)
  %675 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %676 = load i32, i32* @RT2860_TX_RTS_CFG, align 4
  %677 = call i32 @RAL_READ(%struct.rt2860_softc* %675, i32 %676)
  store i32 %677, i32* %5, align 4
  %678 = load i32, i32* %5, align 4
  %679 = and i32 %678, -16776961
  store i32 %679, i32* %5, align 4
  %680 = load i32, i32* @IEEE80211_RTS_DEFAULT, align 4
  %681 = shl i32 %680, 8
  %682 = load i32, i32* %5, align 4
  %683 = or i32 %682, %681
  store i32 %683, i32* %5, align 4
  %684 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %685 = load i32, i32* @RT2860_TX_RTS_CFG, align 4
  %686 = load i32, i32* %5, align 4
  %687 = call i32 @RAL_WRITE(%struct.rt2860_softc* %684, i32 %685, i32 %686)
  %688 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %689 = call i32 @rt2860_updateprot(%struct.rt2860_softc* %688)
  %690 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %691 = load i32, i32* @RT2860_LED_RADIO, align 4
  %692 = call i32 @rt2860_set_leds(%struct.rt2860_softc* %690, i32 %691)
  %693 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %694 = call i32 @rt2860_txrx_enable(%struct.rt2860_softc* %693)
  store i32 %694, i32* %12, align 4
  %695 = icmp ne i32 %694, 0
  br i1 %695, label %696, label %699

696:                                              ; preds = %666
  %697 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %698 = call i32 @rt2860_stop_locked(%struct.rt2860_softc* %697)
  br label %731

699:                                              ; preds = %666
  %700 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %701 = load i32, i32* @RT2860_INT_STATUS, align 4
  %702 = call i32 @RAL_WRITE(%struct.rt2860_softc* %700, i32 %701, i32 -1)
  %703 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %704 = load i32, i32* @RT2860_INT_MASK, align 4
  %705 = call i32 @RAL_WRITE(%struct.rt2860_softc* %703, i32 %704, i32 262140)
  %706 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %707 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %706, i32 0, i32 2
  %708 = load i32, i32* %707, align 4
  %709 = load i32, i32* @RT2860_ADVANCED_PS, align 4
  %710 = and i32 %708, %709
  %711 = icmp ne i32 %710, 0
  br i1 %711, label %712, label %719

712:                                              ; preds = %699
  %713 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %714 = load i32, i32* @RT2860_MCU_CMD_PSLEVEL, align 4
  %715 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %716 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %715, i32 0, i32 7
  %717 = load i32, i32* %716, align 8
  %718 = call i32 @rt2860_mcu_cmd(%struct.rt2860_softc* %713, i32 %714, i32 %717, i32 0)
  br label %719

719:                                              ; preds = %712, %699
  %720 = load i32, i32* @RT2860_RUNNING, align 4
  %721 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %722 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %721, i32 0, i32 2
  %723 = load i32, i32* %722, align 4
  %724 = or i32 %723, %720
  store i32 %724, i32* %722, align 4
  %725 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %726 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %725, i32 0, i32 8
  %727 = load i32, i32* @hz, align 4
  %728 = load i32, i32* @rt2860_watchdog, align 4
  %729 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %730 = call i32 @callout_reset(i32* %726, i32 %727, i32 %728, %struct.rt2860_softc* %729)
  br label %731

731:                                              ; preds = %719, %696, %563, %422, %324, %303, %161, %88
  ret void
}

declare dso_local %struct.ieee80211vap* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @RAL_LOCK_ASSERT(%struct.rt2860_softc*) #1

declare dso_local i32 @RAL_READ(%struct.rt2860_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @RAL_WRITE(%struct.rt2860_softc*, i32, i32) #1

declare dso_local i32 @RAL_BARRIER_WRITE(%struct.rt2860_softc*) #1

declare dso_local i32 @rt2860_load_microcode(%struct.rt2860_softc*) #1

declare dso_local i32 @rt2860_stop_locked(%struct.rt2860_softc*) #1

declare dso_local i32 @rt2860_set_macaddr(%struct.rt2860_softc*, i32) #1

declare dso_local i32 @RT2860_TX_PWR_CFG(i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @nitems(%struct.TYPE_9__*) #1

declare dso_local i32 @rt2860_mcu_cmd(%struct.rt2860_softc*, i32, i32, i32) #1

declare dso_local i32 @rt2860_bbp_init(%struct.rt2860_softc*) #1

declare dso_local i32 @RAL_SET_REGION_4(%struct.rt2860_softc*, i32, i32, i32) #1

declare dso_local i32 @RT2860_WCID_ENTRY(i32) #1

declare dso_local i32 @RT2860_PKEY(i32) #1

declare dso_local i32 @RT2860_IVEIV(i32) #1

declare dso_local i32 @RT2860_WCID_ATTR(i32) #1

declare dso_local i32 @RT2860_SKEY(i32, i32) #1

declare dso_local i32 @RT2860_TX_BASE_PTR(i32) #1

declare dso_local i32 @RT2860_TX_MAX_CNT(i32) #1

declare dso_local i32 @RT2860_TX_CTX_IDX(i32) #1

declare dso_local i32 @rt2860_mcu_bbp_write(%struct.rt2860_softc*, i32, i32) #1

declare dso_local i32 @rt3090_set_rx_antenna(%struct.rt2860_softc*, i32) #1

declare dso_local i32 @rt5390_rf_init(%struct.rt2860_softc*) #1

declare dso_local i32 @rt3090_rf_init(%struct.rt2860_softc*) #1

declare dso_local i32 @rt5390_rf_wakeup(%struct.rt2860_softc*) #1

declare dso_local i32 @rt3090_rf_wakeup(%struct.rt2860_softc*) #1

declare dso_local i32 @rt2860_mcu_bbp_read(%struct.rt2860_softc*, i32) #1

declare dso_local i32 @rt3090_rf_setup(%struct.rt2860_softc*) #1

declare dso_local i32 @rt2860_switch_chan(%struct.rt2860_softc*, i32) #1

declare dso_local i32 @rt2860_updateprot(%struct.rt2860_softc*) #1

declare dso_local i32 @rt2860_set_leds(%struct.rt2860_softc*, i32) #1

declare dso_local i32 @rt2860_txrx_enable(%struct.rt2860_softc*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.rt2860_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
