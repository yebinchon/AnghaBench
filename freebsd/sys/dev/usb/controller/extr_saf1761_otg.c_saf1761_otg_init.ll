; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_saf1761_otg.c_saf1761_otg_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_saf1761_otg.c_saf1761_otg_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saf1761_otg_softc = type { i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32*, i32 }
%struct.usb_hw_ep_profile = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@USB_REV_2_0 = common dso_local global i32 0, align 4
@saf1761_otg_bus_methods = common dso_local global i32 0, align 4
@SOTG_SW_RESET = common dso_local global i32 0, align 4
@SOTG_SW_RESET_ALL = common dso_local global i32 0, align 4
@SOTG_SW_RESET_HC = common dso_local global i32 0, align 4
@SOTG_HW_MODE_CTRL_GLOBAL_INTR_EN = common dso_local global i32 0, align 4
@SOTG_HW_MODE_CTRL_COMN_INT = common dso_local global i32 0, align 4
@SOTG_UNLOCK_DEVICE = common dso_local global i32 0, align 4
@SOTG_UNLOCK_DEVICE_CODE = common dso_local global i32 0, align 4
@SOTG_HW_MODE_CTRL = common dso_local global i32 0, align 4
@SOTG_DCSCRATCH = common dso_local global i32 0, align 4
@SOTG_HCSCRATCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"DCID=0x%08x VEND_PROD=0x%08x HWMODE=0x%08x SCRATCH=0x%08x,0x%08x\0A\00", align 1
@SOTG_DCCHIP_ID = common dso_local global i32 0, align 4
@SOTG_VEND_PROD_ID = common dso_local global i32 0, align 4
@SOTG_MODE = common dso_local global i32 0, align 4
@SOTG_MODE_SFRESET = common dso_local global i32 0, align 4
@SOTG_USBCMD = common dso_local global i32 0, align 4
@SOTG_USBCMD_HCRESET = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@SOTG_HW_MODE_CTRL_ALL_ATX_RESET = common dso_local global i32 0, align 4
@SOTG_EP_INDEX = common dso_local global i32 0, align 4
@SOTG_EP_INDEX_ENDP_INDEX_SHIFT = common dso_local global i32 0, align 4
@SOTG_EP_INDEX_DIR_IN = common dso_local global i32 0, align 4
@SOTG_EP_MAXPACKET = common dso_local global i32 0, align 4
@SOTG_EP_INDEX_DIR_OUT = common dso_local global i32 0, align 4
@SOTG_MODE_GLINTENA = common dso_local global i32 0, align 4
@SOTG_MODE_CLKAON = common dso_local global i32 0, align 4
@SOTG_MODE_WKUPCS = common dso_local global i32 0, align 4
@SOTG_INTERRUPT_CFG_CDBGMOD = common dso_local global i32 0, align 4
@SOTG_INTERRUPT_CFG_DDBGMODIN = common dso_local global i32 0, align 4
@SOTG_INTERRUPT_CFG_DDBGMODOUT = common dso_local global i32 0, align 4
@SOTG_INTERRUPT_CFG = common dso_local global i32 0, align 4
@SOTG_IRQ_ENABLE_SET_CLR = common dso_local global i32 0, align 4
@SOTG_IRQ_ID = common dso_local global i32 0, align 4
@SOTG_IRQ_VBUS_VLD = common dso_local global i32 0, align 4
@SOTG_DCINTERRUPT_IEVBUS = common dso_local global i32 0, align 4
@SOTG_DCINTERRUPT_IEBRST = common dso_local global i32 0, align 4
@SOTG_DCINTERRUPT_IESUSP = common dso_local global i32 0, align 4
@SOTG_DCINTERRUPT_EN = common dso_local global i32 0, align 4
@SOTG_CTRL_SET_CLR = common dso_local global i32 0, align 4
@SOTG_CTRL_SW_SEL_HC_DC = common dso_local global i32 0, align 4
@SOTG_CTRL_BDIS_ACON_EN = common dso_local global i32 0, align 4
@SOTG_CTRL_SEL_CP_EXT = common dso_local global i32 0, align 4
@SOTG_CTRL_VBUS_DRV = common dso_local global i32 0, align 4
@SOTG_ADDRESS = common dso_local global i32 0, align 4
@SOTG_POWER_DOWN = common dso_local global i32 0, align 4
@SOTG_POWER_DOWN_HC_CLK_EN = common dso_local global i32 0, align 4
@SOTG_CONFIGFLAG = common dso_local global i32 0, align 4
@SOTG_CONFIGFLAG_ENABLE = common dso_local global i32 0, align 4
@SOTG_USBCMD_RS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"USBCMD=0x%08x\0A\00", align 1
@SOTG_ATL_PTD_LAST_PTD = common dso_local global i32 0, align 4
@SOTG_INT_PTD_LAST_PTD = common dso_local global i32 0, align 4
@SOTG_ISO_PTD_LAST_PTD = common dso_local global i32 0, align 4
@SOTG_ATL_PTD_SKIP_PTD = common dso_local global i32 0, align 4
@SOTG_INT_PTD_SKIP_PTD = common dso_local global i32 0, align 4
@SOTG_ISO_PTD_SKIP_PTD = common dso_local global i32 0, align 4
@SOTG_HCBUFFERSTATUS = common dso_local global i32 0, align 4
@SOTG_HCBUFFERSTATUS_ISO_BUF_FILL = common dso_local global i32 0, align 4
@SOTG_HCBUFFERSTATUS_INT_BUF_FILL = common dso_local global i32 0, align 4
@SOTG_HCBUFFERSTATUS_ATL_BUF_FILL = common dso_local global i32 0, align 4
@SOTG_ISO_IRQ_MASK_AND = common dso_local global i32 0, align 4
@SOTG_INT_IRQ_MASK_AND = common dso_local global i32 0, align 4
@SOTG_ATL_IRQ_MASK_AND = common dso_local global i32 0, align 4
@SOTG_ISO_IRQ_MASK_OR = common dso_local global i32 0, align 4
@SOTG_INT_IRQ_MASK_OR = common dso_local global i32 0, align 4
@SOTG_ATL_IRQ_MASK_OR = common dso_local global i32 0, align 4
@SOTG_HCINTERRUPT_ENABLE = common dso_local global i32 0, align 4
@SOTG_HCINTERRUPT_OTG_IRQ = common dso_local global i32 0, align 4
@SOTG_HCINTERRUPT_ISO_IRQ = common dso_local global i32 0, align 4
@SOTG_HCINTERRUPT_ALT_IRQ = common dso_local global i32 0, align 4
@SOTG_HCINTERRUPT_INT_IRQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @saf1761_otg_init(%struct.saf1761_otg_softc* %0) #0 {
  %2 = alloca %struct.saf1761_otg_softc*, align 8
  %3 = alloca %struct.usb_hw_ep_profile*, align 8
  %4 = alloca i32, align 4
  store %struct.saf1761_otg_softc* %0, %struct.saf1761_otg_softc** %2, align 8
  %5 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @USB_REV_2_0, align 4
  %7 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %8 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  store i32 %6, i32* %9, align 8
  %10 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %11 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  store i32* @saf1761_otg_bus_methods, i32** %12, align 8
  %13 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %14 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %13, i32 0, i32 3
  %15 = call i32 @USB_BUS_LOCK(%struct.TYPE_4__* %14)
  %16 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %17 = load i32, i32* @SOTG_SW_RESET, align 4
  %18 = load i32, i32* @SOTG_SW_RESET_ALL, align 4
  %19 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %16, i32 %17, i32 %18)
  %20 = call i32 @DELAY(i32 1000)
  %21 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %22 = load i32, i32* @SOTG_SW_RESET, align 4
  %23 = load i32, i32* @SOTG_SW_RESET_HC, align 4
  %24 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %21, i32 %22, i32 %23)
  %25 = call i32 @DELAY(i32 1000)
  %26 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %27 = load i32, i32* @SOTG_SW_RESET, align 4
  %28 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %26, i32 %27, i32 0)
  %29 = call i32 @DELAY(i32 1000)
  %30 = load i32, i32* @SOTG_HW_MODE_CTRL_GLOBAL_INTR_EN, align 4
  %31 = load i32, i32* @SOTG_HW_MODE_CTRL_COMN_INT, align 4
  %32 = or i32 %30, %31
  %33 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %34 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 8
  %37 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %38 = load i32, i32* @SOTG_UNLOCK_DEVICE, align 4
  %39 = load i32, i32* @SOTG_UNLOCK_DEVICE_CODE, align 4
  %40 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %37, i32 %38, i32 %39)
  %41 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %42 = load i32, i32* @SOTG_HW_MODE_CTRL, align 4
  %43 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %44 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %41, i32 %42, i32 %45)
  %47 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %48 = load i32, i32* @SOTG_HW_MODE_CTRL, align 4
  %49 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %50 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %47, i32 %48, i32 %51)
  %53 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %54 = load i32, i32* @SOTG_DCSCRATCH, align 4
  %55 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %53, i32 %54, i32 -559038737)
  %56 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %57 = load i32, i32* @SOTG_HCSCRATCH, align 4
  %58 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %56, i32 %57, i32 -559038737)
  %59 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %60 = load i32, i32* @SOTG_DCCHIP_ID, align 4
  %61 = call i32 @SAF1761_READ_LE_4(%struct.saf1761_otg_softc* %59, i32 %60)
  %62 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %63 = load i32, i32* @SOTG_VEND_PROD_ID, align 4
  %64 = call i32 @SAF1761_READ_LE_4(%struct.saf1761_otg_softc* %62, i32 %63)
  %65 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %66 = load i32, i32* @SOTG_HW_MODE_CTRL, align 4
  %67 = call i32 @SAF1761_READ_LE_4(%struct.saf1761_otg_softc* %65, i32 %66)
  %68 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %69 = load i32, i32* @SOTG_DCSCRATCH, align 4
  %70 = call i32 @SAF1761_READ_LE_4(%struct.saf1761_otg_softc* %68, i32 %69)
  %71 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %72 = load i32, i32* @SOTG_HCSCRATCH, align 4
  %73 = call i32 @SAF1761_READ_LE_4(%struct.saf1761_otg_softc* %71, i32 %72)
  %74 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %61, i32 %64, i32 %67, i32 %70, i32 %73)
  %75 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %76 = load i32, i32* @SOTG_MODE, align 4
  %77 = load i32, i32* @SOTG_MODE_SFRESET, align 4
  %78 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %75, i32 %76, i32 %77)
  %79 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %80 = load i32, i32* @SOTG_MODE, align 4
  %81 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %79, i32 %80, i32 0)
  %82 = call i32 @DELAY(i32 1000)
  %83 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %84 = load i32, i32* @SOTG_USBCMD, align 4
  %85 = load i32, i32* @SOTG_USBCMD_HCRESET, align 4
  %86 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %83, i32 %84, i32 %85)
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %105, %1
  %88 = load i32, i32* %4, align 4
  %89 = icmp ne i32 %88, 10
  br i1 %89, label %90, label %108

