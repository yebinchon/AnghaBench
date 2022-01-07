; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_umodem.c_umodem_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_umodem.c_umodem_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_attach_arg = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }
%struct.umodem_softc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32*, i64*, i32 }
%struct.usb_cdc_cm_descriptor = type { i32, i32 }
%struct.usb_cdc_union_descriptor = type { i32, i32* }
%struct.usb_interface = type { i32 }
%struct.usb_interface_descriptor = type { i64 }

@.str = private unnamed_addr constant [7 x i8] c"umodem\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@UDESC_CS_INTERFACE = common dso_local global i32 0, align 4
@UDESCSUB_CDC_CM = common dso_local global i32 0, align 4
@UDESCSUB_CDC_UNION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"Missing descriptor. Assuming data interface is next.\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"data interface %d, has %sCM over data, has %sbreak\0A\00", align 1
@USB_CDC_CM_OVER_DATA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"no \00", align 1
@USB_CDC_ACM_HAS_BREAK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"no data interface\0A\00", align 1
@UQ_ASSUME_CM_OVER_DATA = common dso_local global i32 0, align 4
@USB_CDC_ACM_HAS_FEATURE = common dso_local global i32 0, align 4
@UCDC_ABSTRACT_STATE = common dso_local global i32 0, align 4
@UCDC_DATA_MULTIPLEXED = common dso_local global i32 0, align 4
@umodem_config = common dso_local global i32 0, align 4
@UMODEM_N_TRANSFER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"Can't setup transfer\0A\00", align 1
@USB_MODE_HOST = common dso_local global i64 0, align 8
@UMODEM_BULK_WR = common dso_local global i64 0, align 8
@UMODEM_BULK_RD = common dso_local global i64 0, align 8
@umodem_callback = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"Can't attach com\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @umodem_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @umodem_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_attach_arg*, align 8
  %5 = alloca %struct.umodem_softc*, align 8
  %6 = alloca %struct.usb_cdc_cm_descriptor*, align 8
  %7 = alloca %struct.usb_cdc_union_descriptor*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.usb_interface*, align 8
  %12 = alloca %struct.usb_interface_descriptor*, align 8
  store i32 %0, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call %struct.usb_attach_arg* @device_get_ivars(i32 %13)
  store %struct.usb_attach_arg* %14, %struct.usb_attach_arg** %4, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call %struct.umodem_softc* @device_get_softc(i32 %15)
  store %struct.umodem_softc* %16, %struct.umodem_softc** %5, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @device_set_usb_desc(i32 %17)
  %19 = load %struct.umodem_softc*, %struct.umodem_softc** %5, align 8
  %20 = getelementptr inbounds %struct.umodem_softc, %struct.umodem_softc* %19, i32 0, i32 6
  %21 = load i32, i32* @MTX_DEF, align 4
  %22 = call i32 @mtx_init(i32* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* null, i32 %21)
  %23 = load %struct.umodem_softc*, %struct.umodem_softc** %5, align 8
  %24 = getelementptr inbounds %struct.umodem_softc, %struct.umodem_softc* %23, i32 0, i32 5
  %25 = call i32 @ucom_ref(i32* %24)
  %26 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %27 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.umodem_softc*, %struct.umodem_softc** %5, align 8
  %31 = getelementptr inbounds %struct.umodem_softc, %struct.umodem_softc* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %33 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.umodem_softc*, %struct.umodem_softc** %5, align 8
  %37 = getelementptr inbounds %struct.umodem_softc, %struct.umodem_softc* %36, i32 0, i32 9
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 1
  store i64 %35, i64* %39, align 8
  %40 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %41 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.umodem_softc*, %struct.umodem_softc** %5, align 8
  %44 = getelementptr inbounds %struct.umodem_softc, %struct.umodem_softc* %43, i32 0, i32 10
  store i32 %42, i32* %44, align 8
  %45 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %46 = load %struct.umodem_softc*, %struct.umodem_softc** %5, align 8
  %47 = getelementptr inbounds %struct.umodem_softc, %struct.umodem_softc* %46, i32 0, i32 1
  %48 = load %struct.umodem_softc*, %struct.umodem_softc** %5, align 8
  %49 = getelementptr inbounds %struct.umodem_softc, %struct.umodem_softc* %48, i32 0, i32 2
  %50 = call i32 @umodem_get_caps(%struct.usb_attach_arg* %45, i32* %47, i32* %49)
  %51 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %52 = load i32, i32* @UDESC_CS_INTERFACE, align 4
  %53 = load i32, i32* @UDESCSUB_CDC_CM, align 4
  %54 = call %struct.usb_cdc_cm_descriptor* @umodem_get_desc(%struct.usb_attach_arg* %51, i32 %52, i32 %53)
  store %struct.usb_cdc_cm_descriptor* %54, %struct.usb_cdc_cm_descriptor** %6, align 8
  %55 = load %struct.usb_cdc_cm_descriptor*, %struct.usb_cdc_cm_descriptor** %6, align 8
  %56 = icmp eq %struct.usb_cdc_cm_descriptor* %55, null
  br i1 %56, label %63, label %57

