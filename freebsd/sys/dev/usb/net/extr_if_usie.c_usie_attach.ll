; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_usie.c_usie_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_usie.c_usie_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usie_softc = type { i64, i32, i32*, %struct.ifnet*, i32, %struct.usie_softc*, i32, i32***, i32**, i32, i32, i32, i32, i32 }
%struct.ifnet = type { %struct.TYPE_5__, i32, i32, i32, i32, i32, i32, %struct.usie_softc* }
%struct.TYPE_5__ = type { i32 }
%struct.usb_attach_arg = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.usb_interface = type { i32 }
%struct.usb_interface_descriptor = type { i64, i32, i32 }
%struct.usb_device_request = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"usie\00", align 1
@MTX_NETWORK_LOCK = common dso_local global i32 0, align 4
@MTX_DEF = common dso_local global i32 0, align 4
@usie_if_status_cb = common dso_local global i32 0, align 4
@usie_if_sync_cb = common dso_local global i32 0, align 4
@UT_WRITE_VENDOR_DEVICE = common dso_local global i32 0, align 4
@USIE_POWER = common dso_local global i32 0, align 4
@UT_READ_VENDOR_DEVICE = common dso_local global i32 0, align 4
@USIE_FW_ATTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"fwattr=%x\0A\00", align 1
@USIE_FW_DHCP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [60 x i8] c"DHCP is not supported. A firmware upgrade might be needed.\0A\00", align 1
@USIE_IFACE_MAX = common dso_local global i64 0, align 8
@UICLASS_VENDOR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"ifnum=%d, ifidx=%d\0A\00", align 1
@usie_if_config = common dso_local global i64 0, align 8
@USIE_IF_N_XFER = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [60 x i8] c"could not allocate USB transfers on iface_index=%d, err=%s\0A\00", align 1
@USIE_UCOM_MAX = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [37 x i8] c"NumEndpoints=%d bInterfaceNumber=%d\0A\00", align 1
@usie_uc_config = common dso_local global i64 0, align 8
@USIE_UC_N_XFER = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [30 x i8] c"usbd_transfer_setup error=%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"no comports found\0A\00", align 1
@usie_uc_callback = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [20 x i8] c"ucom_attach failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"Found %d interfaces.\0A\00", align 1
@IFT_OTHER = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [40 x i8] c"Could not allocate a network interface\0A\00", align 1
@USIE_MTU_MAX = common dso_local global i32 0, align 4
@IFF_NOARP = common dso_local global i32 0, align 4
@usie_if_init = common dso_local global i32 0, align 4
@usie_if_ioctl = common dso_local global i32 0, align 4
@usie_if_start = common dso_local global i32 0, align 4
@usie_if_output = common dso_local global i32 0, align 4
@ifqmaxlen = common dso_local global i32 0, align 4
@DLT_RAW = common dso_local global i32 0, align 4
@USIE_PM_AUTO = common dso_local global i32 0, align 4
@USB_POWER_MODE_SAVE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [39 x i8] c"enabling automatic suspend and resume\0A\00", align 1
@USB_POWER_MODE_ON = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [24 x i8] c"USB power is always ON\0A\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"device attached\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @usie_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usie_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.usie_softc*, align 8
  %5 = alloca %struct.usb_attach_arg*, align 8
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca %struct.usb_interface*, align 8
  %8 = alloca %struct.usb_interface_descriptor*, align 8
  %9 = alloca %struct.usb_device_request, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call %struct.usie_softc* @device_get_softc(i32 %15)
  store %struct.usie_softc* %16, %struct.usie_softc** %4, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call %struct.usb_attach_arg* @device_get_ivars(i32 %17)
  store %struct.usb_attach_arg* %18, %struct.usb_attach_arg** %5, align 8
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @device_set_usb_desc(i32 %19)
  %21 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %22 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.usie_softc*, %struct.usie_softc** %4, align 8
  %25 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %24, i32 0, i32 13
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.usie_softc*, %struct.usie_softc** %4, align 8
  %28 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %27, i32 0, i32 12
  store i32 %26, i32* %28, align 4
  %29 = load %struct.usie_softc*, %struct.usie_softc** %4, align 8
  %30 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %29, i32 0, i32 4
  %31 = load i32, i32* @MTX_NETWORK_LOCK, align 4
  %32 = load i32, i32* @MTX_DEF, align 4
  %33 = call i32 @mtx_init(i32* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32)
  %34 = load %struct.usie_softc*, %struct.usie_softc** %4, align 8
  %35 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %34, i32 0, i32 6
  %36 = call i32 @ucom_ref(i32* %35)
  %37 = load %struct.usie_softc*, %struct.usie_softc** %4, align 8
  %38 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %37, i32 0, i32 11
  %39 = load i32, i32* @usie_if_status_cb, align 4
  %40 = load %struct.usie_softc*, %struct.usie_softc** %4, align 8
  %41 = call i32 @TASK_INIT(i32* %38, i32 0, i32 %39, %struct.usie_softc* %40)
  %42 = load %struct.usie_softc*, %struct.usie_softc** %4, align 8
  %43 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %42, i32 0, i32 10
  %44 = load i32, i32* @usie_if_sync_cb, align 4
  %45 = load %struct.usie_softc*, %struct.usie_softc** %4, align 8
  %46 = call i32 @TASK_INIT(i32* %43, i32 0, i32 %44, %struct.usie_softc* %45)
  %47 = load %struct.usie_softc*, %struct.usie_softc** %4, align 8
  %48 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %47, i32 0, i32 9
  %49 = load %struct.usie_softc*, %struct.usie_softc** %4, align 8
  %50 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %49, i32 0, i32 4
  %51 = call i32 @usb_callout_init_mtx(i32* %48, i32* %50, i32 0)
  %52 = load %struct.usie_softc*, %struct.usie_softc** %4, align 8
  %53 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %52, i32 0, i32 4
  %54 = call i32 @mtx_lock(i32* %53)
  %55 = load i32, i32* @UT_WRITE_VENDOR_DEVICE, align 4
  %56 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %9, i32 0, i32 4
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* @USIE_POWER, align 4
  %58 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %9, i32 0, i32 3
  store i32 %57, i32* %58, align 4
  %59 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %9, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @USETW(i32 %60, i32 0)
  %62 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %9, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @USETW(i32 %63, i32 0)
  %65 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %9, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @USETW(i32 %66, i32 0)
  %68 = load %struct.usie_softc*, %struct.usie_softc** %4, align 8
  %69 = call i64 @usie_do_request(%struct.usie_softc* %68, %struct.usb_device_request* %9, i32* null)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %1
  %72 = load %struct.usie_softc*, %struct.usie_softc** %4, align 8
  %73 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %72, i32 0, i32 4
  %74 = call i32 @mtx_unlock(i32* %73)
  br label %403

