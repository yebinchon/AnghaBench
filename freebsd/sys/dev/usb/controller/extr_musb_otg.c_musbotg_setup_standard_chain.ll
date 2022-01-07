; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_musb_otg.c_musbotg_setup_standard_chain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_musb_otg.c_musbotg_setup_standard_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32, i32, i64*, i32, %struct.musbotg_td*, %struct.TYPE_11__, i32*, %struct.TYPE_7__, %struct.TYPE_10__*, %struct.TYPE_9__*, %struct.musbotg_td**, %struct.musbotg_td*, %struct.musbotg_td*, i32, i32 }
%struct.TYPE_11__ = type { i64, i64, i64, i64, i64, i32, i64 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.musbotg_td = type { i32 }
%struct.musbotg_std_temp = type { i64, i32, i32, i32, i32, i32, i64, i32, %struct.musbotg_td*, i32*, i32*, i32, i32, %struct.musbotg_td*, i32 }
%struct.musbotg_softc = type { i64 }

@.str = private unnamed_addr constant [37 x i8] c"addr=%d endpt=%d sumlen=%d speed=%d\0A\00", align 1
@UE_ADDR = common dso_local global i32 0, align 4
@UE_XFERTYPE = common dso_local global i32 0, align 4
@USB_MODE_HOST = common dso_local global i64 0, align 8
@MUSB2_MASK_TI_SPEED_LO = common dso_local global i32 0, align 4
@MUSB2_MASK_TI_SPEED_FS = common dso_local global i32 0, align 4
@MUSB2_MASK_TI_SPEED_HS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Invalid USB speed: %d\0A\00", align 1
@MUSB2_MASK_TI_PROTO_CTRL = common dso_local global i32 0, align 4
@MUSB2_MASK_TI_PROTO_ISOC = common dso_local global i32 0, align 4
@MUSB2_MASK_TI_PROTO_BULK = common dso_local global i32 0, align 4
@MUSB2_MASK_TI_PROTO_INTR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Invalid USB transfer type: %d\0A\00", align 1
@USB_MODE_DEVICE = common dso_local global i64 0, align 8
@musbotg_dev_ctrl_setup_rx = common dso_local global i32 0, align 4
@musbotg_host_ctrl_setup_tx = common dso_local global i32 0, align 4
@UE_DIR_IN = common dso_local global i32 0, align 4
@musbotg_host_ctrl_data_tx = common dso_local global i32 0, align 4
@musbotg_host_data_tx = common dso_local global i32 0, align 4
@musbotg_host_ctrl_data_rx = common dso_local global i32 0, align 4
@musbotg_host_data_rx = common dso_local global i32 0, align 4
@musbotg_dev_ctrl_data_tx = common dso_local global i32 0, align 4
@musbotg_dev_data_tx = common dso_local global i32 0, align 4
@musbotg_dev_ctrl_data_rx = common dso_local global i32 0, align 4
@musbotg_dev_data_rx = common dso_local global i32 0, align 4
@MUSB2_DEVICE_MODE = common dso_local global i64 0, align 8
@musbotg_dev_ctrl_status = common dso_local global i32 0, align 4
@musbotg_host_ctrl_status_tx = common dso_local global i32* null, align 8
@musbotg_host_ctrl_status_rx = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*)* @musbotg_setup_standard_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @musbotg_setup_standard_chain(%struct.usb_xfer* %0) #0 {
  %2 = alloca %struct.usb_xfer*, align 8
  %3 = alloca %struct.musbotg_std_temp, align 8
  %4 = alloca %struct.musbotg_softc*, align 8
  %5 = alloca %struct.musbotg_td*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %2, align 8
  %12 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %13 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %16 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @UE_GET_ADDR(i32 %17)
  %19 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %20 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %19, i32 0, i32 14
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %23 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %22, i32 0, i32 9
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %27 = call i32 @usbd_get_speed(%struct.TYPE_12__* %26)
  %28 = call i32 (i32, i8*, i32, ...) @DPRINTFN(i32 8, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %18, i32 %21, i32 %27)
  %29 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %30 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %29, i32 0, i32 9
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call %struct.musbotg_softc* @MUSBOTG_BUS2SC(i32 %33)
  store %struct.musbotg_softc* %34, %struct.musbotg_softc** %4, align 8
  %35 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %36 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @UE_ADDR, align 4
  %39 = and i32 %37, %38
  store i32 %39, i32* %7, align 4
  %40 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %41 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %40, i32 0, i32 13
  %42 = load i32, i32* %41, align 8
  %43 = getelementptr inbounds %struct.musbotg_std_temp, %struct.musbotg_std_temp* %3, i32 0, i32 14
  store i32 %42, i32* %43, align 8
  %44 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %45 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %44, i32 0, i32 10
  %46 = load %struct.musbotg_td**, %struct.musbotg_td*** %45, align 8
  %47 = getelementptr inbounds %struct.musbotg_td*, %struct.musbotg_td** %46, i64 0
  %48 = load %struct.musbotg_td*, %struct.musbotg_td** %47, align 8
  store %struct.musbotg_td* %48, %struct.musbotg_td** %5, align 8
  %49 = load %struct.musbotg_td*, %struct.musbotg_td** %5, align 8
  %50 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %51 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %50, i32 0, i32 12
  store %struct.musbotg_td* %49, %struct.musbotg_td** %51, align 8
  %52 = load %struct.musbotg_td*, %struct.musbotg_td** %5, align 8
  %53 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %54 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %53, i32 0, i32 11
  store %struct.musbotg_td* %52, %struct.musbotg_td** %54, align 8
  %55 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %56 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %11, align 4
  %58 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %59 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %58, i32 0, i32 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @UE_XFERTYPE, align 4
  %66 = and i32 %64, %65
  store i32 %66, i32* %8, align 4
  %67 = getelementptr inbounds %struct.musbotg_std_temp, %struct.musbotg_std_temp* %3, i32 0, i32 10
  store i32* null, i32** %67, align 8
  %68 = getelementptr inbounds %struct.musbotg_std_temp, %struct.musbotg_std_temp* %3, i32 0, i32 8
  store %struct.musbotg_td* null, %struct.musbotg_td** %68, align 8
  %69 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %70 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %69, i32 0, i32 10
  %71 = load %struct.musbotg_td**, %struct.musbotg_td*** %70, align 8
  %72 = getelementptr inbounds %struct.musbotg_td*, %struct.musbotg_td** %71, i64 0
  %73 = load %struct.musbotg_td*, %struct.musbotg_td** %72, align 8
  %74 = getelementptr inbounds %struct.musbotg_std_temp, %struct.musbotg_std_temp* %3, i32 0, i32 13
  store %struct.musbotg_td* %73, %struct.musbotg_td** %74, align 8
  %75 = getelementptr inbounds %struct.musbotg_std_temp, %struct.musbotg_std_temp* %3, i32 0, i32 0
  store i64 0, i64* %75, align 8
  %76 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %77 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %76, i32 0, i32 5
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 6
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %1
  %82 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %83 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %82, i32 0, i32 5
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br label %87

