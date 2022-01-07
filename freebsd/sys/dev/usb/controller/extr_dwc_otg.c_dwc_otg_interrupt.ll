; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc_otg.c_dwc_otg_interrupt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc_otg.c_dwc_otg_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc_otg_softc = type { i32, i32, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64 }

@DOTG_GINTSTS = common dso_local global i32 0, align 4
@DWC_OTG_MSK_GINT_THREAD_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"GINTSTS=0x%08x HAINT=0x%08x HFNUM=0x%08x\0A\00", align 1
@DOTG_HAINT = common dso_local global i32 0, align 4
@DOTG_HFNUM = common dso_local global i32 0, align 4
@GINTSTS_USBRST = common dso_local global i32 0, align 4
@GINTMSK_SOFMSK = common dso_local global i32 0, align 4
@DOTG_GINTMSK = common dso_local global i32 0, align 4
@GINTSTS_ENUMDONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"end of reset\0A\00", align 1
@DWC_MODE_DEVICE = common dso_local global i32 0, align 4
@DOTG_DSTS = common dso_local global i32 0, align 4
@DSTS_ENUMSPD_HI = common dso_local global i64 0, align 8
@GINTMSK_WKUPINTMSK = common dso_local global i32 0, align 4
@GINTMSK_USBSUSPMSK = common dso_local global i32 0, align 4
@GINTSTS_PRTINT = common dso_local global i32 0, align 4
@DOTG_HPRT = common dso_local global i32 0, align 4
@HPRT_PRTPWR = common dso_local global i32 0, align 4
@HPRT_PRTENCHNG = common dso_local global i32 0, align 4
@HPRT_PRTCONNDET = common dso_local global i32 0, align 4
@HPRT_PRTOVRCURRCHNG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"GINTSTS=0x%08x, HPRT=0x%08x\0A\00", align 1
@HPRT_PRTCONNSTS = common dso_local global i32 0, align 4
@HPRT_PRTENA = common dso_local global i32 0, align 4
@HPRT_PRTOVRCURRACT = common dso_local global i32 0, align 4
@HPRT_PRTSPD_MASK = common dso_local global i32 0, align 4
@HPRT_PRTSPD_SHIFT = common dso_local global i32 0, align 4
@HPRT_PRTSPD_LOW = common dso_local global i32 0, align 4
@HPRT_PRTSPD_HIGH = common dso_local global i32 0, align 4
@HPRT_PRTSUSP = common dso_local global i32 0, align 4
@GINTSTS_WKUPINT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"resume interrupt\0A\00", align 1
@GINTSTS_USBSUSP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"suspend interrupt\0A\00", align 1
@GINTMSK_OTGINTMSK = common dso_local global i32 0, align 4
@GINTSTS_SESSREQINT = common dso_local global i32 0, align 4
@DOTG_GOTGCTL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"GOTGCTL=0x%08x\0A\00", align 1
@GOTGCTL_ASESVLD = common dso_local global i32 0, align 4
@GOTGCTL_BSESVLD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dwc_otg_interrupt(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.dwc_otg_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.dwc_otg_softc*
  store %struct.dwc_otg_softc* %9, %struct.dwc_otg_softc** %3, align 8
  %10 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %11 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %10, i32 0, i32 3
  %12 = call i32 @USB_BUS_LOCK(i32* %11)
  %13 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %14 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %13, i32 0, i32 3
  %15 = call i32 @USB_BUS_SPIN_LOCK(i32* %14)
  %16 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %17 = load i32, i32* @DOTG_GINTSTS, align 4
  %18 = call i32 @DWC_OTG_READ_4(%struct.dwc_otg_softc* %16, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %20 = load i32, i32* @DOTG_GINTSTS, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @DWC_OTG_MSK_GINT_THREAD_IRQ, align 4
  %23 = and i32 %21, %22
  %24 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %19, i32 %20, i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %27 = load i32, i32* @DOTG_HAINT, align 4
  %28 = call i32 @DWC_OTG_READ_4(%struct.dwc_otg_softc* %26, i32 %27)
  %29 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %30 = load i32, i32* @DOTG_HFNUM, align 4
  %31 = call i32 @DWC_OTG_READ_4(%struct.dwc_otg_softc* %29, i32 %30)
  %32 = call i32 (i32, i8*, ...) @DPRINTFN(i32 14, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28, i32 %31)
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @GINTSTS_USBRST, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %67

37:                                               ; preds = %1
  %38 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %39 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  %41 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %42 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  store i32 0, i32* %43, align 4
  %44 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %45 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %44, i32 0, i32 4
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 11
  store i64 0, i64* %46, align 8
  %47 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %48 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 10
  store i64 0, i64* %49, align 8
  %50 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %51 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  store i32 1, i32* %52, align 8
  %53 = load i32, i32* @GINTMSK_SOFMSK, align 4
  %54 = xor i32 %53, -1
  %55 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %56 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = and i32 %57, %54
  store i32 %58, i32* %56, align 8
  %59 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %60 = load i32, i32* @DOTG_GINTMSK, align 4
  %61 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %62 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %59, i32 %60, i32 %63)
  %65 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %66 = call i32 @dwc_otg_root_intr(%struct.dwc_otg_softc* %65)
  br label %67

67:                                               ; preds = %37, %1
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @GINTSTS_ENUMDONE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %137

72:                                               ; preds = %67
  %73 = call i32 (i32, i8*, ...) @DPRINTFN(i32 5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %74 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %75 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  store i32 1, i32* %76, align 8
  %77 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %78 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %77, i32 0, i32 4
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  store i32 1, i32* %79, align 4
  %80 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %81 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 11
  store i64 0, i64* %82, align 8
  %83 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %84 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 10
  store i64 0, i64* %85, align 8
  %86 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %87 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %86, i32 0, i32 4
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 2
  store i32 1, i32* %88, align 8
  %89 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %90 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %89, i32 0, i32 4
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 3
  store i32 0, i32* %91, align 4
  %92 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %93 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %92, i32 0, i32 4
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 4
  store i32 1, i32* %94, align 8
  %95 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %96 = load i32, i32* @DWC_MODE_DEVICE, align 4
  %97 = call i32 @dwc_otg_init_fifo(%struct.dwc_otg_softc* %95, i32 %96)
  %98 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %99 = call i32 @dwc_otg_set_address(%struct.dwc_otg_softc* %98, i32 0)
  %100 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %101 = load i32, i32* @DOTG_DSTS, align 4
  %102 = call i32 @DWC_OTG_READ_4(%struct.dwc_otg_softc* %100, i32 %101)
  store i32 %102, i32* %5, align 4
  %103 = load i32, i32* %5, align 4
  %104 = call i64 @DSTS_ENUMSPD_GET(i32 %103)
  %105 = load i64, i64* @DSTS_ENUMSPD_HI, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %72
  %108 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %109 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %108, i32 0, i32 4
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 5
  store i32 1, i32* %110, align 4
  br label %115

111:                                              ; preds = %72
  %112 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %113 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %112, i32 0, i32 4
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 5
  store i32 0, i32* %114, align 4
  br label %115

115:                                              ; preds = %111, %107
  %116 = load i32, i32* @GINTMSK_WKUPINTMSK, align 4
  %117 = load i32, i32* @GINTMSK_SOFMSK, align 4
  %118 = or i32 %116, %117
  %119 = xor i32 %118, -1
  %120 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %121 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = and i32 %122, %119
  store i32 %123, i32* %121, align 8
  %124 = load i32, i32* @GINTMSK_USBSUSPMSK, align 4
  %125 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %126 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = or i32 %127, %124
  store i32 %128, i32* %126, align 8
  %129 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %130 = load i32, i32* @DOTG_GINTMSK, align 4
  %131 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %132 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %129, i32 %130, i32 %133)
  %135 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %136 = call i32 @dwc_otg_root_intr(%struct.dwc_otg_softc* %135)
  br label %137

137:                                              ; preds = %115, %67
  %138 = load i32, i32* %4, align 4
  %139 = load i32, i32* @GINTSTS_PRTINT, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %299

142:                                              ; preds = %137
  %143 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %144 = load i32, i32* @DOTG_HPRT, align 4
  %145 = call i32 @DWC_OTG_READ_4(%struct.dwc_otg_softc* %143, i32 %144)
  store i32 %145, i32* %6, align 4
  %146 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %147 = load i32, i32* @DOTG_HPRT, align 4
  %148 = load i32, i32* %6, align 4
  %149 = load i32, i32* @HPRT_PRTPWR, align 4
  %150 = load i32, i32* @HPRT_PRTENCHNG, align 4
  %151 = or i32 %149, %150
  %152 = load i32, i32* @HPRT_PRTCONNDET, align 4
  %153 = or i32 %151, %152
  %154 = load i32, i32* @HPRT_PRTOVRCURRCHNG, align 4
  %155 = or i32 %153, %154
  %156 = and i32 %148, %155
  %157 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %158 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = or i32 %156, %159
  %161 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %146, i32 %147, i32 %160)
  %162 = load i32, i32* %4, align 4
  %163 = load i32, i32* %6, align 4
  %164 = call i32 (i32, i8*, ...) @DPRINTFN(i32 12, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %162, i32 %163)
  %165 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %166 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %165, i32 0, i32 4
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 0
  store i32 0, i32* %167, align 8
  %168 = load i32, i32* %6, align 4
  %169 = load i32, i32* @HPRT_PRTCONNSTS, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %142
  %173 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %174 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %173, i32 0, i32 4
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 1
  store i32 1, i32* %175, align 4
  br label %180

