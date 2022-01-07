; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/usbconfig/extr_usbconfig.c_flush_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/usbconfig/extr_usbconfig.c_flush_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb20_backend = type { i32 }
%struct.options = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i64, i64, i64, i64, i64, i64, i32, i64, i64, i32, i64, i32, i32, i64, %struct.TYPE_2__, i64, i32, i64, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.libusb20_device = type { i32 }
%struct.LIBUSB20_DEVICE_DESC_DECODED = type { i32, i32, i32 }

@.str = private unnamed_addr constant [138 x i8] c"can only specify one of 'set_config', 'set_alt', 'reset', 'suspend', 'resume', 'power_save', 'power_on' and 'power_off' at the same time!\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Setting USB template %u failed, continuing.\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"USB template: <unknown>\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"USB template: %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"could not open device\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"REQUEST = <ERROR>\0A\00", align 1
@LIBUSB20_ENDPOINT_IN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"REQUEST = <OK>\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"REQUEST = <\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"0x%02x%s\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"><\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c">\0A\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"could not set config index\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"could not set alternate setting\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"could not reset device\00", align 1
@LIBUSB20_POWER_SUSPEND = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [22 x i8] c"could not set suspend\00", align 1
@LIBUSB20_POWER_RESUME = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [21 x i8] c"could not set resume\00", align 1
@LIBUSB20_POWER_OFF = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [24 x i8] c"could not set power OFF\00", align 1
@LIBUSB20_POWER_SAVE = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [25 x i8] c"could not set power SAVE\00", align 1
@LIBUSB20_POWER_ON = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [23 x i8] c"could not set power ON\00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c"could not detach kernel driver\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"could not close device\00", align 1
@.str.24 = private unnamed_addr constant [41 x i8] c"No device match or lack of permissions.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.libusb20_backend*, %struct.options*)* @flush_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_command(%struct.libusb20_backend* %0, %struct.options* %1) #0 {
  %3 = alloca %struct.libusb20_backend*, align 8
  %4 = alloca %struct.options*, align 8
  %5 = alloca %struct.libusb20_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.LIBUSB20_DEVICE_DESC_DECODED*, align 8
  %9 = alloca %struct.LIBUSB20_DEVICE_DESC_DECODED*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8, align 1
  store %struct.libusb20_backend* %0, %struct.libusb20_backend** %3, align 8
  store %struct.options* %1, %struct.options** %4, align 8
  store %struct.libusb20_device* null, %struct.libusb20_device** %5, align 8
  store i64 0, i64* %6, align 8
  %13 = load %struct.options*, %struct.options** %4, align 8
  %14 = getelementptr inbounds %struct.options, %struct.options* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.options*, %struct.options** %4, align 8
  %17 = getelementptr inbounds %struct.options, %struct.options* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %15, %18
  %20 = load %struct.options*, %struct.options** %4, align 8
  %21 = getelementptr inbounds %struct.options, %struct.options* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %19, %22
  %24 = load %struct.options*, %struct.options** %4, align 8
  %25 = getelementptr inbounds %struct.options, %struct.options* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %23, %26
  %28 = load %struct.options*, %struct.options** %4, align 8
  %29 = getelementptr inbounds %struct.options, %struct.options* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %27, %30
  %32 = load %struct.options*, %struct.options** %4, align 8
  %33 = getelementptr inbounds %struct.options, %struct.options* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %31, %34
  %36 = load %struct.options*, %struct.options** %4, align 8
  %37 = getelementptr inbounds %struct.options, %struct.options* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %35, %38
  %40 = load %struct.options*, %struct.options** %4, align 8
  %41 = getelementptr inbounds %struct.options, %struct.options* %40, i32 0, i32 7
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %39, %42
  %44 = icmp sgt i32 %43, 1
  br i1 %44, label %45, label %47