87:                                               ; preds = %81, %1
  %88 = phi i1 [ true, %1 ], [ %86, %81 ]
  %89 = zext i1 %88 to i32
  %90 = getelementptr inbounds %struct.musbotg_std_temp, %struct.musbotg_std_temp* %3, i32 0, i32 1
  store i32 %89, i32* %90, align 8
  %91 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %92 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %91, i32 0, i32 5
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 0
  %96 = xor i1 %95, true
  %97 = zext i1 %96 to i32
  %98 = getelementptr inbounds %struct.musbotg_std_temp, %struct.musbotg_std_temp* %3, i32 0, i32 2
  store i32 %97, i32* %98, align 4
  %99 = getelementptr inbounds %struct.musbotg_std_temp, %struct.musbotg_std_temp* %3, i32 0, i32 3
  store i32 -1, i32* %99, align 8
  %100 = load i32, i32* %11, align 4
  %101 = getelementptr inbounds %struct.musbotg_std_temp, %struct.musbotg_std_temp* %3, i32 0, i32 4
  store i32 %100, i32* %101, align 4
  %102 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %103 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %102, i32 0, i32 9
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = getelementptr inbounds %struct.musbotg_std_temp, %struct.musbotg_std_temp* %3, i32 0, i32 12
  store i32 %108, i32* %109, align 4
  %110 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %111 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %110, i32 0, i32 9
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds %struct.musbotg_std_temp, %struct.musbotg_std_temp* %3, i32 0, i32 11
  store i32 %116, i32* %117, align 8
  %118 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %119 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %118, i32 0, i32 5
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @USB_MODE_HOST, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %182