75:                                               ; preds = %1
  store i32 0, i32* %11, align 4
  %76 = load i32, i32* @UT_READ_VENDOR_DEVICE, align 4
  %77 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %9, i32 0, i32 4
  store i32 %76, i32* %77, align 4
  %78 = load i32, i32* @USIE_FW_ATTR, align 4
  %79 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %9, i32 0, i32 3
  store i32 %78, i32* %79, align 4
  %80 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %9, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @USETW(i32 %81, i32 0)
  %83 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %9, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @USETW(i32 %84, i32 0)
  %86 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %9, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @USETW(i32 %87, i32 4)
  %89 = load %struct.usie_softc*, %struct.usie_softc** %4, align 8
  %90 = call i64 @usie_do_request(%struct.usie_softc* %89, %struct.usb_device_request* %9, i32* %11)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %75
  %93 = load %struct.usie_softc*, %struct.usie_softc** %4, align 8
  %94 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %93, i32 0, i32 4
  %95 = call i32 @mtx_unlock(i32* %94)
  br label %403

96:                                               ; preds = %75
  %97 = load %struct.usie_softc*, %struct.usie_softc** %4, align 8
  %98 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %97, i32 0, i32 4
  %99 = call i32 @mtx_unlock(i32* %98)
  %100 = load i32, i32* %11, align 4
  %101 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* @USIE_FW_DHCP, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %96
  %107 = load i32, i32* %3, align 4
  %108 = call i32 (i32, i8*, ...) @device_printf(i32 %107, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  br label %109

109:                                              ; preds = %106, %96
  %110 = load %struct.usie_softc*, %struct.usie_softc** %4, align 8
  %111 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %110, i32 0, i32 0
  store i64 0, i64* %111, align 8
  store i64 0, i64* %13, align 8
  br label %112

112:                                              ; preds = %297, %109
  %113 = load i64, i64* %13, align 8
  %114 = load i64, i64* @USIE_IFACE_MAX, align 8
  %115 = icmp slt i64 %113, %114
  br i1 %115, label %116, label %300

116:                                              ; preds = %112
  %117 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %118 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i64, i64* %13, align 8
  %121 = call %struct.usb_interface* @usbd_get_iface(i32 %119, i64 %120)
  store %struct.usb_interface* %121, %struct.usb_interface** %7, align 8
  %122 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %123 = icmp eq %struct.usb_interface* %122, null
  br i1 %123, label %124, label %125

124:                                              ; preds = %116
  br label %300

125:                                              ; preds = %116
  %126 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %127 = call %struct.usb_interface_descriptor* @usbd_get_interface_descriptor(%struct.usb_interface* %126)
  store %struct.usb_interface_descriptor* %127, %struct.usb_interface_descriptor** %8, align 8
  %128 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %8, align 8
  %129 = icmp eq %struct.usb_interface_descriptor* %128, null
  br i1 %129, label %136, label %130

130:                                              ; preds = %125
  %131 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %8, align 8
  %132 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @UICLASS_VENDOR, align 8
  %135 = icmp ne i64 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %130, %125
  br label %297

137:                                              ; preds = %130
  %138 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %8, align 8
  %139 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = icmp sge i32 %140, 7
  br i1 %141, label %142, label %180

142:                                              ; preds = %137
  %143 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %8, align 8
  %144 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = icmp eq i32 %145, 3
  br i1 %146, label %147, label %180

147:                                              ; preds = %142
  %148 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %8, align 8
  %149 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.usie_softc*, %struct.usie_softc** %4, align 8
  %152 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %151, i32 0, i32 1
  store i32 %150, i32* %152, align 8
  %153 = load i64, i64* %13, align 8
  store i64 %153, i64* %12, align 8
  %154 = load %struct.usie_softc*, %struct.usie_softc** %4, align 8
  %155 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = load i64, i64* %13, align 8
  %158 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %156, i64 %157)
  %159 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %160 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.usie_softc*, %struct.usie_softc** %4, align 8
  %163 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %162, i32 0, i32 8
  %164 = load i32**, i32*** %163, align 8
  %165 = load i64, i64* @usie_if_config, align 8
  %166 = load i64, i64* @USIE_IF_N_XFER, align 8
  %167 = load %struct.usie_softc*, %struct.usie_softc** %4, align 8
  %168 = load %struct.usie_softc*, %struct.usie_softc** %4, align 8
  %169 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %168, i32 0, i32 4
  %170 = call i32 @usbd_transfer_setup(i32 %161, i64* %12, i32** %164, i64 %165, i64 %166, %struct.usie_softc* %167, i32* %169)
  store i32 %170, i32* %10, align 4
  %171 = load i32, i32* %10, align 4
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %147
  br label %297