45:                                               ; preds = %2
  %46 = call i32 @err(i32 1, i8* getelementptr inbounds ([138 x i8], [138 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %2
  %48 = load %struct.options*, %struct.options** %4, align 8
  %49 = getelementptr inbounds %struct.options, %struct.options* %48, i32 0, i32 42
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load %struct.options*, %struct.options** %4, align 8
  %54 = getelementptr inbounds %struct.options, %struct.options* %53, i32 0, i32 8
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, -1
  store i64 %56, i64* %54, align 8
  %57 = load %struct.libusb20_backend*, %struct.libusb20_backend** %3, align 8
  %58 = call i32 @dump_be_quirk_names(%struct.libusb20_backend* %57)
  br label %59

59:                                               ; preds = %52, %47
  %60 = load %struct.options*, %struct.options** %4, align 8
  %61 = getelementptr inbounds %struct.options, %struct.options* %60, i32 0, i32 41
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %59
  %65 = load %struct.options*, %struct.options** %4, align 8
  %66 = getelementptr inbounds %struct.options, %struct.options* %65, i32 0, i32 8
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, -1
  store i64 %68, i64* %66, align 8
  %69 = load %struct.libusb20_backend*, %struct.libusb20_backend** %3, align 8
  %70 = call i32 @dump_be_dev_quirks(%struct.libusb20_backend* %69)
  br label %71

71:                                               ; preds = %64, %59
  %72 = load %struct.options*, %struct.options** %4, align 8
  %73 = getelementptr inbounds %struct.options, %struct.options* %72, i32 0, i32 40
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %98

76:                                               ; preds = %71
  %77 = load %struct.options*, %struct.options** %4, align 8
  %78 = getelementptr inbounds %struct.options, %struct.options* %77, i32 0, i32 8
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %79, -1
  store i64 %80, i64* %78, align 8
  %81 = load %struct.libusb20_backend*, %struct.libusb20_backend** %3, align 8
  %82 = load %struct.options*, %struct.options** %4, align 8
  %83 = getelementptr inbounds %struct.options, %struct.options* %82, i32 0, i32 38
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.options*, %struct.options** %4, align 8
  %86 = getelementptr inbounds %struct.options, %struct.options* %85, i32 0, i32 37
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.options*, %struct.options** %4, align 8
  %89 = getelementptr inbounds %struct.options, %struct.options* %88, i32 0, i32 36
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.options*, %struct.options** %4, align 8
  %92 = getelementptr inbounds %struct.options, %struct.options* %91, i32 0, i32 35
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.options*, %struct.options** %4, align 8
  %95 = getelementptr inbounds %struct.options, %struct.options* %94, i32 0, i32 28
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @be_dev_remove_quirk(%struct.libusb20_backend* %81, i32 %84, i32 %87, i32 %90, i32 %93, i32 %96)
  br label %98

98:                                               ; preds = %76, %71
  %99 = load %struct.options*, %struct.options** %4, align 8
  %100 = getelementptr inbounds %struct.options, %struct.options* %99, i32 0, i32 39
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %125

103:                                              ; preds = %98
  %104 = load %struct.options*, %struct.options** %4, align 8
  %105 = getelementptr inbounds %struct.options, %struct.options* %104, i32 0, i32 8
  %106 = load i64, i64* %105, align 8
  %107 = add nsw i64 %106, -1
  store i64 %107, i64* %105, align 8
  %108 = load %struct.libusb20_backend*, %struct.libusb20_backend** %3, align 8
  %109 = load %struct.options*, %struct.options** %4, align 8
  %110 = getelementptr inbounds %struct.options, %struct.options* %109, i32 0, i32 38
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.options*, %struct.options** %4, align 8
  %113 = getelementptr inbounds %struct.options, %struct.options* %112, i32 0, i32 37
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.options*, %struct.options** %4, align 8
  %116 = getelementptr inbounds %struct.options, %struct.options* %115, i32 0, i32 36
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.options*, %struct.options** %4, align 8
  %119 = getelementptr inbounds %struct.options, %struct.options* %118, i32 0, i32 35
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.options*, %struct.options** %4, align 8
  %122 = getelementptr inbounds %struct.options, %struct.options* %121, i32 0, i32 28
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @be_dev_add_quirk(%struct.libusb20_backend* %108, i32 %111, i32 %114, i32 %117, i32 %120, i32 %123)
  br label %125

125:                                              ; preds = %103, %98
  %126 = load %struct.options*, %struct.options** %4, align 8
  %127 = getelementptr inbounds %struct.options, %struct.options* %126, i32 0, i32 34
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %148

130:                                              ; preds = %125
  %131 = load %struct.options*, %struct.options** %4, align 8
  %132 = getelementptr inbounds %struct.options, %struct.options* %131, i32 0, i32 8
  %133 = load i64, i64* %132, align 8
  %134 = add nsw i64 %133, -1
  store i64 %134, i64* %132, align 8
  %135 = load %struct.libusb20_backend*, %struct.libusb20_backend** %3, align 8
  %136 = load %struct.options*, %struct.options** %4, align 8
  %137 = getelementptr inbounds %struct.options, %struct.options* %136, i32 0, i32 9
  %138 = load i32, i32* %137, align 8
  %139 = call i64 @libusb20_be_set_template(%struct.libusb20_backend* %135, i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %130
  %142 = load i32, i32* @stderr, align 4
  %143 = load %struct.options*, %struct.options** %4, align 8
  %144 = getelementptr inbounds %struct.options, %struct.options* %143, i32 0, i32 9
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @fprintf(i32 %142, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %145)
  br label %147

147:                                              ; preds = %141, %130
  br label %148

148:                                              ; preds = %147, %125
  %149 = load %struct.options*, %struct.options** %4, align 8
  %150 = getelementptr inbounds %struct.options, %struct.options* %149, i32 0, i32 33
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %171

153:                                              ; preds = %148
  %154 = load %struct.options*, %struct.options** %4, align 8
  %155 = getelementptr inbounds %struct.options, %struct.options* %154, i32 0, i32 8
  %156 = load i64, i64* %155, align 8
  %157 = add nsw i64 %156, -1
  store i64 %157, i64* %155, align 8
  %158 = load %struct.libusb20_backend*, %struct.libusb20_backend** %3, align 8
  %159 = load %struct.options*, %struct.options** %4, align 8
  %160 = getelementptr inbounds %struct.options, %struct.options* %159, i32 0, i32 9
  %161 = call i64 @libusb20_be_get_template(%struct.libusb20_backend* %158, i32* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %153
  %164 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %170

165:                                              ; preds = %153
  %166 = load %struct.options*, %struct.options** %4, align 8
  %167 = getelementptr inbounds %struct.options, %struct.options* %166, i32 0, i32 9
  %168 = load i32, i32* %167, align 8
  %169 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %168)
  br label %170

170:                                              ; preds = %165, %163
  br label %171

171:                                              ; preds = %170, %148
  %172 = load %struct.options*, %struct.options** %4, align 8
  %173 = getelementptr inbounds %struct.options, %struct.options* %172, i32 0, i32 8
  %174 = load i64, i64* %173, align 8
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %171
  br label %590

177:                                              ; preds = %171
  br label %178

178:                                              ; preds = %583, %208, %195, %177
  %179 = load %struct.libusb20_backend*, %struct.libusb20_backend** %3, align 8
  %180 = load %struct.libusb20_device*, %struct.libusb20_device** %5, align 8
  %181 = call %struct.libusb20_device* @libusb20_be_device_foreach(%struct.libusb20_backend* %179, %struct.libusb20_device* %180)
  store %struct.libusb20_device* %181, %struct.libusb20_device** %5, align 8
  %182 = icmp ne %struct.libusb20_device* %181, null
  br i1 %182, label %183, label %584

183:                                              ; preds = %178
  %184 = load %struct.options*, %struct.options** %4, align 8
  %185 = getelementptr inbounds %struct.options, %struct.options* %184, i32 0, i32 32
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %196

188:                                              ; preds = %183
  %189 = load %struct.libusb20_device*, %struct.libusb20_device** %5, align 8
  %190 = call i64 @libusb20_dev_get_bus_number(%struct.libusb20_device* %189)
  %191 = load %struct.options*, %struct.options** %4, align 8
  %192 = getelementptr inbounds %struct.options, %struct.options* %191, i32 0, i32 10
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %190, %193
  br i1 %194, label %195, label %196

195:                                              ; preds = %188
  br label %178

196:                                              ; preds = %188, %183
  %197 = load %struct.options*, %struct.options** %4, align 8
  %198 = getelementptr inbounds %struct.options, %struct.options* %197, i32 0, i32 31
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %209

201:                                              ; preds = %196
  %202 = load %struct.libusb20_device*, %struct.libusb20_device** %5, align 8
  %203 = call i64 @libusb20_dev_get_address(%struct.libusb20_device* %202)
  %204 = load %struct.options*, %struct.options** %4, align 8
  %205 = getelementptr inbounds %struct.options, %struct.options* %204, i32 0, i32 11
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %203, %206
  br i1 %207, label %208, label %209

208:                                              ; preds = %201
  br label %178

209:                                              ; preds = %201, %196
  %210 = load i64, i64* %6, align 8
  %211 = add nsw i64 %210, 1
  store i64 %211, i64* %6, align 8
  %212 = load %struct.options*, %struct.options** %4, align 8
  %213 = getelementptr inbounds %struct.options, %struct.options* %212, i32 0, i32 30
  %214 = load i64, i64* %213, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %236

216:                                              ; preds = %209
  %217 = load %struct.libusb20_device*, %struct.libusb20_device** %5, align 8
  %218 = call %struct.LIBUSB20_DEVICE_DESC_DECODED* @libusb20_dev_get_device_desc(%struct.libusb20_device* %217)
  store %struct.LIBUSB20_DEVICE_DESC_DECODED* %218, %struct.LIBUSB20_DEVICE_DESC_DECODED** %8, align 8
  %219 = load %struct.libusb20_backend*, %struct.libusb20_backend** %3, align 8
  %220 = load %struct.LIBUSB20_DEVICE_DESC_DECODED*, %struct.LIBUSB20_DEVICE_DESC_DECODED** %8, align 8
  %221 = getelementptr inbounds %struct.LIBUSB20_DEVICE_DESC_DECODED, %struct.LIBUSB20_DEVICE_DESC_DECODED* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.LIBUSB20_DEVICE_DESC_DECODED*, %struct.LIBUSB20_DEVICE_DESC_DECODED** %8, align 8
  %224 = getelementptr inbounds %struct.LIBUSB20_DEVICE_DESC_DECODED, %struct.LIBUSB20_DEVICE_DESC_DECODED* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.LIBUSB20_DEVICE_DESC_DECODED*, %struct.LIBUSB20_DEVICE_DESC_DECODED** %8, align 8
  %227 = getelementptr inbounds %struct.LIBUSB20_DEVICE_DESC_DECODED, %struct.LIBUSB20_DEVICE_DESC_DECODED* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.LIBUSB20_DEVICE_DESC_DECODED*, %struct.LIBUSB20_DEVICE_DESC_DECODED** %8, align 8
  %230 = getelementptr inbounds %struct.LIBUSB20_DEVICE_DESC_DECODED, %struct.LIBUSB20_DEVICE_DESC_DECODED* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.options*, %struct.options** %4, align 8
  %233 = getelementptr inbounds %struct.options, %struct.options* %232, i32 0, i32 28
  %234 = load i32, i32* %233, align 8
  %235 = call i32 @be_dev_remove_quirk(%struct.libusb20_backend* %219, i32 %222, i32 %225, i32 %228, i32 %231, i32 %234)
  br label %236

236:                                              ; preds = %216, %209
  %237 = load %struct.options*, %struct.options** %4, align 8
  %238 = getelementptr inbounds %struct.options, %struct.options* %237, i32 0, i32 29
  %239 = load i64, i64* %238, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %261

241:                                              ; preds = %236
  %242 = load %struct.libusb20_device*, %struct.libusb20_device** %5, align 8
  %243 = call %struct.LIBUSB20_DEVICE_DESC_DECODED* @libusb20_dev_get_device_desc(%struct.libusb20_device* %242)
  store %struct.LIBUSB20_DEVICE_DESC_DECODED* %243, %struct.LIBUSB20_DEVICE_DESC_DECODED** %9, align 8
  %244 = load %struct.libusb20_backend*, %struct.libusb20_backend** %3, align 8
  %245 = load %struct.LIBUSB20_DEVICE_DESC_DECODED*, %struct.LIBUSB20_DEVICE_DESC_DECODED** %9, align 8
  %246 = getelementptr inbounds %struct.LIBUSB20_DEVICE_DESC_DECODED, %struct.LIBUSB20_DEVICE_DESC_DECODED* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.LIBUSB20_DEVICE_DESC_DECODED*, %struct.LIBUSB20_DEVICE_DESC_DECODED** %9, align 8
  %249 = getelementptr inbounds %struct.LIBUSB20_DEVICE_DESC_DECODED, %struct.LIBUSB20_DEVICE_DESC_DECODED* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.LIBUSB20_DEVICE_DESC_DECODED*, %struct.LIBUSB20_DEVICE_DESC_DECODED** %9, align 8
  %252 = getelementptr inbounds %struct.LIBUSB20_DEVICE_DESC_DECODED, %struct.LIBUSB20_DEVICE_DESC_DECODED* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.LIBUSB20_DEVICE_DESC_DECODED*, %struct.LIBUSB20_DEVICE_DESC_DECODED** %9, align 8
  %255 = getelementptr inbounds %struct.LIBUSB20_DEVICE_DESC_DECODED, %struct.LIBUSB20_DEVICE_DESC_DECODED* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.options*, %struct.options** %4, align 8
  %258 = getelementptr inbounds %struct.options, %struct.options* %257, i32 0, i32 28
  %259 = load i32, i32* %258, align 8
  %260 = call i32 @be_dev_add_quirk(%struct.libusb20_backend* %244, i32 %247, i32 %250, i32 %253, i32 %256, i32 %259)
  br label %261

261:                                              ; preds = %241, %236
  %262 = load %struct.libusb20_device*, %struct.libusb20_device** %5, align 8
  %263 = call i64 @libusb20_dev_open(%struct.libusb20_device* %262, i32 0)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %267

265:                                              ; preds = %261
  %266 = call i32 @err(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %267

267:                                              ; preds = %265, %261
  %268 = load %struct.options*, %struct.options** %4, align 8
  %269 = getelementptr inbounds %struct.options, %struct.options* %268, i32 0, i32 27
  %270 = load i64, i64* %269, align 8
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %278

272:                                              ; preds = %267
  %273 = load %struct.libusb20_device*, %struct.libusb20_device** %5, align 8
  %274 = load %struct.options*, %struct.options** %4, align 8
  %275 = getelementptr inbounds %struct.options, %struct.options* %274, i32 0, i32 26
  %276 = load i32, i32* %275, align 8
  %277 = call i32 @dump_string_by_index(%struct.libusb20_device* %273, i32 %276)
  br label %278

278:                                              ; preds = %272, %267
  %279 = load %struct.options*, %struct.options** %4, align 8
  %280 = getelementptr inbounds %struct.options, %struct.options* %279, i32 0, i32 25
  %281 = load i64, i64* %280, align 8
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %366

283:                                              ; preds = %278
  %284 = load %struct.libusb20_device*, %struct.libusb20_device** %5, align 8
  %285 = load %struct.options*, %struct.options** %4, align 8
  %286 = getelementptr inbounds %struct.options, %struct.options* %285, i32 0, i32 24
  %287 = load %struct.options*, %struct.options** %4, align 8
  %288 = getelementptr inbounds %struct.options, %struct.options* %287, i32 0, i32 23
  %289 = load i64, i64* %288, align 8
  %290 = call i64 @libusb20_dev_request_sync(%struct.libusb20_device* %284, %struct.TYPE_2__* %286, i64 %289, i64* %10, i32 5000, i32 0)
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %294

292:                                              ; preds = %283
  %293 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  br label %365

294:                                              ; preds = %283
  %295 = load %struct.options*, %struct.options** %4, align 8
  %296 = getelementptr inbounds %struct.options, %struct.options* %295, i32 0, i32 24
  %297 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = load i32, i32* @LIBUSB20_ENDPOINT_IN, align 4
  %300 = and i32 %298, %299
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %304, label %302

302:                                              ; preds = %294
  %303 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  br label %364

304:                                              ; preds = %294
  %305 = load i64, i64* %10, align 8
  store i64 %305, i64* %11, align 8
  %306 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  store i64 0, i64* %11, align 8
  br label %307

307:                                              ; preds = %326, %304
  %308 = load i64, i64* %11, align 8
  %309 = load i64, i64* %10, align 8
  %310 = icmp ne i64 %308, %309
  br i1 %310, label %311, label %329

311:                                              ; preds = %307
  %312 = load %struct.options*, %struct.options** %4, align 8
  %313 = getelementptr inbounds %struct.options, %struct.options* %312, i32 0, i32 23
  %314 = load i64, i64* %313, align 8
  %315 = inttoptr i64 %314 to i32*
  %316 = load i64, i64* %11, align 8
  %317 = getelementptr inbounds i32, i32* %315, i64 %316
  %318 = load i32, i32* %317, align 4
  %319 = load i64, i64* %11, align 8
  %320 = load i64, i64* %10, align 8
  %321 = sub i64 %320, 1
  %322 = icmp eq i64 %319, %321
  %323 = zext i1 %322 to i64
  %324 = select i1 %322, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0)
  %325 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 %318, i8* %324)
  br label %326

326:                                              ; preds = %311
  %327 = load i64, i64* %11, align 8
  %328 = add i64 %327, 1
  store i64 %328, i64* %11, align 8
  br label %307

329:                                              ; preds = %307
  %330 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  store i64 0, i64* %11, align 8
  br label %331

331:                                              ; preds = %359, %329
  %332 = load i64, i64* %11, align 8
  %333 = load i64, i64* %10, align 8
  %334 = icmp ne i64 %332, %333
  br i1 %334, label %335, label %362

335:                                              ; preds = %331
  %336 = load %struct.options*, %struct.options** %4, align 8
  %337 = getelementptr inbounds %struct.options, %struct.options* %336, i32 0, i32 23
  %338 = load i64, i64* %337, align 8
  %339 = inttoptr i64 %338 to i32*
  %340 = load i64, i64* %11, align 8
  %341 = getelementptr inbounds i32, i32* %339, i64 %340
  %342 = load i32, i32* %341, align 4
  %343 = trunc i32 %342 to i8
  store i8 %343, i8* %12, align 1
  %344 = load i8, i8* %12, align 1
  %345 = sext i8 %344 to i32
  %346 = icmp ne i32 %345, 60
  br i1 %346, label %347, label %358

347:                                              ; preds = %335
  %348 = load i8, i8* %12, align 1
  %349 = sext i8 %348 to i32
  %350 = icmp ne i32 %349, 62
  br i1 %350, label %351, label %358

351:                                              ; preds = %347
  %352 = load i8, i8* %12, align 1
  %353 = call i64 @isprint(i8 signext %352)
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %355, label %358

355:                                              ; preds = %351
  %356 = load i8, i8* %12, align 1
  %357 = call i32 @putchar(i8 signext %356)
  br label %358

358:                                              ; preds = %355, %351, %347, %335
  br label %359

359:                                              ; preds = %358
  %360 = load i64, i64* %11, align 8
  %361 = add i64 %360, 1
  store i64 %361, i64* %11, align 8
  br label %331

362:                                              ; preds = %331
  %363 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  br label %364

364:                                              ; preds = %362, %302
  br label %365

365:                                              ; preds = %364, %292
  br label %366

366:                                              ; preds = %365, %278
  %367 = load %struct.options*, %struct.options** %4, align 8
  %368 = getelementptr inbounds %struct.options, %struct.options* %367, i32 0, i32 3
  %369 = load i32, i32* %368, align 4
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %381

371:                                              ; preds = %366
  %372 = load %struct.libusb20_device*, %struct.libusb20_device** %5, align 8
  %373 = load %struct.options*, %struct.options** %4, align 8
  %374 = getelementptr inbounds %struct.options, %struct.options* %373, i32 0, i32 22
  %375 = load i32, i32* %374, align 4
  %376 = call i64 @libusb20_dev_set_config_index(%struct.libusb20_device* %372, i32 %375)
  %377 = icmp ne i64 %376, 0
  br i1 %377, label %378, label %380

378:                                              ; preds = %371
  %379 = call i32 @err(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0))
  br label %380

380:                                              ; preds = %378, %371
  br label %381

381:                                              ; preds = %380, %366
  %382 = load %struct.options*, %struct.options** %4, align 8
  %383 = getelementptr inbounds %struct.options, %struct.options* %382, i32 0, i32 4
  %384 = load i32, i32* %383, align 8
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %399

386:                                              ; preds = %381
  %387 = load %struct.libusb20_device*, %struct.libusb20_device** %5, align 8
  %388 = load %struct.options*, %struct.options** %4, align 8
  %389 = getelementptr inbounds %struct.options, %struct.options* %388, i32 0, i32 19
  %390 = load i32, i32* %389, align 8
  %391 = load %struct.options*, %struct.options** %4, align 8
  %392 = getelementptr inbounds %struct.options, %struct.options* %391, i32 0, i32 21
  %393 = load i32, i32* %392, align 8
  %394 = call i64 @libusb20_dev_set_alt_index(%struct.libusb20_device* %387, i32 %390, i32 %393)
  %395 = icmp ne i64 %394, 0
  br i1 %395, label %396, label %398

396:                                              ; preds = %386
  %397 = call i32 @err(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0))
  br label %398

398:                                              ; preds = %396, %386
  br label %399

399:                                              ; preds = %398, %381
  %400 = load %struct.options*, %struct.options** %4, align 8
  %401 = getelementptr inbounds %struct.options, %struct.options* %400, i32 0, i32 2
  %402 = load i32, i32* %401, align 8
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %404, label %411

404:                                              ; preds = %399
  %405 = load %struct.libusb20_device*, %struct.libusb20_device** %5, align 8
  %406 = call i64 @libusb20_dev_reset(%struct.libusb20_device* %405)
  %407 = icmp ne i64 %406, 0
  br i1 %407, label %408, label %410

408:                                              ; preds = %404
  %409 = call i32 @err(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0))
  br label %410