124:                                              ; preds = %87
  %125 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %126 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %125, i32 0, i32 9
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %128, align 8
  %130 = call i32 @usbd_get_speed(%struct.TYPE_12__* %129)
  store i32 %130, i32* %9, align 4
  %131 = load i32, i32* %9, align 4
  switch i32 %131, label %141 [
    i32 128, label %132
    i32 130, label %135
    i32 129, label %138
  ]

132:                                              ; preds = %124
  %133 = load i32, i32* @MUSB2_MASK_TI_SPEED_LO, align 4
  %134 = getelementptr inbounds %struct.musbotg_std_temp, %struct.musbotg_std_temp* %3, i32 0, i32 5
  store i32 %133, i32* %134, align 8
  br label %145

135:                                              ; preds = %124
  %136 = load i32, i32* @MUSB2_MASK_TI_SPEED_FS, align 4
  %137 = getelementptr inbounds %struct.musbotg_std_temp, %struct.musbotg_std_temp* %3, i32 0, i32 5
  store i32 %136, i32* %137, align 8
  br label %145

138:                                              ; preds = %124
  %139 = load i32, i32* @MUSB2_MASK_TI_SPEED_HS, align 4
  %140 = getelementptr inbounds %struct.musbotg_std_temp, %struct.musbotg_std_temp* %3, i32 0, i32 5
  store i32 %139, i32* %140, align 8
  br label %145

141:                                              ; preds = %124
  %142 = getelementptr inbounds %struct.musbotg_std_temp, %struct.musbotg_std_temp* %3, i32 0, i32 5
  store i32 0, i32* %142, align 8
  %143 = load i32, i32* %9, align 4
  %144 = call i32 (i32, i8*, i32, ...) @DPRINTFN(i32 -1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %143)
  br label %145

145:                                              ; preds = %141, %138, %135, %132
  %146 = load i32, i32* %8, align 4
  switch i32 %146, label %167 [
    i32 133, label %147
    i32 131, label %152
    i32 134, label %157
    i32 132, label %162
  ]

147:                                              ; preds = %145
  %148 = load i32, i32* @MUSB2_MASK_TI_PROTO_CTRL, align 4
  %149 = getelementptr inbounds %struct.musbotg_std_temp, %struct.musbotg_std_temp* %3, i32 0, i32 5
  %150 = load i32, i32* %149, align 8
  %151 = or i32 %150, %148
  store i32 %151, i32* %149, align 8
  br label %170

152:                                              ; preds = %145
  %153 = load i32, i32* @MUSB2_MASK_TI_PROTO_ISOC, align 4
  %154 = getelementptr inbounds %struct.musbotg_std_temp, %struct.musbotg_std_temp* %3, i32 0, i32 5
  %155 = load i32, i32* %154, align 8
  %156 = or i32 %155, %153
  store i32 %156, i32* %154, align 8
  br label %170

157:                                              ; preds = %145
  %158 = load i32, i32* @MUSB2_MASK_TI_PROTO_BULK, align 4
  %159 = getelementptr inbounds %struct.musbotg_std_temp, %struct.musbotg_std_temp* %3, i32 0, i32 5
  %160 = load i32, i32* %159, align 8
  %161 = or i32 %160, %158
  store i32 %161, i32* %159, align 8
  br label %170

162:                                              ; preds = %145
  %163 = load i32, i32* @MUSB2_MASK_TI_PROTO_INTR, align 4
  %164 = getelementptr inbounds %struct.musbotg_std_temp, %struct.musbotg_std_temp* %3, i32 0, i32 5
  %165 = load i32, i32* %164, align 8
  %166 = or i32 %165, %163
  store i32 %166, i32* %164, align 8
  br label %170

167:                                              ; preds = %145
  %168 = load i32, i32* %8, align 4
  %169 = call i32 (i32, i8*, i32, ...) @DPRINTFN(i32 -1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %168)
  br label %170