174:                                              ; preds = %147
  %175 = load i32, i32* %3, align 4
  %176 = load i64, i64* %12, align 8
  %177 = load i32, i32* %10, align 4
  %178 = call i32 @usbd_errstr(i32 %177)
  %179 = call i32 (i32, i8*, ...) @device_printf(i32 %175, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0), i64 %176, i32 %178)
  br label %403

180:                                              ; preds = %142, %137
  %181 = load %struct.usie_softc*, %struct.usie_softc** %4, align 8
  %182 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @USIE_UCOM_MAX, align 8
  %185 = icmp uge i64 %183, %184
  br i1 %185, label %186, label %187

186:                                              ; preds = %180
  br label %297

187:                                              ; preds = %180
  %188 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %189 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load i64, i64* %13, align 8
  %192 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %193 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @usbd_set_parent_iface(i32 %190, i64 %191, i32 %195)
  %197 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %8, align 8
  %198 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %8, align 8
  %201 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %199, i32 %202)
  %204 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %8, align 8
  %205 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 4
  %207 = icmp eq i32 %206, 2
  br i1 %207, label %208, label %218

208:                                              ; preds = %187
  %209 = load %struct.usie_softc*, %struct.usie_softc** %4, align 8
  %210 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %209, i32 0, i32 7
  %211 = load i32***, i32**** %210, align 8
  %212 = load %struct.usie_softc*, %struct.usie_softc** %4, align 8
  %213 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = getelementptr inbounds i32**, i32*** %211, i64 %214
  %216 = load i32**, i32*** %215, align 8
  %217 = getelementptr inbounds i32*, i32** %216, i64 0
  store i32* null, i32** %217, align 8
  store i64 1, i64* %14, align 8
  br label %219

