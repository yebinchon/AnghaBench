; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_mmap.c_kern_mincore.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_mmap.c_kern_mincore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { %struct.TYPE_33__* }
%struct.TYPE_33__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_32__ = type { i64, i64, i32, i64, %struct.TYPE_28__ }
%struct.TYPE_28__ = type { %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i64 }
%struct.TYPE_29__ = type { i64, i32, %struct.TYPE_30__* }

@ENOMEM = common dso_local global i32 0, align 4
@MAP_ENTRY_IS_SUB_MAP = common dso_local global i32 0, align 4
@mincore_mapped = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"mincore: page %p is mapped but invalid\00", align 1
@OBJT_DEFAULT = common dso_local global i64 0, align 8
@OBJT_SWAP = common dso_local global i64 0, align 8
@OBJT_VNODE = common dso_local global i64 0, align 8
@MINCORE_INCORE = common dso_local global i32 0, align 4
@MINCORE_MODIFIED_OTHER = common dso_local global i32 0, align 4
@PGA_REFERENCED = common dso_local global i32 0, align 4
@MINCORE_REFERENCED_OTHER = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_mincore(%struct.thread* %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_31__*, align 8
  %12 = alloca %struct.TYPE_32__*, align 8
  %13 = alloca %struct.TYPE_32__*, align 8
  %14 = alloca %struct.TYPE_30__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_29__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call i64 @trunc_page(i64 %27)
  store i64 %28, i64* %15, align 8
  store i64 %28, i64* %18, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* %8, align 8
  %31 = add i64 %29, %30
  %32 = call i64 @round_page(i64 %31)
  store i64 %32, i64* %17, align 8
  %33 = load %struct.thread*, %struct.thread** %6, align 8
  %34 = getelementptr inbounds %struct.thread, %struct.thread* %33, i32 0, i32 0
  %35 = load %struct.TYPE_27__*, %struct.TYPE_27__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_33__*, %struct.TYPE_33__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %37, i32 0, i32 0
  store %struct.TYPE_31__* %38, %struct.TYPE_31__** %11, align 8
  %39 = load i64, i64* %17, align 8
  %40 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %41 = call i64 @vm_map_max(%struct.TYPE_31__* %40)
  %42 = icmp sgt i64 %39, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %4
  %44 = load i64, i64* %17, align 8
  %45 = load i64, i64* %15, align 8
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43, %4
  %48 = load i32, i32* @ENOMEM, align 4
  store i32 %48, i32* %5, align 4
  br label %410

49:                                               ; preds = %43
  %50 = load %struct.thread*, %struct.thread** %6, align 8
  %51 = getelementptr inbounds %struct.thread, %struct.thread* %50, i32 0, i32 0
  %52 = load %struct.TYPE_27__*, %struct.TYPE_27__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_33__*, %struct.TYPE_33__** %53, align 8
  %55 = call i32 @vmspace_pmap(%struct.TYPE_33__* %54)
  store i32 %55, i32* %10, align 4
  %56 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %57 = call i32 @vm_map_lock_read(%struct.TYPE_31__* %56)
  br label %58

58:                                               ; preds = %404, %363, %49
  %59 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %26, align 4
  %62 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %63 = load i64, i64* %15, align 8
  %64 = call i32 @vm_map_lookup_entry(%struct.TYPE_31__* %62, i64 %63, %struct.TYPE_32__** %13)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %58
  %67 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %68 = call i32 @vm_map_unlock_read(%struct.TYPE_31__* %67)
  %69 = load i32, i32* @ENOMEM, align 4
  store i32 %69, i32* %5, align 4
  br label %410

70:                                               ; preds = %58
  store i32 -1, i32* %23, align 4
  br label %71

71:                                               ; preds = %370, %111, %70
  %72 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %17, align 8
  %76 = icmp slt i64 %74, %75
  br i1 %76, label %77, label %371

77:                                               ; preds = %71
  %78 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  store %struct.TYPE_32__* %78, %struct.TYPE_32__** %12, align 8
  %79 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %80 = call %struct.TYPE_32__* @vm_map_entry_succ(%struct.TYPE_32__* %79)
  store %struct.TYPE_32__* %80, %struct.TYPE_32__** %13, align 8
  %81 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %17, align 8
  %85 = icmp slt i64 %83, %84
  br i1 %85, label %86, label %98

86:                                               ; preds = %77
  %87 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp sgt i64 %89, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %86
  %95 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %96 = call i32 @vm_map_unlock_read(%struct.TYPE_31__* %95)
  %97 = load i32, i32* @ENOMEM, align 4
  store i32 %97, i32* %5, align 4
  br label %410

98:                                               ; preds = %86, %77
  %99 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @MAP_ENTRY_IS_SUB_MAP, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %111, label %105

105:                                              ; preds = %98
  %106 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_30__*, %struct.TYPE_30__** %108, align 8
  %110 = icmp eq %struct.TYPE_30__* %109, null
  br i1 %110, label %111, label %112

111:                                              ; preds = %105, %98
  br label %71

112:                                              ; preds = %105
  %113 = load i64, i64* %15, align 8
  %114 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp slt i64 %113, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %112
  %119 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  store i64 %121, i64* %15, align 8
  br label %122

122:                                              ; preds = %118, %112
  %123 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  store i64 %125, i64* %16, align 8
  %126 = load i64, i64* %16, align 8
  %127 = load i64, i64* %17, align 8
  %128 = icmp sgt i64 %126, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %122
  %130 = load i64, i64* %17, align 8
  store i64 %130, i64* %16, align 8
  br label %131

131:                                              ; preds = %129, %122
  br label %132

132:                                              ; preds = %366, %131
  %133 = load i64, i64* %15, align 8
  %134 = load i64, i64* %16, align 8
  %135 = icmp slt i64 %133, %134
  br i1 %135, label %136, label %370

136:                                              ; preds = %132
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %20, align 8
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %14, align 8
  br label %137

137:                                              ; preds = %184, %174, %136
  store i64 0, i64* %19, align 8
  %138 = load i32, i32* %10, align 4
  %139 = load i64, i64* %15, align 8
  %140 = call i32 @pmap_mincore(i32 %138, i64 %139, i64* %19)
  store i32 %140, i32* %24, align 4
  %141 = load i64, i64* @mincore_mapped, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %137
  br label %262

144:                                              ; preds = %137
  %145 = load i64, i64* %19, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %191

147:                                              ; preds = %144
  %148 = load i64, i64* %19, align 8
  %149 = call %struct.TYPE_29__* @PHYS_TO_VM_PAGE(i64 %148)
  store %struct.TYPE_29__* %149, %struct.TYPE_29__** %20, align 8
  br label %150

150:                                              ; preds = %175, %147
  %151 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %152 = icmp eq %struct.TYPE_30__* %151, null
  br i1 %152, label %159, label %153

153:                                              ; preds = %150
  %154 = load %struct.TYPE_29__*, %struct.TYPE_29__** %20, align 8
  %155 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %154, i32 0, i32 2
  %156 = load %struct.TYPE_30__*, %struct.TYPE_30__** %155, align 8
  %157 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %158 = icmp ne %struct.TYPE_30__* %156, %157
  br label %159

159:                                              ; preds = %153, %150
  %160 = phi i1 [ true, %150 ], [ %158, %153 ]
  br i1 %160, label %161, label %178

161:                                              ; preds = %159
  %162 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %163 = icmp ne %struct.TYPE_30__* %162, null
  br i1 %163, label %164, label %167

164:                                              ; preds = %161
  %165 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %166 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_30__* %165)
  br label %167