410:                                              ; preds = %408, %404
  br label %411

411:                                              ; preds = %410, %399
  %412 = load %struct.options*, %struct.options** %4, align 8
  %413 = getelementptr inbounds %struct.options, %struct.options* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 8
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %416, label %424

416:                                              ; preds = %411
  %417 = load %struct.libusb20_device*, %struct.libusb20_device** %5, align 8
  %418 = load i32, i32* @LIBUSB20_POWER_SUSPEND, align 4
  %419 = call i64 @libusb20_dev_set_power_mode(%struct.libusb20_device* %417, i32 %418)
  %420 = icmp ne i64 %419, 0
  br i1 %420, label %421, label %423

421:                                              ; preds = %416
  %422 = call i32 @err(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0))
  br label %423

423:                                              ; preds = %421, %416
  br label %424

424:                                              ; preds = %423, %411
  %425 = load %struct.options*, %struct.options** %4, align 8
  %426 = getelementptr inbounds %struct.options, %struct.options* %425, i32 0, i32 1
  %427 = load i32, i32* %426, align 4
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %429, label %437

429:                                              ; preds = %424
  %430 = load %struct.libusb20_device*, %struct.libusb20_device** %5, align 8
  %431 = load i32, i32* @LIBUSB20_POWER_RESUME, align 4
  %432 = call i64 @libusb20_dev_set_power_mode(%struct.libusb20_device* %430, i32 %431)
  %433 = icmp ne i64 %432, 0
  br i1 %433, label %434, label %436

