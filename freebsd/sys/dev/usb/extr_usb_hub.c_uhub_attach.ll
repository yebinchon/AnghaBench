; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hub.c_uhub_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hub.c_uhub_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uhub_softc = type { i64, i64, i32, i32*, %struct.usb_hub, i32, %struct.usb_device* }
%struct.usb_hub = type { i32, %struct.usb_port*, i32, %struct.TYPE_5__*, %struct.usb_device*, i32*, %struct.uhub_softc* }
%struct.usb_port = type { i64, i64 }
%struct.TYPE_5__ = type { %struct.usb_device*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.usb_device = type { i32, %struct.usb_hub*, %struct.TYPE_6__, %struct.usb_device*, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.usb_attach_arg = type { %struct.usb_device* }
%struct.usb_hub_descriptor = type { i32, i32 }
%struct.usb_hub_ss_descriptor = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"USB HUB mutex\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"depth=%d selfpowered=%d, parent=%p, parent->selfpowered=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"HUB at depth %d, exceeds maximum. HUB ignored\0A\00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"Bus powered HUB connected to bus powered HUB. HUB ignored\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"MTT could not be enabled\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"MTT enabled\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Getting HUB descriptor\0A\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"getting USB 2.0 HUB descriptor failed,error=%s\0A\00", align 1
@UHD_PWRON_FACTOR = common dso_local global i32 0, align 4
@usb_extra_power_up_time = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [42 x i8] c"Invalid number of USB 2.0 ports,error=%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"Getting USB 2.0 HUB descriptor failed,error=%s\0A\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"Number of ports changed\0A\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"Setting USB 3.0 HUB depth failed,error=%s\0A\00", align 1
@.str.12 = private unnamed_addr constant [48 x i8] c"Getting USB 3.0 HUB descriptor failed,error=%s\0A\00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"Invalid number of USB 3.0 ports,error=%s\0A\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"Assuming HUB has only one port\0A\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"portless HUB\0A\00", align 1
@USB_MAX_PORTS = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [21 x i8] c"Port limit exceeded\0A\00", align 1
@M_USBDEV = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@uhub_explore = common dso_local global i32 0, align 4
@USB_MAX_POWER = common dso_local global i32 0, align 4
@USB_MIN_POWER = common dso_local global i32 0, align 4
@uhub_config = common dso_local global i32 0, align 4
@UHUB_N_TRANSFER = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [44 x i8] c"cannot setup interrupt transfer, errstr=%s\0A\00", align 1
@USB_POWER_DOWN_TIME = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [25 x i8] c"Assuming removable port\0A\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"Turning port %d power on\0A\00", align 1
@UHF_PORT_POWER = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [36 x i8] c"port %d power on or off failed, %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"turn on port %d power\0A\00", align 1
@.str.22 = private unnamed_addr constant [41 x i8] c"%d port%s with %d removable, %s powered\0A\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.24 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"self\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"bus\00", align 1
@UHUB_INTR_TRANSFER = common dso_local global i64 0, align 8
@USB_POWER_MODE_SAVE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@CTLFLAG_RWTUN = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@uhub_reset_tt_proc = common dso_local global i32 0, align 4
@usb_disable_port_power = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uhub_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.uhub_softc*, align 8
  %5 = alloca %struct.usb_attach_arg*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca %struct.usb_hub*, align 8
  %9 = alloca %struct.usb_hub_descriptor, align 4
  %10 = alloca %struct.usb_hub_ss_descriptor, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca %struct.usb_port*, align 8
  store i32 %0, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call %struct.uhub_softc* @device_get_softc(i32 %19)
  store %struct.uhub_softc* %20, %struct.uhub_softc** %4, align 8
  %21 = load i32, i32* %3, align 4
  %22 = call %struct.usb_attach_arg* @device_get_ivars(i32 %21)
  store %struct.usb_attach_arg* %22, %struct.usb_attach_arg** %5, align 8
  %23 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %24 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %23, i32 0, i32 0
  %25 = load %struct.usb_device*, %struct.usb_device** %24, align 8
  store %struct.usb_device* %25, %struct.usb_device** %6, align 8
  %26 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %27 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %26, i32 0, i32 3
  %28 = load %struct.usb_device*, %struct.usb_device** %27, align 8
  store %struct.usb_device* %28, %struct.usb_device** %7, align 8
  %29 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %30 = load %struct.uhub_softc*, %struct.uhub_softc** %4, align 8
  %31 = getelementptr inbounds %struct.uhub_softc, %struct.uhub_softc* %30, i32 0, i32 6
  store %struct.usb_device* %29, %struct.usb_device** %31, align 8
  %32 = load i32, i32* %3, align 4
  %33 = load %struct.uhub_softc*, %struct.uhub_softc** %4, align 8
  %34 = getelementptr inbounds %struct.uhub_softc, %struct.uhub_softc* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 8
  %35 = load %struct.uhub_softc*, %struct.uhub_softc** %4, align 8
  %36 = getelementptr inbounds %struct.uhub_softc, %struct.uhub_softc* %35, i32 0, i32 2
  %37 = load i32, i32* @MTX_DEF, align 4
  %38 = call i32 @mtx_init(i32* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* null, i32 %37)
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @device_set_usb_desc(i32 %39)
  %41 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %42 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %45 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %49 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %50 = icmp ne %struct.usb_device* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %1
  %52 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %53 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  br label %57

56:                                               ; preds = %1
  br label %57

57:                                               ; preds = %56, %51
  %58 = phi i64 [ %55, %51 ], [ 0, %56 ]
  %59 = call i32 (i32, i8*, ...) @DPRINTFN(i32 2, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i64 %43, i64 %47, %struct.usb_device* %48, i64 %58)
  %60 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %61 = call i64 @uhub_is_too_deep(%struct.usb_device* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %57
  %64 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %65 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %64, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = trunc i64 %66 to i32
  %68 = call i32 (i32, i8*, ...) @DPRINTFN(i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  br label %412

69:                                               ; preds = %57
  %70 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %71 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %86, label %75

75:                                               ; preds = %69
  %76 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %77 = icmp ne %struct.usb_device* %76, null
  br i1 %77, label %78, label %86

78:                                               ; preds = %75
  %79 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %80 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %78
  %85 = call i32 (i32, i8*, ...) @DPRINTFN(i32 0, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0))
  br label %412

86:                                               ; preds = %78, %75, %69
  %87 = load %struct.uhub_softc*, %struct.uhub_softc** %4, align 8
  %88 = call i64 @UHUB_IS_MULTI_TT(%struct.uhub_softc* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %101

90:                                               ; preds = %86
  %91 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %92 = call i64 @usbd_set_alt_interface_index(%struct.usb_device* %91, i32 0, i32 1)
  store i64 %92, i64* %17, align 8
  %93 = load i64, i64* %17, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load i32, i32* %3, align 4
  %97 = call i32 (i32, i8*, ...) @device_printf(i32 %96, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %412

98:                                               ; preds = %90
  %99 = load i32, i32* %3, align 4
  %100 = call i32 (i32, i8*, ...) @device_printf(i32 %99, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  br label %101

101:                                              ; preds = %98, %86
  %102 = call i32 (i32, i8*, ...) @DPRINTFN(i32 2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %103 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %104 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  switch i32 %105, label %225 [
    i32 129, label %106
    i32 131, label %106
    i32 130, label %106
    i32 128, label %154
  ]

106:                                              ; preds = %101, %101, %101
  %107 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %108 = bitcast %struct.usb_hub_descriptor* %9 to %struct.usb_hub_ss_descriptor*
  %109 = call i64 @usbd_req_get_hub_descriptor(%struct.usb_device* %107, i32* null, %struct.usb_hub_ss_descriptor* %108, i32 1)
  store i64 %109, i64* %17, align 8
  %110 = load i64, i64* %17, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %106
  %113 = load i64, i64* %17, align 8
  %114 = call i32 @usbd_errstr(i64 %113)
  %115 = call i32 (i32, i8*, ...) @DPRINTFN(i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i32 %114)
  br label %412

116:                                              ; preds = %106
  %117 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %9, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %12, align 4
  %119 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %9, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @UHD_PWRON_FACTOR, align 4
  %122 = mul nsw i32 %120, %121
  %123 = load i32, i32* @usb_extra_power_up_time, align 4
  %124 = add nsw i32 %122, %123
  store i32 %124, i32* %11, align 4
  %125 = load i32, i32* %12, align 4
  %126 = icmp sge i32 %125, 8
  br i1 %126, label %127, label %153

127:                                              ; preds = %116
  %128 = load i32, i32* %12, align 4
  %129 = icmp sgt i32 %128, 127
  br i1 %129, label %130, label %134

130:                                              ; preds = %127
  %131 = load i64, i64* %17, align 8
  %132 = call i32 @usbd_errstr(i64 %131)
  %133 = call i32 (i32, i8*, ...) @DPRINTFN(i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i32 %132)
  br label %412

134:                                              ; preds = %127
  %135 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %136 = bitcast %struct.usb_hub_descriptor* %9 to %struct.usb_hub_ss_descriptor*
  %137 = load i32, i32* %12, align 4
  %138 = call i64 @usbd_req_get_hub_descriptor(%struct.usb_device* %135, i32* null, %struct.usb_hub_ss_descriptor* %136, i32 %137)
  store i64 %138, i64* %17, align 8
  %139 = load i64, i64* %17, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %134
  %142 = load i64, i64* %17, align 8
  %143 = call i32 @usbd_errstr(i64 %142)
  %144 = call i32 (i32, i8*, ...) @DPRINTFN(i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i64 0, i64 0), i32 %143)
  br label %412

145:                                              ; preds = %134
  %146 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %9, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %12, align 4
  %149 = icmp ne i32 %147, %148
  br i1 %149, label %150, label %152

150:                                              ; preds = %145
  %151 = call i32 (i32, i8*, ...) @DPRINTFN(i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  br label %412

152:                                              ; preds = %145
  br label %153

153:                                              ; preds = %152, %116
  br label %231

154:                                              ; preds = %101
  %155 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %156 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %155, i32 0, i32 3
  %157 = load %struct.usb_device*, %struct.usb_device** %156, align 8
  %158 = icmp ne %struct.usb_device* %157, null
  br i1 %158, label %159, label %173

159:                                              ; preds = %154
  %160 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %161 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %162 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %161, i32 0, i32 4
  %163 = load i64, i64* %162, align 8
  %164 = sub nsw i64 %163, 1
  %165 = call i64 @usbd_req_set_hub_depth(%struct.usb_device* %160, i32* null, i64 %164)
  store i64 %165, i64* %17, align 8
  %166 = load i64, i64* %17, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %159
  %169 = load i64, i64* %17, align 8
  %170 = call i32 @usbd_errstr(i64 %169)
  %171 = call i32 (i32, i8*, ...) @DPRINTFN(i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i64 0, i64 0), i32 %170)
  br label %412

172:                                              ; preds = %159
  br label %173

173:                                              ; preds = %172, %154
  %174 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %175 = call i64 @usbd_req_get_ss_hub_descriptor(%struct.usb_device* %174, i32* null, %struct.usb_hub_ss_descriptor* %10, i32 1)
  store i64 %175, i64* %17, align 8
  %176 = load i64, i64* %17, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %173
  %179 = load i64, i64* %17, align 8
  %180 = call i32 @usbd_errstr(i64 %179)
  %181 = call i32 (i32, i8*, ...) @DPRINTFN(i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.12, i64 0, i64 0), i32 %180)
  br label %412

182:                                              ; preds = %173
  %183 = getelementptr inbounds %struct.usb_hub_ss_descriptor, %struct.usb_hub_ss_descriptor* %10, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  store i32 %184, i32* %12, align 4
  %185 = getelementptr inbounds %struct.usb_hub_ss_descriptor, %struct.usb_hub_ss_descriptor* %10, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @UHD_PWRON_FACTOR, align 4
  %188 = mul nsw i32 %186, %187
  %189 = load i32, i32* @usb_extra_power_up_time, align 4
  %190 = add nsw i32 %188, %189
  store i32 %190, i32* %11, align 4
  %191 = load i32, i32* %12, align 4
  %192 = icmp sge i32 %191, 8
  br i1 %192, label %193, label %224

193:                                              ; preds = %182
  %194 = load i32, i32* %12, align 4
  %195 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %196 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %195, i32 0, i32 3
  %197 = load %struct.usb_device*, %struct.usb_device** %196, align 8
  %198 = icmp ne %struct.usb_device* %197, null
  %199 = zext i1 %198 to i64
  %200 = select i1 %198, i32 15, i32 127
  %201 = icmp sgt i32 %194, %200
  br i1 %201, label %202, label %206

202:                                              ; preds = %193
  %203 = load i64, i64* %17, align 8
  %204 = call i32 @usbd_errstr(i64 %203)
  %205 = call i32 (i32, i8*, ...) @DPRINTFN(i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.13, i64 0, i64 0), i32 %204)
  br label %412

206:                                              ; preds = %193
  %207 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %208 = load i32, i32* %12, align 4
  %209 = call i64 @usbd_req_get_ss_hub_descriptor(%struct.usb_device* %207, i32* null, %struct.usb_hub_ss_descriptor* %10, i32 %208)
  store i64 %209, i64* %17, align 8
  %210 = load i64, i64* %17, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %216

212:                                              ; preds = %206
  %213 = load i64, i64* %17, align 8
  %214 = call i32 @usbd_errstr(i64 %213)
  %215 = call i32 (i32, i8*, ...) @DPRINTFN(i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i64 0, i64 0), i32 %214)
  br label %412

216:                                              ; preds = %206
  %217 = getelementptr inbounds %struct.usb_hub_ss_descriptor, %struct.usb_hub_ss_descriptor* %10, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* %12, align 4
  %220 = icmp ne i32 %218, %219
  br i1 %220, label %221, label %223

221:                                              ; preds = %216
  %222 = call i32 (i32, i8*, ...) @DPRINTFN(i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  br label %412

223:                                              ; preds = %216
  br label %224

224:                                              ; preds = %223, %182
  br label %231

225:                                              ; preds = %101
  %226 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0))
  store i32 1, i32* %12, align 4
  %227 = load i32, i32* @UHD_PWRON_FACTOR, align 4
  %228 = mul nsw i32 10, %227
  %229 = load i32, i32* @usb_extra_power_up_time, align 4
  %230 = add nsw i32 %228, %229
  store i32 %230, i32* %11, align 4
  br label %231

231:                                              ; preds = %225, %224, %153
  %232 = load i32, i32* %12, align 4
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %236

234:                                              ; preds = %231
  %235 = call i32 (i32, i8*, ...) @DPRINTFN(i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0))
  br label %412

236:                                              ; preds = %231
  %237 = load i32, i32* %12, align 4
  %238 = load i32, i32* @USB_MAX_PORTS, align 4
  %239 = icmp sgt i32 %237, %238
  br i1 %239, label %240, label %242

240:                                              ; preds = %236
  %241 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0))
  br label %412