176:                                              ; preds = %142
  %177 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %178 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %177, i32 0, i32 4
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 1
  store i32 0, i32* %179, align 4
  br label %180

180:                                              ; preds = %176, %172
  %181 = load i32, i32* %6, align 4
  %182 = load i32, i32* @HPRT_PRTENCHNG, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %194

185:                                              ; preds = %180
  %186 = load i32, i32* %6, align 4
  %187 = load i32, i32* @HPRT_PRTENA, align 4
  %188 = and i32 %186, %187
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %194

190:                                              ; preds = %185
  %191 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %192 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %191, i32 0, i32 4
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 6
  store i32 1, i32* %193, align 8
  br label %194

194:                                              ; preds = %190, %185, %180
  %195 = load i32, i32* %6, align 4
  %196 = load i32, i32* @HPRT_PRTENA, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %203

199:                                              ; preds = %194
  %200 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %201 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %200, i32 0, i32 4
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i32 0, i32 4
  store i32 1, i32* %202, align 8
  br label %207

203:                                              ; preds = %194
  %204 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %205 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %204, i32 0, i32 4
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 4
  store i32 0, i32* %206, align 8
  br label %207

207:                                              ; preds = %203, %199
  %208 = load i32, i32* %6, align 4
  %209 = load i32, i32* @HPRT_PRTOVRCURRCHNG, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %216

