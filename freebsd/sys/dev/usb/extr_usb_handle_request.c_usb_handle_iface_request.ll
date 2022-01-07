; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_handle_request.c_usb_handle_iface_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_handle_request.c_usb_handle_iface_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.usb_device* }
%struct.usb_device = type { i32 }
%struct.usb_device_request = type { i32, i64*, i32, i32* }
%struct.usb_interface = type { i64, i32, i32*, i32* }

@UT_INTERFACE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@USB_HR_NOT_COMPLETE = common dso_local global i64 0, align 8
@USB_HR_COMPLETE_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"alt setting does not exist %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"alt setting failed %s\0A\00", align 1
@USB_ERR_SHORT_XFER = common dso_local global i32 0, align 4
@USB_ERR_STALLED = common dso_local global i32 0, align 4
@usb_handle_request = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_xfer*, i8**, i32*, %struct.usb_device_request*, i32, i64)* @usb_handle_iface_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_handle_iface_request(%struct.usb_xfer* %0, i8** %1, i32* %2, %struct.usb_device_request* byval(%struct.usb_device_request) align 8 %3, i32 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_xfer*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.usb_interface*, align 8
  %14 = alloca %struct.usb_interface*, align 8
  %15 = alloca %struct.usb_device*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.usb_xfer* %0, %struct.usb_xfer** %8, align 8
  store i8** %1, i8*** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i64 %5, i64* %12, align 8
  %20 = load %struct.usb_xfer*, %struct.usb_xfer** %8, align 8
  %21 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.usb_device*, %struct.usb_device** %23, align 8
  store %struct.usb_device* %24, %struct.usb_device** %15, align 8
  %25 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %3, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %26, 31
  %28 = load i32, i32* @UT_INTERFACE, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %6
  %31 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %3, i32 0, i32 1
  %32 = load i64*, i64** %31, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %17, align 8
  br label %36

35:                                               ; preds = %6
  store i64 0, i64* %17, align 8
  br label %36

36:                                               ; preds = %35, %30
  %37 = load %struct.usb_xfer*, %struct.usb_xfer** %8, align 8
  %38 = call i32 @USB_XFER_UNLOCK(%struct.usb_xfer* %37)
  %39 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %40 = call i64 @usbd_enum_lock(%struct.usb_device* %39)
  store i64 %40, i64* %19, align 8
  %41 = load i32, i32* @ENXIO, align 4
  store i32 %41, i32* %16, align 4
  br label %42

42:                                               ; preds = %176, %36
  %43 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %44 = load i64, i64* %17, align 8
  %45 = call %struct.usb_interface* @usbd_get_iface(%struct.usb_device* %43, i64 %44)
  store %struct.usb_interface* %45, %struct.usb_interface** %13, align 8
  %46 = load %struct.usb_interface*, %struct.usb_interface** %13, align 8
  %47 = icmp eq %struct.usb_interface* %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %42
  %49 = load %struct.usb_interface*, %struct.usb_interface** %13, align 8
  %50 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %48, %42
  br label %255

54:                                               ; preds = %48
  %55 = load i64, i64* %12, align 8
  store i64 %55, i64* %18, align 8
  %56 = load i32, i32* %16, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %81

58:                                               ; preds = %54
  %59 = load i32, i32* %16, align 4
  %60 = load i32, i32* @ENOTTY, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %81

62:                                               ; preds = %58
  %63 = load %struct.usb_interface*, %struct.usb_interface** %13, align 8
  %64 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %81

67:                                               ; preds = %62
  %68 = load %struct.usb_interface*, %struct.usb_interface** %13, align 8
  %69 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = call i64 @device_is_attached(i32* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %67
  %74 = load %struct.usb_interface*, %struct.usb_interface** %13, align 8
  %75 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = load i8**, i8*** %9, align 8
  %78 = load i32*, i32** %10, align 8
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @USB_HANDLE_REQUEST(i32* %76, %struct.usb_device_request* %3, i8** %77, i32* %78, i32 %79, i64* %18)
  store i32 %80, i32* %16, align 4
  br label %81

81:                                               ; preds = %73, %67, %62, %58, %54
  %82 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %83 = load %struct.usb_interface*, %struct.usb_interface** %13, align 8
  %84 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call %struct.usb_interface* @usbd_get_iface(%struct.usb_device* %82, i64 %85)
  store %struct.usb_interface* %86, %struct.usb_interface** %14, align 8
  %87 = load %struct.usb_interface*, %struct.usb_interface** %14, align 8
  %88 = icmp eq %struct.usb_interface* %87, null
  br i1 %88, label %94, label %89

89:                                               ; preds = %81
  %90 = load %struct.usb_interface*, %struct.usb_interface** %14, align 8
  %91 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %90, i32 0, i32 3
  %92 = load i32*, i32** %91, align 8
  %93 = icmp eq i32* %92, null
  br i1 %93, label %94, label %95

94:                                               ; preds = %89, %81
  store %struct.usb_interface* null, %struct.usb_interface** %14, align 8
  br label %95

95:                                               ; preds = %94, %89
  %96 = load i32, i32* %16, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %138

98:                                               ; preds = %95
  %99 = load i32, i32* %16, align 4
  %100 = load i32, i32* @ENOTTY, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %138

102:                                              ; preds = %98
  %103 = load %struct.usb_interface*, %struct.usb_interface** %14, align 8
  %104 = icmp ne %struct.usb_interface* %103, null
  br i1 %104, label %105, label %138

105:                                              ; preds = %102
  %106 = load %struct.usb_interface*, %struct.usb_interface** %14, align 8
  %107 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %110, label %138

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %3, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = and i32 %112, 31
  %114 = load i32, i32* @UT_INTERFACE, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %138

116:                                              ; preds = %110
  %117 = load %struct.usb_interface*, %struct.usb_interface** %14, align 8
  %118 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %117, i32 0, i32 2
  %119 = load i32*, i32** %118, align 8
  %120 = load %struct.usb_interface*, %struct.usb_interface** %13, align 8
  %121 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %120, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = icmp ne i32* %119, %122
  br i1 %123, label %124, label %138

124:                                              ; preds = %116
  %125 = load %struct.usb_interface*, %struct.usb_interface** %14, align 8
  %126 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %125, i32 0, i32 2
  %127 = load i32*, i32** %126, align 8
  %128 = call i64 @device_is_attached(i32* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %138

130:                                              ; preds = %124
  %131 = load %struct.usb_interface*, %struct.usb_interface** %14, align 8
  %132 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %131, i32 0, i32 2
  %133 = load i32*, i32** %132, align 8
  %134 = load i8**, i8*** %9, align 8
  %135 = load i32*, i32** %10, align 8
  %136 = load i32, i32* %11, align 4
  %137 = call i32 @USB_HANDLE_REQUEST(i32* %133, %struct.usb_device_request* %3, i8** %134, i32* %135, i32 %136, i64* %18)
  store i32 %137, i32* %16, align 4
  br label %138

138:                                              ; preds = %130, %124, %116, %110, %105, %102, %98, %95
  %139 = load i32, i32* %16, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %164

141:                                              ; preds = %138
  %142 = load i8**, i8*** %9, align 8
  %143 = load i8*, i8** %142, align 8
  %144 = bitcast i8* %143 to i64*
  %145 = load i32, i32* %11, align 4
  %146 = sext i32 %145 to i64
  %147 = sub i64 0, %146
  %148 = getelementptr inbounds i64, i64* %144, i64 %147
  %149 = bitcast i64* %148 to i8*
  %150 = load i8**, i8*** %9, align 8
  store i8* %149, i8** %150, align 8
  %151 = load i32, i32* %11, align 4
  %152 = load i32*, i32** %10, align 8
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 %153, %151
  store i32 %154, i32* %152, align 4
  %155 = load i64, i64* %12, align 8
  %156 = load i64, i64* @USB_HR_NOT_COMPLETE, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %163

158:                                              ; preds = %141
  %159 = load i64, i64* %18, align 8
  %160 = load i64, i64* @USB_HR_COMPLETE_OK, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %158
  br label %245

163:                                              ; preds = %158, %141
  br label %236

164:                                              ; preds = %138
  %165 = load i32, i32* %16, align 4
  %166 = load i32, i32* @ENOTTY, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %164
  br label %255

169:                                              ; preds = %164
  br label %170

170:                                              ; preds = %169
  %171 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %3, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = and i32 %172, 31
  %174 = load i32, i32* @UT_INTERFACE, align 4
  %175 = icmp ne i32 %173, %174
  br i1 %175, label %176, label %179

176:                                              ; preds = %170
  %177 = load i64, i64* %17, align 8
  %178 = add nsw i64 %177, 1
  store i64 %178, i64* %17, align 8
  br label %42

179:                                              ; preds = %170
  %180 = load i64, i64* %12, align 8
  %181 = load i64, i64* @USB_HR_NOT_COMPLETE, align 8
  %182 = icmp ne i64 %180, %181
  br i1 %182, label %183, label %184

183:                                              ; preds = %179
  br label %236

184:                                              ; preds = %179
  %185 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %3, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  switch i32 %186, label %234 [
    i32 128, label %187
    i32 129, label %223
  ]

187:                                              ; preds = %184
  %188 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %3, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  switch i32 %189, label %221 [
    i32 130, label %190
  ]

190:                                              ; preds = %187
  %191 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %192 = load %struct.usb_interface*, %struct.usb_interface** %13, align 8
  %193 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %3, i32 0, i32 3
  %194 = load i32*, i32** %193, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 0
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @usb_check_alt_setting(%struct.usb_device* %191, %struct.usb_interface* %192, i32 %196)
  store i32 %197, i32* %16, align 4
  %198 = load i32, i32* %16, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %190
  %201 = load i32, i32* %16, align 4
  %202 = call i32 @usbd_errstr(i32 %201)
  %203 = call i32 @DPRINTF(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %202)
  br label %255

204:                                              ; preds = %190
  %205 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %206 = load i64, i64* %17, align 8
  %207 = call i32 @usb_reset_iface_endpoints(%struct.usb_device* %205, i64 %206)
  store i32 %207, i32* %16, align 4
  %208 = load i32, i32* %16, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %214

210:                                              ; preds = %204
  %211 = load i32, i32* %16, align 4
  %212 = call i32 @usbd_errstr(i32 %211)
  %213 = call i32 @DPRINTF(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %212)
  br label %255

214:                                              ; preds = %204
  %215 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %3, i32 0, i32 3
  %216 = load i32*, i32** %215, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 0
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.usb_interface*, %struct.usb_interface** %13, align 8
  %220 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %219, i32 0, i32 1
  store i32 %218, i32* %220, align 8
  br label %222

221:                                              ; preds = %187
  br label %255

222:                                              ; preds = %214
  br label %235

223:                                              ; preds = %184
  %224 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %3, i32 0, i32 2
  %225 = load i32, i32* %224, align 8
  switch i32 %225, label %232 [
    i32 131, label %226
  ]

226:                                              ; preds = %223
  %227 = load %struct.usb_interface*, %struct.usb_interface** %13, align 8
  %228 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %227, i32 0, i32 1
  %229 = bitcast i32* %228 to i8*
  %230 = load i8**, i8*** %9, align 8
  store i8* %229, i8** %230, align 8
  %231 = load i32*, i32** %10, align 8
  store i32 1, i32* %231, align 4
  br label %233

232:                                              ; preds = %223
  br label %255

233:                                              ; preds = %226
  br label %235

234:                                              ; preds = %184
  br label %255

235:                                              ; preds = %233, %222
  br label %236

236:                                              ; preds = %235, %183, %163
  %237 = load i64, i64* %19, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %242

239:                                              ; preds = %236
  %240 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %241 = call i32 @usbd_enum_unlock(%struct.usb_device* %240)
  br label %242

242:                                              ; preds = %239, %236
  %243 = load %struct.usb_xfer*, %struct.usb_xfer** %8, align 8
  %244 = call i32 @USB_XFER_LOCK(%struct.usb_xfer* %243)
  store i32 0, i32* %7, align 4
  br label %265

245:                                              ; preds = %162
  %246 = load i64, i64* %19, align 8
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %251

248:                                              ; preds = %245
  %249 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %250 = call i32 @usbd_enum_unlock(%struct.usb_device* %249)
  br label %251

251:                                              ; preds = %248, %245
  %252 = load %struct.usb_xfer*, %struct.usb_xfer** %8, align 8
  %253 = call i32 @USB_XFER_LOCK(%struct.usb_xfer* %252)
  %254 = load i32, i32* @USB_ERR_SHORT_XFER, align 4
  store i32 %254, i32* %7, align 4
  br label %265

255:                                              ; preds = %234, %232, %221, %210, %200, %168, %53
  %256 = load i64, i64* %19, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %261

258:                                              ; preds = %255
  %259 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %260 = call i32 @usbd_enum_unlock(%struct.usb_device* %259)
  br label %261

261:                                              ; preds = %258, %255
  %262 = load %struct.usb_xfer*, %struct.usb_xfer** %8, align 8
  %263 = call i32 @USB_XFER_LOCK(%struct.usb_xfer* %262)
  %264 = load i32, i32* @USB_ERR_STALLED, align 4
  store i32 %264, i32* %7, align 4
  br label %265

265:                                              ; preds = %261, %251, %242
  %266 = load i32, i32* %7, align 4
  ret i32 %266
}

declare dso_local i32 @USB_XFER_UNLOCK(%struct.usb_xfer*) #1

declare dso_local i64 @usbd_enum_lock(%struct.usb_device*) #1

declare dso_local %struct.usb_interface* @usbd_get_iface(%struct.usb_device*, i64) #1

declare dso_local i64 @device_is_attached(i32*) #1

declare dso_local i32 @USB_HANDLE_REQUEST(i32*, %struct.usb_device_request*, i8**, i32*, i32, i64*) #1

declare dso_local i32 @usb_check_alt_setting(%struct.usb_device*, %struct.usb_interface*, i32) #1

declare dso_local i32 @DPRINTF(i8*, i32) #1

declare dso_local i32 @usbd_errstr(i32) #1

declare dso_local i32 @usb_reset_iface_endpoints(%struct.usb_device*, i64) #1

declare dso_local i32 @usbd_enum_unlock(%struct.usb_device*) #1

declare dso_local i32 @USB_XFER_LOCK(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
