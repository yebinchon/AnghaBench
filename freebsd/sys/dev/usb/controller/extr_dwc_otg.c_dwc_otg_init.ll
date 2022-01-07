; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc_otg.c_dwc_otg_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc_otg.c_dwc_otg_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc_otg_softc = type { i32, i32, i32, i32, i64, i64, i64, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"start\0A\00", align 1
@USB_REV_2_0 = common dso_local global i32 0, align 4
@dwc_otg_bus_methods = common dso_local global i32 0, align 4
@DOTG_GSNPSID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Version = 0x%08x\0A\00", align 1
@DOTG_DCTL = common dso_local global i32 0, align 4
@DCTL_SFTDISCON = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@DOTG_GRSTCTL = common dso_local global i32 0, align 4
@GRSTCTL_CSFTRST = common dso_local global i32 0, align 4
@GUSBCFG_FORCEDEVMODE = common dso_local global i32 0, align 4
@GUSBCFG_FORCEHOSTMODE = common dso_local global i32 0, align 4
@dwc_otg_phy_type = common dso_local global i32 0, align 4
@DOTG_GUSBCFG = common dso_local global i32 0, align 4
@GUSBCFG_PHYIF = common dso_local global i32 0, align 4
@DOTG_GOTGCTL = common dso_local global i32 0, align 4
@DOTG_GLPMCFG = common dso_local global i32 0, align 4
@GLPMCFG_HSIC_CONN = common dso_local global i32 0, align 4
@GUSBCFG_ULPI_UTMI_SEL = common dso_local global i32 0, align 4
@GUSBCFG_PHYSEL = common dso_local global i32 0, align 4
@DOTG_GGPIO = common dso_local global i32 0, align 4
@DOTG_GGPIO_NOVBUSSENS = common dso_local global i32 0, align 4
@DOTG_GGPIO_I2CPADEN = common dso_local global i32 0, align 4
@DOTG_GGPIO_VBUSASEN = common dso_local global i32 0, align 4
@DOTG_GGPIO_VBUSBSEN = common dso_local global i32 0, align 4
@DOTG_GGPIO_PWRDWN = common dso_local global i32 0, align 4
@DCTL_CGOUTNAK = common dso_local global i32 0, align 4
@DCTL_CGNPINNAK = common dso_local global i32 0, align 4
@DOTG_PCGCCTL = common dso_local global i32 0, align 4
@DOTG_GHWCFG3 = common dso_local global i32 0, align 4
@DOTG_GHWCFG2 = common dso_local global i32 0, align 4
@DWC_OTG_MAX_ENDPOINTS = common dso_local global i64 0, align 8
@DWC_OTG_MAX_CHANNELS = common dso_local global i64 0, align 8
@DOTG_GHWCFG4 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [62 x i8] c"Total FIFO size = %d bytes, Device EPs = %d/%d Host CHs = %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DWC_OTG_MSK_GINT_THREAD_IRQ = common dso_local global i32 0, align 4
@DOTG_GINTMSK = common dso_local global i32 0, align 4
@DWC_MODE_OTG = common dso_local global i32 0, align 4
@GHWCFG2_MPI = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Disable Multi Process Interrupts\0A\00", align 1
@DOTG_DEACHINTMSK = common dso_local global i32 0, align 4
@DOTG_DIEPMSK = common dso_local global i32 0, align 4
@DIEPMSK_XFERCOMPLMSK = common dso_local global i32 0, align 4
@DOTG_DOEPMSK = common dso_local global i32 0, align 4
@DOTG_DAINTMSK = common dso_local global i32 0, align 4
@DOTG_HCFG = common dso_local global i32 0, align 4
@HCFG_FSLSSUPP = common dso_local global i32 0, align 4
@HCFG_FSLSPCLKSEL_MASK = common dso_local global i32 0, align 4
@HCFG_FSLSPCLKSEL_SHIFT = common dso_local global i32 0, align 4
@DOTG_GAHBCFG = common dso_local global i32 0, align 4
@GAHBCFG_GLBLINTRMSK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"GOTCTL=0x%08x\0A\00", align 1
@GOTGCTL_ASESVLD = common dso_local global i32 0, align 4
@GOTGCTL_BSESVLD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dwc_otg_init(%struct.dwc_otg_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dwc_otg_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.dwc_otg_softc* %0, %struct.dwc_otg_softc** %3, align 8
  %6 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @USB_REV_2_0, align 4
  %8 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %9 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %8, i32 0, i32 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  store i32 %7, i32* %10, align 8
  %11 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %12 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %11, i32 0, i32 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  store i32* @dwc_otg_bus_methods, i32** %13, align 8
  %14 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %15 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %14, i32 0, i32 9
  %16 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %17 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %16, i32 0, i32 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = call i32 @usb_callout_init_mtx(i32* %15, i32* %18, i32 0)
  %20 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %21 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %20, i32 0, i32 8
  %22 = call i32 @USB_BUS_LOCK(%struct.TYPE_4__* %21)
  %23 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %24 = call i32 @dwc_otg_clocks_on(%struct.dwc_otg_softc* %23)
  %25 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %26 = load i32, i32* @DOTG_GSNPSID, align 4
  %27 = call i32 @DWC_OTG_READ_4(%struct.dwc_otg_softc* %25, i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %31 = load i32, i32* @DOTG_DCTL, align 4
  %32 = load i32, i32* @DCTL_SFTDISCON, align 4
  %33 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %30, i32 %31, i32 %32)
  %34 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %35 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %34, i32 0, i32 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* @hz, align 4
  %38 = sdiv i32 %37, 32
  %39 = call i32 @usb_pause_mtx(i32* %36, i32 %38)
  %40 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %41 = load i32, i32* @DOTG_GRSTCTL, align 4
  %42 = load i32, i32* @GRSTCTL_CSFTRST, align 4
  %43 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %40, i32 %41, i32 %42)
  %44 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %45 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %44, i32 0, i32 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* @hz, align 4
  %48 = sdiv i32 %47, 128
  %49 = call i32 @usb_pause_mtx(i32* %46, i32 %48)
  %50 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %51 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  switch i32 %52, label %57 [
    i32 133, label %53
    i32 132, label %55
  ]

53:                                               ; preds = %1
  %54 = load i32, i32* @GUSBCFG_FORCEDEVMODE, align 4
  store i32 %54, i32* %4, align 4
  br label %58

55:                                               ; preds = %1
  %56 = load i32, i32* @GUSBCFG_FORCEHOSTMODE, align 4
  store i32 %56, i32* %4, align 4
  br label %58

57:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %57, %55, %53
  %59 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %60 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load i32, i32* @dwc_otg_phy_type, align 4
  %65 = add nsw i32 %64, 1
  %66 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %67 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  br label %68

68:                                               ; preds = %63, %58
  %69 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %70 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %75 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %74, i32 0, i32 2
  store i32 16, i32* %75, align 8
  br label %76

76:                                               ; preds = %73, %68
  %77 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %78 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  switch i32 %79, label %202 [
    i32 131, label %80
    i32 129, label %108
    i32 128, label %130
    i32 130, label %160
  ]

80:                                               ; preds = %76
  %81 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %82 = load i32, i32* @DOTG_GUSBCFG, align 4
  %83 = load i32, i32* @GUSBCFG_PHYIF, align 4
  %84 = call i32 @GUSBCFG_TRD_TIM_SET(i32 5)
  %85 = or i32 %83, %84
  %86 = load i32, i32* %4, align 4
  %87 = or i32 %85, %86
  %88 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %81, i32 %82, i32 %87)
  %89 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %90 = load i32, i32* @DOTG_GOTGCTL, align 4
  %91 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %89, i32 %90, i32 236)
  %92 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %93 = load i32, i32* @DOTG_GLPMCFG, align 4
  %94 = call i32 @DWC_OTG_READ_4(%struct.dwc_otg_softc* %92, i32 %93)
  store i32 %94, i32* %4, align 4
  %95 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %96 = load i32, i32* @DOTG_GLPMCFG, align 4
  %97 = load i32, i32* %4, align 4
  %98 = load i32, i32* @GLPMCFG_HSIC_CONN, align 4
  %99 = xor i32 %98, -1
  %100 = and i32 %97, %99
  %101 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %95, i32 %96, i32 %100)
  %102 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %103 = load i32, i32* @DOTG_GLPMCFG, align 4
  %104 = load i32, i32* %4, align 4
  %105 = load i32, i32* @GLPMCFG_HSIC_CONN, align 4
  %106 = or i32 %104, %105
  %107 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %102, i32 %103, i32 %106)
  br label %203