218:                                              ; preds = %187
  store i64 0, i64* %14, align 8
  br label %219

219:                                              ; preds = %218, %208
  %220 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %221 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.usie_softc*, %struct.usie_softc** %4, align 8
  %224 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %223, i32 0, i32 7
  %225 = load i32***, i32**** %224, align 8
  %226 = load %struct.usie_softc*, %struct.usie_softc** %4, align 8
  %227 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = getelementptr inbounds i32**, i32*** %225, i64 %228
  %230 = load i32**, i32*** %229, align 8
  %231 = load i64, i64* %14, align 8
  %232 = getelementptr inbounds i32*, i32** %230, i64 %231
  %233 = load i64, i64* @usie_uc_config, align 8
  %234 = load i64, i64* %14, align 8
  %235 = add nsw i64 %233, %234
  %236 = load i64, i64* @USIE_UC_N_XFER, align 8
  %237 = load i64, i64* %14, align 8
  %238 = sub nsw i64 %236, %237
  %239 = load %struct.usie_softc*, %struct.usie_softc** %4, align 8
  %240 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %239, i32 0, i32 5
  %241 = load %struct.usie_softc*, %struct.usie_softc** %240, align 8
  %242 = load %struct.usie_softc*, %struct.usie_softc** %4, align 8
  %243 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %241, i64 %244
  %246 = load %struct.usie_softc*, %struct.usie_softc** %4, align 8
  %247 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %246, i32 0, i32 4
  %248 = call i32 @usbd_transfer_setup(i32 %222, i64* %13, i32** %232, i64 %235, i64 %238, %struct.usie_softc* %245, i32* %247)
  store i32 %248, i32* %10, align 4
  %249 = load i32, i32* %10, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %255

251:                                              ; preds = %219
  %252 = load i32, i32* %10, align 4
  %253 = call i32 @usbd_errstr(i32 %252)
  %254 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %253)
  br label %297

255:                                              ; preds = %219
  %256 = load %struct.usie_softc*, %struct.usie_softc** %4, align 8
  %257 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %256, i32 0, i32 4
  %258 = call i32 @mtx_lock(i32* %257)
  br label %259

259:                                              ; preds = %276, %255
  %260 = load i64, i64* %14, align 8
  %261 = load i64, i64* @USIE_UC_N_XFER, align 8
  %262 = icmp slt i64 %260, %261
  br i1 %262, label %263, label %279

263:                                              ; preds = %259
  %264 = load %struct.usie_softc*, %struct.usie_softc** %4, align 8
  %265 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %264, i32 0, i32 7
  %266 = load i32***, i32**** %265, align 8
  %267 = load %struct.usie_softc*, %struct.usie_softc** %4, align 8
  %268 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = getelementptr inbounds i32**, i32*** %266, i64 %269
  %271 = load i32**, i32*** %270, align 8
  %272 = load i64, i64* %14, align 8
  %273 = getelementptr inbounds i32*, i32** %271, i64 %272
  %274 = load i32*, i32** %273, align 8
  %275 = call i32 @usbd_xfer_set_stall(i32* %274)
  br label %276

276:                                              ; preds = %263
  %277 = load i64, i64* %14, align 8
  %278 = add nsw i64 %277, 1
  store i64 %278, i64* %14, align 8
  br label %259

279:                                              ; preds = %259
  %280 = load %struct.usie_softc*, %struct.usie_softc** %4, align 8
  %281 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %280, i32 0, i32 4
  %282 = call i32 @mtx_unlock(i32* %281)
  %283 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %8, align 8
  %284 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 8
  %286 = load %struct.usie_softc*, %struct.usie_softc** %4, align 8
  %287 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %286, i32 0, i32 2
  %288 = load i32*, i32** %287, align 8
  %289 = load %struct.usie_softc*, %struct.usie_softc** %4, align 8
  %290 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %289, i32 0, i32 0
  %291 = load i64, i64* %290, align 8
  %292 = getelementptr inbounds i32, i32* %288, i64 %291
  store i32 %285, i32* %292, align 4
  %293 = load %struct.usie_softc*, %struct.usie_softc** %4, align 8
  %294 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %293, i32 0, i32 0
  %295 = load i64, i64* %294, align 8
  %296 = add i64 %295, 1
  store i64 %296, i64* %294, align 8
  br label %297

