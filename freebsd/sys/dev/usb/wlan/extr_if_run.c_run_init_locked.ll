; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_init_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_init_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.run_softc = type { i32*, i32, i64, i32, i64, i32, i32, i32*, i64, i32, i32*, %struct.TYPE_4__*, i32, i32*, %struct.ieee80211com }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ieee80211com = type { i32, i32, i32, i32 }
%struct.ieee80211vap = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"could not load 8051 microcode\0A\00", align 1
@RT2860_ASIC_VER_ID = common dso_local global i32 0, align 4
@RUN_EP_QUEUES = common dso_local global i32 0, align 4
@RT2860_WPDMA_GLO_CFG = common dso_local global i32 0, align 4
@RT2860_TX_DMA_BUSY = common dso_local global i32 0, align 4
@RT2860_RX_DMA_BUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"timeout waiting for DMA engine\0A\00", align 1
@RT2860_TX_WB_DDONE = common dso_local global i32 0, align 4
@RT2860_SYS_CTRL = common dso_local global i32 0, align 4
@RT2860_PME_OEN = common dso_local global i32 0, align 4
@RT2860_MAC_SYS_CTRL = common dso_local global i32 0, align 4
@RT2860_BBP_HRST = common dso_local global i32 0, align 4
@RT2860_MAC_SRST = common dso_local global i32 0, align 4
@RT2860_USB_DMA_CFG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"could not reset chipset\0A\00", align 1
@rt2870_def_mac = common dso_local global %struct.TYPE_5__* null, align 8
@RT2860_WMM_AIFSN_CFG = common dso_local global i32 0, align 4
@RT2860_WMM_CWMIN_CFG = common dso_local global i32 0, align 4
@RT2860_WMM_CWMAX_CFG = common dso_local global i32 0, align 4
@RT2860_TX_SW_CFG0 = common dso_local global i32 0, align 4
@RT2860_DLY_PAPE_EN_SHIFT = common dso_local global i32 0, align 4
@RT2860_MAX_LEN_CFG = common dso_local global i32 0, align 4
@RT2860_HT_FBK_CFG1 = common dso_local global i32 0, align 4
@RT2860_TXOP_HLDR_ET = common dso_local global i32 0, align 4
@RT2860_LG_FBK_CFG0 = common dso_local global i32 0, align 4
@RT2860_MAC_STATUS_REG = common dso_local global i32 0, align 4
@RT2860_RX_STATUS_BUSY = common dso_local global i32 0, align 4
@RT2860_TX_STATUS_BUSY = common dso_local global i32 0, align 4
@RT2860_H2M_BBPAGENT = common dso_local global i32 0, align 4
@RT2860_H2M_MAILBOX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"could not initialize BBP\0A\00", align 1
@RUN_CMDQ_GO = common dso_local global i64 0, align 8
@RT2860_SKEY_MODE_0_7 = common dso_local global i32 0, align 4
@RT2860_US_CYC_CNT = common dso_local global i32 0, align 4
@RT2860_TXOP_CTRL_CFG = common dso_local global i32 0, align 4
@RT2860_WMM_TXOP0_CFG = common dso_local global i32 0, align 4
@RT2860_WMM_TXOP1_CFG = common dso_local global i32 0, align 4
@RT3070_RF_3020 = common dso_local global i64 0, align 8
@RT5390_RF_5370 = common dso_local global i64 0, align 8
@RT2860_MCU_CMD_LED1 = common dso_local global i32 0, align 4
@RT2860_MCU_CMD_LED2 = common dso_local global i32 0, align 4
@RT2860_MCU_CMD_LED3 = common dso_local global i32 0, align 4
@RT2860_LED_RADIO = common dso_local global i32 0, align 4
@RUN_RUNNING = common dso_local global i32 0, align 4
@RUN_N_XFER = common dso_local global i32 0, align 4
@RUN_BULK_RX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.run_softc*)* @run_init_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_init_locked(%struct.run_softc* %0) #0 {
  %2 = alloca %struct.run_softc*, align 8
  %3 = alloca %struct.ieee80211com*, align 8
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.run_softc* %0, %struct.run_softc** %2, align 8
  %11 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %12 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %11, i32 0, i32 14
  store %struct.ieee80211com* %12, %struct.ieee80211com** %3, align 8
  %13 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %14 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %13, i32 0, i32 3
  %15 = call %struct.ieee80211vap* @TAILQ_FIRST(i32* %14)
  store %struct.ieee80211vap* %15, %struct.ieee80211vap** %4, align 8
  %16 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %17 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp sgt i32 %18, 1
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %612