90:                                               ; preds = %87
  %91 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %92 = load i32, i32* @SOTG_USBCMD, align 4
  %93 = call i32 @SAF1761_READ_LE_4(%struct.saf1761_otg_softc* %91, i32 %92)
  %94 = load i32, i32* @SOTG_USBCMD_HCRESET, align 4
  %95 = and i32 %93, %94
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %90
  br label %108

98:                                               ; preds = %90
  %99 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %100 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32, i32* @hz, align 4
  %103 = sdiv i32 %102, 10
  %104 = call i32 @usb_pause_mtx(i32* %101, i32 %103)
  br label %105

105:                                              ; preds = %98
  %106 = load i32, i32* %4, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %4, align 4
  br label %87

108:                                              ; preds = %97, %87
  %109 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %110 = load i32, i32* @SOTG_HW_MODE_CTRL, align 4
  %111 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %112 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @SOTG_HW_MODE_CTRL_ALL_ATX_RESET, align 4
  %115 = or i32 %113, %114
  %116 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %109, i32 %110, i32 %115)
  %117 = call i32 @DELAY(i32 1000)
  %118 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %119 = load i32, i32* @SOTG_HW_MODE_CTRL, align 4
  %120 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %121 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %118, i32 %119, i32 %122)
  %124 = call i32 @DELAY(i32 1000)
  %125 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %126 = call i32 @saf1761_otg_pull_down(%struct.saf1761_otg_softc* %125)
  %127 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %128 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i32, i32* @hz, align 4
  %131 = sdiv i32 %130, 100
  %132 = call i32 @usb_pause_mtx(i32* %129, i32 %131)
  store i32 1, i32* %4, align 4
  br label %133