297:                                              ; preds = %279, %251, %186, %173, %136
  %298 = load i64, i64* %13, align 8
  %299 = add nsw i64 %298, 1
  store i64 %299, i64* %13, align 8
  br label %112

300:                                              ; preds = %124, %112
  %301 = load %struct.usie_softc*, %struct.usie_softc** %4, align 8
  %302 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %301, i32 0, i32 0
  %303 = load i64, i64* %302, align 8
  %304 = icmp eq i64 %303, 0
  br i1 %304, label %305, label %308

305:                                              ; preds = %300
  %306 = load i32, i32* %3, align 4
  %307 = call i32 (i32, i8*, ...) @device_printf(i32 %306, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  br label %403

308:                                              ; preds = %300
  %309 = load %struct.usie_softc*, %struct.usie_softc** %4, align 8
  %310 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %309, i32 0, i32 6
  %311 = load %struct.usie_softc*, %struct.usie_softc** %4, align 8
  %312 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %311, i32 0, i32 5
  %313 = load %struct.usie_softc*, %struct.usie_softc** %312, align 8
  %314 = load %struct.usie_softc*, %struct.usie_softc** %4, align 8
  %315 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %314, i32 0, i32 0
  %316 = load i64, i64* %315, align 8
  %317 = load %struct.usie_softc*, %struct.usie_softc** %4, align 8
  %318 = load %struct.usie_softc*, %struct.usie_softc** %4, align 8
  %319 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %318, i32 0, i32 4
  %320 = call i32 @ucom_attach(i32* %310, %struct.usie_softc* %313, i64 %316, %struct.usie_softc* %317, i32* @usie_uc_callback, i32* %319)
  store i32 %320, i32* %10, align 4
  %321 = load i32, i32* %10, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %325

323:                                              ; preds = %308
  %324 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  br label %403

325:                                              ; preds = %308
  %326 = load %struct.usie_softc*, %struct.usie_softc** %4, align 8
  %327 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %326, i32 0, i32 0
  %328 = load i64, i64* %327, align 8
  %329 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i64 %328)
  %330 = load i32, i32* @IFT_OTHER, align 4
  %331 = call %struct.ifnet* @if_alloc(i32 %330)
  store %struct.ifnet* %331, %struct.ifnet** %6, align 8
  %332 = load %struct.usie_softc*, %struct.usie_softc** %4, align 8
  %333 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %332, i32 0, i32 3
  store %struct.ifnet* %331, %struct.ifnet** %333, align 8
  %334 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %335 = icmp eq %struct.ifnet* %334, null
  br i1 %335, label %336, label %339

336:                                              ; preds = %325
  %337 = load i32, i32* %3, align 4
  %338 = call i32 (i32, i8*, ...) @device_printf(i32 %337, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0))
  br label %403

