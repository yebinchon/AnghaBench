; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_ufoma.c_ufoma_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_ufoma.c_ufoma_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_attach_arg = type { i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.ufoma_softc = type { i32, i32*, %struct.TYPE_9__, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.usb_config_descriptor = type { i32 }
%struct.usb_interface_descriptor = type { i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }
%struct.TYPE_8__ = type { i32, i64, i32* }

@.str = private unnamed_addr constant [6 x i8] c"ufoma\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"CWAIT\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@ufoma_ctrl_config = common dso_local global i32 0, align 4
@UFOMA_CTRL_ENDPT_MAX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"allocating control USB transfers failed\0A\00", align 1
@UDESC_VS_INTERFACE = common dso_local global i32 0, align 4
@UDESCSUB_MCPC_ACM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"invalid MAD descriptor\0A\00", align 1
@UMCPC_ACM_TYPE_AB5 = common dso_local global i64 0, align 8
@UMCPC_ACM_TYPE_AB6 = common dso_local global i64 0, align 8
@M_USBDEV = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@UMCPC_ACM_MODE_UNLINKED = common dso_local global i32 0, align 4
@UFOMA_BULK_ENDPT_WRITE = common dso_local global i64 0, align 8
@UFOMA_BULK_ENDPT_READ = common dso_local global i64 0, align 8
@ufoma_callback = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"ucom_attach failed\0A\00", align 1
@OID_AUTO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"supportmode\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@CTLTYPE_STRING = common dso_local global i32 0, align 4
@ufoma_sysctl_support = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"Supporting port role\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"currentmode\00", align 1
@ufoma_sysctl_current = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [18 x i8] c"Current port role\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"openmode\00", align 1
@CTLFLAG_RW = common dso_local global i32 0, align 4
@ufoma_sysctl_open = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [36 x i8] c"Mode to transit when port is opened\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"comunit\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"Unit number as USB serial\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ufoma_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufoma_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_attach_arg*, align 8
  %5 = alloca %struct.ufoma_softc*, align 8
  %6 = alloca %struct.usb_config_descriptor*, align 8
  %7 = alloca %struct.usb_interface_descriptor*, align 8
  %8 = alloca %struct.sysctl_ctx_list*, align 8
  %9 = alloca %struct.sysctl_oid*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call %struct.usb_attach_arg* @device_get_ivars(i32 %13)
  store %struct.usb_attach_arg* %14, %struct.usb_attach_arg** %4, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call %struct.ufoma_softc* @device_get_softc(i32 %15)
  store %struct.ufoma_softc* %16, %struct.ufoma_softc** %5, align 8
  %17 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %18 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ufoma_softc*, %struct.ufoma_softc** %5, align 8
  %21 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %20, i32 0, i32 14
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.ufoma_softc*, %struct.ufoma_softc** %5, align 8
  %24 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %23, i32 0, i32 13
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @device_get_unit(i32 %25)
  %27 = load %struct.ufoma_softc*, %struct.ufoma_softc** %5, align 8
  %28 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %27, i32 0, i32 12
  store i32 %26, i32* %28, align 8
  %29 = load %struct.ufoma_softc*, %struct.ufoma_softc** %5, align 8
  %30 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %29, i32 0, i32 3
  %31 = load i32, i32* @MTX_DEF, align 4
  %32 = call i32 @mtx_init(i32* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* null, i32 %31)
  %33 = load %struct.ufoma_softc*, %struct.ufoma_softc** %5, align 8
  %34 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %33, i32 0, i32 2
  %35 = call i32 @ucom_ref(%struct.TYPE_9__* %34)
  %36 = load %struct.ufoma_softc*, %struct.ufoma_softc** %5, align 8
  %37 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %36, i32 0, i32 11
  %38 = call i32 @cv_init(i32* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @device_set_usb_desc(i32 %39)
  %41 = call i32 @DPRINTF(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %42 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %43 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.usb_config_descriptor* @usbd_get_config_descriptor(i32 %44)
  store %struct.usb_config_descriptor* %45, %struct.usb_config_descriptor** %6, align 8
  %46 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %47 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.usb_interface_descriptor* @usbd_get_interface_descriptor(i32 %48)
  store %struct.usb_interface_descriptor* %49, %struct.usb_interface_descriptor** %7, align 8
  %50 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %7, align 8
  %51 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ufoma_softc*, %struct.ufoma_softc** %5, align 8
  %54 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %53, i32 0, i32 10
  store i32 %52, i32* %54, align 8
  %55 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %56 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ufoma_softc*, %struct.ufoma_softc** %5, align 8
  %60 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %59, i32 0, i32 9
  store i32 %58, i32* %60, align 4
  %61 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %62 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ufoma_softc*, %struct.ufoma_softc** %5, align 8
  %65 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %64, i32 0, i32 9
  %66 = load %struct.ufoma_softc*, %struct.ufoma_softc** %5, align 8
  %67 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %66, i32 0, i32 8
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @ufoma_ctrl_config, align 4
  %70 = load i32, i32* @UFOMA_CTRL_ENDPT_MAX, align 4
  %71 = load %struct.ufoma_softc*, %struct.ufoma_softc** %5, align 8
  %72 = load %struct.ufoma_softc*, %struct.ufoma_softc** %5, align 8
  %73 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %72, i32 0, i32 3
  %74 = call i64 @usbd_transfer_setup(i32 %63, i32* %65, i32 %68, i32 %69, i32 %70, %struct.ufoma_softc* %71, i32* %73)
  store i64 %74, i64* %12, align 8
  %75 = load i64, i64* %12, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %1
  %78 = load i32, i32* %3, align 4
  %79 = call i32 @device_printf(i32 %78, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %249

80:                                               ; preds = %1
  %81 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %6, align 8
  %82 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %7, align 8
  %83 = load i32, i32* @UDESC_VS_INTERFACE, align 4
  %84 = load i32, i32* @UDESCSUB_MCPC_ACM, align 4
  %85 = call %struct.TYPE_8__* @ufoma_get_intconf(%struct.usb_config_descriptor* %81, %struct.usb_interface_descriptor* %82, i32 %83, i32 %84)
  store %struct.TYPE_8__* %85, %struct.TYPE_8__** %10, align 8
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %87 = icmp eq %struct.TYPE_8__* %86, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  br label %249

89:                                               ; preds = %80
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = icmp ult i64 %93, 24
  br i1 %94, label %95, label %98

95:                                               ; preds = %89
  %96 = load i32, i32* %3, align 4
  %97 = call i32 @device_printf(i32 %96, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %249

98:                                               ; preds = %89
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @UMCPC_ACM_TYPE_AB5, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %110, label %104

104:                                              ; preds = %98
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @UMCPC_ACM_TYPE_AB6, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %104, %98
  %111 = load %struct.ufoma_softc*, %struct.ufoma_softc** %5, align 8
  %112 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %111, i32 0, i32 0
  store i32 1, i32* %112, align 8
  br label %123

113:                                              ; preds = %104
  %114 = load %struct.ufoma_softc*, %struct.ufoma_softc** %5, align 8
  %115 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %114, i32 0, i32 0
  store i32 0, i32* %115, align 8
  %116 = load i32, i32* %3, align 4
  %117 = load %struct.ufoma_softc*, %struct.ufoma_softc** %5, align 8
  %118 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %119 = call i64 @ufoma_modem_setup(i32 %116, %struct.ufoma_softc* %117, %struct.usb_attach_arg* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %113
  br label %249

122:                                              ; preds = %113
  br label %123

123:                                              ; preds = %122, %110
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = sext i32 %126 to i64
  %128 = sub i64 %127, 24
  %129 = add i64 %128, 1
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %11, align 4
  %131 = load i32, i32* %11, align 4
  %132 = add nsw i32 %131, 1
  %133 = load i32, i32* @M_USBDEV, align 4
  %134 = load i32, i32* @M_WAITOK, align 4
  %135 = call i32* @malloc(i32 %132, i32 %133, i32 %134)
  %136 = load %struct.ufoma_softc*, %struct.ufoma_softc** %5, align 8
  %137 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %136, i32 0, i32 1
  store i32* %135, i32** %137, align 8
  %138 = load %struct.ufoma_softc*, %struct.ufoma_softc** %5, align 8
  %139 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = icmp eq i32* %140, null
  br i1 %141, label %142, label %143

142:                                              ; preds = %123
  br label %249

143:                                              ; preds = %123
  %144 = load i32, i32* %11, align 4
  %145 = add nsw i32 %144, 1
  %146 = load %struct.ufoma_softc*, %struct.ufoma_softc** %5, align 8
  %147 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 0
  store i32 %145, i32* %149, align 4
  %150 = load %struct.ufoma_softc*, %struct.ufoma_softc** %5, align 8
  %151 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 1
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 2
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %11, align 4
  %158 = call i32 @memcpy(i32* %153, i32* %156, i32 %157)
  %159 = load i32, i32* @UMCPC_ACM_MODE_UNLINKED, align 4
  %160 = load %struct.ufoma_softc*, %struct.ufoma_softc** %5, align 8
  %161 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %160, i32 0, i32 7
  store i32 %159, i32* %161, align 4
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 2
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 0
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.ufoma_softc*, %struct.ufoma_softc** %5, align 8
  %168 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %167, i32 0, i32 6
  store i32 %166, i32* %168, align 8
  %169 = load %struct.ufoma_softc*, %struct.ufoma_softc** %5, align 8
  %170 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %169, i32 0, i32 3
  %171 = call i32 @mtx_lock(i32* %170)
  %172 = load %struct.ufoma_softc*, %struct.ufoma_softc** %5, align 8
  %173 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %172, i32 0, i32 5
  %174 = load i32*, i32** %173, align 8
  %175 = load i64, i64* @UFOMA_BULK_ENDPT_WRITE, align 8
  %176 = getelementptr inbounds i32, i32* %174, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @usbd_xfer_set_stall(i32 %177)
  %179 = load %struct.ufoma_softc*, %struct.ufoma_softc** %5, align 8
  %180 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %179, i32 0, i32 5
  %181 = load i32*, i32** %180, align 8
  %182 = load i64, i64* @UFOMA_BULK_ENDPT_READ, align 8
  %183 = getelementptr inbounds i32, i32* %181, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @usbd_xfer_set_stall(i32 %184)
  %186 = load %struct.ufoma_softc*, %struct.ufoma_softc** %5, align 8
  %187 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %186, i32 0, i32 3
  %188 = call i32 @mtx_unlock(i32* %187)
  %189 = load %struct.ufoma_softc*, %struct.ufoma_softc** %5, align 8
  %190 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %189, i32 0, i32 2
  %191 = load %struct.ufoma_softc*, %struct.ufoma_softc** %5, align 8
  %192 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %191, i32 0, i32 4
  %193 = load %struct.ufoma_softc*, %struct.ufoma_softc** %5, align 8
  %194 = load %struct.ufoma_softc*, %struct.ufoma_softc** %5, align 8
  %195 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %194, i32 0, i32 3
  %196 = call i64 @ucom_attach(%struct.TYPE_9__* %190, i32* %192, i32 1, %struct.ufoma_softc* %193, i32* @ufoma_callback, i32* %195)
  store i64 %196, i64* %12, align 8
  %197 = load i64, i64* %12, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %143
  %200 = call i32 @DPRINTF(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  br label %249

201:                                              ; preds = %143
  %202 = load %struct.ufoma_softc*, %struct.ufoma_softc** %5, align 8
  %203 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %202, i32 0, i32 2
  %204 = load i32, i32* %3, align 4
  %205 = call i32 @ucom_set_pnpinfo_usb(%struct.TYPE_9__* %203, i32 %204)
  %206 = load i32, i32* %3, align 4
  %207 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %206)
  store %struct.sysctl_ctx_list* %207, %struct.sysctl_ctx_list** %8, align 8
  %208 = load i32, i32* %3, align 4
  %209 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %208)
  store %struct.sysctl_oid* %209, %struct.sysctl_oid** %9, align 8
  %210 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %8, align 8
  %211 = load %struct.sysctl_oid*, %struct.sysctl_oid** %9, align 8
  %212 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %211)
  %213 = load i32, i32* @OID_AUTO, align 4
  %214 = load i32, i32* @CTLFLAG_RD, align 4
  %215 = load i32, i32* @CTLTYPE_STRING, align 4
  %216 = or i32 %214, %215
  %217 = load %struct.ufoma_softc*, %struct.ufoma_softc** %5, align 8
  %218 = load i32, i32* @ufoma_sysctl_support, align 4
  %219 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %210, i32 %212, i32 %213, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %216, %struct.ufoma_softc* %217, i32 0, i32 %218, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %220 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %8, align 8
  %221 = load %struct.sysctl_oid*, %struct.sysctl_oid** %9, align 8
  %222 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %221)
  %223 = load i32, i32* @OID_AUTO, align 4
  %224 = load i32, i32* @CTLFLAG_RD, align 4
  %225 = load i32, i32* @CTLTYPE_STRING, align 4
  %226 = or i32 %224, %225
  %227 = load %struct.ufoma_softc*, %struct.ufoma_softc** %5, align 8
  %228 = load i32, i32* @ufoma_sysctl_current, align 4
  %229 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %220, i32 %222, i32 %223, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32 %226, %struct.ufoma_softc* %227, i32 0, i32 %228, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0))
  %230 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %8, align 8
  %231 = load %struct.sysctl_oid*, %struct.sysctl_oid** %9, align 8
  %232 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %231)
  %233 = load i32, i32* @OID_AUTO, align 4
  %234 = load i32, i32* @CTLFLAG_RW, align 4
  %235 = load i32, i32* @CTLTYPE_STRING, align 4
  %236 = or i32 %234, %235
  %237 = load %struct.ufoma_softc*, %struct.ufoma_softc** %5, align 8
  %238 = load i32, i32* @ufoma_sysctl_open, align 4
  %239 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %230, i32 %232, i32 %233, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i32 %236, %struct.ufoma_softc* %237, i32 0, i32 %238, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0))
  %240 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %8, align 8
  %241 = load %struct.sysctl_oid*, %struct.sysctl_oid** %9, align 8
  %242 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %241)
  %243 = load i32, i32* @OID_AUTO, align 4
  %244 = load i32, i32* @CTLFLAG_RD, align 4
  %245 = load %struct.ufoma_softc*, %struct.ufoma_softc** %5, align 8
  %246 = getelementptr inbounds %struct.ufoma_softc, %struct.ufoma_softc* %245, i32 0, i32 2
  %247 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %246, i32 0, i32 0
  %248 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %240, i32 %242, i32 %243, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i32 %244, i32* %247, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %253