242:                                              ; preds = %236
  %243 = load i32, i32* %12, align 4
  %244 = sext i32 %243 to i64
  %245 = mul i64 16, %244
  %246 = add i64 56, %245
  %247 = trunc i64 %246 to i32
  %248 = load i32, i32* @M_USBDEV, align 4
  %249 = load i32, i32* @M_WAITOK, align 4
  %250 = load i32, i32* @M_ZERO, align 4
  %251 = or i32 %249, %250
  %252 = call %struct.usb_hub* @malloc(i32 %247, i32 %248, i32 %251)
  store %struct.usb_hub* %252, %struct.usb_hub** %8, align 8
  %253 = load %struct.usb_hub*, %struct.usb_hub** %8, align 8
  %254 = icmp eq %struct.usb_hub* %253, null
  br i1 %254, label %255, label %256

255:                                              ; preds = %242
  br label %412

256:                                              ; preds = %242
  %257 = load %struct.usb_hub*, %struct.usb_hub** %8, align 8
  %258 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %259 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %258, i32 0, i32 1
  store %struct.usb_hub* %257, %struct.usb_hub** %259, align 8
  %260 = load %struct.uhub_softc*, %struct.uhub_softc** %4, align 8
  %261 = load %struct.usb_hub*, %struct.usb_hub** %8, align 8
  %262 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %261, i32 0, i32 6
  store %struct.uhub_softc* %260, %struct.uhub_softc** %262, align 8
  %263 = load %struct.usb_hub*, %struct.usb_hub** %8, align 8
  %264 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %263, i32 0, i32 5
  store i32* @uhub_explore, i32** %264, align 8
  %265 = load i32, i32* %12, align 4
  %266 = load %struct.usb_hub*, %struct.usb_hub** %8, align 8
  %267 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %266, i32 0, i32 0
  store i32 %265, i32* %267, align 8
  %268 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %269 = load %struct.usb_hub*, %struct.usb_hub** %8, align 8
  %270 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %269, i32 0, i32 4
  store %struct.usb_device* %268, %struct.usb_device** %270, align 8
  %271 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %272 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %271, i32 0, i32 2
  %273 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %280