170:                                              ; preds = %167, %162, %157, %152, %147
  %171 = load i32, i32* %7, align 4
  %172 = getelementptr inbounds %struct.musbotg_std_temp, %struct.musbotg_std_temp* %3, i32 0, i32 5
  %173 = load i32, i32* %172, align 8
  %174 = or i32 %173, %171
  store i32 %174, i32* %172, align 8
  %175 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %176 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %175, i32 0, i32 8
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.musbotg_td*, %struct.musbotg_td** %5, align 8
  %181 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %180, i32 0, i32 0
  store i32 %179, i32* %181, align 4
  br label %182

182:                                              ; preds = %170, %87
  %183 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %184 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %183, i32 0, i32 5
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %225

188:                                              ; preds = %182
  %189 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %190 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %189, i32 0, i32 5
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 4
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %224

194:                                              ; preds = %188
  %195 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %196 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %195, i32 0, i32 5
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @USB_MODE_DEVICE, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %201, label %203

201:                                              ; preds = %194
  %202 = getelementptr inbounds %struct.musbotg_std_temp, %struct.musbotg_std_temp* %3, i32 0, i32 9
  store i32* @musbotg_dev_ctrl_setup_rx, i32** %202, align 8
  br label %205

203:                                              ; preds = %194
  %204 = getelementptr inbounds %struct.musbotg_std_temp, %struct.musbotg_std_temp* %3, i32 0, i32 9
  store i32* @musbotg_host_ctrl_setup_tx, i32** %204, align 8
  br label %205

205:                                              ; preds = %203, %201
  %206 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %207 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %206, i32 0, i32 2
  %208 = load i64*, i64** %207, align 8
  %209 = getelementptr inbounds i64, i64* %208, i64 0
  %210 = load i64, i64* %209, align 8
  %211 = getelementptr inbounds %struct.musbotg_std_temp, %struct.musbotg_std_temp* %3, i32 0, i32 6
  store i64 %210, i64* %211, align 8
  %212 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %213 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %212, i32 0, i32 6
  %214 = load i32*, i32** %213, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 0
  %216 = getelementptr inbounds %struct.musbotg_std_temp, %struct.musbotg_std_temp* %3, i32 0, i32 10
  store i32* %215, i32** %216, align 8
  %217 = getelementptr inbounds %struct.musbotg_std_temp, %struct.musbotg_std_temp* %3, i32 0, i32 6
  %218 = load i64, i64* %217, align 8
  %219 = icmp ne i64 %218, 0
  %220 = zext i1 %219 to i64
  %221 = select i1 %219, i32 1, i32 0
  %222 = getelementptr inbounds %struct.musbotg_std_temp, %struct.musbotg_std_temp* %3, i32 0, i32 7
  store i32 %221, i32* %222, align 8
  %223 = call i32 @musbotg_setup_standard_chain_sub(%struct.musbotg_std_temp* %3)
  br label %224

224:                                              ; preds = %205, %188
  store i32 1, i32* %6, align 4
  br label %226

225:                                              ; preds = %182
  store i32 0, i32* %6, align 4
  br label %226

226:                                              ; preds = %225, %224
  store i32 0, i32* %10, align 4
  %227 = load i32, i32* %6, align 4
  %228 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %229 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 8
  %231 = icmp ne i32 %227, %230
  br i1 %231, label %232, label %311

232:                                              ; preds = %226
  %233 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %234 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* @UE_DIR_IN, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %232
  store i32 1, i32* %10, align 4
  br label %240

240:                                              ; preds = %239, %232
  %241 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %242 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %241, i32 0, i32 5
  %243 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @USB_MODE_HOST, align 8
  %246 = icmp eq i64 %244, %245
  br i1 %246, label %247, label %277

247:                                              ; preds = %240
  %248 = load i32, i32* %10, align 4
  %249 = icmp ne i32 %248, 0
  %250 = xor i1 %249, true
  %251 = zext i1 %250 to i32
  store i32 %251, i32* %10, align 4
  %252 = load i32, i32* %10, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %265

254:                                              ; preds = %247
  %255 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %256 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %255, i32 0, i32 5
  %257 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %256, i32 0, i32 2
  %258 = load i64, i64* %257, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %262

260:                                              ; preds = %254
  %261 = getelementptr inbounds %struct.musbotg_std_temp, %struct.musbotg_std_temp* %3, i32 0, i32 9
  store i32* @musbotg_host_ctrl_data_tx, i32** %261, align 8
  br label %264

