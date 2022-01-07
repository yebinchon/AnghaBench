; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_muge.c_lan78xx_chip_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_muge.c_lan78xx_chip_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.muge_softc = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@ETH_HW_CFG = common dso_local global i32 0, align 4
@ETH_HW_CFG_LRST_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"timed-out waiting for lite reset to complete\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to set the MAC address\0A\00", align 1
@ETH_ID_REV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"failed to read ETH_ID_REV (err = %d)\0A\00", align 1
@ETH_ID_REV_CHIP_ID_MASK_ = common dso_local global i32 0, align 4
@ETH_ID_REV_CHIP_REV_MASK_ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Chip ID 0x%04x not yet supported\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Chip ID 0x%04x rev %04x\0A\00", align 1
@ETH_USB_CFG0 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"failed to read ETH_USB_CFG0 (err=%d)\0A\00", align 1
@ETH_USB_CFG_BIR_ = common dso_local global i32 0, align 4
@MUGE_DEFAULT_BURST_CAP_SIZE = common dso_local global i32 0, align 4
@MUGE_SS_USB_PKT_SIZE = common dso_local global i32 0, align 4
@MUGE_HS_USB_PKT_SIZE = common dso_local global i32 0, align 4
@MUGE_FS_USB_PKT_SIZE = common dso_local global i32 0, align 4
@ETH_BURST_CAP = common dso_local global i32 0, align 4
@ETH_BULK_IN_DLY = common dso_local global i32 0, align 4
@MUGE_DEFAULT_BULK_IN_DELAY = common dso_local global i32 0, align 4
@ETH_HW_CFG_MEF_ = common dso_local global i32 0, align 4
@ETH_USB_CFG_BCE_ = common dso_local global i32 0, align 4
@MUGE_MAX_RX_FIFO_SIZE = common dso_local global i32 0, align 4
@ETH_FCT_RX_FIFO_END = common dso_local global i32 0, align 4
@MUGE_MAX_TX_FIFO_SIZE = common dso_local global i32 0, align 4
@ETH_FCT_TX_FIFO_END = common dso_local global i32 0, align 4
@ETH_INT_STS = common dso_local global i32 0, align 4
@ETH_INT_STS_CLEAR_ALL_ = common dso_local global i32 0, align 4
@ETH_FLOW = common dso_local global i32 0, align 4
@ETH_FCT_FLOW = common dso_local global i32 0, align 4
@ETH_RFE_CTL = common dso_local global i32 0, align 4
@ETH_RFE_CTL_BCAST_EN_ = common dso_local global i32 0, align 4
@ETH_RFE_CTL_DA_PERFECT_ = common dso_local global i32 0, align 4
@ETH_PMT_CTL = common dso_local global i32 0, align 4
@ETH_PMT_CTL_PHY_RST_ = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [45 x i8] c"timed-out waiting for phy reset to complete\0A\00", align 1
@ETH_MAC_CR = common dso_local global i32 0, align 4
@ETH_MAC_CR_AUTO_DUPLEX_ = common dso_local global i32 0, align 4
@ETH_MAC_CR_AUTO_SPEED_ = common dso_local global i32 0, align 4
@ETH_INT_EP_CTL = common dso_local global i32 0, align 4
@ETH_INT_ENP_PHY_INT = common dso_local global i32 0, align 4
@ETH_MAC_TX = common dso_local global i32 0, align 4
@ETH_MAC_TX_TXEN_ = common dso_local global i32 0, align 4
@ETH_FCT_TX_CTL = common dso_local global i32 0, align 4
@ETH_FCT_TX_CTL_EN_ = common dso_local global i32 0, align 4
@ETHER_MAX_LEN = common dso_local global i32 0, align 4
@ETH_MAC_RX = common dso_local global i32 0, align 4
@ETH_MAC_RX_EN_ = common dso_local global i32 0, align 4
@ETH_FCT_RX_CTL = common dso_local global i32 0, align 4
@MUGE_FLAG_INIT_DONE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"lan78xx_chip_init failed (err=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.muge_softc*)* @lan78xx_chip_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan78xx_chip_init(%struct.muge_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.muge_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.muge_softc* %0, %struct.muge_softc** %3, align 8
  %7 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %8 = load i32, i32* @MA_OWNED, align 4
  %9 = call i32 @MUGE_LOCK_ASSERT(%struct.muge_softc* %7, i32 %8)
  %10 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %11 = load i32, i32* @ETH_HW_CFG, align 4
  %12 = load i32, i32* @ETH_HW_CFG_LRST_, align 4
  %13 = call i32 @lan78xx_write_reg(%struct.muge_softc* %10, i32 %11, i32 %12)
  %14 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %15 = load i32, i32* @ETH_HW_CFG, align 4
  %16 = load i32, i32* @ETH_HW_CFG_LRST_, align 4
  %17 = call i32 @lan78xx_wait_for_bits(%struct.muge_softc* %14, i32 %15, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %21 = call i32 (%struct.muge_softc*, i8*, ...) @muge_warn_printf(%struct.muge_softc* %20, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %278

22:                                               ; preds = %1
  %23 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %24 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %25 = getelementptr inbounds %struct.muge_softc, %struct.muge_softc* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @lan78xx_setmacaddress(%struct.muge_softc* %23, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %32 = call i32 (%struct.muge_softc*, i8*, ...) @muge_warn_printf(%struct.muge_softc* %31, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %278

33:                                               ; preds = %22
  %34 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %35 = load i32, i32* @ETH_ID_REV, align 4
  %36 = call i32 @lan78xx_read_reg(%struct.muge_softc* %34, i32 %35, i32* %5)
  store i32 %36, i32* %4, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 (%struct.muge_softc*, i8*, ...) @muge_warn_printf(%struct.muge_softc* %39, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  br label %278

42:                                               ; preds = %33
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @ETH_ID_REV_CHIP_ID_MASK_, align 4
  %45 = and i32 %43, %44
  %46 = ashr i32 %45, 16
  %47 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %48 = getelementptr inbounds %struct.muge_softc, %struct.muge_softc* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @ETH_ID_REV_CHIP_REV_MASK_, align 4
  %51 = and i32 %49, %50
  %52 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %53 = getelementptr inbounds %struct.muge_softc, %struct.muge_softc* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %55 = getelementptr inbounds %struct.muge_softc, %struct.muge_softc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  switch i32 %56, label %58 [
    i32 131, label %57
    i32 130, label %57
  ]

57:                                               ; preds = %42, %42
  br label %64

58:                                               ; preds = %42
  %59 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %60 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %61 = getelementptr inbounds %struct.muge_softc, %struct.muge_softc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (%struct.muge_softc*, i8*, ...) @muge_warn_printf(%struct.muge_softc* %59, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %62)
  br label %278

64:                                               ; preds = %57
  %65 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %66 = getelementptr inbounds %struct.muge_softc, %struct.muge_softc* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %70 = getelementptr inbounds %struct.muge_softc, %struct.muge_softc* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %73 = getelementptr inbounds %struct.muge_softc, %struct.muge_softc* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @device_printf(i32 %68, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %71, i32 %74)
  %76 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %77 = load i32, i32* @ETH_USB_CFG0, align 4
  %78 = call i32 @lan78xx_read_reg(%struct.muge_softc* %76, i32 %77, i32* %5)
  store i32 %78, i32* %4, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %64
  %81 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %82 = load i32, i32* %4, align 4
  %83 = call i32 (%struct.muge_softc*, i8*, ...) @muge_warn_printf(%struct.muge_softc* %81, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %82)
  br label %278

84:                                               ; preds = %64
  %85 = load i32, i32* @ETH_USB_CFG_BIR_, align 4
  %86 = load i32, i32* %5, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %5, align 4
  %88 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %89 = load i32, i32* @ETH_USB_CFG0, align 4
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @lan78xx_write_reg(%struct.muge_softc* %88, i32 %89, i32 %90)
  %92 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %93 = getelementptr inbounds %struct.muge_softc, %struct.muge_softc* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @usbd_get_speed(i32 %95)
  switch i32 %96, label %105 [
    i32 128, label %97
    i32 129, label %101
  ]

97:                                               ; preds = %84
  %98 = load i32, i32* @MUGE_DEFAULT_BURST_CAP_SIZE, align 4
  %99 = load i32, i32* @MUGE_SS_USB_PKT_SIZE, align 4
  %100 = sdiv i32 %98, %99
  store i32 %100, i32* %6, align 4
  br label %109

101:                                              ; preds = %84
  %102 = load i32, i32* @MUGE_DEFAULT_BURST_CAP_SIZE, align 4
  %103 = load i32, i32* @MUGE_HS_USB_PKT_SIZE, align 4
  %104 = sdiv i32 %102, %103
  store i32 %104, i32* %6, align 4
  br label %109

105:                                              ; preds = %84
  %106 = load i32, i32* @MUGE_DEFAULT_BURST_CAP_SIZE, align 4
  %107 = load i32, i32* @MUGE_FS_USB_PKT_SIZE, align 4
  %108 = sdiv i32 %106, %107
  store i32 %108, i32* %6, align 4
  br label %109

109:                                              ; preds = %105, %101, %97
  %110 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %111 = load i32, i32* @ETH_BURST_CAP, align 4
  %112 = load i32, i32* %6, align 4
  %113 = call i32 @lan78xx_write_reg(%struct.muge_softc* %110, i32 %111, i32 %112)
  %114 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %115 = load i32, i32* @ETH_BULK_IN_DLY, align 4
  %116 = load i32, i32* @MUGE_DEFAULT_BULK_IN_DELAY, align 4
  %117 = call i32 @lan78xx_write_reg(%struct.muge_softc* %114, i32 %115, i32 %116)
  %118 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %119 = load i32, i32* @ETH_HW_CFG, align 4
  %120 = call i32 @lan78xx_read_reg(%struct.muge_softc* %118, i32 %119, i32* %5)
  store i32 %120, i32* %4, align 4
  %121 = load i32, i32* @ETH_HW_CFG_MEF_, align 4
  %122 = load i32, i32* %5, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %5, align 4
  %124 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %125 = load i32, i32* @ETH_HW_CFG, align 4
  %126 = load i32, i32* %5, align 4
  %127 = call i32 @lan78xx_write_reg(%struct.muge_softc* %124, i32 %125, i32 %126)
  store i32 %127, i32* %4, align 4
  %128 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %129 = load i32, i32* @ETH_USB_CFG0, align 4
  %130 = call i32 @lan78xx_read_reg(%struct.muge_softc* %128, i32 %129, i32* %5)
  store i32 %130, i32* %4, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %109
  %133 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %134 = load i32, i32* %4, align 4
  %135 = call i32 (%struct.muge_softc*, i8*, ...) @muge_warn_printf(%struct.muge_softc* %133, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %134)
  br label %278

136:                                              ; preds = %109
  %137 = load i32, i32* @ETH_USB_CFG_BCE_, align 4
  %138 = load i32, i32* %5, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %5, align 4
  %140 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %141 = load i32, i32* @ETH_USB_CFG0, align 4
  %142 = load i32, i32* %5, align 4
  %143 = call i32 @lan78xx_write_reg(%struct.muge_softc* %140, i32 %141, i32 %142)
  store i32 %143, i32* %4, align 4
  %144 = load i32, i32* @MUGE_MAX_RX_FIFO_SIZE, align 4
  %145 = sub nsw i32 %144, 512
  %146 = sdiv i32 %145, 512
  store i32 %146, i32* %5, align 4
  %147 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %148 = load i32, i32* @ETH_FCT_RX_FIFO_END, align 4
  %149 = load i32, i32* %5, align 4
  %150 = call i32 @lan78xx_write_reg(%struct.muge_softc* %147, i32 %148, i32 %149)
  store i32 %150, i32* %4, align 4
  %151 = load i32, i32* @MUGE_MAX_TX_FIFO_SIZE, align 4
  %152 = sub nsw i32 %151, 512
  %153 = sdiv i32 %152, 512
  store i32 %153, i32* %5, align 4
  %154 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %155 = load i32, i32* @ETH_FCT_TX_FIFO_END, align 4
  %156 = load i32, i32* %5, align 4
  %157 = call i32 @lan78xx_write_reg(%struct.muge_softc* %154, i32 %155, i32 %156)
  store i32 %157, i32* %4, align 4
  %158 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %159 = load i32, i32* @ETH_INT_STS, align 4
  %160 = load i32, i32* @ETH_INT_STS_CLEAR_ALL_, align 4
  %161 = call i32 @lan78xx_write_reg(%struct.muge_softc* %158, i32 %159, i32 %160)
  store i32 %161, i32* %4, align 4
  %162 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %163 = load i32, i32* @ETH_FLOW, align 4
  %164 = call i32 @lan78xx_write_reg(%struct.muge_softc* %162, i32 %163, i32 0)
  store i32 %164, i32* %4, align 4
  %165 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %166 = load i32, i32* @ETH_FCT_FLOW, align 4
  %167 = call i32 @lan78xx_write_reg(%struct.muge_softc* %165, i32 %166, i32 0)
  store i32 %167, i32* %4, align 4
  %168 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %169 = load i32, i32* @ETH_RFE_CTL, align 4
  %170 = call i32 @lan78xx_read_reg(%struct.muge_softc* %168, i32 %169, i32* %5)
  store i32 %170, i32* %4, align 4
  %171 = load i32, i32* @ETH_RFE_CTL_BCAST_EN_, align 4
  %172 = load i32, i32* @ETH_RFE_CTL_DA_PERFECT_, align 4
  %173 = or i32 %171, %172
  %174 = load i32, i32* %5, align 4
  %175 = or i32 %174, %173
  store i32 %175, i32* %5, align 4
  %176 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %177 = load i32, i32* @ETH_RFE_CTL, align 4
  %178 = load i32, i32* %5, align 4
  %179 = call i32 @lan78xx_write_reg(%struct.muge_softc* %176, i32 %177, i32 %178)
  store i32 %179, i32* %4, align 4
  %180 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %181 = load i32, i32* @ETH_PMT_CTL, align 4
  %182 = load i32, i32* @ETH_PMT_CTL_PHY_RST_, align 4
  %183 = call i32 @lan78xx_write_reg(%struct.muge_softc* %180, i32 %181, i32 %182)
  %184 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %185 = load i32, i32* @ETH_PMT_CTL, align 4
  %186 = load i32, i32* @ETH_PMT_CTL_PHY_RST_, align 4
  %187 = call i32 @lan78xx_wait_for_bits(%struct.muge_softc* %184, i32 %185, i32 %186)
  store i32 %187, i32* %4, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %136
  %190 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %191 = call i32 (%struct.muge_softc*, i8*, ...) @muge_warn_printf(%struct.muge_softc* %190, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0))
  br label %278

192:                                              ; preds = %136
  %193 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %194 = load i32, i32* @ETH_MAC_CR, align 4
  %195 = call i32 @lan78xx_read_reg(%struct.muge_softc* %193, i32 %194, i32* %5)
  store i32 %195, i32* %4, align 4
  %196 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %197 = getelementptr inbounds %struct.muge_softc, %struct.muge_softc* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = icmp eq i32 %198, 131
  br i1 %199, label %200, label %210

200:                                              ; preds = %192
  %201 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %202 = call i32 @lan78xx_eeprom_present(%struct.muge_softc* %201)
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %210, label %204

204:                                              ; preds = %200
  %205 = load i32, i32* @ETH_MAC_CR_AUTO_DUPLEX_, align 4
  %206 = load i32, i32* @ETH_MAC_CR_AUTO_SPEED_, align 4
  %207 = or i32 %205, %206
  %208 = load i32, i32* %5, align 4
  %209 = or i32 %208, %207
  store i32 %209, i32* %5, align 4
  br label %210

210:                                              ; preds = %204, %200, %192
  %211 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %212 = load i32, i32* @ETH_MAC_CR, align 4
  %213 = load i32, i32* %5, align 4
  %214 = call i32 @lan78xx_write_reg(%struct.muge_softc* %211, i32 %212, i32 %213)
  store i32 %214, i32* %4, align 4
  %215 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %216 = load i32, i32* @ETH_INT_EP_CTL, align 4
  %217 = call i32 @lan78xx_read_reg(%struct.muge_softc* %215, i32 %216, i32* %5)
  store i32 %217, i32* %4, align 4
  %218 = load i32, i32* @ETH_INT_ENP_PHY_INT, align 4
  %219 = load i32, i32* %5, align 4
  %220 = or i32 %219, %218
  store i32 %220, i32* %5, align 4
  %221 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %222 = load i32, i32* @ETH_INT_EP_CTL, align 4
  %223 = load i32, i32* %5, align 4
  %224 = call i32 @lan78xx_write_reg(%struct.muge_softc* %221, i32 %222, i32 %223)
  store i32 %224, i32* %4, align 4
  %225 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %226 = load i32, i32* @ETH_MAC_TX, align 4
  %227 = call i32 @lan78xx_read_reg(%struct.muge_softc* %225, i32 %226, i32* %5)
  store i32 %227, i32* %4, align 4
  %228 = load i32, i32* @ETH_MAC_TX_TXEN_, align 4
  %229 = load i32, i32* %5, align 4
  %230 = or i32 %229, %228
  store i32 %230, i32* %5, align 4
  %231 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %232 = load i32, i32* @ETH_MAC_TX, align 4
  %233 = load i32, i32* %5, align 4
  %234 = call i32 @lan78xx_write_reg(%struct.muge_softc* %231, i32 %232, i32 %233)
  store i32 %234, i32* %4, align 4
  %235 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %236 = load i32, i32* @ETH_FCT_TX_CTL, align 4
  %237 = call i32 @lan78xx_read_reg(%struct.muge_softc* %235, i32 %236, i32* %5)
  store i32 %237, i32* %4, align 4
  %238 = load i32, i32* @ETH_FCT_TX_CTL_EN_, align 4
  %239 = load i32, i32* %5, align 4
  %240 = or i32 %239, %238
  store i32 %240, i32* %5, align 4
  %241 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %242 = load i32, i32* @ETH_FCT_TX_CTL, align 4
  %243 = load i32, i32* %5, align 4
  %244 = call i32 @lan78xx_write_reg(%struct.muge_softc* %241, i32 %242, i32 %243)
  store i32 %244, i32* %4, align 4
  %245 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %246 = load i32, i32* @ETHER_MAX_LEN, align 4
  %247 = call i32 @lan78xx_set_rx_max_frame_length(%struct.muge_softc* %245, i32 %246)
  store i32 %247, i32* %4, align 4
  %248 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %249 = call i32 @lan78xx_phy_init(%struct.muge_softc* %248)
  store i32 %249, i32* %4, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %252

251:                                              ; preds = %210
  br label %278

252:                                              ; preds = %210
  %253 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %254 = load i32, i32* @ETH_MAC_RX, align 4
  %255 = call i32 @lan78xx_read_reg(%struct.muge_softc* %253, i32 %254, i32* %5)
  store i32 %255, i32* %4, align 4
  %256 = load i32, i32* @ETH_MAC_RX_EN_, align 4
  %257 = load i32, i32* %5, align 4
  %258 = or i32 %257, %256
  store i32 %258, i32* %5, align 4
  %259 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %260 = load i32, i32* @ETH_MAC_RX, align 4
  %261 = load i32, i32* %5, align 4
  %262 = call i32 @lan78xx_write_reg(%struct.muge_softc* %259, i32 %260, i32 %261)
  store i32 %262, i32* %4, align 4
  %263 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %264 = load i32, i32* @ETH_FCT_RX_CTL, align 4
  %265 = call i32 @lan78xx_read_reg(%struct.muge_softc* %263, i32 %264, i32* %5)
  store i32 %265, i32* %4, align 4
  %266 = load i32, i32* @ETH_FCT_TX_CTL_EN_, align 4
  %267 = load i32, i32* %5, align 4
  %268 = or i32 %267, %266
  store i32 %268, i32* %5, align 4
  %269 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %270 = load i32, i32* @ETH_FCT_RX_CTL, align 4
  %271 = load i32, i32* %5, align 4
  %272 = call i32 @lan78xx_write_reg(%struct.muge_softc* %269, i32 %270, i32 %271)
  store i32 %272, i32* %4, align 4
  %273 = load i32, i32* @MUGE_FLAG_INIT_DONE, align 4
  %274 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %275 = getelementptr inbounds %struct.muge_softc, %struct.muge_softc* %274, i32 0, i32 2
  %276 = load i32, i32* %275, align 4
  %277 = or i32 %276, %273
  store i32 %277, i32* %275, align 4
  store i32 0, i32* %2, align 4
  br label %283

278:                                              ; preds = %251, %189, %132, %80, %58, %38, %30, %19
  %279 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %280 = load i32, i32* %4, align 4
  %281 = call i32 @muge_err_printf(%struct.muge_softc* %279, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %280)
  %282 = load i32, i32* %4, align 4
  store i32 %282, i32* %2, align 4
  br label %283

283:                                              ; preds = %278, %252
  %284 = load i32, i32* %2, align 4
  ret i32 %284
}

declare dso_local i32 @MUGE_LOCK_ASSERT(%struct.muge_softc*, i32) #1

declare dso_local i32 @lan78xx_write_reg(%struct.muge_softc*, i32, i32) #1

declare dso_local i32 @lan78xx_wait_for_bits(%struct.muge_softc*, i32, i32) #1

declare dso_local i32 @muge_warn_printf(%struct.muge_softc*, i8*, ...) #1

declare dso_local i32 @lan78xx_setmacaddress(%struct.muge_softc*, i32) #1

declare dso_local i32 @lan78xx_read_reg(%struct.muge_softc*, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32) #1

declare dso_local i32 @usbd_get_speed(i32) #1

declare dso_local i32 @lan78xx_eeprom_present(%struct.muge_softc*) #1

declare dso_local i32 @lan78xx_set_rx_max_frame_length(%struct.muge_softc*, i32) #1

declare dso_local i32 @lan78xx_phy_init(%struct.muge_softc*) #1

declare dso_local i32 @muge_err_printf(%struct.muge_softc*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