276:                                              ; preds = %256
  %277 = load i32, i32* @USB_MAX_POWER, align 4
  %278 = load %struct.usb_hub*, %struct.usb_hub** %8, align 8
  %279 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %278, i32 0, i32 2
  store i32 %277, i32* %279, align 8
  br label %284

280:                                              ; preds = %256
  %281 = load i32, i32* @USB_MIN_POWER, align 4
  %282 = load %struct.usb_hub*, %struct.usb_hub** %8, align 8
  %283 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %282, i32 0, i32 2
  store i32 %281, i32* %283, align 8
  br label %284

284:                                              ; preds = %280, %276
  store i32 0, i32* %16, align 4
  %285 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %286 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %285, i32 0, i32 3
  %287 = load %struct.usb_device*, %struct.usb_device** %286, align 8
  %288 = icmp eq %struct.usb_device* %287, null
  br i1 %288, label %289, label %290

289:                                              ; preds = %284
  store i64 0, i64* %17, align 8
  br label %301

290:                                              ; preds = %284
  %291 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %292 = load %struct.uhub_softc*, %struct.uhub_softc** %4, align 8
  %293 = getelementptr inbounds %struct.uhub_softc, %struct.uhub_softc* %292, i32 0, i32 3
  %294 = load i32*, i32** %293, align 8
  %295 = load i32, i32* @uhub_config, align 4
  %296 = load i32, i32* @UHUB_N_TRANSFER, align 4
  %297 = load %struct.uhub_softc*, %struct.uhub_softc** %4, align 8
  %298 = load %struct.uhub_softc*, %struct.uhub_softc** %4, align 8
  %299 = getelementptr inbounds %struct.uhub_softc, %struct.uhub_softc* %298, i32 0, i32 2
  %300 = call i64 @usbd_transfer_setup(%struct.usb_device* %291, i32* %16, i32* %294, i32 %295, i32 %296, %struct.uhub_softc* %297, i32* %299)
  store i64 %300, i64* %17, align 8
  br label %301