57:                                               ; preds = %1
  %58 = load %struct.usb_cdc_cm_descriptor*, %struct.usb_cdc_cm_descriptor** %6, align 8
  %59 = getelementptr inbounds %struct.usb_cdc_cm_descriptor, %struct.usb_cdc_cm_descriptor* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = icmp ult i64 %61, 8
  br i1 %62, label %63, label %126

63:                                               ; preds = %57, %1
  %64 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %65 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %68 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* @UDESC_CS_INTERFACE, align 4
  %72 = load i32, i32* @UDESCSUB_CDC_UNION, align 4
  %73 = call %struct.usb_cdc_union_descriptor* @usbd_find_descriptor(i32 %66, i32* null, i64 %70, i32 %71, i32 255, i32 %72, i32 255)
  store %struct.usb_cdc_union_descriptor* %73, %struct.usb_cdc_union_descriptor** %7, align 8
  %74 = load %struct.usb_cdc_union_descriptor*, %struct.usb_cdc_union_descriptor** %7, align 8
  %75 = icmp eq %struct.usb_cdc_union_descriptor* %74, null
  br i1 %75, label %82, label %76

76:                                               ; preds = %63
  %77 = load %struct.usb_cdc_union_descriptor*, %struct.usb_cdc_union_descriptor** %7, align 8
  %78 = getelementptr inbounds %struct.usb_cdc_union_descriptor, %struct.usb_cdc_union_descriptor* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = icmp ult i64 %80, 16
  br i1 %81, label %82, label %117

