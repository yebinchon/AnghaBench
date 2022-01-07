; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_musb_otg.c_musbotg_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_musb_otg.c_musbotg_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musb_otg_ep_cfg = type { i64, i32, i32 }
%struct.musbotg_softc = type { i64, i32, i32, %struct.TYPE_4__, %struct.musb_otg_ep_cfg*, %struct.usb_hw_ep_profile*, i32, i32 (i32)* }
%struct.TYPE_4__ = type { i32, i32, i32*, i32 }
%struct.usb_hw_ep_profile = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"start\0A\00", align 1
@USB_REV_2_0 = common dso_local global i32 0, align 4
@musbotg_bus_methods = common dso_local global i32 0, align 4
@musbotg_ep_default = common dso_local global %struct.musb_otg_ep_cfg* null, align 8
@hz = common dso_local global i32 0, align 4
@MUSB2_REG_DEVCTL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"pre-DEVCTL=0x%02x\0A\00", align 1
@MUSB2_REG_INTUSBE = common dso_local global i32 0, align 4
@MUSB2_REG_INTTXE = common dso_local global i32 0, align 4
@MUSB2_REG_INTRXE = common dso_local global i32 0, align 4
@MUSB2_REG_RXDBDIS = common dso_local global i32 0, align 4
@MUSB2_REG_TXDBDIS = common dso_local global i32 0, align 4
@MUSB2_REG_POWER = common dso_local global i32 0, align 4
@MUSB2_MASK_HSENAB = common dso_local global i32 0, align 4
@MUSB2_MASK_ISOUPD = common dso_local global i32 0, align 4
@MUSB2_DEVICE_MODE = common dso_local global i64 0, align 8
@MUSB2_MASK_SESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"DEVCTL=0x%02x\0A\00", align 1
@MUSB2_REG_TESTMODE = common dso_local global i32 0, align 4
@MUSB2_REG_MISC = common dso_local global i32 0, align 4
@MUSB2_REG_EPINDEX = common dso_local global i32 0, align 4
@MUSB2_REG_EPINFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"RX/TX endpoints: %u/%u\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"ERROR: Looks like the clocks are off!\0A\00", align 1
@MUSB2_REG_CONFDATA = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"Config Data: 0x%02x\0A\00", align 1
@MUSB2_MASK_CD_DYNFIFOSZ = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [61 x i8] c"Dynamic FIFO sizing detected, assuming 16Kbytes of FIFO RAM\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"HW version: 0x%04x\0A\00", align 1
@MUSB2_REG_HWVERS = common dso_local global i32 0, align 4
@MUSB2_REG_FSIZE = common dso_local global i32 0, align 4
@MUSB2_MASK_RX_FSIZE = common dso_local global i32 0, align 4
@MUSB2_MASK_TX_FSIZE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [46 x i8] c"Endpoint %u FIFO size: IN=%u, OUT=%u, DYN=%d\0A\00", align 1
@MUSB2_REG_RXFIFOSZ = common dso_local global i32 0, align 4
@MUSB2_REG_RXFIFOADD = common dso_local global i32 0, align 4
@MUSB2_REG_TXFIFOSZ = common dso_local global i32 0, align 4
@MUSB2_REG_TXFIFOADD = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [30 x i8] c"Dynamic FIFO size = %d bytes\0A\00", align 1
@MUSB2_HOST_MODE = common dso_local global i64 0, align 8
@MUSB2_MASK_IRESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @musbotg_init(%struct.musbotg_softc* %0) #0 {
  %2 = alloca %struct.musbotg_softc*, align 8
  %3 = alloca %struct.musb_otg_ep_cfg*, align 8
  %4 = alloca %struct.usb_hw_ep_profile*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.musbotg_softc* %0, %struct.musbotg_softc** %2, align 8
  %14 = call i32 (i32, i8*, ...) @DPRINTFN(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @USB_REV_2_0, align 4
  %16 = load %struct.musbotg_softc*, %struct.musbotg_softc** %2, align 8
  %17 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 3
  store i32 %15, i32* %18, align 8
  %19 = load %struct.musbotg_softc*, %struct.musbotg_softc** %2, align 8
  %20 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  store i32* @musbotg_bus_methods, i32** %21, align 8
  %22 = load %struct.musbotg_softc*, %struct.musbotg_softc** %2, align 8
  %23 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %22, i32 0, i32 4
  %24 = load %struct.musb_otg_ep_cfg*, %struct.musb_otg_ep_cfg** %23, align 8
  %25 = icmp eq %struct.musb_otg_ep_cfg* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %1
  %27 = load %struct.musb_otg_ep_cfg*, %struct.musb_otg_ep_cfg** @musbotg_ep_default, align 8
  %28 = load %struct.musbotg_softc*, %struct.musbotg_softc** %2, align 8
  %29 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %28, i32 0, i32 4
  store %struct.musb_otg_ep_cfg* %27, %struct.musb_otg_ep_cfg** %29, align 8
  br label %30

30:                                               ; preds = %26, %1
  %31 = load %struct.musbotg_softc*, %struct.musbotg_softc** %2, align 8
  %32 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %31, i32 0, i32 3
  %33 = call i32 @USB_BUS_LOCK(%struct.TYPE_4__* %32)
  %34 = load %struct.musbotg_softc*, %struct.musbotg_softc** %2, align 8
  %35 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %34, i32 0, i32 7
  %36 = load i32 (i32)*, i32 (i32)** %35, align 8
  %37 = icmp ne i32 (i32)* %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %30
  %39 = load %struct.musbotg_softc*, %struct.musbotg_softc** %2, align 8
  %40 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %39, i32 0, i32 7
  %41 = load i32 (i32)*, i32 (i32)** %40, align 8
  %42 = load %struct.musbotg_softc*, %struct.musbotg_softc** %2, align 8
  %43 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 8
  %45 = call i32 %41(i32 %44)
  br label %46

46:                                               ; preds = %38, %30
  %47 = load %struct.musbotg_softc*, %struct.musbotg_softc** %2, align 8
  %48 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* @hz, align 4
  %51 = sdiv i32 %50, 1000
  %52 = call i32 @usb_pause_mtx(i32* %49, i32 %51)
  %53 = load %struct.musbotg_softc*, %struct.musbotg_softc** %2, align 8
  %54 = load i32, i32* @MUSB2_REG_DEVCTL, align 4
  %55 = call i32 @MUSB2_READ_1(%struct.musbotg_softc* %53, i32 %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 (i8*, i32, ...) @DPRINTF(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load %struct.musbotg_softc*, %struct.musbotg_softc** %2, align 8
  %59 = load i32, i32* @MUSB2_REG_INTUSBE, align 4
  %60 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %58, i32 %59, i32 0)
  %61 = load %struct.musbotg_softc*, %struct.musbotg_softc** %2, align 8
  %62 = load i32, i32* @MUSB2_REG_INTTXE, align 4
  %63 = call i32 @MUSB2_WRITE_2(%struct.musbotg_softc* %61, i32 %62, i32 0)
  %64 = load %struct.musbotg_softc*, %struct.musbotg_softc** %2, align 8
  %65 = load i32, i32* @MUSB2_REG_INTRXE, align 4
  %66 = call i32 @MUSB2_WRITE_2(%struct.musbotg_softc* %64, i32 %65, i32 0)
  %67 = load %struct.musbotg_softc*, %struct.musbotg_softc** %2, align 8
  %68 = call i32 @musbotg_pull_common(%struct.musbotg_softc* %67, i32 0)
  %69 = load %struct.musbotg_softc*, %struct.musbotg_softc** %2, align 8
  %70 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i32, i32* @hz, align 4
  %73 = sdiv i32 %72, 100
  %74 = call i32 @usb_pause_mtx(i32* %71, i32 %73)
  %75 = load %struct.musbotg_softc*, %struct.musbotg_softc** %2, align 8
  %76 = load i32, i32* @MUSB2_REG_RXDBDIS, align 4
  %77 = call i32 @MUSB2_WRITE_2(%struct.musbotg_softc* %75, i32 %76, i32 65535)
  %78 = load %struct.musbotg_softc*, %struct.musbotg_softc** %2, align 8
  %79 = load i32, i32* @MUSB2_REG_TXDBDIS, align 4
  %80 = call i32 @MUSB2_WRITE_2(%struct.musbotg_softc* %78, i32 %79, i32 65535)
  %81 = load %struct.musbotg_softc*, %struct.musbotg_softc** %2, align 8
  %82 = load i32, i32* @MUSB2_REG_POWER, align 4
  %83 = load i32, i32* @MUSB2_MASK_HSENAB, align 4
  %84 = load i32, i32* @MUSB2_MASK_ISOUPD, align 4
  %85 = or i32 %83, %84
  %86 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %81, i32 %82, i32 %85)
  %87 = load %struct.musbotg_softc*, %struct.musbotg_softc** %2, align 8
  %88 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @MUSB2_DEVICE_MODE, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %104

92:                                               ; preds = %46
  %93 = load %struct.musbotg_softc*, %struct.musbotg_softc** %2, align 8
  %94 = load i32, i32* @MUSB2_REG_DEVCTL, align 4
  %95 = call i32 @MUSB2_READ_1(%struct.musbotg_softc* %93, i32 %94)
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* @MUSB2_MASK_SESS, align 4
  %97 = xor i32 %96, -1
  %98 = load i32, i32* %9, align 4
  %99 = and i32 %98, %97
  store i32 %99, i32* %9, align 4
  %100 = load %struct.musbotg_softc*, %struct.musbotg_softc** %2, align 8
  %101 = load i32, i32* @MUSB2_REG_DEVCTL, align 4
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %100, i32 %101, i32 %102)
  br label %115

