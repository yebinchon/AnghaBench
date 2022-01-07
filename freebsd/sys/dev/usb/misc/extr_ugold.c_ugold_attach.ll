; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/misc/extr_ugold.c_ugold_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/misc/extr_ugold.c_ugold_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ugold_softc = type { i32*, i32, i32*, i32*, i32*, i32*, i32, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.ugold_softc*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.usb_attach_arg = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.sysctl_oid = type { i32 }

@ugold_readout_msg = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"ugold lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@MTX_RECURSE = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@hid_input = common dso_local global i32 0, align 4
@ugold_config = common dso_local global i32 0, align 4
@UGOLD_N_TRANSFER = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"sensors\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"inner\00", align 1
@UGOLD_INNER = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [34 x i8] c"Inner temperature in microCelcius\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"inner_valid\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Inner temperature is valid\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"inner_calib\00", align 1
@CTLFLAG_RWTUN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [46 x i8] c"Inner calibration temperature in microCelcius\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"outer\00", align 1
@UGOLD_OUTER = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [34 x i8] c"Outer temperature in microCelcius\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"outer_calib\00", align 1
@.str.12 = private unnamed_addr constant [46 x i8] c"Outer calibration temperature in microCelcius\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"outer_valid\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"Outer temperature is valid\00", align 1
@UGOLD_INTR_DT = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [10 x i8] c"error=%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ugold_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ugold_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ugold_softc*, align 8
  %5 = alloca %struct.usb_attach_arg*, align 8
  %6 = alloca %struct.sysctl_oid*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.ugold_softc* @device_get_softc(i32 %11)
  store %struct.ugold_softc* %12, %struct.ugold_softc** %4, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call %struct.usb_attach_arg* @device_get_ivars(i32 %13)
  store %struct.usb_attach_arg* %14, %struct.usb_attach_arg** %5, align 8
  %15 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %16 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ugold_softc*, %struct.ugold_softc** %4, align 8
  %19 = getelementptr inbounds %struct.ugold_softc, %struct.ugold_softc* %18, i32 0, i32 9
  store i32 %17, i32* %19, align 8
  %20 = load %struct.ugold_softc*, %struct.ugold_softc** %4, align 8
  %21 = getelementptr inbounds %struct.ugold_softc, %struct.ugold_softc* %20, i32 0, i32 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i64 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i32* @ugold_readout_msg, i32** %25, align 8
  %26 = load %struct.ugold_softc*, %struct.ugold_softc** %4, align 8
  %27 = load %struct.ugold_softc*, %struct.ugold_softc** %4, align 8
  %28 = getelementptr inbounds %struct.ugold_softc, %struct.ugold_softc* %27, i32 0, i32 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store %struct.ugold_softc* %26, %struct.ugold_softc** %31, align 8
  %32 = load %struct.ugold_softc*, %struct.ugold_softc** %4, align 8
  %33 = getelementptr inbounds %struct.ugold_softc, %struct.ugold_softc* %32, i32 0, i32 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i64 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32* @ugold_readout_msg, i32** %37, align 8
  %38 = load %struct.ugold_softc*, %struct.ugold_softc** %4, align 8
  %39 = load %struct.ugold_softc*, %struct.ugold_softc** %4, align 8
  %40 = getelementptr inbounds %struct.ugold_softc, %struct.ugold_softc* %39, i32 0, i32 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i64 1
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  store %struct.ugold_softc* %38, %struct.ugold_softc** %43, align 8
  %44 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %45 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ugold_softc*, %struct.ugold_softc** %4, align 8
  %49 = getelementptr inbounds %struct.ugold_softc, %struct.ugold_softc* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  store i32 %47, i32* %51, align 4
  %52 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %53 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  %57 = load %struct.ugold_softc*, %struct.ugold_softc** %4, align 8
  %58 = getelementptr inbounds %struct.ugold_softc, %struct.ugold_softc* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  store i32 %56, i32* %60, align 4
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @device_set_usb_desc(i32 %61)
  %63 = load %struct.ugold_softc*, %struct.ugold_softc** %4, align 8
  %64 = getelementptr inbounds %struct.ugold_softc, %struct.ugold_softc* %63, i32 0, i32 1
  %65 = load i32, i32* @MTX_DEF, align 4
  %66 = load i32, i32* @MTX_RECURSE, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @mtx_init(i32* %64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* null, i32 %67)
  %69 = load %struct.ugold_softc*, %struct.ugold_softc** %4, align 8
  %70 = getelementptr inbounds %struct.ugold_softc, %struct.ugold_softc* %69, i32 0, i32 7
  %71 = load %struct.ugold_softc*, %struct.ugold_softc** %4, align 8
  %72 = getelementptr inbounds %struct.ugold_softc, %struct.ugold_softc* %71, i32 0, i32 1
  %73 = call i32 @callout_init_mtx(i32* %70, i32* %72, i32 0)
  store i32 0, i32* %10, align 4
  br label %74

74:                                               ; preds = %100, %1
  %75 = load i32, i32* %10, align 4
  %76 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %77 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %75, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  br label %100

82:                                               ; preds = %74
  %83 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %84 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %10, align 4
  %87 = call i32* @usbd_get_iface(i32 %85, i32 %86)
  %88 = icmp eq i32* %87, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  br label %103

90:                                               ; preds = %82
  %91 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %92 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %10, align 4
  %95 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %96 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @usbd_set_parent_iface(i32 %93, i32 %94, i32 %98)
  br label %100

100:                                              ; preds = %90, %81
  %101 = load i32, i32* %10, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %10, align 4
  br label %74

103:                                              ; preds = %89
  %104 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %105 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @M_TEMP, align 4
  %108 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %109 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @usbd_req_get_hid_desc(i32 %106, i32* null, i8** %8, i32* %7, i32 %107, i32 %111)
  store i32 %112, i32* %9, align 4
  %113 = load i32, i32* %9, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %103
  br label %245

116:                                              ; preds = %103
  %117 = load i8*, i8** %8, align 8
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* @hid_input, align 4
  %120 = load %struct.ugold_softc*, %struct.ugold_softc** %4, align 8
  %121 = getelementptr inbounds %struct.ugold_softc, %struct.ugold_softc* %120, i32 0, i32 6
  %122 = call i32 @hid_report_size(i8* %117, i32 %118, i32 %119, i32* %121)
  %123 = load i8*, i8** %8, align 8
  %124 = load i32, i32* @M_TEMP, align 4
  %125 = call i32 @free(i8* %123, i32 %124)
  %126 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %127 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.ugold_softc*, %struct.ugold_softc** %4, align 8
  %130 = getelementptr inbounds %struct.ugold_softc, %struct.ugold_softc* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = load %struct.ugold_softc*, %struct.ugold_softc** %4, align 8
  %133 = getelementptr inbounds %struct.ugold_softc, %struct.ugold_softc* %132, i32 0, i32 2
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* @ugold_config, align 4
  %136 = load i32, i32* @UGOLD_N_TRANSFER, align 4
  %137 = load %struct.ugold_softc*, %struct.ugold_softc** %4, align 8
  %138 = load %struct.ugold_softc*, %struct.ugold_softc** %4, align 8
  %139 = getelementptr inbounds %struct.ugold_softc, %struct.ugold_softc* %138, i32 0, i32 1
  %140 = call i32 @usbd_transfer_setup(i32 %128, i32* %131, i32* %134, i32 %135, i32 %136, %struct.ugold_softc* %137, i32* %139)
  store i32 %140, i32* %9, align 4
  %141 = load i32, i32* %9, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %116
  br label %245

144:                                              ; preds = %116
  %145 = load i32, i32* %3, align 4
  %146 = call i32 @device_get_sysctl_ctx(i32 %145)
  %147 = load i32, i32* %3, align 4
  %148 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %147)
  %149 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %148)
  %150 = load i32, i32* @OID_AUTO, align 4
  %151 = load i32, i32* @CTLFLAG_RD, align 4
  %152 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(i32 %146, i32 %149, i32 %150, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %151, i32* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  store %struct.sysctl_oid* %152, %struct.sysctl_oid** %6, align 8
  %153 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %154 = icmp eq %struct.sysctl_oid* %153, null
  br i1 %154, label %155, label %157

155:                                              ; preds = %144
  %156 = load i32, i32* @ENOMEM, align 4
  store i32 %156, i32* %9, align 4
  br label %245

157:                                              ; preds = %144
  %158 = load i32, i32* %3, align 4
  %159 = call i32 @device_get_sysctl_ctx(i32 %158)
  %160 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %161 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %160)
  %162 = load i32, i32* @OID_AUTO, align 4
  %163 = load i32, i32* @CTLFLAG_RD, align 4
  %164 = load %struct.ugold_softc*, %struct.ugold_softc** %4, align 8
  %165 = getelementptr inbounds %struct.ugold_softc, %struct.ugold_softc* %164, i32 0, i32 5
  %166 = load i32*, i32** %165, align 8
  %167 = load i64, i64* @UGOLD_INNER, align 8
  %168 = getelementptr inbounds i32, i32* %166, i64 %167
  %169 = call i32 @SYSCTL_ADD_INT(i32 %159, i32 %161, i32 %162, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %163, i32* %168, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %170 = load i32, i32* %3, align 4
  %171 = call i32 @device_get_sysctl_ctx(i32 %170)
  %172 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %173 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %172)
  %174 = load i32, i32* @OID_AUTO, align 4
  %175 = load i32, i32* @CTLFLAG_RD, align 4
  %176 = load %struct.ugold_softc*, %struct.ugold_softc** %4, align 8
  %177 = getelementptr inbounds %struct.ugold_softc, %struct.ugold_softc* %176, i32 0, i32 3
  %178 = load i32*, i32** %177, align 8
  %179 = load i64, i64* @UGOLD_INNER, align 8
  %180 = getelementptr inbounds i32, i32* %178, i64 %179
  %181 = call i32 @SYSCTL_ADD_INT(i32 %171, i32 %173, i32 %174, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %175, i32* %180, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %182 = load i32, i32* %3, align 4
  %183 = call i32 @device_get_sysctl_ctx(i32 %182)
  %184 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %185 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %184)
  %186 = load i32, i32* @OID_AUTO, align 4
  %187 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %188 = load %struct.ugold_softc*, %struct.ugold_softc** %4, align 8
  %189 = getelementptr inbounds %struct.ugold_softc, %struct.ugold_softc* %188, i32 0, i32 4
  %190 = load i32*, i32** %189, align 8
  %191 = load i64, i64* @UGOLD_INNER, align 8
  %192 = getelementptr inbounds i32, i32* %190, i64 %191
  %193 = call i32 @SYSCTL_ADD_INT(i32 %183, i32 %185, i32 %186, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %187, i32* %192, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0))
  %194 = load i32, i32* %3, align 4
  %195 = call i32 @device_get_sysctl_ctx(i32 %194)
  %196 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %197 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %196)
  %198 = load i32, i32* @OID_AUTO, align 4
  %199 = load i32, i32* @CTLFLAG_RD, align 4
  %200 = load %struct.ugold_softc*, %struct.ugold_softc** %4, align 8
  %201 = getelementptr inbounds %struct.ugold_softc, %struct.ugold_softc* %200, i32 0, i32 5
  %202 = load i32*, i32** %201, align 8
  %203 = load i64, i64* @UGOLD_OUTER, align 8
  %204 = getelementptr inbounds i32, i32* %202, i64 %203
  %205 = call i32 @SYSCTL_ADD_INT(i32 %195, i32 %197, i32 %198, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %199, i32* %204, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0))
  %206 = load i32, i32* %3, align 4
  %207 = call i32 @device_get_sysctl_ctx(i32 %206)
  %208 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %209 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %208)
  %210 = load i32, i32* @OID_AUTO, align 4
  %211 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %212 = load %struct.ugold_softc*, %struct.ugold_softc** %4, align 8
  %213 = getelementptr inbounds %struct.ugold_softc, %struct.ugold_softc* %212, i32 0, i32 4
  %214 = load i32*, i32** %213, align 8
  %215 = load i64, i64* @UGOLD_OUTER, align 8
  %216 = getelementptr inbounds i32, i32* %214, i64 %215
  %217 = call i32 @SYSCTL_ADD_INT(i32 %207, i32 %209, i32 %210, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32 %211, i32* %216, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.12, i64 0, i64 0))
  %218 = load i32, i32* %3, align 4
  %219 = call i32 @device_get_sysctl_ctx(i32 %218)
  %220 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %221 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %220)
  %222 = load i32, i32* @OID_AUTO, align 4
  %223 = load i32, i32* @CTLFLAG_RD, align 4
  %224 = load %struct.ugold_softc*, %struct.ugold_softc** %4, align 8
  %225 = getelementptr inbounds %struct.ugold_softc, %struct.ugold_softc* %224, i32 0, i32 3
  %226 = load i32*, i32** %225, align 8
  %227 = load i64, i64* @UGOLD_OUTER, align 8
  %228 = getelementptr inbounds i32, i32* %226, i64 %227
  %229 = call i32 @SYSCTL_ADD_INT(i32 %219, i32 %221, i32 %222, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i32 %223, i32* %228, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0))
  %230 = load %struct.ugold_softc*, %struct.ugold_softc** %4, align 8
  %231 = getelementptr inbounds %struct.ugold_softc, %struct.ugold_softc* %230, i32 0, i32 1
  %232 = call i32 @mtx_lock(i32* %231)
  %233 = load %struct.ugold_softc*, %struct.ugold_softc** %4, align 8
  %234 = getelementptr inbounds %struct.ugold_softc, %struct.ugold_softc* %233, i32 0, i32 2
  %235 = load i32*, i32** %234, align 8
  %236 = load i64, i64* @UGOLD_INTR_DT, align 8
  %237 = getelementptr inbounds i32, i32* %235, i64 %236
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @usbd_transfer_start(i32 %238)
  %240 = load %struct.ugold_softc*, %struct.ugold_softc** %4, align 8
  %241 = call i32 @ugold_timeout(%struct.ugold_softc* %240)
  %242 = load %struct.ugold_softc*, %struct.ugold_softc** %4, align 8
  %243 = getelementptr inbounds %struct.ugold_softc, %struct.ugold_softc* %242, i32 0, i32 1
  %244 = call i32 @mtx_unlock(i32* %243)
  store i32 0, i32* %2, align 4
  br label %252