108:                                              ; preds = %76
  %109 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %110 = load i32, i32* @DOTG_GUSBCFG, align 4
  %111 = load i32, i32* @GUSBCFG_ULPI_UTMI_SEL, align 4
  %112 = call i32 @GUSBCFG_TRD_TIM_SET(i32 5)
  %113 = or i32 %111, %112
  %114 = load i32, i32* %4, align 4
  %115 = or i32 %113, %114
  %116 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %109, i32 %110, i32 %115)
  %117 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %118 = load i32, i32* @DOTG_GOTGCTL, align 4
  %119 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %117, i32 %118, i32 0)
  %120 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %121 = load i32, i32* @DOTG_GLPMCFG, align 4
  %122 = call i32 @DWC_OTG_READ_4(%struct.dwc_otg_softc* %120, i32 %121)
  store i32 %122, i32* %4, align 4
  %123 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %124 = load i32, i32* @DOTG_GLPMCFG, align 4
  %125 = load i32, i32* %4, align 4
  %126 = load i32, i32* @GLPMCFG_HSIC_CONN, align 4
  %127 = xor i32 %126, -1
  %128 = and i32 %125, %127
  %129 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %123, i32 %124, i32 %128)
  br label %203

130:                                              ; preds = %76
  %131 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %132 = load i32, i32* @DOTG_GUSBCFG, align 4
  %133 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %134 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = icmp eq i32 %135, 16
  br i1 %136, label %137, label %139