104:                                              ; preds = %46
  %105 = load %struct.musbotg_softc*, %struct.musbotg_softc** %2, align 8
  %106 = load i32, i32* @MUSB2_REG_DEVCTL, align 4
  %107 = call i32 @MUSB2_READ_1(%struct.musbotg_softc* %105, i32 %106)
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* @MUSB2_MASK_SESS, align 4
  %109 = load i32, i32* %9, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %9, align 4
  %111 = load %struct.musbotg_softc*, %struct.musbotg_softc** %2, align 8
  %112 = load i32, i32* @MUSB2_REG_DEVCTL, align 4
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %111, i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %104, %92
  %116 = load %struct.musbotg_softc*, %struct.musbotg_softc** %2, align 8
  %117 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 1
  %119 = load i32, i32* @hz, align 4
  %120 = sdiv i32 %119, 10
  %121 = call i32 @usb_pause_mtx(i32* %118, i32 %120)
  %122 = load i32, i32* %9, align 4
  %123 = call i32 (i8*, i32, ...) @DPRINTF(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %122)
  %124 = load %struct.musbotg_softc*, %struct.musbotg_softc** %2, align 8
  %125 = load i32, i32* @MUSB2_REG_TESTMODE, align 4
  %126 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %124, i32 %125, i32 0)
  %127 = load %struct.musbotg_softc*, %struct.musbotg_softc** %2, align 8
  %128 = load i32, i32* @MUSB2_REG_MISC, align 4
  %129 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %127, i32 %128, i32 0)
  %130 = load %struct.musbotg_softc*, %struct.musbotg_softc** %2, align 8
  %131 = load i32, i32* @MUSB2_REG_EPINDEX, align 4
  %132 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %130, i32 %131, i32 0)
  %133 = load %struct.musbotg_softc*, %struct.musbotg_softc** %2, align 8
  %134 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %157

