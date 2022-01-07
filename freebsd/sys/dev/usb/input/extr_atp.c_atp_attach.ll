; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_atp.c_atp_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_atp.c_atp_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atp_softc = type { i64, i32, i32, i32, i64, i64, %struct.TYPE_6__, %struct.TYPE_5__, i32, i32, i32, i32, i32*, i32 }
%struct.TYPE_6__ = type { i32, i64, i64, i32*, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i64, i32, i32, i32 }
%struct.usb_attach_arg = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@ATP_LLEVEL_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"sc=%p\0A\00", align 1
@M_TEMP = common dso_local global i32 0, align 4
@USB_ERR_NORMAL_COMPLETION = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@hid_input = common dso_local global i32 0, align 4
@ATP_SENSOR_DATA_BUF_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"atp_attach: datalength invalid or too large: %d\0A\00", align 1
@RAW_SENSOR_MODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"failed to set mode to 'RAW_SENSOR' (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"atpmtx\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@MTX_RECURSE = common dso_local global i32 0, align 4
@fg_dev_params = common dso_local global i32* null, align 8
@fg_interpret_sensor_data = common dso_local global i32 0, align 4
@wsp_dev_params = common dso_local global i32* null, align 8
@wsp_interpret_sensor_data = common dso_local global i32 0, align 4
@atp_xfer_config = common dso_local global i32 0, align 4
@ATP_N_TRANSFER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"error=%s\0A\00", align 1
@atp_fifo_methods = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_OPERATOR = common dso_local global i32 0, align 4
@MOUSE_IF_USB = common dso_local global i32 0, align 4
@MOUSE_PAD = common dso_local global i32 0, align 4
@MOUSE_MODEL_GENERIC = common dso_local global i32 0, align 4
@MOUSE_PROTO_MSC = common dso_local global i32 0, align 4
@MOUSE_RES_UNKNOWN = common dso_local global i32 0, align 4
@MOUSE_MSC_PACKETSIZE = common dso_local global i32 0, align 4
@MOUSE_MSC_SYNCMASK = common dso_local global i32 0, align 4
@MOUSE_MSC_SYNC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @atp_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atp_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.atp_softc*, align 8
  %5 = alloca %struct.usb_attach_arg*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.atp_softc* @device_get_softc(i32 %10)
  store %struct.atp_softc* %11, %struct.atp_softc** %4, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call %struct.usb_attach_arg* @device_get_ivars(i32 %12)
  store %struct.usb_attach_arg* %13, %struct.usb_attach_arg** %5, align 8
  store i8* null, i8** %7, align 8
  %14 = load i32, i32* @ATP_LLEVEL_INFO, align 4
  %15 = load %struct.atp_softc*, %struct.atp_softc** %4, align 8
  %16 = call i32 @DPRINTFN(i32 %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.atp_softc* %15)
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.atp_softc*, %struct.atp_softc** %4, align 8
  %19 = getelementptr inbounds %struct.atp_softc, %struct.atp_softc* %18, i32 0, i32 13
  store i32 %17, i32* %19, align 8
  %20 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %21 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.atp_softc*, %struct.atp_softc** %4, align 8
  %24 = getelementptr inbounds %struct.atp_softc, %struct.atp_softc* %23, i32 0, i32 9
  store i32 %22, i32* %24, align 4
  %25 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %26 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @M_TEMP, align 4
  %29 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %30 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @usbd_req_get_hid_desc(i32 %27, i32* null, i8** %7, i32* %8, i32 %28, i32 %32)
  %34 = load i64, i64* @USB_ERR_NORMAL_COMPLETION, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %1
  %37 = load i32, i32* @ENXIO, align 4
  store i32 %37, i32* %2, align 4
  br label %219

38:                                               ; preds = %1
  %39 = load i8*, i8** %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @hid_input, align 4
  %42 = call i64 @hid_report_size(i8* %39, i32 %40, i32 %41, i32* null)
  %43 = load %struct.atp_softc*, %struct.atp_softc** %4, align 8
  %44 = getelementptr inbounds %struct.atp_softc, %struct.atp_softc* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = load i32, i32* @M_TEMP, align 4
  %47 = call i32 @free(i8* %45, i32 %46)
  %48 = load %struct.atp_softc*, %struct.atp_softc** %4, align 8
  %49 = getelementptr inbounds %struct.atp_softc, %struct.atp_softc* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp sle i64 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %38
  %53 = load %struct.atp_softc*, %struct.atp_softc** %4, align 8
  %54 = getelementptr inbounds %struct.atp_softc, %struct.atp_softc* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @ATP_SENSOR_DATA_BUF_MAX, align 8
  %57 = icmp sgt i64 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %52, %38
  %59 = load %struct.atp_softc*, %struct.atp_softc** %4, align 8
  %60 = getelementptr inbounds %struct.atp_softc, %struct.atp_softc* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @DPRINTF(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i64 %61)
  %63 = load i32, i32* @ENXIO, align 4
  store i32 %63, i32* %2, align 4
  br label %219