434:                                              ; preds = %429
  %435 = call i32 @err(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0))
  br label %436

436:                                              ; preds = %434, %429
  br label %437

437:                                              ; preds = %436, %424
  %438 = load %struct.options*, %struct.options** %4, align 8
  %439 = getelementptr inbounds %struct.options, %struct.options* %438, i32 0, i32 7
  %440 = load i32, i32* %439, align 4
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %442, label %450

442:                                              ; preds = %437
  %443 = load %struct.libusb20_device*, %struct.libusb20_device** %5, align 8
  %444 = load i32, i32* @LIBUSB20_POWER_OFF, align 4
  %445 = call i64 @libusb20_dev_set_power_mode(%struct.libusb20_device* %443, i32 %444)
  %446 = icmp ne i64 %445, 0
  br i1 %446, label %447, label %449

447:                                              ; preds = %442
  %448 = call i32 @err(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i64 0, i64 0))
  br label %449

449:                                              ; preds = %447, %442
  br label %450

450:                                              ; preds = %449, %437
  %451 = load %struct.options*, %struct.options** %4, align 8
  %452 = getelementptr inbounds %struct.options, %struct.options* %451, i32 0, i32 5
  %453 = load i32, i32* %452, align 4
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %455, label %463

455:                                              ; preds = %450
  %456 = load %struct.libusb20_device*, %struct.libusb20_device** %5, align 8
  %457 = load i32, i32* @LIBUSB20_POWER_SAVE, align 4
  %458 = call i64 @libusb20_dev_set_power_mode(%struct.libusb20_device* %456, i32 %457)
  %459 = icmp ne i64 %458, 0
  br i1 %459, label %460, label %462