167:                                              ; preds = %164, %161
  %168 = load %struct.TYPE_29__*, %struct.TYPE_29__** %20, align 8
  %169 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %168, i32 0, i32 2
  %170 = call i64 @atomic_load_ptr(%struct.TYPE_30__** %169)
  %171 = inttoptr i64 %170 to %struct.TYPE_30__*
  store %struct.TYPE_30__* %171, %struct.TYPE_30__** %14, align 8
  %172 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %173 = icmp eq %struct.TYPE_30__* %172, null
  br i1 %173, label %174, label %175

174:                                              ; preds = %167
  br label %137

175:                                              ; preds = %167
  %176 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %177 = call i32 @VM_OBJECT_WLOCK(%struct.TYPE_30__* %176)
  br label %150

178:                                              ; preds = %159
  %179 = load i64, i64* %19, align 8
  %180 = load i32, i32* %10, align 4
  %181 = load i64, i64* %15, align 8
  %182 = call i64 @pmap_extract(i32 %180, i64 %181)
  %183 = icmp ne i64 %179, %182
  br i1 %183, label %184, label %185

184:                                              ; preds = %178
  br label %137

185:                                              ; preds = %178
  %186 = load %struct.TYPE_29__*, %struct.TYPE_29__** %20, align 8
  %187 = call i32 @vm_page_all_valid(%struct.TYPE_29__* %186)
  %188 = load %struct.TYPE_29__*, %struct.TYPE_29__** %20, align 8
  %189 = bitcast %struct.TYPE_29__* %188 to i8*
  %190 = call i32 @KASSERT(i32 %187, i8* %189)
  br label %261

