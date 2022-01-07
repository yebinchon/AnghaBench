; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_smsc.c_smsc_chip_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_smsc.c_smsc_chip_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smsc_softc = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@SMSC_HW_CFG = common dso_local global i32 0, align 4
@SMSC_HW_CFG_LRST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"timed-out waiting for reset to complete\0A\00", align 1
@SMSC_PM_CTRL = common dso_local global i32 0, align 4
@SMSC_PM_CTRL_PHY_RST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"timed-out waiting for phy reset to complete\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"failed to set the MAC address\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"failed to read HW_CFG: %d\0A\00", align 1
@SMSC_HW_CFG_BIR = common dso_local global i32 0, align 4
@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@SMSC_BURST_CAP = common dso_local global i32 0, align 4
@SMSC_BULK_IN_DLY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"failed to read HW_CFG: (err = %d)\0A\00", align 1
@SMSC_HW_CFG_RXDOFF = common dso_local global i32 0, align 4
@ETHER_ALIGN = common dso_local global i32 0, align 4
@SMSC_HW_CFG_MEF = common dso_local global i32 0, align 4
@SMSC_HW_CFG_BCE = common dso_local global i32 0, align 4
@SMSC_INTR_STATUS = common dso_local global i32 0, align 4
@SMSC_ID_REV = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"failed to read ID_REV (err = %d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"chip 0x%04lx, rev. %04lx\0A\00", align 1
@SMSC_ID_REV_CHIP_ID_MASK = common dso_local global i32 0, align 4
@SMSC_ID_REV_CHIP_REV_MASK = common dso_local global i32 0, align 4
@SMSC_LED_GPIO_CFG_SPD_LED = common dso_local global i32 0, align 4
@SMSC_LED_GPIO_CFG_LNK_LED = common dso_local global i32 0, align 4
@SMSC_LED_GPIO_CFG_FDX_LED = common dso_local global i32 0, align 4
@SMSC_LED_GPIO_CFG = common dso_local global i32 0, align 4
@SMSC_FLOW = common dso_local global i32 0, align 4
@SMSC_AFC_CFG = common dso_local global i32 0, align 4
@AFC_CFG_DEFAULT = common dso_local global i32 0, align 4
@SMSC_MAC_CSR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [33 x i8] c"failed to read MAC_CSR (err=%d)\0A\00", align 1
@SMSC_VLAN1 = common dso_local global i32 0, align 4
@ETHERTYPE_VLAN = common dso_local global i64 0, align 8
@SMSC_MAC_CSR_TXEN = common dso_local global i32 0, align 4
@SMSC_TX_CFG = common dso_local global i32 0, align 4
@SMSC_TX_CFG_ON = common dso_local global i32 0, align 4
@SMSC_MAC_CSR_RXEN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [32 x i8] c"smsc_chip_init failed (err=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smsc_softc*)* @smsc_chip_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc_chip_init(%struct.smsc_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smsc_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.smsc_softc* %0, %struct.smsc_softc** %3, align 8
  %8 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %9 = getelementptr inbounds %struct.smsc_softc, %struct.smsc_softc* %8, i32 0, i32 3
  %10 = call i32 @mtx_owned(i32* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %15 = call i32 @SMSC_LOCK(%struct.smsc_softc* %14)
  br label %16

16:                                               ; preds = %13, %1
  %17 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %18 = load i32, i32* @SMSC_HW_CFG, align 4
  %19 = load i32, i32* @SMSC_HW_CFG_LRST, align 4
  %20 = call i32 @smsc_write_reg(%struct.smsc_softc* %17, i32 %18, i32 %19)
  %21 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %22 = load i32, i32* @SMSC_HW_CFG, align 4
  %23 = load i32, i32* @SMSC_HW_CFG_LRST, align 4
  %24 = call i32 @smsc_wait_for_bits(%struct.smsc_softc* %21, i32 %22, i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %16
  %27 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %28 = call i32 (%struct.smsc_softc*, i8*, ...) @smsc_warn_printf(%struct.smsc_softc* %27, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %214

29:                                               ; preds = %16
  %30 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %31 = load i32, i32* @SMSC_PM_CTRL, align 4
  %32 = load i32, i32* @SMSC_PM_CTRL_PHY_RST, align 4
  %33 = call i32 @smsc_write_reg(%struct.smsc_softc* %30, i32 %31, i32 %32)
  %34 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %35 = load i32, i32* @SMSC_PM_CTRL, align 4
  %36 = load i32, i32* @SMSC_PM_CTRL_PHY_RST, align 4
  %37 = call i32 @smsc_wait_for_bits(%struct.smsc_softc* %34, i32 %35, i32 %36)
  store i32 %37, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %29
  %40 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %41 = call i32 (%struct.smsc_softc*, i8*, ...) @smsc_warn_printf(%struct.smsc_softc* %40, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %214

42:                                               ; preds = %29
  %43 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %44 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %45 = getelementptr inbounds %struct.smsc_softc, %struct.smsc_softc* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @smsc_setmacaddress(%struct.smsc_softc* %43, i32 %47)
  store i32 %48, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %52 = call i32 (%struct.smsc_softc*, i8*, ...) @smsc_warn_printf(%struct.smsc_softc* %51, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %214

53:                                               ; preds = %42
  %54 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %55 = load i32, i32* @SMSC_HW_CFG, align 4
  %56 = call i32 @smsc_read_reg(%struct.smsc_softc* %54, i32 %55, i32* %6)
  store i32 %56, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %60 = load i32, i32* %4, align 4
  %61 = call i32 (%struct.smsc_softc*, i8*, ...) @smsc_warn_printf(%struct.smsc_softc* %59, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %60)
  br label %214

62:                                               ; preds = %53
  %63 = load i32, i32* @SMSC_HW_CFG_BIR, align 4
  %64 = load i32, i32* %6, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %6, align 4
  %66 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %67 = load i32, i32* @SMSC_HW_CFG, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @smsc_write_reg(%struct.smsc_softc* %66, i32 %67, i32 %68)
  %70 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %71 = getelementptr inbounds %struct.smsc_softc, %struct.smsc_softc* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @usbd_get_speed(i32 %73)
  %75 = load i64, i64* @USB_SPEED_HIGH, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %62
  store i32 37, i32* %7, align 4
  br label %79

78:                                               ; preds = %62
  store i32 128, i32* %7, align 4
  br label %79

79:                                               ; preds = %78, %77
  %80 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %81 = load i32, i32* @SMSC_BURST_CAP, align 4
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @smsc_write_reg(%struct.smsc_softc* %80, i32 %81, i32 %82)
  %84 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %85 = load i32, i32* @SMSC_BULK_IN_DLY, align 4
  %86 = call i32 @smsc_write_reg(%struct.smsc_softc* %84, i32 %85, i32 8192)
  %87 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %88 = load i32, i32* @SMSC_HW_CFG, align 4
  %89 = call i32 @smsc_read_reg(%struct.smsc_softc* %87, i32 %88, i32* %6)
  store i32 %89, i32* %4, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %79
  %92 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %93 = load i32, i32* %4, align 4
  %94 = call i32 (%struct.smsc_softc*, i8*, ...) @smsc_warn_printf(%struct.smsc_softc* %92, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %93)
  br label %214

95:                                               ; preds = %79
  %96 = load i32, i32* @SMSC_HW_CFG_RXDOFF, align 4
  %97 = xor i32 %96, -1
  %98 = load i32, i32* %6, align 4
  %99 = and i32 %98, %97
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* @ETHER_ALIGN, align 4
  %101 = shl i32 %100, 9
  %102 = load i32, i32* @SMSC_HW_CFG_RXDOFF, align 4
  %103 = and i32 %101, %102
  %104 = load i32, i32* %6, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* @SMSC_HW_CFG_MEF, align 4
  %107 = load i32, i32* @SMSC_HW_CFG_BCE, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* %6, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %6, align 4
  %111 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %112 = load i32, i32* @SMSC_HW_CFG, align 4
  %113 = load i32, i32* %6, align 4
  %114 = call i32 @smsc_write_reg(%struct.smsc_softc* %111, i32 %112, i32 %113)
  %115 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %116 = load i32, i32* @SMSC_INTR_STATUS, align 4
  %117 = call i32 @smsc_write_reg(%struct.smsc_softc* %115, i32 %116, i32 -1)
  %118 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %119 = load i32, i32* @SMSC_ID_REV, align 4
  %120 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %121 = getelementptr inbounds %struct.smsc_softc, %struct.smsc_softc* %120, i32 0, i32 0
  %122 = call i32 @smsc_read_reg(%struct.smsc_softc* %118, i32 %119, i32* %121)
  store i32 %122, i32* %4, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %95
  %125 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %126 = load i32, i32* %4, align 4
  %127 = call i32 (%struct.smsc_softc*, i8*, ...) @smsc_warn_printf(%struct.smsc_softc* %125, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %126)
  br label %214

128:                                              ; preds = %95
  %129 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %130 = getelementptr inbounds %struct.smsc_softc, %struct.smsc_softc* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %134 = getelementptr inbounds %struct.smsc_softc, %struct.smsc_softc* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @SMSC_ID_REV_CHIP_ID_MASK, align 4
  %137 = and i32 %135, %136
  %138 = ashr i32 %137, 16
  %139 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %140 = getelementptr inbounds %struct.smsc_softc, %struct.smsc_softc* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @SMSC_ID_REV_CHIP_REV_MASK, align 4
  %143 = and i32 %141, %142
  %144 = call i32 @device_printf(i32 %132, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %138, i32 %143)
  %145 = load i32, i32* @SMSC_LED_GPIO_CFG_SPD_LED, align 4
  %146 = load i32, i32* @SMSC_LED_GPIO_CFG_LNK_LED, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* @SMSC_LED_GPIO_CFG_FDX_LED, align 4
  %149 = or i32 %147, %148
  store i32 %149, i32* %6, align 4
  %150 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %151 = load i32, i32* @SMSC_LED_GPIO_CFG, align 4
  %152 = load i32, i32* %6, align 4
  %153 = call i32 @smsc_write_reg(%struct.smsc_softc* %150, i32 %151, i32 %152)
  %154 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %155 = load i32, i32* @SMSC_FLOW, align 4
  %156 = call i32 @smsc_write_reg(%struct.smsc_softc* %154, i32 %155, i32 0)
  %157 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %158 = load i32, i32* @SMSC_AFC_CFG, align 4
  %159 = load i32, i32* @AFC_CFG_DEFAULT, align 4
  %160 = call i32 @smsc_write_reg(%struct.smsc_softc* %157, i32 %158, i32 %159)
  %161 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %162 = load i32, i32* @SMSC_MAC_CSR, align 4
  %163 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %164 = getelementptr inbounds %struct.smsc_softc, %struct.smsc_softc* %163, i32 0, i32 1
  %165 = call i32 @smsc_read_reg(%struct.smsc_softc* %161, i32 %162, i32* %164)
  store i32 %165, i32* %4, align 4
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %128
  %168 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %169 = load i32, i32* %4, align 4
  %170 = call i32 (%struct.smsc_softc*, i8*, ...) @smsc_warn_printf(%struct.smsc_softc* %168, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %169)
  br label %214

171:                                              ; preds = %128
  %172 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %173 = load i32, i32* @SMSC_VLAN1, align 4
  %174 = load i64, i64* @ETHERTYPE_VLAN, align 8
  %175 = trunc i64 %174 to i32
  %176 = call i32 @smsc_write_reg(%struct.smsc_softc* %172, i32 %173, i32 %175)
  %177 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %178 = call i32 @smsc_phy_init(%struct.smsc_softc* %177)
  store i32 %178, i32* %4, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %171
  br label %214

181:                                              ; preds = %171
  %182 = load i32, i32* @SMSC_MAC_CSR_TXEN, align 4
  %183 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %184 = getelementptr inbounds %struct.smsc_softc, %struct.smsc_softc* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = or i32 %185, %182
  store i32 %186, i32* %184, align 4
  %187 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %188 = load i32, i32* @SMSC_MAC_CSR, align 4
  %189 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %190 = getelementptr inbounds %struct.smsc_softc, %struct.smsc_softc* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @smsc_write_reg(%struct.smsc_softc* %187, i32 %188, i32 %191)
  %193 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %194 = load i32, i32* @SMSC_TX_CFG, align 4
  %195 = load i32, i32* @SMSC_TX_CFG_ON, align 4
  %196 = call i32 @smsc_write_reg(%struct.smsc_softc* %193, i32 %194, i32 %195)
  %197 = load i32, i32* @SMSC_MAC_CSR_RXEN, align 4
  %198 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %199 = getelementptr inbounds %struct.smsc_softc, %struct.smsc_softc* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = or i32 %200, %197
  store i32 %201, i32* %199, align 4
  %202 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %203 = load i32, i32* @SMSC_MAC_CSR, align 4
  %204 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %205 = getelementptr inbounds %struct.smsc_softc, %struct.smsc_softc* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @smsc_write_reg(%struct.smsc_softc* %202, i32 %203, i32 %206)
  %208 = load i32, i32* %5, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %213, label %210

210:                                              ; preds = %181
  %211 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %212 = call i32 @SMSC_UNLOCK(%struct.smsc_softc* %211)
  br label %213

213:                                              ; preds = %210, %181
  store i32 0, i32* %2, align 4
  br label %225

214:                                              ; preds = %180, %167, %124, %91, %58, %50, %39, %26
  %215 = load i32, i32* %5, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %220, label %217

217:                                              ; preds = %214
  %218 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %219 = call i32 @SMSC_UNLOCK(%struct.smsc_softc* %218)
  br label %220

220:                                              ; preds = %217, %214
  %221 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %222 = load i32, i32* %4, align 4
  %223 = call i32 @smsc_err_printf(%struct.smsc_softc* %221, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 %222)
  %224 = load i32, i32* %4, align 4
  store i32 %224, i32* %2, align 4
  br label %225

225:                                              ; preds = %220, %213
  %226 = load i32, i32* %2, align 4
  ret i32 %226
}

declare dso_local i32 @mtx_owned(i32*) #1

declare dso_local i32 @SMSC_LOCK(%struct.smsc_softc*) #1

declare dso_local i32 @smsc_write_reg(%struct.smsc_softc*, i32, i32) #1

declare dso_local i32 @smsc_wait_for_bits(%struct.smsc_softc*, i32, i32) #1

declare dso_local i32 @smsc_warn_printf(%struct.smsc_softc*, i8*, ...) #1

declare dso_local i32 @smsc_setmacaddress(%struct.smsc_softc*, i32) #1

declare dso_local i32 @smsc_read_reg(%struct.smsc_softc*, i32, i32*) #1

declare dso_local i64 @usbd_get_speed(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32) #1

declare dso_local i32 @smsc_phy_init(%struct.smsc_softc*) #1

declare dso_local i32 @SMSC_UNLOCK(%struct.smsc_softc*) #1

declare dso_local i32 @smsc_err_printf(%struct.smsc_softc*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