64:                                               ; preds = %52
  %65 = load %struct.atp_softc*, %struct.atp_softc** %4, align 8
  %66 = load i32, i32* @RAW_SENSOR_MODE, align 4
  %67 = call i64 @atp_set_device_mode(%struct.atp_softc* %65, i32 %66)
  store i64 %67, i64* %6, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load i64, i64* %6, align 8
  %71 = call i32 @DPRINTF(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i64 %70)
  %72 = load i32, i32* @ENXIO, align 4
  store i32 %72, i32* %2, align 4
  br label %219

73:                                               ; preds = %64
  %74 = load %struct.atp_softc*, %struct.atp_softc** %4, align 8
  %75 = getelementptr inbounds %struct.atp_softc, %struct.atp_softc* %74, i32 0, i32 2
  %76 = load i32, i32* @MTX_DEF, align 4
  %77 = load i32, i32* @MTX_RECURSE, align 4
  %78 = or i32 %76, %77
  %79 = call i32 @mtx_init(i32* %75, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32* null, i32 %78)
  %80 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %81 = call i64 @USB_GET_DRIVER_INFO(%struct.usb_attach_arg* %80)
  store i64 %81, i64* %9, align 8
  %82 = load i64, i64* %9, align 8
  %83 = call i32 @DECODE_FAMILY_FROM_DRIVER_INFO(i64 %82)
  %84 = load %struct.atp_softc*, %struct.atp_softc** %4, align 8
  %85 = getelementptr inbounds %struct.atp_softc, %struct.atp_softc* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 8
  %86 = load %struct.atp_softc*, %struct.atp_softc** %4, align 8
  %87 = getelementptr inbounds %struct.atp_softc, %struct.atp_softc* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  switch i32 %88, label %109 [
    i32 129, label %89
    i32 128, label %99
  ]

89:                                               ; preds = %73
  %90 = load i32*, i32** @fg_dev_params, align 8
  %91 = load i64, i64* %9, align 8
  %92 = call i64 @DECODE_PRODUCT_FROM_DRIVER_INFO(i64 %91)
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load %struct.atp_softc*, %struct.atp_softc** %4, align 8
  %95 = getelementptr inbounds %struct.atp_softc, %struct.atp_softc* %94, i32 0, i32 12
  store i32* %93, i32** %95, align 8
  %96 = load i32, i32* @fg_interpret_sensor_data, align 4
  %97 = load %struct.atp_softc*, %struct.atp_softc** %4, align 8
  %98 = getelementptr inbounds %struct.atp_softc, %struct.atp_softc* %97, i32 0, i32 11
  store i32 %96, i32* %98, align 4
  br label %110

99:                                               ; preds = %73
  %100 = load i32*, i32** @wsp_dev_params, align 8
  %101 = load i64, i64* %9, align 8
  %102 = call i64 @DECODE_PRODUCT_FROM_DRIVER_INFO(i64 %101)
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load %struct.atp_softc*, %struct.atp_softc** %4, align 8
  %105 = getelementptr inbounds %struct.atp_softc, %struct.atp_softc* %104, i32 0, i32 12
  store i32* %103, i32** %105, align 8
  %106 = load i32, i32* @wsp_interpret_sensor_data, align 4
  %107 = load %struct.atp_softc*, %struct.atp_softc** %4, align 8
  %108 = getelementptr inbounds %struct.atp_softc, %struct.atp_softc* %107, i32 0, i32 11
  store i32 %106, i32* %108, align 4
  br label %110

109:                                              ; preds = %73
  br label %215