133:                                              ; preds = %168, %108
  %134 = load i32, i32* %4, align 4
  %135 = call i32 @saf1761_otg_get_hw_ep_profile(i32* null, %struct.usb_hw_ep_profile** %3, i32 %134)
  %136 = load %struct.usb_hw_ep_profile*, %struct.usb_hw_ep_profile** %3, align 8
  %137 = icmp eq %struct.usb_hw_ep_profile* %136, null
  br i1 %137, label %138, label %139

138:                                              ; preds = %133
  br label %171

139:                                              ; preds = %133
  %140 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %141 = load i32, i32* @SOTG_EP_INDEX, align 4
  %142 = load i32, i32* %4, align 4
  %143 = load i32, i32* @SOTG_EP_INDEX_ENDP_INDEX_SHIFT, align 4
  %144 = shl i32 %142, %143
  %145 = load i32, i32* @SOTG_EP_INDEX_DIR_IN, align 4
  %146 = or i32 %144, %145
  %147 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %140, i32 %141, i32 %146)
  %148 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %149 = load i32, i32* @SOTG_EP_MAXPACKET, align 4
  %150 = load %struct.usb_hw_ep_profile*, %struct.usb_hw_ep_profile** %3, align 8
  %151 = getelementptr inbounds %struct.usb_hw_ep_profile, %struct.usb_hw_ep_profile* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %148, i32 %149, i32 %152)
  %154 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %155 = load i32, i32* @SOTG_EP_INDEX, align 4
  %156 = load i32, i32* %4, align 4
  %157 = load i32, i32* @SOTG_EP_INDEX_ENDP_INDEX_SHIFT, align 4
  %158 = shl i32 %156, %157
  %159 = load i32, i32* @SOTG_EP_INDEX_DIR_OUT, align 4
  %160 = or i32 %158, %159
  %161 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %154, i32 %155, i32 %160)
  %162 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %163 = load i32, i32* @SOTG_EP_MAXPACKET, align 4
  %164 = load %struct.usb_hw_ep_profile*, %struct.usb_hw_ep_profile** %3, align 8
  %165 = getelementptr inbounds %struct.usb_hw_ep_profile, %struct.usb_hw_ep_profile* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %162, i32 %163, i32 %166)
  br label %168

