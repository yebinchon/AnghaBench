; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/video/extr_udl.c_udl_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/video/extr_udl.c_udl_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }
%struct.udl_softc = type { i32, i32, i32, i32, i32*, %struct.TYPE_5__, i64, i32, i32, %struct.udl_cmd_buf*, i32, i32*, i32*, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i64, i32*, %struct.udl_softc*, i64, i64, i32, i32 }
%struct.udl_cmd_buf = type { i32 }
%struct.usb_attach_arg = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"UDL lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"UDLCV\00", align 1
@udl_config = common dso_local global i32 0, align 4
@UDL_N_TRANSFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"usbd_transfer_setup error=%s\0A\00", align 1
@UDL_BULK_WRITE_0 = common dso_local global i64 0, align 8
@UDL_BULK_WRITE_1 = common dso_local global i64 0, align 8
@UDL_MAX_MODES = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"chipid_force\00", align 1
@CTLFLAG_RWTUN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"chip ID\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"chipid\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@DLMAX = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"Forcing chip ID to 0x%04x\0A\00", align 1
@DLUNK = common dso_local global i32 0, align 4
@UDL_CMD_MAX_BUFFERS = common dso_local global i32 0, align 4
@entry = common dso_local global i32 0, align 4
@USB_ERR_NORMAL_COMPLETION = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"mode_force\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@udl_modes = common dso_local global %struct.TYPE_6__* null, align 8
@.str.9 = private unnamed_addr constant [20 x i8] c"Forcing mode to %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"Mode selected %dx%d @ %dHz\0A\00", align 1
@udl_fb_setblankmode = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [4 x i8] c"fbd\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @udl_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udl_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.sysctl_ctx_list*, align 8
  %5 = alloca %struct.sysctl_oid*, align 8
  %6 = alloca %struct.udl_softc*, align 8
  %7 = alloca %struct.usb_attach_arg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.udl_cmd_buf*, align 8
  store i32 %0, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %11)
  store %struct.sysctl_ctx_list* %12, %struct.sysctl_ctx_list** %4, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %13)
  store %struct.sysctl_oid* %14, %struct.sysctl_oid** %5, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call %struct.udl_softc* @device_get_softc(i32 %15)
  store %struct.udl_softc* %16, %struct.udl_softc** %6, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call %struct.usb_attach_arg* @device_get_ivars(i32 %17)
  store %struct.usb_attach_arg* %18, %struct.usb_attach_arg** %7, align 8
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @device_set_usb_desc(i32 %19)
  %21 = load %struct.udl_softc*, %struct.udl_softc** %6, align 8
  %22 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %21, i32 0, i32 13
  %23 = load i32, i32* @MTX_DEF, align 4
  %24 = call i32 @mtx_init(i32* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* null, i32 %23)
  %25 = load %struct.udl_softc*, %struct.udl_softc** %6, align 8
  %26 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %25, i32 0, i32 16
  %27 = call i32 @cv_init(i32* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.udl_softc*, %struct.udl_softc** %6, align 8
  %29 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %28, i32 0, i32 15
  %30 = load %struct.udl_softc*, %struct.udl_softc** %6, align 8
  %31 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %30, i32 0, i32 13
  %32 = call i32 @callout_init_mtx(i32* %29, i32* %31, i32 0)
  %33 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %7, align 8
  %34 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.udl_softc*, %struct.udl_softc** %6, align 8
  %37 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %36, i32 0, i32 14
  store i32 %35, i32* %37, align 4
  %38 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %7, align 8
  %39 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %7, align 8
  %42 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load %struct.udl_softc*, %struct.udl_softc** %6, align 8
  %45 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %44, i32 0, i32 12
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* @udl_config, align 4
  %48 = load i32, i32* @UDL_N_TRANSFER, align 4
  %49 = load %struct.udl_softc*, %struct.udl_softc** %6, align 8
  %50 = load %struct.udl_softc*, %struct.udl_softc** %6, align 8
  %51 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %50, i32 0, i32 13
  %52 = call i32 @usbd_transfer_setup(i32 %40, i32* %43, i32* %46, i32 %47, i32 %48, %struct.udl_softc* %49, i32* %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %1
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @usbd_errstr(i32 %56)
  %58 = call i32 @DPRINTF(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  br label %319

59:                                               ; preds = %1
  %60 = load %struct.udl_softc*, %struct.udl_softc** %6, align 8
  %61 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %60, i32 0, i32 12
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* @UDL_BULK_WRITE_0, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.udl_softc*, %struct.udl_softc** %6, align 8
  %67 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %66, i32 0, i32 11
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = call i32 @usbd_xfer_set_priv(i32 %65, i32* %69)
  %71 = load %struct.udl_softc*, %struct.udl_softc** %6, align 8
  %72 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %71, i32 0, i32 12
  %73 = load i32*, i32** %72, align 8
  %74 = load i64, i64* @UDL_BULK_WRITE_1, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.udl_softc*, %struct.udl_softc** %6, align 8
  %78 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %77, i32 0, i32 11
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  %81 = call i32 @usbd_xfer_set_priv(i32 %76, i32* %80)
  %82 = load %struct.udl_softc*, %struct.udl_softc** %6, align 8
  %83 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %82, i32 0, i32 11
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  %86 = call i32 @TAILQ_INIT(i32* %85)
  %87 = load %struct.udl_softc*, %struct.udl_softc** %6, align 8
  %88 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %87, i32 0, i32 11
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  %91 = call i32 @TAILQ_INIT(i32* %90)
  %92 = load %struct.udl_softc*, %struct.udl_softc** %6, align 8
  %93 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %92, i32 0, i32 8
  %94 = call i32 @TAILQ_INIT(i32* %93)
  %95 = load %struct.udl_softc*, %struct.udl_softc** %6, align 8
  %96 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %95, i32 0, i32 10
  %97 = call i32 @TAILQ_INIT(i32* %96)
  %98 = load %struct.udl_softc*, %struct.udl_softc** %6, align 8
  %99 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %98, i32 0, i32 0
  store i32 -1, i32* %99, align 8
  %100 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %7, align 8
  %101 = call i32 @USB_GET_DRIVER_INFO(%struct.usb_attach_arg* %100)
  %102 = load %struct.udl_softc*, %struct.udl_softc** %6, align 8
  %103 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load %struct.udl_softc*, %struct.udl_softc** %6, align 8
  %105 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %104, i32 0, i32 2
  store i32 -1, i32* %105, align 8
  %106 = load i32, i32* @UDL_MAX_MODES, align 4
  %107 = load %struct.udl_softc*, %struct.udl_softc** %6, align 8
  %108 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %107, i32 0, i32 3
  store i32 %106, i32* %108, align 4
  %109 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %110 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %111 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %110)
  %112 = load i32, i32* @OID_AUTO, align 4
  %113 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %114 = load %struct.udl_softc*, %struct.udl_softc** %6, align 8
  %115 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %114, i32 0, i32 0
  %116 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %109, i32 %111, i32 %112, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %113, i32* %115, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %117 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %118 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %119 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %118)
  %120 = load i32, i32* @OID_AUTO, align 4
  %121 = load i32, i32* @CTLFLAG_RD, align 4
  %122 = load %struct.udl_softc*, %struct.udl_softc** %6, align 8
  %123 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %122, i32 0, i32 1
  %124 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %117, i32 %119, i32 %120, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %121, i32* %123, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %125 = load %struct.udl_softc*, %struct.udl_softc** %6, align 8
  %126 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp sgt i32 %127, -1
  br i1 %128, label %129, label %146

129:                                              ; preds = %59
  %130 = load %struct.udl_softc*, %struct.udl_softc** %6, align 8
  %131 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @DLMAX, align 4
  %134 = icmp sle i32 %132, %133
  br i1 %134, label %135, label %146

135:                                              ; preds = %129
  %136 = load i32, i32* %3, align 4
  %137 = load %struct.udl_softc*, %struct.udl_softc** %6, align 8
  %138 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %136, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %139)
  %141 = load %struct.udl_softc*, %struct.udl_softc** %6, align 8
  %142 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.udl_softc*, %struct.udl_softc** %6, align 8
  %145 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %144, i32 0, i32 1
  store i32 %143, i32* %145, align 4
  br label %146