82:                                               ; preds = %76, %63
  %83 = call i32 @DPRINTF(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %84 = load %struct.umodem_softc*, %struct.umodem_softc** %5, align 8
  %85 = getelementptr inbounds %struct.umodem_softc, %struct.umodem_softc* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp eq i32 %86, 255
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  br label %308

89:                                               ; preds = %82
  store i64 0, i64* %10, align 8
  %90 = load %struct.umodem_softc*, %struct.umodem_softc** %5, align 8
  %91 = getelementptr inbounds %struct.umodem_softc, %struct.umodem_softc* %90, i32 0, i32 3
  store i32 255, i32* %91, align 4
  %92 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %93 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %94 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = sub nsw i64 %96, 1
  %98 = load %struct.umodem_softc*, %struct.umodem_softc** %5, align 8
  %99 = getelementptr inbounds %struct.umodem_softc, %struct.umodem_softc* %98, i32 0, i32 3
  %100 = call i32 @umodem_find_data_iface(%struct.usb_attach_arg* %92, i64 %97, i32* %99, i64* %10)
  %101 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %102 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %103 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %105, 1
  %107 = load %struct.umodem_softc*, %struct.umodem_softc** %5, align 8
  %108 = getelementptr inbounds %struct.umodem_softc, %struct.umodem_softc* %107, i32 0, i32 3
  %109 = call i32 @umodem_find_data_iface(%struct.usb_attach_arg* %101, i64 %106, i32* %108, i64* %10)
  %110 = load %struct.umodem_softc*, %struct.umodem_softc** %5, align 8
  %111 = getelementptr inbounds %struct.umodem_softc, %struct.umodem_softc* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = icmp eq i32 %112, 255
  br i1 %113, label %114, label %115

114:                                              ; preds = %89
  br label %308

115:                                              ; preds = %89
  br label %116

116:                                              ; preds = %115
  br label %125

117:                                              ; preds = %76
  %118 = load %struct.usb_cdc_union_descriptor*, %struct.usb_cdc_union_descriptor** %7, align 8
  %119 = getelementptr inbounds %struct.usb_cdc_union_descriptor, %struct.usb_cdc_union_descriptor* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.umodem_softc*, %struct.umodem_softc** %5, align 8
  %124 = getelementptr inbounds %struct.umodem_softc, %struct.umodem_softc* %123, i32 0, i32 3
  store i32 %122, i32* %124, align 4
  br label %125

125:                                              ; preds = %117, %116
  br label %132

126:                                              ; preds = %57
  %127 = load %struct.usb_cdc_cm_descriptor*, %struct.usb_cdc_cm_descriptor** %6, align 8
  %128 = getelementptr inbounds %struct.usb_cdc_cm_descriptor, %struct.usb_cdc_cm_descriptor* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.umodem_softc*, %struct.umodem_softc** %5, align 8
  %131 = getelementptr inbounds %struct.umodem_softc, %struct.umodem_softc* %130, i32 0, i32 3
  store i32 %129, i32* %131, align 4
  br label %132

132:                                              ; preds = %126, %125
  %133 = load i32, i32* %3, align 4
  %134 = load %struct.umodem_softc*, %struct.umodem_softc** %5, align 8
  %135 = getelementptr inbounds %struct.umodem_softc, %struct.umodem_softc* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.umodem_softc*, %struct.umodem_softc** %5, align 8
  %138 = getelementptr inbounds %struct.umodem_softc, %struct.umodem_softc* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @USB_CDC_CM_OVER_DATA, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  %143 = zext i1 %142 to i64
  %144 = select i1 %142, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %145 = load %struct.umodem_softc*, %struct.umodem_softc** %5, align 8
  %146 = getelementptr inbounds %struct.umodem_softc, %struct.umodem_softc* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @USB_CDC_ACM_HAS_BREAK, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  %151 = zext i1 %150 to i64
  %152 = select i1 %150, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %153 = call i32 (i32, i8*, ...) @device_printf(i32 %133, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %136, i8* %144, i8* %152)
  store i64 0, i64* %8, align 8
  br label %154

154:                                              ; preds = %196, %132
  %155 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %156 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = load i64, i64* %8, align 8
  %159 = call %struct.usb_interface* @usbd_get_iface(i32 %157, i64 %158)
  store %struct.usb_interface* %159, %struct.usb_interface** %11, align 8
  %160 = load %struct.usb_interface*, %struct.usb_interface** %11, align 8
  %161 = icmp ne %struct.usb_interface* %160, null
  br i1 %161, label %162, label %192

162:                                              ; preds = %154
  %163 = load %struct.usb_interface*, %struct.usb_interface** %11, align 8
  %164 = call %struct.usb_interface_descriptor* @usbd_get_interface_descriptor(%struct.usb_interface* %163)
  store %struct.usb_interface_descriptor* %164, %struct.usb_interface_descriptor** %12, align 8
  %165 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %12, align 8
  %166 = icmp ne %struct.usb_interface_descriptor* %165, null
  br i1 %166, label %167, label %191

167:                                              ; preds = %162
  %168 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %12, align 8
  %169 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.umodem_softc*, %struct.umodem_softc** %5, align 8
  %172 = getelementptr inbounds %struct.umodem_softc, %struct.umodem_softc* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = sext i32 %173 to i64
  %175 = icmp eq i64 %170, %174
  br i1 %175, label %176, label %191

176:                                              ; preds = %167
  %177 = load i64, i64* %8, align 8
  %178 = load %struct.umodem_softc*, %struct.umodem_softc** %5, align 8
  %179 = getelementptr inbounds %struct.umodem_softc, %struct.umodem_softc* %178, i32 0, i32 9
  %180 = load i64*, i64** %179, align 8
  %181 = getelementptr inbounds i64, i64* %180, i64 0
  store i64 %177, i64* %181, align 8
  %182 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %183 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = load i64, i64* %8, align 8
  %186 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %187 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = call i32 @usbd_set_parent_iface(i32 %184, i64 %185, i64 %189)
  br label %199

191:                                              ; preds = %167, %162
  br label %195

192:                                              ; preds = %154
  %193 = load i32, i32* %3, align 4
  %194 = call i32 (i32, i8*, ...) @device_printf(i32 %193, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  br label %308

195:                                              ; preds = %191
  br label %196

196:                                              ; preds = %195
  %197 = load i64, i64* %8, align 8
  %198 = add nsw i64 %197, 1
  store i64 %198, i64* %8, align 8
  br label %154

199:                                              ; preds = %176
  %200 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %201 = load i32, i32* @UQ_ASSUME_CM_OVER_DATA, align 4
  %202 = call i64 @usb_test_quirk(%struct.usb_attach_arg* %200, i32 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %199
  %205 = load %struct.umodem_softc*, %struct.umodem_softc** %5, align 8
  %206 = getelementptr inbounds %struct.umodem_softc, %struct.umodem_softc* %205, i32 0, i32 4
  store i32 1, i32* %206, align 8
  br label %235

207:                                              ; preds = %199
  %208 = load %struct.umodem_softc*, %struct.umodem_softc** %5, align 8
  %209 = getelementptr inbounds %struct.umodem_softc, %struct.umodem_softc* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @USB_CDC_CM_OVER_DATA, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %234

214:                                              ; preds = %207
  %215 = load %struct.umodem_softc*, %struct.umodem_softc** %5, align 8
  %216 = getelementptr inbounds %struct.umodem_softc, %struct.umodem_softc* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* @USB_CDC_ACM_HAS_FEATURE, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %231

221:                                              ; preds = %214
  %222 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %223 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.umodem_softc*, %struct.umodem_softc** %5, align 8
  %226 = getelementptr inbounds %struct.umodem_softc, %struct.umodem_softc* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* @UCDC_ABSTRACT_STATE, align 4
  %229 = load i32, i32* @UCDC_DATA_MULTIPLEXED, align 4
  %230 = call i32 @umodem_set_comm_feature(i32 %224, i32 %227, i32 %228, i32 %229)
  store i32 %230, i32* %9, align 4
  br label %231

231:                                              ; preds = %221, %214
  %232 = load %struct.umodem_softc*, %struct.umodem_softc** %5, align 8
  %233 = getelementptr inbounds %struct.umodem_softc, %struct.umodem_softc* %232, i32 0, i32 4
  store i32 1, i32* %233, align 8
  br label %234

234:                                              ; preds = %231, %207
  br label %235

235:                                              ; preds = %234, %204
  %236 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %237 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.umodem_softc*, %struct.umodem_softc** %5, align 8
  %240 = getelementptr inbounds %struct.umodem_softc, %struct.umodem_softc* %239, i32 0, i32 9
  %241 = load i64*, i64** %240, align 8
  %242 = load %struct.umodem_softc*, %struct.umodem_softc** %5, align 8
  %243 = getelementptr inbounds %struct.umodem_softc, %struct.umodem_softc* %242, i32 0, i32 8
  %244 = load i32*, i32** %243, align 8
  %245 = load i32, i32* @umodem_config, align 4
  %246 = load i32, i32* @UMODEM_N_TRANSFER, align 4
  %247 = load %struct.umodem_softc*, %struct.umodem_softc** %5, align 8
  %248 = load %struct.umodem_softc*, %struct.umodem_softc** %5, align 8
  %249 = getelementptr inbounds %struct.umodem_softc, %struct.umodem_softc* %248, i32 0, i32 6
  %250 = call i32 @usbd_transfer_setup(i32 %238, i64* %241, i32* %244, i32 %245, i32 %246, %struct.umodem_softc* %247, i32* %249)
  store i32 %250, i32* %9, align 4
  %251 = load i32, i32* %9, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %256

253:                                              ; preds = %235
  %254 = load i32, i32* %3, align 4
  %255 = call i32 (i32, i8*, ...) @device_printf(i32 %254, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  br label %308

256:                                              ; preds = %235
  %257 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %258 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = load i64, i64* @USB_MODE_HOST, align 8
  %261 = icmp eq i64 %259, %260
  br i1 %261, label %262, label %283

262:                                              ; preds = %256
  %263 = load %struct.umodem_softc*, %struct.umodem_softc** %5, align 8
  %264 = getelementptr inbounds %struct.umodem_softc, %struct.umodem_softc* %263, i32 0, i32 6
  %265 = call i32 @mtx_lock(i32* %264)
  %266 = load %struct.umodem_softc*, %struct.umodem_softc** %5, align 8
  %267 = getelementptr inbounds %struct.umodem_softc, %struct.umodem_softc* %266, i32 0, i32 8
  %268 = load i32*, i32** %267, align 8
  %269 = load i64, i64* @UMODEM_BULK_WR, align 8
  %270 = getelementptr inbounds i32, i32* %268, i64 %269
  %271 = load i32, i32* %270, align 4
  %272 = call i32 @usbd_xfer_set_stall(i32 %271)
  %273 = load %struct.umodem_softc*, %struct.umodem_softc** %5, align 8
  %274 = getelementptr inbounds %struct.umodem_softc, %struct.umodem_softc* %273, i32 0, i32 8
  %275 = load i32*, i32** %274, align 8
  %276 = load i64, i64* @UMODEM_BULK_RD, align 8
  %277 = getelementptr inbounds i32, i32* %275, i64 %276
  %278 = load i32, i32* %277, align 4
  %279 = call i32 @usbd_xfer_set_stall(i32 %278)
  %280 = load %struct.umodem_softc*, %struct.umodem_softc** %5, align 8
  %281 = getelementptr inbounds %struct.umodem_softc, %struct.umodem_softc* %280, i32 0, i32 6
  %282 = call i32 @mtx_unlock(i32* %281)
  br label %283

283:                                              ; preds = %262, %256
  %284 = load %struct.umodem_softc*, %struct.umodem_softc** %5, align 8
  %285 = getelementptr inbounds %struct.umodem_softc, %struct.umodem_softc* %284, i32 0, i32 5
  %286 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %287 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %286, i32 0, i32 0
  %288 = load i64, i64* %287, align 8
  %289 = call i32 @ucom_set_usb_mode(i32* %285, i64 %288)
  %290 = load %struct.umodem_softc*, %struct.umodem_softc** %5, align 8
  %291 = getelementptr inbounds %struct.umodem_softc, %struct.umodem_softc* %290, i32 0, i32 5
  %292 = load %struct.umodem_softc*, %struct.umodem_softc** %5, align 8
  %293 = getelementptr inbounds %struct.umodem_softc, %struct.umodem_softc* %292, i32 0, i32 7
  %294 = load %struct.umodem_softc*, %struct.umodem_softc** %5, align 8
  %295 = load %struct.umodem_softc*, %struct.umodem_softc** %5, align 8
  %296 = getelementptr inbounds %struct.umodem_softc, %struct.umodem_softc* %295, i32 0, i32 6
  %297 = call i32 @ucom_attach(i32* %291, i32* %293, i32 1, %struct.umodem_softc* %294, i32* @umodem_callback, i32* %296)
  store i32 %297, i32* %9, align 4
  %298 = load i32, i32* %9, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %303

300:                                              ; preds = %283
  %301 = load i32, i32* %3, align 4
  %302 = call i32 (i32, i8*, ...) @device_printf(i32 %301, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  br label %308

303:                                              ; preds = %283
  %304 = load %struct.umodem_softc*, %struct.umodem_softc** %5, align 8
  %305 = getelementptr inbounds %struct.umodem_softc, %struct.umodem_softc* %304, i32 0, i32 5
  %306 = load i32, i32* %3, align 4
  %307 = call i32 @ucom_set_pnpinfo_usb(i32* %305, i32 %306)
  store i32 0, i32* %2, align 4
  br label %312

308:                                              ; preds = %300, %253, %192, %114, %88
  %309 = load i32, i32* %3, align 4
  %310 = call i32 @umodem_detach(i32 %309)
  %311 = load i32, i32* @ENXIO, align 4
  store i32 %311, i32* %2, align 4
  br label %312

312:                                              ; preds = %308, %303
  %313 = load i32, i32* %2, align 4
  ret i32 %313
}

declare dso_local %struct.usb_attach_arg* @device_get_ivars(i32) #1

declare dso_local %struct.umodem_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_set_usb_desc(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @ucom_ref(i32*) #1

declare dso_local i32 @umodem_get_caps(%struct.usb_attach_arg*, i32*, i32*) #1

declare dso_local %struct.usb_cdc_cm_descriptor* @umodem_get_desc(%struct.usb_attach_arg*, i32, i32) #1

declare dso_local %struct.usb_cdc_union_descriptor* @usbd_find_descriptor(i32, i32*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @umodem_find_data_iface(%struct.usb_attach_arg*, i64, i32*, i64*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local %struct.usb_interface* @usbd_get_iface(i32, i64) #1

declare dso_local %struct.usb_interface_descriptor* @usbd_get_interface_descriptor(%struct.usb_interface*) #1

declare dso_local i32 @usbd_set_parent_iface(i32, i64, i64) #1

declare dso_local i64 @usb_test_quirk(%struct.usb_attach_arg*, i32) #1

declare dso_local i32 @umodem_set_comm_feature(i32, i32, i32, i32) #1

declare dso_local i32 @usbd_transfer_setup(i32, i64*, i32*, i32, i32, %struct.umodem_softc*, i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @usbd_xfer_set_stall(i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @ucom_set_usb_mode(i32*, i64) #1

declare dso_local i32 @ucom_attach(i32*, i32*, i32, %struct.umodem_softc*, i32*, i32*) #1

declare dso_local i32 @ucom_set_pnpinfo_usb(i32*, i32) #1

declare dso_local i32 @umodem_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