460:                                              ; preds = %455
  %461 = call i32 @err(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i64 0, i64 0))
  br label %462

462:                                              ; preds = %460, %455
  br label %463

463:                                              ; preds = %462, %450
  %464 = load %struct.options*, %struct.options** %4, align 8
  %465 = getelementptr inbounds %struct.options, %struct.options* %464, i32 0, i32 6
  %466 = load i32, i32* %465, align 8
  %467 = icmp ne i32 %466, 0
  br i1 %467, label %468, label %476

468:                                              ; preds = %463
  %469 = load %struct.libusb20_device*, %struct.libusb20_device** %5, align 8
  %470 = load i32, i32* @LIBUSB20_POWER_ON, align 4
  %471 = call i64 @libusb20_dev_set_power_mode(%struct.libusb20_device* %469, i32 %470)
  %472 = icmp ne i64 %471, 0
  br i1 %472, label %473, label %475

473:                                              ; preds = %468
  %474 = call i32 @err(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0))
  br label %475

475:                                              ; preds = %473, %468
  br label %476

476:                                              ; preds = %475, %463
  %477 = load %struct.options*, %struct.options** %4, align 8
  %478 = getelementptr inbounds %struct.options, %struct.options* %477, i32 0, i32 20
  %479 = load i64, i64* %478, align 8
  %480 = icmp ne i64 %479, 0
  br i1 %480, label %481, label %491