168:                                              ; preds = %139
  %169 = load i32, i32* %4, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %4, align 4
  br label %133

171:                                              ; preds = %138
  %172 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %173 = load i32, i32* @SOTG_MODE, align 4
  %174 = load i32, i32* @SOTG_MODE_GLINTENA, align 4
  %175 = load i32, i32* @SOTG_MODE_CLKAON, align 4
  %176 = or i32 %174, %175
  %177 = load i32, i32* @SOTG_MODE_WKUPCS, align 4
  %178 = or i32 %176, %177
  %179 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %172, i32 %173, i32 %178)
  %180 = load i32, i32* @SOTG_INTERRUPT_CFG_CDBGMOD, align 4
  %181 = load i32, i32* @SOTG_INTERRUPT_CFG_DDBGMODIN, align 4
  %182 = or i32 %180, %181
  %183 = load i32, i32* @SOTG_INTERRUPT_CFG_DDBGMODOUT, align 4
  %184 = or i32 %182, %183
  %185 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %186 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = or i32 %187, %184
  store i32 %188, i32* %186, align 4
  %189 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %190 = load i32, i32* @SOTG_INTERRUPT_CFG, align 4
  %191 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %192 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %189, i32 %190, i32 %193)
  %195 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %196 = load i32, i32* @SOTG_IRQ_ENABLE_SET_CLR, align 4
  %197 = call i32 @SOTG_IRQ_ENABLE_CLR(i32 65535)
  %198 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %195, i32 %196, i32 %197)
  %199 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %200 = load i32, i32* @SOTG_IRQ_ENABLE_SET_CLR, align 4
  %201 = load i32, i32* @SOTG_IRQ_ID, align 4
  %202 = load i32, i32* @SOTG_IRQ_VBUS_VLD, align 4
  %203 = or i32 %201, %202
  %204 = call i32 @SOTG_IRQ_ENABLE_SET(i32 %203)
  %205 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %199, i32 %200, i32 %204)
  %206 = load i32, i32* @SOTG_DCINTERRUPT_IEVBUS, align 4
  %207 = load i32, i32* @SOTG_DCINTERRUPT_IEBRST, align 4
  %208 = or i32 %206, %207
  %209 = load i32, i32* @SOTG_DCINTERRUPT_IESUSP, align 4
  %210 = or i32 %208, %209
  %211 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %212 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %211, i32 0, i32 2
  store i32 %210, i32* %212, align 8
  %213 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %214 = load i32, i32* @SOTG_DCINTERRUPT_EN, align 4
  %215 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %216 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %213, i32 %214, i32 %217)
  %219 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %220 = load i32, i32* @SOTG_CTRL_SET_CLR, align 4
  %221 = call i32 @SOTG_CTRL_CLR(i32 65535)
  %222 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %219, i32 %220, i32 %221)
  %223 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %224 = load i32, i32* @SOTG_CTRL_SET_CLR, align 4
  %225 = load i32, i32* @SOTG_CTRL_SW_SEL_HC_DC, align 4
  %226 = load i32, i32* @SOTG_CTRL_BDIS_ACON_EN, align 4
  %227 = or i32 %225, %226
  %228 = load i32, i32* @SOTG_CTRL_SEL_CP_EXT, align 4
  %229 = or i32 %227, %228
  %230 = load i32, i32* @SOTG_CTRL_VBUS_DRV, align 4
  %231 = or i32 %229, %230
  %232 = call i32 @SOTG_CTRL_SET(i32 %231)
  %233 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %223, i32 %224, i32 %232)
  %234 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %235 = load i32, i32* @SOTG_ADDRESS, align 4
  %236 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %234, i32 %235, i32 0)
  %237 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %238 = load i32, i32* @SOTG_POWER_DOWN, align 4
  %239 = call i32 @SAF1761_READ_LE_4(%struct.saf1761_otg_softc* %237, i32 %238)
  store i32 %239, i32* %4, align 4
  %240 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %241 = load i32, i32* @SOTG_POWER_DOWN, align 4
  %242 = load i32, i32* %4, align 4
  %243 = load i32, i32* @SOTG_POWER_DOWN_HC_CLK_EN, align 4
  %244 = or i32 %242, %243
  %245 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %240, i32 %241, i32 %244)
  %246 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %247 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %246, i32 0, i32 3
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %247, i32 0, i32 0
  %249 = load i32, i32* @hz, align 4
  %250 = sdiv i32 %249, 100
  %251 = call i32 @usb_pause_mtx(i32* %248, i32 %250)
  %252 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %253 = load i32, i32* @SOTG_CONFIGFLAG, align 4
  %254 = load i32, i32* @SOTG_CONFIGFLAG_ENABLE, align 4
  %255 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %252, i32 %253, i32 %254)
  store i32 1024, i32* %4, align 4
  br label %256