146:                                              ; preds = %135, %129, %59
  %147 = load %struct.udl_softc*, %struct.udl_softc** %6, align 8
  %148 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @DLUNK, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %156

152:                                              ; preds = %146
  %153 = load %struct.udl_softc*, %struct.udl_softc** %6, align 8
  %154 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %7, align 8
  %155 = call i32 @udl_select_chip(%struct.udl_softc* %153, %struct.usb_attach_arg* %154)
  br label %156

156:                                              ; preds = %152, %146
  store i32 0, i32* %9, align 4
  br label %157

157:                                              ; preds = %173, %156
  %158 = load i32, i32* %9, align 4
  %159 = load i32, i32* @UDL_CMD_MAX_BUFFERS, align 4
  %160 = icmp ne i32 %158, %159
  br i1 %160, label %161, label %176

161:                                              ; preds = %157
  %162 = load %struct.udl_softc*, %struct.udl_softc** %6, align 8
  %163 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %162, i32 0, i32 9
  %164 = load %struct.udl_cmd_buf*, %struct.udl_cmd_buf** %163, align 8
  %165 = load i32, i32* %9, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.udl_cmd_buf, %struct.udl_cmd_buf* %164, i64 %166
  store %struct.udl_cmd_buf* %167, %struct.udl_cmd_buf** %10, align 8
  %168 = load %struct.udl_softc*, %struct.udl_softc** %6, align 8
  %169 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %168, i32 0, i32 8
  %170 = load %struct.udl_cmd_buf*, %struct.udl_cmd_buf** %10, align 8
  %171 = load i32, i32* @entry, align 4
  %172 = call i32 @TAILQ_INSERT_TAIL(i32* %169, %struct.udl_cmd_buf* %170, i32 %171)
  br label %173