137:                                              ; preds = %130
  %138 = load i32, i32* @GUSBCFG_PHYIF, align 4
  br label %140

139:                                              ; preds = %130
  br label %140

140:                                              ; preds = %139, %137
  %141 = phi i32 [ %138, %137 ], [ 0, %139 ]
  %142 = call i32 @GUSBCFG_TRD_TIM_SET(i32 5)
  %143 = or i32 %141, %142
  %144 = load i32, i32* %4, align 4
  %145 = or i32 %143, %144
  %146 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %131, i32 %132, i32 %145)
  %147 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %148 = load i32, i32* @DOTG_GOTGCTL, align 4
  %149 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %147, i32 %148, i32 0)
  %150 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %151 = load i32, i32* @DOTG_GLPMCFG, align 4
  %152 = call i32 @DWC_OTG_READ_4(%struct.dwc_otg_softc* %150, i32 %151)
  store i32 %152, i32* %4, align 4
  %153 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %154 = load i32, i32* @DOTG_GLPMCFG, align 4
  %155 = load i32, i32* %4, align 4
  %156 = load i32, i32* @GLPMCFG_HSIC_CONN, align 4
  %157 = xor i32 %156, -1
  %158 = and i32 %155, %157
  %159 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %153, i32 %154, i32 %158)
  br label %203