262:                                              ; preds = %254
  %263 = getelementptr inbounds %struct.musbotg_std_temp, %struct.musbotg_std_temp* %3, i32 0, i32 9
  store i32* @musbotg_host_data_tx, i32** %263, align 8
  br label %264

264:                                              ; preds = %262, %260
  br label %276

265:                                              ; preds = %247
  %266 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %267 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %266, i32 0, i32 5
  %268 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %267, i32 0, i32 2
  %269 = load i64, i64* %268, align 8
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %273

271:                                              ; preds = %265
  %272 = getelementptr inbounds %struct.musbotg_std_temp, %struct.musbotg_std_temp* %3, i32 0, i32 9
  store i32* @musbotg_host_ctrl_data_rx, i32** %272, align 8
  br label %275

273:                                              ; preds = %265
  %274 = getelementptr inbounds %struct.musbotg_std_temp, %struct.musbotg_std_temp* %3, i32 0, i32 9
  store i32* @musbotg_host_data_rx, i32** %274, align 8
  br label %275

275:                                              ; preds = %273, %271
  br label %276

276:                                              ; preds = %275, %264
  br label %303

277:                                              ; preds = %240
  %278 = load i32, i32* %10, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %291

280:                                              ; preds = %277
  %281 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %282 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %281, i32 0, i32 5
  %283 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %282, i32 0, i32 2
  %284 = load i64, i64* %283, align 8
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %288

286:                                              ; preds = %280
  %287 = getelementptr inbounds %struct.musbotg_std_temp, %struct.musbotg_std_temp* %3, i32 0, i32 9
  store i32* @musbotg_dev_ctrl_data_tx, i32** %287, align 8
  br label %290

288:                                              ; preds = %280
  %289 = getelementptr inbounds %struct.musbotg_std_temp, %struct.musbotg_std_temp* %3, i32 0, i32 9
  store i32* @musbotg_dev_data_tx, i32** %289, align 8
  br label %290

290:                                              ; preds = %288, %286
  br label %302

291:                                              ; preds = %277
  %292 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %293 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %292, i32 0, i32 5
  %294 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %293, i32 0, i32 2
  %295 = load i64, i64* %294, align 8
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %299

297:                                              ; preds = %291
  %298 = getelementptr inbounds %struct.musbotg_std_temp, %struct.musbotg_std_temp* %3, i32 0, i32 9
  store i32* @musbotg_dev_ctrl_data_rx, i32** %298, align 8
  br label %301

299:                                              ; preds = %291
  %300 = getelementptr inbounds %struct.musbotg_std_temp, %struct.musbotg_std_temp* %3, i32 0, i32 9
  store i32* @musbotg_dev_data_rx, i32** %300, align 8
  br label %301

301:                                              ; preds = %299, %297
  br label %302

302:                                              ; preds = %301, %290
  br label %303

303:                                              ; preds = %302, %276
  %304 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %305 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %304, i32 0, i32 6
  %306 = load i32*, i32** %305, align 8
  %307 = load i32, i32* %6, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i32, i32* %306, i64 %308
  %310 = getelementptr inbounds %struct.musbotg_std_temp, %struct.musbotg_std_temp* %3, i32 0, i32 10
  store i32* %309, i32** %310, align 8
  br label %311

311:                                              ; preds = %303, %226
  br label %312

312:                                              ; preds = %397, %311
  %313 = load i32, i32* %6, align 4
  %314 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %315 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %314, i32 0, i32 3
  %316 = load i32, i32* %315, align 8
  %317 = icmp ne i32 %313, %316
  br i1 %317, label %318, label %398

318:                                              ; preds = %312
  %319 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %320 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %319, i32 0, i32 2
  %321 = load i64*, i64** %320, align 8
  %322 = load i32, i32* %6, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i64, i64* %321, i64 %323
  %325 = load i64, i64* %324, align 8
  %326 = getelementptr inbounds %struct.musbotg_std_temp, %struct.musbotg_std_temp* %3, i32 0, i32 6
  store i64 %325, i64* %326, align 8
  %327 = load i32, i32* %6, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %6, align 4
  %329 = load i32, i32* %6, align 4
  %330 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %331 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %330, i32 0, i32 3
  %332 = load i32, i32* %331, align 8
  %333 = icmp eq i32 %329, %332
  br i1 %333, label %334, label %352

