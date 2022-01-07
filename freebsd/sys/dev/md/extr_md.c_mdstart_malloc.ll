; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/md/extr_md.c_mdstart_malloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/md/extr_md.c_mdstart_malloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md_s = type { i64, i32, i32, i32 }
%struct.bio = type { i32, i32, i64*, i32, i64, i64, i64, i32* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@BIO_UNMAPPED = common dso_local global i32 0, align 4
@BIO_VLIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"vlists cannot be unmapped\00", align 1
@MD_MALLOC_MOVE_ZERO = common dso_local global i32 0, align 4
@MD_MALLOC_MOVE_FILL = common dso_local global i32 0, align 4
@MD_MALLOC_MOVE_READ = common dso_local global i32 0, align 4
@MD_COMPRESS = common dso_local global i32 0, align 4
@MD_MALLOC_MOVE_CMP = common dso_local global i32 0, align 4
@md_malloc_wait = common dso_local global i64 0, align 8
@M_WAITOK = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@MD_MALLOC_MOVE_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.md_s*, %struct.bio*)* @mdstart_malloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdstart_malloc(%struct.md_s* %0, %struct.bio* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.md_s*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.md_s* %0, %struct.md_s** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  %19 = load %struct.bio*, %struct.bio** %5, align 8
  %20 = getelementptr inbounds %struct.bio, %struct.bio* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %23 [
    i32 129, label %22
    i32 128, label %22
    i32 130, label %22
  ]

22:                                               ; preds = %2, %2, %2
  br label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %24, i32* %3, align 4
  br label %446

25:                                               ; preds = %22
  %26 = load %struct.bio*, %struct.bio** %5, align 8
  %27 = getelementptr inbounds %struct.bio, %struct.bio* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @BIO_UNMAPPED, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %13, align 4
  %33 = load %struct.bio*, %struct.bio** %5, align 8
  %34 = getelementptr inbounds %struct.bio, %struct.bio* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @BIO_VLIST, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %25
  %40 = load %struct.bio*, %struct.bio** %5, align 8
  %41 = getelementptr inbounds %struct.bio, %struct.bio* %40, i32 0, i32 2
  %42 = load i64*, i64** %41, align 8
  %43 = bitcast i64* %42 to i32*
  br label %45

44:                                               ; preds = %25
  br label %45

45:                                               ; preds = %44, %39
  %46 = phi i32* [ %43, %39 ], [ null, %44 ]
  store i32* %46, i32** %8, align 8
  %47 = load i32, i32* %13, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %45
  %50 = load %struct.bio*, %struct.bio** %5, align 8
  %51 = getelementptr inbounds %struct.bio, %struct.bio* %50, i32 0, i32 7
  %52 = load i32*, i32** %51, align 8
  store i32* %52, i32** %7, align 8
  %53 = load %struct.bio*, %struct.bio** %5, align 8
  %54 = getelementptr inbounds %struct.bio, %struct.bio* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %12, align 4
  store i64* null, i64** %6, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = icmp eq i32* %56, null
  %58 = zext i1 %57 to i32
  %59 = call i32 @KASSERT(i32 %58, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %72

60:                                               ; preds = %45
  %61 = load i32*, i32** %8, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load %struct.bio*, %struct.bio** %5, align 8
  %65 = getelementptr inbounds %struct.bio, %struct.bio* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %12, align 4
  store i64* null, i64** %6, align 8
  br label %71

67:                                               ; preds = %60
  %68 = load %struct.bio*, %struct.bio** %5, align 8
  %69 = getelementptr inbounds %struct.bio, %struct.bio* %68, i32 0, i32 2
  %70 = load i64*, i64** %69, align 8
  store i64* %70, i64** %6, align 8
  br label %71

71:                                               ; preds = %67, %63
  br label %72

72:                                               ; preds = %71, %49
  %73 = load %struct.bio*, %struct.bio** %5, align 8
  %74 = getelementptr inbounds %struct.bio, %struct.bio* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.md_s*, %struct.md_s** %4, align 8
  %77 = getelementptr inbounds %struct.md_s, %struct.md_s* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = udiv i64 %75, %78
  store i64 %79, i64* %15, align 8
  %80 = load %struct.bio*, %struct.bio** %5, align 8
  %81 = getelementptr inbounds %struct.bio, %struct.bio* %80, i32 0, i32 5
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.md_s*, %struct.md_s** %4, align 8
  %84 = getelementptr inbounds %struct.md_s, %struct.md_s* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = udiv i64 %82, %85
  store i64 %86, i64* %14, align 8
  store i32 0, i32* %10, align 4
  br label %87

87:                                               ; preds = %441, %72
  %88 = load i64, i64* %15, align 8
  %89 = add i64 %88, -1
  store i64 %89, i64* %15, align 8
  %90 = icmp ne i64 %88, 0
  br i1 %90, label %91, label %442

91:                                               ; preds = %87
  %92 = load %struct.md_s*, %struct.md_s** %4, align 8
  %93 = getelementptr inbounds %struct.md_s, %struct.md_s* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = load i64, i64* %14, align 8
  %96 = call i64 @s_read(i32 %94, i64 %95)
  store i64 %96, i64* %18, align 8
  %97 = load %struct.bio*, %struct.bio** %5, align 8
  %98 = getelementptr inbounds %struct.bio, %struct.bio* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp eq i32 %99, 130
  br i1 %100, label %101, label %111

101:                                              ; preds = %91
  %102 = load i64, i64* %18, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %101
  %105 = load %struct.md_s*, %struct.md_s** %4, align 8
  %106 = getelementptr inbounds %struct.md_s, %struct.md_s* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = load i64, i64* %14, align 8
  %109 = call i32 @s_write(i32 %107, i64 %108, i64 0)
  store i32 %109, i32* %10, align 4
  br label %110

110:                                              ; preds = %104, %101
  br label %413

111:                                              ; preds = %91
  %112 = load %struct.bio*, %struct.bio** %5, align 8
  %113 = getelementptr inbounds %struct.bio, %struct.bio* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp eq i32 %114, 129
  br i1 %115, label %116, label %218

116:                                              ; preds = %111
  %117 = load i64, i64* %18, align 8
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %145

119:                                              ; preds = %116
  %120 = load i32, i32* %13, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %119
  %123 = load %struct.md_s*, %struct.md_s** %4, align 8
  %124 = getelementptr inbounds %struct.md_s, %struct.md_s* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i32, i32* @MD_MALLOC_MOVE_ZERO, align 4
  %127 = call i32 @md_malloc_move_ma(i32** %7, i32* %12, i64 %125, i8* null, i64 0, i32 %126)
  store i32 %127, i32* %10, align 4
  br label %144

128:                                              ; preds = %119
  %129 = load i32*, i32** %8, align 8
  %130 = icmp ne i32* %129, null
  br i1 %130, label %131, label %137

131:                                              ; preds = %128
  %132 = load %struct.md_s*, %struct.md_s** %4, align 8
  %133 = getelementptr inbounds %struct.md_s, %struct.md_s* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i32, i32* @MD_MALLOC_MOVE_ZERO, align 4
  %136 = call i32 @md_malloc_move_vlist(i32** %8, i32* %12, i64 %134, i8* null, i64 0, i32 %135)
  store i32 %136, i32* %10, align 4
  br label %143

137:                                              ; preds = %128
  %138 = load i64*, i64** %6, align 8
  %139 = load %struct.md_s*, %struct.md_s** %4, align 8
  %140 = getelementptr inbounds %struct.md_s, %struct.md_s* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @bzero(i64* %138, i64 %141)
  br label %143

143:                                              ; preds = %137, %131
  br label %144

144:                                              ; preds = %143, %122
  br label %217

145:                                              ; preds = %116
  %146 = load i64, i64* %18, align 8
  %147 = icmp ule i64 %146, 255
  br i1 %147, label %148, label %177

148:                                              ; preds = %145
  %149 = load i32, i32* %13, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %158

151:                                              ; preds = %148
  %152 = load %struct.md_s*, %struct.md_s** %4, align 8
  %153 = getelementptr inbounds %struct.md_s, %struct.md_s* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* %18, align 8
  %156 = load i32, i32* @MD_MALLOC_MOVE_FILL, align 4
  %157 = call i32 @md_malloc_move_ma(i32** %7, i32* %12, i64 %154, i8* null, i64 %155, i32 %156)
  store i32 %157, i32* %10, align 4
  br label %176

158:                                              ; preds = %148
  %159 = load i32*, i32** %8, align 8
  %160 = icmp ne i32* %159, null
  br i1 %160, label %161, label %168

161:                                              ; preds = %158
  %162 = load %struct.md_s*, %struct.md_s** %4, align 8
  %163 = getelementptr inbounds %struct.md_s, %struct.md_s* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* %18, align 8
  %166 = load i32, i32* @MD_MALLOC_MOVE_FILL, align 4
  %167 = call i32 @md_malloc_move_vlist(i32** %8, i32* %12, i64 %164, i8* null, i64 %165, i32 %166)
  store i32 %167, i32* %10, align 4
  br label %175

168:                                              ; preds = %158
  %169 = load i64*, i64** %6, align 8
  %170 = load i64, i64* %18, align 8
  %171 = load %struct.md_s*, %struct.md_s** %4, align 8
  %172 = getelementptr inbounds %struct.md_s, %struct.md_s* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = call i32 @memset(i64* %169, i64 %170, i64 %173)
  br label %175

175:                                              ; preds = %168, %161
  br label %176

176:                                              ; preds = %175, %151
  br label %216

177:                                              ; preds = %145
  %178 = load i32, i32* %13, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %188

180:                                              ; preds = %177
  %181 = load %struct.md_s*, %struct.md_s** %4, align 8
  %182 = getelementptr inbounds %struct.md_s, %struct.md_s* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* %18, align 8
  %185 = inttoptr i64 %184 to i8*
  %186 = load i32, i32* @MD_MALLOC_MOVE_READ, align 4
  %187 = call i32 @md_malloc_move_ma(i32** %7, i32* %12, i64 %183, i8* %185, i64 0, i32 %186)
  store i32 %187, i32* %10, align 4
  br label %215

188:                                              ; preds = %177
  %189 = load i32*, i32** %8, align 8
  %190 = icmp ne i32* %189, null
  br i1 %190, label %191, label %199

191:                                              ; preds = %188
  %192 = load %struct.md_s*, %struct.md_s** %4, align 8
  %193 = getelementptr inbounds %struct.md_s, %struct.md_s* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* %18, align 8
  %196 = inttoptr i64 %195 to i8*
  %197 = load i32, i32* @MD_MALLOC_MOVE_READ, align 4
  %198 = call i32 @md_malloc_move_vlist(i32** %8, i32* %12, i64 %194, i8* %196, i64 0, i32 %197)
  store i32 %198, i32* %10, align 4
  br label %214

199:                                              ; preds = %188
  %200 = load i64, i64* %18, align 8
  %201 = inttoptr i64 %200 to i8*
  %202 = bitcast i8* %201 to i64*
  %203 = load i64*, i64** %6, align 8
  %204 = bitcast i64* %203 to i8*
  %205 = load %struct.md_s*, %struct.md_s** %4, align 8
  %206 = getelementptr inbounds %struct.md_s, %struct.md_s* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = call i32 @bcopy(i64* %202, i8* %204, i64 %207)
  %209 = load i64*, i64** %6, align 8
  %210 = load %struct.md_s*, %struct.md_s** %4, align 8
  %211 = getelementptr inbounds %struct.md_s, %struct.md_s* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = call i32 @cpu_flush_dcache(i64* %209, i64 %212)
  br label %214

214:                                              ; preds = %199, %191
  br label %215

215:                                              ; preds = %214, %180
  br label %216

216:                                              ; preds = %215, %176
  br label %217

217:                                              ; preds = %216, %144
  store i64 0, i64* %18, align 8
  br label %412

218:                                              ; preds = %111
  %219 = load %struct.bio*, %struct.bio** %5, align 8
  %220 = getelementptr inbounds %struct.bio, %struct.bio* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = icmp eq i32 %221, 128
  br i1 %222, label %223, label %409

223:                                              ; preds = %218
  %224 = load %struct.md_s*, %struct.md_s** %4, align 8
  %225 = getelementptr inbounds %struct.md_s, %struct.md_s* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* @MD_COMPRESS, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %297

230:                                              ; preds = %223
  %231 = load i32, i32* %13, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %250

233:                                              ; preds = %230
  %234 = load %struct.md_s*, %struct.md_s** %4, align 8
  %235 = getelementptr inbounds %struct.md_s, %struct.md_s* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = bitcast i64* %16 to i8*
  %238 = load i32, i32* @MD_MALLOC_MOVE_CMP, align 4
  %239 = call i32 @md_malloc_move_ma(i32** %7, i32* %12, i64 %236, i8* %237, i64 0, i32 %238)
  store i32 %239, i32* %11, align 4
  %240 = load i32, i32* %11, align 4
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %242, label %246

242:                                              ; preds = %233
  %243 = load %struct.md_s*, %struct.md_s** %4, align 8
  %244 = getelementptr inbounds %struct.md_s, %struct.md_s* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  br label %247

246:                                              ; preds = %233
  br label %247

247:                                              ; preds = %246, %242
  %248 = phi i64 [ %245, %242 ], [ 0, %246 ]
  %249 = trunc i64 %248 to i32
  store i32 %249, i32* %9, align 4
  br label %296

250:                                              ; preds = %230
  %251 = load i32*, i32** %8, align 8
  %252 = icmp ne i32* %251, null
  br i1 %252, label %253, label %270

253:                                              ; preds = %250
  %254 = load %struct.md_s*, %struct.md_s** %4, align 8
  %255 = getelementptr inbounds %struct.md_s, %struct.md_s* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = bitcast i64* %16 to i8*
  %258 = load i32, i32* @MD_MALLOC_MOVE_CMP, align 4
  %259 = call i32 @md_malloc_move_vlist(i32** %8, i32* %12, i64 %256, i8* %257, i64 0, i32 %258)
  store i32 %259, i32* %11, align 4
  %260 = load i32, i32* %11, align 4
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %262, label %266

262:                                              ; preds = %253
  %263 = load %struct.md_s*, %struct.md_s** %4, align 8
  %264 = getelementptr inbounds %struct.md_s, %struct.md_s* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  br label %267

266:                                              ; preds = %253
  br label %267

267:                                              ; preds = %266, %262
  %268 = phi i64 [ %265, %262 ], [ 0, %266 ]
  %269 = trunc i64 %268 to i32
  store i32 %269, i32* %9, align 4
  br label %295

270:                                              ; preds = %250
  %271 = load i64*, i64** %6, align 8
  %272 = getelementptr inbounds i64, i64* %271, i64 0
  %273 = load i64, i64* %272, align 8
  store i64 %273, i64* %16, align 8
  store i32 1, i32* %9, align 4
  br label %274

274:                                              ; preds = %291, %270
  %275 = load i32, i32* %9, align 4
  %276 = sext i32 %275 to i64
  %277 = load %struct.md_s*, %struct.md_s** %4, align 8
  %278 = getelementptr inbounds %struct.md_s, %struct.md_s* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = icmp ult i64 %276, %279
  br i1 %280, label %281, label %294

281:                                              ; preds = %274
  %282 = load i64*, i64** %6, align 8
  %283 = load i32, i32* %9, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i64, i64* %282, i64 %284
  %286 = load i64, i64* %285, align 8
  %287 = load i64, i64* %16, align 8
  %288 = icmp ne i64 %286, %287
  br i1 %288, label %289, label %290

289:                                              ; preds = %281
  br label %294

290:                                              ; preds = %281
  br label %291

291:                                              ; preds = %290
  %292 = load i32, i32* %9, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %9, align 4
  br label %274

294:                                              ; preds = %289, %274
  br label %295

295:                                              ; preds = %294, %267
  br label %296

296:                                              ; preds = %295, %247
  br label %298

297:                                              ; preds = %223
  store i32 0, i32* %9, align 4
  store i64 0, i64* %16, align 8
  br label %298

298:                                              ; preds = %297, %296
  %299 = load i32, i32* %9, align 4
  %300 = sext i32 %299 to i64
  %301 = load %struct.md_s*, %struct.md_s** %4, align 8
  %302 = getelementptr inbounds %struct.md_s, %struct.md_s* %301, i32 0, i32 0
  %303 = load i64, i64* %302, align 8
  %304 = icmp eq i64 %300, %303
  br i1 %304, label %305, label %317

305:                                              ; preds = %298
  %306 = load i64, i64* %18, align 8
  %307 = load i64, i64* %16, align 8
  %308 = icmp ne i64 %306, %307
  br i1 %308, label %309, label %316

309:                                              ; preds = %305
  %310 = load %struct.md_s*, %struct.md_s** %4, align 8
  %311 = getelementptr inbounds %struct.md_s, %struct.md_s* %310, i32 0, i32 3
  %312 = load i32, i32* %311, align 8
  %313 = load i64, i64* %14, align 8
  %314 = load i64, i64* %16, align 8
  %315 = call i32 @s_write(i32 %312, i64 %313, i64 %314)
  store i32 %315, i32* %10, align 4
  br label %316

316:                                              ; preds = %309, %305
  br label %408

317:                                              ; preds = %298
  %318 = load i64, i64* %18, align 8
  %319 = icmp ule i64 %318, 255
  br i1 %319, label %320, label %375

320:                                              ; preds = %317
  %321 = load %struct.md_s*, %struct.md_s** %4, align 8
  %322 = getelementptr inbounds %struct.md_s, %struct.md_s* %321, i32 0, i32 2
  %323 = load i32, i32* %322, align 4
  %324 = load i64, i64* @md_malloc_wait, align 8
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %328

326:                                              ; preds = %320
  %327 = load i32, i32* @M_WAITOK, align 4
  br label %330

328:                                              ; preds = %320
  %329 = load i32, i32* @M_NOWAIT, align 4
  br label %330

330:                                              ; preds = %328, %326
  %331 = phi i32 [ %327, %326 ], [ %329, %328 ]
  %332 = call i64 @uma_zalloc(i32 %323, i32 %331)
  store i64 %332, i64* %17, align 8
  %333 = load i64, i64* %17, align 8
  %334 = icmp eq i64 %333, 0
  br i1 %334, label %335, label %337

335:                                              ; preds = %330
  %336 = load i32, i32* @ENOSPC, align 4
  store i32 %336, i32* %10, align 4
  br label %442

337:                                              ; preds = %330
  %338 = load i32, i32* %13, align 4
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %348

340:                                              ; preds = %337
  %341 = load %struct.md_s*, %struct.md_s** %4, align 8
  %342 = getelementptr inbounds %struct.md_s, %struct.md_s* %341, i32 0, i32 0
  %343 = load i64, i64* %342, align 8
  %344 = load i64, i64* %17, align 8
  %345 = inttoptr i64 %344 to i8*
  %346 = load i32, i32* @MD_MALLOC_MOVE_WRITE, align 4
  %347 = call i32 @md_malloc_move_ma(i32** %7, i32* %12, i64 %343, i8* %345, i64 0, i32 %346)
  store i32 %347, i32* %10, align 4
  br label %368

348:                                              ; preds = %337
  %349 = load i32*, i32** %8, align 8
  %350 = icmp ne i32* %349, null
  br i1 %350, label %351, label %359

351:                                              ; preds = %348
  %352 = load %struct.md_s*, %struct.md_s** %4, align 8
  %353 = getelementptr inbounds %struct.md_s, %struct.md_s* %352, i32 0, i32 0
  %354 = load i64, i64* %353, align 8
  %355 = load i64, i64* %17, align 8
  %356 = inttoptr i64 %355 to i8*
  %357 = load i32, i32* @MD_MALLOC_MOVE_WRITE, align 4
  %358 = call i32 @md_malloc_move_vlist(i32** %8, i32* %12, i64 %354, i8* %356, i64 0, i32 %357)
  store i32 %358, i32* %10, align 4
  br label %367

359:                                              ; preds = %348
  %360 = load i64*, i64** %6, align 8
  %361 = load i64, i64* %17, align 8
  %362 = inttoptr i64 %361 to i8*
  %363 = load %struct.md_s*, %struct.md_s** %4, align 8
  %364 = getelementptr inbounds %struct.md_s, %struct.md_s* %363, i32 0, i32 0
  %365 = load i64, i64* %364, align 8
  %366 = call i32 @bcopy(i64* %360, i8* %362, i64 %365)
  br label %367

367:                                              ; preds = %359, %351
  br label %368

368:                                              ; preds = %367, %340
  %369 = load %struct.md_s*, %struct.md_s** %4, align 8
  %370 = getelementptr inbounds %struct.md_s, %struct.md_s* %369, i32 0, i32 3
  %371 = load i32, i32* %370, align 8
  %372 = load i64, i64* %14, align 8
  %373 = load i64, i64* %17, align 8
  %374 = call i32 @s_write(i32 %371, i64 %372, i64 %373)
  store i32 %374, i32* %10, align 4
  br label %407

375:                                              ; preds = %317
  %376 = load i32, i32* %13, align 4
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %386

378:                                              ; preds = %375
  %379 = load %struct.md_s*, %struct.md_s** %4, align 8
  %380 = getelementptr inbounds %struct.md_s, %struct.md_s* %379, i32 0, i32 0
  %381 = load i64, i64* %380, align 8
  %382 = load i64, i64* %18, align 8
  %383 = inttoptr i64 %382 to i8*
  %384 = load i32, i32* @MD_MALLOC_MOVE_WRITE, align 4
  %385 = call i32 @md_malloc_move_ma(i32** %7, i32* %12, i64 %381, i8* %383, i64 0, i32 %384)
  store i32 %385, i32* %10, align 4
  br label %406

386:                                              ; preds = %375
  %387 = load i32*, i32** %8, align 8
  %388 = icmp ne i32* %387, null
  br i1 %388, label %389, label %397

389:                                              ; preds = %386
  %390 = load %struct.md_s*, %struct.md_s** %4, align 8
  %391 = getelementptr inbounds %struct.md_s, %struct.md_s* %390, i32 0, i32 0
  %392 = load i64, i64* %391, align 8
  %393 = load i64, i64* %18, align 8
  %394 = inttoptr i64 %393 to i8*
  %395 = load i32, i32* @MD_MALLOC_MOVE_WRITE, align 4
  %396 = call i32 @md_malloc_move_vlist(i32** %8, i32* %12, i64 %392, i8* %394, i64 0, i32 %395)
  store i32 %396, i32* %10, align 4
  br label %405

397:                                              ; preds = %386
  %398 = load i64*, i64** %6, align 8
  %399 = load i64, i64* %18, align 8
  %400 = inttoptr i64 %399 to i8*
  %401 = load %struct.md_s*, %struct.md_s** %4, align 8
  %402 = getelementptr inbounds %struct.md_s, %struct.md_s* %401, i32 0, i32 0
  %403 = load i64, i64* %402, align 8
  %404 = call i32 @bcopy(i64* %398, i8* %400, i64 %403)
  br label %405

405:                                              ; preds = %397, %389
  br label %406

406:                                              ; preds = %405, %378
  store i64 0, i64* %18, align 8
  br label %407

407:                                              ; preds = %406, %368
  br label %408

408:                                              ; preds = %407, %316
  br label %411

409:                                              ; preds = %218
  %410 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %410, i32* %10, align 4
  br label %411

411:                                              ; preds = %409, %408
  br label %412

412:                                              ; preds = %411, %217
  br label %413

413:                                              ; preds = %412, %110
  %414 = load i64, i64* %18, align 8
  %415 = icmp ugt i64 %414, 255
  br i1 %415, label %416, label %423

416:                                              ; preds = %413
  %417 = load %struct.md_s*, %struct.md_s** %4, align 8
  %418 = getelementptr inbounds %struct.md_s, %struct.md_s* %417, i32 0, i32 2
  %419 = load i32, i32* %418, align 4
  %420 = load i64, i64* %18, align 8
  %421 = inttoptr i64 %420 to i8*
  %422 = call i32 @uma_zfree(i32 %419, i8* %421)
  br label %423

423:                                              ; preds = %416, %413
  %424 = load i32, i32* %10, align 4
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %426, label %427

426:                                              ; preds = %423
  br label %442

427:                                              ; preds = %423
  %428 = load i64, i64* %14, align 8
  %429 = add i64 %428, 1
  store i64 %429, i64* %14, align 8
  %430 = load i32, i32* %13, align 4
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %441, label %432

432:                                              ; preds = %427
  %433 = load i32*, i32** %8, align 8
  %434 = icmp eq i32* %433, null
  br i1 %434, label %435, label %441

435:                                              ; preds = %432
  %436 = load %struct.md_s*, %struct.md_s** %4, align 8
  %437 = getelementptr inbounds %struct.md_s, %struct.md_s* %436, i32 0, i32 0
  %438 = load i64, i64* %437, align 8
  %439 = load i64*, i64** %6, align 8
  %440 = getelementptr inbounds i64, i64* %439, i64 %438
  store i64* %440, i64** %6, align 8
  br label %441

441:                                              ; preds = %435, %432, %427
  br label %87

442:                                              ; preds = %426, %335, %87
  %443 = load %struct.bio*, %struct.bio** %5, align 8
  %444 = getelementptr inbounds %struct.bio, %struct.bio* %443, i32 0, i32 6
  store i64 0, i64* %444, align 8
  %445 = load i32, i32* %10, align 4
  store i32 %445, i32* %3, align 4
  br label %446

446:                                              ; preds = %442, %23
  %447 = load i32, i32* %3, align 4
  ret i32 %447
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @s_read(i32, i64) #1

declare dso_local i32 @s_write(i32, i64, i64) #1

declare dso_local i32 @md_malloc_move_ma(i32**, i32*, i64, i8*, i64, i32) #1

declare dso_local i32 @md_malloc_move_vlist(i32**, i32*, i64, i8*, i64, i32) #1

declare dso_local i32 @bzero(i64*, i64) #1

declare dso_local i32 @memset(i64*, i64, i64) #1

declare dso_local i32 @bcopy(i64*, i8*, i64) #1

declare dso_local i32 @cpu_flush_dcache(i64*, i64) #1

declare dso_local i64 @uma_zalloc(i32, i32) #1

declare dso_local i32 @uma_zfree(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