160:                                              ; preds = %76
  %161 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %162 = load i32, i32* @DOTG_GUSBCFG, align 4
  %163 = load i32, i32* @GUSBCFG_PHYSEL, align 4
  %164 = call i32 @GUSBCFG_TRD_TIM_SET(i32 5)
  %165 = or i32 %163, %164
  %166 = load i32, i32* %4, align 4
  %167 = or i32 %165, %166
  %168 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %161, i32 %162, i32 %167)
  %169 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %170 = load i32, i32* @DOTG_GOTGCTL, align 4
  %171 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %169, i32 %170, i32 0)
  %172 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %173 = load i32, i32* @DOTG_GLPMCFG, align 4
  %174 = call i32 @DWC_OTG_READ_4(%struct.dwc_otg_softc* %172, i32 %173)
  store i32 %174, i32* %4, align 4
  %175 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %176 = load i32, i32* @DOTG_GLPMCFG, align 4
  %177 = load i32, i32* %4, align 4
  %178 = load i32, i32* @GLPMCFG_HSIC_CONN, align 4
  %179 = xor i32 %178, -1
  %180 = and i32 %177, %179
  %181 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %175, i32 %176, i32 %180)
  %182 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %183 = load i32, i32* @DOTG_GGPIO, align 4
  %184 = call i32 @DWC_OTG_READ_4(%struct.dwc_otg_softc* %182, i32 %183)
  store i32 %184, i32* %4, align 4
  %185 = load i32, i32* @DOTG_GGPIO_NOVBUSSENS, align 4
  %186 = load i32, i32* @DOTG_GGPIO_I2CPADEN, align 4
  %187 = or i32 %185, %186
  %188 = xor i32 %187, -1
  %189 = load i32, i32* %4, align 4
  %190 = and i32 %189, %188
  store i32 %190, i32* %4, align 4
  %191 = load i32, i32* @DOTG_GGPIO_VBUSASEN, align 4
  %192 = load i32, i32* @DOTG_GGPIO_VBUSBSEN, align 4
  %193 = or i32 %191, %192
  %194 = load i32, i32* @DOTG_GGPIO_PWRDWN, align 4
  %195 = or i32 %193, %194
  %196 = load i32, i32* %4, align 4
  %197 = or i32 %196, %195
  store i32 %197, i32* %4, align 4
  %198 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %199 = load i32, i32* @DOTG_GGPIO, align 4
  %200 = load i32, i32* %4, align 4
  %201 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %198, i32 %199, i32 %200)
  br label %203

202:                                              ; preds = %76
  br label %203

203:                                              ; preds = %202, %160, %140, %108, %80
  %204 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %205 = load i32, i32* @DOTG_DCTL, align 4
  %206 = load i32, i32* @DCTL_CGOUTNAK, align 4
  %207 = load i32, i32* @DCTL_CGNPINNAK, align 4
  %208 = or i32 %206, %207
  %209 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %204, i32 %205, i32 %208)
  %210 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %211 = load i32, i32* @DOTG_PCGCCTL, align 4
  %212 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %210, i32 %211, i32 -1)
  %213 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %214 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %213, i32 0, i32 8
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 0
  %216 = load i32, i32* @hz, align 4
  %217 = sdiv i32 %216, 100
  %218 = call i32 @usb_pause_mtx(i32* %215, i32 %217)
  %219 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %220 = load i32, i32* @DOTG_PCGCCTL, align 4
  %221 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %219, i32 %220, i32 0)
  %222 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %223 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %222, i32 0, i32 8
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 0
  %225 = load i32, i32* @hz, align 4
  %226 = sdiv i32 %225, 100
  %227 = call i32 @usb_pause_mtx(i32* %224, i32 %226)
  %228 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %229 = load i32, i32* @DOTG_GHWCFG3, align 4
  %230 = call i32 @DWC_OTG_READ_4(%struct.dwc_otg_softc* %228, i32 %229)
  store i32 %230, i32* %4, align 4
  %231 = load i32, i32* %4, align 4
  %232 = call i32 @GHWCFG3_DFIFODEPTH_GET(i32 %231)
  %233 = mul nsw i32 4, %232
  %234 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %235 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %234, i32 0, i32 3
  store i32 %233, i32* %235, align 4
  %236 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %237 = load i32, i32* @DOTG_GHWCFG2, align 4
  %238 = call i32 @DWC_OTG_READ_4(%struct.dwc_otg_softc* %236, i32 %237)
  store i32 %238, i32* %4, align 4
  %239 = load i32, i32* %4, align 4
  %240 = call i64 @GHWCFG2_NUMDEVEPS_GET(i32 %239)
  %241 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %242 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %241, i32 0, i32 4
  store i64 %240, i64* %242, align 8
  %243 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %244 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %243, i32 0, i32 4
  %245 = load i64, i64* %244, align 8
  %246 = load i64, i64* @DWC_OTG_MAX_ENDPOINTS, align 8
  %247 = icmp sgt i64 %245, %246
  br i1 %247, label %248, label %252