173:                                              ; preds = %161
  %174 = load i32, i32* %9, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %9, align 4
  br label %157

176:                                              ; preds = %157
  %177 = load %struct.udl_softc*, %struct.udl_softc** %6, align 8
  %178 = call i32 @udl_init_chip(%struct.udl_softc* %177)
  store i32 %178, i32* %8, align 4
  %179 = load i32, i32* %8, align 4
  %180 = load i32, i32* @USB_ERR_NORMAL_COMPLETION, align 4
  %181 = icmp ne i32 %179, %180
  br i1 %181, label %182, label %183

182:                                              ; preds = %176
  br label %319

183:                                              ; preds = %176
  %184 = load %struct.udl_softc*, %struct.udl_softc** %6, align 8
  %185 = call i32 @udl_select_mode(%struct.udl_softc* %184)
  %186 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %187 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %188 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %187)
  %189 = load i32, i32* @OID_AUTO, align 4
  %190 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %191 = load %struct.udl_softc*, %struct.udl_softc** %6, align 8
  %192 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %191, i32 0, i32 2
  %193 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %186, i32 %188, i32 %189, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %190, i32* %192, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %194 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %195 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %196 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %195)
  %197 = load i32, i32* @OID_AUTO, align 4
  %198 = load i32, i32* @CTLFLAG_RD, align 4
  %199 = load %struct.udl_softc*, %struct.udl_softc** %6, align 8
  %200 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %199, i32 0, i32 3
  %201 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %194, i32 %196, i32 %197, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %198, i32* %200, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %202 = load %struct.udl_softc*, %struct.udl_softc** %6, align 8
  %203 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  store i32 %204, i32* %9, align 4
  %205 = load i32, i32* %9, align 4
  %206 = icmp sgt i32 %205, -1
  br i1 %206, label %207, label %230

207:                                              ; preds = %183
  %208 = load i32, i32* %9, align 4
  %209 = load i32, i32* @UDL_MAX_MODES, align 4
  %210 = icmp slt i32 %208, %209
  br i1 %210, label %211, label %230

211:                                              ; preds = %207
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** @udl_modes, align 8
  %213 = load i32, i32* %9, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.udl_softc*, %struct.udl_softc** %6, align 8
  %219 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = icmp sle i32 %217, %220
  br i1 %221, label %222, label %229

222:                                              ; preds = %211
  %223 = load i32, i32* %3, align 4
  %224 = load i32, i32* %9, align 4
  %225 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %223, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32 %224)
  %226 = load i32, i32* %9, align 4
  %227 = load %struct.udl_softc*, %struct.udl_softc** %6, align 8
  %228 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %227, i32 0, i32 3
  store i32 %226, i32* %228, align 4
  br label %229