301:                                              ; preds = %290, %289
  %302 = load i64, i64* %17, align 8
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %308

304:                                              ; preds = %301
  %305 = load i64, i64* %17, align 8
  %306 = call i32 @usbd_errstr(i64 %305)
  %307 = call i32 (i32, i8*, ...) @DPRINTFN(i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.17, i64 0, i64 0), i32 %306)
  br label %412

308:                                              ; preds = %301
  %309 = load i32, i32* @USB_POWER_DOWN_TIME, align 4
  %310 = call i32 @USB_MS_TO_TICKS(i32 %309)
  %311 = call i32 @usb_pause_mtx(i32* null, i32 %310)
  store i32 0, i32* %15, align 4
  store i32 0, i32* %13, align 4
  br label %312

312:                                              ; preds = %377, %308
  %313 = load i32, i32* %13, align 4
  %314 = load i32, i32* %12, align 4
  %315 = icmp ne i32 %313, %314
  br i1 %315, label %316, label %380

316:                                              ; preds = %312
  %317 = load %struct.usb_hub*, %struct.usb_hub** %8, align 8
  %318 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %317, i32 0, i32 1
  %319 = load %struct.usb_port*, %struct.usb_port** %318, align 8
  %320 = load i32, i32* %13, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %319, i64 %321
  store %struct.usb_port* %322, %struct.usb_port** %18, align 8
  %323 = load %struct.usb_port*, %struct.usb_port** %18, align 8
  %324 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %323, i32 0, i32 1
  store i64 0, i64* %324, align 8
  %325 = load %struct.usb_port*, %struct.usb_port** %18, align 8
  %326 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %325, i32 0, i32 0
  store i64 0, i64* %326, align 8
  %327 = load i32, i32* %13, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %14, align 4
  %329 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %330 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 8
  switch i32 %331, label %349 [
    i32 129, label %332
    i32 131, label %332
    i32 130, label %332
    i32 128, label %341
  ]

