; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_discovery.c_pqisrc_scan_devices.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_discovery.c_pqisrc_scan_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i8** }
%struct.TYPE_22__ = type { %struct.TYPE_21__*, %struct.TYPE_20__ }
%struct.TYPE_21__ = type { i32*, i64, i64, i32, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_24__ = type { i32, i32, i32, i32, i64, i64, i8*, i32, i32*, i32, i32 }

@PQI_STATUS_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"IN\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"physical_cnt %d logical_cnt %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"failed to allocate memory for BMIC ID PHYS Device : %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"failed to allocate memory for device list : %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"Inquiry failed, skipping device %016llx\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"INQUIRY FAILED \0A\00", align 1
@REPORT_LUN_DEV_FLAG_AIO_ENABLED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"new_dev_cnt %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"OUT \0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pqisrc_scan_devices(%struct.TYPE_23__* %0) #0 {
  %2 = alloca %struct.TYPE_23__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_22__*, align 8
  %15 = alloca %struct.TYPE_22__*, align 8
  %16 = alloca %struct.TYPE_21__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_24__**, align 8
  %19 = alloca %struct.TYPE_24__*, align 8
  %20 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %2, align 8
  %21 = load i32, i32* @PQI_STATUS_FAILURE, align 4
  store i32 %21, i32* %4, align 4
  store i32 0, i32* %11, align 4
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %14, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %15, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %16, align 8
  store i32* null, i32** %17, align 8
  store %struct.TYPE_24__** null, %struct.TYPE_24__*** %18, align 8
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %19, align 8
  %22 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %24 = call i32 @pqisrc_get_phys_log_device_list(%struct.TYPE_23__* %23, %struct.TYPE_22__** %14, %struct.TYPE_22__** %15, i64* %12, i64* %13)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  br label %326

28:                                               ; preds = %1
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %30 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @BE_32(i32 %32)
  %34 = sext i32 %33 to i64
  %35 = udiv i64 %34, 32
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %9, align 4
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @BE_32(i32 %40)
  %42 = sext i32 %41 to i64
  %43 = udiv i64 %42, 32
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i32 (i8*, ...) @DBG_DISC(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %46)
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %28
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %52 = call i8* @os_mem_alloc(%struct.TYPE_23__* %51, i32 4)
  %53 = bitcast i8* %52 to i32*
  store i32* %53, i32** %17, align 8
  %54 = load i32*, i32** %17, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load i32, i32* @PQI_STATUS_FAILURE, align 4
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @DBG_ERR(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  br label %326

60:                                               ; preds = %50
  br label %61

61:                                               ; preds = %60, %28
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %62, %63
  store i32 %64, i32* %7, align 4
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = mul i64 8, %67
  %69 = trunc i64 %68 to i32
  %70 = call i8* @os_mem_alloc(%struct.TYPE_23__* %65, i32 %69)
  %71 = bitcast i8* %70 to %struct.TYPE_24__**
  store %struct.TYPE_24__** %71, %struct.TYPE_24__*** %18, align 8
  %72 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %18, align 8
  %73 = icmp eq %struct.TYPE_24__** %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %61
  %75 = load i32, i32* @PQI_STATUS_FAILURE, align 4
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @DBG_ERR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %76)
  br label %326

78:                                               ; preds = %61
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %103, %78
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %106

83:                                               ; preds = %79
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %85 = call i8* @os_mem_alloc(%struct.TYPE_23__* %84, i32 64)
  %86 = bitcast i8* %85 to %struct.TYPE_24__*
  %87 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %18, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %87, i64 %89
  store %struct.TYPE_24__* %86, %struct.TYPE_24__** %90, align 8
  %91 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %18, align 8
  %92 = load i32, i32* %5, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %91, i64 %93
  %95 = load %struct.TYPE_24__*, %struct.TYPE_24__** %94, align 8
  %96 = icmp eq %struct.TYPE_24__* %95, null
  br i1 %96, label %97, label %102

97:                                               ; preds = %83
  %98 = load i32, i32* @PQI_STATUS_FAILURE, align 4
  store i32 %98, i32* %4, align 4
  %99 = load i32, i32* %4, align 4
  %100 = call i32 @DBG_ERR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* %5, align 4
  store i32 %101, i32* %11, align 4
  br label %326

102:                                              ; preds = %83
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %5, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %5, align 4
  br label %79

106:                                              ; preds = %79
  %107 = load i32, i32* %7, align 4
  store i32 %107, i32* %11, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %108

108:                                              ; preds = %316, %106
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* %7, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %319

112:                                              ; preds = %108
  %113 = load i32, i32* %5, align 4
  %114 = load i32, i32* %9, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %123

116:                                              ; preds = %112
  store i32 1, i32* %3, align 4
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %118, align 8
  %120 = load i32, i32* %5, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i64 %121
  store %struct.TYPE_21__* %122, %struct.TYPE_21__** %16, align 8
  br label %132

123:                                              ; preds = %112
  store i32 0, i32* %3, align 4
  %124 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %125 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %125, align 8
  %127 = load i32, i32* %5, align 4
  %128 = load i32, i32* %9, align 4
  %129 = sub nsw i32 %127, %128
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i64 %130
  store %struct.TYPE_21__* %131, %struct.TYPE_21__** %16, align 8
  br label %132

132:                                              ; preds = %123, %116
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  store i32* %135, i32** %8, align 8
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = icmp eq i64 %138, 136
  br i1 %139, label %140, label %157

140:                                              ; preds = %132
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 3
  %145 = load i32, i32* %144, align 4
  %146 = and i32 %145, 63
  store i32 %146, i32* %20, align 4
  %147 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %148 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 4
  %150 = call i8* @BE_64(i32 %149)
  %151 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %152 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %151, i32 0, i32 0
  %153 = load i8**, i8*** %152, align 8
  %154 = load i32, i32* %20, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8*, i8** %153, i64 %155
  store i8* %150, i8** %156, align 8
  br label %157

157:                                              ; preds = %140, %132
  %158 = load i32*, i32** %8, align 8
  %159 = call i64 @MASKED_DEVICE(i32* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %170

161:                                              ; preds = %157
  %162 = load i32, i32* %3, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %161
  %165 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %166 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %164
  br label %316

170:                                              ; preds = %164, %161, %157
  %171 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %18, align 8
  %172 = load i32, i32* %6, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %171, i64 %173
  %175 = load %struct.TYPE_24__*, %struct.TYPE_24__** %174, align 8
  store %struct.TYPE_24__* %175, %struct.TYPE_24__** %19, align 8
  %176 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %177 = call i32 @memset(%struct.TYPE_24__* %176, i32 0, i32 64)
  %178 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %179 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %178, i32 0, i32 8
  %180 = load i32*, i32** %179, align 8
  %181 = load i32*, i32** %8, align 8
  %182 = call i32 @memcpy(i32* %180, i32* %181, i32 8)
  %183 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %184 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %183, i32 0, i32 4
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %187 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %186, i32 0, i32 10
  store i32 %185, i32* %187, align 4
  %188 = load i32, i32* %3, align 4
  %189 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %190 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %189, i32 0, i32 0
  store i32 %188, i32* %190, align 8
  %191 = load i32, i32* %3, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %198, label %193

193:                                              ; preds = %170
  %194 = load i32*, i32** %8, align 8
  %195 = call i32 @pqisrc_is_external_raid_addr(i32* %194)
  %196 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %197 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %196, i32 0, i32 9
  store i32 %195, i32* %197, align 8
  br label %198

198:                                              ; preds = %193, %170
  %199 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %200 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %201 = call i32 @pqisrc_get_dev_data(%struct.TYPE_23__* %199, %struct.TYPE_24__* %200)
  store i32 %201, i32* %4, align 4
  %202 = load i32, i32* %4, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %214

204:                                              ; preds = %198
  %205 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %206 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %205, i32 0, i32 8
  %207 = load i32*, i32** %206, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 0
  %209 = load i32, i32* %208, align 4
  %210 = call i8* @BE_64(i32 %209)
  %211 = ptrtoint i8* %210 to i64
  %212 = call i32 @DBG_WARN(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i64 %211)
  %213 = call i32 (i8*, ...) @DBG_DISC(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  br label %316

214:                                              ; preds = %198
  %215 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %216 = call i32 @pqisrc_assign_btl(%struct.TYPE_24__* %215)
  %217 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %218 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %228

221:                                              ; preds = %214
  %222 = load i32*, i32** %8, align 8
  %223 = call i64 @MASKED_DEVICE(i32* %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %228

225:                                              ; preds = %221
  %226 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %227 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %226, i32 0, i32 1
  store i32 0, i32* %227, align 4
  br label %231

228:                                              ; preds = %221, %214
  %229 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %230 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %229, i32 0, i32 1
  store i32 1, i32* %230, align 4
  br label %231

231:                                              ; preds = %228, %225
  %232 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %233 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %251

236:                                              ; preds = %231
  %237 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %238 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 8
  %240 = load i32, i32* @REPORT_LUN_DEV_FLAG_AIO_ENABLED, align 4
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %251

243:                                              ; preds = %236
  %244 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %245 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %244, i32 0, i32 2
  %246 = load i64, i64* %245, align 8
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %251

248:                                              ; preds = %243
  %249 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %250 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %249, i32 0, i32 2
  store i32 1, i32* %250, align 8
  br label %251

251:                                              ; preds = %248, %243, %236, %231
  %252 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %253 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %252, i32 0, i32 3
  %254 = load i32, i32* %253, align 4
  switch i32 %254, label %315 [
    i32 131, label %255
    i32 135, label %264
    i32 128, label %264
    i32 134, label %288
    i32 129, label %303
    i32 133, label %303
    i32 132, label %306
    i32 130, label %314
    i32 136, label %314
  ]

255:                                              ; preds = %251
  %256 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %257 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %256, i32 0, i32 7
  %258 = load i32, i32* %257, align 8
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %263

260:                                              ; preds = %255
  %261 = load i32, i32* %6, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %6, align 4
  br label %263

263:                                              ; preds = %260, %255
  br label %315

264:                                              ; preds = %251, %251
  %265 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %266 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %285

269:                                              ; preds = %264
  %270 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %271 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %270, i32 0, i32 2
  %272 = load i64, i64* %271, align 8
  %273 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %274 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %273, i32 0, i32 4
  store i64 %272, i64* %274, align 8
  %275 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %276 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %275, i32 0, i32 4
  %277 = load i32, i32* %276, align 4
  %278 = call i8* @BE_64(i32 %277)
  %279 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %280 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %279, i32 0, i32 6
  store i8* %278, i8** %280, align 8
  %281 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %282 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %283 = load i32*, i32** %17, align 8
  %284 = call i32 @pqisrc_get_physical_device_info(%struct.TYPE_23__* %281, %struct.TYPE_24__* %282, i32* %283)
  br label %285

285:                                              ; preds = %269, %264
  %286 = load i32, i32* %6, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %6, align 4
  br label %315

288:                                              ; preds = %251
  %289 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %290 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %300

293:                                              ; preds = %288
  %294 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %295 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %294, i32 0, i32 4
  %296 = load i32, i32* %295, align 4
  %297 = call i8* @BE_64(i32 %296)
  %298 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %299 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %298, i32 0, i32 6
  store i8* %297, i8** %299, align 8
  br label %300

300:                                              ; preds = %293, %288
  %301 = load i32, i32* %6, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %6, align 4
  br label %315

303:                                              ; preds = %251, %251
  %304 = load i32, i32* %6, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %6, align 4
  br label %315

306:                                              ; preds = %251
  %307 = load i32*, i32** %8, align 8
  %308 = call i32 @pqisrc_is_hba_lunid(i32* %307)
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %313

310:                                              ; preds = %306
  %311 = load i32, i32* %6, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %6, align 4
  br label %313

313:                                              ; preds = %310, %306
  br label %315

314:                                              ; preds = %251, %251
  br label %315

315:                                              ; preds = %251, %314, %313, %303, %300, %285, %263
  br label %316

316:                                              ; preds = %315, %204, %169
  %317 = load i32, i32* %5, align 4
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %5, align 4
  br label %108

319:                                              ; preds = %108
  %320 = load i32, i32* %6, align 4
  %321 = call i32 (i8*, ...) @DBG_DISC(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %320)
  %322 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %323 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %18, align 8
  %324 = load i32, i32* %6, align 4
  %325 = call i32 @pqisrc_update_device_list(%struct.TYPE_23__* %322, %struct.TYPE_24__** %323, i32 %324)
  br label %326

326:                                              ; preds = %319, %97, %74, %56, %27
  %327 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %18, align 8
  %328 = icmp ne %struct.TYPE_24__** %327, null
  br i1 %328, label %329, label %383

329:                                              ; preds = %326
  store i32 0, i32* %5, align 4
  br label %330

330:                                              ; preds = %371, %329
  %331 = load i32, i32* %5, align 4
  %332 = load i32, i32* %11, align 4
  %333 = icmp slt i32 %331, %332
  br i1 %333, label %334, label %374

334:                                              ; preds = %330
  %335 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %18, align 8
  %336 = load i32, i32* %5, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %335, i64 %337
  %339 = load %struct.TYPE_24__*, %struct.TYPE_24__** %338, align 8
  %340 = icmp ne %struct.TYPE_24__* %339, null
  br i1 %340, label %341, label %370

341:                                              ; preds = %334
  %342 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %18, align 8
  %343 = load i32, i32* %5, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %342, i64 %344
  %346 = load %struct.TYPE_24__*, %struct.TYPE_24__** %345, align 8
  %347 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %346, i32 0, i32 5
  %348 = load i64, i64* %347, align 8
  %349 = icmp ne i64 %348, 0
  br i1 %349, label %350, label %361

350:                                              ; preds = %341
  %351 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %352 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %18, align 8
  %353 = load i32, i32* %5, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %352, i64 %354
  %356 = load %struct.TYPE_24__*, %struct.TYPE_24__** %355, align 8
  %357 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %356, i32 0, i32 5
  %358 = load i64, i64* %357, align 8
  %359 = inttoptr i64 %358 to i8*
  %360 = call i32 @os_mem_free(%struct.TYPE_23__* %351, i8* %359, i32 4)
  br label %361

361:                                              ; preds = %350, %341
  %362 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %363 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %18, align 8
  %364 = load i32, i32* %5, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %363, i64 %365
  %367 = load %struct.TYPE_24__*, %struct.TYPE_24__** %366, align 8
  %368 = bitcast %struct.TYPE_24__* %367 to i8*
  %369 = call i32 @os_mem_free(%struct.TYPE_23__* %362, i8* %368, i32 64)
  br label %370

370:                                              ; preds = %361, %334
  br label %371

371:                                              ; preds = %370
  %372 = load i32, i32* %5, align 4
  %373 = add nsw i32 %372, 1
  store i32 %373, i32* %5, align 4
  br label %330

374:                                              ; preds = %330
  %375 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %376 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %18, align 8
  %377 = bitcast %struct.TYPE_24__** %376 to i8*
  %378 = load i32, i32* %11, align 4
  %379 = sext i32 %378 to i64
  %380 = mul i64 8, %379
  %381 = trunc i64 %380 to i32
  %382 = call i32 @os_mem_free(%struct.TYPE_23__* %375, i8* %377, i32 %381)
  br label %383

383:                                              ; preds = %374, %326
  %384 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %385 = icmp ne %struct.TYPE_22__* %384, null
  br i1 %385, label %386, label %393

386:                                              ; preds = %383
  %387 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %388 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %389 = bitcast %struct.TYPE_22__* %388 to i8*
  %390 = load i64, i64* %12, align 8
  %391 = trunc i64 %390 to i32
  %392 = call i32 @os_mem_free(%struct.TYPE_23__* %387, i8* %389, i32 %391)
  br label %393

393:                                              ; preds = %386, %383
  %394 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %395 = icmp ne %struct.TYPE_22__* %394, null
  br i1 %395, label %396, label %403

396:                                              ; preds = %393
  %397 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %398 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %399 = bitcast %struct.TYPE_22__* %398 to i8*
  %400 = load i64, i64* %13, align 8
  %401 = trunc i64 %400 to i32
  %402 = call i32 @os_mem_free(%struct.TYPE_23__* %397, i8* %399, i32 %401)
  br label %403

403:                                              ; preds = %396, %393
  %404 = load i32*, i32** %17, align 8
  %405 = icmp ne i32* %404, null
  br i1 %405, label %406, label %411

406:                                              ; preds = %403
  %407 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %408 = load i32*, i32** %17, align 8
  %409 = bitcast i32* %408 to i8*
  %410 = call i32 @os_mem_free(%struct.TYPE_23__* %407, i8* %409, i32 4)
  br label %411

411:                                              ; preds = %406, %403
  %412 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %413 = load i32, i32* %4, align 4
  ret i32 %413
}

declare dso_local i32 @DBG_FUNC(i8*) #1

declare dso_local i32 @pqisrc_get_phys_log_device_list(%struct.TYPE_23__*, %struct.TYPE_22__**, %struct.TYPE_22__**, i64*, i64*) #1

declare dso_local i32 @BE_32(i32) #1

declare dso_local i32 @DBG_DISC(i8*, ...) #1

declare dso_local i8* @os_mem_alloc(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @DBG_ERR(i8*, i32) #1

declare dso_local i8* @BE_64(i32) #1

declare dso_local i64 @MASKED_DEVICE(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @pqisrc_is_external_raid_addr(i32*) #1

declare dso_local i32 @pqisrc_get_dev_data(%struct.TYPE_23__*, %struct.TYPE_24__*) #1

declare dso_local i32 @DBG_WARN(i8*, i64) #1

declare dso_local i32 @pqisrc_assign_btl(%struct.TYPE_24__*) #1

declare dso_local i32 @pqisrc_get_physical_device_info(%struct.TYPE_23__*, %struct.TYPE_24__*, i32*) #1

declare dso_local i32 @pqisrc_is_hba_lunid(i32*) #1

declare dso_local i32 @pqisrc_update_device_list(%struct.TYPE_23__*, %struct.TYPE_24__**, i32) #1

declare dso_local i32 @os_mem_free(%struct.TYPE_23__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
