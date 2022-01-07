; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/usbtest/extr_usb_modem_test.c_usb_modem_data_stress_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/usbtest/extr_usb_modem_test.c_usb_modem_data_stress_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.modem = type { i64, i32, i32, i32, i64, i64, i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.timeval = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"WARNING: Buffer sizes are un-equal: %u vs %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"STATUS: ID=%u, RX=%u bytes/sec, TX=%u bytes/sec, ERR=%d\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Device disconnected\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"\0AData stress test done!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.modem*, i64)* @usb_modem_data_stress_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_modem_data_stress_test(%struct.modem* %0, i64 %1) #0 {
  %3 = alloca %struct.modem*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.timeval, align 8
  %6 = alloca %struct.timeval, align 8
  %7 = alloca %struct.timeval, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.modem* %0, %struct.modem** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i64 0, i64* %12, align 8
  store i32* null, i32** %16, align 8
  store i32* null, i32** %17, align 8
  %20 = call i32 @gettimeofday(%struct.timeval* %6, i32 0)
  %21 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %8, align 8
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.modem*, %struct.modem** %3, align 8
  %25 = getelementptr inbounds %struct.modem, %struct.modem* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @libusb20_tr_get_max_total_length(i32 %26)
  store i64 %27, i64* %13, align 8
  %28 = load %struct.modem*, %struct.modem** %3, align 8
  %29 = getelementptr inbounds %struct.modem, %struct.modem* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @libusb20_tr_get_max_total_length(i32 %30)
  store i64 %31, i64* %14, align 8
  %32 = load i64, i64* %13, align 8
  %33 = load i64, i64* %14, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %2
  %36 = load i64, i64* %13, align 8
  br label %39

37:                                               ; preds = %2
  %38 = load i64, i64* %14, align 8
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i64 [ %36, %35 ], [ %38, %37 ]
  store i64 %40, i64* %15, align 8
  %41 = load i64, i64* %13, align 8
  %42 = load i64, i64* %14, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i64, i64* %13, align 8
  %46 = load i64, i64* %14, align 8
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 %45, i64 %46)
  br label %48

48:                                               ; preds = %44, %39
  %49 = load i64, i64* %15, align 8
  %50 = call i32* @malloc(i64 %49)
  store i32* %50, i32** %16, align 8
  %51 = load i32*, i32** %16, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %289

54:                                               ; preds = %48
  %55 = load i64, i64* %15, align 8
  %56 = call i32* @malloc(i64 %55)
  store i32* %56, i32** %17, align 8
  %57 = load i32*, i32** %17, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %289

60:                                               ; preds = %54
  br label %61

61:                                               ; preds = %60, %278
  %62 = call i32 @gettimeofday(%struct.timeval* %5, i32 0)
  %63 = load i64, i64* %8, align 8
  %64 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %63, %65
  br i1 %66, label %67, label %97

67:                                               ; preds = %61
  %68 = load i64, i64* %12, align 8
  %69 = trunc i64 %68 to i32
  %70 = load %struct.modem*, %struct.modem** %3, align 8
  %71 = getelementptr inbounds %struct.modem, %struct.modem* %70, i32 0, i32 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = trunc i64 %73 to i32
  %75 = load %struct.modem*, %struct.modem** %3, align 8
  %76 = getelementptr inbounds %struct.modem, %struct.modem* %75, i32 0, i32 7
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = trunc i64 %78 to i32
  %80 = load %struct.modem*, %struct.modem** %3, align 8
  %81 = getelementptr inbounds %struct.modem, %struct.modem* %80, i32 0, i32 6
  %82 = load i64, i64* %81, align 8
  %83 = trunc i64 %82 to i32
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %69, i32 %74, i32 %79, i32 %83)
  %85 = load %struct.modem*, %struct.modem** %3, align 8
  %86 = getelementptr inbounds %struct.modem, %struct.modem* %85, i32 0, i32 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  store i64 0, i64* %87, align 8
  %88 = load %struct.modem*, %struct.modem** %3, align 8
  %89 = getelementptr inbounds %struct.modem, %struct.modem* %88, i32 0, i32 7
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  store i64 0, i64* %90, align 8
  %91 = load i32, i32* @stdout, align 4
  %92 = call i32 @fflush(i32 %91)
  %93 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  store i64 %94, i64* %8, align 8
  %95 = load i64, i64* %12, align 8
  %96 = add nsw i64 %95, 1
  store i64 %96, i64* %12, align 8
  br label %97

