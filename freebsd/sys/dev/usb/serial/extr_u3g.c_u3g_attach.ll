; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_u3g.c_u3g_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_u3g.c_u3g_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_config = type { i32 }
%struct.usb_attach_arg = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.u3g_softc = type { i32, i32, i32, i32*, i64**, i32*, i32 }
%struct.usb_interface = type { i32 }
%struct.usb_interface_descriptor = type { i64, i32, i32, i32 }

@U3G_N_TRANSFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"sc=%p\0A\00", align 1
@U3GINIT_SAEL_M460 = common dso_local global i32 0, align 4
@UQ_MSC_EJECT_SAEL_M460 = common dso_local global i32 0, align 4
@u3g_config = common dso_local global %struct.usb_config* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"u3g\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@USB_IFACE_MAX = common dso_local global i32 0, align 4
@UICLASS_VENDOR = common dso_local global i64 0, align 8
@bootverbose = common dso_local global i64 0, align 8
@U3G_INTR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"port %d supports modem control\0A\00", align 1
@U3G_BULK_WR = common dso_local global i64 0, align 8
@U3G_BULK_RD = common dso_local global i64 0, align 8
@U3G_MAXPORTS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"no ports found\0A\00", align 1
@u3g_callback = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"ucom_attach failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Found %u port%s.\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @u3g_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @u3g_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.usb_attach_arg*, align 8
  %7 = alloca %struct.u3g_softc*, align 8
  %8 = alloca %struct.usb_interface*, align 8
  %9 = alloca %struct.usb_interface_descriptor*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %18 = load i32, i32* @U3G_N_TRANSFER, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %4, align 8
  %21 = alloca %struct.usb_config, i64 %19, align 16
  store i64 %19, i64* %5, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call %struct.usb_attach_arg* @device_get_ivars(i32 %22)
  store %struct.usb_attach_arg* %23, %struct.usb_attach_arg** %6, align 8
  %24 = load i32, i32* %3, align 4
  %25 = call %struct.u3g_softc* @device_get_softc(i32 %24)
  store %struct.u3g_softc* %25, %struct.u3g_softc** %7, align 8
  %26 = load %struct.u3g_softc*, %struct.u3g_softc** %7, align 8
  %27 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.u3g_softc* %26)
  %28 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %6, align 8
  %29 = call i32 @USB_GET_DRIVER_INFO(%struct.usb_attach_arg* %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* @U3GINIT_SAEL_M460, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %38, label %33

33:                                               ; preds = %1
  %34 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %6, align 8
  %35 = load i32, i32* @UQ_MSC_EJECT_SAEL_M460, align 4
  %36 = call i64 @usb_test_quirk(%struct.usb_attach_arg* %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33, %1
  %39 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %6, align 8
  %40 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @u3g_sael_m460_init(i32 %41)
  br label %43

43:                                               ; preds = %38, %33
  store i32 0, i32* %15, align 4
  br label %44

44:                                               ; preds = %58, %43
  %45 = load i32, i32* %15, align 4
  %46 = load i32, i32* @U3G_N_TRANSFER, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %61

48:                                               ; preds = %44
  %49 = load i32, i32* %15, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.usb_config, %struct.usb_config* %21, i64 %50
  %52 = load %struct.usb_config*, %struct.usb_config** @u3g_config, align 8
  %53 = load i32, i32* %15, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.usb_config, %struct.usb_config* %52, i64 %54
  %56 = bitcast %struct.usb_config* %51 to i8*
  %57 = bitcast %struct.usb_config* %55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %56, i8* align 4 %57, i64 4, i1 false)
  br label %58

58:                                               ; preds = %48
  %59 = load i32, i32* %15, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %15, align 4
  br label %44

61:                                               ; preds = %44
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @device_set_usb_desc(i32 %62)
  %64 = load %struct.u3g_softc*, %struct.u3g_softc** %7, align 8
  %65 = getelementptr inbounds %struct.u3g_softc, %struct.u3g_softc* %64, i32 0, i32 2
  %66 = load i32, i32* @MTX_DEF, align 4
  %67 = call i32 @mtx_init(i32* %65, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %66)
  %68 = load %struct.u3g_softc*, %struct.u3g_softc** %7, align 8
  %69 = getelementptr inbounds %struct.u3g_softc, %struct.u3g_softc* %68, i32 0, i32 1
  %70 = call i32 @ucom_ref(i32* %69)
  %71 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %6, align 8
  %72 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.u3g_softc*, %struct.u3g_softc** %7, align 8
  %75 = getelementptr inbounds %struct.u3g_softc, %struct.u3g_softc* %74, i32 0, i32 6
  store i32 %73, i32* %75, align 8
  store i32 0, i32* %10, align 4
  %76 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %6, align 8
  %77 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %16, align 4
  br label %80

80:                                               ; preds = %133, %61
  %81 = load i32, i32* %16, align 4
  %82 = load i32, i32* @USB_IFACE_MAX, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %136

84:                                               ; preds = %80
  %85 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %6, align 8
  %86 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %16, align 4
  %89 = call %struct.usb_interface* @usbd_get_iface(i32 %87, i32 %88)
  store %struct.usb_interface* %89, %struct.usb_interface** %8, align 8
  %90 = load %struct.usb_interface*, %struct.usb_interface** %8, align 8
  %91 = icmp eq %struct.usb_interface* %90, null
  br i1 %91, label %92, label %93

92:                                               ; preds = %84
  br label %136

93:                                               ; preds = %84
  %94 = load %struct.usb_interface*, %struct.usb_interface** %8, align 8
  %95 = call %struct.usb_interface_descriptor* @usbd_get_interface_descriptor(%struct.usb_interface* %94)
  store %struct.usb_interface_descriptor* %95, %struct.usb_interface_descriptor** %9, align 8
  %96 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %9, align 8
  %97 = icmp eq %struct.usb_interface_descriptor* %96, null
  br i1 %97, label %104, label %98

98:                                               ; preds = %93
  %99 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %9, align 8
  %100 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @UICLASS_VENDOR, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %98, %93
  br label %133

105:                                              ; preds = %98
  %106 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %6, align 8
  %107 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %9, align 8
  %111 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %9, align 8
  %114 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @u3g_huawei_is_cdce(i32 %109, i32 %112, i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %105
  br label %133

119:                                              ; preds = %105
  %120 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %6, align 8
  %121 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %16, align 4
  %124 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %6, align 8
  %125 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @usbd_set_parent_iface(i32 %122, i32 %123, i32 %127)
  %129 = load i32, i32* %16, align 4
  %130 = shl i32 1, %129
  %131 = load i32, i32* %10, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %10, align 4
  br label %133

133:                                              ; preds = %119, %118, %104
  %134 = load i32, i32* %16, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %16, align 4
  br label %80

136:                                              ; preds = %92, %80
  store i32 0, i32* %16, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %137

137:                                              ; preds = %262, %187, %147, %136
  %138 = load i32, i32* %16, align 4
  %139 = load i32, i32* @USB_IFACE_MAX, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %263

141:                                              ; preds = %137
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* %16, align 4
  %144 = shl i32 1, %143
  %145 = and i32 %142, %144
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %141
  %148 = load i32, i32* %16, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %16, align 4
  br label %137

150:                                              ; preds = %141
  store i32 0, i32* %15, align 4
  br label %151

151:                                              ; preds = %161, %150
  %152 = load i32, i32* %15, align 4
  %153 = load i32, i32* @U3G_N_TRANSFER, align 4
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %155, label %164

155:                                              ; preds = %151
  %156 = load i32, i32* %14, align 4
  %157 = load i32, i32* %15, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.usb_config, %struct.usb_config* %21, i64 %158
  %160 = getelementptr inbounds %struct.usb_config, %struct.usb_config* %159, i32 0, i32 0
  store i32 %156, i32* %160, align 4
  br label %161

161:                                              ; preds = %155
  %162 = load i32, i32* %15, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %15, align 4
  br label %151

164:                                              ; preds = %151
  %165 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %6, align 8
  %166 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.u3g_softc*, %struct.u3g_softc** %7, align 8
  %169 = getelementptr inbounds %struct.u3g_softc, %struct.u3g_softc* %168, i32 0, i32 4
  %170 = load i64**, i64*** %169, align 8
  %171 = load i32, i32* %13, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i64*, i64** %170, i64 %172
  %174 = load i64*, i64** %173, align 8
  %175 = load i32, i32* @U3G_N_TRANSFER, align 4
  %176 = load %struct.u3g_softc*, %struct.u3g_softc** %7, align 8
  %177 = getelementptr inbounds %struct.u3g_softc, %struct.u3g_softc* %176, i32 0, i32 3
  %178 = load i32*, i32** %177, align 8
  %179 = load i32, i32* %13, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  %182 = load %struct.u3g_softc*, %struct.u3g_softc** %7, align 8
  %183 = getelementptr inbounds %struct.u3g_softc, %struct.u3g_softc* %182, i32 0, i32 2
  %184 = call i32 @usbd_transfer_setup(i32 %167, i32* %16, i64* %174, %struct.usb_config* %21, i32 %175, i32* %181, i32* %183)
  store i32 %184, i32* %11, align 4
  %185 = load i32, i32* %11, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %164
  %188 = load i32, i32* %16, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %16, align 4
  store i32 0, i32* %14, align 4
  br label %137

190:                                              ; preds = %164
  %191 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %6, align 8
  %192 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* %16, align 4
  %195 = call %struct.usb_interface* @usbd_get_iface(i32 %193, i32 %194)
  store %struct.usb_interface* %195, %struct.usb_interface** %8, align 8
  %196 = load %struct.usb_interface*, %struct.usb_interface** %8, align 8
  %197 = call %struct.usb_interface_descriptor* @usbd_get_interface_descriptor(%struct.usb_interface* %196)
  store %struct.usb_interface_descriptor* %197, %struct.usb_interface_descriptor** %9, align 8
  %198 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %9, align 8
  %199 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.u3g_softc*, %struct.u3g_softc** %7, align 8
  %202 = getelementptr inbounds %struct.u3g_softc, %struct.u3g_softc* %201, i32 0, i32 5
  %203 = load i32*, i32** %202, align 8
  %204 = load i32, i32* %13, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  store i32 %200, i32* %206, align 4
  %207 = load i64, i64* @bootverbose, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %225

209:                                              ; preds = %190
  %210 = load %struct.u3g_softc*, %struct.u3g_softc** %7, align 8
  %211 = getelementptr inbounds %struct.u3g_softc, %struct.u3g_softc* %210, i32 0, i32 4
  %212 = load i64**, i64*** %211, align 8
  %213 = load i32, i32* %13, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i64*, i64** %212, i64 %214
  %216 = load i64*, i64** %215, align 8
  %217 = load i64, i64* @U3G_INTR, align 8
  %218 = getelementptr inbounds i64, i64* %216, i64 %217
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %225

221:                                              ; preds = %209
  %222 = load i32, i32* %3, align 4
  %223 = load i32, i32* %13, align 4
  %224 = call i32 (i32, i8*, ...) @device_printf(i32 %222, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %223)
  br label %225

225:                                              ; preds = %221, %209, %190
  %226 = load %struct.u3g_softc*, %struct.u3g_softc** %7, align 8
  %227 = getelementptr inbounds %struct.u3g_softc, %struct.u3g_softc* %226, i32 0, i32 2
  %228 = call i32 @mtx_lock(i32* %227)
  %229 = load %struct.u3g_softc*, %struct.u3g_softc** %7, align 8
  %230 = getelementptr inbounds %struct.u3g_softc, %struct.u3g_softc* %229, i32 0, i32 4
  %231 = load i64**, i64*** %230, align 8
  %232 = load i32, i32* %13, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i64*, i64** %231, i64 %233
  %235 = load i64*, i64** %234, align 8
  %236 = load i64, i64* @U3G_BULK_WR, align 8
  %237 = getelementptr inbounds i64, i64* %235, i64 %236
  %238 = load i64, i64* %237, align 8
  %239 = call i32 @usbd_xfer_set_stall(i64 %238)
  %240 = load %struct.u3g_softc*, %struct.u3g_softc** %7, align 8
  %241 = getelementptr inbounds %struct.u3g_softc, %struct.u3g_softc* %240, i32 0, i32 4
  %242 = load i64**, i64*** %241, align 8
  %243 = load i32, i32* %13, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i64*, i64** %242, i64 %244
  %246 = load i64*, i64** %245, align 8
  %247 = load i64, i64* @U3G_BULK_RD, align 8
  %248 = getelementptr inbounds i64, i64* %246, i64 %247
  %249 = load i64, i64* %248, align 8
  %250 = call i32 @usbd_xfer_set_stall(i64 %249)
  %251 = load %struct.u3g_softc*, %struct.u3g_softc** %7, align 8
  %252 = getelementptr inbounds %struct.u3g_softc, %struct.u3g_softc* %251, i32 0, i32 2
  %253 = call i32 @mtx_unlock(i32* %252)
  %254 = load i32, i32* %13, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %13, align 4
  %256 = load i32, i32* %14, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %14, align 4
  %258 = load i32, i32* %13, align 4
  %259 = load i32, i32* @U3G_MAXPORTS, align 4
  %260 = icmp eq i32 %258, %259
  br i1 %260, label %261, label %262

261:                                              ; preds = %225
  br label %263

262:                                              ; preds = %225
  br label %137

263:                                              ; preds = %261, %137
  %264 = load i32, i32* %13, align 4
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %266, label %269

266:                                              ; preds = %263
  %267 = load i32, i32* %3, align 4
  %268 = call i32 (i32, i8*, ...) @device_printf(i32 %267, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %305

269:                                              ; preds = %263
  %270 = load i32, i32* %13, align 4
  %271 = load %struct.u3g_softc*, %struct.u3g_softc** %7, align 8
  %272 = getelementptr inbounds %struct.u3g_softc, %struct.u3g_softc* %271, i32 0, i32 0
  store i32 %270, i32* %272, align 8
  %273 = load %struct.u3g_softc*, %struct.u3g_softc** %7, align 8
  %274 = getelementptr inbounds %struct.u3g_softc, %struct.u3g_softc* %273, i32 0, i32 1
  %275 = load %struct.u3g_softc*, %struct.u3g_softc** %7, align 8
  %276 = getelementptr inbounds %struct.u3g_softc, %struct.u3g_softc* %275, i32 0, i32 3
  %277 = load i32*, i32** %276, align 8
  %278 = load %struct.u3g_softc*, %struct.u3g_softc** %7, align 8
  %279 = getelementptr inbounds %struct.u3g_softc, %struct.u3g_softc* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = load %struct.u3g_softc*, %struct.u3g_softc** %7, align 8
  %282 = load %struct.u3g_softc*, %struct.u3g_softc** %7, align 8
  %283 = getelementptr inbounds %struct.u3g_softc, %struct.u3g_softc* %282, i32 0, i32 2
  %284 = call i32 @ucom_attach(i32* %274, i32* %277, i32 %280, %struct.u3g_softc* %281, i32* @u3g_callback, i32* %283)
  store i32 %284, i32* %11, align 4
  %285 = load i32, i32* %11, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %289

287:                                              ; preds = %269
  %288 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %305

289:                                              ; preds = %269
  %290 = load %struct.u3g_softc*, %struct.u3g_softc** %7, align 8
  %291 = getelementptr inbounds %struct.u3g_softc, %struct.u3g_softc* %290, i32 0, i32 1
  %292 = load i32, i32* %3, align 4
  %293 = call i32 @ucom_set_pnpinfo_usb(i32* %291, i32 %292)
  %294 = load i32, i32* %3, align 4
  %295 = load %struct.u3g_softc*, %struct.u3g_softc** %7, align 8
  %296 = getelementptr inbounds %struct.u3g_softc, %struct.u3g_softc* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = load %struct.u3g_softc*, %struct.u3g_softc** %7, align 8
  %299 = getelementptr inbounds %struct.u3g_softc, %struct.u3g_softc* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = icmp sgt i32 %300, 1
  %302 = zext i1 %301 to i64
  %303 = select i1 %301, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %304 = call i32 (i32, i8*, ...) @device_printf(i32 %294, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %297, i8* %303)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %17, align 4
  br label %309

305:                                              ; preds = %287, %266
  %306 = load i32, i32* %3, align 4
  %307 = call i32 @u3g_detach(i32 %306)
  %308 = load i32, i32* @ENXIO, align 4
  store i32 %308, i32* %2, align 4
  store i32 1, i32* %17, align 4
  br label %309

309:                                              ; preds = %305, %289
  %310 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %310)
  %311 = load i32, i32* %2, align 4
  ret i32 %311
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.usb_attach_arg* @device_get_ivars(i32) #2

declare dso_local %struct.u3g_softc* @device_get_softc(i32) #2

declare dso_local i32 @DPRINTF(i8*, ...) #2

declare dso_local i32 @USB_GET_DRIVER_INFO(%struct.usb_attach_arg*) #2

declare dso_local i64 @usb_test_quirk(%struct.usb_attach_arg*, i32) #2

declare dso_local i32 @u3g_sael_m460_init(i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @device_set_usb_desc(i32) #2

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #2

declare dso_local i32 @ucom_ref(i32*) #2

declare dso_local %struct.usb_interface* @usbd_get_iface(i32, i32) #2

declare dso_local %struct.usb_interface_descriptor* @usbd_get_interface_descriptor(%struct.usb_interface*) #2

declare dso_local i64 @u3g_huawei_is_cdce(i32, i32, i32) #2

declare dso_local i32 @usbd_set_parent_iface(i32, i32, i32) #2

declare dso_local i32 @usbd_transfer_setup(i32, i32*, i64*, %struct.usb_config*, i32, i32*, i32*) #2

declare dso_local i32 @device_printf(i32, i8*, ...) #2

declare dso_local i32 @mtx_lock(i32*) #2

declare dso_local i32 @usbd_xfer_set_stall(i64) #2

declare dso_local i32 @mtx_unlock(i32*) #2

declare dso_local i32 @ucom_attach(i32*, i32*, i32, %struct.u3g_softc*, i32*, i32*) #2

declare dso_local i32 @ucom_set_pnpinfo_usb(i32*, i32) #2

declare dso_local i32 @u3g_detach(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
