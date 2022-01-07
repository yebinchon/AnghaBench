; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi_ssif.c_ssif_polled_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi_ssif.c_ssif_polled_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_softc = type { i32, i32, i32 }
%struct.ipmi_request = type { i32, i32, i64, i32*, i32, i32*, i64, i64 }

@SMBUS_DATA_SIZE = common dso_local global i32 0, align 4
@SMB_WAIT = common dso_local global i32 0, align 4
@SMBUS_WRITE_SINGLE = common dso_local global i32 0, align 4
@SMBUS_WRITE_START = common dso_local global i32 0, align 4
@SMBUS_WRITE_CONT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ssifwt\00", align 1
@hz = common dso_local global i32 0, align 4
@SMBUS_READ_START = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"SSIF: Short reply packet\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"SSIF: Reply address mismatch\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"SMIC: Command mismatch\0A\00", align 1
@SMBUS_READ_CONT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"SSIF: Read wrong block %d %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"SSIF: Read short middle block, length %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipmi_softc*, %struct.ipmi_request*)* @ssif_polled_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssif_polled_request(%struct.ipmi_softc* %0, %struct.ipmi_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipmi_softc*, align 8
  %5 = alloca %struct.ipmi_request*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  store %struct.ipmi_softc* %0, %struct.ipmi_softc** %4, align 8
  store %struct.ipmi_request* %1, %struct.ipmi_request** %5, align 8
  %18 = load i32, i32* @SMBUS_DATA_SIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %6, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %7, align 8
  %22 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %23 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %8, align 4
  %25 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %26 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @SMB_WAIT, align 4
  %31 = call i64 @smbus_request_bus(i32 %28, i32 %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %374

34:                                               ; preds = %2
  %35 = load %struct.ipmi_request*, %struct.ipmi_request** %5, align 8
  %36 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds i32, i32* %21, i64 0
  store i32 %37, i32* %38, align 16
  %39 = load %struct.ipmi_request*, %struct.ipmi_request** %5, align 8
  %40 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds i32, i32* %21, i64 1
  store i32 %41, i32* %42, align 4
  %43 = load %struct.ipmi_request*, %struct.ipmi_request** %5, align 8
  %44 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %34
  %48 = load %struct.ipmi_request*, %struct.ipmi_request** %5, align 8
  %49 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %48, i32 0, i32 3
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %21, i64 2
  %52 = load %struct.ipmi_request*, %struct.ipmi_request** %5, align 8
  %53 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* @SMBUS_DATA_SIZE, align 4
  %56 = sub nsw i32 %55, 2
  %57 = call i32 @min(i64 %54, i32 %56)
  %58 = call i32 @bcopy(i32* %50, i32* %51, i32 %57)
  br label %59

59:                                               ; preds = %47, %34
  %60 = load %struct.ipmi_request*, %struct.ipmi_request** %5, align 8
  %61 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp sle i64 %62, 30
  br i1 %63, label %64, label %81

64:                                               ; preds = %59
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %67 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @SMBUS_WRITE_SINGLE, align 4
  %70 = load %struct.ipmi_request*, %struct.ipmi_request** %5, align 8
  %71 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %72, 2
  %74 = trunc i64 %73 to i32
  %75 = call i32 (i32, i32, i32, i32, ...) @smbus_bwrite(i32 %65, i32 %68, i32 %69, i32 %74, i32* %21)
  %76 = call i32 @smbus_error(i32 %75)
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* %15, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %64
  br label %370

80:                                               ; preds = %64
  br label %151

81:                                               ; preds = %59
  %82 = load i32, i32* %9, align 4
  %83 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %84 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @SMBUS_WRITE_START, align 4
  %87 = load i32, i32* @SMBUS_DATA_SIZE, align 4
  %88 = call i32 (i32, i32, i32, i32, ...) @smbus_bwrite(i32 %82, i32 %85, i32 %86, i32 %87, i32* %21)
  %89 = call i32 @smbus_error(i32 %88)
  store i32 %89, i32* %15, align 4
  %90 = load i32, i32* %15, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %81
  br label %370

93:                                               ; preds = %81
  %94 = load %struct.ipmi_request*, %struct.ipmi_request** %5, align 8
  %95 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = load i32, i32* @SMBUS_DATA_SIZE, align 4
  %98 = sub nsw i32 %97, 2
  %99 = sext i32 %98 to i64
  %100 = sub nsw i64 %96, %99
  store i64 %100, i64* %14, align 8
  %101 = load %struct.ipmi_request*, %struct.ipmi_request** %5, align 8
  %102 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %101, i32 0, i32 3
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* @SMBUS_DATA_SIZE, align 4
  %105 = sub nsw i32 %104, 2
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %103, i64 %106
  store i32* %107, i32** %10, align 8
  br label %108

108:                                              ; preds = %126, %93
  %109 = load i64, i64* %14, align 8
  %110 = icmp ugt i64 %109, 0
  br i1 %110, label %111, label %135

111:                                              ; preds = %108
  %112 = load i32, i32* %9, align 4
  %113 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %114 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @SMBUS_WRITE_CONT, align 4
  %117 = load i64, i64* %14, align 8
  %118 = load i32, i32* @SMBUS_DATA_SIZE, align 4
  %119 = call i32 @min(i64 %117, i32 %118)
  %120 = load i32*, i32** %10, align 8
  %121 = call i32 (i32, i32, i32, i32, ...) @smbus_bwrite(i32 %112, i32 %115, i32 %116, i32 %119, i32* %120)
  %122 = call i32 @smbus_error(i32 %121)
  store i32 %122, i32* %15, align 4
  %123 = load i32, i32* %15, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %111
  br label %370

126:                                              ; preds = %111
  %127 = load i32, i32* @SMBUS_DATA_SIZE, align 4
  %128 = load i32*, i32** %10, align 8
  %129 = sext i32 %127 to i64
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  store i32* %130, i32** %10, align 8
  %131 = load i32, i32* @SMBUS_DATA_SIZE, align 4
  %132 = sext i32 %131 to i64
  %133 = load i64, i64* %14, align 8
  %134 = sub i64 %133, %132
  store i64 %134, i64* %14, align 8
  br label %108

135:                                              ; preds = %108
  %136 = load i64, i64* %14, align 8
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %150

138:                                              ; preds = %135
  store i8 0, i8* %17, align 1
  %139 = load i32, i32* %9, align 4
  %140 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %141 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @SMBUS_WRITE_CONT, align 4
  %144 = call i32 (i32, i32, i32, i32, ...) @smbus_bwrite(i32 %139, i32 %142, i32 %143, i32 1, i8* %17)
  %145 = call i32 @smbus_error(i32 %144)
  store i32 %145, i32* %15, align 4
  %146 = load i32, i32* %15, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %138
  br label %370

149:                                              ; preds = %138
  br label %150

150:                                              ; preds = %149, %135
  br label %151

151:                                              ; preds = %150, %80
  %152 = load i32, i32* %9, align 4
  %153 = load i32, i32* %8, align 4
  %154 = call i32 @smbus_release_bus(i32 %152, i32 %153)
  %155 = load i32, i32* @hz, align 4
  %156 = sdiv i32 %155, 10
  %157 = call i32 @pause(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %156)
  br label %158

158:                                              ; preds = %181, %151
  %159 = load i32, i32* %9, align 4
  %160 = load i32, i32* %8, align 4
  %161 = load i32, i32* @SMB_WAIT, align 4
  %162 = call i64 @smbus_request_bus(i32 %159, i32 %160, i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %158
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %374

165:                                              ; preds = %158
  %166 = load i32, i32* @SMBUS_DATA_SIZE, align 4
  store i32 %166, i32* %12, align 4
  %167 = load i32, i32* %9, align 4
  %168 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %169 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @SMBUS_READ_START, align 4
  %172 = call i32 @smbus_bread(i32 %167, i32 %170, i32 %171, i32* %12, i32* %21)
  %173 = call i32 @smbus_error(i32 %172)
  store i32 %173, i32* %15, align 4
  %174 = load i32, i32* %15, align 4
  %175 = load i32, i32* @ENXIO, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %181, label %177

177:                                              ; preds = %165
  %178 = load i32, i32* %15, align 4
  %179 = load i32, i32* @EBUSY, align 4
  %180 = icmp eq i32 %178, %179
  br i1 %180, label %181, label %188

181:                                              ; preds = %177, %165
  %182 = load i32, i32* %9, align 4
  %183 = load i32, i32* %8, align 4
  %184 = call i32 @smbus_release_bus(i32 %182, i32 %183)
  %185 = load i32, i32* @hz, align 4
  %186 = sdiv i32 %185, 100
  %187 = call i32 @pause(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %186)
  br label %158

188:                                              ; preds = %177
  %189 = load i32, i32* %15, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %188
  br label %370

192:                                              ; preds = %188
  %193 = load i32, i32* %12, align 4
  %194 = load i32, i32* @SMBUS_DATA_SIZE, align 4
  %195 = icmp eq i32 %193, %194
  br i1 %195, label %196, label %205

196:                                              ; preds = %192
  %197 = getelementptr inbounds i32, i32* %21, i64 0
  %198 = load i32, i32* %197, align 16
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %205

200:                                              ; preds = %196
  %201 = getelementptr inbounds i32, i32* %21, i64 1
  %202 = load i32, i32* %201, align 4
  %203 = icmp eq i32 %202, 1
  br i1 %203, label %204, label %205

204:                                              ; preds = %200
  store i32 2, i32* %13, align 4
  br label %206

205:                                              ; preds = %200, %196, %192
  store i32 0, i32* %13, align 4
  br label %206

206:                                              ; preds = %205, %204
  %207 = load i32, i32* %12, align 4
  %208 = icmp slt i32 %207, 3
  br i1 %208, label %209, label %214

209:                                              ; preds = %206
  %210 = load i32, i32* %8, align 4
  %211 = sext i32 %210 to i64
  %212 = inttoptr i64 %211 to i8*
  %213 = call i32 (i8*, ...) @device_printf(i8* %212, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %370

214:                                              ; preds = %206
  %215 = load i32, i32* %13, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %21, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.ipmi_request*, %struct.ipmi_request** %5, align 8
  %220 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = call i32 @IPMI_REPLY_ADDR(i32 %221)
  %223 = icmp ne i32 %218, %222
  br i1 %223, label %224, label %229

224:                                              ; preds = %214
  %225 = load i32, i32* %8, align 4
  %226 = sext i32 %225 to i64
  %227 = inttoptr i64 %226 to i8*
  %228 = call i32 (i8*, ...) @device_printf(i8* %227, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %370

229:                                              ; preds = %214
  %230 = load i32, i32* %13, align 4
  %231 = add nsw i32 %230, 1
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %21, i64 %232
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.ipmi_request*, %struct.ipmi_request** %5, align 8
  %236 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = icmp ne i32 %234, %237
  br i1 %238, label %239, label %244

239:                                              ; preds = %229
  %240 = load i32, i32* %8, align 4
  %241 = sext i32 %240 to i64
  %242 = inttoptr i64 %241 to i8*
  %243 = call i32 (i8*, ...) @device_printf(i8* %242, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %370

244:                                              ; preds = %229
  %245 = load i32, i32* %13, align 4
  %246 = add nsw i32 %245, 2
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %21, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.ipmi_request*, %struct.ipmi_request** %5, align 8
  %251 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %250, i32 0, i32 4
  store i32 %249, i32* %251, align 8
  %252 = load i32, i32* %13, align 4
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %269

254:                                              ; preds = %244
  %255 = load i32, i32* %12, align 4
  %256 = sub nsw i32 %255, 3
  %257 = sext i32 %256 to i64
  store i64 %257, i64* %14, align 8
  %258 = getelementptr inbounds i32, i32* %21, i64 3
  %259 = load %struct.ipmi_request*, %struct.ipmi_request** %5, align 8
  %260 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %259, i32 0, i32 5
  %261 = load i32*, i32** %260, align 8
  %262 = load %struct.ipmi_request*, %struct.ipmi_request** %5, align 8
  %263 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %262, i32 0, i32 6
  %264 = load i64, i64* %263, align 8
  %265 = load i64, i64* %14, align 8
  %266 = trunc i64 %265 to i32
  %267 = call i32 @min(i64 %264, i32 %266)
  %268 = call i32 @bcopy(i32* %258, i32* %261, i32 %267)
  br label %363

269:                                              ; preds = %244
  %270 = getelementptr inbounds i32, i32* %21, i64 5
  %271 = load %struct.ipmi_request*, %struct.ipmi_request** %5, align 8
  %272 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %271, i32 0, i32 5
  %273 = load i32*, i32** %272, align 8
  %274 = load %struct.ipmi_request*, %struct.ipmi_request** %5, align 8
  %275 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %274, i32 0, i32 6
  %276 = load i64, i64* %275, align 8
  %277 = load i32, i32* %12, align 4
  %278 = sub nsw i32 %277, 5
  %279 = call i32 @min(i64 %276, i32 %278)
  %280 = call i32 @bcopy(i32* %270, i32* %273, i32 %279)
  %281 = load i32, i32* %12, align 4
  %282 = sub nsw i32 %281, 5
  %283 = sext i32 %282 to i64
  store i64 %283, i64* %14, align 8
  store i32 1, i32* %11, align 4
  br label %284

284:                                              ; preds = %359, %269
  %285 = load i32, i32* @SMBUS_DATA_SIZE, align 4
  store i32 %285, i32* %12, align 4
  %286 = load i32, i32* %9, align 4
  %287 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %288 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = load i32, i32* @SMBUS_READ_CONT, align 4
  %291 = call i32 @smbus_bread(i32 %286, i32 %289, i32 %290, i32* %12, i32* %21)
  %292 = call i32 @smbus_error(i32 %291)
  store i32 %292, i32* %15, align 4
  %293 = load i32, i32* %15, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %296

295:                                              ; preds = %284
  br label %370

296:                                              ; preds = %284
  %297 = getelementptr inbounds i32, i32* %21, i64 0
  %298 = load i32, i32* %297, align 16
  %299 = icmp ne i32 %298, 255
  br i1 %299, label %300, label %313

300:                                              ; preds = %296
  %301 = getelementptr inbounds i32, i32* %21, i64 0
  %302 = load i32, i32* %301, align 16
  %303 = load i32, i32* %11, align 4
  %304 = icmp ne i32 %302, %303
  br i1 %304, label %305, label %313

305:                                              ; preds = %300
  %306 = load i32, i32* %8, align 4
  %307 = sext i32 %306 to i64
  %308 = inttoptr i64 %307 to i8*
  %309 = getelementptr inbounds i32, i32* %21, i64 0
  %310 = load i32, i32* %309, align 16
  %311 = load i32, i32* %11, align 4
  %312 = call i32 (i8*, ...) @device_printf(i8* %308, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %310, i32 %311)
  br label %370

313:                                              ; preds = %300, %296
  %314 = getelementptr inbounds i32, i32* %21, i64 0
  %315 = load i32, i32* %314, align 16
  %316 = icmp ne i32 %315, 255
  br i1 %316, label %317, label %327

317:                                              ; preds = %313
  %318 = load i32, i32* %12, align 4
  %319 = load i32, i32* @SMBUS_DATA_SIZE, align 4
  %320 = icmp slt i32 %318, %319
  br i1 %320, label %321, label %327

321:                                              ; preds = %317
  %322 = load i32, i32* %8, align 4
  %323 = sext i32 %322 to i64
  %324 = inttoptr i64 %323 to i8*
  %325 = load i32, i32* %12, align 4
  %326 = call i32 (i8*, ...) @device_printf(i8* %324, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %325)
  br label %370

327:                                              ; preds = %317, %313
  %328 = load i64, i64* %14, align 8
  %329 = load %struct.ipmi_request*, %struct.ipmi_request** %5, align 8
  %330 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %329, i32 0, i32 6
  %331 = load i64, i64* %330, align 8
  %332 = icmp ult i64 %328, %331
  br i1 %332, label %333, label %349

333:                                              ; preds = %327
  %334 = getelementptr inbounds i32, i32* %21, i64 1
  %335 = load %struct.ipmi_request*, %struct.ipmi_request** %5, align 8
  %336 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %335, i32 0, i32 5
  %337 = load i32*, i32** %336, align 8
  %338 = load i64, i64* %14, align 8
  %339 = getelementptr inbounds i32, i32* %337, i64 %338
  %340 = load %struct.ipmi_request*, %struct.ipmi_request** %5, align 8
  %341 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %340, i32 0, i32 6
  %342 = load i64, i64* %341, align 8
  %343 = load i64, i64* %14, align 8
  %344 = sub i64 %342, %343
  %345 = load i32, i32* %12, align 4
  %346 = sub nsw i32 %345, 1
  %347 = call i32 @min(i64 %344, i32 %346)
  %348 = call i32 @bcopy(i32* %334, i32* %339, i32 %347)
  br label %349

349:                                              ; preds = %333, %327
  %350 = load i32, i32* %12, align 4
  %351 = sub nsw i32 %350, 1
  %352 = sext i32 %351 to i64
  %353 = load i64, i64* %14, align 8
  %354 = add i64 %353, %352
  store i64 %354, i64* %14, align 8
  %355 = getelementptr inbounds i32, i32* %21, i64 0
  %356 = load i32, i32* %355, align 16
  %357 = icmp ne i32 %356, 255
  br i1 %357, label %358, label %359

358:                                              ; preds = %349
  br label %362

359:                                              ; preds = %349
  %360 = load i32, i32* %11, align 4
  %361 = add nsw i32 %360, 1
  store i32 %361, i32* %11, align 4
  br label %284

362:                                              ; preds = %358
  br label %363

363:                                              ; preds = %362, %254
  %364 = load i64, i64* %14, align 8
  %365 = load %struct.ipmi_request*, %struct.ipmi_request** %5, align 8
  %366 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %365, i32 0, i32 7
  store i64 %364, i64* %366, align 8
  %367 = load i32, i32* %9, align 4
  %368 = load i32, i32* %8, align 4
  %369 = call i32 @smbus_release_bus(i32 %367, i32 %368)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %374

370:                                              ; preds = %321, %305, %295, %239, %224, %209, %191, %148, %125, %92, %79
  %371 = load i32, i32* %9, align 4
  %372 = load i32, i32* %8, align 4
  %373 = call i32 @smbus_release_bus(i32 %371, i32 %372)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %374

374:                                              ; preds = %370, %363, %164, %33
  %375 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %375)
  %376 = load i32, i32* %3, align 4
  ret i32 %376
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @smbus_request_bus(i32, i32, i32) #2

declare dso_local i32 @bcopy(i32*, i32*, i32) #2

declare dso_local i32 @min(i64, i32) #2

declare dso_local i32 @smbus_error(i32) #2

declare dso_local i32 @smbus_bwrite(i32, i32, i32, i32, ...) #2

declare dso_local i32 @smbus_release_bus(i32, i32) #2

declare dso_local i32 @pause(i8*, i32) #2

declare dso_local i32 @smbus_bread(i32, i32, i32, i32*, i32*) #2

declare dso_local i32 @device_printf(i8*, ...) #2

declare dso_local i32 @IPMI_REPLY_ADDR(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