334:                                              ; preds = %318
  %335 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %336 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %335, i32 0, i32 5
  %337 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %336, i32 0, i32 2
  %338 = load i64, i64* %337, align 8
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %340, label %349

340:                                              ; preds = %334
  %341 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %342 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %341, i32 0, i32 5
  %343 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %342, i32 0, i32 1
  %344 = load i64, i64* %343, align 8
  %345 = icmp ne i64 %344, 0
  br i1 %345, label %346, label %348

346:                                              ; preds = %340
  %347 = getelementptr inbounds %struct.musbotg_std_temp, %struct.musbotg_std_temp* %3, i32 0, i32 1
  store i32 0, i32* %347, align 8
  br label %348

348:                                              ; preds = %346, %340
  br label %351

349:                                              ; preds = %334
  %350 = getelementptr inbounds %struct.musbotg_std_temp, %struct.musbotg_std_temp* %3, i32 0, i32 1
  store i32 0, i32* %350, align 8
  br label %351

351:                                              ; preds = %349, %348
  br label %352

352:                                              ; preds = %351, %318
  %353 = getelementptr inbounds %struct.musbotg_std_temp, %struct.musbotg_std_temp* %3, i32 0, i32 6
  %354 = load i64, i64* %353, align 8
  %355 = icmp eq i64 %354, 0
  br i1 %355, label %356, label %358

356:                                              ; preds = %352
  %357 = getelementptr inbounds %struct.musbotg_std_temp, %struct.musbotg_std_temp* %3, i32 0, i32 7
  store i32 0, i32* %357, align 8
  br label %376

358:                                              ; preds = %352
  %359 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %360 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %359, i32 0, i32 5
  %361 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %360, i32 0, i32 3
  %362 = load i64, i64* %361, align 8
  %363 = icmp ne i64 %362, 0
  br i1 %363, label %364, label %366

364:                                              ; preds = %358
  %365 = getelementptr inbounds %struct.musbotg_std_temp, %struct.musbotg_std_temp* %3, i32 0, i32 7
  store i32 1, i32* %365, align 8
  br label %375

366:                                              ; preds = %358
  %367 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %368 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %367, i32 0, i32 7
  %369 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %368, i32 0, i32 0
  %370 = load i64, i64* %369, align 8
  %371 = icmp ne i64 %370, 0
  %372 = zext i1 %371 to i64
  %373 = select i1 %371, i32 0, i32 1
  %374 = getelementptr inbounds %struct.musbotg_std_temp, %struct.musbotg_std_temp* %3, i32 0, i32 7
  store i32 %373, i32* %374, align 8
  br label %375

375:                                              ; preds = %366, %364
  br label %376

376:                                              ; preds = %375, %356
  %377 = call i32 @musbotg_setup_standard_chain_sub(%struct.musbotg_std_temp* %3)
  %378 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %379 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %378, i32 0, i32 5
  %380 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %379, i32 0, i32 3
  %381 = load i64, i64* %380, align 8
  %382 = icmp ne i64 %381, 0
  br i1 %382, label %383, label %389

383:                                              ; preds = %376
  %384 = getelementptr inbounds %struct.musbotg_std_temp, %struct.musbotg_std_temp* %3, i32 0, i32 6
  %385 = load i64, i64* %384, align 8
  %386 = getelementptr inbounds %struct.musbotg_std_temp, %struct.musbotg_std_temp* %3, i32 0, i32 0
  %387 = load i64, i64* %386, align 8
  %388 = add nsw i64 %387, %385
  store i64 %388, i64* %386, align 8
  br label %397

389:                                              ; preds = %376
  %390 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %391 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %390, i32 0, i32 6
  %392 = load i32*, i32** %391, align 8
  %393 = load i32, i32* %6, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds i32, i32* %392, i64 %394
  %396 = getelementptr inbounds %struct.musbotg_std_temp, %struct.musbotg_std_temp* %3, i32 0, i32 10
  store i32* %395, i32** %396, align 8
  br label %397

397:                                              ; preds = %389, %383
  br label %312