481:                                              ; preds = %476
  %482 = load %struct.libusb20_device*, %struct.libusb20_device** %5, align 8
  %483 = load %struct.options*, %struct.options** %4, align 8
  %484 = getelementptr inbounds %struct.options, %struct.options* %483, i32 0, i32 19
  %485 = load i32, i32* %484, align 8
  %486 = call i64 @libusb20_dev_detach_kernel_driver(%struct.libusb20_device* %482, i32 %485)
  %487 = icmp ne i64 %486, 0
  br i1 %487, label %488, label %490

488:                                              ; preds = %481
  %489 = call i32 @err(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.21, i64 0, i64 0))
  br label %490

490:                                              ; preds = %488, %481
  br label %491

491:                                              ; preds = %490, %476
  %492 = load %struct.options*, %struct.options** %4, align 8
  %493 = getelementptr inbounds %struct.options, %struct.options* %492, i32 0, i32 12
  %494 = load i64, i64* %493, align 8
  %495 = icmp ne i64 %494, 0
  br i1 %495, label %516, label %496

496:                                              ; preds = %491
  %497 = load %struct.options*, %struct.options** %4, align 8
  %498 = getelementptr inbounds %struct.options, %struct.options* %497, i32 0, i32 15
  %499 = load i64, i64* %498, align 8
  %500 = icmp ne i64 %499, 0
  br i1 %500, label %516, label %501

