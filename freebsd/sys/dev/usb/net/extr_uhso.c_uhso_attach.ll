; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_uhso.c_uhso_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_uhso.c_uhso_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uhso_softc = type { i32, i32, i32, i32, %struct.ucom_softc*, %struct.uhso_tty*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ucom_softc = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.uhso_tty = type { i64, i8* }
%struct.usb_attach_arg = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.usb_interface_descriptor = type { i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"uhso\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@uhso_ctrl_config = common dso_local global i32 0, align 4
@UHSO_CTRL_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to setup control pipe: %s\0A\00", align 1
@UHSO_STATIC_IFACE = common dso_local global i64 0, align 8
@uhso_probe_iface_static = common dso_local global i8* null, align 8
@UHSO_AUTO_IFACE = common dso_local global i64 0, align 8
@uhso_probe_iface_auto = common dso_local global i8* null, align 8
@OID_AUTO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@uhso_port = common dso_local global i8** null, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"Port available at this interface\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"radio\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RWTUN = common dso_local global i32 0, align 4
@uhso_radio_sysctl = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"Enable radio\00", align 1
@uhso_port_type = common dso_local global i8** null, align 8
@.str.7 = private unnamed_addr constant [28 x i8] c"<%s port> at <%s %s> on %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"ports\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"Number of attached serial ports\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"Serial ports\00", align 1
@UHSO_IF_MUX = common dso_local global i32 0, align 4
@uhso_mux_port_map = common dso_local global i32* null, align 8
@uhso_port_type_sysctl = common dso_local global i8** null, align 8
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"cuaU%d\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"cuaU%d.%d\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"tty\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"desc\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [17 x i8] c"\22%s\22 port at %s\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @uhso_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uhso_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.uhso_softc*, align 8
  %5 = alloca %struct.usb_attach_arg*, align 8
  %6 = alloca %struct.usb_interface_descriptor*, align 8
  %7 = alloca %struct.sysctl_ctx_list*, align 8
  %8 = alloca %struct.sysctl_oid*, align 8
  %9 = alloca %struct.sysctl_oid*, align 8
  %10 = alloca %struct.sysctl_oid*, align 8
  %11 = alloca %struct.ucom_softc*, align 8
  %12 = alloca %struct.uhso_tty*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call %struct.uhso_softc* @device_get_softc(i32 %19)
  store %struct.uhso_softc* %20, %struct.uhso_softc** %4, align 8
  %21 = load i32, i32* %3, align 4
  %22 = call %struct.usb_attach_arg* @device_get_ivars(i32 %21)
  store %struct.usb_attach_arg* %22, %struct.usb_attach_arg** %5, align 8
  store %struct.sysctl_oid* null, %struct.sysctl_oid** %9, align 8
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.uhso_softc*, %struct.uhso_softc** %4, align 8
  %25 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %27 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.uhso_softc*, %struct.uhso_softc** %4, align 8
  %30 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %29, i32 0, i32 13
  store i32 %28, i32* %30, align 4
  %31 = load %struct.uhso_softc*, %struct.uhso_softc** %4, align 8
  %32 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %31, i32 0, i32 6
  %33 = load i32, i32* @MTX_DEF, align 4
  %34 = call i32 @mtx_init(i32* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, i32 %33)
  %35 = load %struct.uhso_softc*, %struct.uhso_softc** %4, align 8
  %36 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %35, i32 0, i32 12
  %37 = load i32, i32* @INT_MAX, align 4
  %38 = call i32 @mbufq_init(i32* %36, i32 %37)
  %39 = load %struct.uhso_softc*, %struct.uhso_softc** %4, align 8
  %40 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %39, i32 0, i32 11
  %41 = call i32 @ucom_ref(i32* %40)
  %42 = load %struct.uhso_softc*, %struct.uhso_softc** %4, align 8
  %43 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %45 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.usb_interface_descriptor* @usbd_get_interface_descriptor(i32 %46)
  store %struct.usb_interface_descriptor* %47, %struct.usb_interface_descriptor** %6, align 8
  %48 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %6, align 8
  %49 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.uhso_softc*, %struct.uhso_softc** %4, align 8
  %52 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %51, i32 0, i32 10
  store i32 %50, i32* %52, align 8
  %53 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %54 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.uhso_softc*, %struct.uhso_softc** %4, align 8
  %58 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %57, i32 0, i32 9
  store i32 %56, i32* %58, align 4
  %59 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %60 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.uhso_softc*, %struct.uhso_softc** %4, align 8
  %64 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %63, i32 0, i32 8
  store i32 %62, i32* %64, align 8
  %65 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %66 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.uhso_softc*, %struct.uhso_softc** %4, align 8
  %69 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %68, i32 0, i32 8
  %70 = load %struct.uhso_softc*, %struct.uhso_softc** %4, align 8
  %71 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %70, i32 0, i32 7
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @uhso_ctrl_config, align 4
  %74 = load i32, i32* @UHSO_CTRL_MAX, align 4
  %75 = load %struct.uhso_softc*, %struct.uhso_softc** %4, align 8
  %76 = load %struct.uhso_softc*, %struct.uhso_softc** %4, align 8
  %77 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %76, i32 0, i32 6
  %78 = call i64 @usbd_transfer_setup(i32 %67, i32* %69, i32 %72, i32 %73, i32 %74, %struct.uhso_softc* %75, i32* %77)
  store i64 %78, i64* %17, align 8
  %79 = load i64, i64* %17, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %1
  %82 = load i32, i32* %3, align 4
  %83 = load i64, i64* %17, align 8
  %84 = call i32 @usbd_errstr(i64 %83)
  %85 = sext i32 %84 to i64
  %86 = inttoptr i64 %85 to i8*
  %87 = call i32 (i32, i8*, i8*, ...) @device_printf(i32 %82, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %86)
  br label %317

88:                                               ; preds = %1
  %89 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %90 = call i64 @USB_GET_DRIVER_INFO(%struct.usb_attach_arg* %89)
  %91 = load i64, i64* @UHSO_STATIC_IFACE, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %88
  %94 = load i8*, i8** @uhso_probe_iface_static, align 8
  store i8* %94, i8** %16, align 8
  br label %104

95:                                               ; preds = %88
  %96 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %97 = call i64 @USB_GET_DRIVER_INFO(%struct.usb_attach_arg* %96)
  %98 = load i64, i64* @UHSO_AUTO_IFACE, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = load i8*, i8** @uhso_probe_iface_auto, align 8
  store i8* %101, i8** %16, align 8
  br label %103

102:                                              ; preds = %95
  br label %317

103:                                              ; preds = %100
  br label %104

104:                                              ; preds = %103, %93
  %105 = load %struct.uhso_softc*, %struct.uhso_softc** %4, align 8
  %106 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %107 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i8*, i8** %16, align 8
  %111 = call i32 @uhso_probe_iface(%struct.uhso_softc* %105, i32 %109, i8* %110)
  store i32 %111, i32* %14, align 4
  %112 = load i32, i32* %14, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %104
  br label %317

115:                                              ; preds = %104
  %116 = load %struct.uhso_softc*, %struct.uhso_softc** %4, align 8
  %117 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %118)
  store %struct.sysctl_ctx_list* %119, %struct.sysctl_ctx_list** %7, align 8
  %120 = load %struct.uhso_softc*, %struct.uhso_softc** %4, align 8
  %121 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %122)
  store %struct.sysctl_oid* %123, %struct.sysctl_oid** %8, align 8
  %124 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %7, align 8
  %125 = load %struct.sysctl_oid*, %struct.sysctl_oid** %8, align 8
  %126 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %125)
  %127 = load i32, i32* @OID_AUTO, align 4
  %128 = load i32, i32* @CTLFLAG_RD, align 4
  %129 = load i8**, i8*** @uhso_port, align 8
  %130 = load %struct.uhso_softc*, %struct.uhso_softc** %4, align 8
  %131 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = call i64 @UHSO_IFACE_PORT(i32 %132)
  %134 = getelementptr inbounds i8*, i8** %129, i64 %133
  %135 = load i8*, i8** %134, align 8
  %136 = call i32 @SYSCTL_ADD_STRING(%struct.sysctl_ctx_list* %124, i32 %126, i32 %127, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %128, i8* %135, i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %137 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %7, align 8
  %138 = load %struct.sysctl_oid*, %struct.sysctl_oid** %8, align 8
  %139 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %138)
  %140 = load i32, i32* @OID_AUTO, align 4
  %141 = load i32, i32* @CTLTYPE_INT, align 4
  %142 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %143 = or i32 %141, %142
  %144 = load %struct.uhso_softc*, %struct.uhso_softc** %4, align 8
  %145 = load i32, i32* @uhso_radio_sysctl, align 4
  %146 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %137, i32 %139, i32 %140, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %143, %struct.uhso_softc* %144, i32 0, i32 %145, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %147 = load i32, i32* %3, align 4
  %148 = load i8**, i8*** @uhso_port_type, align 8
  %149 = load %struct.uhso_softc*, %struct.uhso_softc** %4, align 8
  %150 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = call i64 @UHSO_IFACE_PORT_TYPE(i32 %151)
  %153 = getelementptr inbounds i8*, i8** %148, i64 %152
  %154 = load i8*, i8** %153, align 8
  %155 = call i32 @device_set_desc_copy(i32 %147, i8* %154)
  %156 = load i32, i32* %3, align 4
  %157 = load i8**, i8*** @uhso_port_type, align 8
  %158 = load %struct.uhso_softc*, %struct.uhso_softc** %4, align 8
  %159 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = call i64 @UHSO_IFACE_PORT_TYPE(i32 %160)
  %162 = getelementptr inbounds i8*, i8** %157, i64 %161
  %163 = load i8*, i8** %162, align 8
  %164 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %165 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @usb_get_manufacturer(i32 %166)
  %168 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %169 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @usb_get_product(i32 %170)
  %172 = load i32, i32* %3, align 4
  %173 = call i32 @device_get_parent(i32 %172)
  %174 = call i32 @device_get_nameunit(i32 %173)
  %175 = call i32 (i32, i8*, i8*, ...) @device_printf(i32 %156, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i8* %163, i32 %167, i32 %171, i32 %174)
  %176 = load %struct.uhso_softc*, %struct.uhso_softc** %4, align 8
  %177 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = icmp sgt i32 %178, 0
  br i1 %179, label %180, label %195