191:                                              ; preds = %144
  %192 = load i32, i32* %24, align 4
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %260

194:                                              ; preds = %191
  %195 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %196 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %195, i32 0, i32 4
  %197 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %196, i32 0, i32 0
  %198 = load %struct.TYPE_30__*, %struct.TYPE_30__** %197, align 8
  %199 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %200 = icmp ne %struct.TYPE_30__* %198, %199
  br i1 %200, label %201, label %214

201:                                              ; preds = %194
  %202 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %203 = icmp ne %struct.TYPE_30__* %202, null
  br i1 %203, label %204, label %207

204:                                              ; preds = %201
  %205 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %206 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_30__* %205)
  br label %207

207:                                              ; preds = %204, %201
  %208 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %209 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %208, i32 0, i32 4
  %210 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %209, i32 0, i32 0
  %211 = load %struct.TYPE_30__*, %struct.TYPE_30__** %210, align 8
  store %struct.TYPE_30__* %211, %struct.TYPE_30__** %14, align 8
  %212 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %213 = call i32 @VM_OBJECT_WLOCK(%struct.TYPE_30__* %212)
  br label %214

214:                                              ; preds = %207, %194
  %215 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %216 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* @OBJT_DEFAULT, align 8
  %219 = icmp eq i64 %217, %218
  br i1 %219, label %232, label %220

220:                                              ; preds = %214
  %221 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %222 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = load i64, i64* @OBJT_SWAP, align 8
  %225 = icmp eq i64 %223, %224
  br i1 %225, label %232, label %226

226:                                              ; preds = %220
  %227 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %228 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = load i64, i64* @OBJT_VNODE, align 8
  %231 = icmp eq i64 %229, %230
  br i1 %231, label %232, label %259

232:                                              ; preds = %226, %220, %214
  %233 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %234 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %233, i32 0, i32 3
  %235 = load i64, i64* %234, align 8
  %236 = load i64, i64* %15, align 8
  %237 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %238 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = sub nsw i64 %236, %239
  %241 = add nsw i64 %235, %240
  %242 = call i32 @OFF_TO_IDX(i64 %241)
  store i32 %242, i32* %21, align 4
  %243 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %244 = load i32, i32* %21, align 4
  %245 = call %struct.TYPE_29__* @vm_page_lookup(%struct.TYPE_30__* %243, i32 %244)
  store %struct.TYPE_29__* %245, %struct.TYPE_29__** %20, align 8
  %246 = load %struct.TYPE_29__*, %struct.TYPE_29__** %20, align 8
  %247 = icmp ne %struct.TYPE_29__* %246, null
  br i1 %247, label %248, label %253

248:                                              ; preds = %232
  %249 = load %struct.TYPE_29__*, %struct.TYPE_29__** %20, align 8
  %250 = call i64 @vm_page_none_valid(%struct.TYPE_29__* %249)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %253

252:                                              ; preds = %248
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %20, align 8
  br label %253

253:                                              ; preds = %252, %248, %232
  %254 = load %struct.TYPE_29__*, %struct.TYPE_29__** %20, align 8
  %255 = icmp ne %struct.TYPE_29__* %254, null
  br i1 %255, label %256, label %258

256:                                              ; preds = %253
  %257 = load i32, i32* @MINCORE_INCORE, align 4
  store i32 %257, i32* %24, align 4
  br label %258

258:                                              ; preds = %256, %253
  br label %259

259:                                              ; preds = %258, %226
  br label %260

260:                                              ; preds = %259, %191
  br label %261

261:                                              ; preds = %260, %185
  br label %262

262:                                              ; preds = %261, %143
  %263 = load %struct.TYPE_29__*, %struct.TYPE_29__** %20, align 8
  %264 = icmp ne %struct.TYPE_29__* %263, null
  br i1 %264, label %265, label %313

265:                                              ; preds = %262
  %266 = load %struct.TYPE_29__*, %struct.TYPE_29__** %20, align 8
  %267 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %266, i32 0, i32 2
  %268 = load %struct.TYPE_30__*, %struct.TYPE_30__** %267, align 8
  %269 = call i32 @VM_OBJECT_ASSERT_WLOCKED(%struct.TYPE_30__* %268)
  %270 = load %struct.TYPE_29__*, %struct.TYPE_29__** %20, align 8
  %271 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = icmp eq i64 %272, 0
  br i1 %273, label %274, label %281