398:                                              ; preds = %312
  %399 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %400 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %399, i32 0, i32 5
  %401 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %400, i32 0, i32 2
  %402 = load i64, i64* %401, align 8
  %403 = icmp ne i64 %402, 0
  br i1 %403, label %404, label %443

404:                                              ; preds = %398
  %405 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %406 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %405, i32 0, i32 6
  %407 = load i32*, i32** %406, align 8
  %408 = getelementptr inbounds i32, i32* %407, i64 0
  %409 = getelementptr inbounds %struct.musbotg_std_temp, %struct.musbotg_std_temp* %3, i32 0, i32 10
  store i32* %408, i32** %409, align 8
  %410 = getelementptr inbounds %struct.musbotg_std_temp, %struct.musbotg_std_temp* %3, i32 0, i32 6
  store i64 0, i64* %410, align 8
  %411 = getelementptr inbounds %struct.musbotg_std_temp, %struct.musbotg_std_temp* %3, i32 0, i32 7
  store i32 0, i32* %411, align 8
  %412 = getelementptr inbounds %struct.musbotg_std_temp, %struct.musbotg_std_temp* %3, i32 0, i32 1
  store i32 0, i32* %412, align 8
  %413 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %414 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %413, i32 0, i32 5
  %415 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %414, i32 0, i32 1
  %416 = load i64, i64* %415, align 8
  %417 = icmp ne i64 %416, 0
  br i1 %417, label %442, label %418

418:                                              ; preds = %404
  %419 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %420 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %419, i32 0, i32 0
  %421 = load i64, i64* %420, align 8
  %422 = load i64, i64* @MUSB2_DEVICE_MODE, align 8
  %423 = icmp eq i64 %421, %422
  br i1 %423, label %424, label %426

424:                                              ; preds = %418
  %425 = getelementptr inbounds %struct.musbotg_std_temp, %struct.musbotg_std_temp* %3, i32 0, i32 9
  store i32* @musbotg_dev_ctrl_status, i32** %425, align 8
  br label %440

426:                                              ; preds = %418
  %427 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %428 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %427, i32 0, i32 1
  %429 = load i32, i32* %428, align 4
  %430 = load i32, i32* @UE_DIR_IN, align 4
  %431 = and i32 %429, %430
  %432 = icmp ne i32 %431, 0
  br i1 %432, label %433, label %436

433:                                              ; preds = %426
  %434 = load i32*, i32** @musbotg_host_ctrl_status_tx, align 8
  %435 = getelementptr inbounds %struct.musbotg_std_temp, %struct.musbotg_std_temp* %3, i32 0, i32 9
  store i32* %434, i32** %435, align 8
  br label %439

436:                                              ; preds = %426
  %437 = load i32*, i32** @musbotg_host_ctrl_status_rx, align 8
  %438 = getelementptr inbounds %struct.musbotg_std_temp, %struct.musbotg_std_temp* %3, i32 0, i32 9
  store i32* %437, i32** %438, align 8
  br label %439

439:                                              ; preds = %436, %433
  br label %440

440:                                              ; preds = %439, %424
  %441 = call i32 @musbotg_setup_standard_chain_sub(%struct.musbotg_std_temp* %3)
  br label %442

442:                                              ; preds = %440, %404
  br label %443

443:                                              ; preds = %442, %398
  %444 = getelementptr inbounds %struct.musbotg_std_temp, %struct.musbotg_std_temp* %3, i32 0, i32 8
  %445 = load %struct.musbotg_td*, %struct.musbotg_td** %444, align 8
  store %struct.musbotg_td* %445, %struct.musbotg_td** %5, align 8
  %446 = load %struct.musbotg_td*, %struct.musbotg_td** %5, align 8
  %447 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %448 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %447, i32 0, i32 4
  store %struct.musbotg_td* %446, %struct.musbotg_td** %448, align 8
  ret void
}

declare dso_local i32 @DPRINTFN(i32, i8*, i32, ...) #1

declare dso_local i32 @UE_GET_ADDR(i32) #1

declare dso_local i32 @usbd_get_speed(%struct.TYPE_12__*) #1

declare dso_local %struct.musbotg_softc* @MUSBOTG_BUS2SC(i32) #1

declare dso_local i32 @musbotg_setup_standard_chain_sub(%struct.musbotg_std_temp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