180:                                              ; preds = %115
  %181 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %7, align 8
  %182 = load %struct.sysctl_oid*, %struct.sysctl_oid** %8, align 8
  %183 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %182)
  %184 = load i32, i32* @OID_AUTO, align 4
  %185 = load i32, i32* @CTLFLAG_RD, align 4
  %186 = load %struct.uhso_softc*, %struct.uhso_softc** %4, align 8
  %187 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %186, i32 0, i32 1
  %188 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %181, i32 %183, i32 %184, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %185, i32* %187, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  %189 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %7, align 8
  %190 = load %struct.sysctl_oid*, %struct.sysctl_oid** %8, align 8
  %191 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %190)
  %192 = load i32, i32* @OID_AUTO, align 4
  %193 = load i32, i32* @CTLFLAG_RD, align 4
  %194 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %189, i32 %191, i32 %192, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 %193, i32* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  store %struct.sysctl_oid* %194, %struct.sysctl_oid** %9, align 8
  br label %195

195:                                              ; preds = %180, %115
  store i32 0, i32* %13, align 4
  br label %196

196:                                              ; preds = %313, %195
  %197 = load i32, i32* %13, align 4
  %198 = load %struct.uhso_softc*, %struct.uhso_softc** %4, align 8
  %199 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = icmp slt i32 %197, %200
  br i1 %201, label %202, label %316