212:                                              ; preds = %207
  %213 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %214 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %213, i32 0, i32 4
  %215 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %214, i32 0, i32 7
  store i32 1, i32* %215, align 4
  br label %216

216:                                              ; preds = %212, %207
  %217 = load i32, i32* %6, align 4
  %218 = load i32, i32* @HPRT_PRTOVRCURRACT, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %225

221:                                              ; preds = %216
  %222 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %223 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %222, i32 0, i32 4
  %224 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %223, i32 0, i32 8
  store i32 1, i32* %224, align 8
  br label %229

225:                                              ; preds = %216
  %226 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %227 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %226, i32 0, i32 4
  %228 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %227, i32 0, i32 8
  store i32 0, i32* %228, align 8
  br label %229

229:                                              ; preds = %225, %221
  %230 = load i32, i32* %6, align 4
  %231 = load i32, i32* @HPRT_PRTPWR, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %238

234:                                              ; preds = %229
  %235 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %236 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %235, i32 0, i32 4
  %237 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %236, i32 0, i32 9
  store i32 1, i32* %237, align 4
  br label %242

238:                                              ; preds = %229
  %239 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %240 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %239, i32 0, i32 4
  %241 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %240, i32 0, i32 9
  store i32 0, i32* %241, align 4
  br label %242