501:                                              ; preds = %496
  %502 = load %struct.options*, %struct.options** %4, align 8
  %503 = getelementptr inbounds %struct.options, %struct.options* %502, i32 0, i32 13
  %504 = load i64, i64* %503, align 8
  %505 = icmp ne i64 %504, 0
  br i1 %505, label %516, label %506

506:                                              ; preds = %501
  %507 = load %struct.options*, %struct.options** %4, align 8
  %508 = getelementptr inbounds %struct.options, %struct.options* %507, i32 0, i32 14
  %509 = load i64, i64* %508, align 8
  %510 = icmp ne i64 %509, 0
  br i1 %510, label %516, label %511

511:                                              ; preds = %506
  %512 = load %struct.options*, %struct.options** %4, align 8
  %513 = getelementptr inbounds %struct.options, %struct.options* %512, i32 0, i32 18
  %514 = load i64, i64* %513, align 8
  %515 = icmp ne i64 %514, 0
  br label %516

516:                                              ; preds = %511, %506, %501, %496, %491
  %517 = phi i1 [ true, %506 ], [ true, %501 ], [ true, %496 ], [ true, %491 ], [ %515, %511 ]
  %518 = zext i1 %517 to i32
  store i32 %518, i32* %7, align 4
  %519 = load %struct.options*, %struct.options** %4, align 8
  %520 = getelementptr inbounds %struct.options, %struct.options* %519, i32 0, i32 17
  %521 = load i64, i64* %520, align 8
  %522 = icmp ne i64 %521, 0
  br i1 %522, label %526, label %523

523:                                              ; preds = %516
  %524 = load i32, i32* %7, align 4
  %525 = icmp ne i32 %524, 0
  br i1 %525, label %526, label %532

526:                                              ; preds = %523, %516
  %527 = load %struct.libusb20_device*, %struct.libusb20_device** %5, align 8
  %528 = load %struct.options*, %struct.options** %4, align 8
  %529 = getelementptr inbounds %struct.options, %struct.options* %528, i32 0, i32 16
  %530 = load i32, i32* %529, align 8
  %531 = call i32 @dump_device_info(%struct.libusb20_device* %527, i32 %530)
  br label %532

532:                                              ; preds = %526, %523
  %533 = load %struct.options*, %struct.options** %4, align 8
  %534 = getelementptr inbounds %struct.options, %struct.options* %533, i32 0, i32 15
  %535 = load i64, i64* %534, align 8
  %536 = icmp ne i64 %535, 0
  br i1 %536, label %537, label %541

537:                                              ; preds = %532
  %538 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0))
  %539 = load %struct.libusb20_device*, %struct.libusb20_device** %5, align 8
  %540 = call i32 @dump_device_desc(%struct.libusb20_device* %539)
  br label %541

541:                                              ; preds = %537, %532
  %542 = load %struct.options*, %struct.options** %4, align 8
  %543 = getelementptr inbounds %struct.options, %struct.options* %542, i32 0, i32 14
  %544 = load i64, i64* %543, align 8
  %545 = icmp ne i64 %544, 0
  br i1 %545, label %546, label %550