202:                                              ; preds = %196
  %203 = load %struct.uhso_softc*, %struct.uhso_softc** %4, align 8
  %204 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %203, i32 0, i32 5
  %205 = load %struct.uhso_tty*, %struct.uhso_tty** %204, align 8
  %206 = load i32, i32* %13, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.uhso_tty, %struct.uhso_tty* %205, i64 %207
  store %struct.uhso_tty* %208, %struct.uhso_tty** %12, align 8
  %209 = load %struct.uhso_softc*, %struct.uhso_softc** %4, align 8
  %210 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %209, i32 0, i32 4
  %211 = load %struct.ucom_softc*, %struct.ucom_softc** %210, align 8
  %212 = load i32, i32* %13, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %211, i64 %213
  store %struct.ucom_softc* %214, %struct.ucom_softc** %11, align 8
  %215 = load %struct.uhso_softc*, %struct.uhso_softc** %4, align 8
  %216 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @UHSO_IFACE_USB_TYPE(i32 %217)
  %219 = load i32, i32* @UHSO_IF_MUX, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %229

222:                                              ; preds = %202
  %223 = load i32*, i32** @uhso_mux_port_map, align 8
  %224 = load %struct.uhso_tty*, %struct.uhso_tty** %12, align 8
  %225 = getelementptr inbounds %struct.uhso_tty, %struct.uhso_tty* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = getelementptr inbounds i32, i32* %223, i64 %226
  %228 = load i32, i32* %227, align 4
  store i32 %228, i32* %15, align 4
  br label %235

