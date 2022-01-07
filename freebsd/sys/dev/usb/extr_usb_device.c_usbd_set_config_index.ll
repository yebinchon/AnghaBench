; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_device.c_usbd_set_config_index.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_device.c_usbd_set_config_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i64, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__*, i32, %struct.usb_config_descriptor* }
%struct.TYPE_6__ = type { i64, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.usb_config_descriptor = type { i32, i32, i32 }
%struct.usb_status = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"udev=%p index=%d\0A\00", align 1
@USB_UNCONFIG_INDEX = common dso_local global i32 0, align 4
@USB_UNCONFIG_NO = common dso_local global i32 0, align 4
@USB_STATE_CONFIGURED = common dso_local global i64 0, align 8
@USB_STATE_ADDRESSED = common dso_local global i64 0, align 8
@USB_MODE_DEVICE = common dso_local global i64 0, align 8
@UDESC_CONFIG = common dso_local global i32 0, align 4
@UC_SELF_POWERED = common dso_local global i32 0, align 4
@USB_MODE_HOST = common dso_local global i64 0, align 8
@UC_BUS_POWERED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"could not read device status: %s\0A\00", align 1
@UDS_SELF_POWERED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"status=0x%04x \0A\00", align 1
@.str.3 = private unnamed_addr constant [73 x i8] c"udev=%p cdesc=%p (addr %d) cno=%d attr=0x%02x, selfpowered=%d, power=%d\0A\00", align 1
@USB_MAX_POWER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"power exceeded %d > %d\0A\00", align 1
@USB_ERR_NO_POWER = common dso_local global i64 0, align 8
@USB_IFACE_INDEX_ANY = common dso_local global i32 0, align 4
@USB_CFG_ALLOC = common dso_local global i32 0, align 4
@USB_CFG_INIT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"error=%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @usbd_set_config_index(%struct.usb_device* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_status, align 4
  %6 = alloca %struct.usb_config_descriptor*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.usb_device* %0, %struct.usb_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 (i32, i8*, ...) @DPRINTFN(i32 6, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.usb_device* %12, i32 %13)
  %15 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %16 = call i32 @usbd_enum_lock(%struct.usb_device* %15)
  store i32 %16, i32* %10, align 4
  %17 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %18 = call i32 @usb_unconfigure(%struct.usb_device* %17, i32 0)
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @USB_UNCONFIG_INDEX, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %2
  %23 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %24 = load i32, i32* @USB_UNCONFIG_NO, align 4
  %25 = call i64 @usbd_req_set_config(%struct.usb_device* %23, i32* null, i32 %24)
  store i64 %25, i64* %11, align 8
  %26 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %27 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @USB_STATE_CONFIGURED, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %22
  %32 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %33 = load i64, i64* @USB_STATE_ADDRESSED, align 8
  %34 = call i32 @usb_set_device_state(%struct.usb_device* %32, i64 %33)
  br label %35

35:                                               ; preds = %31, %22
  br label %210

36:                                               ; preds = %2
  %37 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %38 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @USB_MODE_DEVICE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %36
  %44 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %45 = load i32, i32* @UDESC_CONFIG, align 4
  %46 = shl i32 %45, 8
  %47 = load i32, i32* %4, align 4
  %48 = or i32 %46, %47
  %49 = call i64 @usbd_req_get_descriptor_ptr(%struct.usb_device* %44, %struct.usb_config_descriptor** %6, i32 %48)
  store i64 %49, i64* %11, align 8
  br label %54

50:                                               ; preds = %36
  %51 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %52 = load i32, i32* %4, align 4
  %53 = call i64 @usbd_req_get_config_desc_full(%struct.usb_device* %51, i32* null, %struct.usb_config_descriptor** %6, i32 %52)
  store i64 %53, i64* %11, align 8
  br label %54

54:                                               ; preds = %50, %43
  %55 = load i64, i64* %11, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  br label %210

58:                                               ; preds = %54
  %59 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %6, align 8
  %60 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %61 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %60, i32 0, i32 7
  store %struct.usb_config_descriptor* %59, %struct.usb_config_descriptor** %61, align 8
  store i32 0, i32* %9, align 4
  %62 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %63 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %113, label %67

67:                                               ; preds = %58
  %68 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %6, align 8
  %69 = getelementptr inbounds %struct.usb_config_descriptor, %struct.usb_config_descriptor* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @UC_SELF_POWERED, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %113

74:                                               ; preds = %67
  %75 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %76 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @USB_MODE_HOST, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %113

81:                                               ; preds = %74
  %82 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %6, align 8
  %83 = getelementptr inbounds %struct.usb_config_descriptor, %struct.usb_config_descriptor* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @UC_BUS_POWERED, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %111

88:                                               ; preds = %81
  %89 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %90 = call i64 @usbd_req_get_device_status(%struct.usb_device* %89, i32* null, %struct.usb_status* %5)
  store i64 %90, i64* %11, align 8
  %91 = load i64, i64* %11, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load i64, i64* %11, align 8
  %95 = call i32 @usbd_errstr(i64 %94)
  %96 = call i32 (i32, i8*, ...) @DPRINTFN(i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %95)
  br label %106

97:                                               ; preds = %88
  %98 = getelementptr inbounds %struct.usb_status, %struct.usb_status* %5, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @UGETW(i32 %99)
  %101 = load i32, i32* @UDS_SELF_POWERED, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %97
  store i32 1, i32* %9, align 4
  br label %105

105:                                              ; preds = %104, %97
  br label %106

106:                                              ; preds = %105, %93
  %107 = getelementptr inbounds %struct.usb_status, %struct.usb_status* %5, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @UGETW(i32 %108)
  %110 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %109)
  br label %112

