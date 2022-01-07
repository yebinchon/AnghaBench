; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/md/extr_md.c_mdstart_swap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/md/extr_md.c_mdstart_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md_s = type { i32 }
%struct.bio = type { i32, i32, i32, i32, i32, %struct.TYPE_20__**, i32* }
%struct.TYPE_20__ = type { i64 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@BIO_UNMAPPED = common dso_local global i32 0, align 4
@BIO_VLIST = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@VM_PAGER_OK = common dso_local global i32 0, align 4
@VM_ALLOC_SYSTEM = common dso_local global i32 0, align 4
@VM_PAGER_ERROR = common dso_local global i32 0, align 4
@VM_PAGER_FAIL = common dso_local global i32 0, align 4
@VM_PAGE_BITS_ALL = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.md_s*, %struct.bio*)* @mdstart_swap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdstart_swap(%struct.md_s* %0, %struct.bio* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.md_s*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.md_s* %0, %struct.md_s** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  %16 = load %struct.bio*, %struct.bio** %5, align 8
  %17 = getelementptr inbounds %struct.bio, %struct.bio* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %20 [
    i32 129, label %19
    i32 128, label %19
    i32 130, label %19
  ]

19:                                               ; preds = %2, %2, %2
  br label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %21, i32* %3, align 4
  br label %402

22:                                               ; preds = %19
  %23 = load %struct.bio*, %struct.bio** %5, align 8
  %24 = getelementptr inbounds %struct.bio, %struct.bio* %23, i32 0, i32 6
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %7, align 8
  %26 = load %struct.bio*, %struct.bio** %5, align 8
  %27 = getelementptr inbounds %struct.bio, %struct.bio* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @BIO_UNMAPPED, align 4
  %30 = load i32, i32* @BIO_VLIST, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %28, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %22
  %35 = load %struct.bio*, %struct.bio** %5, align 8
  %36 = getelementptr inbounds %struct.bio, %struct.bio* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  br label %39

38:                                               ; preds = %22
  br label %39

39:                                               ; preds = %38, %34
  %40 = phi i32 [ %37, %34 ], [ 0, %38 ]
  store i32 %40, i32* %12, align 4
  %41 = load %struct.bio*, %struct.bio** %5, align 8
  %42 = getelementptr inbounds %struct.bio, %struct.bio* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @BIO_VLIST, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %39
  %48 = load %struct.bio*, %struct.bio** %5, align 8
  %49 = getelementptr inbounds %struct.bio, %struct.bio* %48, i32 0, i32 6
  %50 = load i32*, i32** %49, align 8
  br label %52

51:                                               ; preds = %39
  br label %52

52:                                               ; preds = %51, %47
  %53 = phi i32* [ %50, %47 ], [ null, %51 ]
  store i32* %53, i32** %10, align 8
  %54 = load %struct.bio*, %struct.bio** %5, align 8
  %55 = getelementptr inbounds %struct.bio, %struct.bio* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @PAGE_SIZE, align 4
  %58 = srem i32 %56, %57
  store i32 %58, i32* %13, align 4
  %59 = load %struct.bio*, %struct.bio** %5, align 8
  %60 = getelementptr inbounds %struct.bio, %struct.bio* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.bio*, %struct.bio** %5, align 8
  %63 = getelementptr inbounds %struct.bio, %struct.bio* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %61, %64
  %66 = sub nsw i32 %65, 1
  %67 = load i32, i32* @PAGE_SIZE, align 4
  %68 = sdiv i32 %66, %67
  store i32 %68, i32* %9, align 4
  %69 = load %struct.bio*, %struct.bio** %5, align 8
  %70 = getelementptr inbounds %struct.bio, %struct.bio* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.bio*, %struct.bio** %5, align 8
  %73 = getelementptr inbounds %struct.bio, %struct.bio* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %71, %74
  %76 = sub nsw i32 %75, 1
  %77 = load i32, i32* @PAGE_SIZE, align 4
  %78 = srem i32 %76, %77
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %15, align 4
  %80 = load i32, i32* @VM_PAGER_OK, align 4
  store i32 %80, i32* %11, align 4
  %81 = load %struct.md_s*, %struct.md_s** %4, align 8
  %82 = getelementptr inbounds %struct.md_s, %struct.md_s* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @VM_OBJECT_WLOCK(i32 %83)
  %85 = load %struct.md_s*, %struct.md_s** %4, align 8
  %86 = getelementptr inbounds %struct.md_s, %struct.md_s* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @vm_object_pip_add(i32 %87, i32 1)
  %89 = load %struct.bio*, %struct.bio** %5, align 8
  %90 = getelementptr inbounds %struct.bio, %struct.bio* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @PAGE_SIZE, align 4
  %93 = sdiv i32 %91, %92
  store i32 %93, i32* %8, align 4
  br label %94

94:                                               ; preds = %382, %52
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp sle i32 %95, %96
  br i1 %97, label %98, label %385

98:                                               ; preds = %94
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %9, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %98
  %103 = load i32, i32* %15, align 4
  br label %106

104:                                              ; preds = %98
  %105 = load i32, i32* @PAGE_SIZE, align 4
  br label %106

106:                                              ; preds = %104, %102
  %107 = phi i32 [ %103, %102 ], [ %105, %104 ]
  %108 = load i32, i32* %13, align 4
  %109 = sub nsw i32 %107, %108
  store i32 %109, i32* %14, align 4
  %110 = load %struct.md_s*, %struct.md_s** %4, align 8
  %111 = getelementptr inbounds %struct.md_s, %struct.md_s* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* @VM_ALLOC_SYSTEM, align 4
  %115 = call %struct.TYPE_20__* @vm_page_grab(i32 %112, i32 %113, i32 %114)
  store %struct.TYPE_20__* %115, %struct.TYPE_20__** %6, align 8
  %116 = load %struct.bio*, %struct.bio** %5, align 8
  %117 = getelementptr inbounds %struct.bio, %struct.bio* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp eq i32 %118, 129
  br i1 %119, label %120, label %197

120:                                              ; preds = %106
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %122 = call i64 @vm_page_all_valid(%struct.TYPE_20__* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %120
  %125 = load i32, i32* @VM_PAGER_OK, align 4
  store i32 %125, i32* %11, align 4
  br label %131

126:                                              ; preds = %120
  %127 = load %struct.md_s*, %struct.md_s** %4, align 8
  %128 = getelementptr inbounds %struct.md_s, %struct.md_s* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @vm_pager_get_pages(i32 %129, %struct.TYPE_20__** %6, i32 1, i32* null, i32* null)
  store i32 %130, i32* %11, align 4
  br label %131

131:                                              ; preds = %126, %124
  %132 = load i32, i32* %11, align 4
  %133 = load i32, i32* @VM_PAGER_ERROR, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %131
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %137 = call i32 @md_swap_page_free(%struct.TYPE_20__* %136)
  br label %385

138:                                              ; preds = %131
  %139 = load i32, i32* %11, align 4
  %140 = load i32, i32* @VM_PAGER_FAIL, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %147

142:                                              ; preds = %138
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %144 = call i32 @pmap_zero_page(%struct.TYPE_20__* %143)
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %146 = call i32 @vm_page_valid(%struct.TYPE_20__* %145)
  br label %147

147:                                              ; preds = %142, %138
  br label %148

148:                                              ; preds = %147
  %149 = load %struct.bio*, %struct.bio** %5, align 8
  %150 = getelementptr inbounds %struct.bio, %struct.bio* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @BIO_UNMAPPED, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %163

155:                                              ; preds = %148
  %156 = load i32, i32* %13, align 4
  %157 = load %struct.bio*, %struct.bio** %5, align 8
  %158 = getelementptr inbounds %struct.bio, %struct.bio* %157, i32 0, i32 5
  %159 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %158, align 8
  %160 = load i32, i32* %12, align 4
  %161 = load i32, i32* %14, align 4
  %162 = call i32 @pmap_copy_pages(%struct.TYPE_20__** %6, i32 %156, %struct.TYPE_20__** %159, i32 %160, i32 %161)
  br label %196

163:                                              ; preds = %148
  %164 = load %struct.bio*, %struct.bio** %5, align 8
  %165 = getelementptr inbounds %struct.bio, %struct.bio* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @BIO_VLIST, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %183

170:                                              ; preds = %163
  %171 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %172 = call i64 @VM_PAGE_TO_PHYS(%struct.TYPE_20__* %171)
  %173 = load i32, i32* %13, align 4
  %174 = sext i32 %173 to i64
  %175 = add nsw i64 %172, %174
  %176 = load i32*, i32** %10, align 8
  %177 = load i32, i32* %12, align 4
  %178 = load i32, i32* %14, align 4
  %179 = call i32 @physcopyout_vlist(i64 %175, i32* %176, i32 %177, i32 %178)
  %180 = load i32*, i32** %7, align 8
  %181 = load i32, i32* %14, align 4
  %182 = call i32 @cpu_flush_dcache(i32* %180, i32 %181)
  br label %195

183:                                              ; preds = %163
  %184 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %185 = call i64 @VM_PAGE_TO_PHYS(%struct.TYPE_20__* %184)
  %186 = load i32, i32* %13, align 4
  %187 = sext i32 %186 to i64
  %188 = add nsw i64 %185, %187
  %189 = load i32*, i32** %7, align 8
  %190 = load i32, i32* %14, align 4
  %191 = call i32 @physcopyout(i64 %188, i32* %189, i32 %190)
  %192 = load i32*, i32** %7, align 8
  %193 = load i32, i32* %14, align 4
  %194 = call i32 @cpu_flush_dcache(i32* %192, i32 %193)
  br label %195

195:                                              ; preds = %183, %170
  br label %196

196:                                              ; preds = %195, %155
  br label %352

197:                                              ; preds = %106
  %198 = load %struct.bio*, %struct.bio** %5, align 8
  %199 = getelementptr inbounds %struct.bio, %struct.bio* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = icmp eq i32 %200, 128
  br i1 %201, label %202, label %288

202:                                              ; preds = %197
  %203 = load i32, i32* %14, align 4
  %204 = load i32, i32* @PAGE_SIZE, align 4
  %205 = icmp eq i32 %203, %204
  br i1 %205, label %210, label %206

206:                                              ; preds = %202
  %207 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %208 = call i64 @vm_page_all_valid(%struct.TYPE_20__* %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %206, %202
  %211 = load i32, i32* @VM_PAGER_OK, align 4
  store i32 %211, i32* %11, align 4
  br label %217

212:                                              ; preds = %206
  %213 = load %struct.md_s*, %struct.md_s** %4, align 8
  %214 = getelementptr inbounds %struct.md_s, %struct.md_s* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @vm_pager_get_pages(i32 %215, %struct.TYPE_20__** %6, i32 1, i32* null, i32* null)
  store i32 %216, i32* %11, align 4
  br label %217

217:                                              ; preds = %212, %210
  %218 = load i32, i32* %11, align 4
  %219 = load i32, i32* @VM_PAGER_ERROR, align 4
  %220 = icmp eq i32 %218, %219
  br i1 %220, label %221, label %224

221:                                              ; preds = %217
  %222 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %223 = call i32 @md_swap_page_free(%struct.TYPE_20__* %222)
  br label %385

224:                                              ; preds = %217
  %225 = load i32, i32* %11, align 4
  %226 = load i32, i32* @VM_PAGER_FAIL, align 4
  %227 = icmp eq i32 %225, %226
  br i1 %227, label %228, label %231

228:                                              ; preds = %224
  %229 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %230 = call i32 @pmap_zero_page(%struct.TYPE_20__* %229)
  br label %231

231:                                              ; preds = %228, %224
  br label %232

232:                                              ; preds = %231
  %233 = load %struct.bio*, %struct.bio** %5, align 8
  %234 = getelementptr inbounds %struct.bio, %struct.bio* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* @BIO_UNMAPPED, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %247

239:                                              ; preds = %232
  %240 = load %struct.bio*, %struct.bio** %5, align 8
  %241 = getelementptr inbounds %struct.bio, %struct.bio* %240, i32 0, i32 5
  %242 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %241, align 8
  %243 = load i32, i32* %12, align 4
  %244 = load i32, i32* %13, align 4
  %245 = load i32, i32* %14, align 4
  %246 = call i32 @pmap_copy_pages(%struct.TYPE_20__** %242, i32 %243, %struct.TYPE_20__** %6, i32 %244, i32 %245)
  br label %274

247:                                              ; preds = %232
  %248 = load %struct.bio*, %struct.bio** %5, align 8
  %249 = getelementptr inbounds %struct.bio, %struct.bio* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* @BIO_VLIST, align 4
  %252 = and i32 %250, %251
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %264

254:                                              ; preds = %247
  %255 = load i32*, i32** %10, align 8
  %256 = load i32, i32* %12, align 4
  %257 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %258 = call i64 @VM_PAGE_TO_PHYS(%struct.TYPE_20__* %257)
  %259 = load i32, i32* %13, align 4
  %260 = sext i32 %259 to i64
  %261 = add nsw i64 %258, %260
  %262 = load i32, i32* %14, align 4
  %263 = call i32 @physcopyin_vlist(i32* %255, i32 %256, i64 %261, i32 %262)
  br label %273

264:                                              ; preds = %247
  %265 = load i32*, i32** %7, align 8
  %266 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %267 = call i64 @VM_PAGE_TO_PHYS(%struct.TYPE_20__* %266)
  %268 = load i32, i32* %13, align 4
  %269 = sext i32 %268 to i64
  %270 = add nsw i64 %267, %269
  %271 = load i32, i32* %14, align 4
  %272 = call i32 @physcopyin(i32* %265, i64 %270, i32 %271)
  br label %273

273:                                              ; preds = %264, %254
  br label %274

274:                                              ; preds = %273, %239
  %275 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %276 = call i32 @vm_page_valid(%struct.TYPE_20__* %275)
  %277 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %278 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = load i64, i64* @VM_PAGE_BITS_ALL, align 8
  %281 = icmp ne i64 %279, %280
  br i1 %281, label %282, label %287

282:                                              ; preds = %274
  %283 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %284 = call i32 @vm_page_dirty(%struct.TYPE_20__* %283)
  %285 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %286 = call i32 @vm_pager_page_unswapped(%struct.TYPE_20__* %285)
  br label %287

287:                                              ; preds = %282, %274
  br label %351

288:                                              ; preds = %197
  %289 = load %struct.bio*, %struct.bio** %5, align 8
  %290 = getelementptr inbounds %struct.bio, %struct.bio* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = icmp eq i32 %291, 130
  br i1 %292, label %293, label %350

293:                                              ; preds = %288
  %294 = load i32, i32* %14, align 4
  %295 = load i32, i32* @PAGE_SIZE, align 4
  %296 = icmp eq i32 %294, %295
  br i1 %296, label %301, label %297

297:                                              ; preds = %293
  %298 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %299 = call i64 @vm_page_all_valid(%struct.TYPE_20__* %298)
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %303

301:                                              ; preds = %297, %293
  %302 = load i32, i32* @VM_PAGER_OK, align 4
  store i32 %302, i32* %11, align 4
  br label %308

303:                                              ; preds = %297
  %304 = load %struct.md_s*, %struct.md_s** %4, align 8
  %305 = getelementptr inbounds %struct.md_s, %struct.md_s* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 4
  %307 = call i32 @vm_pager_get_pages(i32 %306, %struct.TYPE_20__** %6, i32 1, i32* null, i32* null)
  store i32 %307, i32* %11, align 4
  br label %308

308:                                              ; preds = %303, %301
  %309 = load i32, i32* %11, align 4
  %310 = load i32, i32* @VM_PAGER_ERROR, align 4
  %311 = icmp eq i32 %309, %310
  br i1 %311, label %312, label %315

312:                                              ; preds = %308
  %313 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %314 = call i32 @md_swap_page_free(%struct.TYPE_20__* %313)
  br label %385

315:                                              ; preds = %308
  %316 = load i32, i32* %11, align 4
  %317 = load i32, i32* @VM_PAGER_FAIL, align 4
  %318 = icmp eq i32 %316, %317
  br i1 %318, label %319, label %322

319:                                              ; preds = %315
  %320 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %321 = call i32 @md_swap_page_free(%struct.TYPE_20__* %320)
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %6, align 8
  br label %348

322:                                              ; preds = %315
  %323 = load i32, i32* %14, align 4
  %324 = load i32, i32* @PAGE_SIZE, align 4
  %325 = icmp ne i32 %323, %324
  br i1 %325, label %326, label %342

326:                                              ; preds = %322
  %327 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %328 = load i32, i32* %13, align 4
  %329 = load i32, i32* %14, align 4
  %330 = call i32 @pmap_zero_page_area(%struct.TYPE_20__* %327, i32 %328, i32 %329)
  %331 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %332 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %331, i32 0, i32 0
  %333 = load i64, i64* %332, align 8
  %334 = load i64, i64* @VM_PAGE_BITS_ALL, align 8
  %335 = icmp ne i64 %333, %334
  br i1 %335, label %336, label %341

336:                                              ; preds = %326
  %337 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %338 = call i32 @vm_page_dirty(%struct.TYPE_20__* %337)
  %339 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %340 = call i32 @vm_pager_page_unswapped(%struct.TYPE_20__* %339)
  br label %341

341:                                              ; preds = %336, %326
  br label %347

342:                                              ; preds = %322
  %343 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %344 = call i32 @vm_pager_page_unswapped(%struct.TYPE_20__* %343)
  %345 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %346 = call i32 @md_swap_page_free(%struct.TYPE_20__* %345)
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %6, align 8
  br label %347

347:                                              ; preds = %342, %341
  br label %348

348:                                              ; preds = %347, %319
  br label %349

349:                                              ; preds = %348
  br label %350

350:                                              ; preds = %349, %288
  br label %351

351:                                              ; preds = %350, %287
  br label %352

352:                                              ; preds = %351, %196
  %353 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %354 = icmp ne %struct.TYPE_20__* %353, null
  br i1 %354, label %355, label %372

355:                                              ; preds = %352
  %356 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %357 = call i32 @vm_page_xunbusy(%struct.TYPE_20__* %356)
  %358 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %359 = call i32 @vm_page_lock(%struct.TYPE_20__* %358)
  %360 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %361 = call i64 @vm_page_active(%struct.TYPE_20__* %360)
  %362 = icmp ne i64 %361, 0
  br i1 %362, label %363, label %366

363:                                              ; preds = %355
  %364 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %365 = call i32 @vm_page_reference(%struct.TYPE_20__* %364)
  br label %369

366:                                              ; preds = %355
  %367 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %368 = call i32 @vm_page_activate(%struct.TYPE_20__* %367)
  br label %369

369:                                              ; preds = %366, %363
  %370 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %371 = call i32 @vm_page_unlock(%struct.TYPE_20__* %370)
  br label %372

372:                                              ; preds = %369, %352
  %373 = load i32, i32* @PAGE_SIZE, align 4
  %374 = load i32, i32* %13, align 4
  %375 = sub nsw i32 %373, %374
  %376 = load i32*, i32** %7, align 8
  %377 = sext i32 %375 to i64
  %378 = getelementptr inbounds i32, i32* %376, i64 %377
  store i32* %378, i32** %7, align 8
  store i32 0, i32* %13, align 4
  %379 = load i32, i32* %14, align 4
  %380 = load i32, i32* %12, align 4
  %381 = add nsw i32 %380, %379
  store i32 %381, i32* %12, align 4
  br label %382

382:                                              ; preds = %372
  %383 = load i32, i32* %8, align 4
  %384 = add nsw i32 %383, 1
  store i32 %384, i32* %8, align 4
  br label %94

385:                                              ; preds = %312, %221, %135, %94
  %386 = load %struct.md_s*, %struct.md_s** %4, align 8
  %387 = getelementptr inbounds %struct.md_s, %struct.md_s* %386, i32 0, i32 0
  %388 = load i32, i32* %387, align 4
  %389 = call i32 @vm_object_pip_wakeup(i32 %388)
  %390 = load %struct.md_s*, %struct.md_s** %4, align 8
  %391 = getelementptr inbounds %struct.md_s, %struct.md_s* %390, i32 0, i32 0
  %392 = load i32, i32* %391, align 4
  %393 = call i32 @VM_OBJECT_WUNLOCK(i32 %392)
  %394 = load i32, i32* %11, align 4
  %395 = load i32, i32* @VM_PAGER_ERROR, align 4
  %396 = icmp ne i32 %394, %395
  br i1 %396, label %397, label %398

397:                                              ; preds = %385
  br label %400

398:                                              ; preds = %385
  %399 = load i32, i32* @ENOSPC, align 4
  br label %400

400:                                              ; preds = %398, %397
  %401 = phi i32 [ 0, %397 ], [ %399, %398 ]
  store i32 %401, i32* %3, align 4
  br label %402

402:                                              ; preds = %400, %20
  %403 = load i32, i32* %3, align 4
  ret i32 %403
}

declare dso_local i32 @VM_OBJECT_WLOCK(i32) #1

declare dso_local i32 @vm_object_pip_add(i32, i32) #1

declare dso_local %struct.TYPE_20__* @vm_page_grab(i32, i32, i32) #1

declare dso_local i64 @vm_page_all_valid(%struct.TYPE_20__*) #1

declare dso_local i32 @vm_pager_get_pages(i32, %struct.TYPE_20__**, i32, i32*, i32*) #1

declare dso_local i32 @md_swap_page_free(%struct.TYPE_20__*) #1

declare dso_local i32 @pmap_zero_page(%struct.TYPE_20__*) #1

declare dso_local i32 @vm_page_valid(%struct.TYPE_20__*) #1

declare dso_local i32 @pmap_copy_pages(%struct.TYPE_20__**, i32, %struct.TYPE_20__**, i32, i32) #1

declare dso_local i32 @physcopyout_vlist(i64, i32*, i32, i32) #1

declare dso_local i64 @VM_PAGE_TO_PHYS(%struct.TYPE_20__*) #1

declare dso_local i32 @cpu_flush_dcache(i32*, i32) #1

declare dso_local i32 @physcopyout(i64, i32*, i32) #1

declare dso_local i32 @physcopyin_vlist(i32*, i32, i64, i32) #1

declare dso_local i32 @physcopyin(i32*, i64, i32) #1

declare dso_local i32 @vm_page_dirty(%struct.TYPE_20__*) #1

declare dso_local i32 @vm_pager_page_unswapped(%struct.TYPE_20__*) #1

declare dso_local i32 @pmap_zero_page_area(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @vm_page_xunbusy(%struct.TYPE_20__*) #1

declare dso_local i32 @vm_page_lock(%struct.TYPE_20__*) #1

declare dso_local i64 @vm_page_active(%struct.TYPE_20__*) #1

declare dso_local i32 @vm_page_reference(%struct.TYPE_20__*) #1

declare dso_local i32 @vm_page_activate(%struct.TYPE_20__*) #1

declare dso_local i32 @vm_page_unlock(%struct.TYPE_20__*) #1

declare dso_local i32 @vm_object_pip_wakeup(i32) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