137:                                              ; preds = %115
  %138 = load %struct.musbotg_softc*, %struct.musbotg_softc** %2, align 8
  %139 = load i32, i32* @MUSB2_REG_EPINFO, align 4
  %140 = call i32 @MUSB2_READ_1(%struct.musbotg_softc* %138, i32 %139)
  %141 = sdiv i32 %140, 16
  store i32 %141, i32* %7, align 4
  %142 = load %struct.musbotg_softc*, %struct.musbotg_softc** %2, align 8
  %143 = load i32, i32* @MUSB2_REG_EPINFO, align 4
  %144 = call i32 @MUSB2_READ_1(%struct.musbotg_softc* %142, i32 %143)
  %145 = srem i32 %144, 16
  store i32 %145, i32* %8, align 4
  %146 = load i32, i32* %7, align 4
  %147 = load i32, i32* %8, align 4
  %148 = icmp sgt i32 %146, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %137
  %150 = load i32, i32* %7, align 4
  br label %153

151:                                              ; preds = %137
  %152 = load i32, i32* %8, align 4
  br label %153

153:                                              ; preds = %151, %149
  %154 = phi i32 [ %150, %149 ], [ %152, %151 ]
  %155 = load %struct.musbotg_softc*, %struct.musbotg_softc** %2, align 8
  %156 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %155, i32 0, i32 1
  store i32 %154, i32* %156, align 8
  br label %161

157:                                              ; preds = %115
  %158 = load %struct.musbotg_softc*, %struct.musbotg_softc** %2, align 8
  %159 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  store i32 %160, i32* %8, align 4
  store i32 %160, i32* %7, align 4
  br label %161

161:                                              ; preds = %157, %153
  %162 = load i32, i32* %7, align 4
  %163 = load i32, i32* %8, align 4
  %164 = call i32 (i32, i8*, ...) @DPRINTFN(i32 2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %162, i32 %163)
  %165 = load %struct.musbotg_softc*, %struct.musbotg_softc** %2, align 8
  %166 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %161
  %170 = call i32 (i32, i8*, ...) @DPRINTFN(i32 2, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  br label %171

171:                                              ; preds = %169, %161
  %172 = load %struct.musbotg_softc*, %struct.musbotg_softc** %2, align 8
  %173 = load i32, i32* @MUSB2_REG_CONFDATA, align 4
  %174 = call i32 @MUSB2_READ_1(%struct.musbotg_softc* %172, i32 %173)
  %175 = load %struct.musbotg_softc*, %struct.musbotg_softc** %2, align 8
  %176 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %175, i32 0, i32 2
  store i32 %174, i32* %176, align 4
  %177 = load %struct.musbotg_softc*, %struct.musbotg_softc** %2, align 8
  %178 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = call i32 (i32, i8*, ...) @DPRINTFN(i32 2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %179)
  %181 = load %struct.musbotg_softc*, %struct.musbotg_softc** %2, align 8
  %182 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @MUSB2_MASK_CD_DYNFIFOSZ, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  %187 = zext i1 %186 to i64
  %188 = select i1 %186, i32 1, i32 0
  store i32 %188, i32* %13, align 4
  %189 = load i32, i32* %13, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %197

191:                                              ; preds = %171
  %192 = load %struct.musbotg_softc*, %struct.musbotg_softc** %2, align 8
  %193 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %192, i32 0, i32 3
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @device_printf(i32 %195, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.6, i64 0, i64 0))
  br label %197