256:                                              ; preds = %263, %171
  %257 = load i32, i32* %4, align 4
  %258 = icmp ne i32 %257, 65536
  br i1 %258, label %259, label %266

259:                                              ; preds = %256
  %260 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %261 = load i32, i32* %4, align 4
  %262 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %260, i32 %261, i32 0)
  br label %263

263:                                              ; preds = %259
  %264 = load i32, i32* %4, align 4
  %265 = add nsw i32 %264, 4
  store i32 %265, i32* %4, align 4
  br label %256

266:                                              ; preds = %256
  %267 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %268 = load i32, i32* @SOTG_USBCMD, align 4
  %269 = load i32, i32* @SOTG_USBCMD_RS, align 4
  %270 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %267, i32 %268, i32 %269)
  %271 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %272 = load i32, i32* @SOTG_USBCMD, align 4
  %273 = call i32 @SAF1761_READ_LE_4(%struct.saf1761_otg_softc* %271, i32 %272)
  %274 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %273)
  %275 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %276 = load i32, i32* @SOTG_ATL_PTD_LAST_PTD, align 4
  %277 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %275, i32 %276, i32 -2147483648)
  %278 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %279 = load i32, i32* @SOTG_INT_PTD_LAST_PTD, align 4
  %280 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %278, i32 %279, i32 -2147483648)
  %281 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %282 = load i32, i32* @SOTG_ISO_PTD_LAST_PTD, align 4
  %283 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %281, i32 %282, i32 -2147483648)
  %284 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %285 = load i32, i32* @SOTG_ATL_PTD_SKIP_PTD, align 4
  %286 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %284, i32 %285, i32 -1)
  %287 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %288 = load i32, i32* @SOTG_INT_PTD_SKIP_PTD, align 4
  %289 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %287, i32 %288, i32 -1)
  %290 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %291 = load i32, i32* @SOTG_ISO_PTD_SKIP_PTD, align 4
  %292 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %290, i32 %291, i32 -1)
  %293 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %294 = load i32, i32* @SOTG_HCBUFFERSTATUS, align 4
  %295 = load i32, i32* @SOTG_HCBUFFERSTATUS_ISO_BUF_FILL, align 4
  %296 = load i32, i32* @SOTG_HCBUFFERSTATUS_INT_BUF_FILL, align 4
  %297 = or i32 %295, %296
  %298 = load i32, i32* @SOTG_HCBUFFERSTATUS_ATL_BUF_FILL, align 4
  %299 = or i32 %297, %298
  %300 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %293, i32 %294, i32 %299)
  %301 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %302 = load i32, i32* @SOTG_ISO_IRQ_MASK_AND, align 4
  %303 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %301, i32 %302, i32 0)
  %304 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %305 = load i32, i32* @SOTG_INT_IRQ_MASK_AND, align 4
  %306 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %304, i32 %305, i32 0)
  %307 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %308 = load i32, i32* @SOTG_ATL_IRQ_MASK_AND, align 4
  %309 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %307, i32 %308, i32 0)
  %310 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %311 = load i32, i32* @SOTG_ISO_IRQ_MASK_OR, align 4
  %312 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %310, i32 %311, i32 -1)
  %313 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %314 = load i32, i32* @SOTG_INT_IRQ_MASK_OR, align 4
  %315 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %313, i32 %314, i32 -1)
  %316 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %317 = load i32, i32* @SOTG_ATL_IRQ_MASK_OR, align 4
  %318 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %316, i32 %317, i32 -1)
  %319 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %320 = load i32, i32* @SOTG_HCINTERRUPT_ENABLE, align 4
  %321 = load i32, i32* @SOTG_HCINTERRUPT_OTG_IRQ, align 4
  %322 = load i32, i32* @SOTG_HCINTERRUPT_ISO_IRQ, align 4
  %323 = or i32 %321, %322
  %324 = load i32, i32* @SOTG_HCINTERRUPT_ALT_IRQ, align 4
  %325 = or i32 %323, %324
  %326 = load i32, i32* @SOTG_HCINTERRUPT_INT_IRQ, align 4
  %327 = or i32 %325, %326
  %328 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %319, i32 %320, i32 %327)
  %329 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %330 = call i32 @saf1761_otg_update_vbus(%struct.saf1761_otg_softc* %329)
  %331 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %332 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %331, i32 0, i32 3
  %333 = call i32 @USB_BUS_UNLOCK(%struct.TYPE_4__* %332)
  %334 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %2, align 8
  %335 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %334, i32 0, i32 3
  %336 = call i32 @saf1761_otg_do_poll(%struct.TYPE_4__* %335)
  ret i32 0
}

declare dso_local i32 @DPRINTF(i8*, ...) #1

declare dso_local i32 @USB_BUS_LOCK(%struct.TYPE_4__*) #1

declare dso_local i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @SAF1761_READ_LE_4(%struct.saf1761_otg_softc*, i32) #1

declare dso_local i32 @usb_pause_mtx(i32*, i32) #1

declare dso_local i32 @saf1761_otg_pull_down(%struct.saf1761_otg_softc*) #1

declare dso_local i32 @saf1761_otg_get_hw_ep_profile(i32*, %struct.usb_hw_ep_profile**, i32) #1

declare dso_local i32 @SOTG_IRQ_ENABLE_CLR(i32) #1

declare dso_local i32 @SOTG_IRQ_ENABLE_SET(i32) #1

declare dso_local i32 @SOTG_CTRL_CLR(i32) #1

declare dso_local i32 @SOTG_CTRL_SET(i32) #1

declare dso_local i32 @saf1761_otg_update_vbus(%struct.saf1761_otg_softc*) #1

declare dso_local i32 @USB_BUS_UNLOCK(%struct.TYPE_4__*) #1

declare dso_local i32 @saf1761_otg_do_poll(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