229:                                              ; preds = %222, %211
  br label %230

230:                                              ; preds = %229, %207, %183
  %231 = load i32, i32* %3, align 4
  %232 = load %struct.udl_softc*, %struct.udl_softc** %6, align 8
  %233 = call i32 @udl_get_fb_width(%struct.udl_softc* %232)
  %234 = load %struct.udl_softc*, %struct.udl_softc** %6, align 8
  %235 = call i64 @udl_get_fb_height(%struct.udl_softc* %234)
  %236 = trunc i64 %235 to i32
  %237 = load %struct.udl_softc*, %struct.udl_softc** %6, align 8
  %238 = call i64 @udl_get_fb_hz(%struct.udl_softc* %237)
  %239 = trunc i64 %238 to i32
  %240 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %231, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i32 %233, i32 %236, i32 %239)
  %241 = load %struct.udl_softc*, %struct.udl_softc** %6, align 8
  %242 = call i32 @udl_init_resolution(%struct.udl_softc* %241)
  %243 = load %struct.udl_softc*, %struct.udl_softc** %6, align 8
  %244 = call i32 @udl_fbmem_alloc(%struct.udl_softc* %243)
  %245 = load %struct.udl_softc*, %struct.udl_softc** %6, align 8
  %246 = call i32 @UDL_LOCK(%struct.udl_softc* %245)
  %247 = load %struct.udl_softc*, %struct.udl_softc** %6, align 8
  %248 = call i32 @udl_callout(%struct.udl_softc* %247)
  %249 = load %struct.udl_softc*, %struct.udl_softc** %6, align 8
  %250 = call i32 @UDL_UNLOCK(%struct.udl_softc* %249)
  %251 = load i32, i32* %3, align 4
  %252 = call i32 @device_get_nameunit(i32 %251)
  %253 = load %struct.udl_softc*, %struct.udl_softc** %6, align 8
  %254 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %253, i32 0, i32 5
  %255 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %254, i32 0, i32 10
  store i32 %252, i32* %255, align 4
  %256 = load %struct.udl_softc*, %struct.udl_softc** %6, align 8
  %257 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %256, i32 0, i32 7
  %258 = load i32, i32* %257, align 8
  %259 = load %struct.udl_softc*, %struct.udl_softc** %6, align 8
  %260 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %259, i32 0, i32 5
  %261 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %260, i32 0, i32 9
  store i32 %258, i32* %261, align 8
  %262 = load %struct.udl_softc*, %struct.udl_softc** %6, align 8
  %263 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %262, i32 0, i32 5
  %264 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %263, i32 0, i32 0
  store i32 16, i32* %264, align 8
  %265 = load %struct.udl_softc*, %struct.udl_softc** %6, align 8
  %266 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %265, i32 0, i32 5
  %267 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %266, i32 0, i32 1
  store i32 16, i32* %267, align 4
  %268 = load %struct.udl_softc*, %struct.udl_softc** %6, align 8
  %269 = call i32 @udl_get_fb_width(%struct.udl_softc* %268)
  %270 = load %struct.udl_softc*, %struct.udl_softc** %6, align 8
  %271 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %270, i32 0, i32 5
  %272 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %271, i32 0, i32 2
  store i32 %269, i32* %272, align 8
  %273 = load %struct.udl_softc*, %struct.udl_softc** %6, align 8
  %274 = call i64 @udl_get_fb_height(%struct.udl_softc* %273)
  %275 = load %struct.udl_softc*, %struct.udl_softc** %6, align 8
  %276 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %275, i32 0, i32 5
  %277 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %276, i32 0, i32 8
  store i64 %274, i64* %277, align 8
  %278 = load %struct.udl_softc*, %struct.udl_softc** %6, align 8
  %279 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %278, i32 0, i32 5
  %280 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %279, i32 0, i32 2
  %281 = load i32, i32* %280, align 8
  %282 = mul nsw i32 %281, 2
  %283 = load %struct.udl_softc*, %struct.udl_softc** %6, align 8
  %284 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %283, i32 0, i32 5
  %285 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %284, i32 0, i32 3
  store i32 %282, i32* %285, align 4
  %286 = load %struct.udl_softc*, %struct.udl_softc** %6, align 8
  %287 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %286, i32 0, i32 5
  %288 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %287, i32 0, i32 7
  store i64 0, i64* %288, align 8
  %289 = load %struct.udl_softc*, %struct.udl_softc** %6, align 8
  %290 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %289, i32 0, i32 6
  %291 = load i64, i64* %290, align 8
  %292 = load %struct.udl_softc*, %struct.udl_softc** %6, align 8
  %293 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %292, i32 0, i32 5
  %294 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %293, i32 0, i32 4
  store i64 %291, i64* %294, align 8
  %295 = load %struct.udl_softc*, %struct.udl_softc** %6, align 8
  %296 = load %struct.udl_softc*, %struct.udl_softc** %6, align 8
  %297 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %296, i32 0, i32 5
  %298 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %297, i32 0, i32 6
  store %struct.udl_softc* %295, %struct.udl_softc** %298, align 8
  %299 = load %struct.udl_softc*, %struct.udl_softc** %6, align 8
  %300 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %299, i32 0, i32 5
  %301 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %300, i32 0, i32 5
  store i32* @udl_fb_setblankmode, i32** %301, align 8
  %302 = load i32, i32* %3, align 4
  %303 = call i32* @device_add_child(i32 %302, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 -1)
  %304 = load %struct.udl_softc*, %struct.udl_softc** %6, align 8
  %305 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %304, i32 0, i32 4
  store i32* %303, i32** %305, align 8
  %306 = load %struct.udl_softc*, %struct.udl_softc** %6, align 8
  %307 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %306, i32 0, i32 4
  %308 = load i32*, i32** %307, align 8
  %309 = icmp eq i32* %308, null
  br i1 %309, label %310, label %311