274:                                              ; preds = %265
  %275 = load %struct.TYPE_29__*, %struct.TYPE_29__** %20, align 8
  %276 = call i64 @pmap_is_modified(%struct.TYPE_29__* %275)
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %281

278:                                              ; preds = %274
  %279 = load %struct.TYPE_29__*, %struct.TYPE_29__** %20, align 8
  %280 = call i32 @vm_page_dirty(%struct.TYPE_29__* %279)
  br label %281

281:                                              ; preds = %278, %274, %265
  %282 = load %struct.TYPE_29__*, %struct.TYPE_29__** %20, align 8
  %283 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %282, i32 0, i32 0
  %284 = load i64, i64* %283, align 8
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %290

286:                                              ; preds = %281
  %287 = load i32, i32* @MINCORE_MODIFIED_OTHER, align 4
  %288 = load i32, i32* %24, align 4
  %289 = or i32 %288, %287
  store i32 %289, i32* %24, align 4
  br label %290

290:                                              ; preds = %286, %281
  %291 = load %struct.TYPE_29__*, %struct.TYPE_29__** %20, align 8
  %292 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 8
  %294 = load i32, i32* @PGA_REFERENCED, align 4
  %295 = and i32 %293, %294
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %308, label %297

297:                                              ; preds = %290
  %298 = load %struct.TYPE_29__*, %struct.TYPE_29__** %20, align 8
  %299 = call i64 @pmap_is_referenced(%struct.TYPE_29__* %298)
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %308, label %301

301:                                              ; preds = %297
  %302 = load %struct.TYPE_29__*, %struct.TYPE_29__** %20, align 8
  %303 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 8
  %305 = load i32, i32* @PGA_REFERENCED, align 4
  %306 = and i32 %304, %305
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %312

308:                                              ; preds = %301, %297, %290
  %309 = load i32, i32* @MINCORE_REFERENCED_OTHER, align 4
  %310 = load i32, i32* %24, align 4
  %311 = or i32 %310, %309
  store i32 %311, i32* %24, align 4
  br label %312

312:                                              ; preds = %308, %301
  br label %313

313:                                              ; preds = %312, %262
  %314 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %315 = icmp ne %struct.TYPE_30__* %314, null
  br i1 %315, label %316, label %319

316:                                              ; preds = %313
  %317 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %318 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_30__* %317)
  br label %319

319:                                              ; preds = %316, %313
  %320 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %321 = call i32 @vm_map_unlock_read(%struct.TYPE_31__* %320)
  %322 = load i64, i64* %15, align 8
  %323 = load i64, i64* %18, align 8
  %324 = sub nsw i64 %322, %323
  %325 = call i32 @atop(i64 %324)
  store i32 %325, i32* %25, align 4
  br label %326

326:                                              ; preds = %343, %319
  %327 = load i32, i32* %23, align 4
  %328 = add nsw i32 %327, 1
  %329 = load i32, i32* %25, align 4
  %330 = icmp slt i32 %328, %329
  br i1 %330, label %331, label %344

331:                                              ; preds = %326
  %332 = load i32, i32* %23, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %23, align 4
  %334 = load i8*, i8** %9, align 8
  %335 = load i32, i32* %23, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i8, i8* %334, i64 %336
  %338 = call i32 @subyte(i8* %337, i32 0)
  store i32 %338, i32* %22, align 4
  %339 = load i32, i32* %22, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %343

341:                                              ; preds = %331
  %342 = load i32, i32* @EFAULT, align 4
  store i32 %342, i32* %22, align 4
  br label %408

343:                                              ; preds = %331
  br label %326

344:                                              ; preds = %326
  %345 = load i8*, i8** %9, align 8
  %346 = load i32, i32* %25, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i8, i8* %345, i64 %347
  %349 = load i32, i32* %24, align 4
  %350 = call i32 @subyte(i8* %348, i32 %349)
  store i32 %350, i32* %22, align 4
  %351 = load i32, i32* %22, align 4
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %355

353:                                              ; preds = %344
  %354 = load i32, i32* @EFAULT, align 4
  store i32 %354, i32* %22, align 4
  br label %408

355:                                              ; preds = %344
  %356 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %357 = call i32 @vm_map_lock_read(%struct.TYPE_31__* %356)
  %358 = load i32, i32* %26, align 4
  %359 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %360 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 4
  %362 = icmp ne i32 %358, %361
  br i1 %362, label %363, label %364

363:                                              ; preds = %355
  br label %58

364:                                              ; preds = %355
  %365 = load i32, i32* %25, align 4
  store i32 %365, i32* %23, align 4
  br label %366

