; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_cdce.c_cdce_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_cdce.c_cdce_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_config = type { i32 }
%struct.cdce_softc = type { i32, i32, %struct.usb_ether, i32, i64* }
%struct.usb_ether = type { i32*, i32*, i32*, i32, i32, %struct.cdce_softc* }
%struct.usb_attach_arg = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.usb_interface = type { i32 }
%struct.usb_cdc_union_descriptor = type { i32, i64* }
%struct.usb_interface_descriptor = type { i64 }
%struct.usb_cdc_ethernet_descriptor = type { i32, i32 }

@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@MTX_DEF = common dso_local global i32 0, align 4
@UDESC_CS_INTERFACE = common dso_local global i32 0, align 4
@UDESCSUB_CDC_UNION = common dso_local global i32 0, align 4
@CDCE_FLAG_NO_UNION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"No union descriptor!\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"no data interface found\0A\00", align 1
@cdce_config = common dso_local global %struct.usb_config* null, align 8
@CDCE_N_TRANSFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"No valid alternate setting found\0A\00", align 1
@UDESCSUB_CDC_ENF = common dso_local global i32 0, align 4
@USB_ERR_INVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"faking MAC address\0A\00", align 1
@ticks = common dso_local global i32 0, align 4
@USB_MODE_DEVICE = common dso_local global i64 0, align 8
@cdce_ue_methods = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"could not attach interface\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@cdce_ncm_config = common dso_local global %struct.usb_config* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cdce_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdce_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.cdce_softc*, align 8
  %5 = alloca %struct.usb_ether*, align 8
  %6 = alloca %struct.usb_attach_arg*, align 8
  %7 = alloca %struct.usb_interface*, align 8
  %8 = alloca %struct.usb_cdc_union_descriptor*, align 8
  %9 = alloca %struct.usb_interface_descriptor*, align 8
  %10 = alloca %struct.usb_cdc_ethernet_descriptor*, align 8
  %11 = alloca %struct.usb_config*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8, align 1
  %19 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call %struct.cdce_softc* @device_get_softc(i32 %20)
  store %struct.cdce_softc* %21, %struct.cdce_softc** %4, align 8
  %22 = load %struct.cdce_softc*, %struct.cdce_softc** %4, align 8
  %23 = getelementptr inbounds %struct.cdce_softc, %struct.cdce_softc* %22, i32 0, i32 2
  store %struct.usb_ether* %23, %struct.usb_ether** %5, align 8
  %24 = load i32, i32* %3, align 4
  %25 = call %struct.usb_attach_arg* @device_get_ivars(i32 %24)
  store %struct.usb_attach_arg* %25, %struct.usb_attach_arg** %6, align 8
  %26 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %27 = mul nsw i32 5, %26
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %16, align 8
  %30 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %17, align 8
  %31 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %6, align 8
  %32 = call i32 @USB_GET_DRIVER_INFO(%struct.usb_attach_arg* %31)
  %33 = load %struct.cdce_softc*, %struct.cdce_softc** %4, align 8
  %34 = getelementptr inbounds %struct.cdce_softc, %struct.cdce_softc* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %6, align 8
  %36 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.cdce_softc*, %struct.cdce_softc** %4, align 8
  %39 = getelementptr inbounds %struct.cdce_softc, %struct.cdce_softc* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %39, i32 0, i32 3
  store i32 %37, i32* %40, align 8
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @device_set_usb_desc(i32 %41)
  %43 = load %struct.cdce_softc*, %struct.cdce_softc** %4, align 8
  %44 = getelementptr inbounds %struct.cdce_softc, %struct.cdce_softc* %43, i32 0, i32 1
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @device_get_nameunit(i32 %45)
  %47 = load i32, i32* @MTX_DEF, align 4
  %48 = call i32 @mtx_init(i32* %44, i32 %46, i32* null, i32 %47)
  %49 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %6, align 8
  %50 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %6, align 8
  %53 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* @UDESC_CS_INTERFACE, align 4
  %57 = load i32, i32* @UDESCSUB_CDC_UNION, align 4
  %58 = call i8* @usbd_find_descriptor(i32 %51, i32* null, i64 %55, i32 %56, i32 255, i32 %57, i32 255)
  %59 = bitcast i8* %58 to %struct.usb_cdc_union_descriptor*
  store %struct.usb_cdc_union_descriptor* %59, %struct.usb_cdc_union_descriptor** %8, align 8
  %60 = load %struct.usb_cdc_union_descriptor*, %struct.usb_cdc_union_descriptor** %8, align 8
  %61 = icmp eq %struct.usb_cdc_union_descriptor* %60, null
  br i1 %61, label %75, label %62

