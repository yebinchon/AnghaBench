; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_tr_raid5.c_g_raid_tr_iostart_raid5_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_tr_raid5.c_g_raid_tr_iostart_raid5_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_tr_object = type { %struct.g_raid_volume* }
%struct.g_raid_volume = type { i64, i64, i64, i32, i32, i32, %struct.g_raid_subdisk* }
%struct.g_raid_subdisk = type { i32 }
%struct.bio = type { i8*, i64, i32, i64, %struct.g_raid_subdisk* }
%struct.bio_queue_head = type { i32 }

@G_RAID_VOLUME_RL_RAIDMDF = common dso_local global i64 0, align 8
@G_RAID_VOLUME_RL_RAID5EE = common dso_local global i64 0, align 8
@G_RAID_VOLUME_RL_RAID6 = common dso_local global i64 0, align 8
@G_RAID_VOLUME_RL_RAID4 = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_raid_tr_object*, %struct.bio*)* @g_raid_tr_iostart_raid5_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_raid_tr_iostart_raid5_read(%struct.g_raid_tr_object* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.g_raid_tr_object*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.g_raid_volume*, align 8
  %6 = alloca %struct.g_raid_subdisk*, align 8
  %7 = alloca %struct.bio_queue_head, align 4
  %8 = alloca %struct.bio*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store %struct.g_raid_tr_object* %0, %struct.g_raid_tr_object** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %24 = load %struct.g_raid_tr_object*, %struct.g_raid_tr_object** %3, align 8
  %25 = getelementptr inbounds %struct.g_raid_tr_object, %struct.g_raid_tr_object* %24, i32 0, i32 0
  %26 = load %struct.g_raid_volume*, %struct.g_raid_volume** %25, align 8
  store %struct.g_raid_volume* %26, %struct.g_raid_volume** %5, align 8
  %27 = load %struct.bio*, %struct.bio** %4, align 8
  %28 = getelementptr inbounds %struct.bio, %struct.bio* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %9, align 8
  %30 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %31 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %21, align 8
  %33 = load %struct.g_raid_tr_object*, %struct.g_raid_tr_object** %3, align 8
  %34 = getelementptr inbounds %struct.g_raid_tr_object, %struct.g_raid_tr_object* %33, i32 0, i32 0
  %35 = load %struct.g_raid_volume*, %struct.g_raid_volume** %34, align 8
  %36 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %22, align 8
  %38 = load %struct.g_raid_tr_object*, %struct.g_raid_tr_object** %3, align 8
  %39 = getelementptr inbounds %struct.g_raid_tr_object, %struct.g_raid_tr_object* %38, i32 0, i32 0
  %40 = load %struct.g_raid_volume*, %struct.g_raid_volume** %39, align 8
  %41 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %23, align 8
  %43 = load %struct.g_raid_tr_object*, %struct.g_raid_tr_object** %3, align 8
  %44 = getelementptr inbounds %struct.g_raid_tr_object, %struct.g_raid_tr_object* %43, i32 0, i32 0
  %45 = load %struct.g_raid_volume*, %struct.g_raid_volume** %44, align 8
  %46 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %19, align 4
  %48 = load %struct.bio*, %struct.bio** %4, align 8
  %49 = getelementptr inbounds %struct.bio, %struct.bio* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %21, align 8
  %52 = sdiv i64 %50, %51
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %13, align 4
  %54 = load %struct.bio*, %struct.bio** %4, align 8
  %55 = getelementptr inbounds %struct.bio, %struct.bio* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %21, align 8
  %58 = srem i64 %56, %57
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %11, align 4
  %60 = load i64, i64* %22, align 8
  %61 = load i64, i64* @G_RAID_VOLUME_RL_RAIDMDF, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %2
  %64 = load %struct.g_raid_tr_object*, %struct.g_raid_tr_object** %3, align 8
  %65 = getelementptr inbounds %struct.g_raid_tr_object, %struct.g_raid_tr_object* %64, i32 0, i32 0
  %66 = load %struct.g_raid_volume*, %struct.g_raid_volume** %65, align 8
  %67 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %18, align 4
  br label %80

69:                                               ; preds = %2
  %70 = load i64, i64* %22, align 8
  %71 = load i64, i64* @G_RAID_VOLUME_RL_RAID5EE, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = load i64, i64* %22, align 8
  %75 = load i64, i64* @G_RAID_VOLUME_RL_RAID6, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %73, %69
  store i32 2, i32* %18, align 4
  br label %79

78:                                               ; preds = %73
  store i32 1, i32* %18, align 4
  br label %79

79:                                               ; preds = %78, %77
  br label %80

80:                                               ; preds = %79, %63
  %81 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %82 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %18, align 4
  %85 = sub nsw i32 %83, %84
  store i32 %85, i32* %17, align 4
  %86 = load i64, i64* %22, align 8
  %87 = load i64, i64* @G_RAID_VOLUME_RL_RAID4, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %80
  %90 = load i64, i64* %23, align 8
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  store i32 0, i32* %16, align 4
  br label %95

93:                                               ; preds = %89
  %94 = load i32, i32* %17, align 4
  store i32 %94, i32* %16, align 4
  br label %95

95:                                               ; preds = %93, %92
  store i32 -1, i32* %20, align 4
  br label %129

96:                                               ; preds = %80
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* %17, align 4
  %99 = load i32, i32* %19, align 4
  %100 = mul nsw i32 %98, %99
  %101 = sdiv i32 %97, %100
  %102 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %103 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 8
  %105 = srem i32 %101, %104
  store i32 %105, i32* %16, align 4
  %106 = load i32, i32* %19, align 4
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* %17, align 4
  %109 = sdiv i32 %107, %108
  %110 = load i32, i32* %19, align 4
  %111 = srem i32 %109, %110
  %112 = sub nsw i32 %106, %111
  store i32 %112, i32* %20, align 4
  %113 = load i64, i64* %23, align 8
  %114 = icmp sge i64 %113, 2
  br i1 %114, label %115, label %128

115:                                              ; preds = %96
  %116 = load i32, i32* %17, align 4
  %117 = load i32, i32* %16, align 4
  %118 = sub nsw i32 %116, %117
  store i32 %118, i32* %16, align 4
  %119 = load i32, i32* %16, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %115
  %122 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %123 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* %16, align 4
  %126 = add nsw i32 %125, %124
  store i32 %126, i32* %16, align 4
  br label %127

127:                                              ; preds = %121, %115
  br label %128

128:                                              ; preds = %127, %96
  br label %129

129:                                              ; preds = %128, %95
  %130 = load i32, i32* %13, align 4
  %131 = load i32, i32* %17, align 4
  %132 = srem i32 %130, %131
  store i32 %132, i32* %15, align 4
  %133 = load i64, i64* %22, align 8
  %134 = load i64, i64* @G_RAID_VOLUME_RL_RAID4, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %144

136:                                              ; preds = %129
  %137 = load i64, i64* %23, align 8
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %136
  %140 = load i32, i32* %18, align 4
  %141 = load i32, i32* %15, align 4
  %142 = add nsw i32 %141, %140
  store i32 %142, i32* %15, align 4
  br label %143

143:                                              ; preds = %139, %136
  br label %181

144:                                              ; preds = %129
  %145 = load i64, i64* %23, align 8
  %146 = and i64 %145, 1
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %158

148:                                              ; preds = %144
  %149 = load i32, i32* %16, align 4
  %150 = load i32, i32* %18, align 4
  %151 = add nsw i32 %149, %150
  %152 = load i32, i32* %15, align 4
  %153 = add nsw i32 %151, %152
  %154 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %155 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %154, i32 0, i32 5
  %156 = load i32, i32* %155, align 8
  %157 = srem i32 %153, %156
  store i32 %157, i32* %15, align 4
  br label %180

158:                                              ; preds = %144
  %159 = load i32, i32* %15, align 4
  %160 = load i32, i32* %16, align 4
  %161 = icmp sge i32 %159, %160
  br i1 %161, label %162, label %166

162:                                              ; preds = %158
  %163 = load i32, i32* %18, align 4
  %164 = load i32, i32* %15, align 4
  %165 = add nsw i32 %164, %163
  store i32 %165, i32* %15, align 4
  br label %179

166:                                              ; preds = %158
  %167 = load i32, i32* %16, align 4
  %168 = load i32, i32* %18, align 4
  %169 = add nsw i32 %167, %168
  %170 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %171 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %170, i32 0, i32 5
  %172 = load i32, i32* %171, align 8
  %173 = sub nsw i32 %169, %172
  %174 = call i64 @imax(i32 0, i32 %173)
  %175 = load i32, i32* %15, align 4
  %176 = sext i32 %175 to i64
  %177 = add nsw i64 %176, %174
  %178 = trunc i64 %177 to i32
  store i32 %178, i32* %15, align 4
  br label %179

179:                                              ; preds = %166, %162
  br label %180

180:                                              ; preds = %179, %148
  br label %181

181:                                              ; preds = %180, %143
  %182 = load i32, i32* %13, align 4
  %183 = load i32, i32* %17, align 4
  %184 = sdiv i32 %182, %183
  %185 = sext i32 %184 to i64
  %186 = load i64, i64* %21, align 8
  %187 = mul nsw i64 %185, %186
  %188 = trunc i64 %187 to i32
  store i32 %188, i32* %10, align 4
  %189 = load %struct.bio*, %struct.bio** %4, align 8
  %190 = getelementptr inbounds %struct.bio, %struct.bio* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  store i32 %191, i32* %14, align 4
  %192 = call i32 @bioq_init(%struct.bio_queue_head* %7)
  br label %193

193:                                              ; preds = %386, %181
  %194 = load i64, i64* %21, align 8
  %195 = load i32, i32* %11, align 4
  %196 = sext i32 %195 to i64
  %197 = sub nsw i64 %194, %196
  %198 = load i32, i32* %14, align 4
  %199 = call i32 @MIN(i64 %197, i32 %198)
  store i32 %199, i32* %12, align 4
  %200 = load %struct.bio*, %struct.bio** %4, align 8
  %201 = call %struct.bio* @g_clone_bio(%struct.bio* %200)
  store %struct.bio* %201, %struct.bio** %8, align 8
  %202 = load %struct.bio*, %struct.bio** %8, align 8
  %203 = icmp eq %struct.bio* %202, null
  br i1 %203, label %204, label %205

204:                                              ; preds = %193
  br label %403

205:                                              ; preds = %193
  %206 = load i32, i32* %10, align 4
  %207 = load i32, i32* %11, align 4
  %208 = add nsw i32 %206, %207
  %209 = sext i32 %208 to i64
  %210 = load %struct.bio*, %struct.bio** %8, align 8
  %211 = getelementptr inbounds %struct.bio, %struct.bio* %210, i32 0, i32 1
  store i64 %209, i64* %211, align 8
  %212 = load i8*, i8** %9, align 8
  %213 = load %struct.bio*, %struct.bio** %8, align 8
  %214 = getelementptr inbounds %struct.bio, %struct.bio* %213, i32 0, i32 0
  store i8* %212, i8** %214, align 8
  %215 = load i32, i32* %12, align 4
  %216 = load %struct.bio*, %struct.bio** %8, align 8
  %217 = getelementptr inbounds %struct.bio, %struct.bio* %216, i32 0, i32 2
  store i32 %215, i32* %217, align 8
  %218 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %219 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %218, i32 0, i32 6
  %220 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %219, align 8
  %221 = load i32, i32* %15, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %220, i64 %222
  %224 = load %struct.bio*, %struct.bio** %8, align 8
  %225 = getelementptr inbounds %struct.bio, %struct.bio* %224, i32 0, i32 4
  store %struct.g_raid_subdisk* %223, %struct.g_raid_subdisk** %225, align 8
  %226 = load %struct.bio*, %struct.bio** %8, align 8
  %227 = call i32 @bioq_insert_tail(%struct.bio_queue_head* %7, %struct.bio* %226)
  %228 = load i32, i32* %15, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %15, align 4
  %230 = load i64, i64* %22, align 8
  %231 = load i64, i64* @G_RAID_VOLUME_RL_RAID4, align 8
  %232 = icmp eq i64 %230, %231
  br i1 %232, label %233, label %251

233:                                              ; preds = %205
  %234 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %235 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %234, i32 0, i32 5
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* %15, align 4
  %238 = srem i32 %237, %236
  store i32 %238, i32* %15, align 4
  %239 = load i32, i32* %15, align 4
  %240 = load i32, i32* %16, align 4
  %241 = icmp eq i32 %239, %240
  br i1 %241, label %242, label %250

242:                                              ; preds = %233
  %243 = load i32, i32* %15, align 4
  %244 = load i32, i32* %18, align 4
  %245 = add nsw i32 %243, %244
  %246 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %247 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %246, i32 0, i32 5
  %248 = load i32, i32* %247, align 8
  %249 = srem i32 %245, %248
  store i32 %249, i32* %15, align 4
  br label %250

250:                                              ; preds = %242, %233
  br label %378

251:                                              ; preds = %205
  %252 = load i64, i64* %23, align 8
  %253 = and i64 %252, 1
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %304

255:                                              ; preds = %251
  %256 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %257 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %256, i32 0, i32 5
  %258 = load i32, i32* %257, align 8
  %259 = load i32, i32* %15, align 4
  %260 = srem i32 %259, %258
  store i32 %260, i32* %15, align 4
  %261 = load i32, i32* %15, align 4
  %262 = load i32, i32* %16, align 4
  %263 = icmp eq i32 %261, %262
  br i1 %263, label %264, label %303

264:                                              ; preds = %255
  %265 = load i32, i32* %20, align 4
  %266 = add nsw i32 %265, -1
  store i32 %266, i32* %20, align 4
  %267 = icmp sle i32 %266, 0
  br i1 %267, label %268, label %290

268:                                              ; preds = %264
  %269 = load i32, i32* %19, align 4
  %270 = load i32, i32* %20, align 4
  %271 = add nsw i32 %270, %269
  store i32 %271, i32* %20, align 4
  %272 = load i64, i64* %23, align 8
  %273 = icmp slt i64 %272, 2
  br i1 %273, label %274, label %277

274:                                              ; preds = %268
  %275 = load i32, i32* %16, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %16, align 4
  br label %284

277:                                              ; preds = %268
  %278 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %279 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %278, i32 0, i32 5
  %280 = load i32, i32* %279, align 8
  %281 = sub nsw i32 %280, 1
  %282 = load i32, i32* %16, align 4
  %283 = add nsw i32 %282, %281
  store i32 %283, i32* %16, align 4
  br label %284

284:                                              ; preds = %277, %274
  %285 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %286 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %285, i32 0, i32 5
  %287 = load i32, i32* %286, align 8
  %288 = load i32, i32* %16, align 4
  %289 = srem i32 %288, %287
  store i32 %289, i32* %16, align 4
  br label %290

290:                                              ; preds = %284, %264
  %291 = load i32, i32* %16, align 4
  %292 = load i32, i32* %18, align 4
  %293 = add nsw i32 %291, %292
  %294 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %295 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %294, i32 0, i32 5
  %296 = load i32, i32* %295, align 8
  %297 = srem i32 %293, %296
  store i32 %297, i32* %15, align 4
  %298 = load i64, i64* %21, align 8
  %299 = load i32, i32* %10, align 4
  %300 = sext i32 %299 to i64
  %301 = add nsw i64 %300, %298
  %302 = trunc i64 %301 to i32
  store i32 %302, i32* %10, align 4
  br label %303

303:                                              ; preds = %290, %255
  br label %377

304:                                              ; preds = %251
  %305 = load i32, i32* %15, align 4
  %306 = load i32, i32* %16, align 4
  %307 = icmp eq i32 %305, %306
  br i1 %307, label %308, label %312

308:                                              ; preds = %304
  %309 = load i32, i32* %18, align 4
  %310 = load i32, i32* %15, align 4
  %311 = add nsw i32 %310, %309
  store i32 %311, i32* %15, align 4
  br label %312

312:                                              ; preds = %308, %304
  %313 = load i32, i32* %15, align 4
  %314 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %315 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %314, i32 0, i32 5
  %316 = load i32, i32* %315, align 8
  %317 = icmp sge i32 %313, %316
  br i1 %317, label %318, label %376

318:                                              ; preds = %312
  %319 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %320 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %319, i32 0, i32 5
  %321 = load i32, i32* %320, align 8
  %322 = load i32, i32* %15, align 4
  %323 = sub nsw i32 %322, %321
  store i32 %323, i32* %15, align 4
  %324 = load i32, i32* %20, align 4
  %325 = add nsw i32 %324, -1
  store i32 %325, i32* %20, align 4
  %326 = icmp sle i32 %325, 0
  br i1 %326, label %327, label %349

327:                                              ; preds = %318
  %328 = load i32, i32* %19, align 4
  %329 = load i32, i32* %20, align 4
  %330 = add nsw i32 %329, %328
  store i32 %330, i32* %20, align 4
  %331 = load i64, i64* %23, align 8
  %332 = icmp slt i64 %331, 2
  br i1 %332, label %333, label %336

333:                                              ; preds = %327
  %334 = load i32, i32* %16, align 4
  %335 = add nsw i32 %334, 1
  store i32 %335, i32* %16, align 4
  br label %343

336:                                              ; preds = %327
  %337 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %338 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %337, i32 0, i32 5
  %339 = load i32, i32* %338, align 8
  %340 = sub nsw i32 %339, 1
  %341 = load i32, i32* %16, align 4
  %342 = add nsw i32 %341, %340
  store i32 %342, i32* %16, align 4
  br label %343

343:                                              ; preds = %336, %333
  %344 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %345 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %344, i32 0, i32 5
  %346 = load i32, i32* %345, align 8
  %347 = load i32, i32* %16, align 4
  %348 = srem i32 %347, %346
  store i32 %348, i32* %16, align 4
  br label %349

349:                                              ; preds = %343, %318
  %350 = load i32, i32* %15, align 4
  %351 = load i32, i32* %16, align 4
  %352 = icmp eq i32 %350, %351
  br i1 %352, label %353, label %357

353:                                              ; preds = %349
  %354 = load i32, i32* %18, align 4
  %355 = load i32, i32* %15, align 4
  %356 = add nsw i32 %355, %354
  store i32 %356, i32* %15, align 4
  br label %370

357:                                              ; preds = %349
  %358 = load i32, i32* %16, align 4
  %359 = load i32, i32* %18, align 4
  %360 = add nsw i32 %358, %359
  %361 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %362 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %361, i32 0, i32 5
  %363 = load i32, i32* %362, align 8
  %364 = sub nsw i32 %360, %363
  %365 = call i64 @imax(i32 0, i32 %364)
  %366 = load i32, i32* %15, align 4
  %367 = sext i32 %366 to i64
  %368 = add nsw i64 %367, %365
  %369 = trunc i64 %368 to i32
  store i32 %369, i32* %15, align 4
  br label %370

370:                                              ; preds = %357, %353
  %371 = load i64, i64* %21, align 8
  %372 = load i32, i32* %10, align 4
  %373 = sext i32 %372 to i64
  %374 = add nsw i64 %373, %371
  %375 = trunc i64 %374 to i32
  store i32 %375, i32* %10, align 4
  br label %376

376:                                              ; preds = %370, %312
  br label %377

377:                                              ; preds = %376, %303
  br label %378

378:                                              ; preds = %377, %250
  %379 = load i32, i32* %12, align 4
  %380 = load i32, i32* %14, align 4
  %381 = sub nsw i32 %380, %379
  store i32 %381, i32* %14, align 4
  %382 = load i32, i32* %12, align 4
  %383 = load i8*, i8** %9, align 8
  %384 = sext i32 %382 to i64
  %385 = getelementptr inbounds i8, i8* %383, i64 %384
  store i8* %385, i8** %9, align 8
  store i32 0, i32* %11, align 4
  br label %386

386:                                              ; preds = %378
  %387 = load i32, i32* %14, align 4
  %388 = icmp sgt i32 %387, 0
  br i1 %388, label %193, label %389

389:                                              ; preds = %386
  br label %390

390:                                              ; preds = %393, %389
  %391 = call %struct.bio* @bioq_takefirst(%struct.bio_queue_head* %7)
  store %struct.bio* %391, %struct.bio** %8, align 8
  %392 = icmp ne %struct.bio* %391, null
  br i1 %392, label %393, label %402

393:                                              ; preds = %390
  %394 = load %struct.bio*, %struct.bio** %8, align 8
  %395 = getelementptr inbounds %struct.bio, %struct.bio* %394, i32 0, i32 4
  %396 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %395, align 8
  store %struct.g_raid_subdisk* %396, %struct.g_raid_subdisk** %6, align 8
  %397 = load %struct.bio*, %struct.bio** %8, align 8
  %398 = getelementptr inbounds %struct.bio, %struct.bio* %397, i32 0, i32 4
  store %struct.g_raid_subdisk* null, %struct.g_raid_subdisk** %398, align 8
  %399 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %6, align 8
  %400 = load %struct.bio*, %struct.bio** %8, align 8
  %401 = call i32 @g_raid_subdisk_iostart(%struct.g_raid_subdisk* %399, %struct.bio* %400)
  br label %390

402:                                              ; preds = %390
  br label %425

403:                                              ; preds = %204
  br label %404

404:                                              ; preds = %407, %403
  %405 = call %struct.bio* @bioq_takefirst(%struct.bio_queue_head* %7)
  store %struct.bio* %405, %struct.bio** %8, align 8
  %406 = icmp ne %struct.bio* %405, null
  br i1 %406, label %407, label %410

407:                                              ; preds = %404
  %408 = load %struct.bio*, %struct.bio** %8, align 8
  %409 = call i32 @g_destroy_bio(%struct.bio* %408)
  br label %404

410:                                              ; preds = %404
  %411 = load %struct.bio*, %struct.bio** %4, align 8
  %412 = getelementptr inbounds %struct.bio, %struct.bio* %411, i32 0, i32 3
  %413 = load i64, i64* %412, align 8
  %414 = icmp eq i64 %413, 0
  br i1 %414, label %415, label %419

415:                                              ; preds = %410
  %416 = load i64, i64* @ENOMEM, align 8
  %417 = load %struct.bio*, %struct.bio** %4, align 8
  %418 = getelementptr inbounds %struct.bio, %struct.bio* %417, i32 0, i32 3
  store i64 %416, i64* %418, align 8
  br label %419

419:                                              ; preds = %415, %410
  %420 = load %struct.bio*, %struct.bio** %4, align 8
  %421 = load %struct.bio*, %struct.bio** %4, align 8
  %422 = getelementptr inbounds %struct.bio, %struct.bio* %421, i32 0, i32 3
  %423 = load i64, i64* %422, align 8
  %424 = call i32 @g_raid_iodone(%struct.bio* %420, i64 %423)
  br label %425

425:                                              ; preds = %419, %402
  ret void
}

declare dso_local i64 @imax(i32, i32) #1

declare dso_local i32 @bioq_init(%struct.bio_queue_head*) #1

declare dso_local i32 @MIN(i64, i32) #1

declare dso_local %struct.bio* @g_clone_bio(%struct.bio*) #1

declare dso_local i32 @bioq_insert_tail(%struct.bio_queue_head*, %struct.bio*) #1

declare dso_local %struct.bio* @bioq_takefirst(%struct.bio_queue_head*) #1

declare dso_local i32 @g_raid_subdisk_iostart(%struct.g_raid_subdisk*, %struct.bio*) #1

declare dso_local i32 @g_destroy_bio(%struct.bio*) #1

declare dso_local i32 @g_raid_iodone(%struct.bio*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