546:                                              ; preds = %541
  %547 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0))
  %548 = load %struct.libusb20_device*, %struct.libusb20_device** %5, align 8
  %549 = call i32 @dump_config(%struct.libusb20_device* %548, i32 1)
  br label %572

550:                                              ; preds = %541
  %551 = load %struct.options*, %struct.options** %4, align 8
  %552 = getelementptr inbounds %struct.options, %struct.options* %551, i32 0, i32 13
  %553 = load i64, i64* %552, align 8
  %554 = icmp ne i64 %553, 0
  br i1 %554, label %555, label %559

555:                                              ; preds = %550
  %556 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0))
  %557 = load %struct.libusb20_device*, %struct.libusb20_device** %5, align 8
  %558 = call i32 @dump_config(%struct.libusb20_device* %557, i32 0)
  br label %571

559:                                              ; preds = %550
  %560 = load %struct.options*, %struct.options** %4, align 8
  %561 = getelementptr inbounds %struct.options, %struct.options* %560, i32 0, i32 12
  %562 = load i64, i64* %561, align 8
  %563 = icmp ne i64 %562, 0
  br i1 %563, label %564, label %570

564:                                              ; preds = %559
  %565 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0))
  %566 = load %struct.libusb20_device*, %struct.libusb20_device** %5, align 8
  %567 = call i32 @dump_device_desc(%struct.libusb20_device* %566)
  %568 = load %struct.libusb20_device*, %struct.libusb20_device** %5, align 8
  %569 = call i32 @dump_config(%struct.libusb20_device* %568, i32 1)
  br label %570

570:                                              ; preds = %564, %559
  br label %571

571:                                              ; preds = %570, %555
  br label %572

572:                                              ; preds = %571, %546
  %573 = load i32, i32* %7, align 4
  %574 = icmp ne i32 %573, 0
  br i1 %574, label %575, label %577

575:                                              ; preds = %572
  %576 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0))
  br label %577

577:                                              ; preds = %575, %572
  %578 = load %struct.libusb20_device*, %struct.libusb20_device** %5, align 8
  %579 = call i64 @libusb20_dev_close(%struct.libusb20_device* %578)
  %580 = icmp ne i64 %579, 0
  br i1 %580, label %581, label %583

581:                                              ; preds = %577
  %582 = call i32 @err(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0))
  br label %583

583:                                              ; preds = %581, %577
  br label %178

584:                                              ; preds = %178
  %585 = load i64, i64* %6, align 8
  %586 = icmp eq i64 %585, 0
  br i1 %586, label %587, label %589

587:                                              ; preds = %584
  %588 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.24, i64 0, i64 0))
  br label %589

589:                                              ; preds = %587, %584
  br label %590

590:                                              ; preds = %589, %176
  %591 = load %struct.options*, %struct.options** %4, align 8
  %592 = call i32 @reset_options(%struct.options* %591)
  ret void
}

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @dump_be_quirk_names(%struct.libusb20_backend*) #1

declare dso_local i32 @dump_be_dev_quirks(%struct.libusb20_backend*) #1

declare dso_local i32 @be_dev_remove_quirk(%struct.libusb20_backend*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @be_dev_add_quirk(%struct.libusb20_backend*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @libusb20_be_set_template(%struct.libusb20_backend*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i64 @libusb20_be_get_template(%struct.libusb20_backend*, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local %struct.libusb20_device* @libusb20_be_device_foreach(%struct.libusb20_backend*, %struct.libusb20_device*) #1

declare dso_local i64 @libusb20_dev_get_bus_number(%struct.libusb20_device*) #1

declare dso_local i64 @libusb20_dev_get_address(%struct.libusb20_device*) #1

declare dso_local %struct.LIBUSB20_DEVICE_DESC_DECODED* @libusb20_dev_get_device_desc(%struct.libusb20_device*) #1

declare dso_local i64 @libusb20_dev_open(%struct.libusb20_device*, i32) #1

declare dso_local i32 @dump_string_by_index(%struct.libusb20_device*, i32) #1

declare dso_local i64 @libusb20_dev_request_sync(%struct.libusb20_device*, %struct.TYPE_2__*, i64, i64*, i32, i32) #1

declare dso_local i64 @isprint(i8 signext) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i64 @libusb20_dev_set_config_index(%struct.libusb20_device*, i32) #1

declare dso_local i64 @libusb20_dev_set_alt_index(%struct.libusb20_device*, i32, i32) #1

declare dso_local i64 @libusb20_dev_reset(%struct.libusb20_device*) #1

declare dso_local i64 @libusb20_dev_set_power_mode(%struct.libusb20_device*, i32) #1

declare dso_local i64 @libusb20_dev_detach_kernel_driver(%struct.libusb20_device*, i32) #1

declare dso_local i32 @dump_device_info(%struct.libusb20_device*, i32) #1

declare dso_local i32 @dump_device_desc(%struct.libusb20_device*) #1

declare dso_local i32 @dump_config(%struct.libusb20_device*, i32) #1

declare dso_local i64 @libusb20_dev_close(%struct.libusb20_device*) #1

declare dso_local i32 @reset_options(%struct.options*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