332:                                              ; preds = %316, %316, %316
  %333 = bitcast %struct.usb_hub_descriptor* %9 to %struct.usb_hub_ss_descriptor*
  %334 = load i32, i32* %14, align 4
  %335 = call i32 @UHD_NOT_REMOV(%struct.usb_hub_ss_descriptor* %333, i32 %334)
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %340, label %337

337:                                              ; preds = %332
  %338 = load i32, i32* %15, align 4
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* %15, align 4
  br label %340

340:                                              ; preds = %337, %332
  br label %353

341:                                              ; preds = %316
  %342 = load i32, i32* %14, align 4
  %343 = call i32 @UHD_NOT_REMOV(%struct.usb_hub_ss_descriptor* %10, i32 %342)
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %348, label %345

345:                                              ; preds = %341
  %346 = load i32, i32* %15, align 4
  %347 = add nsw i32 %346, 1
  store i32 %347, i32* %15, align 4
  br label %348

348:                                              ; preds = %345, %341
  br label %353

349:                                              ; preds = %316
  %350 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0))
  %351 = load i32, i32* %15, align 4
  %352 = add nsw i32 %351, 1
  store i32 %352, i32* %15, align 4
  br label %353

353:                                              ; preds = %349, %348, %340
  %354 = load i64, i64* %17, align 8
  %355 = icmp eq i64 %354, 0
  br i1 %355, label %356, label %363

