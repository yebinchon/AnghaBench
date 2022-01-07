; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_wsp.c_wsp_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_wsp.c_wsp_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wsp_softc = type { i64, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, i32, i32, i32, i32, i64 }
%struct.TYPE_6__ = type { i32, i32*, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.usb_attach_arg = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@WSP_LLEVEL_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"sc=%p\0A\00", align 1
@M_TEMP = common dso_local global i32 0, align 4
@USB_ERR_NORMAL_COMPLETION = common dso_local global i64 0, align 8
@hid_input = common dso_local global i32 0, align 4
@WSP_BUFFER_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"Invalid datalength or too big datalength: %d\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@wsp_dev_params = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to set mode to HID MODE (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"failed to set mode to RAW MODE (%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"wspmtx\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@MTX_RECURSE = common dso_local global i32 0, align 4
@wsp_config = common dso_local global i32 0, align 4
@WSP_N_TRANSFER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"error=%s\0A\00", align 1
@wsp_fifo_methods = common dso_local global i32 0, align 4
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
@WSP_UNTOUCH = common dso_local global i32 0, align 4
@WSP_SCR_NONE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @wsp_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wsp_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.wsp_softc*, align 8
  %5 = alloca %struct.usb_attach_arg*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.wsp_softc* @device_get_softc(i32 %9)
  store %struct.wsp_softc* %10, %struct.wsp_softc** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.usb_attach_arg* @device_get_ivars(i32 %11)
  store %struct.usb_attach_arg* %12, %struct.usb_attach_arg** %5, align 8
  store i8* null, i8** %7, align 8
  %13 = load i32, i32* @WSP_LLEVEL_INFO, align 4
  %14 = load %struct.wsp_softc*, %struct.wsp_softc** %4, align 8
  %15 = call i32 @DPRINTFN(i32 %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.wsp_softc* %14)
  %16 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %17 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @M_TEMP, align 4
  %20 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %21 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @usbd_req_get_hid_desc(i32 %18, i32* null, i8** %7, i32* %8, i32 %19, i32 %23)
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @USB_ERR_NORMAL_COMPLETION, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %55

28:                                               ; preds = %1
  %29 = load i8*, i8** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @hid_input, align 4
  %32 = call i64 @hid_report_size(i8* %29, i32 %30, i32 %31, i32* null)
  %33 = load %struct.wsp_softc*, %struct.wsp_softc** %4, align 8
  %34 = getelementptr inbounds %struct.wsp_softc, %struct.wsp_softc* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = load i32, i32* @M_TEMP, align 4
  %37 = call i32 @free(i8* %35, i32 %36)
  %38 = load %struct.wsp_softc*, %struct.wsp_softc** %4, align 8
  %39 = getelementptr inbounds %struct.wsp_softc, %struct.wsp_softc* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sle i64 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %28
  %43 = load %struct.wsp_softc*, %struct.wsp_softc** %4, align 8
  %44 = getelementptr inbounds %struct.wsp_softc, %struct.wsp_softc* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @WSP_BUFFER_MAX, align 8
  %47 = icmp sgt i64 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %42, %28
  %49 = load %struct.wsp_softc*, %struct.wsp_softc** %4, align 8
  %50 = getelementptr inbounds %struct.wsp_softc, %struct.wsp_softc* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @DPRINTF(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 %51)
  %53 = load i32, i32* @ENXIO, align 4
  store i32 %53, i32* %2, align 4
  br label %191

54:                                               ; preds = %42
  br label %57

55:                                               ; preds = %1
  %56 = load i32, i32* @ENXIO, align 4
  store i32 %56, i32* %2, align 4
  br label %191

57:                                               ; preds = %54
  %58 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %59 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.wsp_softc*, %struct.wsp_softc** %4, align 8
  %62 = getelementptr inbounds %struct.wsp_softc, %struct.wsp_softc* %61, i32 0, i32 7
  store i32 %60, i32* %62, align 8
  %63 = load i64, i64* @wsp_dev_params, align 8
  %64 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %65 = call i64 @USB_GET_DRIVER_INFO(%struct.usb_attach_arg* %64)
  %66 = add nsw i64 %63, %65
  %67 = load %struct.wsp_softc*, %struct.wsp_softc** %4, align 8
  %68 = getelementptr inbounds %struct.wsp_softc, %struct.wsp_softc* %67, i32 0, i32 9
  store i64 %66, i64* %68, align 8
  %69 = load %struct.wsp_softc*, %struct.wsp_softc** %4, align 8
  %70 = call i64 @wsp_set_device_mode(%struct.wsp_softc* %69, i32 0)
  store i64 %70, i64* %6, align 8
  %71 = load i64, i64* %6, align 8
  %72 = load i64, i64* @USB_ERR_NORMAL_COMPLETION, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %57
  %75 = load i64, i64* %6, align 8
  %76 = call i32 @DPRINTF(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i64 %75)
  %77 = load i32, i32* @ENXIO, align 4
  store i32 %77, i32* %2, align 4
  br label %191

78:                                               ; preds = %57
  %79 = load %struct.wsp_softc*, %struct.wsp_softc** %4, align 8
  %80 = call i64 @wsp_set_device_mode(%struct.wsp_softc* %79, i32 1)
  store i64 %80, i64* %6, align 8
  %81 = load i64, i64* %6, align 8
  %82 = load i64, i64* @USB_ERR_NORMAL_COMPLETION, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %78
  %85 = load i64, i64* %6, align 8
  %86 = call i32 @DPRINTF(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i64 %85)
  %87 = load i32, i32* @ENXIO, align 4
  store i32 %87, i32* %2, align 4
  br label %191

88:                                               ; preds = %78
  %89 = load %struct.wsp_softc*, %struct.wsp_softc** %4, align 8
  %90 = getelementptr inbounds %struct.wsp_softc, %struct.wsp_softc* %89, i32 0, i32 6
  %91 = load i32, i32* @MTX_DEF, align 4
  %92 = load i32, i32* @MTX_RECURSE, align 4
  %93 = or i32 %91, %92
  %94 = call i32 @mtx_init(i32* %90, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32* null, i32 %93)
  %95 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %96 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %99 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load %struct.wsp_softc*, %struct.wsp_softc** %4, align 8
  %102 = getelementptr inbounds %struct.wsp_softc, %struct.wsp_softc* %101, i32 0, i32 8
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @wsp_config, align 4
  %105 = load i32, i32* @WSP_N_TRANSFER, align 4
  %106 = load %struct.wsp_softc*, %struct.wsp_softc** %4, align 8
  %107 = load %struct.wsp_softc*, %struct.wsp_softc** %4, align 8
  %108 = getelementptr inbounds %struct.wsp_softc, %struct.wsp_softc* %107, i32 0, i32 6
  %109 = call i64 @usbd_transfer_setup(i32 %97, i32* %100, i32 %103, i32 %104, i32 %105, %struct.wsp_softc* %106, i32* %108)
  store i64 %109, i64* %6, align 8
  %110 = load i64, i64* %6, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %88
  %113 = load i64, i64* %6, align 8
  %114 = call i64 @usbd_errstr(i64 %113)
  %115 = call i32 @DPRINTF(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i64 %114)
  br label %187

116:                                              ; preds = %88
  %117 = load %struct.wsp_softc*, %struct.wsp_softc** %4, align 8
  %118 = getelementptr inbounds %struct.wsp_softc, %struct.wsp_softc* %117, i32 0, i32 7
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.wsp_softc*, %struct.wsp_softc** %4, align 8
  %121 = load %struct.wsp_softc*, %struct.wsp_softc** %4, align 8
  %122 = getelementptr inbounds %struct.wsp_softc, %struct.wsp_softc* %121, i32 0, i32 6
  %123 = load %struct.wsp_softc*, %struct.wsp_softc** %4, align 8
  %124 = getelementptr inbounds %struct.wsp_softc, %struct.wsp_softc* %123, i32 0, i32 5
  %125 = load i32, i32* %3, align 4
  %126 = call i32 @device_get_unit(i32 %125)
  %127 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %128 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @UID_ROOT, align 4
  %132 = load i32, i32* @GID_OPERATOR, align 4
  %133 = call i64 @usb_fifo_attach(i32 %119, %struct.wsp_softc* %120, i32* %122, i32* @wsp_fifo_methods, i32* %124, i32 %126, i32 -1, i32 %130, i32 %131, i32 %132, i32 420)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %116
  br label %187

136:                                              ; preds = %116
  %137 = load i32, i32* %3, align 4
  %138 = call i32 @device_set_usb_desc(i32 %137)
  %139 = load %struct.wsp_softc*, %struct.wsp_softc** %4, align 8
  %140 = getelementptr inbounds %struct.wsp_softc, %struct.wsp_softc* %139, i32 0, i32 4
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  store i32 3, i32* %141, align 8
  %142 = load i32, i32* @MOUSE_IF_USB, align 4
  %143 = load %struct.wsp_softc*, %struct.wsp_softc** %4, align 8
  %144 = getelementptr inbounds %struct.wsp_softc, %struct.wsp_softc* %143, i32 0, i32 4
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 3
  store i32 %142, i32* %145, align 4
  %146 = load i32, i32* @MOUSE_PAD, align 4
  %147 = load %struct.wsp_softc*, %struct.wsp_softc** %4, align 8
  %148 = getelementptr inbounds %struct.wsp_softc, %struct.wsp_softc* %147, i32 0, i32 4
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 2
  store i32 %146, i32* %149, align 8
  %150 = load i32, i32* @MOUSE_MODEL_GENERIC, align 4
  %151 = load %struct.wsp_softc*, %struct.wsp_softc** %4, align 8
  %152 = getelementptr inbounds %struct.wsp_softc, %struct.wsp_softc* %151, i32 0, i32 4
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 1
  store i32 %150, i32* %153, align 4
  %154 = load i32, i32* @MOUSE_PROTO_MSC, align 4
  %155 = load %struct.wsp_softc*, %struct.wsp_softc** %4, align 8
  %156 = getelementptr inbounds %struct.wsp_softc, %struct.wsp_softc* %155, i32 0, i32 3
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 4
  store i32 %154, i32* %157, align 8
  %158 = load %struct.wsp_softc*, %struct.wsp_softc** %4, align 8
  %159 = getelementptr inbounds %struct.wsp_softc, %struct.wsp_softc* %158, i32 0, i32 3
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  store i32 -1, i32* %160, align 8
  %161 = load i32, i32* @MOUSE_RES_UNKNOWN, align 4
  %162 = load %struct.wsp_softc*, %struct.wsp_softc** %4, align 8
  %163 = getelementptr inbounds %struct.wsp_softc, %struct.wsp_softc* %162, i32 0, i32 3
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 3
  store i32 %161, i32* %164, align 4
  %165 = load i32, i32* @MOUSE_MSC_PACKETSIZE, align 4
  %166 = load %struct.wsp_softc*, %struct.wsp_softc** %4, align 8
  %167 = getelementptr inbounds %struct.wsp_softc, %struct.wsp_softc* %166, i32 0, i32 3
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 2
  store i32 %165, i32* %168, align 8
  %169 = load i32, i32* @MOUSE_MSC_SYNCMASK, align 4
  %170 = load %struct.wsp_softc*, %struct.wsp_softc** %4, align 8
  %171 = getelementptr inbounds %struct.wsp_softc, %struct.wsp_softc* %170, i32 0, i32 3
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 1
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 0
  store i32 %169, i32* %174, align 4
  %175 = load i32, i32* @MOUSE_MSC_SYNC, align 4
  %176 = load %struct.wsp_softc*, %struct.wsp_softc** %4, align 8
  %177 = getelementptr inbounds %struct.wsp_softc, %struct.wsp_softc* %176, i32 0, i32 3
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 1
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 1
  store i32 %175, i32* %180, align 4
  %181 = load i32, i32* @WSP_UNTOUCH, align 4
  %182 = load %struct.wsp_softc*, %struct.wsp_softc** %4, align 8
  %183 = getelementptr inbounds %struct.wsp_softc, %struct.wsp_softc* %182, i32 0, i32 2
  store i32 %181, i32* %183, align 4
  %184 = load i32, i32* @WSP_SCR_NONE, align 4
  %185 = load %struct.wsp_softc*, %struct.wsp_softc** %4, align 8
  %186 = getelementptr inbounds %struct.wsp_softc, %struct.wsp_softc* %185, i32 0, i32 1
  store i32 %184, i32* %186, align 8
  store i32 0, i32* %2, align 4
  br label %191

187:                                              ; preds = %135, %112
  %188 = load i32, i32* %3, align 4
  %189 = call i32 @wsp_detach(i32 %188)
  %190 = load i32, i32* @ENOMEM, align 4
  store i32 %190, i32* %2, align 4
  br label %191

191:                                              ; preds = %187, %136, %84, %74, %55, %48
  %192 = load i32, i32* %2, align 4
  ret i32 %192
}

declare dso_local %struct.wsp_softc* @device_get_softc(i32) #1

declare dso_local %struct.usb_attach_arg* @device_get_ivars(i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, %struct.wsp_softc*) #1

declare dso_local i64 @usbd_req_get_hid_desc(i32, i32*, i8**, i32*, i32, i32) #1

declare dso_local i64 @hid_report_size(i8*, i32, i32, i32*) #1

declare dso_local i32 @free(i8*, i32) #1

declare dso_local i32 @DPRINTF(i8*, i64) #1

declare dso_local i64 @USB_GET_DRIVER_INFO(%struct.usb_attach_arg*) #1

declare dso_local i64 @wsp_set_device_mode(%struct.wsp_softc*, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i64 @usbd_transfer_setup(i32, i32*, i32, i32, i32, %struct.wsp_softc*, i32*) #1

declare dso_local i64 @usbd_errstr(i64) #1

declare dso_local i64 @usb_fifo_attach(i32, %struct.wsp_softc*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @device_set_usb_desc(i32) #1

declare dso_local i32 @wsp_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