110:                                              ; preds = %99, %89
  %111 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %112 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %115 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load %struct.atp_softc*, %struct.atp_softc** %4, align 8
  %118 = getelementptr inbounds %struct.atp_softc, %struct.atp_softc* %117, i32 0, i32 10
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @atp_xfer_config, align 4
  %121 = load i32, i32* @ATP_N_TRANSFER, align 4
  %122 = load %struct.atp_softc*, %struct.atp_softc** %4, align 8
  %123 = load %struct.atp_softc*, %struct.atp_softc** %4, align 8
  %124 = getelementptr inbounds %struct.atp_softc, %struct.atp_softc* %123, i32 0, i32 2
  %125 = call i64 @usbd_transfer_setup(i32 %113, i32* %116, i32 %119, i32 %120, i32 %121, %struct.atp_softc* %122, i32* %124)
  store i64 %125, i64* %6, align 8
  %126 = load i64, i64* %6, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %110
  %129 = load i64, i64* %6, align 8
  %130 = call i64 @usbd_errstr(i64 %129)
  %131 = call i32 @DPRINTF(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i64 %130)
  br label %215

132:                                              ; preds = %110
  %133 = load %struct.atp_softc*, %struct.atp_softc** %4, align 8
  %134 = getelementptr inbounds %struct.atp_softc, %struct.atp_softc* %133, i32 0, i32 9
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.atp_softc*, %struct.atp_softc** %4, align 8
  %137 = load %struct.atp_softc*, %struct.atp_softc** %4, align 8
  %138 = getelementptr inbounds %struct.atp_softc, %struct.atp_softc* %137, i32 0, i32 2
  %139 = load %struct.atp_softc*, %struct.atp_softc** %4, align 8
  %140 = getelementptr inbounds %struct.atp_softc, %struct.atp_softc* %139, i32 0, i32 8
  %141 = load i32, i32* %3, align 4
  %142 = call i32 @device_get_unit(i32 %141)
  %143 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %144 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @UID_ROOT, align 4
  %148 = load i32, i32* @GID_OPERATOR, align 4
  %149 = call i64 @usb_fifo_attach(i32 %135, %struct.atp_softc* %136, i32* %138, i32* @atp_fifo_methods, i32* %140, i32 %142, i32 -1, i32 %146, i32 %147, i32 %148, i32 420)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %132
  br label %215