356:                                              ; preds = %353
  %357 = load i32, i32* %14, align 4
  %358 = call i32 (i32, i8*, ...) @DPRINTFN(i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i64 0, i64 0), i32 %357)
  %359 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %360 = load i32, i32* %14, align 4
  %361 = load i32, i32* @UHF_PORT_POWER, align 4
  %362 = call i64 @usbd_req_set_port_feature(%struct.usb_device* %359, i32* null, i32 %360, i32 %361)
  store i64 %362, i64* %17, align 8
  br label %363

363:                                              ; preds = %356, %353
  %364 = load i64, i64* %17, align 8
  %365 = icmp ne i64 %364, 0
  br i1 %365, label %366, label %371

366:                                              ; preds = %363
  %367 = load i32, i32* %14, align 4
  %368 = load i64, i64* %17, align 8
  %369 = call i32 @usbd_errstr(i64 %368)
  %370 = call i32 (i32, i8*, ...) @DPRINTFN(i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i64 0, i64 0), i32 %367, i32 %369)
  br label %371

371:                                              ; preds = %366, %363
  %372 = load i32, i32* %14, align 4
  %373 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i64 0, i64 0), i32 %372)
  %374 = load i32, i32* %11, align 4
  %375 = call i32 @USB_MS_TO_TICKS(i32 %374)
  %376 = call i32 @usb_pause_mtx(i32* null, i32 %375)
  br label %377

377:                                              ; preds = %371
  %378 = load i32, i32* %13, align 4
  %379 = add nsw i32 %378, 1
  store i32 %379, i32* %13, align 4
  br label %312

380:                                              ; preds = %312
  %381 = load i32, i32* %3, align 4
  %382 = load i32, i32* %12, align 4
  %383 = load i32, i32* %12, align 4
  %384 = icmp ne i32 %383, 1
  %385 = zext i1 %384 to i64
  %386 = select i1 %384, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.24, i64 0, i64 0)
  %387 = load i32, i32* %15, align 4
  %388 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %389 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %388, i32 0, i32 2
  %390 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %389, i32 0, i32 0
  %391 = load i64, i64* %390, align 8
  %392 = icmp ne i64 %391, 0
  %393 = zext i1 %392 to i64
  %394 = select i1 %392, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0)
  %395 = call i32 (i32, i8*, ...) @device_printf(i32 %381, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.22, i64 0, i64 0), i32 %382, i8* %386, i32 %387, i8* %394)
  %396 = load %struct.uhub_softc*, %struct.uhub_softc** %4, align 8
  %397 = getelementptr inbounds %struct.uhub_softc, %struct.uhub_softc* %396, i32 0, i32 2
  %398 = call i32 @USB_MTX_LOCK(i32* %397)
  %399 = load %struct.uhub_softc*, %struct.uhub_softc** %4, align 8
  %400 = getelementptr inbounds %struct.uhub_softc, %struct.uhub_softc* %399, i32 0, i32 3
  %401 = load i32*, i32** %400, align 8
  %402 = load i64, i64* @UHUB_INTR_TRANSFER, align 8
  %403 = getelementptr inbounds i32, i32* %401, i64 %402
  %404 = load i32, i32* %403, align 4
  %405 = call i32 @usbd_transfer_start(i32 %404)
  %406 = load %struct.uhub_softc*, %struct.uhub_softc** %4, align 8
  %407 = getelementptr inbounds %struct.uhub_softc, %struct.uhub_softc* %406, i32 0, i32 2
  %408 = call i32 @USB_MTX_UNLOCK(i32* %407)
  %409 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %410 = load i32, i32* @USB_POWER_MODE_SAVE, align 4
  %411 = call i32 @usbd_set_power_mode(%struct.usb_device* %409, i32 %410)
  store i32 0, i32* %2, align 4
  br label %429