245:                                              ; preds = %155, %143, %115
  %246 = load i32, i32* %9, align 4
  %247 = call i32 @usbd_errstr(i32 %246)
  %248 = call i32 @DPRINTF(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i32 %247)
  %249 = load i32, i32* %3, align 4
  %250 = call i32 @ugold_detach(i32 %249)
  %251 = load i32, i32* %9, align 4
  store i32 %251, i32* %2, align 4
  br label %252

252:                                              ; preds = %245, %157
  %253 = load i32, i32* %2, align 4
  ret i32 %253
}

declare dso_local %struct.ugold_softc* @device_get_softc(i32) #1

declare dso_local %struct.usb_attach_arg* @device_get_ivars(i32) #1

declare dso_local i32 @device_set_usb_desc(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32* @usbd_get_iface(i32, i32) #1

declare dso_local i32 @usbd_set_parent_iface(i32, i32, i32) #1

declare dso_local i32 @usbd_req_get_hid_desc(i32, i32*, i8**, i32*, i32, i32) #1

declare dso_local i32 @hid_report_size(i8*, i32, i32, i32*) #1

declare dso_local i32 @free(i8*, i32) #1

declare dso_local i32 @usbd_transfer_setup(i32, i32*, i32*, i32, i32, %struct.ugold_softc*, i32*) #1

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_NODE(i32, i32, i32, i8*, i32, i32*, i8*) #1

declare dso_local i32 @device_get_sysctl_ctx(i32) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local i32 @SYSCTL_ADD_INT(i32, i32, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @usbd_transfer_start(i32) #1

declare dso_local i32 @ugold_timeout(%struct.ugold_softc*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @DPRINTF(i8*, i32) #1

declare dso_local i32 @usbd_errstr(i32) #1

declare dso_local i32 @ugold_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