248:                                              ; preds = %203
  %249 = load i64, i64* @DWC_OTG_MAX_ENDPOINTS, align 8
  %250 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %251 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %250, i32 0, i32 4
  store i64 %249, i64* %251, align 8
  br label %252

252:                                              ; preds = %248, %203
  %253 = load i32, i32* %4, align 4
  %254 = call i64 @GHWCFG2_NUMHSTCHNL_GET(i32 %253)
  %255 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %256 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %255, i32 0, i32 5
  store i64 %254, i64* %256, align 8
  %257 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %258 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %257, i32 0, i32 5
  %259 = load i64, i64* %258, align 8
  %260 = load i64, i64* @DWC_OTG_MAX_CHANNELS, align 8
  %261 = icmp sgt i64 %259, %260
  br i1 %261, label %262, label %266

262:                                              ; preds = %252
  %263 = load i64, i64* @DWC_OTG_MAX_CHANNELS, align 8
  %264 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %265 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %264, i32 0, i32 5
  store i64 %263, i64* %265, align 8
  br label %266

266:                                              ; preds = %262, %252
  %267 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %268 = load i32, i32* @DOTG_GHWCFG4, align 4
  %269 = call i32 @DWC_OTG_READ_4(%struct.dwc_otg_softc* %267, i32 %268)
  store i32 %269, i32* %4, align 4
  %270 = load i32, i32* %4, align 4
  %271 = call i64 @GHWCFG4_NUM_IN_EP_GET(i32 %270)
  %272 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %273 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %272, i32 0, i32 6
  store i64 %271, i64* %273, align 8
  %274 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %275 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %274, i32 0, i32 3
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %278 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %277, i32 0, i32 4
  %279 = load i64, i64* %278, align 8
  %280 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %281 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %280, i32 0, i32 6
  %282 = load i64, i64* %281, align 8
  %283 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %284 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %283, i32 0, i32 5
  %285 = load i64, i64* %284, align 8
  %286 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i32 %276, i64 %279, i64 %282, i64 %285)
  %287 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %288 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %289 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = call i64 @dwc_otg_init_fifo(%struct.dwc_otg_softc* %287, i32 %290)
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %298

293:                                              ; preds = %266
  %294 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %295 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %294, i32 0, i32 8
  %296 = call i32 @USB_BUS_UNLOCK(%struct.TYPE_4__* %295)
  %297 = load i32, i32* @EINVAL, align 4
  store i32 %297, i32* %2, align 4
  br label %420

298:                                              ; preds = %266
  %299 = load i32, i32* @DWC_OTG_MSK_GINT_THREAD_IRQ, align 4
  %300 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %301 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %300, i32 0, i32 7
  %302 = load i32, i32* %301, align 8
  %303 = or i32 %302, %299
  store i32 %303, i32* %301, align 8
  %304 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %305 = load i32, i32* @DOTG_GINTMSK, align 4
  %306 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %307 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %306, i32 0, i32 7
  %308 = load i32, i32* %307, align 8
  %309 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %304, i32 %305, i32 %308)
  %310 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %311 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = load i32, i32* @DWC_MODE_OTG, align 4
  %314 = icmp eq i32 %312, %313
  br i1 %314, label %320, label %315