339:                                              ; preds = %325
  %340 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %341 = load i32, i32* %3, align 4
  %342 = call i32 @device_get_unit(i32 %341)
  %343 = call i32 @if_initname(%struct.ifnet* %340, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %342)
  %344 = load %struct.usie_softc*, %struct.usie_softc** %4, align 8
  %345 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %346 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %345, i32 0, i32 7
  store %struct.usie_softc* %344, %struct.usie_softc** %346, align 8
  %347 = load i32, i32* @USIE_MTU_MAX, align 4
  %348 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %349 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %348, i32 0, i32 6
  store i32 %347, i32* %349, align 8
  %350 = load i32, i32* @IFF_NOARP, align 4
  %351 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %352 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %351, i32 0, i32 5
  %353 = load i32, i32* %352, align 4
  %354 = or i32 %353, %350
  store i32 %354, i32* %352, align 4
  %355 = load i32, i32* @usie_if_init, align 4
  %356 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %357 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %356, i32 0, i32 4
  store i32 %355, i32* %357, align 8
  %358 = load i32, i32* @usie_if_ioctl, align 4
  %359 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %360 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %359, i32 0, i32 3
  store i32 %358, i32* %360, align 4
  %361 = load i32, i32* @usie_if_start, align 4
  %362 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %363 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %362, i32 0, i32 2
  store i32 %361, i32* %363, align 8
  %364 = load i32, i32* @usie_if_output, align 4
  %365 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %366 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %365, i32 0, i32 1
  store i32 %364, i32* %366, align 4
  %367 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %368 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %367, i32 0, i32 0
  %369 = load i32, i32* @ifqmaxlen, align 4
  %370 = call i32 @IFQ_SET_MAXLEN(%struct.TYPE_5__* %368, i32 %369)
  %371 = load i32, i32* @ifqmaxlen, align 4
  %372 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %373 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %372, i32 0, i32 0
  %374 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %373, i32 0, i32 0
  store i32 %371, i32* %374, align 8
  %375 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %376 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %375, i32 0, i32 0
  %377 = call i32 @IFQ_SET_READY(%struct.TYPE_5__* %376)
  %378 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %379 = call i32 @if_attach(%struct.ifnet* %378)
  %380 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %381 = load i32, i32* @DLT_RAW, align 4
  %382 = call i32 @bpfattach(%struct.ifnet* %380, i32 %381, i32 0)
  %383 = load i32, i32* %11, align 4
  %384 = load i32, i32* @USIE_PM_AUTO, align 4
  %385 = and i32 %383, %384
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %387, label %394

387:                                              ; preds = %339
  %388 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %389 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %388, i32 0, i32 0
  %390 = load i32, i32* %389, align 4
  %391 = load i32, i32* @USB_POWER_MODE_SAVE, align 4
  %392 = call i32 @usbd_set_power_mode(i32 %390, i32 %391)
  %393 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0))
  br label %401

394:                                              ; preds = %339
  %395 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %396 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %395, i32 0, i32 0
  %397 = load i32, i32* %396, align 4
  %398 = load i32, i32* @USB_POWER_MODE_ON, align 4
  %399 = call i32 @usbd_set_power_mode(i32 %397, i32 %398)
  %400 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0))
  br label %401

401:                                              ; preds = %394, %387
  %402 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %407

403:                                              ; preds = %336, %323, %305, %174, %92, %71
  %404 = load i32, i32* %3, align 4
  %405 = call i32 @usie_detach(i32 %404)
  %406 = load i32, i32* @ENOMEM, align 4
  store i32 %406, i32* %2, align 4
  br label %407

407:                                              ; preds = %403, %401
  %408 = load i32, i32* %2, align 4
  ret i32 %408
}

declare dso_local %struct.usie_softc* @device_get_softc(i32) #1

declare dso_local %struct.usb_attach_arg* @device_get_ivars(i32) #1

declare dso_local i32 @device_set_usb_desc(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32, i32) #1

declare dso_local i32 @ucom_ref(i32*) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.usie_softc*) #1

declare dso_local i32 @usb_callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i64 @usie_do_request(%struct.usie_softc*, %struct.usb_device_request*, i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @DPRINTF(i8*, ...) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local %struct.usb_interface* @usbd_get_iface(i32, i64) #1

declare dso_local %struct.usb_interface_descriptor* @usbd_get_interface_descriptor(%struct.usb_interface*) #1

declare dso_local i32 @usbd_transfer_setup(i32, i64*, i32**, i64, i64, %struct.usie_softc*, i32*) #1

declare dso_local i32 @usbd_errstr(i32) #1

declare dso_local i32 @usbd_set_parent_iface(i32, i64, i32) #1

declare dso_local i32 @usbd_xfer_set_stall(i32*) #1

declare dso_local i32 @ucom_attach(i32*, %struct.usie_softc*, i64, %struct.usie_softc*, i32*, i32*) #1

declare dso_local %struct.ifnet* @if_alloc(i32) #1

declare dso_local i32 @if_initname(%struct.ifnet*, i8*, i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @IFQ_SET_MAXLEN(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @IFQ_SET_READY(%struct.TYPE_5__*) #1

declare dso_local i32 @if_attach(%struct.ifnet*) #1

declare dso_local i32 @bpfattach(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @usbd_set_power_mode(i32, i32) #1

declare dso_local i32 @usie_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