111:                                              ; preds = %81
  store i32 1, i32* %9, align 4
  br label %112

112:                                              ; preds = %111, %106
  br label %113

113:                                              ; preds = %112, %74, %67, %58
  %114 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %115 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %6, align 8
  %116 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %117 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %116, i32 0, i32 6
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %6, align 8
  %120 = getelementptr inbounds %struct.usb_config_descriptor, %struct.usb_config_descriptor* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %6, align 8
  %123 = getelementptr inbounds %struct.usb_config_descriptor, %struct.usb_config_descriptor* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %9, align 4
  %126 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %6, align 8
  %127 = getelementptr inbounds %struct.usb_config_descriptor, %struct.usb_config_descriptor* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = mul nsw i32 %128, 2
  %130 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.3, i64 0, i64 0), %struct.usb_device* %114, %struct.usb_config_descriptor* %115, i32 %118, i32 %121, i32 %124, i32 %125, i32 %129)
  %131 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %6, align 8
  %132 = getelementptr inbounds %struct.usb_config_descriptor, %struct.usb_config_descriptor* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = mul nsw i32 %133, 2
  store i32 %134, i32* %7, align 4
  %135 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %136 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %135, i32 0, i32 5
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %136, align 8
  %138 = icmp ne %struct.TYPE_5__* %137, null
  br i1 %138, label %139, label %147

139:                                              ; preds = %113
  %140 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %141 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %140, i32 0, i32 5
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  store i32 %146, i32* %8, align 4
  br label %149

147:                                              ; preds = %113
  %148 = load i32, i32* @USB_MAX_POWER, align 4
  store i32 %148, i32* %8, align 4
  br label %149

149:                                              ; preds = %147, %139
  %150 = load i32, i32* %7, align 4
  %151 = load i32, i32* %8, align 4
  %152 = icmp sgt i32 %150, %151
  br i1 %152, label %153, label %158

153:                                              ; preds = %149
  %154 = load i32, i32* %7, align 4
  %155 = load i32, i32* %8, align 4
  %156 = call i32 (i32, i8*, ...) @DPRINTFN(i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %154, i32 %155)
  %157 = load i64, i64* @USB_ERR_NO_POWER, align 8
  store i64 %157, i64* %11, align 8
  br label %210

158:                                              ; preds = %149
  %159 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %160 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %159, i32 0, i32 4
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @USB_MODE_HOST, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %170