242:                                              ; preds = %238, %234
  %243 = load i32, i32* %6, align 4
  %244 = load i32, i32* @HPRT_PRTSPD_MASK, align 4
  %245 = and i32 %243, %244
  %246 = load i32, i32* @HPRT_PRTSPD_SHIFT, align 4
  %247 = ashr i32 %245, %246
  %248 = load i32, i32* @HPRT_PRTSPD_LOW, align 4
  %249 = icmp eq i32 %247, %248
  br i1 %249, label %250, label %254

250:                                              ; preds = %242
  %251 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %252 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %251, i32 0, i32 4
  %253 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %252, i32 0, i32 3
  store i32 1, i32* %253, align 4
  br label %258

254:                                              ; preds = %242
  %255 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %256 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %255, i32 0, i32 4
  %257 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %256, i32 0, i32 3
  store i32 0, i32* %257, align 4
  br label %258

258:                                              ; preds = %254, %250
  %259 = load i32, i32* %6, align 4
  %260 = load i32, i32* @HPRT_PRTSPD_MASK, align 4
  %261 = and i32 %259, %260
  %262 = load i32, i32* @HPRT_PRTSPD_SHIFT, align 4
  %263 = ashr i32 %261, %262
  %264 = load i32, i32* @HPRT_PRTSPD_HIGH, align 4
  %265 = icmp eq i32 %263, %264
  br i1 %265, label %266, label %270

266:                                              ; preds = %258
  %267 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %268 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %267, i32 0, i32 4
  %269 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %268, i32 0, i32 5
  store i32 1, i32* %269, align 4
  br label %274

270:                                              ; preds = %258
  %271 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %272 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %271, i32 0, i32 4
  %273 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %272, i32 0, i32 5
  store i32 0, i32* %273, align 4
  br label %274

274:                                              ; preds = %270, %266
  %275 = load i32, i32* %6, align 4
  %276 = load i32, i32* @HPRT_PRTCONNDET, align 4
  %277 = and i32 %275, %276
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %283

279:                                              ; preds = %274
  %280 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %281 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %280, i32 0, i32 4
  %282 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %281, i32 0, i32 2
  store i32 1, i32* %282, align 8
  br label %283

283:                                              ; preds = %279, %274
  %284 = load i32, i32* %6, align 4
  %285 = load i32, i32* @HPRT_PRTSUSP, align 4
  %286 = and i32 %284, %285
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %291

288:                                              ; preds = %283
  %289 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %290 = call i32 @dwc_otg_suspend_irq(%struct.dwc_otg_softc* %289)
  br label %294

291:                                              ; preds = %283
  %292 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %293 = call i32 @dwc_otg_resume_irq(%struct.dwc_otg_softc* %292)
  br label %294

294:                                              ; preds = %291, %288
  %295 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %296 = call i32 @dwc_otg_root_intr(%struct.dwc_otg_softc* %295)
  %297 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %298 = call i32 @dwc_otg_update_host_frame_interval(%struct.dwc_otg_softc* %297)
  br label %299

299:                                              ; preds = %294, %137
  %300 = load i32, i32* %4, align 4
  %301 = load i32, i32* @GINTSTS_WKUPINT, align 4
  %302 = and i32 %300, %301
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %308