197:                                              ; preds = %191, %171
  %198 = load %struct.musbotg_softc*, %struct.musbotg_softc** %2, align 8
  %199 = load i32, i32* @MUSB2_REG_HWVERS, align 4
  %200 = call i32 @MUSB2_READ_1(%struct.musbotg_softc* %198, i32 %199)
  %201 = call i32 (i32, i8*, ...) @DPRINTFN(i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 %200)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %9, align 4
  br label %202

202:                                              ; preds = %439, %197
  %203 = load i32, i32* %9, align 4
  %204 = load %struct.musbotg_softc*, %struct.musbotg_softc** %2, align 8
  %205 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 8
  %207 = icmp sle i32 %203, %206
  br i1 %207, label %208, label %442

208:                                              ; preds = %202
  %209 = load %struct.musbotg_softc*, %struct.musbotg_softc** %2, align 8
  %210 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %209, i32 0, i32 5
  %211 = load %struct.usb_hw_ep_profile*, %struct.usb_hw_ep_profile** %210, align 8
  %212 = load i32, i32* %9, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.usb_hw_ep_profile, %struct.usb_hw_ep_profile* %211, i64 %213
  store %struct.usb_hw_ep_profile* %214, %struct.usb_hw_ep_profile** %4, align 8
  %215 = load %struct.musbotg_softc*, %struct.musbotg_softc** %2, align 8
  %216 = load i32, i32* @MUSB2_REG_EPINDEX, align 4
  %217 = load i32, i32* %9, align 4
  %218 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %215, i32 %216, i32 %217)
  %219 = load %struct.musbotg_softc*, %struct.musbotg_softc** %2, align 8
  %220 = load i32, i32* @MUSB2_REG_FSIZE, align 4
  %221 = call i32 @MUSB2_READ_1(%struct.musbotg_softc* %219, i32 %220)
  store i32 %221, i32* %10, align 4
  %222 = load i32, i32* %10, align 4
  %223 = load i32, i32* @MUSB2_MASK_RX_FSIZE, align 4
  %224 = and i32 %222, %223
  %225 = sdiv i32 %224, 16
  store i32 %225, i32* %11, align 4
  %226 = load i32, i32* %10, align 4
  %227 = load i32, i32* @MUSB2_MASK_TX_FSIZE, align 4
  %228 = and i32 %226, %227
  store i32 %228, i32* %12, align 4
  %229 = load i32, i32* %9, align 4
  %230 = load i32, i32* %12, align 4
  %231 = load i32, i32* %11, align 4
  %232 = load i32, i32* %13, align 4
  %233 = call i32 (i8*, i32, ...) @DPRINTF(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0), i32 %229, i32 %230, i32 %231, i32 %232)
  %234 = load i32, i32* %13, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %347

236:                                              ; preds = %208
  %237 = load i32, i32* %11, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %291

239:                                              ; preds = %236
  %240 = load i32, i32* %9, align 4
  %241 = load i32, i32* %7, align 4
  %242 = icmp sle i32 %240, %241
  br i1 %242, label %243, label %291

243:                                              ; preds = %239
  store i32 0, i32* %5, align 4
  br label %244

244:                                              ; preds = %278, %243
  %245 = load %struct.musbotg_softc*, %struct.musbotg_softc** %2, align 8
  %246 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %245, i32 0, i32 4
  %247 = load %struct.musb_otg_ep_cfg*, %struct.musb_otg_ep_cfg** %246, align 8
  %248 = load i32, i32* %5, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.musb_otg_ep_cfg, %struct.musb_otg_ep_cfg* %247, i64 %249
  %251 = getelementptr inbounds %struct.musb_otg_ep_cfg, %struct.musb_otg_ep_cfg* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = icmp sge i64 %252, 0
  br i1 %253, label %254, label %281