315:                                              ; preds = %298
  %316 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %317 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = icmp eq i32 %318, 133
  br i1 %319, label %320, label %363

320:                                              ; preds = %315, %298
  %321 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %322 = load i32, i32* @DOTG_GHWCFG2, align 4
  %323 = call i32 @DWC_OTG_READ_4(%struct.dwc_otg_softc* %321, i32 %322)
  store i32 %323, i32* %4, align 4
  %324 = load i32, i32* %4, align 4
  %325 = load i32, i32* @GHWCFG2_MPI, align 4
  %326 = and i32 %324, %325
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %352

328:                                              ; preds = %320
  %329 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  store i64 0, i64* %5, align 8
  br label %330

330:                                              ; preds = %345, %328
  %331 = load i64, i64* %5, align 8
  %332 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %333 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %332, i32 0, i32 6
  %334 = load i64, i64* %333, align 8
  %335 = icmp ne i64 %331, %334
  br i1 %335, label %336, label %348

336:                                              ; preds = %330
  %337 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %338 = load i64, i64* %5, align 8
  %339 = call i32 @DOTG_DIEPEACHINTMSK(i64 %338)
  %340 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %337, i32 %339, i32 0)
  %341 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %342 = load i64, i64* %5, align 8
  %343 = call i32 @DOTG_DOEPEACHINTMSK(i64 %342)
  %344 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %341, i32 %343, i32 0)
  br label %345

345:                                              ; preds = %336
  %346 = load i64, i64* %5, align 8
  %347 = add nsw i64 %346, 1
  store i64 %347, i64* %5, align 8
  br label %330

348:                                              ; preds = %330
  %349 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %350 = load i32, i32* @DOTG_DEACHINTMSK, align 4
  %351 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %349, i32 %350, i32 0)
  br label %352

352:                                              ; preds = %348, %320
  %353 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %354 = load i32, i32* @DOTG_DIEPMSK, align 4
  %355 = load i32, i32* @DIEPMSK_XFERCOMPLMSK, align 4
  %356 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %353, i32 %354, i32 %355)
  %357 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %358 = load i32, i32* @DOTG_DOEPMSK, align 4
  %359 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %357, i32 %358, i32 0)
  %360 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %361 = load i32, i32* @DOTG_DAINTMSK, align 4
  %362 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %360, i32 %361, i32 65535)
  br label %363

363:                                              ; preds = %352, %315
  %364 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %365 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 8
  %367 = load i32, i32* @DWC_MODE_OTG, align 4
  %368 = icmp eq i32 %366, %367
  br i1 %368, label %374, label %369

369:                                              ; preds = %363
  %370 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %371 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %370, i32 0, i32 0
  %372 = load i32, i32* %371, align 8
  %373 = icmp eq i32 %372, 132
  br i1 %373, label %374, label %392

374:                                              ; preds = %369, %363
  %375 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %376 = load i32, i32* @DOTG_HCFG, align 4
  %377 = call i32 @DWC_OTG_READ_4(%struct.dwc_otg_softc* %375, i32 %376)
  store i32 %377, i32* %4, align 4
  %378 = load i32, i32* @HCFG_FSLSSUPP, align 4
  %379 = load i32, i32* @HCFG_FSLSPCLKSEL_MASK, align 4
  %380 = or i32 %378, %379
  %381 = xor i32 %380, -1
  %382 = load i32, i32* %4, align 4
  %383 = and i32 %382, %381
  store i32 %383, i32* %4, align 4
  %384 = load i32, i32* @HCFG_FSLSPCLKSEL_SHIFT, align 4
  %385 = shl i32 1, %384
  %386 = load i32, i32* %4, align 4
  %387 = or i32 %386, %385
  store i32 %387, i32* %4, align 4
  %388 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %389 = load i32, i32* @DOTG_HCFG, align 4
  %390 = load i32, i32* %4, align 4
  %391 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %388, i32 %389, i32 %390)
  br label %392

