; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_alloc.c_ext2_dirpref.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_alloc.c_ext2_dirpref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.m_ext2fs*, i32 }
%struct.m_ext2fs = type { i64, i32, i64, i64, i32, i32, i32, i64*, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"ext2fs_dirpref\00", align 1
@VV_ROOT = common dso_local global i32 0, align 4
@AVGDIRSIZE = common dso_local global i64 0, align 8
@AFPDIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.inode*)* @ext2_dirpref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ext2_dirpref(%struct.inode* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.m_ext2fs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  %19 = load %struct.inode*, %struct.inode** %3, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @EXT2_MTX(i32 %21)
  %23 = load i32, i32* @MA_OWNED, align 4
  %24 = call i32 @mtx_assert(i32 %22, i32 %23)
  %25 = load %struct.inode*, %struct.inode** %3, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 1
  %27 = load %struct.m_ext2fs*, %struct.m_ext2fs** %26, align 8
  store %struct.m_ext2fs* %27, %struct.m_ext2fs** %4, align 8
  %28 = load %struct.m_ext2fs*, %struct.m_ext2fs** %4, align 8
  %29 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %28, i32 0, i32 9
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.m_ext2fs*, %struct.m_ext2fs** %4, align 8
  %34 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = sdiv i64 %32, %35
  store i64 %36, i64* %10, align 8
  %37 = load %struct.m_ext2fs*, %struct.m_ext2fs** %4, align 8
  %38 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = load %struct.m_ext2fs*, %struct.m_ext2fs** %4, align 8
  %42 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = sdiv i64 %40, %43
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %8, align 4
  %46 = load %struct.m_ext2fs*, %struct.m_ext2fs** %4, align 8
  %47 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.m_ext2fs*, %struct.m_ext2fs** %4, align 8
  %50 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = sdiv i64 %48, %51
  store i64 %52, i64* %11, align 8
  %53 = load %struct.inode*, %struct.inode** %3, align 8
  %54 = call %struct.TYPE_5__* @ITOV(%struct.inode* %53)
  %55 = call i32 @ASSERT_VOP_LOCKED(%struct.TYPE_5__* %54, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %56 = load %struct.inode*, %struct.inode** %3, align 8
  %57 = call %struct.TYPE_5__* @ITOV(%struct.inode* %56)
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @VV_ROOT, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %179

63:                                               ; preds = %1
  %64 = call i32 (...) @arc4random()
  %65 = sext i32 %64 to i64
  %66 = load %struct.m_ext2fs*, %struct.m_ext2fs** %4, align 8
  %67 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = srem i64 %65, %68
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  store i64 %72, i64* %15, align 8
  %73 = load %struct.m_ext2fs*, %struct.m_ext2fs** %4, align 8
  %74 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %16, align 8
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %125, %63
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = load %struct.m_ext2fs*, %struct.m_ext2fs** %4, align 8
  %81 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp slt i64 %79, %82
  br i1 %83, label %84, label %128

84:                                               ; preds = %77
  %85 = load %struct.m_ext2fs*, %struct.m_ext2fs** %4, align 8
  %86 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %85, i32 0, i32 8
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = call i64 @e2fs_gd_get_ndirs(i32* %90)
  %92 = load i64, i64* %16, align 8
  %93 = icmp slt i64 %91, %92
  br i1 %93, label %94, label %124

94:                                               ; preds = %84
  %95 = load %struct.m_ext2fs*, %struct.m_ext2fs** %4, align 8
  %96 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %95, i32 0, i32 8
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %5, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = call i64 @e2fs_gd_get_nifree(i32* %100)
  %102 = load i64, i64* %10, align 8
  %103 = icmp sge i64 %101, %102
  br i1 %103, label %104, label %124

104:                                              ; preds = %94
  %105 = load %struct.m_ext2fs*, %struct.m_ext2fs** %4, align 8
  %106 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %105, i32 0, i32 8
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %5, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = call i32 @e2fs_gd_get_nbfree(i32* %110)
  %112 = load i32, i32* %8, align 4
  %113 = icmp sge i32 %111, %112
  br i1 %113, label %114, label %124

114:                                              ; preds = %104
  %115 = load i32, i32* %5, align 4
  %116 = sext i32 %115 to i64
  store i64 %116, i64* %15, align 8
  %117 = load %struct.m_ext2fs*, %struct.m_ext2fs** %4, align 8
  %118 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %117, i32 0, i32 8
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %5, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = call i64 @e2fs_gd_get_ndirs(i32* %122)
  store i64 %123, i64* %16, align 8
  br label %124

124:                                              ; preds = %114, %104, %94, %84
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %5, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %5, align 4
  br label %77

128:                                              ; preds = %77
  store i32 0, i32* %5, align 4
  br label %129

129:                                              ; preds = %174, %128
  %130 = load i32, i32* %5, align 4
  %131 = load i32, i32* %6, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %177

133:                                              ; preds = %129
  %134 = load %struct.m_ext2fs*, %struct.m_ext2fs** %4, align 8
  %135 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %134, i32 0, i32 8
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %5, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = call i64 @e2fs_gd_get_ndirs(i32* %139)
  %141 = load i64, i64* %16, align 8
  %142 = icmp slt i64 %140, %141
  br i1 %142, label %143, label %173

143:                                              ; preds = %133
  %144 = load %struct.m_ext2fs*, %struct.m_ext2fs** %4, align 8
  %145 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %144, i32 0, i32 8
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %5, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = call i64 @e2fs_gd_get_nifree(i32* %149)
  %151 = load i64, i64* %10, align 8
  %152 = icmp sge i64 %150, %151
  br i1 %152, label %153, label %173

153:                                              ; preds = %143
  %154 = load %struct.m_ext2fs*, %struct.m_ext2fs** %4, align 8
  %155 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %154, i32 0, i32 8
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %5, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = call i32 @e2fs_gd_get_nbfree(i32* %159)
  %161 = load i32, i32* %8, align 4
  %162 = icmp sge i32 %160, %161
  br i1 %162, label %163, label %173

163:                                              ; preds = %153
  %164 = load i32, i32* %5, align 4
  %165 = sext i32 %164 to i64
  store i64 %165, i64* %15, align 8
  %166 = load %struct.m_ext2fs*, %struct.m_ext2fs** %4, align 8
  %167 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %166, i32 0, i32 8
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* %5, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = call i64 @e2fs_gd_get_ndirs(i32* %171)
  store i64 %172, i64* %16, align 8
  br label %173

173:                                              ; preds = %163, %153, %143, %133
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %5, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %5, align 4
  br label %129

177:                                              ; preds = %129
  %178 = load i64, i64* %15, align 8
  store i64 %178, i64* %2, align 8
  br label %422

179:                                              ; preds = %1
  %180 = load i64, i64* %11, align 8
  %181 = load %struct.m_ext2fs*, %struct.m_ext2fs** %4, align 8
  %182 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %181, i32 0, i32 3
  %183 = load i64, i64* %182, align 8
  %184 = sdiv i64 %183, 16
  %185 = add nsw i64 %180, %184
  %186 = load %struct.m_ext2fs*, %struct.m_ext2fs** %4, align 8
  %187 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %186, i32 0, i32 3
  %188 = load i64, i64* %187, align 8
  %189 = trunc i64 %188 to i32
  %190 = call i64 @min(i64 %185, i32 %189)
  store i64 %190, i64* %14, align 8
  %191 = load i64, i64* %10, align 8
  %192 = load i64, i64* %10, align 8
  %193 = sdiv i64 %192, 4
  %194 = sub nsw i64 %191, %193
  store i64 %194, i64* %13, align 8
  %195 = load i64, i64* %13, align 8
  %196 = icmp slt i64 %195, 1
  br i1 %196, label %197, label %198

197:                                              ; preds = %179
  store i64 1, i64* %13, align 8
  br label %198

198:                                              ; preds = %197, %179
  %199 = load i32, i32* %8, align 4
  %200 = load i32, i32* %8, align 4
  %201 = sdiv i32 %200, 4
  %202 = sub nsw i32 %199, %201
  store i32 %202, i32* %9, align 4
  %203 = load i32, i32* %9, align 4
  %204 = icmp slt i32 %203, 1
  br i1 %204, label %205, label %206

205:                                              ; preds = %198
  store i32 1, i32* %9, align 4
  br label %206

206:                                              ; preds = %205, %198
  %207 = load %struct.m_ext2fs*, %struct.m_ext2fs** %4, align 8
  %208 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %207, i32 0, i32 4
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.m_ext2fs*, %struct.m_ext2fs** %4, align 8
  %211 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %210, i32 0, i32 5
  %212 = load i32, i32* %211, align 4
  %213 = mul nsw i32 %209, %212
  store i32 %213, i32* %7, align 4
  %214 = load i64, i64* @AVGDIRSIZE, align 8
  store i64 %214, i64* %17, align 8
  %215 = load i64, i64* %11, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %228

217:                                              ; preds = %206
  %218 = load i32, i32* %7, align 4
  %219 = load i32, i32* %8, align 4
  %220 = load %struct.m_ext2fs*, %struct.m_ext2fs** %4, align 8
  %221 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %220, i32 0, i32 6
  %222 = load i32, i32* %221, align 8
  %223 = mul nsw i32 %219, %222
  %224 = sub nsw i32 %218, %223
  %225 = sext i32 %224 to i64
  %226 = load i64, i64* %11, align 8
  %227 = sdiv i64 %225, %226
  br label %229

228:                                              ; preds = %206
  br label %229

229:                                              ; preds = %228, %217
  %230 = phi i64 [ %227, %217 ], [ 0, %228 ]
  store i64 %230, i64* %12, align 8
  %231 = load i64, i64* %17, align 8
  %232 = load i64, i64* %12, align 8
  %233 = icmp slt i64 %231, %232
  br i1 %233, label %234, label %236

234:                                              ; preds = %229
  %235 = load i64, i64* %12, align 8
  store i64 %235, i64* %17, align 8
  br label %236

236:                                              ; preds = %234, %229
  %237 = load i32, i32* %8, align 4
  %238 = load %struct.m_ext2fs*, %struct.m_ext2fs** %4, align 8
  %239 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %238, i32 0, i32 6
  %240 = load i32, i32* %239, align 8
  %241 = mul nsw i32 %237, %240
  %242 = sext i32 %241 to i64
  %243 = load i64, i64* %17, align 8
  %244 = sdiv i64 %242, %243
  %245 = call i64 @min(i64 %244, i32 255)
  store i64 %245, i64* %18, align 8
  %246 = load i64, i64* %18, align 8
  %247 = load %struct.m_ext2fs*, %struct.m_ext2fs** %4, align 8
  %248 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %247, i32 0, i32 3
  %249 = load i64, i64* %248, align 8
  %250 = load i32, i32* @AFPDIR, align 4
  %251 = sext i32 %250 to i64
  %252 = sdiv i64 %249, %251
  %253 = trunc i64 %252 to i32
  %254 = call i64 @min(i64 %246, i32 %253)
  store i64 %254, i64* %18, align 8
  %255 = load i64, i64* %18, align 8
  %256 = icmp eq i64 %255, 0
  br i1 %256, label %257, label %258

257:                                              ; preds = %236
  store i64 1, i64* %18, align 8
  br label %258

258:                                              ; preds = %257, %236
  %259 = load %struct.m_ext2fs*, %struct.m_ext2fs** %4, align 8
  %260 = load %struct.inode*, %struct.inode** %3, align 8
  %261 = getelementptr inbounds %struct.inode, %struct.inode* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = call i32 @ino_to_cg(%struct.m_ext2fs* %259, i32 %262)
  store i32 %263, i32* %6, align 4
  %264 = load i32, i32* %6, align 4
  store i32 %264, i32* %5, align 4
  br label %265

265:                                              ; preds = %317, %258
  %266 = load i32, i32* %5, align 4
  %267 = sext i32 %266 to i64
  %268 = load %struct.m_ext2fs*, %struct.m_ext2fs** %4, align 8
  %269 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %268, i32 0, i32 0
  %270 = load i64, i64* %269, align 8
  %271 = icmp slt i64 %267, %270
  br i1 %271, label %272, label %320

272:                                              ; preds = %265
  %273 = load %struct.m_ext2fs*, %struct.m_ext2fs** %4, align 8
  %274 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %273, i32 0, i32 8
  %275 = load i32*, i32** %274, align 8
  %276 = load i32, i32* %5, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %275, i64 %277
  %279 = call i64 @e2fs_gd_get_ndirs(i32* %278)
  %280 = load i64, i64* %14, align 8
  %281 = icmp slt i64 %279, %280
  br i1 %281, label %282, label %316

282:                                              ; preds = %272
  %283 = load %struct.m_ext2fs*, %struct.m_ext2fs** %4, align 8
  %284 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %283, i32 0, i32 8
  %285 = load i32*, i32** %284, align 8
  %286 = load i32, i32* %5, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, i32* %285, i64 %287
  %289 = call i64 @e2fs_gd_get_nifree(i32* %288)
  %290 = load i64, i64* %13, align 8
  %291 = icmp sge i64 %289, %290
  br i1 %291, label %292, label %316

292:                                              ; preds = %282
  %293 = load %struct.m_ext2fs*, %struct.m_ext2fs** %4, align 8
  %294 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %293, i32 0, i32 8
  %295 = load i32*, i32** %294, align 8
  %296 = load i32, i32* %5, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32, i32* %295, i64 %297
  %299 = call i32 @e2fs_gd_get_nbfree(i32* %298)
  %300 = load i32, i32* %9, align 4
  %301 = icmp sge i32 %299, %300
  br i1 %301, label %302, label %316

302:                                              ; preds = %292
  %303 = load %struct.m_ext2fs*, %struct.m_ext2fs** %4, align 8
  %304 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %303, i32 0, i32 7
  %305 = load i64*, i64** %304, align 8
  %306 = load i32, i32* %5, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i64, i64* %305, i64 %307
  %309 = load i64, i64* %308, align 8
  %310 = load i64, i64* %18, align 8
  %311 = icmp slt i64 %309, %310
  br i1 %311, label %312, label %315

312:                                              ; preds = %302
  %313 = load i32, i32* %5, align 4
  %314 = sext i32 %313 to i64
  store i64 %314, i64* %2, align 8
  br label %422

315:                                              ; preds = %302
  br label %316

316:                                              ; preds = %315, %292, %282, %272
  br label %317

317:                                              ; preds = %316
  %318 = load i32, i32* %5, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %5, align 4
  br label %265

320:                                              ; preds = %265
  store i32 0, i32* %5, align 4
  br label %321

321:                                              ; preds = %370, %320
  %322 = load i32, i32* %5, align 4
  %323 = load i32, i32* %6, align 4
  %324 = icmp slt i32 %322, %323
  br i1 %324, label %325, label %373

325:                                              ; preds = %321
  %326 = load %struct.m_ext2fs*, %struct.m_ext2fs** %4, align 8
  %327 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %326, i32 0, i32 8
  %328 = load i32*, i32** %327, align 8
  %329 = load i32, i32* %5, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i32, i32* %328, i64 %330
  %332 = call i64 @e2fs_gd_get_ndirs(i32* %331)
  %333 = load i64, i64* %14, align 8
  %334 = icmp slt i64 %332, %333
  br i1 %334, label %335, label %369

335:                                              ; preds = %325
  %336 = load %struct.m_ext2fs*, %struct.m_ext2fs** %4, align 8
  %337 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %336, i32 0, i32 8
  %338 = load i32*, i32** %337, align 8
  %339 = load i32, i32* %5, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i32, i32* %338, i64 %340
  %342 = call i64 @e2fs_gd_get_nifree(i32* %341)
  %343 = load i64, i64* %13, align 8
  %344 = icmp sge i64 %342, %343
  br i1 %344, label %345, label %369

345:                                              ; preds = %335
  %346 = load %struct.m_ext2fs*, %struct.m_ext2fs** %4, align 8
  %347 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %346, i32 0, i32 8
  %348 = load i32*, i32** %347, align 8
  %349 = load i32, i32* %5, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i32, i32* %348, i64 %350
  %352 = call i32 @e2fs_gd_get_nbfree(i32* %351)
  %353 = load i32, i32* %9, align 4
  %354 = icmp sge i32 %352, %353
  br i1 %354, label %355, label %369

355:                                              ; preds = %345
  %356 = load %struct.m_ext2fs*, %struct.m_ext2fs** %4, align 8
  %357 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %356, i32 0, i32 7
  %358 = load i64*, i64** %357, align 8
  %359 = load i32, i32* %5, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds i64, i64* %358, i64 %360
  %362 = load i64, i64* %361, align 8
  %363 = load i64, i64* %18, align 8
  %364 = icmp slt i64 %362, %363
  br i1 %364, label %365, label %368

365:                                              ; preds = %355
  %366 = load i32, i32* %5, align 4
  %367 = sext i32 %366 to i64
  store i64 %367, i64* %2, align 8
  br label %422

368:                                              ; preds = %355
  br label %369

369:                                              ; preds = %368, %345, %335, %325
  br label %370

370:                                              ; preds = %369
  %371 = load i32, i32* %5, align 4
  %372 = add nsw i32 %371, 1
  store i32 %372, i32* %5, align 4
  br label %321

373:                                              ; preds = %321
  %374 = load i32, i32* %6, align 4
  store i32 %374, i32* %5, align 4
  br label %375

375:                                              ; preds = %396, %373
  %376 = load i32, i32* %5, align 4
  %377 = sext i32 %376 to i64
  %378 = load %struct.m_ext2fs*, %struct.m_ext2fs** %4, align 8
  %379 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %378, i32 0, i32 0
  %380 = load i64, i64* %379, align 8
  %381 = icmp slt i64 %377, %380
  br i1 %381, label %382, label %399

382:                                              ; preds = %375
  %383 = load %struct.m_ext2fs*, %struct.m_ext2fs** %4, align 8
  %384 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %383, i32 0, i32 8
  %385 = load i32*, i32** %384, align 8
  %386 = load i32, i32* %5, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds i32, i32* %385, i64 %387
  %389 = call i64 @e2fs_gd_get_nifree(i32* %388)
  %390 = load i64, i64* %10, align 8
  %391 = icmp sge i64 %389, %390
  br i1 %391, label %392, label %395

392:                                              ; preds = %382
  %393 = load i32, i32* %5, align 4
  %394 = sext i32 %393 to i64
  store i64 %394, i64* %2, align 8
  br label %422

395:                                              ; preds = %382
  br label %396

396:                                              ; preds = %395
  %397 = load i32, i32* %5, align 4
  %398 = add nsw i32 %397, 1
  store i32 %398, i32* %5, align 4
  br label %375

399:                                              ; preds = %375
  store i32 0, i32* %5, align 4
  br label %400

400:                                              ; preds = %416, %399
  %401 = load i32, i32* %5, align 4
  %402 = load i32, i32* %6, align 4
  %403 = icmp slt i32 %401, %402
  br i1 %403, label %404, label %419

404:                                              ; preds = %400
  %405 = load %struct.m_ext2fs*, %struct.m_ext2fs** %4, align 8
  %406 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %405, i32 0, i32 8
  %407 = load i32*, i32** %406, align 8
  %408 = load i32, i32* %5, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds i32, i32* %407, i64 %409
  %411 = call i64 @e2fs_gd_get_nifree(i32* %410)
  %412 = load i64, i64* %10, align 8
  %413 = icmp sge i64 %411, %412
  br i1 %413, label %414, label %415

414:                                              ; preds = %404
  br label %419

415:                                              ; preds = %404
  br label %416

416:                                              ; preds = %415
  %417 = load i32, i32* %5, align 4
  %418 = add nsw i32 %417, 1
  store i32 %418, i32* %5, align 4
  br label %400

419:                                              ; preds = %414, %400
  %420 = load i32, i32* %5, align 4
  %421 = sext i32 %420 to i64
  store i64 %421, i64* %2, align 8
  br label %422

422:                                              ; preds = %419, %392, %365, %312, %177
  %423 = load i64, i64* %2, align 8
  ret i64 %423
}

declare dso_local i32 @mtx_assert(i32, i32) #1

declare dso_local i32 @EXT2_MTX(i32) #1

declare dso_local i32 @ASSERT_VOP_LOCKED(%struct.TYPE_5__*, i8*) #1

declare dso_local %struct.TYPE_5__* @ITOV(%struct.inode*) #1

declare dso_local i32 @arc4random(...) #1

declare dso_local i64 @e2fs_gd_get_ndirs(i32*) #1

declare dso_local i64 @e2fs_gd_get_nifree(i32*) #1

declare dso_local i32 @e2fs_gd_get_nbfree(i32*) #1

declare dso_local i64 @min(i64, i32) #1

declare dso_local i32 @ino_to_cg(%struct.m_ext2fs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