254:                                              ; preds = %244
  %255 = load %struct.musbotg_softc*, %struct.musbotg_softc** %2, align 8
  %256 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %255, i32 0, i32 4
  %257 = load %struct.musb_otg_ep_cfg*, %struct.musb_otg_ep_cfg** %256, align 8
  %258 = load i32, i32* %5, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.musb_otg_ep_cfg, %struct.musb_otg_ep_cfg* %257, i64 %259
  store %struct.musb_otg_ep_cfg* %260, %struct.musb_otg_ep_cfg** %3, align 8
  %261 = load i32, i32* %9, align 4
  %262 = sext i32 %261 to i64
  %263 = load %struct.musb_otg_ep_cfg*, %struct.musb_otg_ep_cfg** %3, align 8
  %264 = getelementptr inbounds %struct.musb_otg_ep_cfg, %struct.musb_otg_ep_cfg* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = icmp sle i64 %262, %265
  br i1 %266, label %267, label %277

267:                                              ; preds = %254
  %268 = load %struct.musb_otg_ep_cfg*, %struct.musb_otg_ep_cfg** %3, align 8
  %269 = getelementptr inbounds %struct.musb_otg_ep_cfg, %struct.musb_otg_ep_cfg* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 8
  store i32 %270, i32* %11, align 4
  %271 = load %struct.musbotg_softc*, %struct.musbotg_softc** %2, align 8
  %272 = load i32, i32* @MUSB2_REG_RXFIFOSZ, align 4
  %273 = load %struct.musb_otg_ep_cfg*, %struct.musb_otg_ep_cfg** %3, align 8
  %274 = getelementptr inbounds %struct.musb_otg_ep_cfg, %struct.musb_otg_ep_cfg* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 4
  %276 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %271, i32 %272, i32 %275)
  br label %281

277:                                              ; preds = %254
  br label %278

278:                                              ; preds = %277
  %279 = load i32, i32* %5, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %5, align 4
  br label %244

281:                                              ; preds = %267, %244
  %282 = load %struct.musbotg_softc*, %struct.musbotg_softc** %2, align 8
  %283 = load i32, i32* @MUSB2_REG_RXFIFOADD, align 4
  %284 = load i32, i32* %6, align 4
  %285 = ashr i32 %284, 3
  %286 = call i32 @MUSB2_WRITE_2(%struct.musbotg_softc* %282, i32 %283, i32 %285)
  %287 = load i32, i32* %11, align 4
  %288 = shl i32 1, %287
  %289 = load i32, i32* %6, align 4
  %290 = add nsw i32 %289, %288
  store i32 %290, i32* %6, align 4
  br label %291

291:                                              ; preds = %281, %239, %236
  %292 = load i32, i32* %12, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %346

294:                                              ; preds = %291
  %295 = load i32, i32* %9, align 4
  %296 = load i32, i32* %8, align 4
  %297 = icmp sle i32 %295, %296
  br i1 %297, label %298, label %346

298:                                              ; preds = %294
  store i32 0, i32* %5, align 4
  br label %299

299:                                              ; preds = %333, %298
  %300 = load %struct.musbotg_softc*, %struct.musbotg_softc** %2, align 8
  %301 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %300, i32 0, i32 4
  %302 = load %struct.musb_otg_ep_cfg*, %struct.musb_otg_ep_cfg** %301, align 8
  %303 = load i32, i32* %5, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.musb_otg_ep_cfg, %struct.musb_otg_ep_cfg* %302, i64 %304
  %306 = getelementptr inbounds %struct.musb_otg_ep_cfg, %struct.musb_otg_ep_cfg* %305, i32 0, i32 0
  %307 = load i64, i64* %306, align 8
  %308 = icmp sge i64 %307, 0
  br i1 %308, label %309, label %336

309:                                              ; preds = %299
  %310 = load %struct.musbotg_softc*, %struct.musbotg_softc** %2, align 8
  %311 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %310, i32 0, i32 4
  %312 = load %struct.musb_otg_ep_cfg*, %struct.musb_otg_ep_cfg** %311, align 8
  %313 = load i32, i32* %5, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds %struct.musb_otg_ep_cfg, %struct.musb_otg_ep_cfg* %312, i64 %314
  store %struct.musb_otg_ep_cfg* %315, %struct.musb_otg_ep_cfg** %3, align 8
  %316 = load i32, i32* %9, align 4
  %317 = sext i32 %316 to i64
  %318 = load %struct.musb_otg_ep_cfg*, %struct.musb_otg_ep_cfg** %3, align 8
  %319 = getelementptr inbounds %struct.musb_otg_ep_cfg, %struct.musb_otg_ep_cfg* %318, i32 0, i32 0
  %320 = load i64, i64* %319, align 8
  %321 = icmp sle i64 %317, %320
  br i1 %321, label %322, label %332