392:                                              ; preds = %374, %369
  %393 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %394 = load i32, i32* @DOTG_GAHBCFG, align 4
  %395 = load i32, i32* @GAHBCFG_GLBLINTRMSK, align 4
  %396 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %393, i32 %394, i32 %395)
  %397 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %398 = call i32 @dwc_otg_clocks_off(%struct.dwc_otg_softc* %397)
  %399 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %400 = load i32, i32* @DOTG_GOTGCTL, align 4
  %401 = call i32 @DWC_OTG_READ_4(%struct.dwc_otg_softc* %399, i32 %400)
  store i32 %401, i32* %4, align 4
  %402 = load i32, i32* %4, align 4
  %403 = call i32 @DPRINTFN(i32 5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %402)
  %404 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %405 = load i32, i32* %4, align 4
  %406 = load i32, i32* @GOTGCTL_ASESVLD, align 4
  %407 = load i32, i32* @GOTGCTL_BSESVLD, align 4
  %408 = or i32 %406, %407
  %409 = and i32 %405, %408
  %410 = icmp ne i32 %409, 0
  %411 = zext i1 %410 to i64
  %412 = select i1 %410, i32 1, i32 0
  %413 = call i32 @dwc_otg_vbus_interrupt(%struct.dwc_otg_softc* %404, i32 %412)
  %414 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %415 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %414, i32 0, i32 8
  %416 = call i32 @USB_BUS_UNLOCK(%struct.TYPE_4__* %415)
  %417 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %418 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %417, i32 0, i32 8
  %419 = call i32 @dwc_otg_do_poll(%struct.TYPE_4__* %418)
  store i32 0, i32* %2, align 4
  br label %420

420:                                              ; preds = %392, %293
  %421 = load i32, i32* %2, align 4
  ret i32 %421
}

declare dso_local i32 @DPRINTF(i8*, ...) #1

declare dso_local i32 @usb_callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32 @USB_BUS_LOCK(%struct.TYPE_4__*) #1

declare dso_local i32 @dwc_otg_clocks_on(%struct.dwc_otg_softc*) #1

declare dso_local i32 @DWC_OTG_READ_4(%struct.dwc_otg_softc*, i32) #1

declare dso_local i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc*, i32, i32) #1

declare dso_local i32 @usb_pause_mtx(i32*, i32) #1

declare dso_local i32 @GUSBCFG_TRD_TIM_SET(i32) #1

declare dso_local i32 @GHWCFG3_DFIFODEPTH_GET(i32) #1

declare dso_local i64 @GHWCFG2_NUMDEVEPS_GET(i32) #1

declare dso_local i64 @GHWCFG2_NUMHSTCHNL_GET(i32) #1

declare dso_local i64 @GHWCFG4_NUM_IN_EP_GET(i32) #1

declare dso_local i64 @dwc_otg_init_fifo(%struct.dwc_otg_softc*, i32) #1

declare dso_local i32 @USB_BUS_UNLOCK(%struct.TYPE_4__*) #1

declare dso_local i32 @DOTG_DIEPEACHINTMSK(i64) #1

declare dso_local i32 @DOTG_DOEPEACHINTMSK(i64) #1

declare dso_local i32 @dwc_otg_clocks_off(%struct.dwc_otg_softc*) #1

declare dso_local i32 @DPRINTFN(i32, i8*, i32) #1

declare dso_local i32 @dwc_otg_vbus_interrupt(%struct.dwc_otg_softc*, i32) #1

declare dso_local i32 @dwc_otg_do_poll(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
