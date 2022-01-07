; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/drivers/ubt/extr_ng_ubt.c_ubt_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/drivers/ubt/extr_ng_ubt.c_ubt_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_attach_arg = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ubt_softc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.usb_endpoint_descriptor = type { i64, i32, i32 }
%struct.usb_interface_descriptor = type { i32, i32, i64, i64, i64 }
%struct.usb_interface = type { i32 }
%struct.usb_descriptor = type { i32 }

@__const.ubt_attach.iface_index = private unnamed_addr constant [2 x i32] [i32 0, i32 1], align 4
@NG_UBT_WARN_LEVEL = common dso_local global i32 0, align 4
@typestruct = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"could not create Netgraph node\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"could not name Netgraph node\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"ubt ng\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"ubt if\00", align 1
@MTX_RECURSE = common dso_local global i32 0, align 4
@UBT_DEFAULT_QLEN = common dso_local global i32 0, align 4
@ubt_task = common dso_local global i32 0, align 4
@UDESC_INTERFACE = common dso_local global i64 0, align 8
@UDESC_ENDPOINT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [53 x i8] c"could not set alternate setting %d for interface 1!\0A\00", align 1
@ubt_config = common dso_local global i32 0, align 4
@UBT_N_TRANSFER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"could not allocate transfers\0A\00", align 1
@UICLASS_WIRELESS = common dso_local global i64 0, align 8
@UISUBCLASS_RF = common dso_local global i64 0, align 8
@UIPROTO_BLUETOOTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ubt_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ubt_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_attach_arg*, align 8
  %5 = alloca %struct.ubt_softc*, align 8
  %6 = alloca %struct.usb_endpoint_descriptor*, align 8
  %7 = alloca %struct.usb_interface_descriptor*, align 8
  %8 = alloca %struct.usb_interface*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [2 x i32], align 4
  %14 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call %struct.usb_attach_arg* @device_get_ivars(i32 %15)
  store %struct.usb_attach_arg* %16, %struct.usb_attach_arg** %4, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call %struct.ubt_softc* @device_get_softc(i32 %17)
  store %struct.ubt_softc* %18, %struct.ubt_softc** %5, align 8
  %19 = bitcast [2 x i32]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 bitcast ([2 x i32]* @__const.ubt_attach.iface_index to i8*), i64 8, i1 false)
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @device_set_usb_desc(i32 %20)
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.ubt_softc*, %struct.ubt_softc** %5, align 8
  %24 = getelementptr inbounds %struct.ubt_softc, %struct.ubt_softc* %23, i32 0, i32 9
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @NG_UBT_WARN_LEVEL, align 4
  %26 = load %struct.ubt_softc*, %struct.ubt_softc** %5, align 8
  %27 = getelementptr inbounds %struct.ubt_softc, %struct.ubt_softc* %26, i32 0, i32 8
  store i32 %25, i32* %27, align 4
  %28 = load %struct.ubt_softc*, %struct.ubt_softc** %5, align 8
  %29 = getelementptr inbounds %struct.ubt_softc, %struct.ubt_softc* %28, i32 0, i32 7
  %30 = call i64 @ng_make_node_common(i32* @typestruct, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %1
  %33 = load %struct.ubt_softc*, %struct.ubt_softc** %5, align 8
  %34 = call i32 (%struct.ubt_softc*, i8*, ...) @UBT_ALERT(%struct.ubt_softc* %33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @ENXIO, align 4
  store i32 %35, i32* %2, align 4
  br label %232

36:                                               ; preds = %1
  %37 = load %struct.ubt_softc*, %struct.ubt_softc** %5, align 8
  %38 = getelementptr inbounds %struct.ubt_softc, %struct.ubt_softc* %37, i32 0, i32 7
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @device_get_nameunit(i32 %40)
  %42 = call i64 @ng_name_node(i32 %39, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %36
  %45 = load %struct.ubt_softc*, %struct.ubt_softc** %5, align 8
  %46 = call i32 (%struct.ubt_softc*, i8*, ...) @UBT_ALERT(%struct.ubt_softc* %45, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %47 = load %struct.ubt_softc*, %struct.ubt_softc** %5, align 8
  %48 = getelementptr inbounds %struct.ubt_softc, %struct.ubt_softc* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @NG_NODE_UNREF(i32 %49)
  %51 = load i32, i32* @ENXIO, align 4
  store i32 %51, i32* %2, align 4
  br label %232

52:                                               ; preds = %36
  %53 = load %struct.ubt_softc*, %struct.ubt_softc** %5, align 8
  %54 = getelementptr inbounds %struct.ubt_softc, %struct.ubt_softc* %53, i32 0, i32 7
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ubt_softc*, %struct.ubt_softc** %5, align 8
  %57 = call i32 @NG_NODE_SET_PRIVATE(i32 %55, %struct.ubt_softc* %56)
  %58 = load %struct.ubt_softc*, %struct.ubt_softc** %5, align 8
  %59 = getelementptr inbounds %struct.ubt_softc, %struct.ubt_softc* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @NG_NODE_FORCE_WRITER(i32 %60)
  %62 = load %struct.ubt_softc*, %struct.ubt_softc** %5, align 8
  %63 = getelementptr inbounds %struct.ubt_softc, %struct.ubt_softc* %62, i32 0, i32 6
  %64 = load i32, i32* @MTX_DEF, align 4
  %65 = call i32 @mtx_init(i32* %63, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 %64)
  %66 = load %struct.ubt_softc*, %struct.ubt_softc** %5, align 8
  %67 = getelementptr inbounds %struct.ubt_softc, %struct.ubt_softc* %66, i32 0, i32 0
  %68 = load i32, i32* @MTX_DEF, align 4
  %69 = load i32, i32* @MTX_RECURSE, align 4
  %70 = or i32 %68, %69
  %71 = call i32 @mtx_init(i32* %67, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32* null, i32 %70)
  %72 = load %struct.ubt_softc*, %struct.ubt_softc** %5, align 8
  %73 = getelementptr inbounds %struct.ubt_softc, %struct.ubt_softc* %72, i32 0, i32 5
  %74 = load i32, i32* @UBT_DEFAULT_QLEN, align 4
  %75 = call i32 @NG_BT_MBUFQ_INIT(i32* %73, i32 %74)
  %76 = load %struct.ubt_softc*, %struct.ubt_softc** %5, align 8
  %77 = getelementptr inbounds %struct.ubt_softc, %struct.ubt_softc* %76, i32 0, i32 4
  %78 = load i32, i32* @UBT_DEFAULT_QLEN, align 4
  %79 = call i32 @NG_BT_MBUFQ_INIT(i32* %77, i32 %78)
  %80 = load %struct.ubt_softc*, %struct.ubt_softc** %5, align 8
  %81 = getelementptr inbounds %struct.ubt_softc, %struct.ubt_softc* %80, i32 0, i32 3
  %82 = load i32, i32* @UBT_DEFAULT_QLEN, align 4
  %83 = call i32 @NG_BT_MBUFQ_INIT(i32* %81, i32 %82)
  %84 = load %struct.ubt_softc*, %struct.ubt_softc** %5, align 8
  %85 = getelementptr inbounds %struct.ubt_softc, %struct.ubt_softc* %84, i32 0, i32 2
  %86 = load i32, i32* @ubt_task, align 4
  %87 = load %struct.ubt_softc*, %struct.ubt_softc** %5, align 8
  %88 = call i32 @TASK_INIT(i32* %85, i32 0, i32 %86, %struct.ubt_softc* %87)
  store i64 0, i64* %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store %struct.usb_endpoint_descriptor* null, %struct.usb_endpoint_descriptor** %6, align 8
  br label %89

89:                                               ; preds = %147, %52
  %90 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %91 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @usbd_get_config_descriptor(i32 %92)
  %94 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %95 = bitcast %struct.usb_endpoint_descriptor* %94 to %struct.usb_descriptor*
  %96 = call i64 @usb_desc_foreach(i32 %93, %struct.usb_descriptor* %95)
  %97 = inttoptr i64 %96 to %struct.usb_endpoint_descriptor*
  store %struct.usb_endpoint_descriptor* %97, %struct.usb_endpoint_descriptor** %6, align 8
  %98 = icmp ne %struct.usb_endpoint_descriptor* %97, null
  br i1 %98, label %99, label %148

99:                                               ; preds = %89
  %100 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %101 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @UDESC_INTERFACE, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %120

105:                                              ; preds = %99
  %106 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %107 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = sext i32 %108 to i64
  %110 = icmp uge i64 %109, 32
  br i1 %110, label %111, label %120

111:                                              ; preds = %105
  %112 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %113 = bitcast %struct.usb_endpoint_descriptor* %112 to %struct.usb_interface_descriptor*
  store %struct.usb_interface_descriptor* %113, %struct.usb_interface_descriptor** %7, align 8
  %114 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %7, align 8
  %115 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  store i32 %116, i32* %11, align 4
  %117 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %7, align 8
  %118 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  store i32 %119, i32* %12, align 4
  br label %120

120:                                              ; preds = %111, %105, %99
  %121 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %122 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @UDESC_ENDPOINT, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %147

126:                                              ; preds = %120
  %127 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %128 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = sext i32 %129 to i64
  %131 = icmp uge i64 %130, 16
  br i1 %131, label %132, label %147

132:                                              ; preds = %126
  %133 = load i32, i32* %11, align 4
  %134 = icmp eq i32 %133, 1
  br i1 %134, label %135, label %147

135:                                              ; preds = %132
  %136 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %137 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = call i64 @UGETW(i32 %138)
  store i64 %139, i64* %14, align 8
  %140 = load i64, i64* %14, align 8
  %141 = load i64, i64* %9, align 8
  %142 = icmp sgt i64 %140, %141
  br i1 %142, label %143, label %146

143:                                              ; preds = %135
  %144 = load i64, i64* %14, align 8
  store i64 %144, i64* %9, align 8
  %145 = load i32, i32* %12, align 4
  store i32 %145, i32* %10, align 4
  br label %146

146:                                              ; preds = %143, %135
  br label %147

147:                                              ; preds = %146, %132, %126, %120
  br label %89

148:                                              ; preds = %89
  %149 = load i64, i64* %9, align 8
  %150 = icmp sgt i64 %149, 0
  br i1 %150, label %151, label %162

151:                                              ; preds = %148
  %152 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %153 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %10, align 4
  %156 = call i64 @usbd_set_alt_interface_index(i32 %154, i32 1, i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %151
  %159 = load %struct.ubt_softc*, %struct.ubt_softc** %5, align 8
  %160 = load i32, i32* %10, align 4
  %161 = call i32 (%struct.ubt_softc*, i8*, ...) @UBT_ALERT(%struct.ubt_softc* %159, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i32 %160)
  br label %228

162:                                              ; preds = %151, %148
  %163 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %164 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %167 = load %struct.ubt_softc*, %struct.ubt_softc** %5, align 8
  %168 = getelementptr inbounds %struct.ubt_softc, %struct.ubt_softc* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @ubt_config, align 4
  %171 = load i32, i32* @UBT_N_TRANSFER, align 4
  %172 = load %struct.ubt_softc*, %struct.ubt_softc** %5, align 8
  %173 = load %struct.ubt_softc*, %struct.ubt_softc** %5, align 8
  %174 = getelementptr inbounds %struct.ubt_softc, %struct.ubt_softc* %173, i32 0, i32 0
  %175 = call i64 @usbd_transfer_setup(i32 %165, i32* %166, i32 %169, i32 %170, i32 %171, %struct.ubt_softc* %172, i32* %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %162
  %178 = load %struct.ubt_softc*, %struct.ubt_softc** %5, align 8
  %179 = call i32 (%struct.ubt_softc*, i8*, ...) @UBT_ALERT(%struct.ubt_softc* %178, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  br label %228

180:                                              ; preds = %162
  store i32 1, i32* %11, align 4
  br label %181

181:                                              ; preds = %224, %180
  %182 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %183 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* %11, align 4
  %186 = call %struct.usb_interface* @usbd_get_iface(i32 %184, i32 %185)
  store %struct.usb_interface* %186, %struct.usb_interface** %8, align 8
  %187 = load %struct.usb_interface*, %struct.usb_interface** %8, align 8
  %188 = icmp eq %struct.usb_interface* %187, null
  br i1 %188, label %189, label %190

189:                                              ; preds = %181
  br label %227

190:                                              ; preds = %181
  %191 = load %struct.usb_interface*, %struct.usb_interface** %8, align 8
  %192 = call %struct.usb_interface_descriptor* @usbd_get_interface_descriptor(%struct.usb_interface* %191)
  store %struct.usb_interface_descriptor* %192, %struct.usb_interface_descriptor** %7, align 8
  %193 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %7, align 8
  %194 = icmp ne %struct.usb_interface_descriptor* %193, null
  br i1 %194, label %195, label %223

195:                                              ; preds = %190
  %196 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %7, align 8
  %197 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %196, i32 0, i32 2
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @UICLASS_WIRELESS, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %201, label %223

201:                                              ; preds = %195
  %202 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %7, align 8
  %203 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %202, i32 0, i32 3
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @UISUBCLASS_RF, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %207, label %223

207:                                              ; preds = %201
  %208 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %7, align 8
  %209 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %208, i32 0, i32 4
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @UIPROTO_BLUETOOTH, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %213, label %223

213:                                              ; preds = %207
  %214 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %215 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* %11, align 4
  %218 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %219 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @usbd_set_parent_iface(i32 %216, i32 %217, i32 %221)
  br label %223

223:                                              ; preds = %213, %207, %201, %195, %190
  br label %224

224:                                              ; preds = %223
  %225 = load i32, i32* %11, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %11, align 4
  br label %181

227:                                              ; preds = %189
  store i32 0, i32* %2, align 4
  br label %232

228:                                              ; preds = %177, %158
  %229 = load i32, i32* %3, align 4
  %230 = call i32 @ubt_detach(i32 %229)
  %231 = load i32, i32* @ENXIO, align 4
  store i32 %231, i32* %2, align 4
  br label %232

232:                                              ; preds = %228, %227, %44, %32
  %233 = load i32, i32* %2, align 4
  ret i32 %233
}

declare dso_local %struct.usb_attach_arg* @device_get_ivars(i32) #1

declare dso_local %struct.ubt_softc* @device_get_softc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @device_set_usb_desc(i32) #1

declare dso_local i64 @ng_make_node_common(i32*, i32*) #1

declare dso_local i32 @UBT_ALERT(%struct.ubt_softc*, i8*, ...) #1

declare dso_local i64 @ng_name_node(i32, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @NG_NODE_UNREF(i32) #1

declare dso_local i32 @NG_NODE_SET_PRIVATE(i32, %struct.ubt_softc*) #1

declare dso_local i32 @NG_NODE_FORCE_WRITER(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @NG_BT_MBUFQ_INIT(i32*, i32) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.ubt_softc*) #1

declare dso_local i64 @usb_desc_foreach(i32, %struct.usb_descriptor*) #1

declare dso_local i32 @usbd_get_config_descriptor(i32) #1

declare dso_local i64 @UGETW(i32) #1

declare dso_local i64 @usbd_set_alt_interface_index(i32, i32, i32) #1

declare dso_local i64 @usbd_transfer_setup(i32, i32*, i32, i32, i32, %struct.ubt_softc*, i32*) #1

declare dso_local %struct.usb_interface* @usbd_get_iface(i32, i32) #1

declare dso_local %struct.usb_interface_descriptor* @usbd_get_interface_descriptor(%struct.usb_interface*) #1

declare dso_local i32 @usbd_set_parent_iface(i32, i32, i32) #1

declare dso_local i32 @ubt_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