322:                                              ; preds = %309
  %323 = load %struct.musb_otg_ep_cfg*, %struct.musb_otg_ep_cfg** %3, align 8
  %324 = getelementptr inbounds %struct.musb_otg_ep_cfg, %struct.musb_otg_ep_cfg* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 8
  store i32 %325, i32* %12, align 4
  %326 = load %struct.musbotg_softc*, %struct.musbotg_softc** %2, align 8
  %327 = load i32, i32* @MUSB2_REG_TXFIFOSZ, align 4
  %328 = load %struct.musb_otg_ep_cfg*, %struct.musb_otg_ep_cfg** %3, align 8
  %329 = getelementptr inbounds %struct.musb_otg_ep_cfg, %struct.musb_otg_ep_cfg* %328, i32 0, i32 2
  %330 = load i32, i32* %329, align 4
  %331 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %326, i32 %327, i32 %330)
  br label %336

332:                                              ; preds = %309
  br label %333

333:                                              ; preds = %332
  %334 = load i32, i32* %5, align 4
  %335 = add nsw i32 %334, 1
  store i32 %335, i32* %5, align 4
  br label %299

336:                                              ; preds = %322, %299
  %337 = load %struct.musbotg_softc*, %struct.musbotg_softc** %2, align 8
  %338 = load i32, i32* @MUSB2_REG_TXFIFOADD, align 4
  %339 = load i32, i32* %6, align 4
  %340 = ashr i32 %339, 3
  %341 = call i32 @MUSB2_WRITE_2(%struct.musbotg_softc* %337, i32 %338, i32 %340)
  %342 = load i32, i32* %12, align 4
  %343 = shl i32 1, %342
  %344 = load i32, i32* %6, align 4
  %345 = add nsw i32 %344, %343
  store i32 %345, i32* %6, align 4
  br label %346

346:                                              ; preds = %336, %294, %291
  br label %347

347:                                              ; preds = %346, %208
  %348 = load i32, i32* %11, align 4
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %384

350:                                              ; preds = %347
  %351 = load i32, i32* %12, align 4
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %384

353:                                              ; preds = %350
  %354 = load i32, i32* %9, align 4
  %355 = load i32, i32* %7, align 4
  %356 = icmp sle i32 %354, %355
  br i1 %356, label %357, label %384

357:                                              ; preds = %353
  %358 = load i32, i32* %9, align 4
  %359 = load i32, i32* %8, align 4
  %360 = icmp sle i32 %358, %359
  br i1 %360, label %361, label %384

361:                                              ; preds = %357
  %362 = load i32, i32* %12, align 4
  %363 = shl i32 1, %362
  %364 = load %struct.usb_hw_ep_profile*, %struct.usb_hw_ep_profile** %4, align 8
  %365 = getelementptr inbounds %struct.usb_hw_ep_profile, %struct.usb_hw_ep_profile* %364, i32 0, i32 0
  store i32 %363, i32* %365, align 4
  %366 = load i32, i32* %11, align 4
  %367 = shl i32 1, %366
  %368 = load %struct.usb_hw_ep_profile*, %struct.usb_hw_ep_profile** %4, align 8
  %369 = getelementptr inbounds %struct.usb_hw_ep_profile, %struct.usb_hw_ep_profile* %368, i32 0, i32 1
  store i32 %367, i32* %369, align 4
  %370 = load %struct.usb_hw_ep_profile*, %struct.usb_hw_ep_profile** %4, align 8
  %371 = getelementptr inbounds %struct.usb_hw_ep_profile, %struct.usb_hw_ep_profile* %370, i32 0, i32 2
  store i32 0, i32* %371, align 4
  %372 = load %struct.usb_hw_ep_profile*, %struct.usb_hw_ep_profile** %4, align 8
  %373 = getelementptr inbounds %struct.usb_hw_ep_profile, %struct.usb_hw_ep_profile* %372, i32 0, i32 3
  store i32 1, i32* %373, align 4
  %374 = load %struct.usb_hw_ep_profile*, %struct.usb_hw_ep_profile** %4, align 8
  %375 = getelementptr inbounds %struct.usb_hw_ep_profile, %struct.usb_hw_ep_profile* %374, i32 0, i32 4
  store i32 1, i32* %375, align 4
  %376 = load %struct.usb_hw_ep_profile*, %struct.usb_hw_ep_profile** %4, align 8
  %377 = getelementptr inbounds %struct.usb_hw_ep_profile, %struct.usb_hw_ep_profile* %376, i32 0, i32 5
  store i32 1, i32* %377, align 4
  %378 = load %struct.usb_hw_ep_profile*, %struct.usb_hw_ep_profile** %4, align 8
  %379 = getelementptr inbounds %struct.usb_hw_ep_profile, %struct.usb_hw_ep_profile* %378, i32 0, i32 6
  store i32 1, i32* %379, align 4
  %380 = load %struct.usb_hw_ep_profile*, %struct.usb_hw_ep_profile** %4, align 8
  %381 = getelementptr inbounds %struct.usb_hw_ep_profile, %struct.usb_hw_ep_profile* %380, i32 0, i32 7
  store i32 1, i32* %381, align 4
  %382 = load %struct.usb_hw_ep_profile*, %struct.usb_hw_ep_profile** %4, align 8
  %383 = getelementptr inbounds %struct.usb_hw_ep_profile, %struct.usb_hw_ep_profile* %382, i32 0, i32 8
  store i32 1, i32* %383, align 4
  br label %438