304:                                              ; preds = %299
  %305 = call i32 (i32, i8*, ...) @DPRINTFN(i32 5, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %306 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %307 = call i32 @dwc_otg_resume_irq(%struct.dwc_otg_softc* %306)
  br label %318

308:                                              ; preds = %299
  %309 = load i32, i32* %4, align 4
  %310 = load i32, i32* @GINTSTS_USBSUSP, align 4
  %311 = and i32 %309, %310
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %317

313:                                              ; preds = %308
  %314 = call i32 (i32, i8*, ...) @DPRINTFN(i32 5, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %315 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %316 = call i32 @dwc_otg_suspend_irq(%struct.dwc_otg_softc* %315)
  br label %317

317:                                              ; preds = %313, %308
  br label %318

318:                                              ; preds = %317, %304
  %319 = load i32, i32* %4, align 4
  %320 = load i32, i32* @GINTSTS_USBSUSP, align 4
  %321 = load i32, i32* @GINTSTS_USBRST, align 4
  %322 = or i32 %320, %321
  %323 = load i32, i32* @GINTMSK_OTGINTMSK, align 4
  %324 = or i32 %322, %323
  %325 = load i32, i32* @GINTSTS_SESSREQINT, align 4
  %326 = or i32 %324, %325
  %327 = and i32 %319, %326
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %345

329:                                              ; preds = %318
  %330 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %331 = load i32, i32* @DOTG_GOTGCTL, align 4
  %332 = call i32 @DWC_OTG_READ_4(%struct.dwc_otg_softc* %330, i32 %331)
  store i32 %332, i32* %7, align 4
  %333 = load i32, i32* %7, align 4
  %334 = call i32 (i32, i8*, ...) @DPRINTFN(i32 5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %333)
  %335 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %336 = load i32, i32* %7, align 4
  %337 = load i32, i32* @GOTGCTL_ASESVLD, align 4
  %338 = load i32, i32* @GOTGCTL_BSESVLD, align 4
  %339 = or i32 %337, %338
  %340 = and i32 %336, %339
  %341 = icmp ne i32 %340, 0
  %342 = zext i1 %341 to i64
  %343 = select i1 %341, i32 1, i32 0
  %344 = call i32 @dwc_otg_vbus_interrupt(%struct.dwc_otg_softc* %335, i32 %343)
  br label %345

345:                                              ; preds = %329, %318
  %346 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %347 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %346, i32 0, i32 2
  %348 = load i64, i64* %347, align 8
  %349 = icmp ne i64 %348, 0
  br i1 %349, label %350, label %355

350:                                              ; preds = %345
  %351 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %352 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %351, i32 0, i32 2
  store i64 0, i64* %352, align 8
  %353 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %354 = call i32 @dwc_otg_interrupt_complete_locked(%struct.dwc_otg_softc* %353)
  br label %355

355:                                              ; preds = %350, %345
  %356 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %357 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %356, i32 0, i32 3
  %358 = call i32 @USB_BUS_SPIN_UNLOCK(i32* %357)
  %359 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %360 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %359, i32 0, i32 3
  %361 = call i32 @USB_BUS_UNLOCK(i32* %360)
  ret void
}

declare dso_local i32 @USB_BUS_LOCK(i32*) #1

declare dso_local i32 @USB_BUS_SPIN_LOCK(i32*) #1

declare dso_local i32 @DWC_OTG_READ_4(%struct.dwc_otg_softc*, i32) #1

declare dso_local i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc*, i32, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, ...) #1

declare dso_local i32 @dwc_otg_root_intr(%struct.dwc_otg_softc*) #1

declare dso_local i32 @dwc_otg_init_fifo(%struct.dwc_otg_softc*, i32) #1

declare dso_local i32 @dwc_otg_set_address(%struct.dwc_otg_softc*, i32) #1

declare dso_local i64 @DSTS_ENUMSPD_GET(i32) #1

declare dso_local i32 @dwc_otg_suspend_irq(%struct.dwc_otg_softc*) #1

declare dso_local i32 @dwc_otg_resume_irq(%struct.dwc_otg_softc*) #1

declare dso_local i32 @dwc_otg_update_host_frame_interval(%struct.dwc_otg_softc*) #1

declare dso_local i32 @dwc_otg_vbus_interrupt(%struct.dwc_otg_softc*, i32) #1

declare dso_local i32 @dwc_otg_interrupt_complete_locked(%struct.dwc_otg_softc*) #1

declare dso_local i32 @USB_BUS_SPIN_UNLOCK(i32*) #1

declare dso_local i32 @USB_BUS_UNLOCK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
