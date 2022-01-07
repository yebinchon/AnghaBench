; ModuleID = '/home/carl/AnghaBench/git/compat/nedmalloc/extr_malloc.c.h_mspace_free.c'
source_filename = "/home/carl/AnghaBench/git/compat/nedmalloc/extr_malloc.c.h_mspace_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_40__ = type { i64, i32 }
%struct.TYPE_39__ = type { i64, i64, i64, i64, %struct.TYPE_40__*, %struct.TYPE_40__* }

@IS_MMAPPED_BIT = common dso_local global i64 0, align 8
@MMAP_FOOT_PAD = common dso_local global i64 0, align 8
@INUSE_BITS = common dso_local global i32 0, align 4
@PINUSE_BIT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mspace_free(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_40__*, align 8
  %6 = alloca %struct.TYPE_39__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_40__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_40__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %286

17:                                               ; preds = %2
  %18 = load i8*, i8** %4, align 8
  %19 = call %struct.TYPE_40__* @mem2chunk(i8* %18)
  store %struct.TYPE_40__* %19, %struct.TYPE_40__** %5, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = inttoptr i64 %21 to %struct.TYPE_39__*
  store %struct.TYPE_39__* %22, %struct.TYPE_39__** %6, align 8
  %23 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %24 = call i32 @ok_magic(%struct.TYPE_39__* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %17
  %27 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %28 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %29 = call i32 @USAGE_ERROR_ACTION(%struct.TYPE_39__* %27, %struct.TYPE_40__* %28)
  br label %286

30:                                               ; preds = %17
  %31 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %32 = call i32 @PREACTION(%struct.TYPE_39__* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %285, label %34

34:                                               ; preds = %30
  %35 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %36 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %37 = call i32 @check_inuse_chunk(%struct.TYPE_39__* %35, %struct.TYPE_40__* %36)
  %38 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %39 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %40 = call i32 @ok_address(%struct.TYPE_39__* %38, %struct.TYPE_40__* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %34
  %43 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %44 = call i64 @ok_cinuse(%struct.TYPE_40__* %43)
  %45 = icmp ne i64 %44, 0
  br label %46

46:                                               ; preds = %42, %34
  %47 = phi i1 [ false, %34 ], [ %45, %42 ]
  %48 = zext i1 %47 to i32
  %49 = call i64 @RTCHECK(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %277

51:                                               ; preds = %46
  %52 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %53 = call i64 @chunksize(%struct.TYPE_40__* %52)
  store i64 %53, i64* %7, align 8
  %54 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %55 = load i64, i64* %7, align 8
  %56 = call %struct.TYPE_40__* @chunk_plus_offset(%struct.TYPE_40__* %54, i64 %55)
  store %struct.TYPE_40__* %56, %struct.TYPE_40__** %8, align 8
  %57 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %58 = call i32 @pinuse(%struct.TYPE_40__* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %138, label %60

60:                                               ; preds = %51
  %61 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %9, align 8
  %64 = load i64, i64* %9, align 8
  %65 = load i64, i64* @IS_MMAPPED_BIT, align 8
  %66 = and i64 %64, %65
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %93

68:                                               ; preds = %60
  %69 = load i64, i64* @IS_MMAPPED_BIT, align 8
  %70 = xor i64 %69, -1
  %71 = load i64, i64* %9, align 8
  %72 = and i64 %71, %70
  store i64 %72, i64* %9, align 8
  %73 = load i64, i64* %9, align 8
  %74 = load i64, i64* @MMAP_FOOT_PAD, align 8
  %75 = add i64 %73, %74
  %76 = load i64, i64* %7, align 8
  %77 = add i64 %76, %75
  store i64 %77, i64* %7, align 8
  %78 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %79 = bitcast %struct.TYPE_40__* %78 to i8*
  %80 = load i64, i64* %9, align 8
  %81 = sub i64 0, %80
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  %83 = load i64, i64* %7, align 8
  %84 = call i64 @CALL_MUNMAP(i8* %82, i64 %83)
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %68
  %87 = load i64, i64* %7, align 8
  %88 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = sub i64 %90, %87
  store i64 %91, i64* %89, align 8
  br label %92

92:                                               ; preds = %86, %68
  br label %282

93:                                               ; preds = %60
  %94 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %95 = load i64, i64* %9, align 8
  %96 = call %struct.TYPE_40__* @chunk_minus_offset(%struct.TYPE_40__* %94, i64 %95)
  store %struct.TYPE_40__* %96, %struct.TYPE_40__** %10, align 8
  %97 = load i64, i64* %9, align 8
  %98 = load i64, i64* %7, align 8
  %99 = add i64 %98, %97
  store i64 %99, i64* %7, align 8
  %100 = load %struct.TYPE_40__*, %struct.TYPE_40__** %10, align 8
  store %struct.TYPE_40__* %100, %struct.TYPE_40__** %5, align 8
  %101 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %102 = load %struct.TYPE_40__*, %struct.TYPE_40__** %10, align 8
  %103 = call i32 @ok_address(%struct.TYPE_39__* %101, %struct.TYPE_40__* %102)
  %104 = call i64 @RTCHECK(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %135

106:                                              ; preds = %93
  %107 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %108 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %108, i32 0, i32 4
  %110 = load %struct.TYPE_40__*, %struct.TYPE_40__** %109, align 8
  %111 = icmp ne %struct.TYPE_40__* %107, %110
  br i1 %111, label %112, label %117

112:                                              ; preds = %106
  %113 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %114 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %115 = load i64, i64* %9, align 8
  %116 = call i32 @unlink_chunk(%struct.TYPE_39__* %113, %struct.TYPE_40__* %114, i64 %115)
  br label %134

117:                                              ; preds = %106
  %118 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @INUSE_BITS, align 4
  %122 = and i32 %120, %121
  %123 = load i32, i32* @INUSE_BITS, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %133

125:                                              ; preds = %117
  %126 = load i64, i64* %7, align 8
  %127 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %127, i32 0, i32 1
  store i64 %126, i64* %128, align 8
  %129 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %130 = load i64, i64* %7, align 8
  %131 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %132 = call i32 @set_free_with_pinuse(%struct.TYPE_40__* %129, i64 %130, %struct.TYPE_40__* %131)
  br label %282

133:                                              ; preds = %117
  br label %134

134:                                              ; preds = %133, %112
  br label %136

135:                                              ; preds = %93
  br label %278

136:                                              ; preds = %134
  br label %137

137:                                              ; preds = %136
  br label %138

138:                                              ; preds = %137, %51
  %139 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %140 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %141 = call i64 @ok_next(%struct.TYPE_40__* %139, %struct.TYPE_40__* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %138
  %144 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %145 = call i64 @ok_pinuse(%struct.TYPE_40__* %144)
  %146 = icmp ne i64 %145, 0
  br label %147

147:                                              ; preds = %143, %138
  %148 = phi i1 [ false, %138 ], [ %146, %143 ]
  %149 = zext i1 %148 to i32
  %150 = call i64 @RTCHECK(i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %276

152:                                              ; preds = %147
  %153 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %154 = call i32 @cinuse(%struct.TYPE_40__* %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %239, label %156

156:                                              ; preds = %152
  %157 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %158 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %158, i32 0, i32 5
  %160 = load %struct.TYPE_40__*, %struct.TYPE_40__** %159, align 8
  %161 = icmp eq %struct.TYPE_40__* %157, %160
  br i1 %161, label %162, label %196

162:                                              ; preds = %156
  %163 = load i64, i64* %7, align 8
  %164 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = add i64 %166, %163
  store i64 %167, i64* %165, align 8
  store i64 %167, i64* %11, align 8
  %168 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %169 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %169, i32 0, i32 5
  store %struct.TYPE_40__* %168, %struct.TYPE_40__** %170, align 8
  %171 = load i64, i64* %11, align 8
  %172 = load i64, i64* @PINUSE_BIT, align 8
  %173 = or i64 %171, %172
  %174 = trunc i64 %173 to i32
  %175 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %175, i32 0, i32 1
  store i32 %174, i32* %176, align 8
  %177 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %178 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %178, i32 0, i32 4
  %180 = load %struct.TYPE_40__*, %struct.TYPE_40__** %179, align 8
  %181 = icmp eq %struct.TYPE_40__* %177, %180
  br i1 %181, label %182, label %187

182:                                              ; preds = %162
  %183 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %183, i32 0, i32 4
  store %struct.TYPE_40__* null, %struct.TYPE_40__** %184, align 8
  %185 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %185, i32 0, i32 1
  store i64 0, i64* %186, align 8
  br label %187

187:                                              ; preds = %182, %162
  %188 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %189 = load i64, i64* %11, align 8
  %190 = call i64 @should_trim(%struct.TYPE_39__* %188, i64 %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %187
  %193 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %194 = call i32 @sys_trim(%struct.TYPE_39__* %193, i32 0)
  br label %195

195:                                              ; preds = %192, %187
  br label %282

196:                                              ; preds = %156
  %197 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %198 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %198, i32 0, i32 4
  %200 = load %struct.TYPE_40__*, %struct.TYPE_40__** %199, align 8
  %201 = icmp eq %struct.TYPE_40__* %197, %200
  br i1 %201, label %202, label %214

202:                                              ; preds = %196
  %203 = load i64, i64* %7, align 8
  %204 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = add i64 %206, %203
  store i64 %207, i64* %205, align 8
  store i64 %207, i64* %12, align 8
  %208 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %209 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %209, i32 0, i32 4
  store %struct.TYPE_40__* %208, %struct.TYPE_40__** %210, align 8
  %211 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %212 = load i64, i64* %12, align 8
  %213 = call i32 @set_size_and_pinuse_of_free_chunk(%struct.TYPE_40__* %211, i64 %212)
  br label %282

214:                                              ; preds = %196
  %215 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %216 = call i64 @chunksize(%struct.TYPE_40__* %215)
  store i64 %216, i64* %13, align 8
  %217 = load i64, i64* %13, align 8
  %218 = load i64, i64* %7, align 8
  %219 = add i64 %218, %217
  store i64 %219, i64* %7, align 8
  %220 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %221 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %222 = load i64, i64* %13, align 8
  %223 = call i32 @unlink_chunk(%struct.TYPE_39__* %220, %struct.TYPE_40__* %221, i64 %222)
  %224 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %225 = load i64, i64* %7, align 8
  %226 = call i32 @set_size_and_pinuse_of_free_chunk(%struct.TYPE_40__* %224, i64 %225)
  %227 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %228 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %228, i32 0, i32 4
  %230 = load %struct.TYPE_40__*, %struct.TYPE_40__** %229, align 8
  %231 = icmp eq %struct.TYPE_40__* %227, %230
  br i1 %231, label %232, label %236

232:                                              ; preds = %214
  %233 = load i64, i64* %7, align 8
  %234 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %235 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %234, i32 0, i32 1
  store i64 %233, i64* %235, align 8
  br label %282

236:                                              ; preds = %214
  br label %237

237:                                              ; preds = %236
  br label %238

238:                                              ; preds = %237
  br label %244

239:                                              ; preds = %152
  %240 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %241 = load i64, i64* %7, align 8
  %242 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %243 = call i32 @set_free_with_pinuse(%struct.TYPE_40__* %240, i64 %241, %struct.TYPE_40__* %242)
  br label %244

244:                                              ; preds = %239, %238
  %245 = load i64, i64* %7, align 8
  %246 = call i64 @is_small(i64 %245)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %256

248:                                              ; preds = %244
  %249 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %250 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %251 = load i64, i64* %7, align 8
  %252 = call i32 @insert_small_chunk(%struct.TYPE_39__* %249, %struct.TYPE_40__* %250, i64 %251)
  %253 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %254 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %255 = call i32 @check_free_chunk(%struct.TYPE_39__* %253, %struct.TYPE_40__* %254)
  br label %275

256:                                              ; preds = %244
  %257 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %258 = ptrtoint %struct.TYPE_40__* %257 to i32
  store i32 %258, i32* %14, align 4
  %259 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %260 = load i32, i32* %14, align 4
  %261 = load i64, i64* %7, align 8
  %262 = call i32 @insert_large_chunk(%struct.TYPE_39__* %259, i32 %260, i64 %261)
  %263 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %264 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %265 = call i32 @check_free_chunk(%struct.TYPE_39__* %263, %struct.TYPE_40__* %264)
  %266 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %267 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %266, i32 0, i32 3
  %268 = load i64, i64* %267, align 8
  %269 = add nsw i64 %268, -1
  store i64 %269, i64* %267, align 8
  %270 = icmp eq i64 %269, 0
  br i1 %270, label %271, label %274

271:                                              ; preds = %256
  %272 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %273 = call i32 @release_unused_segments(%struct.TYPE_39__* %272)
  br label %274

274:                                              ; preds = %271, %256
  br label %275

275:                                              ; preds = %274, %248
  br label %282

276:                                              ; preds = %147
  br label %277

277:                                              ; preds = %276, %46
  br label %278

278:                                              ; preds = %277, %135
  %279 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %280 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %281 = call i32 @USAGE_ERROR_ACTION(%struct.TYPE_39__* %279, %struct.TYPE_40__* %280)
  br label %282

282:                                              ; preds = %278, %275, %232, %202, %195, %125, %92
  %283 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %284 = call i32 @POSTACTION(%struct.TYPE_39__* %283)
  br label %285

285:                                              ; preds = %282, %30
  br label %286

286:                                              ; preds = %26, %285, %2
  ret void
}

declare dso_local %struct.TYPE_40__* @mem2chunk(i8*) #1

declare dso_local i32 @ok_magic(%struct.TYPE_39__*) #1

declare dso_local i32 @USAGE_ERROR_ACTION(%struct.TYPE_39__*, %struct.TYPE_40__*) #1

declare dso_local i32 @PREACTION(%struct.TYPE_39__*) #1

declare dso_local i32 @check_inuse_chunk(%struct.TYPE_39__*, %struct.TYPE_40__*) #1

declare dso_local i64 @RTCHECK(i32) #1

declare dso_local i32 @ok_address(%struct.TYPE_39__*, %struct.TYPE_40__*) #1

declare dso_local i64 @ok_cinuse(%struct.TYPE_40__*) #1

declare dso_local i64 @chunksize(%struct.TYPE_40__*) #1

declare dso_local %struct.TYPE_40__* @chunk_plus_offset(%struct.TYPE_40__*, i64) #1

declare dso_local i32 @pinuse(%struct.TYPE_40__*) #1

declare dso_local i64 @CALL_MUNMAP(i8*, i64) #1

declare dso_local %struct.TYPE_40__* @chunk_minus_offset(%struct.TYPE_40__*, i64) #1

declare dso_local i32 @unlink_chunk(%struct.TYPE_39__*, %struct.TYPE_40__*, i64) #1

declare dso_local i32 @set_free_with_pinuse(%struct.TYPE_40__*, i64, %struct.TYPE_40__*) #1

declare dso_local i64 @ok_next(%struct.TYPE_40__*, %struct.TYPE_40__*) #1

declare dso_local i64 @ok_pinuse(%struct.TYPE_40__*) #1

declare dso_local i32 @cinuse(%struct.TYPE_40__*) #1

declare dso_local i64 @should_trim(%struct.TYPE_39__*, i64) #1

declare dso_local i32 @sys_trim(%struct.TYPE_39__*, i32) #1

declare dso_local i32 @set_size_and_pinuse_of_free_chunk(%struct.TYPE_40__*, i64) #1

declare dso_local i64 @is_small(i64) #1

declare dso_local i32 @insert_small_chunk(%struct.TYPE_39__*, %struct.TYPE_40__*, i64) #1

declare dso_local i32 @check_free_chunk(%struct.TYPE_39__*, %struct.TYPE_40__*) #1

declare dso_local i32 @insert_large_chunk(%struct.TYPE_39__*, i32, i64) #1

declare dso_local i32 @release_unused_segments(%struct.TYPE_39__*) #1

declare dso_local i32 @POSTACTION(%struct.TYPE_39__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