384:                                              ; preds = %357, %353, %350, %347
  %385 = load i32, i32* %11, align 4
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %387, label %410

387:                                              ; preds = %384
  %388 = load i32, i32* %9, align 4
  %389 = load i32, i32* %7, align 4
  %390 = icmp sle i32 %388, %389
  br i1 %390, label %391, label %410

391:                                              ; preds = %387
  %392 = load i32, i32* %11, align 4
  %393 = shl i32 1, %392
  %394 = load %struct.usb_hw_ep_profile*, %struct.usb_hw_ep_profile** %4, align 8
  %395 = getelementptr inbounds %struct.usb_hw_ep_profile, %struct.usb_hw_ep_profile* %394, i32 0, i32 1
  store i32 %393, i32* %395, align 4
  %396 = load %struct.usb_hw_ep_profile*, %struct.usb_hw_ep_profile** %4, align 8
  %397 = getelementptr inbounds %struct.usb_hw_ep_profile, %struct.usb_hw_ep_profile* %396, i32 0, i32 0
  store i32 0, i32* %397, align 4
  %398 = load %struct.usb_hw_ep_profile*, %struct.usb_hw_ep_profile** %4, align 8
  %399 = getelementptr inbounds %struct.usb_hw_ep_profile, %struct.usb_hw_ep_profile* %398, i32 0, i32 2
  store i32 1, i32* %399, align 4
  %400 = load %struct.usb_hw_ep_profile*, %struct.usb_hw_ep_profile** %4, align 8
  %401 = getelementptr inbounds %struct.usb_hw_ep_profile, %struct.usb_hw_ep_profile* %400, i32 0, i32 3
  store i32 1, i32* %401, align 4
  %402 = load %struct.usb_hw_ep_profile*, %struct.usb_hw_ep_profile** %4, align 8
  %403 = getelementptr inbounds %struct.usb_hw_ep_profile, %struct.usb_hw_ep_profile* %402, i32 0, i32 4
  store i32 1, i32* %403, align 4
  %404 = load %struct.usb_hw_ep_profile*, %struct.usb_hw_ep_profile** %4, align 8
  %405 = getelementptr inbounds %struct.usb_hw_ep_profile, %struct.usb_hw_ep_profile* %404, i32 0, i32 5
  store i32 1, i32* %405, align 4
  %406 = load %struct.usb_hw_ep_profile*, %struct.usb_hw_ep_profile** %4, align 8
  %407 = getelementptr inbounds %struct.usb_hw_ep_profile, %struct.usb_hw_ep_profile* %406, i32 0, i32 6
  store i32 1, i32* %407, align 4
  %408 = load %struct.usb_hw_ep_profile*, %struct.usb_hw_ep_profile** %4, align 8
  %409 = getelementptr inbounds %struct.usb_hw_ep_profile, %struct.usb_hw_ep_profile* %408, i32 0, i32 8
  store i32 1, i32* %409, align 4
  br label %437

410:                                              ; preds = %387, %384
  %411 = load i32, i32* %12, align 4
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %436

413:                                              ; preds = %410
  %414 = load i32, i32* %9, align 4
  %415 = load i32, i32* %8, align 4
  %416 = icmp sle i32 %414, %415
  br i1 %416, label %417, label %436