21:                                               ; preds = %1
  %22 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %23 = call i32 @run_stop(%struct.run_softc* %22)
  %24 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %25 = call i64 @run_load_microcode(%struct.run_softc* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %29 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %28, i32 0, i32 12
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @device_printf(i32 %30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %609

32:                                               ; preds = %21
  store i32 0, i32* %10, align 4
  br label %33

33:                                               ; preds = %52, %32
  %34 = load i32, i32* %10, align 4
  %35 = icmp slt i32 %34, 100
  br i1 %35, label %36, label %55

36:                                               ; preds = %33
  %37 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %38 = load i32, i32* @RT2860_ASIC_VER_ID, align 4
  %39 = call i64 @run_read(%struct.run_softc* %37, i32 %38, i32* %5)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %609

42:                                               ; preds = %36
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, -1
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  br label %55

49:                                               ; preds = %45, %42
  %50 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %51 = call i32 @run_delay(%struct.run_softc* %50, i32 10)
  br label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %10, align 4
  br label %33

55:                                               ; preds = %48, %33
  %56 = load i32, i32* %10, align 4
  %57 = icmp eq i32 %56, 100
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  br label %609

59:                                               ; preds = %55
  store i32 0, i32* %8, align 4
  br label %60

60:                                               ; preds = %73, %59
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @RUN_EP_QUEUES, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %76

64:                                               ; preds = %60
  %65 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %66 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %67 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %66, i32 0, i32 13
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = call i32 @run_setup_tx_list(%struct.run_softc* %65, i32* %71)
  br label %73

73:                                               ; preds = %64
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %8, align 4
  br label %60

76:                                               ; preds = %60
  %77 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %78 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %79 = icmp ne %struct.ieee80211vap* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %82 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  br label %88

84:                                               ; preds = %76
  %85 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %86 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  br label %88

88:                                               ; preds = %84, %80
  %89 = phi i32 [ %83, %80 ], [ %87, %84 ]
  %90 = call i32 @run_set_macaddr(%struct.run_softc* %77, i32 %89)
  store i32 0, i32* %10, align 4
  br label %91

91:                                               ; preds = %111, %88
  %92 = load i32, i32* %10, align 4
  %93 = icmp slt i32 %92, 100
  br i1 %93, label %94, label %114

94:                                               ; preds = %91
  %95 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %96 = load i32, i32* @RT2860_WPDMA_GLO_CFG, align 4
  %97 = call i64 @run_read(%struct.run_softc* %95, i32 %96, i32* %5)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  br label %609

100:                                              ; preds = %94
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* @RT2860_TX_DMA_BUSY, align 4
  %103 = load i32, i32* @RT2860_RX_DMA_BUSY, align 4
  %104 = or i32 %102, %103
  %105 = and i32 %101, %104
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %100
  br label %114

108:                                              ; preds = %100
  %109 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %110 = call i32 @run_delay(%struct.run_softc* %109, i32 10)
  br label %111

111:                                              ; preds = %108
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %10, align 4
  br label %91

114:                                              ; preds = %107, %91
  %115 = load i32, i32* %10, align 4
  %116 = icmp eq i32 %115, 100
  br i1 %116, label %117, label %122

117:                                              ; preds = %114
  %118 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %119 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %118, i32 0, i32 12
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @device_printf(i32 %120, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %609

122:                                              ; preds = %114
  %123 = load i32, i32* %5, align 4
  %124 = and i32 %123, 4080
  store i32 %124, i32* %5, align 4
  %125 = load i32, i32* @RT2860_TX_WB_DDONE, align 4
  %126 = load i32, i32* %5, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %5, align 4
  %128 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %129 = load i32, i32* @RT2860_WPDMA_GLO_CFG, align 4
  %130 = load i32, i32* %5, align 4
  %131 = call i32 @run_write(%struct.run_softc* %128, i32 %129, i32 %130)
  %132 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %133 = load i32, i32* @RT2860_SYS_CTRL, align 4
  %134 = call i64 @run_read(%struct.run_softc* %132, i32 %133, i32* %5)
  %135 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %136 = load i32, i32* @RT2860_SYS_CTRL, align 4
  %137 = load i32, i32* %5, align 4
  %138 = load i32, i32* @RT2860_PME_OEN, align 4
  %139 = xor i32 %138, -1
  %140 = and i32 %137, %139
  %141 = call i32 @run_write(%struct.run_softc* %135, i32 %136, i32 %140)
  %142 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %143 = load i32, i32* @RT2860_MAC_SYS_CTRL, align 4
  %144 = load i32, i32* @RT2860_BBP_HRST, align 4
  %145 = load i32, i32* @RT2860_MAC_SRST, align 4
  %146 = or i32 %144, %145
  %147 = call i32 @run_write(%struct.run_softc* %142, i32 %143, i32 %146)
  %148 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %149 = load i32, i32* @RT2860_USB_DMA_CFG, align 4
  %150 = call i32 @run_write(%struct.run_softc* %148, i32 %149, i32 0)
  %151 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %152 = call i64 @run_reset(%struct.run_softc* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %122
  %155 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %156 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %155, i32 0, i32 12
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @device_printf(i32 %157, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %609

159:                                              ; preds = %122
  %160 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %161 = load i32, i32* @RT2860_MAC_SYS_CTRL, align 4
  %162 = call i32 @run_write(%struct.run_softc* %160, i32 %161, i32 0)
  store i32 0, i32* %9, align 4
  br label %163

163:                                              ; preds = %188, %159
  %164 = load i32, i32* %9, align 4
  %165 = icmp slt i32 %164, 5
  br i1 %165, label %166, label %191

166:                                              ; preds = %163
  %167 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %168 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %167, i32 0, i32 0
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %9, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = icmp eq i32 %173, -1
  br i1 %174, label %175, label %176

175:                                              ; preds = %166
  br label %188

176:                                              ; preds = %166
  %177 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %178 = load i32, i32* %9, align 4
  %179 = call i32 @RT2860_TX_PWR_CFG(i32 %178)
  %180 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %181 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %180, i32 0, i32 0
  %182 = load i32*, i32** %181, align 8
  %183 = load i32, i32* %9, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @run_write(%struct.run_softc* %177, i32 %179, i32 %186)
  br label %188

188:                                              ; preds = %176, %175
  %189 = load i32, i32* %9, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %9, align 4
  br label %163

191:                                              ; preds = %163
  store i32 0, i32* %8, align 4
  br label %192

192:                                              ; preds = %212, %191
  %193 = load i32, i32* %8, align 4
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** @rt2870_def_mac, align 8
  %195 = call i32 @nitems(%struct.TYPE_5__* %194)
  %196 = icmp slt i32 %193, %195
  br i1 %196, label %197, label %215

197:                                              ; preds = %192
  %198 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** @rt2870_def_mac, align 8
  %200 = load i32, i32* %8, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.TYPE_5__*, %struct.TYPE_5__** @rt2870_def_mac, align 8
  %206 = load i32, i32* %8, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @run_write(%struct.run_softc* %198, i32 %204, i32 %210)
  br label %212

212:                                              ; preds = %197
  %213 = load i32, i32* %8, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %8, align 4
  br label %192

215:                                              ; preds = %192
  %216 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %217 = load i32, i32* @RT2860_WMM_AIFSN_CFG, align 4
  %218 = call i32 @run_write(%struct.run_softc* %216, i32 %217, i32 8819)
  %219 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %220 = load i32, i32* @RT2860_WMM_CWMIN_CFG, align 4
  %221 = call i32 @run_write(%struct.run_softc* %219, i32 %220, i32 9028)
  %222 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %223 = load i32, i32* @RT2860_WMM_CWMAX_CFG, align 4
  %224 = call i32 @run_write(%struct.run_softc* %222, i32 %223, i32 13482)
  %225 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %226 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 8
  %228 = icmp sge i32 %227, 21392
  br i1 %228, label %229, label %264

229:                                              ; preds = %215
  %230 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %231 = load i32, i32* @RT2860_TX_SW_CFG0, align 4
  %232 = load i32, i32* @RT2860_DLY_PAPE_EN_SHIFT, align 4
  %233 = shl i32 4, %232
  %234 = or i32 %233, 4
  %235 = call i32 @run_write(%struct.run_softc* %230, i32 %231, i32 %234)
  %236 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %237 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 8
  %239 = icmp sge i32 %238, 21394
  br i1 %239, label %240, label %263

240:                                              ; preds = %229
  %241 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %242 = load i32, i32* @RT2860_MAX_LEN_CFG, align 4
  %243 = call i32 @run_write(%struct.run_softc* %241, i32 %242, i32 12287)
  %244 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %245 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 8
  %247 = icmp eq i32 %246, 21906
  br i1 %247, label %248, label %255

248:                                              ; preds = %240
  %249 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %250 = load i32, i32* @RT2860_HT_FBK_CFG1, align 4
  %251 = call i32 @run_write(%struct.run_softc* %249, i32 %250, i32 -305419904)
  %252 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %253 = load i32, i32* @RT2860_TXOP_HLDR_ET, align 4
  %254 = call i32 @run_write(%struct.run_softc* %252, i32 %253, i32 130)
  br label %262

255:                                              ; preds = %240
  %256 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %257 = load i32, i32* @RT2860_HT_FBK_CFG1, align 4
  %258 = call i32 @run_write(%struct.run_softc* %256, i32 %257, i32 -305444480)
  %259 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %260 = load i32, i32* @RT2860_LG_FBK_CFG0, align 4
  %261 = call i32 @run_write(%struct.run_softc* %259, i32 %260, i32 -305421534)
  br label %262

262:                                              ; preds = %255, %248
  br label %263

263:                                              ; preds = %262, %229
  br label %289

264:                                              ; preds = %215
  %265 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %266 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 8
  %268 = icmp eq i32 %267, 13715
  br i1 %268, label %269, label %276

269:                                              ; preds = %264
  %270 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %271 = load i32, i32* @RT2860_TX_SW_CFG0, align 4
  %272 = load i32, i32* @RT2860_DLY_PAPE_EN_SHIFT, align 4
  %273 = shl i32 4, %272
  %274 = or i32 %273, 2
  %275 = call i32 @run_write(%struct.run_softc* %270, i32 %271, i32 %274)
  br label %288

276:                                              ; preds = %264
  %277 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %278 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 8
  %280 = icmp sge i32 %279, 12400
  br i1 %280, label %281, label %287

281:                                              ; preds = %276
  %282 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %283 = load i32, i32* @RT2860_TX_SW_CFG0, align 4
  %284 = load i32, i32* @RT2860_DLY_PAPE_EN_SHIFT, align 4
  %285 = shl i32 4, %284
  %286 = call i32 @run_write(%struct.run_softc* %282, i32 %283, i32 %285)
  br label %287

287:                                              ; preds = %281, %276
  br label %288

288:                                              ; preds = %287, %269
  br label %289

289:                                              ; preds = %288, %263
  store i32 0, i32* %10, align 4
  br label %290

290:                                              ; preds = %310, %289
  %291 = load i32, i32* %10, align 4
  %292 = icmp slt i32 %291, 100
  br i1 %292, label %293, label %313

293:                                              ; preds = %290
  %294 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %295 = load i32, i32* @RT2860_MAC_STATUS_REG, align 4
  %296 = call i64 @run_read(%struct.run_softc* %294, i32 %295, i32* %5)
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %299

298:                                              ; preds = %293
  br label %609

299:                                              ; preds = %293
  %300 = load i32, i32* %5, align 4
  %301 = load i32, i32* @RT2860_RX_STATUS_BUSY, align 4
  %302 = load i32, i32* @RT2860_TX_STATUS_BUSY, align 4
  %303 = or i32 %301, %302
  %304 = and i32 %300, %303
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %307, label %306

306:                                              ; preds = %299
  br label %313

307:                                              ; preds = %299
  %308 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %309 = call i32 @run_delay(%struct.run_softc* %308, i32 10)
  br label %310

310:                                              ; preds = %307
  %311 = load i32, i32* %10, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %10, align 4
  br label %290

313:                                              ; preds = %306, %290
  %314 = load i32, i32* %10, align 4
  %315 = icmp eq i32 %314, 100
  br i1 %315, label %316, label %317

316:                                              ; preds = %313
  br label %609

317:                                              ; preds = %313
  %318 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %319 = load i32, i32* @RT2860_H2M_BBPAGENT, align 4
  %320 = call i32 @run_write(%struct.run_softc* %318, i32 %319, i32 0)
  %321 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %322 = load i32, i32* @RT2860_H2M_MAILBOX, align 4
  %323 = call i32 @run_write(%struct.run_softc* %321, i32 %322, i32 0)
  %324 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %325 = call i32 @run_delay(%struct.run_softc* %324, i32 10)
  %326 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %327 = call i64 @run_bbp_init(%struct.run_softc* %326)
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %329, label %334

329:                                              ; preds = %317
  %330 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %331 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %330, i32 0, i32 12
  %332 = load i32, i32* %331, align 8
  %333 = call i32 @device_printf(i32 %332, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %609

334:                                              ; preds = %317
  %335 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %336 = call i32 @run_disable_tsf(%struct.run_softc* %335)
  %337 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %338 = call i32 @RT2860_WCID_ENTRY(i32 0)
  %339 = call i32 @run_set_region_4(%struct.run_softc* %337, i32 %338, i32 0, i32 512)
  %340 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %341 = call i32 @RT2860_WCID_ATTR(i32 0)
  %342 = call i32 @run_set_region_4(%struct.run_softc* %340, i32 %341, i32 0, i32 256)
  %343 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %344 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %343, i32 0, i32 2
  %345 = load i64, i64* %344, align 8
  %346 = load i64, i64* @RUN_CMDQ_GO, align 8
  %347 = icmp ne i64 %345, %346
  br i1 %347, label %348, label %355

348:                                              ; preds = %334
  %349 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %350 = call i32 @RT2860_SKEY(i32 0, i32 0)
  %351 = call i32 @run_set_region_4(%struct.run_softc* %349, i32 %350, i32 0, i32 256)
  %352 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %353 = load i32, i32* @RT2860_SKEY_MODE_0_7, align 4
  %354 = call i32 @run_set_region_4(%struct.run_softc* %352, i32 %353, i32 0, i32 4)
  br label %355

355:                                              ; preds = %348, %334
  %356 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %357 = load i32, i32* @RT2860_US_CYC_CNT, align 4
  %358 = call i64 @run_read(%struct.run_softc* %356, i32 %357, i32* %5)
  %359 = load i32, i32* %5, align 4
  %360 = and i32 %359, -256
  %361 = or i32 %360, 30
  store i32 %361, i32* %5, align 4
  %362 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %363 = load i32, i32* @RT2860_US_CYC_CNT, align 4
  %364 = load i32, i32* %5, align 4
  %365 = call i32 @run_write(%struct.run_softc* %362, i32 %363, i32 %364)
  %366 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %367 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %366, i32 0, i32 3
  %368 = load i32, i32* %367, align 8
  %369 = icmp ne i32 %368, 257
  br i1 %369, label %370, label %374

370:                                              ; preds = %355
  %371 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %372 = load i32, i32* @RT2860_TXOP_CTRL_CFG, align 4
  %373 = call i32 @run_write(%struct.run_softc* %371, i32 %372, i32 22591)
  br label %374

374:                                              ; preds = %370, %355
  %375 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %376 = load i32, i32* @RT2860_WMM_TXOP0_CFG, align 4
  %377 = call i32 @run_write(%struct.run_softc* %375, i32 %376, i32 0)
  %378 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %379 = load i32, i32* @RT2860_WMM_TXOP1_CFG, align 4
  %380 = call i32 @run_write(%struct.run_softc* %378, i32 %379, i32 3145824)
  %381 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %382 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %381, i32 0, i32 1
  %383 = load i32, i32* %382, align 8
  %384 = icmp slt i32 %383, 13715
  br i1 %384, label %385, label %433

385:                                              ; preds = %374
  store i32 0, i32* %8, align 4
  br label %386

386:                                              ; preds = %429, %385
  %387 = load i32, i32* %8, align 4
  %388 = icmp slt i32 %387, 10
  br i1 %388, label %389, label %432

389:                                              ; preds = %386
  %390 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %391 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %390, i32 0, i32 11
  %392 = load %struct.TYPE_4__*, %struct.TYPE_4__** %391, align 8
  %393 = load i32, i32* %8, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %392, i64 %394
  %396 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %395, i32 0, i32 0
  %397 = load i32, i32* %396, align 4
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %409, label %399

399:                                              ; preds = %389
  %400 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %401 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %400, i32 0, i32 11
  %402 = load %struct.TYPE_4__*, %struct.TYPE_4__** %401, align 8
  %403 = load i32, i32* %8, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %402, i64 %404
  %406 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %405, i32 0, i32 0
  %407 = load i32, i32* %406, align 4
  %408 = icmp eq i32 %407, 255
  br i1 %408, label %409, label %410

409:                                              ; preds = %399, %389
  br label %429

410:                                              ; preds = %399
  %411 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %412 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %413 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %412, i32 0, i32 11
  %414 = load %struct.TYPE_4__*, %struct.TYPE_4__** %413, align 8
  %415 = load i32, i32* %8, align 4
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %414, i64 %416
  %418 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %417, i32 0, i32 0
  %419 = load i32, i32* %418, align 4
  %420 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %421 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %420, i32 0, i32 11
  %422 = load %struct.TYPE_4__*, %struct.TYPE_4__** %421, align 8
  %423 = load i32, i32* %8, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %422, i64 %424
  %426 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %425, i32 0, i32 1
  %427 = load i32, i32* %426, align 4
  %428 = call i32 @run_bbp_write(%struct.run_softc* %411, i32 %419, i32 %427)
  br label %429

429:                                              ; preds = %410, %409
  %430 = load i32, i32* %8, align 4
  %431 = add nsw i32 %430, 1
  store i32 %431, i32* %8, align 4
  br label %386

432:                                              ; preds = %386
  br label %433

433:                                              ; preds = %432, %374
  %434 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %435 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %434, i32 0, i32 4
  %436 = load i64, i64* %435, align 8
  %437 = load i64, i64* @RT3070_RF_3020, align 8
  %438 = icmp eq i64 %436, %437
  br i1 %438, label %445, label %439

439:                                              ; preds = %433
  %440 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %441 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %440, i32 0, i32 4
  %442 = load i64, i64* %441, align 8
  %443 = load i64, i64* @RT5390_RF_5370, align 8
  %444 = icmp eq i64 %442, %443
  br i1 %444, label %445, label %448

445:                                              ; preds = %439, %433
  %446 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %447 = call i32 @run_set_rx_antenna(%struct.run_softc* %446, i32 0)
  br label %448

448:                                              ; preds = %445, %439
  %449 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %450 = load i32, i32* @RT2860_MCU_CMD_LED1, align 4
  %451 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %452 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %451, i32 0, i32 10
  %453 = load i32*, i32** %452, align 8
  %454 = getelementptr inbounds i32, i32* %453, i64 0
  %455 = load i32, i32* %454, align 4
  %456 = call i32 @run_mcu_cmd(%struct.run_softc* %449, i32 %450, i32 %455)
  %457 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %458 = load i32, i32* @RT2860_MCU_CMD_LED2, align 4
  %459 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %460 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %459, i32 0, i32 10
  %461 = load i32*, i32** %460, align 8
  %462 = getelementptr inbounds i32, i32* %461, i64 1
  %463 = load i32, i32* %462, align 4
  %464 = call i32 @run_mcu_cmd(%struct.run_softc* %457, i32 %458, i32 %463)
  %465 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %466 = load i32, i32* @RT2860_MCU_CMD_LED3, align 4
  %467 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %468 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %467, i32 0, i32 10
  %469 = load i32*, i32** %468, align 8
  %470 = getelementptr inbounds i32, i32* %469, i64 2
  %471 = load i32, i32* %470, align 4
  %472 = call i32 @run_mcu_cmd(%struct.run_softc* %465, i32 %466, i32 %471)
  %473 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %474 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %473, i32 0, i32 1
  %475 = load i32, i32* %474, align 8
  %476 = icmp sge i32 %475, 21392
  br i1 %476, label %477, label %480

477:                                              ; preds = %448
  %478 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %479 = call i32 @run_rt5390_rf_init(%struct.run_softc* %478)
  br label %498

480:                                              ; preds = %448
  %481 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %482 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %481, i32 0, i32 1
  %483 = load i32, i32* %482, align 8
  %484 = icmp eq i32 %483, 13715
  br i1 %484, label %485, label %488

485:                                              ; preds = %480
  %486 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %487 = call i32 @run_rt3593_rf_init(%struct.run_softc* %486)
  br label %497

488:                                              ; preds = %480
  %489 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %490 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %489, i32 0, i32 1
  %491 = load i32, i32* %490, align 8
  %492 = icmp sge i32 %491, 12400
  br i1 %492, label %493, label %496

493:                                              ; preds = %488
  %494 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %495 = call i32 @run_rt3070_rf_init(%struct.run_softc* %494)
  br label %496

496:                                              ; preds = %493, %488
  br label %497

497:                                              ; preds = %496, %485
  br label %498

498:                                              ; preds = %497, %477
  %499 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %500 = call i32 @run_bbp_read(%struct.run_softc* %499, i32 3, i32* %7)
  %501 = load i32, i32* %7, align 4
  %502 = and i32 %501, -25
  store i32 %502, i32* %7, align 4
  %503 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %504 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %503, i32 0, i32 5
  %505 = load i32, i32* %504, align 8
  %506 = icmp eq i32 %505, 2
  br i1 %506, label %507, label %510

507:                                              ; preds = %498
  %508 = load i32, i32* %7, align 4
  %509 = or i32 %508, 8
  store i32 %509, i32* %7, align 4
  br label %519

510:                                              ; preds = %498
  %511 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %512 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %511, i32 0, i32 5
  %513 = load i32, i32* %512, align 8
  %514 = icmp eq i32 %513, 3
  br i1 %514, label %515, label %518

515:                                              ; preds = %510
  %516 = load i32, i32* %7, align 4
  %517 = or i32 %516, 16
  store i32 %517, i32* %7, align 4
  br label %518

518:                                              ; preds = %515, %510
  br label %519

519:                                              ; preds = %518, %507
  %520 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %521 = load i32, i32* %7, align 4
  %522 = call i32 @run_bbp_write(%struct.run_softc* %520, i32 3, i32 %521)
  %523 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %524 = call i32 @run_bbp_read(%struct.run_softc* %523, i32 1, i32* %6)
  %525 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %526 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %525, i32 0, i32 6
  %527 = load i32, i32* %526, align 4
  %528 = icmp eq i32 %527, 1
  br i1 %528, label %529, label %532

529:                                              ; preds = %519
  %530 = load i32, i32* %6, align 4
  %531 = and i32 %530, -25
  store i32 %531, i32* %6, align 4
  br label %532

532:                                              ; preds = %529, %519
  %533 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %534 = load i32, i32* %6, align 4
  %535 = call i32 @run_bbp_write(%struct.run_softc* %533, i32 1, i32 %534)
  %536 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %537 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %536, i32 0, i32 1
  %538 = load i32, i32* %537, align 8
  %539 = icmp sge i32 %538, 21392
  br i1 %539, label %540, label %543

540:                                              ; preds = %532
  %541 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %542 = call i32 @run_rt5390_rf_setup(%struct.run_softc* %541)
  br label %561

543:                                              ; preds = %532
  %544 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %545 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %544, i32 0, i32 1
  %546 = load i32, i32* %545, align 8
  %547 = icmp eq i32 %546, 13715
  br i1 %547, label %548, label %551

548:                                              ; preds = %543
  %549 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %550 = call i32 @run_rt3593_rf_setup(%struct.run_softc* %549)
  br label %560

551:                                              ; preds = %543
  %552 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %553 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %552, i32 0, i32 1
  %554 = load i32, i32* %553, align 8
  %555 = icmp sge i32 %554, 12400
  br i1 %555, label %556, label %559

556:                                              ; preds = %551
  %557 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %558 = call i32 @run_rt3070_rf_setup(%struct.run_softc* %557)
  br label %559

559:                                              ; preds = %556, %551
  br label %560

560:                                              ; preds = %559, %548
  br label %561

561:                                              ; preds = %560, %540
  %562 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %563 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %564 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %563, i32 0, i32 1
  %565 = load i32, i32* %564, align 4
  %566 = call i32 @run_set_chan(%struct.run_softc* %562, i32 %565)
  %567 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %568 = call i32 @run_updateprot_cb(%struct.ieee80211com* %567)
  %569 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %570 = load i32, i32* @RT2860_LED_RADIO, align 4
  %571 = call i32 @run_set_leds(%struct.run_softc* %569, i32 %570)
  %572 = load i32, i32* @RUN_RUNNING, align 4
  %573 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %574 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %573, i32 0, i32 9
  %575 = load i32, i32* %574, align 8
  %576 = or i32 %575, %572
  store i32 %576, i32* %574, align 8
  %577 = load i64, i64* @RUN_CMDQ_GO, align 8
  %578 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %579 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %578, i32 0, i32 8
  store i64 %577, i64* %579, align 8
  store i32 0, i32* %8, align 4
  br label %580

580:                                              ; preds = %593, %561
  %581 = load i32, i32* %8, align 4
  %582 = load i32, i32* @RUN_N_XFER, align 4
  %583 = icmp ne i32 %581, %582
  br i1 %583, label %584, label %596

584:                                              ; preds = %580
  %585 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %586 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %585, i32 0, i32 7
  %587 = load i32*, i32** %586, align 8
  %588 = load i32, i32* %8, align 4
  %589 = sext i32 %588 to i64
  %590 = getelementptr inbounds i32, i32* %587, i64 %589
  %591 = load i32, i32* %590, align 4
  %592 = call i32 @usbd_xfer_set_stall(i32 %591)
  br label %593

593:                                              ; preds = %584
  %594 = load i32, i32* %8, align 4
  %595 = add nsw i32 %594, 1
  store i32 %595, i32* %8, align 4
  br label %580

596:                                              ; preds = %580
  %597 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %598 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %597, i32 0, i32 7
  %599 = load i32*, i32** %598, align 8
  %600 = load i64, i64* @RUN_BULK_RX, align 8
  %601 = getelementptr inbounds i32, i32* %599, i64 %600
  %602 = load i32, i32* %601, align 4
  %603 = call i32 @usbd_transfer_start(i32 %602)
  %604 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %605 = call i64 @run_txrx_enable(%struct.run_softc* %604)
  %606 = icmp ne i64 %605, 0
  br i1 %606, label %607, label %608

607:                                              ; preds = %596
  br label %609

608:                                              ; preds = %596
  br label %612

609:                                              ; preds = %607, %329, %316, %298, %154, %117, %99, %58, %41, %27
  %610 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %611 = call i32 @run_stop(%struct.run_softc* %610)
  br label %612

612:                                              ; preds = %609, %608, %20
  ret void
}

declare dso_local %struct.ieee80211vap* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @run_stop(%struct.run_softc*) #1

declare dso_local i64 @run_load_microcode(%struct.run_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @run_read(%struct.run_softc*, i32, i32*) #1

declare dso_local i32 @run_delay(%struct.run_softc*, i32) #1

declare dso_local i32 @run_setup_tx_list(%struct.run_softc*, i32*) #1

declare dso_local i32 @run_set_macaddr(%struct.run_softc*, i32) #1

declare dso_local i32 @run_write(%struct.run_softc*, i32, i32) #1

declare dso_local i64 @run_reset(%struct.run_softc*) #1

declare dso_local i32 @RT2860_TX_PWR_CFG(i32) #1

declare dso_local i32 @nitems(%struct.TYPE_5__*) #1

declare dso_local i64 @run_bbp_init(%struct.run_softc*) #1

declare dso_local i32 @run_disable_tsf(%struct.run_softc*) #1

declare dso_local i32 @run_set_region_4(%struct.run_softc*, i32, i32, i32) #1

declare dso_local i32 @RT2860_WCID_ENTRY(i32) #1

declare dso_local i32 @RT2860_WCID_ATTR(i32) #1

declare dso_local i32 @RT2860_SKEY(i32, i32) #1

declare dso_local i32 @run_bbp_write(%struct.run_softc*, i32, i32) #1

declare dso_local i32 @run_set_rx_antenna(%struct.run_softc*, i32) #1

declare dso_local i32 @run_mcu_cmd(%struct.run_softc*, i32, i32) #1

declare dso_local i32 @run_rt5390_rf_init(%struct.run_softc*) #1

declare dso_local i32 @run_rt3593_rf_init(%struct.run_softc*) #1

declare dso_local i32 @run_rt3070_rf_init(%struct.run_softc*) #1

declare dso_local i32 @run_bbp_read(%struct.run_softc*, i32, i32*) #1

declare dso_local i32 @run_rt5390_rf_setup(%struct.run_softc*) #1

declare dso_local i32 @run_rt3593_rf_setup(%struct.run_softc*) #1

declare dso_local i32 @run_rt3070_rf_setup(%struct.run_softc*) #1

declare dso_local i32 @run_set_chan(%struct.run_softc*, i32) #1

declare dso_local i32 @run_updateprot_cb(%struct.ieee80211com*) #1

declare dso_local i32 @run_set_leds(%struct.run_softc*, i32) #1

declare dso_local i32 @usbd_xfer_set_stall(i32) #1

declare dso_local i32 @usbd_transfer_start(i32) #1

declare dso_local i64 @run_txrx_enable(%struct.run_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