229:                                              ; preds = %202
  %230 = load %struct.uhso_softc*, %struct.uhso_softc** %4, align 8
  %231 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 4
  %233 = call i64 @UHSO_IFACE_PORT_TYPE(i32 %232)
  %234 = trunc i64 %233 to i32
  store i32 %234, i32* %15, align 4
  br label %235

235:                                              ; preds = %229, %222
  %236 = load i8**, i8*** @uhso_port_type_sysctl, align 8
  %237 = load i32, i32* %15, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i8*, i8** %236, i64 %238
  %240 = load i8*, i8** %239, align 8
  store i8* %240, i8** %18, align 8
  %241 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %7, align 8
  %242 = load %struct.sysctl_oid*, %struct.sysctl_oid** %9, align 8
  %243 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %242)
  %244 = load i32, i32* @OID_AUTO, align 4
  %245 = load i8*, i8** %18, align 8
  %246 = load i32, i32* @CTLFLAG_RD, align 4
  %247 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %241, i32 %243, i32 %244, i8* %245, i32 %246, i32* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0))
  store %struct.sysctl_oid* %247, %struct.sysctl_oid** %10, align 8
  %248 = load %struct.uhso_tty*, %struct.uhso_tty** %12, align 8
  %249 = getelementptr inbounds %struct.uhso_tty, %struct.uhso_tty* %248, i32 0, i32 1
  %250 = load i8*, i8** %249, align 8
  %251 = getelementptr inbounds i8, i8* %250, i64 0
  store i8 0, i8* %251, align 1
  %252 = load %struct.uhso_softc*, %struct.uhso_softc** %4, align 8
  %253 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = icmp eq i32 %254, 1
  br i1 %255, label %256, label %266

256:                                              ; preds = %235
  %257 = load %struct.uhso_tty*, %struct.uhso_tty** %12, align 8
  %258 = getelementptr inbounds %struct.uhso_tty, %struct.uhso_tty* %257, i32 0, i32 1
  %259 = load i8*, i8** %258, align 8
  %260 = load %struct.ucom_softc*, %struct.ucom_softc** %11, align 8
  %261 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %260, i32 0, i32 1
  %262 = load %struct.TYPE_4__*, %struct.TYPE_4__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %259, i32 32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32 %264)
  br label %279

266:                                              ; preds = %235
  %267 = load %struct.uhso_tty*, %struct.uhso_tty** %12, align 8
  %268 = getelementptr inbounds %struct.uhso_tty, %struct.uhso_tty* %267, i32 0, i32 1
  %269 = load i8*, i8** %268, align 8
  %270 = load %struct.ucom_softc*, %struct.ucom_softc** %11, align 8
  %271 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %270, i32 0, i32 1
  %272 = load %struct.TYPE_4__*, %struct.TYPE_4__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = load %struct.ucom_softc*, %struct.ucom_softc** %11, align 8
  %276 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %269, i32 32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i32 %274, i32 %277)
  br label %279

