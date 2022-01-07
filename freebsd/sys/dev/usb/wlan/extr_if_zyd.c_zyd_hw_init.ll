; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_zyd.c_zyd_hw_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_zyd.c_zyd_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zyd_phy_pair = type { i64, i32 }
%struct.zyd_softc = type { i32, i32, i64, i64, i32, i32, %struct.zyd_rf }
%struct.zyd_rf = type { i32 (%struct.zyd_rf*)* }

@ZYD_MAC_AFTER_PNP = common dso_local global i32 0, align 4
@ZYD_FIRMWARE_BASE_ADDR = common dso_local global i32 0, align 4
@ZYD_DEBUG_FW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"firmware base address=0x%04x\0A\00", align 1
@ZYD_FW_FIRMWARE_REV = common dso_local global i32 0, align 4
@ZYD_CR_GPI_EN = common dso_local global i32 0, align 4
@ZYD_MAC_CONT_WIN_LIMIT = common dso_local global i32 0, align 4
@ZYD_MAC_MAN_RATE = common dso_local global i32 0, align 4
@ZYD_CR_INTERRUPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"could not read EEPROM\0A\00", align 1
@ZYD_ZD1211B = common dso_local global i64 0, align 8
@zyd_def_phyB = common dso_local global %struct.zyd_phy_pair* null, align 8
@zyd_def_phy = common dso_local global %struct.zyd_phy_pair* null, align 8
@ZYD_ZD1211 = common dso_local global i64 0, align 8
@ZYD_EEPROM_PHY_REG = common dso_local global i32 0, align 4
@ZYD_CR157 = common dso_local global i32 0, align 4
@ZYD_MAC_ACK_EXT = common dso_local global i32 0, align 4
@ZYD_CR_ADDA_MBIAS_WT = common dso_local global i32 0, align 4
@ZYD_MAC_SNIFFER = common dso_local global i32 0, align 4
@ZYD_MAC_RXFILTER = common dso_local global i32 0, align 4
@ZYD_MAC_GHTBL = common dso_local global i32 0, align 4
@ZYD_MAC_GHTBH = common dso_local global i32 0, align 4
@ZYD_MAC_MISC = common dso_local global i32 0, align 4
@ZYD_CR_ADDA_PWR_DWN = common dso_local global i32 0, align 4
@ZYD_MAC_BCNCFG = common dso_local global i32 0, align 4
@ZYD_MAC_PHY_DELAY2 = common dso_local global i32 0, align 4
@ZYD_MAC_SIFS_ACK_TIME = common dso_local global i32 0, align 4
@ZYD_CR_RX_PE_DELAY = common dso_local global i32 0, align 4
@ZYD_CR_PS_CTRL = common dso_local global i32 0, align 4
@ZYD_MAC_RTSCTSRATE = common dso_local global i32 0, align 4
@ZYD_MAC_BACKOFF_PROTECT = common dso_local global i32 0, align 4
@ZYD_MAC_DIFS_EIFS_SIFS = common dso_local global i32 0, align 4
@ZYD_MAC_CAM_MODE = common dso_local global i32 0, align 4
@ZYD_MAC_RETRY = common dso_local global i32 0, align 4
@ZYD_MAC_RX_THRESHOLD = common dso_local global i32 0, align 4
@ZYD_MACB_MAX_RETRY = common dso_local global i32 0, align 4
@ZYD_MACB_TXPWR_CTL4 = common dso_local global i32 0, align 4
@ZYD_MACB_TXPWR_CTL3 = common dso_local global i32 0, align 4
@ZYD_MACB_TXPWR_CTL2 = common dso_local global i32 0, align 4
@ZYD_MACB_TXPWR_CTL1 = common dso_local global i32 0, align 4
@ZYD_MACB_AIFS_CTL1 = common dso_local global i32 0, align 4
@ZYD_MACB_AIFS_CTL2 = common dso_local global i32 0, align 4
@ZYD_MACB_TXOP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"could not attach RF, rev 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"radio initialization failed, error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zyd_softc*)* @zyd_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zyd_hw_init(%struct.zyd_softc* %0) #0 {
  %2 = alloca %struct.zyd_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.zyd_phy_pair*, align 8
  %5 = alloca %struct.zyd_rf*, align 8
  %6 = alloca i32, align 4
  store %struct.zyd_softc* %0, %struct.zyd_softc** %2, align 8
  %7 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %8 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %7, i32 0, i32 6
  store %struct.zyd_rf* %8, %struct.zyd_rf** %5, align 8
  %9 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %10 = load i32, i32* @ZYD_MAC_AFTER_PNP, align 4
  %11 = call i32 @zyd_write32_m(%struct.zyd_softc* %9, i32 %10, i32 1)
  %12 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %13 = load i32, i32* @ZYD_FIRMWARE_BASE_ADDR, align 4
  %14 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %15 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %14, i32 0, i32 0
  %16 = call i32 @zyd_read16_m(%struct.zyd_softc* %12, i32 %13, i32* %15)
  %17 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %18 = load i32, i32* @ZYD_DEBUG_FW, align 4
  %19 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %20 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @DPRINTF(%struct.zyd_softc* %17, i32 %18, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %24 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %25 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @ZYD_FW_FIRMWARE_REV, align 4
  %28 = add nsw i32 %26, %27
  %29 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %30 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %29, i32 0, i32 1
  %31 = call i32 @zyd_read16_m(%struct.zyd_softc* %23, i32 %28, i32* %30)
  %32 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %33 = load i32, i32* @ZYD_CR_GPI_EN, align 4
  %34 = call i32 @zyd_write32_m(%struct.zyd_softc* %32, i32 %33, i32 0)
  %35 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %36 = load i32, i32* @ZYD_MAC_CONT_WIN_LIMIT, align 4
  %37 = call i32 @zyd_write32_m(%struct.zyd_softc* %35, i32 %36, i32 8324159)
  %38 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %39 = load i32, i32* @ZYD_MAC_MAN_RATE, align 4
  %40 = call i32 @zyd_write32_m(%struct.zyd_softc* %38, i32 %39, i32 5391)
  %41 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %42 = load i32, i32* @ZYD_CR_INTERRUPT, align 4
  %43 = call i32 @zyd_write32_m(%struct.zyd_softc* %41, i32 %42, i32 0)
  %44 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %45 = call i32 @zyd_read_pod(%struct.zyd_softc* %44)
  store i32 %45, i32* %3, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %1
  %48 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %49 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = call i32 (i32, i8*, ...) @device_printf(i32 %50, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %270

52:                                               ; preds = %1
  %53 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %54 = call i32 @zyd_lock_phy(%struct.zyd_softc* %53)
  store i32 %54, i32* %3, align 4
  %55 = load i32, i32* %3, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %270

58:                                               ; preds = %52
  %59 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %60 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @ZYD_ZD1211B, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load %struct.zyd_phy_pair*, %struct.zyd_phy_pair** @zyd_def_phyB, align 8
  br label %68

66:                                               ; preds = %58
  %67 = load %struct.zyd_phy_pair*, %struct.zyd_phy_pair** @zyd_def_phy, align 8
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi %struct.zyd_phy_pair* [ %65, %64 ], [ %67, %66 ]
  store %struct.zyd_phy_pair* %69, %struct.zyd_phy_pair** %4, align 8
  br label %70

70:                                               ; preds = %84, %68
  %71 = load %struct.zyd_phy_pair*, %struct.zyd_phy_pair** %4, align 8
  %72 = getelementptr inbounds %struct.zyd_phy_pair, %struct.zyd_phy_pair* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %70
  %76 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %77 = load %struct.zyd_phy_pair*, %struct.zyd_phy_pair** %4, align 8
  %78 = getelementptr inbounds %struct.zyd_phy_pair, %struct.zyd_phy_pair* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.zyd_phy_pair*, %struct.zyd_phy_pair** %4, align 8
  %81 = getelementptr inbounds %struct.zyd_phy_pair, %struct.zyd_phy_pair* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @zyd_write16_m(%struct.zyd_softc* %76, i64 %79, i32 %82)
  br label %84

84:                                               ; preds = %75
  %85 = load %struct.zyd_phy_pair*, %struct.zyd_phy_pair** %4, align 8
  %86 = getelementptr inbounds %struct.zyd_phy_pair, %struct.zyd_phy_pair* %85, i32 1
  store %struct.zyd_phy_pair* %86, %struct.zyd_phy_pair** %4, align 8
  br label %70

87:                                               ; preds = %70
  %88 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %89 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @ZYD_ZD1211, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %107

93:                                               ; preds = %87
  %94 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %95 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %93
  %99 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %100 = load i32, i32* @ZYD_EEPROM_PHY_REG, align 4
  %101 = call i32 @zyd_read16_m(%struct.zyd_softc* %99, i32 %100, i32* %6)
  %102 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %103 = load i32, i32* @ZYD_CR157, align 4
  %104 = load i32, i32* %6, align 4
  %105 = ashr i32 %104, 8
  %106 = call i32 @zyd_write32_m(%struct.zyd_softc* %102, i32 %103, i32 %105)
  br label %107

107:                                              ; preds = %98, %93, %87
  %108 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %109 = call i32 @zyd_unlock_phy(%struct.zyd_softc* %108)
  store i32 %109, i32* %3, align 4
  %110 = load i32, i32* %3, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  br label %270

113:                                              ; preds = %107
  %114 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %115 = load i32, i32* @ZYD_MAC_ACK_EXT, align 4
  %116 = call i32 @zyd_write32_m(%struct.zyd_softc* %114, i32 %115, i32 32)
  %117 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %118 = load i32, i32* @ZYD_CR_ADDA_MBIAS_WT, align 4
  %119 = call i32 @zyd_write32_m(%struct.zyd_softc* %117, i32 %118, i32 805308424)
  %120 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %121 = load i32, i32* @ZYD_MAC_SNIFFER, align 4
  %122 = call i32 @zyd_write32_m(%struct.zyd_softc* %120, i32 %121, i32 0)
  %123 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %124 = load i32, i32* @ZYD_MAC_RXFILTER, align 4
  %125 = call i32 @zyd_write32_m(%struct.zyd_softc* %123, i32 %124, i32 0)
  %126 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %127 = load i32, i32* @ZYD_MAC_GHTBL, align 4
  %128 = call i32 @zyd_write32_m(%struct.zyd_softc* %126, i32 %127, i32 0)
  %129 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %130 = load i32, i32* @ZYD_MAC_GHTBH, align 4
  %131 = call i32 @zyd_write32_m(%struct.zyd_softc* %129, i32 %130, i32 -2147483648)
  %132 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %133 = load i32, i32* @ZYD_MAC_MISC, align 4
  %134 = call i32 @zyd_write32_m(%struct.zyd_softc* %132, i32 %133, i32 164)
  %135 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %136 = load i32, i32* @ZYD_CR_ADDA_PWR_DWN, align 4
  %137 = call i32 @zyd_write32_m(%struct.zyd_softc* %135, i32 %136, i32 127)
  %138 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %139 = load i32, i32* @ZYD_MAC_BCNCFG, align 4
  %140 = call i32 @zyd_write32_m(%struct.zyd_softc* %138, i32 %139, i32 15729665)
  %141 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %142 = load i32, i32* @ZYD_MAC_PHY_DELAY2, align 4
  %143 = call i32 @zyd_write32_m(%struct.zyd_softc* %141, i32 %142, i32 0)
  %144 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %145 = load i32, i32* @ZYD_MAC_ACK_EXT, align 4
  %146 = call i32 @zyd_write32_m(%struct.zyd_softc* %144, i32 %145, i32 128)
  %147 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %148 = load i32, i32* @ZYD_CR_ADDA_PWR_DWN, align 4
  %149 = call i32 @zyd_write32_m(%struct.zyd_softc* %147, i32 %148, i32 0)
  %150 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %151 = load i32, i32* @ZYD_MAC_SIFS_ACK_TIME, align 4
  %152 = call i32 @zyd_write32_m(%struct.zyd_softc* %150, i32 %151, i32 256)
  %153 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %154 = load i32, i32* @ZYD_CR_RX_PE_DELAY, align 4
  %155 = call i32 @zyd_write32_m(%struct.zyd_softc* %153, i32 %154, i32 112)
  %156 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %157 = load i32, i32* @ZYD_CR_PS_CTRL, align 4
  %158 = call i32 @zyd_write32_m(%struct.zyd_softc* %156, i32 %157, i32 268435456)
  %159 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %160 = load i32, i32* @ZYD_MAC_RTSCTSRATE, align 4
  %161 = call i32 @zyd_write32_m(%struct.zyd_softc* %159, i32 %160, i32 33751555)
  %162 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %163 = load i32, i32* @ZYD_MAC_AFTER_PNP, align 4
  %164 = call i32 @zyd_write32_m(%struct.zyd_softc* %162, i32 %163, i32 1)
  %165 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %166 = load i32, i32* @ZYD_MAC_BACKOFF_PROTECT, align 4
  %167 = call i32 @zyd_write32_m(%struct.zyd_softc* %165, i32 %166, i32 276)
  %168 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %169 = load i32, i32* @ZYD_MAC_DIFS_EIFS_SIFS, align 4
  %170 = call i32 @zyd_write32_m(%struct.zyd_softc* %168, i32 %169, i32 172474418)
  %171 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %172 = load i32, i32* @ZYD_MAC_CAM_MODE, align 4
  %173 = call i32 @zyd_write32_m(%struct.zyd_softc* %171, i32 %172, i32 3)
  %174 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %175 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %174, i32 0, i32 2
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @ZYD_ZD1211, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %186

179:                                              ; preds = %113
  %180 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %181 = load i32, i32* @ZYD_MAC_RETRY, align 4
  %182 = call i32 @zyd_write32_m(%struct.zyd_softc* %180, i32 %181, i32 2)
  %183 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %184 = load i32, i32* @ZYD_MAC_RX_THRESHOLD, align 4
  %185 = call i32 @zyd_write32_m(%struct.zyd_softc* %183, i32 %184, i32 788032)
  br label %214

186:                                              ; preds = %113
  %187 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %188 = load i32, i32* @ZYD_MACB_MAX_RETRY, align 4
  %189 = call i32 @zyd_write32_m(%struct.zyd_softc* %187, i32 %188, i32 33686018)
  %190 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %191 = load i32, i32* @ZYD_MACB_TXPWR_CTL4, align 4
  %192 = call i32 @zyd_write32_m(%struct.zyd_softc* %190, i32 %191, i32 8323135)
  %193 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %194 = load i32, i32* @ZYD_MACB_TXPWR_CTL3, align 4
  %195 = call i32 @zyd_write32_m(%struct.zyd_softc* %193, i32 %194, i32 8323135)
  %196 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %197 = load i32, i32* @ZYD_MACB_TXPWR_CTL2, align 4
  %198 = call i32 @zyd_write32_m(%struct.zyd_softc* %196, i32 %197, i32 4128799)
  %199 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %200 = load i32, i32* @ZYD_MACB_TXPWR_CTL1, align 4
  %201 = call i32 @zyd_write32_m(%struct.zyd_softc* %199, i32 %200, i32 2031631)
  %202 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %203 = load i32, i32* @ZYD_MACB_AIFS_CTL1, align 4
  %204 = call i32 @zyd_write32_m(%struct.zyd_softc* %202, i32 %203, i32 2621480)
  %205 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %206 = load i32, i32* @ZYD_MACB_AIFS_CTL2, align 4
  %207 = call i32 @zyd_write32_m(%struct.zyd_softc* %205, i32 %206, i32 9175100)
  %208 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %209 = load i32, i32* @ZYD_MACB_TXOP, align 4
  %210 = call i32 @zyd_write32_m(%struct.zyd_softc* %208, i32 %209, i32 25167908)
  %211 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %212 = load i32, i32* @ZYD_MAC_RX_THRESHOLD, align 4
  %213 = call i32 @zyd_write32_m(%struct.zyd_softc* %211, i32 %212, i32 790271)
  br label %214

214:                                              ; preds = %186, %179
  %215 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %216 = call i32 @zyd_set_beacon_interval(%struct.zyd_softc* %215, i32 100)
  store i32 %216, i32* %3, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %214
  br label %270

219:                                              ; preds = %214
  %220 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %221 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %222 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %221, i32 0, i32 5
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @zyd_rf_attach(%struct.zyd_softc* %220, i32 %223)
  store i32 %224, i32* %3, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %234

226:                                              ; preds = %219
  %227 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %228 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %227, i32 0, i32 4
  %229 = load i32, i32* %228, align 8
  %230 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %231 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %230, i32 0, i32 5
  %232 = load i32, i32* %231, align 4
  %233 = call i32 (i32, i8*, ...) @device_printf(i32 %229, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %232)
  br label %270

234:                                              ; preds = %219
  %235 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %236 = call i32 @zyd_lock_phy(%struct.zyd_softc* %235)
  store i32 %236, i32* %3, align 4
  %237 = load i32, i32* %3, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %234
  br label %270

240:                                              ; preds = %234
  %241 = load %struct.zyd_rf*, %struct.zyd_rf** %5, align 8
  %242 = getelementptr inbounds %struct.zyd_rf, %struct.zyd_rf* %241, i32 0, i32 0
  %243 = load i32 (%struct.zyd_rf*)*, i32 (%struct.zyd_rf*)** %242, align 8
  %244 = load %struct.zyd_rf*, %struct.zyd_rf** %5, align 8
  %245 = call i32 %243(%struct.zyd_rf* %244)
  store i32 %245, i32* %3, align 4
  %246 = load i32, i32* %3, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %254

248:                                              ; preds = %240
  %249 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %250 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %249, i32 0, i32 4
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* %3, align 4
  %253 = call i32 (i32, i8*, ...) @device_printf(i32 %251, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %252)
  br label %270

254:                                              ; preds = %240
  %255 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %256 = call i32 @zyd_unlock_phy(%struct.zyd_softc* %255)
  store i32 %256, i32* %3, align 4
  %257 = load i32, i32* %3, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %260

259:                                              ; preds = %254
  br label %270

260:                                              ; preds = %254
  %261 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %262 = call i32 @zyd_read_eeprom(%struct.zyd_softc* %261)
  store i32 %262, i32* %3, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %269

264:                                              ; preds = %260
  %265 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %266 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %265, i32 0, i32 4
  %267 = load i32, i32* %266, align 8
  %268 = call i32 (i32, i8*, ...) @device_printf(i32 %267, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %270

269:                                              ; preds = %260
  br label %270

270:                                              ; preds = %269, %264, %259, %248, %239, %226, %218, %112, %57, %47
  %271 = load i32, i32* %3, align 4
  ret i32 %271
}

declare dso_local i32 @zyd_write32_m(%struct.zyd_softc*, i32, i32) #1

declare dso_local i32 @zyd_read16_m(%struct.zyd_softc*, i32, i32*) #1

declare dso_local i32 @DPRINTF(%struct.zyd_softc*, i32, i8*, i32) #1

declare dso_local i32 @zyd_read_pod(%struct.zyd_softc*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @zyd_lock_phy(%struct.zyd_softc*) #1

declare dso_local i32 @zyd_write16_m(%struct.zyd_softc*, i64, i32) #1

declare dso_local i32 @zyd_unlock_phy(%struct.zyd_softc*) #1

declare dso_local i32 @zyd_set_beacon_interval(%struct.zyd_softc*, i32) #1

declare dso_local i32 @zyd_rf_attach(%struct.zyd_softc*, i32) #1

declare dso_local i32 @zyd_read_eeprom(%struct.zyd_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
