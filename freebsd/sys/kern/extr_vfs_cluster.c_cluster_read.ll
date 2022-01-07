; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_cluster.c_cluster_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_cluster.c_cluster_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.vnode = type { %struct.bufobj, %struct.TYPE_4__* }
%struct.bufobj = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.ucred = type { i32 }
%struct.buf = type { i32, i64, i64, i32, i8*, i32*, i32, i8* }

@curthread = common dso_local global %struct.thread* null, align 8
@unmapped_buf_allowed = common dso_local global i32 0, align 4
@GB_UNMAPPED = common dso_local global i32 0, align 4
@read_max = common dso_local global i32 0, align 4
@nbuf = common dso_local global i32 0, align 4
@GB_NOSPARSE = common dso_local global i32 0, align 4
@B_CACHE = common dso_local global i32 0, align 4
@B_RAM = common dso_local global i32 0, align 4
@B_INVAL = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_NOWAIT = common dso_local global i32 0, align 4
@NOOFFSET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"cluster_read: no buffer offset\00", align 1
@read_min = common dso_local global i64 0, align 8
@BIO_READ = common dso_local global i8* null, align 8
@B_CLUSTER = common dso_local global i32 0, align 4
@BIO_ERROR = common dso_local global i32 0, align 4
@B_ASYNC = common dso_local global i32 0, align 4
@B_DELWRI = common dso_local global i32 0, align 4
@racct_enable = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cluster_read(%struct.vnode* %0, i64 %1, i32 %2, i64 %3, %struct.ucred* %4, i64 %5, i32 %6, i32 %7, %struct.buf** %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.vnode*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.ucred*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.buf**, align 8
  %20 = alloca %struct.buf*, align 8
  %21 = alloca %struct.buf*, align 8
  %22 = alloca %struct.buf*, align 8
  %23 = alloca %struct.bufobj*, align 8
  %24 = alloca %struct.thread*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i64, align 8
  %33 = alloca i32, align 4
  %34 = alloca i64, align 8
  store %struct.vnode* %0, %struct.vnode** %11, align 8
  store i64 %1, i64* %12, align 8
  store i32 %2, i32* %13, align 4
  store i64 %3, i64* %14, align 8
  store %struct.ucred* %4, %struct.ucred** %15, align 8
  store i64 %5, i64* %16, align 8
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store %struct.buf** %8, %struct.buf*** %19, align 8
  store i32 0, i32* %29, align 4
  %35 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %35, %struct.thread** %24, align 8
  %36 = load %struct.vnode*, %struct.vnode** %11, align 8
  %37 = getelementptr inbounds %struct.vnode, %struct.vnode* %36, i32 0, i32 0
  store %struct.bufobj* %37, %struct.bufobj** %23, align 8
  %38 = load i32, i32* @unmapped_buf_allowed, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %9
  %41 = load i32, i32* @GB_UNMAPPED, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %18, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %18, align 4
  br label %45

45:                                               ; preds = %40, %9
  %46 = load %struct.vnode*, %struct.vnode** %11, align 8
  %47 = getelementptr inbounds %struct.vnode, %struct.vnode* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %14, align 8
  %52 = sdiv i64 %50, %51
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %28, align 4
  %54 = load i32, i32* %17, align 4
  store i32 %54, i32* %27, align 4
  %55 = load i32, i32* @read_max, align 4
  %56 = load i32, i32* %27, align 4
  %57 = call i32 @min(i32 %55, i32 %56)
  store i32 %57, i32* %27, align 4
  %58 = load i32, i32* @nbuf, align 4
  %59 = sdiv i32 %58, 8
  %60 = load i32, i32* %27, align 4
  %61 = call i32 @min(i32 %59, i32 %60)
  store i32 %61, i32* %27, align 4
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* %27, align 4
  %64 = add nsw i32 %62, %63
  %65 = add nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = load i64, i64* %14, align 8
  %68 = mul nsw i64 %66, %67
  %69 = load i64, i64* %12, align 8
  %70 = icmp sgt i64 %68, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %45
  %72 = load i64, i64* %12, align 8
  %73 = load i64, i64* %14, align 8
  %74 = sdiv i64 %72, %73
  %75 = load i32, i32* %13, align 4
  %76 = sext i32 %75 to i64
  %77 = sub nsw i64 %74, %76
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %27, align 4
  br label %79

79:                                               ; preds = %71, %45
  %80 = load %struct.vnode*, %struct.vnode** %11, align 8
  %81 = load i32, i32* %13, align 4
  %82 = load i64, i64* %14, align 8
  %83 = load i32, i32* %18, align 4
  %84 = call i32 @getblkx(%struct.vnode* %80, i32 %81, i64 %82, i32 0, i32 0, i32 %83, %struct.buf** %20)
  store i32 %84, i32* %29, align 4
  %85 = load i32, i32* %29, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %79
  %88 = load %struct.buf**, %struct.buf*** %19, align 8
  store %struct.buf* null, %struct.buf** %88, align 8
  %89 = load i32, i32* %29, align 4
  store i32 %89, i32* %10, align 4
  br label %506

90:                                               ; preds = %79
  %91 = load i32, i32* @GB_NOSPARSE, align 4
  %92 = xor i32 %91, -1
  %93 = load i32, i32* %18, align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* %18, align 4
  %95 = load i32, i32* %13, align 4
  store i32 %95, i32* %26, align 4
  %96 = load %struct.buf*, %struct.buf** %20, align 8
  store %struct.buf* %96, %struct.buf** %22, align 8
  %97 = load %struct.buf**, %struct.buf*** %19, align 8
  store %struct.buf* %96, %struct.buf** %97, align 8
  %98 = load %struct.buf*, %struct.buf** %20, align 8
  %99 = getelementptr inbounds %struct.buf, %struct.buf* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @B_CACHE, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %190

104:                                              ; preds = %90
  %105 = load i32, i32* %17, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %104
  store i32 0, i32* %10, align 4
  br label %506

108:                                              ; preds = %104
  %109 = load %struct.buf*, %struct.buf** %20, align 8
  %110 = getelementptr inbounds %struct.buf, %struct.buf* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @B_RAM, align 4
  %113 = and i32 %111, %112
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %108
  store i32 0, i32* %10, align 4
  br label %506

116:                                              ; preds = %108
  %117 = load i32, i32* @B_RAM, align 4
  %118 = xor i32 %117, -1
  %119 = load %struct.buf*, %struct.buf** %20, align 8
  %120 = getelementptr inbounds %struct.buf, %struct.buf* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = and i32 %121, %118
  store i32 %122, i32* %120, align 8
  %123 = load %struct.bufobj*, %struct.bufobj** %23, align 8
  %124 = call i32 @BO_RLOCK(%struct.bufobj* %123)
  store i32 1, i32* %31, align 4
  br label %125

125:                                              ; preds = %174, %116
  %126 = load i32, i32* %31, align 4
  %127 = load i32, i32* %27, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %177

129:                                              ; preds = %125
  %130 = load %struct.vnode*, %struct.vnode** %11, align 8
  %131 = getelementptr inbounds %struct.vnode, %struct.vnode* %130, i32 0, i32 0
  %132 = load i32, i32* %13, align 4
  %133 = load i32, i32* %31, align 4
  %134 = add nsw i32 %132, %133
  %135 = call %struct.buf* @gbincore(%struct.bufobj* %131, i32 %134)
  store %struct.buf* %135, %struct.buf** %21, align 8
  %136 = load %struct.buf*, %struct.buf** %21, align 8
  %137 = icmp eq %struct.buf* %136, null
  br i1 %137, label %145, label %138

138:                                              ; preds = %129
  %139 = load %struct.buf*, %struct.buf** %21, align 8
  %140 = getelementptr inbounds %struct.buf, %struct.buf* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @B_INVAL, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %138, %129
  br label %177

146:                                              ; preds = %138
  %147 = load i32, i32* %31, align 4
  %148 = load i32, i32* %28, align 4
  %149 = srem i32 %147, %148
  %150 = load i32, i32* %28, align 4
  %151 = sub nsw i32 %150, 1
  %152 = icmp eq i32 %149, %151
  br i1 %152, label %158, label %153

153:                                              ; preds = %146
  %154 = load i32, i32* %31, align 4
  %155 = load i32, i32* %27, align 4
  %156 = sub nsw i32 %155, 1
  %157 = icmp eq i32 %154, %156
  br i1 %157, label %158, label %173

158:                                              ; preds = %153, %146
  %159 = load %struct.buf*, %struct.buf** %21, align 8
  %160 = load i32, i32* @LK_EXCLUSIVE, align 4
  %161 = load i32, i32* @LK_NOWAIT, align 4
  %162 = or i32 %160, %161
  %163 = call i64 @BUF_LOCK(%struct.buf* %159, i32 %162, i32* null)
  %164 = icmp eq i64 0, %163
  br i1 %164, label %165, label %173

165:                                              ; preds = %158
  %166 = load i32, i32* @B_RAM, align 4
  %167 = load %struct.buf*, %struct.buf** %21, align 8
  %168 = getelementptr inbounds %struct.buf, %struct.buf* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = or i32 %169, %166
  store i32 %170, i32* %168, align 8
  %171 = load %struct.buf*, %struct.buf** %21, align 8
  %172 = call i32 @BUF_UNLOCK(%struct.buf* %171)
  br label %173

173:                                              ; preds = %165, %158, %153
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %31, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %31, align 4
  br label %125

177:                                              ; preds = %145, %125
  %178 = load %struct.bufobj*, %struct.bufobj** %23, align 8
  %179 = call i32 @BO_RUNLOCK(%struct.bufobj* %178)
  %180 = load i32, i32* %31, align 4
  %181 = load i32, i32* %27, align 4
  %182 = icmp sge i32 %180, %181
  br i1 %182, label %183, label %184

183:                                              ; preds = %177
  store i32 0, i32* %10, align 4
  br label %506

184:                                              ; preds = %177
  %185 = load i32, i32* %31, align 4
  %186 = load i32, i32* %13, align 4
  %187 = add nsw i32 %186, %185
  store i32 %187, i32* %13, align 4
  br label %188

188:                                              ; preds = %184
  br label %189

189:                                              ; preds = %188
  store %struct.buf* null, %struct.buf** %20, align 8
  store %struct.buf* null, %struct.buf** %22, align 8
  br label %286

190:                                              ; preds = %90
  %191 = load %struct.buf*, %struct.buf** %20, align 8
  %192 = getelementptr inbounds %struct.buf, %struct.buf* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  store i64 %193, i64* %32, align 8
  %194 = load %struct.buf*, %struct.buf** %20, align 8
  %195 = getelementptr inbounds %struct.buf, %struct.buf* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @NOOFFSET, align 8
  %198 = icmp ne i64 %196, %197
  %199 = zext i1 %198 to i32
  %200 = call i32 @KASSERT(i32 %199, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %30, align 4
  %201 = load i64, i64* @read_min, align 8
  %202 = load i64, i64* %14, align 8
  %203 = mul nsw i64 %201, %202
  store i64 %203, i64* %34, align 8
  %204 = load i64, i64* %34, align 8
  %205 = load i64, i64* %16, align 8
  %206 = icmp sgt i64 %204, %205
  br i1 %206, label %207, label %209

207:                                              ; preds = %190
  %208 = load i64, i64* %34, align 8
  store i64 %208, i64* %16, align 8
  br label %209

209:                                              ; preds = %207, %190
  %210 = load i64, i64* %32, align 8
  %211 = load i64, i64* %16, align 8
  %212 = add nsw i64 %210, %211
  %213 = load i64, i64* %12, align 8
  %214 = icmp sgt i64 %212, %213
  br i1 %214, label %215, label %219

215:                                              ; preds = %209
  %216 = load i64, i64* %12, align 8
  %217 = load i64, i64* %32, align 8
  %218 = sub nsw i64 %216, %217
  store i64 %218, i64* %16, align 8
  br label %219

219:                                              ; preds = %215, %209
  %220 = load i64, i64* %16, align 8
  %221 = load i64, i64* %14, align 8
  %222 = call i32 @howmany(i64 %220, i64 %221)
  store i32 %222, i32* %33, align 4
  %223 = load i32, i32* %33, align 4
  %224 = load i32, i32* %28, align 4
  %225 = icmp sgt i32 %223, %224
  br i1 %225, label %226, label %228

226:                                              ; preds = %219
  %227 = load i32, i32* %28, align 4
  store i32 %227, i32* %33, align 4
  br label %228

228:                                              ; preds = %226, %219
  %229 = load i32, i32* %33, align 4
  %230 = icmp sgt i32 %229, 1
  br i1 %230, label %231, label %242

231:                                              ; preds = %228
  %232 = load %struct.vnode*, %struct.vnode** %11, align 8
  %233 = load i32, i32* %13, align 4
  %234 = call i32 @VOP_BMAP(%struct.vnode* %232, i32 %233, i32* null, i32* %25, i32* %30, i32* null)
  store i32 %234, i32* %29, align 4
  %235 = load i32, i32* %29, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %240, label %237

237:                                              ; preds = %231
  %238 = load i32, i32* %25, align 4
  %239 = icmp eq i32 %238, -1
  br i1 %239, label %240, label %241

240:                                              ; preds = %237, %231
  store i32 0, i32* %30, align 4
  br label %241

241:                                              ; preds = %240, %237
  br label %242

242:                                              ; preds = %241, %228
  %243 = load i32, i32* %30, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %274

245:                                              ; preds = %242
  %246 = load i32, i32* %30, align 4
  %247 = add nsw i32 %246, 1
  %248 = load i32, i32* %33, align 4
  %249 = call i32 @min(i32 %247, i32 %248)
  store i32 %249, i32* %30, align 4
  %250 = load i32, i32* %30, align 4
  %251 = load i32, i32* %33, align 4
  %252 = icmp slt i32 %250, %251
  br i1 %252, label %253, label %255

253:                                              ; preds = %245
  %254 = load i32, i32* %30, align 4
  store i32 %254, i32* %33, align 4
  br label %255

255:                                              ; preds = %253, %245
  %256 = load %struct.vnode*, %struct.vnode** %11, align 8
  %257 = load i64, i64* %12, align 8
  %258 = load i32, i32* %13, align 4
  %259 = load i32, i32* %25, align 4
  %260 = load i64, i64* %14, align 8
  %261 = load i32, i32* %33, align 4
  %262 = load i32, i32* %18, align 4
  %263 = load %struct.buf*, %struct.buf** %20, align 8
  %264 = call %struct.buf* @cluster_rbuild(%struct.vnode* %256, i64 %257, i32 %258, i32 %259, i64 %260, i32 %261, i32 %262, %struct.buf* %263)
  store %struct.buf* %264, %struct.buf** %20, align 8
  %265 = load %struct.buf*, %struct.buf** %20, align 8
  %266 = getelementptr inbounds %struct.buf, %struct.buf* %265, i32 0, i32 2
  %267 = load i64, i64* %266, align 8
  %268 = load i64, i64* %14, align 8
  %269 = sdiv i64 %267, %268
  %270 = load i32, i32* %13, align 4
  %271 = sext i32 %270 to i64
  %272 = add nsw i64 %271, %269
  %273 = trunc i64 %272 to i32
  store i32 %273, i32* %13, align 4
  br label %285

274:                                              ; preds = %242
  %275 = load i32, i32* @B_RAM, align 4
  %276 = load %struct.buf*, %struct.buf** %20, align 8
  %277 = getelementptr inbounds %struct.buf, %struct.buf* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = or i32 %278, %275
  store i32 %279, i32* %277, align 8
  %280 = load i8*, i8** @BIO_READ, align 8
  %281 = load %struct.buf*, %struct.buf** %20, align 8
  %282 = getelementptr inbounds %struct.buf, %struct.buf* %281, i32 0, i32 7
  store i8* %280, i8** %282, align 8
  %283 = load i32, i32* %13, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %13, align 4
  br label %285

285:                                              ; preds = %274, %255
  br label %286

286:                                              ; preds = %285, %189
  %287 = load %struct.buf*, %struct.buf** %20, align 8
  %288 = icmp ne %struct.buf* %287, null
  br i1 %288, label %289, label %340

289:                                              ; preds = %286
  %290 = load %struct.buf*, %struct.buf** %20, align 8
  %291 = getelementptr inbounds %struct.buf, %struct.buf* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = load i32, i32* @B_CLUSTER, align 4
  %294 = and i32 %292, %293
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %296, label %299

296:                                              ; preds = %289
  %297 = load %struct.buf*, %struct.buf** %20, align 8
  %298 = call i32 @vfs_busy_pages(%struct.buf* %297, i32 0)
  br label %299

299:                                              ; preds = %296, %289
  %300 = load i32, i32* @B_INVAL, align 4
  %301 = xor i32 %300, -1
  %302 = load %struct.buf*, %struct.buf** %20, align 8
  %303 = getelementptr inbounds %struct.buf, %struct.buf* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = and i32 %304, %301
  store i32 %305, i32* %303, align 8
  %306 = load i32, i32* @BIO_ERROR, align 4
  %307 = xor i32 %306, -1
  %308 = load %struct.buf*, %struct.buf** %20, align 8
  %309 = getelementptr inbounds %struct.buf, %struct.buf* %308, i32 0, i32 6
  %310 = load i32, i32* %309, align 8
  %311 = and i32 %310, %307
  store i32 %311, i32* %309, align 8
  %312 = load %struct.buf*, %struct.buf** %20, align 8
  %313 = getelementptr inbounds %struct.buf, %struct.buf* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = load i32, i32* @B_ASYNC, align 4
  %316 = and i32 %314, %315
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %323, label %318

318:                                              ; preds = %299
  %319 = load %struct.buf*, %struct.buf** %20, align 8
  %320 = getelementptr inbounds %struct.buf, %struct.buf* %319, i32 0, i32 5
  %321 = load i32*, i32** %320, align 8
  %322 = icmp ne i32* %321, null
  br i1 %322, label %323, label %326

323:                                              ; preds = %318, %299
  %324 = load %struct.buf*, %struct.buf** %20, align 8
  %325 = call i32 @BUF_KERNPROC(%struct.buf* %324)
  br label %326

326:                                              ; preds = %323, %318
  %327 = load %struct.buf*, %struct.buf** %20, align 8
  %328 = getelementptr inbounds %struct.buf, %struct.buf* %327, i32 0, i32 3
  %329 = load i32, i32* %328, align 8
  %330 = call i8* @dbtob(i32 %329)
  %331 = load %struct.buf*, %struct.buf** %20, align 8
  %332 = getelementptr inbounds %struct.buf, %struct.buf* %331, i32 0, i32 4
  store i8* %330, i8** %332, align 8
  %333 = load %struct.buf*, %struct.buf** %20, align 8
  %334 = call i32 @bstrategy(%struct.buf* %333)
  %335 = load %struct.thread*, %struct.thread** %24, align 8
  %336 = getelementptr inbounds %struct.thread, %struct.thread* %335, i32 0, i32 0
  %337 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 4
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* %337, align 4
  br label %340

340:                                              ; preds = %326, %286
  br label %341

341:                                              ; preds = %477, %431, %407, %389, %340
  %342 = load i32, i32* %13, align 4
  %343 = load i32, i32* %26, align 4
  %344 = load i32, i32* %27, align 4
  %345 = add nsw i32 %343, %344
  %346 = icmp slt i32 %342, %345
  br i1 %346, label %347, label %491

347:                                              ; preds = %341
  %348 = load %struct.vnode*, %struct.vnode** %11, align 8
  %349 = load i32, i32* %13, align 4
  %350 = call i32 @VOP_BMAP(%struct.vnode* %348, i32 %349, i32* null, i32* %25, i32* %30, i32* null)
  store i32 %350, i32* %29, align 4
  %351 = load i32, i32* %29, align 4
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %354

353:                                              ; preds = %347
  br label %491

354:                                              ; preds = %347
  %355 = load i32, i32* %25, align 4
  %356 = icmp eq i32 %355, -1
  br i1 %356, label %357, label %358

357:                                              ; preds = %354
  br label %491

358:                                              ; preds = %354
  %359 = load i32, i32* %30, align 4
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %393

361:                                              ; preds = %358
  %362 = load i32, i32* %30, align 4
  %363 = add nsw i32 %362, 1
  %364 = load i32, i32* %28, align 4
  %365 = call i32 @min(i32 %363, i32 %364)
  store i32 %365, i32* %30, align 4
  %366 = load %struct.vnode*, %struct.vnode** %11, align 8
  %367 = load i64, i64* %12, align 8
  %368 = load i32, i32* %13, align 4
  %369 = load i32, i32* %25, align 4
  %370 = load i64, i64* %14, align 8
  %371 = load i32, i32* %30, align 4
  %372 = load i32, i32* %18, align 4
  %373 = call %struct.buf* @cluster_rbuild(%struct.vnode* %366, i64 %367, i32 %368, i32 %369, i64 %370, i32 %371, i32 %372, %struct.buf* null)
  store %struct.buf* %373, %struct.buf** %21, align 8
  %374 = load %struct.buf*, %struct.buf** %21, align 8
  %375 = getelementptr inbounds %struct.buf, %struct.buf* %374, i32 0, i32 2
  %376 = load i64, i64* %375, align 8
  %377 = load i64, i64* %14, align 8
  %378 = sdiv i64 %376, %377
  %379 = load i32, i32* %13, align 4
  %380 = sext i32 %379 to i64
  %381 = add nsw i64 %380, %378
  %382 = trunc i64 %381 to i32
  store i32 %382, i32* %13, align 4
  %383 = load %struct.buf*, %struct.buf** %21, align 8
  %384 = getelementptr inbounds %struct.buf, %struct.buf* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 8
  %386 = load i32, i32* @B_DELWRI, align 4
  %387 = and i32 %385, %386
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %389, label %392

389:                                              ; preds = %361
  %390 = load %struct.buf*, %struct.buf** %21, align 8
  %391 = call i32 @bqrelse(%struct.buf* %390)
  br label %341

392:                                              ; preds = %361
  br label %424

393:                                              ; preds = %358
  %394 = load %struct.vnode*, %struct.vnode** %11, align 8
  %395 = load i32, i32* %13, align 4
  %396 = load i64, i64* %14, align 8
  %397 = load i32, i32* %18, align 4
  %398 = call %struct.buf* @getblk(%struct.vnode* %394, i32 %395, i64 %396, i32 0, i32 0, i32 %397)
  store %struct.buf* %398, %struct.buf** %21, align 8
  %399 = load i32, i32* %13, align 4
  %400 = add nsw i32 %399, 1
  store i32 %400, i32* %13, align 4
  %401 = load %struct.buf*, %struct.buf** %21, align 8
  %402 = getelementptr inbounds %struct.buf, %struct.buf* %401, i32 0, i32 0
  %403 = load i32, i32* %402, align 8
  %404 = load i32, i32* @B_DELWRI, align 4
  %405 = and i32 %403, %404
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %407, label %410

407:                                              ; preds = %393
  %408 = load %struct.buf*, %struct.buf** %21, align 8
  %409 = call i32 @bqrelse(%struct.buf* %408)
  br label %341

410:                                              ; preds = %393
  %411 = load i32, i32* @B_ASYNC, align 4
  %412 = load i32, i32* @B_RAM, align 4
  %413 = or i32 %411, %412
  %414 = load %struct.buf*, %struct.buf** %21, align 8
  %415 = getelementptr inbounds %struct.buf, %struct.buf* %414, i32 0, i32 0
  %416 = load i32, i32* %415, align 8
  %417 = or i32 %416, %413
  store i32 %417, i32* %415, align 8
  %418 = load i8*, i8** @BIO_READ, align 8
  %419 = load %struct.buf*, %struct.buf** %21, align 8
  %420 = getelementptr inbounds %struct.buf, %struct.buf* %419, i32 0, i32 7
  store i8* %418, i8** %420, align 8
  %421 = load i32, i32* %25, align 4
  %422 = load %struct.buf*, %struct.buf** %21, align 8
  %423 = getelementptr inbounds %struct.buf, %struct.buf* %422, i32 0, i32 3
  store i32 %421, i32* %423, align 8
  br label %424

424:                                              ; preds = %410, %392
  %425 = load %struct.buf*, %struct.buf** %21, align 8
  %426 = getelementptr inbounds %struct.buf, %struct.buf* %425, i32 0, i32 0
  %427 = load i32, i32* %426, align 8
  %428 = load i32, i32* @B_CACHE, align 4
  %429 = and i32 %427, %428
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %431, label %440

431:                                              ; preds = %424
  %432 = load i32, i32* @B_ASYNC, align 4
  %433 = xor i32 %432, -1
  %434 = load %struct.buf*, %struct.buf** %21, align 8
  %435 = getelementptr inbounds %struct.buf, %struct.buf* %434, i32 0, i32 0
  %436 = load i32, i32* %435, align 8
  %437 = and i32 %436, %433
  store i32 %437, i32* %435, align 8
  %438 = load %struct.buf*, %struct.buf** %21, align 8
  %439 = call i32 @bqrelse(%struct.buf* %438)
  br label %341

440:                                              ; preds = %424
  %441 = load %struct.buf*, %struct.buf** %21, align 8
  %442 = getelementptr inbounds %struct.buf, %struct.buf* %441, i32 0, i32 0
  %443 = load i32, i32* %442, align 8
  %444 = load i32, i32* @B_CLUSTER, align 4
  %445 = and i32 %443, %444
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %447, label %450

447:                                              ; preds = %440
  %448 = load %struct.buf*, %struct.buf** %21, align 8
  %449 = call i32 @vfs_busy_pages(%struct.buf* %448, i32 0)
  br label %450

450:                                              ; preds = %447, %440
  %451 = load i32, i32* @B_INVAL, align 4
  %452 = xor i32 %451, -1
  %453 = load %struct.buf*, %struct.buf** %21, align 8
  %454 = getelementptr inbounds %struct.buf, %struct.buf* %453, i32 0, i32 0
  %455 = load i32, i32* %454, align 8
  %456 = and i32 %455, %452
  store i32 %456, i32* %454, align 8
  %457 = load i32, i32* @BIO_ERROR, align 4
  %458 = xor i32 %457, -1
  %459 = load %struct.buf*, %struct.buf** %21, align 8
  %460 = getelementptr inbounds %struct.buf, %struct.buf* %459, i32 0, i32 6
  %461 = load i32, i32* %460, align 8
  %462 = and i32 %461, %458
  store i32 %462, i32* %460, align 8
  %463 = load %struct.buf*, %struct.buf** %21, align 8
  %464 = getelementptr inbounds %struct.buf, %struct.buf* %463, i32 0, i32 0
  %465 = load i32, i32* %464, align 8
  %466 = load i32, i32* @B_ASYNC, align 4
  %467 = and i32 %465, %466
  %468 = icmp ne i32 %467, 0
  br i1 %468, label %474, label %469

469:                                              ; preds = %450
  %470 = load %struct.buf*, %struct.buf** %21, align 8
  %471 = getelementptr inbounds %struct.buf, %struct.buf* %470, i32 0, i32 5
  %472 = load i32*, i32** %471, align 8
  %473 = icmp ne i32* %472, null
  br i1 %473, label %474, label %477

474:                                              ; preds = %469, %450
  %475 = load %struct.buf*, %struct.buf** %21, align 8
  %476 = call i32 @BUF_KERNPROC(%struct.buf* %475)
  br label %477

477:                                              ; preds = %474, %469
  %478 = load %struct.buf*, %struct.buf** %21, align 8
  %479 = getelementptr inbounds %struct.buf, %struct.buf* %478, i32 0, i32 3
  %480 = load i32, i32* %479, align 8
  %481 = call i8* @dbtob(i32 %480)
  %482 = load %struct.buf*, %struct.buf** %21, align 8
  %483 = getelementptr inbounds %struct.buf, %struct.buf* %482, i32 0, i32 4
  store i8* %481, i8** %483, align 8
  %484 = load %struct.buf*, %struct.buf** %21, align 8
  %485 = call i32 @bstrategy(%struct.buf* %484)
  %486 = load %struct.thread*, %struct.thread** %24, align 8
  %487 = getelementptr inbounds %struct.thread, %struct.thread* %486, i32 0, i32 0
  %488 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %487, i32 0, i32 0
  %489 = load i32, i32* %488, align 4
  %490 = add nsw i32 %489, 1
  store i32 %490, i32* %488, align 4
  br label %341

491:                                              ; preds = %357, %353, %341
  %492 = load %struct.buf*, %struct.buf** %22, align 8
  %493 = icmp ne %struct.buf* %492, null
  br i1 %493, label %494, label %504

494:                                              ; preds = %491
  %495 = load %struct.buf*, %struct.buf** %22, align 8
  %496 = call i32 @bufwait(%struct.buf* %495)
  store i32 %496, i32* %29, align 4
  %497 = load i32, i32* %29, align 4
  %498 = icmp ne i32 %497, 0
  br i1 %498, label %499, label %503

499:                                              ; preds = %494
  %500 = load %struct.buf*, %struct.buf** %22, align 8
  %501 = call i32 @brelse(%struct.buf* %500)
  %502 = load %struct.buf**, %struct.buf*** %19, align 8
  store %struct.buf* null, %struct.buf** %502, align 8
  br label %503

503:                                              ; preds = %499, %494
  br label %504

504:                                              ; preds = %503, %491
  %505 = load i32, i32* %29, align 4
  store i32 %505, i32* %10, align 4
  br label %506

506:                                              ; preds = %504, %183, %115, %107, %87
  %507 = load i32, i32* %10, align 4
  ret i32 %507
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @getblkx(%struct.vnode*, i32, i64, i32, i32, i32, %struct.buf**) #1

declare dso_local i32 @BO_RLOCK(%struct.bufobj*) #1

declare dso_local %struct.buf* @gbincore(%struct.bufobj*, i32) #1

declare dso_local i64 @BUF_LOCK(%struct.buf*, i32, i32*) #1

declare dso_local i32 @BUF_UNLOCK(%struct.buf*) #1

declare dso_local i32 @BO_RUNLOCK(%struct.bufobj*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @howmany(i64, i64) #1

declare dso_local i32 @VOP_BMAP(%struct.vnode*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local %struct.buf* @cluster_rbuild(%struct.vnode*, i64, i32, i32, i64, i32, i32, %struct.buf*) #1

declare dso_local i32 @vfs_busy_pages(%struct.buf*, i32) #1

declare dso_local i32 @BUF_KERNPROC(%struct.buf*) #1

declare dso_local i8* @dbtob(i32) #1

declare dso_local i32 @bstrategy(%struct.buf*) #1

declare dso_local i32 @bqrelse(%struct.buf*) #1

declare dso_local %struct.buf* @getblk(%struct.vnode*, i32, i64, i32, i32, i32) #1

declare dso_local i32 @bufwait(%struct.buf*) #1

declare dso_local i32 @brelse(%struct.buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
