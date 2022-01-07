; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_ums.c_ums_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_ums.c_ums_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_attach_arg = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.ums_softc = type { i32, i32, %struct.ums_info*, i32, i64, i32*, i32 }
%struct.ums_info = type { i32, i32, i32*, %struct.TYPE_14__*, i32, %struct.TYPE_9__, i32, %struct.TYPE_8__, i32, %struct.TYPE_13__, i32, %struct.TYPE_12__, i32, %struct.TYPE_11__ }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"sc=%p\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"ums lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@MTX_RECURSE = common dso_local global i32 0, align 4
@ums_config = common dso_local global i32 0, align 4
@UMS_N_TRANSFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"error=%s\0A\00", align 1
@M_TEMP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"error reading report description\0A\00", align 1
@hid_input = common dso_local global i32 0, align 4
@UQ_MS_BAD_CLASS = common dso_local global i32 0, align 4
@UMS_FLAG_X_AXIS = common dso_local global i32 0, align 4
@UMS_FLAG_Y_AXIS = common dso_local global i32 0, align 4
@UMS_FLAG_Z_AXIS = common dso_local global i32 0, align 4
@UMS_FLAG_SBU = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"3 buttons and [XYZ] coordinates ID=0\0A\00", align 1
@UMS_INFO_MAX = common dso_local global i64 0, align 8
@UQ_MS_REVZ = common dso_local global i32 0, align 4
@UMS_FLAG_REVZ = common dso_local global i32 0, align 4
@UMS_INTR_DT = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [74 x i8] c"WARNING: report size, %d bytes, is larger than interrupt size, %d bytes!\0A\00", align 1
@ums_fifo_methods = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_OPERATOR = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"parseinfo\00", align 1
@CTLTYPE_STRING = common dso_local global i32 0, align 4
@CTLFLAG_RD = common dso_local global i32 0, align 4
@ums_sysctl_handler_parseinfo = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"Dump of parsed HID report descriptor\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@BTN_MOUSE = common dso_local global i64 0, align 8
@BUS_USB = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@EV_REL = common dso_local global i32 0, align 4
@EV_SYN = common dso_local global i32 0, align 4
@INPUT_PROP_POINTER = common dso_local global i32 0, align 4
@REL_HWHEEL = common dso_local global i32 0, align 4
@REL_WHEEL = common dso_local global i32 0, align 4
@REL_X = common dso_local global i32 0, align 4
@REL_Y = common dso_local global i32 0, align 4
@UMS_FLAG_T_AXIS = common dso_local global i32 0, align 4
@ums_evdev_methods = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ums_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ums_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_attach_arg*, align 8
  %5 = alloca %struct.ums_softc*, align 8
  %6 = alloca %struct.ums_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call %struct.usb_attach_arg* @device_get_ivars(i32 %12)
  store %struct.usb_attach_arg* %13, %struct.usb_attach_arg** %4, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call %struct.ums_softc* @device_get_softc(i32 %14)
  store %struct.ums_softc* %15, %struct.ums_softc** %5, align 8
  store i8* null, i8** %7, align 8
  %16 = load %struct.ums_softc*, %struct.ums_softc** %5, align 8
  %17 = call i32 @DPRINTFN(i32 11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.ums_softc* %16)
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @device_set_usb_desc(i32 %18)
  %20 = load %struct.ums_softc*, %struct.ums_softc** %5, align 8
  %21 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %20, i32 0, i32 0
  %22 = load i32, i32* @MTX_DEF, align 4
  %23 = load i32, i32* @MTX_RECURSE, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @mtx_init(i32* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %24)
  %26 = load %struct.ums_softc*, %struct.ums_softc** %5, align 8
  %27 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %26, i32 0, i32 6
  %28 = load %struct.ums_softc*, %struct.ums_softc** %5, align 8
  %29 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %28, i32 0, i32 0
  %30 = call i32 @usb_callout_init_mtx(i32* %27, i32* %29, i32 0)
  %31 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %32 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %35 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @usbd_req_set_protocol(i32 %33, i32* null, i32 %37, i32 1)
  store i32 %38, i32* %9, align 4
  %39 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %40 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %43 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 2
  %45 = load %struct.ums_softc*, %struct.ums_softc** %5, align 8
  %46 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %45, i32 0, i32 5
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* @ums_config, align 4
  %49 = load i32, i32* @UMS_N_TRANSFER, align 4
  %50 = load %struct.ums_softc*, %struct.ums_softc** %5, align 8
  %51 = load %struct.ums_softc*, %struct.ums_softc** %5, align 8
  %52 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %51, i32 0, i32 0
  %53 = call i32 @usbd_transfer_setup(i32 %41, i32* %44, i32* %47, i32 %48, i32 %49, %struct.ums_softc* %50, i32* %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %1
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @usbd_errstr(i32 %57)
  %59 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  br label %243

60:                                               ; preds = %1
  %61 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %62 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @M_TEMP, align 4
  %65 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %66 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @usbd_req_get_hid_desc(i32 %63, i32* null, i8** %7, i32* %10, i32 %64, i32 %68)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %60
  %73 = load i32, i32* %3, align 4
  %74 = call i32 @device_printf(i32 %73, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %243

75:                                               ; preds = %60
  %76 = load i8*, i8** %7, align 8
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* @hid_input, align 4
  %79 = load %struct.ums_softc*, %struct.ums_softc** %5, align 8
  %80 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %79, i32 0, i32 4
  %81 = call i32 @hid_report_size(i8* %76, i32 %77, i32 %78, i64* %80)
  store i32 %81, i32* %8, align 4
  %82 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %83 = load i32, i32* @UQ_MS_BAD_CLASS, align 4
  %84 = call i64 @usb_test_quirk(%struct.usb_attach_arg* %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %154

86:                                               ; preds = %75
  %87 = load %struct.ums_softc*, %struct.ums_softc** %5, align 8
  %88 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %87, i32 0, i32 4
  store i64 0, i64* %88, align 8
  %89 = load %struct.ums_softc*, %struct.ums_softc** %5, align 8
  %90 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %89, i32 0, i32 2
  %91 = load %struct.ums_info*, %struct.ums_info** %90, align 8
  %92 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %91, i64 0
  store %struct.ums_info* %92, %struct.ums_info** %6, align 8
  %93 = load i32, i32* @UMS_FLAG_X_AXIS, align 4
  %94 = load i32, i32* @UMS_FLAG_Y_AXIS, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @UMS_FLAG_Z_AXIS, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @UMS_FLAG_SBU, align 4
  %99 = or i32 %97, %98
  %100 = load %struct.ums_info*, %struct.ums_info** %6, align 8
  %101 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  %102 = load %struct.ums_info*, %struct.ums_info** %6, align 8
  %103 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %102, i32 0, i32 1
  store i32 3, i32* %103, align 4
  store i32 5, i32* %8, align 4
  %104 = load %struct.ums_info*, %struct.ums_info** %6, align 8
  %105 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %104, i32 0, i32 13
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  store i32 16, i32* %106, align 4
  %107 = load %struct.ums_info*, %struct.ums_info** %6, align 8
  %108 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %107, i32 0, i32 13
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 1
  store i32 8, i32* %109, align 4
  %110 = load %struct.ums_info*, %struct.ums_info** %6, align 8
  %111 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %110, i32 0, i32 11
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  store i32 24, i32* %112, align 8
  %113 = load %struct.ums_info*, %struct.ums_info** %6, align 8
  %114 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %113, i32 0, i32 11
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 1
  store i32 8, i32* %115, align 4
  %116 = load %struct.ums_info*, %struct.ums_info** %6, align 8
  %117 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %116, i32 0, i32 9
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 0
  store i32 32, i32* %118, align 4
  %119 = load %struct.ums_info*, %struct.ums_info** %6, align 8
  %120 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %119, i32 0, i32 9
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 1
  store i32 8, i32* %121, align 4
  %122 = load %struct.ums_info*, %struct.ums_info** %6, align 8
  %123 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %122, i32 0, i32 3
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i64 0
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 0
  store i32 8, i32* %126, align 4
  %127 = load %struct.ums_info*, %struct.ums_info** %6, align 8
  %128 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %127, i32 0, i32 3
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i64 0
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 1
  store i32 1, i32* %131, align 4
  %132 = load %struct.ums_info*, %struct.ums_info** %6, align 8
  %133 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %132, i32 0, i32 3
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i64 1
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 0
  store i32 9, i32* %136, align 4
  %137 = load %struct.ums_info*, %struct.ums_info** %6, align 8
  %138 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %137, i32 0, i32 3
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i64 1
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 1
  store i32 1, i32* %141, align 4
  %142 = load %struct.ums_info*, %struct.ums_info** %6, align 8
  %143 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %142, i32 0, i32 3
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i64 2
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 0
  store i32 10, i32* %146, align 4
  %147 = load %struct.ums_info*, %struct.ums_info** %6, align 8
  %148 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %147, i32 0, i32 3
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i64 2
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 1
  store i32 1, i32* %151, align 4
  %152 = load i32, i32* %3, align 4
  %153 = call i32 @device_printf(i32 %152, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  br label %170

154:                                              ; preds = %75
  store i64 0, i64* %11, align 8
  br label %155

155:                                              ; preds = %166, %154
  %156 = load i64, i64* %11, align 8
  %157 = load i64, i64* @UMS_INFO_MAX, align 8
  %158 = icmp ult i64 %156, %157
  br i1 %158, label %159, label %169

159:                                              ; preds = %155
  %160 = load %struct.ums_softc*, %struct.ums_softc** %5, align 8
  %161 = load i32, i32* %3, align 4
  %162 = load i8*, i8** %7, align 8
  %163 = load i32, i32* %10, align 4
  %164 = load i64, i64* %11, align 8
  %165 = call i32 @ums_hid_parse(%struct.ums_softc* %160, i32 %161, i8* %162, i32 %163, i64 %164)
  br label %166

166:                                              ; preds = %159
  %167 = load i64, i64* %11, align 8
  %168 = add i64 %167, 1
  store i64 %168, i64* %11, align 8
  br label %155

169:                                              ; preds = %155
  br label %170

170:                                              ; preds = %169, %86
  %171 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %172 = load i32, i32* @UQ_MS_REVZ, align 4
  %173 = call i64 @usb_test_quirk(%struct.usb_attach_arg* %171, i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %185

175:                                              ; preds = %170
  %176 = load %struct.ums_softc*, %struct.ums_softc** %5, align 8
  %177 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %176, i32 0, i32 2
  %178 = load %struct.ums_info*, %struct.ums_info** %177, align 8
  %179 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %178, i64 0
  store %struct.ums_info* %179, %struct.ums_info** %6, align 8
  %180 = load i32, i32* @UMS_FLAG_REVZ, align 4
  %181 = load %struct.ums_info*, %struct.ums_info** %6, align 8
  %182 = getelementptr inbounds %struct.ums_info, %struct.ums_info* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = or i32 %183, %180
  store i32 %184, i32* %182, align 8
  br label %185

185:                                              ; preds = %175, %170
  %186 = load i32, i32* %8, align 4
  %187 = load %struct.ums_softc*, %struct.ums_softc** %5, align 8
  %188 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %187, i32 0, i32 5
  %189 = load i32*, i32** %188, align 8
  %190 = load i64, i64* @UMS_INTR_DT, align 8
  %191 = getelementptr inbounds i32, i32* %189, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = call i64 @usbd_xfer_max_framelen(i32 %192)
  %194 = trunc i64 %193 to i32
  %195 = icmp sgt i32 %186, %194
  br i1 %195, label %196, label %206

196:                                              ; preds = %185
  %197 = load i32, i32* %8, align 4
  %198 = load %struct.ums_softc*, %struct.ums_softc** %5, align 8
  %199 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %198, i32 0, i32 5
  %200 = load i32*, i32** %199, align 8
  %201 = load i64, i64* @UMS_INTR_DT, align 8
  %202 = getelementptr inbounds i32, i32* %200, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = call i64 @usbd_xfer_max_framelen(i32 %203)
  %205 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.5, i64 0, i64 0), i32 %197, i64 %204)
  br label %206

206:                                              ; preds = %196, %185
  %207 = load i8*, i8** %7, align 8
  %208 = load i32, i32* @M_TEMP, align 4
  %209 = call i32 @free(i8* %207, i32 %208)
  store i8* null, i8** %7, align 8
  %210 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %211 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.ums_softc*, %struct.ums_softc** %5, align 8
  %214 = load %struct.ums_softc*, %struct.ums_softc** %5, align 8
  %215 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %214, i32 0, i32 0
  %216 = load %struct.ums_softc*, %struct.ums_softc** %5, align 8
  %217 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %216, i32 0, i32 3
  %218 = load i32, i32* %3, align 4
  %219 = call i32 @device_get_unit(i32 %218)
  %220 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %221 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* @UID_ROOT, align 4
  %225 = load i32, i32* @GID_OPERATOR, align 4
  %226 = call i32 @usb_fifo_attach(i32 %212, %struct.ums_softc* %213, i32* %215, i32* @ums_fifo_methods, i32* %217, i32 %219, i32 -1, i32 %223, i32 %224, i32 %225, i32 420)
  store i32 %226, i32* %9, align 4
  %227 = load i32, i32* %9, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %206
  br label %243

230:                                              ; preds = %206
  %231 = load i32, i32* %3, align 4
  %232 = call i32 @device_get_sysctl_ctx(i32 %231)
  %233 = load i32, i32* %3, align 4
  %234 = call i32 @device_get_sysctl_tree(i32 %233)
  %235 = call i32 @SYSCTL_CHILDREN(i32 %234)
  %236 = load i32, i32* @OID_AUTO, align 4
  %237 = load i32, i32* @CTLTYPE_STRING, align 4
  %238 = load i32, i32* @CTLFLAG_RD, align 4
  %239 = or i32 %237, %238
  %240 = load %struct.ums_softc*, %struct.ums_softc** %5, align 8
  %241 = load i32, i32* @ums_sysctl_handler_parseinfo, align 4
  %242 = call i32 @SYSCTL_ADD_PROC(i32 %232, i32 %235, i32 %236, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %239, %struct.ums_softc* %240, i32 0, i32 %241, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %254

243:                                              ; preds = %229, %72, %56
  %244 = load i8*, i8** %7, align 8
  %245 = icmp ne i8* %244, null
  br i1 %245, label %246, label %250

246:                                              ; preds = %243
  %247 = load i8*, i8** %7, align 8
  %248 = load i32, i32* @M_TEMP, align 4
  %249 = call i32 @free(i8* %247, i32 %248)
  br label %250

250:                                              ; preds = %246, %243
  %251 = load i32, i32* %3, align 4
  %252 = call i32 @ums_detach(i32 %251)
  %253 = load i32, i32* @ENOMEM, align 4
  store i32 %253, i32* %2, align 4
  br label %254

254:                                              ; preds = %250, %230
  %255 = load i32, i32* %2, align 4
  ret i32 %255
}

declare dso_local %struct.usb_attach_arg* @device_get_ivars(i32) #1

declare dso_local %struct.ums_softc* @device_get_softc(i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, %struct.ums_softc*) #1

declare dso_local i32 @device_set_usb_desc(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @usb_callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32 @usbd_req_set_protocol(i32, i32*, i32, i32) #1

declare dso_local i32 @usbd_transfer_setup(i32, i32*, i32*, i32, i32, %struct.ums_softc*, i32*) #1

declare dso_local i32 @DPRINTF(i8*, ...) #1

declare dso_local i32 @usbd_errstr(i32) #1

declare dso_local i32 @usbd_req_get_hid_desc(i32, i32*, i8**, i32*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @hid_report_size(i8*, i32, i32, i64*) #1

declare dso_local i64 @usb_test_quirk(%struct.usb_attach_arg*, i32) #1

declare dso_local i32 @ums_hid_parse(%struct.ums_softc*, i32, i8*, i32, i64) #1

declare dso_local i64 @usbd_xfer_max_framelen(i32) #1

declare dso_local i32 @free(i8*, i32) #1

declare dso_local i32 @usb_fifo_attach(i32, %struct.ums_softc*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @SYSCTL_ADD_PROC(i32, i32, i32, i8*, i32, %struct.ums_softc*, i32, i32, i8*, i8*) #1

declare dso_local i32 @device_get_sysctl_ctx(i32) #1

declare dso_local i32 @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @device_get_sysctl_tree(i32) #1

declare dso_local i32 @ums_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