279:                                              ; preds = %266, %256
  %280 = load i8**, i8*** @uhso_port_type, align 8
  %281 = load i32, i32* %15, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i8*, i8** %280, i64 %282
  %284 = load i8*, i8** %283, align 8
  store i8* %284, i8** %18, align 8
  %285 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %7, align 8
  %286 = load %struct.sysctl_oid*, %struct.sysctl_oid** %10, align 8
  %287 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %286)
  %288 = load i32, i32* @OID_AUTO, align 4
  %289 = load i32, i32* @CTLFLAG_RD, align 4
  %290 = load %struct.uhso_tty*, %struct.uhso_tty** %12, align 8
  %291 = getelementptr inbounds %struct.uhso_tty, %struct.uhso_tty* %290, i32 0, i32 1
  %292 = load i8*, i8** %291, align 8
  %293 = call i32 @SYSCTL_ADD_STRING(%struct.sysctl_ctx_list* %285, i32 %287, i32 %288, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i32 %289, i8* %292, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0))
  %294 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %7, align 8
  %295 = load %struct.sysctl_oid*, %struct.sysctl_oid** %10, align 8
  %296 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %295)
  %297 = load i32, i32* @OID_AUTO, align 4
  %298 = load i32, i32* @CTLFLAG_RD, align 4
  %299 = load i8*, i8** %18, align 8
  %300 = call i32 @SYSCTL_ADD_STRING(%struct.sysctl_ctx_list* %294, i32 %296, i32 %297, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i32 %298, i8* %299, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0))
  %301 = load i64, i64* @bootverbose, align 8
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %303, label %312

303:                                              ; preds = %279
  %304 = load %struct.uhso_softc*, %struct.uhso_softc** %4, align 8
  %305 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %304, i32 0, i32 2
  %306 = load i32, i32* %305, align 8
  %307 = load i8*, i8** %18, align 8
  %308 = load %struct.uhso_tty*, %struct.uhso_tty** %12, align 8
  %309 = getelementptr inbounds %struct.uhso_tty, %struct.uhso_tty* %308, i32 0, i32 1
  %310 = load i8*, i8** %309, align 8
  %311 = call i32 (i32, i8*, i8*, ...) @device_printf(i32 %306, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0), i8* %307, i8* %310)
  br label %312

312:                                              ; preds = %303, %279
  br label %313

313:                                              ; preds = %312
  %314 = load i32, i32* %13, align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %13, align 4
  br label %196

316:                                              ; preds = %196
  store i32 0, i32* %2, align 4
  br label %323

317:                                              ; preds = %114, %102, %81
  %318 = load %struct.uhso_softc*, %struct.uhso_softc** %4, align 8
  %319 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %318, i32 0, i32 2
  %320 = load i32, i32* %319, align 8
  %321 = call i32 @uhso_detach(i32 %320)
  %322 = load i32, i32* @ENXIO, align 4
  store i32 %322, i32* %2, align 4
  br label %323

323:                                              ; preds = %317, %316
  %324 = load i32, i32* %2, align 4
  ret i32 %324
}

declare dso_local %struct.uhso_softc* @device_get_softc(i32) #1

declare dso_local %struct.usb_attach_arg* @device_get_ivars(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @mbufq_init(i32*, i32) #1

declare dso_local i32 @ucom_ref(i32*) #1

declare dso_local %struct.usb_interface_descriptor* @usbd_get_interface_descriptor(i32) #1

declare dso_local i64 @usbd_transfer_setup(i32, i32*, i32, i32, i32, %struct.uhso_softc*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i8*, ...) #1

declare dso_local i32 @usbd_errstr(i64) #1

declare dso_local i64 @USB_GET_DRIVER_INFO(%struct.usb_attach_arg*) #1

declare dso_local i32 @uhso_probe_iface(%struct.uhso_softc*, i32, i8*) #1

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local i32 @SYSCTL_ADD_STRING(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i8*, i32, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i64 @UHSO_IFACE_PORT(i32) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, %struct.uhso_softc*, i32, i32, i8*, i8*) #1

declare dso_local i32 @device_set_desc_copy(i32, i8*) #1

declare dso_local i64 @UHSO_IFACE_PORT_TYPE(i32) #1

declare dso_local i32 @usb_get_manufacturer(i32) #1

declare dso_local i32 @usb_get_product(i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i32*, i8*) #1

declare dso_local i32 @UHSO_IFACE_USB_TYPE(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, ...) #1

declare dso_local i32 @uhso_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