310:                                              ; preds = %230
  br label %319

311:                                              ; preds = %230
  %312 = load %struct.udl_softc*, %struct.udl_softc** %6, align 8
  %313 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %312, i32 0, i32 4
  %314 = load i32*, i32** %313, align 8
  %315 = call i64 @device_probe_and_attach(i32* %314)
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %317, label %318

317:                                              ; preds = %311
  br label %319

318:                                              ; preds = %311
  store i32 0, i32* %2, align 4
  br label %323

319:                                              ; preds = %317, %310, %182, %55
  %320 = load i32, i32* %3, align 4
  %321 = call i32 @udl_detach(i32 %320)
  %322 = load i32, i32* @ENXIO, align 4
  store i32 %322, i32* %2, align 4
  br label %323

323:                                              ; preds = %319, %318
  %324 = load i32, i32* %2, align 4
  ret i32 %324
}

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local %struct.udl_softc* @device_get_softc(i32) #1

declare dso_local %struct.usb_attach_arg* @device_get_ivars(i32) #1

declare dso_local i32 @device_set_usb_desc(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @cv_init(i32*, i8*) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32 @usbd_transfer_setup(i32, i32*, i32*, i32, i32, %struct.udl_softc*, i32*) #1

declare dso_local i32 @DPRINTF(i8*, i32) #1

declare dso_local i32 @usbd_errstr(i32) #1

declare dso_local i32 @usbd_xfer_set_priv(i32, i32*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @USB_GET_DRIVER_INFO(%struct.usb_attach_arg*) #1

declare dso_local i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @device_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @udl_select_chip(%struct.udl_softc*, %struct.usb_attach_arg*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.udl_cmd_buf*, i32) #1

declare dso_local i32 @udl_init_chip(%struct.udl_softc*) #1

declare dso_local i32 @udl_select_mode(%struct.udl_softc*) #1

declare dso_local i32 @udl_get_fb_width(%struct.udl_softc*) #1

declare dso_local i64 @udl_get_fb_height(%struct.udl_softc*) #1

declare dso_local i64 @udl_get_fb_hz(%struct.udl_softc*) #1

declare dso_local i32 @udl_init_resolution(%struct.udl_softc*) #1

declare dso_local i32 @udl_fbmem_alloc(%struct.udl_softc*) #1

declare dso_local i32 @UDL_LOCK(%struct.udl_softc*) #1

declare dso_local i32 @udl_callout(%struct.udl_softc*) #1

declare dso_local i32 @UDL_UNLOCK(%struct.udl_softc*) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32* @device_add_child(i32, i8*, i32) #1

declare dso_local i64 @device_probe_and_attach(i32*) #1

declare dso_local i32 @udl_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