97:                                               ; preds = %67, %61
  %98 = call i32 @timersub(%struct.timeval* %5, %struct.timeval* %6, %struct.timeval* %7)
  %99 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp slt i64 %100, 0
  br i1 %101, label %109, label %102

102:                                              ; preds = %97
  %103 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* %4, align 8
  %106 = trunc i64 %105 to i32
  %107 = sext i32 %106 to i64
  %108 = icmp sge i64 %104, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %102, %97
  br label %279

110:                                              ; preds = %102
  %111 = load %struct.modem*, %struct.modem** %3, align 8
  %112 = getelementptr inbounds %struct.modem, %struct.modem* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @libusb20_dev_process(i32 %113)
  %115 = load %struct.modem*, %struct.modem** %3, align 8
  %116 = getelementptr inbounds %struct.modem, %struct.modem* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @libusb20_tr_pending(i32 %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %160, label %120

120:                                              ; preds = %110
  %121 = load i32, i32* %9, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %143

123:                                              ; preds = %120
  %124 = load %struct.modem*, %struct.modem** %3, align 8
  %125 = getelementptr inbounds %struct.modem, %struct.modem* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = call i64 @libusb20_tr_get_status(i32 %126)
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %123
  %130 = load i32*, i32** %16, align 8
  %131 = load %struct.modem*, %struct.modem** %3, align 8
  %132 = getelementptr inbounds %struct.modem, %struct.modem* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = call i64 @libusb20_tr_get_length(i32 %133, i32 0)
  %135 = call i32 @modem_read(i32* %130, i64 %134)
  br label %142

136:                                              ; preds = %123
  %137 = load %struct.modem*, %struct.modem** %3, align 8
  %138 = getelementptr inbounds %struct.modem, %struct.modem* %137, i32 0, i32 6
  %139 = load i64, i64* %138, align 8
  %140 = add nsw i64 %139, 1
  store i64 %140, i64* %138, align 8
  %141 = call i32 @usleep(i64 10000)
  br label %142

142:                                              ; preds = %136, %129
  store i32 0, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %143

143:                                              ; preds = %142, %120
  %144 = load %struct.modem*, %struct.modem** %3, align 8
  %145 = getelementptr inbounds %struct.modem, %struct.modem* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %148, label %159

148:                                              ; preds = %143
  %149 = load %struct.modem*, %struct.modem** %3, align 8
  %150 = getelementptr inbounds %struct.modem, %struct.modem* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = load i32*, i32** %16, align 8
  %153 = load i64, i64* %15, align 8
  %154 = call i32 @libusb20_tr_setup_bulk(i32 %151, i32* %152, i64 %153, i32 0)
  %155 = load %struct.modem*, %struct.modem** %3, align 8
  %156 = getelementptr inbounds %struct.modem, %struct.modem* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @libusb20_tr_start(i32 %157)
  store i32 1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %159

159:                                              ; preds = %148, %143
  br label %160

160:                                              ; preds = %159, %110
  %161 = load %struct.modem*, %struct.modem** %3, align 8
  %162 = getelementptr inbounds %struct.modem, %struct.modem* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @libusb20_tr_pending(i32 %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %266, label %166

166:                                              ; preds = %160
  %167 = load i32, i32* %11, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %182

169:                                              ; preds = %166
  %170 = load %struct.modem*, %struct.modem** %3, align 8
  %171 = getelementptr inbounds %struct.modem, %struct.modem* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = call i64 @libusb20_tr_get_status(i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %169
  %176 = load %struct.modem*, %struct.modem** %3, align 8
  %177 = getelementptr inbounds %struct.modem, %struct.modem* %176, i32 0, i32 6
  %178 = load i64, i64* %177, align 8
  %179 = add nsw i64 %178, 1
  store i64 %179, i64* %177, align 8
  %180 = call i32 @usleep(i64 10000)
  br label %181

181:                                              ; preds = %175, %169
  br label %182

182:                                              ; preds = %181, %166
  %183 = load %struct.modem*, %struct.modem** %3, align 8
  %184 = getelementptr inbounds %struct.modem, %struct.modem* %183, i32 0, i32 5
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %182
  %188 = call i64 (...) @usb_ts_rand_noise()
  %189 = load i64, i64* %15, align 8
  %190 = srem i64 %188, %189
  store i64 %190, i64* %18, align 8
  br label %193

191:                                              ; preds = %182
  %192 = load i64, i64* %15, align 8
  store i64 %192, i64* %18, align 8
  br label %193

193:                                              ; preds = %191, %187
  %194 = load %struct.modem*, %struct.modem** %3, align 8
  %195 = getelementptr inbounds %struct.modem, %struct.modem* %194, i32 0, i32 4
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %193
  %199 = call i64 (...) @usb_ts_rand_noise()
  %200 = srem i64 %199, 16000
  store i64 %200, i64* %19, align 8
  br label %202

201:                                              ; preds = %193
  store i64 0, i64* %19, align 8
  br label %202

202:                                              ; preds = %201, %198
  %203 = load %struct.modem*, %struct.modem** %3, align 8
  %204 = getelementptr inbounds %struct.modem, %struct.modem* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %240

207:                                              ; preds = %202
  %208 = load i32, i32* %10, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %219

210:                                              ; preds = %207
  %211 = load %struct.modem*, %struct.modem** %3, align 8
  %212 = getelementptr inbounds %struct.modem, %struct.modem* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 4
  %214 = call i64 @libusb20_tr_get_length(i32 %213, i32 0)
  store i64 %214, i64* %18, align 8
  %215 = load i32*, i32** %17, align 8
  %216 = load i32*, i32** %16, align 8
  %217 = load i64, i64* %18, align 8
  %218 = call i32 @memcpy(i32* %215, i32* %216, i64 %217)
  store i32 0, i32* %10, align 4
  br label %222

219:                                              ; preds = %207
  %220 = load i64, i64* %15, align 8
  %221 = add nsw i64 %220, 1
  store i64 %221, i64* %18, align 8
  br label %222

222:                                              ; preds = %219, %210
  %223 = load %struct.modem*, %struct.modem** %3, align 8
  %224 = getelementptr inbounds %struct.modem, %struct.modem* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @libusb20_tr_pending(i32 %225)
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %239, label %228

228:                                              ; preds = %222
  %229 = load %struct.modem*, %struct.modem** %3, align 8
  %230 = getelementptr inbounds %struct.modem, %struct.modem* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 4
  %232 = load i32*, i32** %16, align 8
  %233 = load i64, i64* %15, align 8
  %234 = call i32 @libusb20_tr_setup_bulk(i32 %231, i32* %232, i64 %233, i32 0)
  %235 = load %struct.modem*, %struct.modem** %3, align 8
  %236 = getelementptr inbounds %struct.modem, %struct.modem* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @libusb20_tr_start(i32 %237)
  store i32 1, i32* %9, align 4
  br label %239

239:                                              ; preds = %228, %222
  br label %244

240:                                              ; preds = %202
  %241 = load i32*, i32** %17, align 8
  %242 = load i64, i64* %18, align 8
  %243 = call i32 @modem_write(i32* %241, i64 %242)
  br label %244

244:                                              ; preds = %240, %239
  %245 = load i64, i64* %18, align 8
  %246 = load i64, i64* %15, align 8
  %247 = icmp sle i64 %245, %246
  br i1 %247, label %248, label %265

248:                                              ; preds = %244
  %249 = load %struct.modem*, %struct.modem** %3, align 8
  %250 = getelementptr inbounds %struct.modem, %struct.modem* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 8
  %252 = load i32*, i32** %17, align 8
  %253 = load i64, i64* %18, align 8
  %254 = call i32 @libusb20_tr_setup_bulk(i32 %251, i32* %252, i64 %253, i32 0)
  %255 = load i64, i64* %19, align 8
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %260

257:                                              ; preds = %248
  %258 = load i64, i64* %19, align 8
  %259 = call i32 @usleep(i64 %258)
  br label %260

260:                                              ; preds = %257, %248
  %261 = load %struct.modem*, %struct.modem** %3, align 8
  %262 = getelementptr inbounds %struct.modem, %struct.modem* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 8
  %264 = call i32 @libusb20_tr_start(i32 %263)
  store i32 1, i32* %11, align 4
  br label %265

265:                                              ; preds = %260, %244
  br label %266

266:                                              ; preds = %265, %160
  %267 = load %struct.modem*, %struct.modem** %3, align 8
  %268 = getelementptr inbounds %struct.modem, %struct.modem* %267, i32 0, i32 3
  %269 = load i32, i32* %268, align 8
  %270 = call i32 @libusb20_dev_wait_process(i32 %269, i32 500)
  %271 = load %struct.modem*, %struct.modem** %3, align 8
  %272 = getelementptr inbounds %struct.modem, %struct.modem* %271, i32 0, i32 3
  %273 = load i32, i32* %272, align 8
  %274 = call i64 @libusb20_dev_check_connected(i32 %273)
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %278

276:                                              ; preds = %266
  %277 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %279

278:                                              ; preds = %266
  br label %61

279:                                              ; preds = %276, %109
  %280 = load %struct.modem*, %struct.modem** %3, align 8
  %281 = getelementptr inbounds %struct.modem, %struct.modem* %280, i32 0, i32 2
  %282 = load i32, i32* %281, align 4
  %283 = call i32 @libusb20_tr_stop(i32 %282)
  %284 = load %struct.modem*, %struct.modem** %3, align 8
  %285 = getelementptr inbounds %struct.modem, %struct.modem* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 8
  %287 = call i32 @libusb20_tr_stop(i32 %286)
  %288 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %289

289:                                              ; preds = %279, %59, %53
  %290 = load i32*, i32** %16, align 8
  %291 = icmp ne i32* %290, null
  br i1 %291, label %292, label %295

292:                                              ; preds = %289
  %293 = load i32*, i32** %16, align 8
  %294 = call i32 @free(i32* %293)
  br label %295

295:                                              ; preds = %292, %289
  %296 = load i32*, i32** %17, align 8
  %297 = icmp ne i32* %296, null
  br i1 %297, label %298, label %301

298:                                              ; preds = %295
  %299 = load i32*, i32** %17, align 8
  %300 = call i32 @free(i32* %299)
  br label %301

301:                                              ; preds = %298, %295
  ret void
}

declare dso_local i32 @gettimeofday(%struct.timeval*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @libusb20_tr_get_max_total_length(i32) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @timersub(%struct.timeval*, %struct.timeval*, %struct.timeval*) #1

declare dso_local i32 @libusb20_dev_process(i32) #1

declare dso_local i32 @libusb20_tr_pending(i32) #1

declare dso_local i64 @libusb20_tr_get_status(i32) #1

declare dso_local i32 @modem_read(i32*, i64) #1

declare dso_local i64 @libusb20_tr_get_length(i32, i32) #1

declare dso_local i32 @usleep(i64) #1

declare dso_local i32 @libusb20_tr_setup_bulk(i32, i32*, i64, i32) #1

declare dso_local i32 @libusb20_tr_start(i32) #1

declare dso_local i64 @usb_ts_rand_noise(...) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @modem_write(i32*, i64) #1

declare dso_local i32 @libusb20_dev_wait_process(i32, i32) #1

declare dso_local i64 @libusb20_dev_check_connected(i32) #1

declare dso_local i32 @libusb20_tr_stop(i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
