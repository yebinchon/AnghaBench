; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_cluster.c_cluster_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_cluster.c_cluster_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i64, i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.buf = type { i32, i64, i64, i32 }
%struct.cluster_save = type { i32, %struct.buf** }

@unmapped_buf_allowed = common dso_local global i32 0, align 4
@GB_UNMAPPED = common dso_local global i32 0, align 4
@VREG = common dso_local global i64 0, align 8
@NOOFFSET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"cluster_write: no buffer offset\00", align 1
@M_SEGMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cluster_write(%struct.vnode* %0, %struct.buf* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.buf*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.buf**, align 8
  %17 = alloca %struct.buf**, align 8
  %18 = alloca %struct.cluster_save*, align 8
  store %struct.vnode* %0, %struct.vnode** %6, align 8
  store %struct.buf* %1, %struct.buf** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %19 = load i32, i32* @unmapped_buf_allowed, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* @GB_UNMAPPED, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %10, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %10, align 4
  br label %26

26:                                               ; preds = %21, %5
  %27 = load %struct.vnode*, %struct.vnode** %6, align 8
  %28 = getelementptr inbounds %struct.vnode, %struct.vnode* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @VREG, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %26
  %33 = load %struct.vnode*, %struct.vnode** %6, align 8
  %34 = call i32 @DOINGASYNC(%struct.vnode* %33)
  store i32 %34, i32* %15, align 4
  %35 = load %struct.vnode*, %struct.vnode** %6, align 8
  %36 = getelementptr inbounds %struct.vnode, %struct.vnode* %35, i32 0, i32 5
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %14, align 4
  br label %45

41:                                               ; preds = %26
  store i32 0, i32* %15, align 4
  %42 = load %struct.buf*, %struct.buf** %7, align 8
  %43 = getelementptr inbounds %struct.buf, %struct.buf* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %14, align 4
  br label %45

45:                                               ; preds = %41, %32
  %46 = load %struct.buf*, %struct.buf** %7, align 8
  %47 = getelementptr inbounds %struct.buf, %struct.buf* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %11, align 8
  %49 = load %struct.buf*, %struct.buf** %7, align 8
  %50 = getelementptr inbounds %struct.buf, %struct.buf* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @NOOFFSET, align 8
  %53 = icmp ne i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @KASSERT(i32 %54, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %56 = load i64, i64* %11, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %45
  %59 = load %struct.vnode*, %struct.vnode** %6, align 8
  %60 = getelementptr inbounds %struct.vnode, %struct.vnode* %59, i32 0, i32 4
  store i32 0, i32* %60, align 4
  %61 = load %struct.vnode*, %struct.vnode** %6, align 8
  %62 = getelementptr inbounds %struct.vnode, %struct.vnode* %61, i32 0, i32 3
  store i32 0, i32* %62, align 8
  %63 = load %struct.vnode*, %struct.vnode** %6, align 8
  %64 = getelementptr inbounds %struct.vnode, %struct.vnode* %63, i32 0, i32 2
  store i32 0, i32* %64, align 4
  %65 = load %struct.vnode*, %struct.vnode** %6, align 8
  %66 = getelementptr inbounds %struct.vnode, %struct.vnode* %65, i32 0, i32 1
  store i32 0, i32* %66, align 8
  br label %67

67:                                               ; preds = %58, %45
  %68 = load %struct.vnode*, %struct.vnode** %6, align 8
  %69 = getelementptr inbounds %struct.vnode, %struct.vnode* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %91, label %72

72:                                               ; preds = %67
  %73 = load i64, i64* %11, align 8
  %74 = load %struct.vnode*, %struct.vnode** %6, align 8
  %75 = getelementptr inbounds %struct.vnode, %struct.vnode* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = icmp ne i64 %73, %78
  br i1 %79, label %91, label %80

80:                                               ; preds = %72
  %81 = load %struct.buf*, %struct.buf** %7, align 8
  %82 = getelementptr inbounds %struct.buf, %struct.buf* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.vnode*, %struct.vnode** %6, align 8
  %85 = getelementptr inbounds %struct.vnode, %struct.vnode* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %14, align 4
  %88 = call i32 @btodb(i32 %87)
  %89 = add nsw i32 %86, %88
  %90 = icmp ne i32 %83, %89
  br i1 %90, label %91, label %316

91:                                               ; preds = %80, %72, %67
  %92 = load %struct.vnode*, %struct.vnode** %6, align 8
  %93 = getelementptr inbounds %struct.vnode, %struct.vnode* %92, i32 0, i32 5
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %14, align 4
  %98 = sdiv i32 %96, %97
  %99 = sub nsw i32 %98, 1
  store i32 %99, i32* %12, align 4
  %100 = load %struct.vnode*, %struct.vnode** %6, align 8
  %101 = getelementptr inbounds %struct.vnode, %struct.vnode* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %236

104:                                              ; preds = %91
  %105 = load %struct.vnode*, %struct.vnode** %6, align 8
  %106 = getelementptr inbounds %struct.vnode, %struct.vnode* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.vnode*, %struct.vnode** %6, align 8
  %109 = getelementptr inbounds %struct.vnode, %struct.vnode* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = sub nsw i32 %107, %110
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %13, align 4
  %113 = load %struct.buf*, %struct.buf** %7, align 8
  %114 = getelementptr inbounds %struct.buf, %struct.buf* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = load i32, i32* %14, align 4
  %117 = sext i32 %116 to i64
  %118 = add nsw i64 %115, %117
  %119 = load i64, i64* %8, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %135, label %121

121:                                              ; preds = %104
  %122 = load i64, i64* %11, align 8
  %123 = load %struct.vnode*, %struct.vnode** %6, align 8
  %124 = getelementptr inbounds %struct.vnode, %struct.vnode* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, 1
  %127 = sext i32 %126 to i64
  %128 = icmp ne i64 %122, %127
  br i1 %128, label %135, label %129

129:                                              ; preds = %121
  %130 = load %struct.vnode*, %struct.vnode** %6, align 8
  %131 = getelementptr inbounds %struct.vnode, %struct.vnode* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %13, align 4
  %134 = icmp sle i32 %132, %133
  br i1 %134, label %135, label %151

135:                                              ; preds = %129, %121, %104
  %136 = load i32, i32* %15, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %150, label %138

138:                                              ; preds = %135
  %139 = load i32, i32* %9, align 4
  %140 = icmp sgt i32 %139, 0
  br i1 %140, label %141, label %150

141:                                              ; preds = %138
  %142 = load %struct.vnode*, %struct.vnode** %6, align 8
  %143 = load i32, i32* %14, align 4
  %144 = load %struct.vnode*, %struct.vnode** %6, align 8
  %145 = getelementptr inbounds %struct.vnode, %struct.vnode* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* %13, align 4
  %148 = load i32, i32* %10, align 4
  %149 = call i32 @cluster_wbuild_wb(%struct.vnode* %142, i32 %143, i32 %146, i32 %147, i32 %148)
  br label %150

150:                                              ; preds = %141, %138, %135
  br label %235

151:                                              ; preds = %129
  %152 = load %struct.vnode*, %struct.vnode** %6, align 8
  %153 = load %struct.buf*, %struct.buf** %7, align 8
  %154 = load i32, i32* %10, align 4
  %155 = call %struct.cluster_save* @cluster_collectbufs(%struct.vnode* %152, %struct.buf* %153, i32 %154)
  store %struct.cluster_save* %155, %struct.cluster_save** %18, align 8
  %156 = load %struct.cluster_save*, %struct.cluster_save** %18, align 8
  %157 = icmp eq %struct.cluster_save* %156, null
  br i1 %157, label %158, label %161

158:                                              ; preds = %151
  %159 = load %struct.buf*, %struct.buf** %7, align 8
  %160 = call i32 @bawrite(%struct.buf* %159)
  br label %373

161:                                              ; preds = %151
  %162 = load %struct.cluster_save*, %struct.cluster_save** %18, align 8
  %163 = getelementptr inbounds %struct.cluster_save, %struct.cluster_save* %162, i32 0, i32 1
  %164 = load %struct.buf**, %struct.buf*** %163, align 8
  %165 = load %struct.cluster_save*, %struct.cluster_save** %18, align 8
  %166 = getelementptr inbounds %struct.cluster_save, %struct.cluster_save* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = sub nsw i32 %167, 1
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.buf*, %struct.buf** %164, i64 %169
  store %struct.buf** %170, %struct.buf*** %17, align 8
  %171 = load %struct.vnode*, %struct.vnode** %6, align 8
  %172 = load %struct.cluster_save*, %struct.cluster_save** %18, align 8
  %173 = call i64 @VOP_REALLOCBLKS(%struct.vnode* %171, %struct.cluster_save* %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %206

175:                                              ; preds = %161
  %176 = load %struct.cluster_save*, %struct.cluster_save** %18, align 8
  %177 = getelementptr inbounds %struct.cluster_save, %struct.cluster_save* %176, i32 0, i32 1
  %178 = load %struct.buf**, %struct.buf*** %177, align 8
  store %struct.buf** %178, %struct.buf*** %16, align 8
  br label %179

179:                                              ; preds = %187, %175
  %180 = load %struct.buf**, %struct.buf*** %16, align 8
  %181 = load %struct.buf**, %struct.buf*** %17, align 8
  %182 = icmp ult %struct.buf** %180, %181
  br i1 %182, label %183, label %190

183:                                              ; preds = %179
  %184 = load %struct.buf**, %struct.buf*** %16, align 8
  %185 = load %struct.buf*, %struct.buf** %184, align 8
  %186 = call i32 @brelse(%struct.buf* %185)
  br label %187

187:                                              ; preds = %183
  %188 = load %struct.buf**, %struct.buf*** %16, align 8
  %189 = getelementptr inbounds %struct.buf*, %struct.buf** %188, i32 1
  store %struct.buf** %189, %struct.buf*** %16, align 8
  br label %179

190:                                              ; preds = %179
  %191 = load %struct.cluster_save*, %struct.cluster_save** %18, align 8
  %192 = load i32, i32* @M_SEGMENT, align 4
  %193 = call i32 @free(%struct.cluster_save* %191, i32 %192)
  %194 = load i32, i32* %9, align 4
  %195 = icmp sgt i32 %194, 1
  br i1 %195, label %196, label %205

196:                                              ; preds = %190
  %197 = load %struct.vnode*, %struct.vnode** %6, align 8
  %198 = load i32, i32* %14, align 4
  %199 = load %struct.vnode*, %struct.vnode** %6, align 8
  %200 = getelementptr inbounds %struct.vnode, %struct.vnode* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* %13, align 4
  %203 = load i32, i32* %10, align 4
  %204 = call i32 @cluster_wbuild_wb(%struct.vnode* %197, i32 %198, i32 %201, i32 %202, i32 %203)
  br label %205

205:                                              ; preds = %196, %190
  br label %234

206:                                              ; preds = %161
  %207 = load %struct.cluster_save*, %struct.cluster_save** %18, align 8
  %208 = getelementptr inbounds %struct.cluster_save, %struct.cluster_save* %207, i32 0, i32 1
  %209 = load %struct.buf**, %struct.buf*** %208, align 8
  store %struct.buf** %209, %struct.buf*** %16, align 8
  br label %210

210:                                              ; preds = %218, %206
  %211 = load %struct.buf**, %struct.buf*** %16, align 8
  %212 = load %struct.buf**, %struct.buf*** %17, align 8
  %213 = icmp ule %struct.buf** %211, %212
  br i1 %213, label %214, label %221

214:                                              ; preds = %210
  %215 = load %struct.buf**, %struct.buf*** %16, align 8
  %216 = load %struct.buf*, %struct.buf** %215, align 8
  %217 = call i32 @bdwrite(%struct.buf* %216)
  br label %218

218:                                              ; preds = %214
  %219 = load %struct.buf**, %struct.buf*** %16, align 8
  %220 = getelementptr inbounds %struct.buf*, %struct.buf** %219, i32 1
  store %struct.buf** %220, %struct.buf*** %16, align 8
  br label %210

221:                                              ; preds = %210
  %222 = load %struct.cluster_save*, %struct.cluster_save** %18, align 8
  %223 = load i32, i32* @M_SEGMENT, align 4
  %224 = call i32 @free(%struct.cluster_save* %222, i32 %223)
  %225 = load i64, i64* %11, align 8
  %226 = trunc i64 %225 to i32
  %227 = load %struct.vnode*, %struct.vnode** %6, align 8
  %228 = getelementptr inbounds %struct.vnode, %struct.vnode* %227, i32 0, i32 4
  store i32 %226, i32* %228, align 4
  %229 = load %struct.buf*, %struct.buf** %7, align 8
  %230 = getelementptr inbounds %struct.buf, %struct.buf* %229, i32 0, i32 3
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.vnode*, %struct.vnode** %6, align 8
  %233 = getelementptr inbounds %struct.vnode, %struct.vnode* %232, i32 0, i32 1
  store i32 %231, i32* %233, align 8
  br label %373

234:                                              ; preds = %205
  br label %235

235:                                              ; preds = %234, %150
  br label %236

236:                                              ; preds = %235, %91
  %237 = load %struct.vnode*, %struct.vnode** %6, align 8
  %238 = getelementptr inbounds %struct.vnode, %struct.vnode* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = load i64, i64* @VREG, align 8
  %241 = icmp eq i64 %239, %240
  br i1 %241, label %242, label %291

242:                                              ; preds = %236
  %243 = load %struct.buf*, %struct.buf** %7, align 8
  %244 = getelementptr inbounds %struct.buf, %struct.buf* %243, i32 0, i32 2
  %245 = load i64, i64* %244, align 8
  %246 = load i32, i32* %14, align 4
  %247 = sext i32 %246 to i64
  %248 = add nsw i64 %245, %247
  %249 = load i64, i64* %8, align 8
  %250 = icmp ne i64 %248, %249
  br i1 %250, label %251, label %291

251:                                              ; preds = %242
  %252 = load %struct.buf*, %struct.buf** %7, align 8
  %253 = getelementptr inbounds %struct.buf, %struct.buf* %252, i32 0, i32 3
  %254 = load i32, i32* %253, align 8
  %255 = sext i32 %254 to i64
  %256 = load %struct.buf*, %struct.buf** %7, align 8
  %257 = getelementptr inbounds %struct.buf, %struct.buf* %256, i32 0, i32 1
  %258 = load i64, i64* %257, align 8
  %259 = icmp eq i64 %255, %258
  br i1 %259, label %260, label %291

260:                                              ; preds = %251
  %261 = load %struct.vnode*, %struct.vnode** %6, align 8
  %262 = load i64, i64* %11, align 8
  %263 = load %struct.buf*, %struct.buf** %7, align 8
  %264 = getelementptr inbounds %struct.buf, %struct.buf* %263, i32 0, i32 3
  %265 = call i64 @VOP_BMAP(%struct.vnode* %261, i64 %262, i32* null, i32* %264, i32* %12, i32* null)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %272, label %267

267:                                              ; preds = %260
  %268 = load %struct.buf*, %struct.buf** %7, align 8
  %269 = getelementptr inbounds %struct.buf, %struct.buf* %268, i32 0, i32 3
  %270 = load i32, i32* %269, align 8
  %271 = icmp eq i32 %270, -1
  br i1 %271, label %272, label %291

272:                                              ; preds = %267, %260
  %273 = load %struct.buf*, %struct.buf** %7, align 8
  %274 = call i32 @bawrite(%struct.buf* %273)
  %275 = load %struct.vnode*, %struct.vnode** %6, align 8
  %276 = getelementptr inbounds %struct.vnode, %struct.vnode* %275, i32 0, i32 2
  store i32 0, i32* %276, align 4
  %277 = load %struct.buf*, %struct.buf** %7, align 8
  %278 = getelementptr inbounds %struct.buf, %struct.buf* %277, i32 0, i32 3
  %279 = load i32, i32* %278, align 8
  %280 = load %struct.vnode*, %struct.vnode** %6, align 8
  %281 = getelementptr inbounds %struct.vnode, %struct.vnode* %280, i32 0, i32 1
  store i32 %279, i32* %281, align 8
  %282 = load i64, i64* %11, align 8
  %283 = add nsw i64 %282, 1
  %284 = trunc i64 %283 to i32
  %285 = load %struct.vnode*, %struct.vnode** %6, align 8
  %286 = getelementptr inbounds %struct.vnode, %struct.vnode* %285, i32 0, i32 3
  store i32 %284, i32* %286, align 8
  %287 = load i64, i64* %11, align 8
  %288 = trunc i64 %287 to i32
  %289 = load %struct.vnode*, %struct.vnode** %6, align 8
  %290 = getelementptr inbounds %struct.vnode, %struct.vnode* %289, i32 0, i32 4
  store i32 %288, i32* %290, align 4
  br label %373

291:                                              ; preds = %267, %251, %242, %236
  %292 = load i32, i32* %12, align 4
  %293 = load %struct.vnode*, %struct.vnode** %6, align 8
  %294 = getelementptr inbounds %struct.vnode, %struct.vnode* %293, i32 0, i32 2
  store i32 %292, i32* %294, align 4
  %295 = load i32, i32* %15, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %308, label %297

297:                                              ; preds = %291
  %298 = load i32, i32* %12, align 4
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %300, label %308

300:                                              ; preds = %297
  %301 = load i64, i64* %11, align 8
  %302 = add nsw i64 %301, 1
  %303 = trunc i64 %302 to i32
  %304 = load %struct.vnode*, %struct.vnode** %6, align 8
  %305 = getelementptr inbounds %struct.vnode, %struct.vnode* %304, i32 0, i32 3
  store i32 %303, i32* %305, align 8
  %306 = load %struct.buf*, %struct.buf** %7, align 8
  %307 = call i32 @bawrite(%struct.buf* %306)
  br label %315

308:                                              ; preds = %297, %291
  %309 = load i64, i64* %11, align 8
  %310 = trunc i64 %309 to i32
  %311 = load %struct.vnode*, %struct.vnode** %6, align 8
  %312 = getelementptr inbounds %struct.vnode, %struct.vnode* %311, i32 0, i32 3
  store i32 %310, i32* %312, align 8
  %313 = load %struct.buf*, %struct.buf** %7, align 8
  %314 = call i32 @bdwrite(%struct.buf* %313)
  br label %315

315:                                              ; preds = %308, %300
  br label %363

316:                                              ; preds = %80
  %317 = load i64, i64* %11, align 8
  %318 = load %struct.vnode*, %struct.vnode** %6, align 8
  %319 = getelementptr inbounds %struct.vnode, %struct.vnode* %318, i32 0, i32 3
  %320 = load i32, i32* %319, align 8
  %321 = load %struct.vnode*, %struct.vnode** %6, align 8
  %322 = getelementptr inbounds %struct.vnode, %struct.vnode* %321, i32 0, i32 2
  %323 = load i32, i32* %322, align 4
  %324 = add nsw i32 %320, %323
  %325 = sext i32 %324 to i64
  %326 = icmp eq i64 %317, %325
  br i1 %326, label %327, label %352

327:                                              ; preds = %316
  %328 = load %struct.buf*, %struct.buf** %7, align 8
  %329 = call i32 @bdwrite(%struct.buf* %328)
  %330 = load i32, i32* %9, align 4
  %331 = icmp sgt i32 %330, 1
  br i1 %331, label %332, label %344

332:                                              ; preds = %327
  %333 = load %struct.vnode*, %struct.vnode** %6, align 8
  %334 = load i32, i32* %14, align 4
  %335 = load %struct.vnode*, %struct.vnode** %6, align 8
  %336 = getelementptr inbounds %struct.vnode, %struct.vnode* %335, i32 0, i32 3
  %337 = load i32, i32* %336, align 8
  %338 = load %struct.vnode*, %struct.vnode** %6, align 8
  %339 = getelementptr inbounds %struct.vnode, %struct.vnode* %338, i32 0, i32 2
  %340 = load i32, i32* %339, align 4
  %341 = add nsw i32 %340, 1
  %342 = load i32, i32* %10, align 4
  %343 = call i32 @cluster_wbuild_wb(%struct.vnode* %333, i32 %334, i32 %337, i32 %341, i32 %342)
  br label %344

344:                                              ; preds = %332, %327
  %345 = load %struct.vnode*, %struct.vnode** %6, align 8
  %346 = getelementptr inbounds %struct.vnode, %struct.vnode* %345, i32 0, i32 2
  store i32 0, i32* %346, align 4
  %347 = load i64, i64* %11, align 8
  %348 = add nsw i64 %347, 1
  %349 = trunc i64 %348 to i32
  %350 = load %struct.vnode*, %struct.vnode** %6, align 8
  %351 = getelementptr inbounds %struct.vnode, %struct.vnode* %350, i32 0, i32 3
  store i32 %349, i32* %351, align 8
  br label %362

352:                                              ; preds = %316
  %353 = call i64 (...) @vm_page_count_severe()
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %355, label %358

355:                                              ; preds = %352
  %356 = load %struct.buf*, %struct.buf** %7, align 8
  %357 = call i32 @bawrite(%struct.buf* %356)
  br label %361

358:                                              ; preds = %352
  %359 = load %struct.buf*, %struct.buf** %7, align 8
  %360 = call i32 @bdwrite(%struct.buf* %359)
  br label %361

361:                                              ; preds = %358, %355
  br label %362

362:                                              ; preds = %361, %344
  br label %363

363:                                              ; preds = %362, %315
  %364 = load i64, i64* %11, align 8
  %365 = trunc i64 %364 to i32
  %366 = load %struct.vnode*, %struct.vnode** %6, align 8
  %367 = getelementptr inbounds %struct.vnode, %struct.vnode* %366, i32 0, i32 4
  store i32 %365, i32* %367, align 4
  %368 = load %struct.buf*, %struct.buf** %7, align 8
  %369 = getelementptr inbounds %struct.buf, %struct.buf* %368, i32 0, i32 3
  %370 = load i32, i32* %369, align 8
  %371 = load %struct.vnode*, %struct.vnode** %6, align 8
  %372 = getelementptr inbounds %struct.vnode, %struct.vnode* %371, i32 0, i32 1
  store i32 %370, i32* %372, align 8
  br label %373

373:                                              ; preds = %363, %272, %221, %158
  ret void
}

declare dso_local i32 @DOINGASYNC(%struct.vnode*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @btodb(i32) #1

declare dso_local i32 @cluster_wbuild_wb(%struct.vnode*, i32, i32, i32, i32) #1

declare dso_local %struct.cluster_save* @cluster_collectbufs(%struct.vnode*, %struct.buf*, i32) #1

declare dso_local i32 @bawrite(%struct.buf*) #1

declare dso_local i64 @VOP_REALLOCBLKS(%struct.vnode*, %struct.cluster_save*) #1

declare dso_local i32 @brelse(%struct.buf*) #1

declare dso_local i32 @free(%struct.cluster_save*, i32) #1

declare dso_local i32 @bdwrite(%struct.buf*) #1

declare dso_local i64 @VOP_BMAP(%struct.vnode*, i64, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @vm_page_count_severe(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