152:                                              ; preds = %132
  %153 = load i32, i32* %3, align 4
  %154 = call i32 @device_set_usb_desc(i32 %153)
  %155 = load %struct.atp_softc*, %struct.atp_softc** %4, align 8
  %156 = getelementptr inbounds %struct.atp_softc, %struct.atp_softc* %155, i32 0, i32 7
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 0
  store i32 3, i32* %157, align 8
  %158 = load i32, i32* @MOUSE_IF_USB, align 4
  %159 = load %struct.atp_softc*, %struct.atp_softc** %4, align 8
  %160 = getelementptr inbounds %struct.atp_softc, %struct.atp_softc* %159, i32 0, i32 7
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 4
  store i32 %158, i32* %161, align 8
  %162 = load i32, i32* @MOUSE_PAD, align 4
  %163 = load %struct.atp_softc*, %struct.atp_softc** %4, align 8
  %164 = getelementptr inbounds %struct.atp_softc, %struct.atp_softc* %163, i32 0, i32 7
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 3
  store i32 %162, i32* %165, align 4
  %166 = load i32, i32* @MOUSE_MODEL_GENERIC, align 4
  %167 = load %struct.atp_softc*, %struct.atp_softc** %4, align 8
  %168 = getelementptr inbounds %struct.atp_softc, %struct.atp_softc* %167, i32 0, i32 7
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 2
  store i32 %166, i32* %169, align 8
  %170 = load %struct.atp_softc*, %struct.atp_softc** %4, align 8
  %171 = getelementptr inbounds %struct.atp_softc, %struct.atp_softc* %170, i32 0, i32 7
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 1
  store i64 0, i64* %172, align 8
  %173 = load i32, i32* @MOUSE_PROTO_MSC, align 4
  %174 = load %struct.atp_softc*, %struct.atp_softc** %4, align 8
  %175 = getelementptr inbounds %struct.atp_softc, %struct.atp_softc* %174, i32 0, i32 6
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 6
  store i32 %173, i32* %176, align 8
  %177 = load %struct.atp_softc*, %struct.atp_softc** %4, align 8
  %178 = getelementptr inbounds %struct.atp_softc, %struct.atp_softc* %177, i32 0, i32 6
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 0
  store i32 -1, i32* %179, align 8
  %180 = load i32, i32* @MOUSE_RES_UNKNOWN, align 4
  %181 = load %struct.atp_softc*, %struct.atp_softc** %4, align 8
  %182 = getelementptr inbounds %struct.atp_softc, %struct.atp_softc* %181, i32 0, i32 6
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 5
  store i32 %180, i32* %183, align 4
  %184 = load i32, i32* @MOUSE_MSC_PACKETSIZE, align 4
  %185 = load %struct.atp_softc*, %struct.atp_softc** %4, align 8
  %186 = getelementptr inbounds %struct.atp_softc, %struct.atp_softc* %185, i32 0, i32 6
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 4
  store i32 %184, i32* %187, align 8
  %188 = load i32, i32* @MOUSE_MSC_SYNCMASK, align 4
  %189 = load %struct.atp_softc*, %struct.atp_softc** %4, align 8
  %190 = getelementptr inbounds %struct.atp_softc, %struct.atp_softc* %189, i32 0, i32 6
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 3
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 0
  store i32 %188, i32* %193, align 4
  %194 = load i32, i32* @MOUSE_MSC_SYNC, align 4
  %195 = load %struct.atp_softc*, %struct.atp_softc** %4, align 8
  %196 = getelementptr inbounds %struct.atp_softc, %struct.atp_softc* %195, i32 0, i32 6
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 3
  %198 = load i32*, i32** %197, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 1
  store i32 %194, i32* %199, align 4
  %200 = load %struct.atp_softc*, %struct.atp_softc** %4, align 8
  %201 = getelementptr inbounds %struct.atp_softc, %struct.atp_softc* %200, i32 0, i32 6
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 2
  store i64 0, i64* %202, align 8
  %203 = load %struct.atp_softc*, %struct.atp_softc** %4, align 8
  %204 = getelementptr inbounds %struct.atp_softc, %struct.atp_softc* %203, i32 0, i32 6
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 1
  store i64 0, i64* %205, align 8
  %206 = load %struct.atp_softc*, %struct.atp_softc** %4, align 8
  %207 = getelementptr inbounds %struct.atp_softc, %struct.atp_softc* %206, i32 0, i32 5
  store i64 0, i64* %207, align 8
  %208 = load %struct.atp_softc*, %struct.atp_softc** %4, align 8
  %209 = getelementptr inbounds %struct.atp_softc, %struct.atp_softc* %208, i32 0, i32 4
  store i64 0, i64* %209, align 8
  %210 = load %struct.atp_softc*, %struct.atp_softc** %4, align 8
  %211 = getelementptr inbounds %struct.atp_softc, %struct.atp_softc* %210, i32 0, i32 3
  %212 = load %struct.atp_softc*, %struct.atp_softc** %4, align 8
  %213 = getelementptr inbounds %struct.atp_softc, %struct.atp_softc* %212, i32 0, i32 2
  %214 = call i32 @callout_init_mtx(i32* %211, i32* %213, i32 0)
  store i32 0, i32* %2, align 4
  br label %219

215:                                              ; preds = %151, %128, %109
  %216 = load i32, i32* %3, align 4
  %217 = call i32 @atp_detach(i32 %216)
  %218 = load i32, i32* @ENOMEM, align 4
  store i32 %218, i32* %2, align 4
  br label %219

219:                                              ; preds = %215, %152, %69, %58, %36
  %220 = load i32, i32* %2, align 4
  ret i32 %220
}

declare dso_local %struct.atp_softc* @device_get_softc(i32) #1

declare dso_local %struct.usb_attach_arg* @device_get_ivars(i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, %struct.atp_softc*) #1

declare dso_local i64 @usbd_req_get_hid_desc(i32, i32*, i8**, i32*, i32, i32) #1

declare dso_local i64 @hid_report_size(i8*, i32, i32, i32*) #1

declare dso_local i32 @free(i8*, i32) #1

declare dso_local i32 @DPRINTF(i8*, i64) #1

declare dso_local i64 @atp_set_device_mode(%struct.atp_softc*, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i64 @USB_GET_DRIVER_INFO(%struct.usb_attach_arg*) #1

declare dso_local i32 @DECODE_FAMILY_FROM_DRIVER_INFO(i64) #1

declare dso_local i64 @DECODE_PRODUCT_FROM_DRIVER_INFO(i64) #1

declare dso_local i64 @usbd_transfer_setup(i32, i32*, i32, i32, i32, %struct.atp_softc*, i32*) #1

declare dso_local i64 @usbd_errstr(i64) #1

declare dso_local i64 @usb_fifo_attach(i32, %struct.atp_softc*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @device_set_usb_desc(i32) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32 @atp_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