412:                                              ; preds = %304, %255, %240, %234, %221, %212, %202, %178, %168, %150, %141, %130, %112, %95, %84, %63
  %413 = load %struct.uhub_softc*, %struct.uhub_softc** %4, align 8
  %414 = getelementptr inbounds %struct.uhub_softc, %struct.uhub_softc* %413, i32 0, i32 3
  %415 = load i32*, i32** %414, align 8
  %416 = load i32, i32* @UHUB_N_TRANSFER, align 4
  %417 = call i32 @usbd_transfer_unsetup(i32* %415, i32 %416)
  %418 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %419 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %418, i32 0, i32 1
  %420 = load %struct.usb_hub*, %struct.usb_hub** %419, align 8
  %421 = load i32, i32* @M_USBDEV, align 4
  %422 = call i32 @free(%struct.usb_hub* %420, i32 %421)
  %423 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %424 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %423, i32 0, i32 1
  store %struct.usb_hub* null, %struct.usb_hub** %424, align 8
  %425 = load %struct.uhub_softc*, %struct.uhub_softc** %4, align 8
  %426 = getelementptr inbounds %struct.uhub_softc, %struct.uhub_softc* %425, i32 0, i32 2
  %427 = call i32 @mtx_destroy(i32* %426)
  %428 = load i32, i32* @ENXIO, align 4
  store i32 %428, i32* %2, align 4
  br label %429

429:                                              ; preds = %412, %380
  %430 = load i32, i32* %2, align 4
  ret i32 %430
}

declare dso_local %struct.uhub_softc* @device_get_softc(i32) #1

declare dso_local %struct.usb_attach_arg* @device_get_ivars(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @device_set_usb_desc(i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, ...) #1

declare dso_local i64 @uhub_is_too_deep(%struct.usb_device*) #1

declare dso_local i64 @UHUB_IS_MULTI_TT(%struct.uhub_softc*) #1

declare dso_local i64 @usbd_set_alt_interface_index(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i64 @usbd_req_get_hub_descriptor(%struct.usb_device*, i32*, %struct.usb_hub_ss_descriptor*, i32) #1

declare dso_local i32 @usbd_errstr(i64) #1

declare dso_local i64 @usbd_req_set_hub_depth(%struct.usb_device*, i32*, i64) #1

declare dso_local i64 @usbd_req_get_ss_hub_descriptor(%struct.usb_device*, i32*, %struct.usb_hub_ss_descriptor*, i32) #1

declare dso_local i32 @DPRINTF(i8*, ...) #1

declare dso_local %struct.usb_hub* @malloc(i32, i32, i32) #1

declare dso_local i64 @usbd_transfer_setup(%struct.usb_device*, i32*, i32*, i32, i32, %struct.uhub_softc*, i32*) #1

declare dso_local i32 @usb_pause_mtx(i32*, i32) #1

declare dso_local i32 @USB_MS_TO_TICKS(i32) #1

declare dso_local i32 @UHD_NOT_REMOV(%struct.usb_hub_ss_descriptor*, i32) #1

declare dso_local i64 @usbd_req_set_port_feature(%struct.usb_device*, i32*, i32, i32) #1

declare dso_local i32 @USB_MTX_LOCK(i32*) #1

declare dso_local i32 @usbd_transfer_start(i32) #1

declare dso_local i32 @USB_MTX_UNLOCK(i32*) #1

declare dso_local i32 @usbd_set_power_mode(%struct.usb_device*, i32) #1

declare dso_local i32 @usbd_transfer_unsetup(i32*, i32) #1

declare dso_local i32 @free(%struct.usb_hub*, i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