165:                                              ; preds = %158
  %166 = load i32, i32* %9, align 4
  %167 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %168 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %167, i32 0, i32 4
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 1
  store i32 %166, i32* %169, align 8
  br label %170

170:                                              ; preds = %165, %158
  %171 = load i32, i32* %7, align 4
  %172 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %173 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %172, i32 0, i32 1
  store i32 %171, i32* %173, align 8
  %174 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %6, align 8
  %175 = getelementptr inbounds %struct.usb_config_descriptor, %struct.usb_config_descriptor* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %178 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %177, i32 0, i32 3
  store i32 %176, i32* %178, align 8
  %179 = load i32, i32* %4, align 4
  %180 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %181 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %180, i32 0, i32 2
  store i32 %179, i32* %181, align 4
  %182 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %183 = load i64, i64* @USB_STATE_CONFIGURED, align 8
  %184 = call i32 @usb_set_device_state(%struct.usb_device* %182, i64 %183)
  %185 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %186 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %6, align 8
  %187 = getelementptr inbounds %struct.usb_config_descriptor, %struct.usb_config_descriptor* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = call i64 @usbd_req_set_config(%struct.usb_device* %185, i32* null, i32 %188)
  store i64 %189, i64* %11, align 8
  %190 = load i64, i64* %11, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %170
  br label %210

193:                                              ; preds = %170
  %194 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %195 = load i32, i32* @USB_IFACE_INDEX_ANY, align 4
  %196 = load i32, i32* @USB_CFG_ALLOC, align 4
  %197 = call i64 @usb_config_parse(%struct.usb_device* %194, i32 %195, i32 %196)
  store i64 %197, i64* %11, align 8
  %198 = load i64, i64* %11, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %193
  br label %210

201:                                              ; preds = %193
  %202 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %203 = load i32, i32* @USB_IFACE_INDEX_ANY, align 4
  %204 = load i32, i32* @USB_CFG_INIT, align 4
  %205 = call i64 @usb_config_parse(%struct.usb_device* %202, i32 %203, i32 %204)
  store i64 %205, i64* %11, align 8
  %206 = load i64, i64* %11, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %201
  br label %210

209:                                              ; preds = %201
  br label %210

210:                                              ; preds = %209, %208, %200, %192, %153, %57, %35
  %211 = load i64, i64* %11, align 8
  %212 = call i32 @usbd_errstr(i64 %211)
  %213 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %212)
  %214 = load i64, i64* %11, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %219

216:                                              ; preds = %210
  %217 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %218 = call i32 @usb_unconfigure(%struct.usb_device* %217, i32 0)
  br label %219

219:                                              ; preds = %216, %210
  %220 = load i32, i32* %10, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %225

222:                                              ; preds = %219
  %223 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %224 = call i32 @usbd_enum_unlock(%struct.usb_device* %223)
  br label %225

225:                                              ; preds = %222, %219
  %226 = load i64, i64* %11, align 8
  ret i64 %226
}

declare dso_local i32 @DPRINTFN(i32, i8*, ...) #1

declare dso_local i32 @usbd_enum_lock(%struct.usb_device*) #1

declare dso_local i32 @usb_unconfigure(%struct.usb_device*, i32) #1

declare dso_local i64 @usbd_req_set_config(%struct.usb_device*, i32*, i32) #1

declare dso_local i32 @usb_set_device_state(%struct.usb_device*, i64) #1

declare dso_local i64 @usbd_req_get_descriptor_ptr(%struct.usb_device*, %struct.usb_config_descriptor**, i32) #1

declare dso_local i64 @usbd_req_get_config_desc_full(%struct.usb_device*, i32*, %struct.usb_config_descriptor**, i32) #1

declare dso_local i64 @usbd_req_get_device_status(%struct.usb_device*, i32*, %struct.usb_status*) #1

declare dso_local i32 @usbd_errstr(i64) #1

declare dso_local i32 @UGETW(i32) #1

declare dso_local i32 @DPRINTF(i8*, ...) #1

declare dso_local i64 @usb_config_parse(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @usbd_enum_unlock(%struct.usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