417:                                              ; preds = %413
  %418 = load i32, i32* %12, align 4
  %419 = shl i32 1, %418
  %420 = load %struct.usb_hw_ep_profile*, %struct.usb_hw_ep_profile** %4, align 8
  %421 = getelementptr inbounds %struct.usb_hw_ep_profile, %struct.usb_hw_ep_profile* %420, i32 0, i32 0
  store i32 %419, i32* %421, align 4
  %422 = load %struct.usb_hw_ep_profile*, %struct.usb_hw_ep_profile** %4, align 8
  %423 = getelementptr inbounds %struct.usb_hw_ep_profile, %struct.usb_hw_ep_profile* %422, i32 0, i32 1
  store i32 0, i32* %423, align 4
  %424 = load %struct.usb_hw_ep_profile*, %struct.usb_hw_ep_profile** %4, align 8
  %425 = getelementptr inbounds %struct.usb_hw_ep_profile, %struct.usb_hw_ep_profile* %424, i32 0, i32 2
  store i32 1, i32* %425, align 4
  %426 = load %struct.usb_hw_ep_profile*, %struct.usb_hw_ep_profile** %4, align 8
  %427 = getelementptr inbounds %struct.usb_hw_ep_profile, %struct.usb_hw_ep_profile* %426, i32 0, i32 3
  store i32 1, i32* %427, align 4
  %428 = load %struct.usb_hw_ep_profile*, %struct.usb_hw_ep_profile** %4, align 8
  %429 = getelementptr inbounds %struct.usb_hw_ep_profile, %struct.usb_hw_ep_profile* %428, i32 0, i32 4
  store i32 1, i32* %429, align 4
  %430 = load %struct.usb_hw_ep_profile*, %struct.usb_hw_ep_profile** %4, align 8
  %431 = getelementptr inbounds %struct.usb_hw_ep_profile, %struct.usb_hw_ep_profile* %430, i32 0, i32 5
  store i32 1, i32* %431, align 4
  %432 = load %struct.usb_hw_ep_profile*, %struct.usb_hw_ep_profile** %4, align 8
  %433 = getelementptr inbounds %struct.usb_hw_ep_profile, %struct.usb_hw_ep_profile* %432, i32 0, i32 6
  store i32 1, i32* %433, align 4
  %434 = load %struct.usb_hw_ep_profile*, %struct.usb_hw_ep_profile** %4, align 8
  %435 = getelementptr inbounds %struct.usb_hw_ep_profile, %struct.usb_hw_ep_profile* %434, i32 0, i32 7
  store i32 1, i32* %435, align 4
  br label %436

436:                                              ; preds = %417, %413, %410
  br label %437

437:                                              ; preds = %436, %391
  br label %438

438:                                              ; preds = %437, %361
  br label %439

439:                                              ; preds = %438
  %440 = load i32, i32* %9, align 4
  %441 = add nsw i32 %440, 1
  store i32 %441, i32* %9, align 4
  br label %202

442:                                              ; preds = %202
  %443 = load i32, i32* %6, align 4
  %444 = call i32 (i32, i8*, ...) @DPRINTFN(i32 2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i32 %443)
  %445 = load %struct.musbotg_softc*, %struct.musbotg_softc** %2, align 8
  %446 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %445, i32 0, i32 0
  %447 = load i64, i64* %446, align 8
  %448 = load i64, i64* @MUSB2_HOST_MODE, align 8
  %449 = icmp eq i64 %447, %448
  br i1 %449, label %450, label %454

450:                                              ; preds = %442
  %451 = load %struct.musbotg_softc*, %struct.musbotg_softc** %2, align 8
  %452 = load i32, i32* @MUSB2_REG_INTUSBE, align 4
  %453 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %451, i32 %452, i32 255)
  br label %459

454:                                              ; preds = %442
  %455 = load %struct.musbotg_softc*, %struct.musbotg_softc** %2, align 8
  %456 = load i32, i32* @MUSB2_REG_INTUSBE, align 4
  %457 = load i32, i32* @MUSB2_MASK_IRESET, align 4
  %458 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %455, i32 %456, i32 %457)
  br label %459

459:                                              ; preds = %454, %450
  %460 = load %struct.musbotg_softc*, %struct.musbotg_softc** %2, align 8
  %461 = call i32 @musbotg_clocks_off(%struct.musbotg_softc* %460)
  %462 = load %struct.musbotg_softc*, %struct.musbotg_softc** %2, align 8
  %463 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %462, i32 0, i32 3
  %464 = call i32 @USB_BUS_UNLOCK(%struct.TYPE_4__* %463)
  %465 = load %struct.musbotg_softc*, %struct.musbotg_softc** %2, align 8
  %466 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %465, i32 0, i32 3
  %467 = call i32 @musbotg_do_poll(%struct.TYPE_4__* %466)
  ret i32 0
}

declare dso_local i32 @DPRINTFN(i32, i8*, ...) #1

declare dso_local i32 @USB_BUS_LOCK(%struct.TYPE_4__*) #1

declare dso_local i32 @usb_pause_mtx(i32*, i32) #1

declare dso_local i32 @MUSB2_READ_1(%struct.musbotg_softc*, i32) #1

declare dso_local i32 @DPRINTF(i8*, i32, ...) #1

declare dso_local i32 @MUSB2_WRITE_1(%struct.musbotg_softc*, i32, i32) #1

declare dso_local i32 @MUSB2_WRITE_2(%struct.musbotg_softc*, i32, i32) #1

declare dso_local i32 @musbotg_pull_common(%struct.musbotg_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @musbotg_clocks_off(%struct.musbotg_softc*) #1

declare dso_local i32 @USB_BUS_UNLOCK(%struct.TYPE_4__*) #1

declare dso_local i32 @musbotg_do_poll(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