249:                                              ; preds = %199, %142, %121, %95, %88, %77
  %250 = load i32, i32* %3, align 4
  %251 = call i32 @ufoma_detach(i32 %250)
  %252 = load i32, i32* @ENXIO, align 4
  store i32 %252, i32* %2, align 4
  br label %253

253:                                              ; preds = %249, %201
  %254 = load i32, i32* %2, align 4
  ret i32 %254
}

declare dso_local %struct.usb_attach_arg* @device_get_ivars(i32) #1

declare dso_local %struct.ufoma_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @ucom_ref(%struct.TYPE_9__*) #1

declare dso_local i32 @cv_init(i32*, i8*) #1

declare dso_local i32 @device_set_usb_desc(i32) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local %struct.usb_config_descriptor* @usbd_get_config_descriptor(i32) #1

declare dso_local %struct.usb_interface_descriptor* @usbd_get_interface_descriptor(i32) #1

declare dso_local i64 @usbd_transfer_setup(i32, i32*, i32, i32, i32, %struct.ufoma_softc*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local %struct.TYPE_8__* @ufoma_get_intconf(%struct.usb_config_descriptor*, %struct.usb_interface_descriptor*, i32, i32) #1

declare dso_local i64 @ufoma_modem_setup(i32, %struct.ufoma_softc*, %struct.usb_attach_arg*) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @usbd_xfer_set_stall(i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i64 @ucom_attach(%struct.TYPE_9__*, i32*, i32, %struct.ufoma_softc*, i32*, i32*) #1

declare dso_local i32 @ucom_set_pnpinfo_usb(%struct.TYPE_9__*, i32) #1

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, %struct.ufoma_softc*, i32, i32, i8*, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @ufoma_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