366:                                              ; preds = %364
  %367 = load i64, i64* @PAGE_SIZE, align 8
  %368 = load i64, i64* %15, align 8
  %369 = add nsw i64 %368, %367
  store i64 %369, i64* %15, align 8
  br label %132

370:                                              ; preds = %132
  br label %71

371:                                              ; preds = %71
  %372 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %373 = call i32 @vm_map_unlock_read(%struct.TYPE_31__* %372)
  %374 = load i64, i64* %17, align 8
  %375 = load i64, i64* %18, align 8
  %376 = sub nsw i64 %374, %375
  %377 = call i32 @atop(i64 %376)
  store i32 %377, i32* %25, align 4
  br label %378

378:                                              ; preds = %395, %371
  %379 = load i32, i32* %23, align 4
  %380 = add nsw i32 %379, 1
  %381 = load i32, i32* %25, align 4
  %382 = icmp slt i32 %380, %381
  br i1 %382, label %383, label %396

383:                                              ; preds = %378
  %384 = load i32, i32* %23, align 4
  %385 = add nsw i32 %384, 1
  store i32 %385, i32* %23, align 4
  %386 = load i8*, i8** %9, align 8
  %387 = load i32, i32* %23, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds i8, i8* %386, i64 %388
  %390 = call i32 @subyte(i8* %389, i32 0)
  store i32 %390, i32* %22, align 4
  %391 = load i32, i32* %22, align 4
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %395

393:                                              ; preds = %383
  %394 = load i32, i32* @EFAULT, align 4
  store i32 %394, i32* %22, align 4
  br label %408

395:                                              ; preds = %383
  br label %378

396:                                              ; preds = %378
  %397 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %398 = call i32 @vm_map_lock_read(%struct.TYPE_31__* %397)
  %399 = load i32, i32* %26, align 4
  %400 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %401 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %400, i32 0, i32 0
  %402 = load i32, i32* %401, align 4
  %403 = icmp ne i32 %399, %402
  br i1 %403, label %404, label %405

404:                                              ; preds = %396
  br label %58

405:                                              ; preds = %396
  %406 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %407 = call i32 @vm_map_unlock_read(%struct.TYPE_31__* %406)
  br label %408

408:                                              ; preds = %405, %393, %353, %341
  %409 = load i32, i32* %22, align 4
  store i32 %409, i32* %5, align 4
  br label %410

410:                                              ; preds = %408, %94, %66, %47
  %411 = load i32, i32* %5, align 4
  ret i32 %411
}

declare dso_local i64 @trunc_page(i64) #1

declare dso_local i64 @round_page(i64) #1

declare dso_local i64 @vm_map_max(%struct.TYPE_31__*) #1

declare dso_local i32 @vmspace_pmap(%struct.TYPE_33__*) #1

declare dso_local i32 @vm_map_lock_read(%struct.TYPE_31__*) #1

declare dso_local i32 @vm_map_lookup_entry(%struct.TYPE_31__*, i64, %struct.TYPE_32__**) #1

declare dso_local i32 @vm_map_unlock_read(%struct.TYPE_31__*) #1

declare dso_local %struct.TYPE_32__* @vm_map_entry_succ(%struct.TYPE_32__*) #1

declare dso_local i32 @pmap_mincore(i32, i64, i64*) #1

declare dso_local %struct.TYPE_29__* @PHYS_TO_VM_PAGE(i64) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_30__*) #1

declare dso_local i64 @atomic_load_ptr(%struct.TYPE_30__**) #1

declare dso_local i32 @VM_OBJECT_WLOCK(%struct.TYPE_30__*) #1

declare dso_local i64 @pmap_extract(i32, i64) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @vm_page_all_valid(%struct.TYPE_29__*) #1

declare dso_local i32 @OFF_TO_IDX(i64) #1

declare dso_local %struct.TYPE_29__* @vm_page_lookup(%struct.TYPE_30__*, i32) #1

declare dso_local i64 @vm_page_none_valid(%struct.TYPE_29__*) #1

declare dso_local i32 @VM_OBJECT_ASSERT_WLOCKED(%struct.TYPE_30__*) #1

declare dso_local i64 @pmap_is_modified(%struct.TYPE_29__*) #1

declare dso_local i32 @vm_page_dirty(%struct.TYPE_29__*) #1

declare dso_local i64 @pmap_is_referenced(%struct.TYPE_29__*) #1

declare dso_local i32 @atop(i64) #1

declare dso_local i32 @subyte(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