62:                                               ; preds = %1
  %63 = load %struct.usb_cdc_union_descriptor*, %struct.usb_cdc_union_descriptor** %8, align 8
  %64 = getelementptr inbounds %struct.usb_cdc_union_descriptor, %struct.usb_cdc_union_descriptor* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = icmp ult i64 %66, 16
  br i1 %67, label %75, label %68

68:                                               ; preds = %62
  %69 = load %struct.cdce_softc*, %struct.cdce_softc** %4, align 8
  %70 = getelementptr inbounds %struct.cdce_softc, %struct.cdce_softc* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @CDCE_FLAG_NO_UNION, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %93

75:                                               ; preds = %68, %62, %1
  %76 = call i32 @DPRINTFN(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %77 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %6, align 8
  %78 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.cdce_softc*, %struct.cdce_softc** %4, align 8
  %82 = getelementptr inbounds %struct.cdce_softc, %struct.cdce_softc* %81, i32 0, i32 4
  %83 = load i64*, i64** %82, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 0
  store i64 %80, i64* %84, align 8
  %85 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %6, align 8
  %86 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.cdce_softc*, %struct.cdce_softc** %4, align 8
  %90 = getelementptr inbounds %struct.cdce_softc, %struct.cdce_softc* %89, i32 0, i32 4
  %91 = load i64*, i64** %90, align 8
  %92 = getelementptr inbounds i64, i64* %91, i64 1
  store i64 %88, i64* %92, align 8
  br label %150

93:                                               ; preds = %68
  %94 = load %struct.usb_cdc_union_descriptor*, %struct.usb_cdc_union_descriptor** %8, align 8
  %95 = getelementptr inbounds %struct.usb_cdc_union_descriptor, %struct.usb_cdc_union_descriptor* %94, i32 0, i32 1
  %96 = load i64*, i64** %95, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 0
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* %15, align 8
  store i64 0, i64* %14, align 8
  br label %99

99:                                               ; preds = %146, %93
  %100 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %6, align 8
  %101 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load i64, i64* %14, align 8
  %104 = call %struct.usb_interface* @usbd_get_iface(i32 %102, i64 %103)
  store %struct.usb_interface* %104, %struct.usb_interface** %7, align 8
  %105 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %106 = icmp ne %struct.usb_interface* %105, null
  br i1 %106, label %107, label %142

107:                                              ; preds = %99
  %108 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %109 = call %struct.usb_interface_descriptor* @usbd_get_interface_descriptor(%struct.usb_interface* %108)
  store %struct.usb_interface_descriptor* %109, %struct.usb_interface_descriptor** %9, align 8
  %110 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %9, align 8
  %111 = icmp ne %struct.usb_interface_descriptor* %110, null
  br i1 %111, label %112, label %141

112:                                              ; preds = %107
  %113 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %9, align 8
  %114 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* %15, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %141

118:                                              ; preds = %112
  %119 = load i64, i64* %14, align 8
  %120 = load %struct.cdce_softc*, %struct.cdce_softc** %4, align 8
  %121 = getelementptr inbounds %struct.cdce_softc, %struct.cdce_softc* %120, i32 0, i32 4
  %122 = load i64*, i64** %121, align 8
  %123 = getelementptr inbounds i64, i64* %122, i64 0
  store i64 %119, i64* %123, align 8
  %124 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %6, align 8
  %125 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.cdce_softc*, %struct.cdce_softc** %4, align 8
  %129 = getelementptr inbounds %struct.cdce_softc, %struct.cdce_softc* %128, i32 0, i32 4
  %130 = load i64*, i64** %129, align 8
  %131 = getelementptr inbounds i64, i64* %130, i64 1
  store i64 %127, i64* %131, align 8
  %132 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %6, align 8
  %133 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = load i64, i64* %14, align 8
  %136 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %6, align 8
  %137 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @usbd_set_parent_iface(i32 %134, i64 %135, i64 %139)
  br label %149

141:                                              ; preds = %112, %107
  br label %145

142:                                              ; preds = %99
  %143 = load i32, i32* %3, align 4
  %144 = call i32 @device_printf(i32 %143, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %365

145:                                              ; preds = %141
  br label %146

146:                                              ; preds = %145
  %147 = load i64, i64* %14, align 8
  %148 = add nsw i64 %147, 1
  store i64 %148, i64* %14, align 8
  br label %99

149:                                              ; preds = %118
  br label %150

150:                                              ; preds = %149, %75
  %151 = load %struct.usb_config*, %struct.usb_config** @cdce_config, align 8
  store %struct.usb_config* %151, %struct.usb_config** %11, align 8
  store i64 0, i64* %14, align 8
  br label %152

152:                                              ; preds = %189, %150
  %153 = load i64, i64* %14, align 8
  %154 = icmp ne i64 %153, 32
  br i1 %154, label %155, label %192

155:                                              ; preds = %152
  %156 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %6, align 8
  %157 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.cdce_softc*, %struct.cdce_softc** %4, align 8
  %160 = getelementptr inbounds %struct.cdce_softc, %struct.cdce_softc* %159, i32 0, i32 4
  %161 = load i64*, i64** %160, align 8
  %162 = getelementptr inbounds i64, i64* %161, i64 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* %14, align 8
  %165 = call i32 @usbd_set_alt_interface_index(i32 %158, i64 %163, i64 %164)
  store i32 %165, i32* %13, align 4
  %166 = load i32, i32* %13, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %155
  br label %192

169:                                              ; preds = %155
  %170 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %6, align 8
  %171 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.cdce_softc*, %struct.cdce_softc** %4, align 8
  %174 = getelementptr inbounds %struct.cdce_softc, %struct.cdce_softc* %173, i32 0, i32 4
  %175 = load i64*, i64** %174, align 8
  %176 = load %struct.cdce_softc*, %struct.cdce_softc** %4, align 8
  %177 = getelementptr inbounds %struct.cdce_softc, %struct.cdce_softc* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.usb_config*, %struct.usb_config** %11, align 8
  %180 = load i32, i32* @CDCE_N_TRANSFER, align 4
  %181 = load %struct.cdce_softc*, %struct.cdce_softc** %4, align 8
  %182 = load %struct.cdce_softc*, %struct.cdce_softc** %4, align 8
  %183 = getelementptr inbounds %struct.cdce_softc, %struct.cdce_softc* %182, i32 0, i32 1
  %184 = call i32 @usbd_transfer_setup(i32 %172, i64* %175, i32 %178, %struct.usb_config* %179, i32 %180, %struct.cdce_softc* %181, i32* %183)
  store i32 %184, i32* %13, align 4
  %185 = load i32, i32* %13, align 4
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %169
  br label %192

188:                                              ; preds = %169
  br label %189

189:                                              ; preds = %188
  %190 = load i64, i64* %14, align 8
  %191 = add nsw i64 %190, 1
  store i64 %191, i64* %14, align 8
  br label %152

192:                                              ; preds = %187, %168, %152
  %193 = load i32, i32* %13, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %198, label %195

195:                                              ; preds = %192
  %196 = load i64, i64* %14, align 8
  %197 = icmp eq i64 %196, 32
  br i1 %197, label %198, label %201

198:                                              ; preds = %195, %192
  %199 = load i32, i32* %3, align 4
  %200 = call i32 @device_printf(i32 %199, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %365

201:                                              ; preds = %195
  %202 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %6, align 8
  %203 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %6, align 8
  %206 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %205, i32 0, i32 2
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load i32, i32* @UDESC_CS_INTERFACE, align 4
  %210 = load i32, i32* @UDESCSUB_CDC_ENF, align 4
  %211 = call i8* @usbd_find_descriptor(i32 %204, i32* null, i64 %208, i32 %209, i32 255, i32 %210, i32 255)
  %212 = bitcast i8* %211 to %struct.usb_cdc_ethernet_descriptor*
  store %struct.usb_cdc_ethernet_descriptor* %212, %struct.usb_cdc_ethernet_descriptor** %10, align 8
  %213 = load %struct.usb_cdc_ethernet_descriptor*, %struct.usb_cdc_ethernet_descriptor** %10, align 8
  %214 = icmp eq %struct.usb_cdc_ethernet_descriptor* %213, null
  br i1 %214, label %221, label %215

215:                                              ; preds = %201
  %216 = load %struct.usb_cdc_ethernet_descriptor*, %struct.usb_cdc_ethernet_descriptor** %10, align 8
  %217 = getelementptr inbounds %struct.usb_cdc_ethernet_descriptor, %struct.usb_cdc_ethernet_descriptor* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = sext i32 %218 to i64
  %220 = icmp ult i64 %219, 8
  br i1 %220, label %221, label %223

221:                                              ; preds = %215, %201
  %222 = load i32, i32* @USB_ERR_INVAL, align 4
  store i32 %222, i32* %13, align 4
  br label %232

223:                                              ; preds = %215
  %224 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %6, align 8
  %225 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 8
  %227 = trunc i64 %28 to i32
  %228 = load %struct.usb_cdc_ethernet_descriptor*, %struct.usb_cdc_ethernet_descriptor** %10, align 8
  %229 = getelementptr inbounds %struct.usb_cdc_ethernet_descriptor, %struct.usb_cdc_ethernet_descriptor* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @usbd_req_get_string_any(i32 %226, i32* null, i8* %30, i32 %227, i32 %230)
  store i32 %231, i32* %13, align 4
  br label %232

232:                                              ; preds = %223, %221
  %233 = load i32, i32* %13, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %257

235:                                              ; preds = %232
  %236 = load i32, i32* %3, align 4
  %237 = call i32 @device_printf(i32 %236, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %238 = load i32, i32* @ticks, align 4
  store i32 %238, i32* %12, align 4
  %239 = load %struct.cdce_softc*, %struct.cdce_softc** %4, align 8
  %240 = getelementptr inbounds %struct.cdce_softc, %struct.cdce_softc* %239, i32 0, i32 2
  %241 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %240, i32 0, i32 0
  %242 = load i32*, i32** %241, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 0
  store i32 42, i32* %243, align 4
  %244 = load %struct.cdce_softc*, %struct.cdce_softc** %4, align 8
  %245 = getelementptr inbounds %struct.cdce_softc, %struct.cdce_softc* %244, i32 0, i32 2
  %246 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %245, i32 0, i32 0
  %247 = load i32*, i32** %246, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 1
  %249 = call i32 @memcpy(i32* %248, i32* %12, i32 4)
  %250 = load i32, i32* %3, align 4
  %251 = call i32 @device_get_unit(i32 %250)
  %252 = load %struct.cdce_softc*, %struct.cdce_softc** %4, align 8
  %253 = getelementptr inbounds %struct.cdce_softc, %struct.cdce_softc* %252, i32 0, i32 2
  %254 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %253, i32 0, i32 0
  %255 = load i32*, i32** %254, align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 5
  store i32 %251, i32* %256, align 4
  br label %339

257:                                              ; preds = %232
  %258 = load %struct.cdce_softc*, %struct.cdce_softc** %4, align 8
  %259 = getelementptr inbounds %struct.cdce_softc, %struct.cdce_softc* %258, i32 0, i32 2
  %260 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %259, i32 0, i32 0
  %261 = load i32*, i32** %260, align 8
  %262 = call i32 @memset(i32* %261, i32 0, i32 8)
  store i64 0, i64* %14, align 8
  br label %263

263:                                              ; preds = %321, %257
  %264 = load i64, i64* %14, align 8
  %265 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %266 = mul nsw i32 %265, 2
  %267 = sext i32 %266 to i64
  %268 = icmp ne i64 %264, %267
  br i1 %268, label %269, label %324

269:                                              ; preds = %263
  %270 = load i64, i64* %14, align 8
  %271 = getelementptr inbounds i8, i8* %30, i64 %270
  %272 = load i8, i8* %271, align 1
  store i8 %272, i8* %18, align 1
  %273 = load i8, i8* %18, align 1
  %274 = sext i8 %273 to i32
  %275 = icmp sle i32 48, %274
  br i1 %275, label %276, label %285

276:                                              ; preds = %269
  %277 = load i8, i8* %18, align 1
  %278 = sext i8 %277 to i32
  %279 = icmp sle i32 %278, 57
  br i1 %279, label %280, label %285

280:                                              ; preds = %276
  %281 = load i8, i8* %18, align 1
  %282 = sext i8 %281 to i32
  %283 = sub nsw i32 %282, 48
  %284 = trunc i32 %283 to i8
  store i8 %284, i8* %18, align 1
  br label %296

285:                                              ; preds = %276, %269
  %286 = load i8, i8* %18, align 1
  %287 = sext i8 %286 to i32
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %294

289:                                              ; preds = %285
  %290 = load i8, i8* %18, align 1
  %291 = sext i8 %290 to i32
  %292 = sub nsw i32 %291, 55
  %293 = trunc i32 %292 to i8
  store i8 %293, i8* %18, align 1
  br label %295

294:                                              ; preds = %285
  br label %324

295:                                              ; preds = %289
  br label %296

296:                                              ; preds = %295, %280
  %297 = load i8, i8* %18, align 1
  %298 = sext i8 %297 to i32
  %299 = and i32 %298, 15
  %300 = trunc i32 %299 to i8
  store i8 %300, i8* %18, align 1
  %301 = load i64, i64* %14, align 8
  %302 = and i64 %301, 1
  %303 = icmp eq i64 %302, 0
  br i1 %303, label %304, label %309

304:                                              ; preds = %296
  %305 = load i8, i8* %18, align 1
  %306 = sext i8 %305 to i32
  %307 = shl i32 %306, 4
  %308 = trunc i32 %307 to i8
  store i8 %308, i8* %18, align 1
  br label %309

309:                                              ; preds = %304, %296
  %310 = load i8, i8* %18, align 1
  %311 = sext i8 %310 to i32
  %312 = load %struct.cdce_softc*, %struct.cdce_softc** %4, align 8
  %313 = getelementptr inbounds %struct.cdce_softc, %struct.cdce_softc* %312, i32 0, i32 2
  %314 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %313, i32 0, i32 0
  %315 = load i32*, i32** %314, align 8
  %316 = load i64, i64* %14, align 8
  %317 = sdiv i64 %316, 2
  %318 = getelementptr inbounds i32, i32* %315, i64 %317
  %319 = load i32, i32* %318, align 4
  %320 = or i32 %319, %311
  store i32 %320, i32* %318, align 4
  br label %321

321:                                              ; preds = %309
  %322 = load i64, i64* %14, align 8
  %323 = add nsw i64 %322, 1
  store i64 %323, i64* %14, align 8
  br label %263

324:                                              ; preds = %294, %263
  %325 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %6, align 8
  %326 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %325, i32 0, i32 0
  %327 = load i64, i64* %326, align 8
  %328 = load i64, i64* @USB_MODE_DEVICE, align 8
  %329 = icmp eq i64 %327, %328
  br i1 %329, label %330, label %338

330:                                              ; preds = %324
  %331 = load %struct.cdce_softc*, %struct.cdce_softc** %4, align 8
  %332 = getelementptr inbounds %struct.cdce_softc, %struct.cdce_softc* %331, i32 0, i32 2
  %333 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %332, i32 0, i32 0
  %334 = load i32*, i32** %333, align 8
  %335 = getelementptr inbounds i32, i32* %334, i64 5
  %336 = load i32, i32* %335, align 4
  %337 = xor i32 %336, 255
  store i32 %337, i32* %335, align 4
  br label %338

338:                                              ; preds = %330, %324
  br label %339

339:                                              ; preds = %338, %235
  %340 = load %struct.cdce_softc*, %struct.cdce_softc** %4, align 8
  %341 = load %struct.usb_ether*, %struct.usb_ether** %5, align 8
  %342 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %341, i32 0, i32 5
  store %struct.cdce_softc* %340, %struct.cdce_softc** %342, align 8
  %343 = load i32, i32* %3, align 4
  %344 = load %struct.usb_ether*, %struct.usb_ether** %5, align 8
  %345 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %344, i32 0, i32 4
  store i32 %343, i32* %345, align 4
  %346 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %6, align 8
  %347 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %346, i32 0, i32 1
  %348 = load i32, i32* %347, align 8
  %349 = load %struct.usb_ether*, %struct.usb_ether** %5, align 8
  %350 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %349, i32 0, i32 3
  store i32 %348, i32* %350, align 8
  %351 = load %struct.cdce_softc*, %struct.cdce_softc** %4, align 8
  %352 = getelementptr inbounds %struct.cdce_softc, %struct.cdce_softc* %351, i32 0, i32 1
  %353 = load %struct.usb_ether*, %struct.usb_ether** %5, align 8
  %354 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %353, i32 0, i32 2
  store i32* %352, i32** %354, align 8
  %355 = load %struct.usb_ether*, %struct.usb_ether** %5, align 8
  %356 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %355, i32 0, i32 1
  store i32* @cdce_ue_methods, i32** %356, align 8
  %357 = load %struct.usb_ether*, %struct.usb_ether** %5, align 8
  %358 = call i32 @uether_ifattach(%struct.usb_ether* %357)
  store i32 %358, i32* %13, align 4
  %359 = load i32, i32* %13, align 4
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %364

361:                                              ; preds = %339
  %362 = load i32, i32* %3, align 4
  %363 = call i32 @device_printf(i32 %362, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %365

364:                                              ; preds = %339
  store i32 0, i32* %2, align 4
  store i32 1, i32* %19, align 4
  br label %369

365:                                              ; preds = %361, %198, %142
  %366 = load i32, i32* %3, align 4
  %367 = call i32 @cdce_detach(i32 %366)
  %368 = load i32, i32* @ENXIO, align 4
  store i32 %368, i32* %2, align 4
  store i32 1, i32* %19, align 4
  br label %369

369:                                              ; preds = %365, %364
  %370 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %370)
  %371 = load i32, i32* %2, align 4
  ret i32 %371
}

declare dso_local %struct.cdce_softc* @device_get_softc(i32) #1

declare dso_local %struct.usb_attach_arg* @device_get_ivars(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @USB_GET_DRIVER_INFO(%struct.usb_attach_arg*) #1

declare dso_local i32 @device_set_usb_desc(i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i32*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i8* @usbd_find_descriptor(i32, i32*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*) #1

declare dso_local %struct.usb_interface* @usbd_get_iface(i32, i64) #1

declare dso_local %struct.usb_interface_descriptor* @usbd_get_interface_descriptor(%struct.usb_interface*) #1

declare dso_local i32 @usbd_set_parent_iface(i32, i64, i64) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @usbd_set_alt_interface_index(i32, i64, i64) #1

declare dso_local i32 @usbd_transfer_setup(i32, i64*, i32, %struct.usb_config*, i32, %struct.cdce_softc*, i32*) #1

declare dso_local i32 @usbd_req_get_string_any(i32, i32*, i8*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @uether_ifattach(%struct.usb_ether*) #1

declare dso_local i32 @cdce_detach(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
