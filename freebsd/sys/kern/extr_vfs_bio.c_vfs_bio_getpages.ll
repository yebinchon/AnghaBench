; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_vfs_bio_getpages.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_vfs_bio_getpages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.vnode = type { %struct.mount*, %struct.TYPE_20__* }
%struct.mount = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_19__ = type { i32 }
%struct.vnode.0 = type opaque
%struct.vnode.1 = type opaque
%struct.buf = type { i32, i32 }

@VM_PAGER_BAD = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@v_vnodein = common dso_local global i32 0, align 4
@v_vnodepgsin = common dso_local global i32 0, align 4
@MNTK_UNMAPPED_BUFS = common dso_local global i32 0, align 4
@GB_UNMAPPED = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_16__* null, align 8
@buf_pager_relbuf = common dso_local global i64 0, align 8
@B_RELBUF = common dso_local global i32 0, align 4
@B_NOCACHE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"buf %d %p invalid\00", align 1
@TRUE = common dso_local global i32 0, align 4
@VM_ALLOC_NORMAL = common dso_local global i32 0, align 4
@VM_PAGER_ERROR = common dso_local global i32 0, align 4
@VM_PAGER_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfs_bio_getpages(%struct.vnode* %0, %struct.TYPE_19__** %1, i32 %2, i32* %3, i32* %4, i32 (%struct.vnode.0*, i64)* %5, i8* (%struct.vnode.1*, i32)* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.vnode*, align 8
  %10 = alloca %struct.TYPE_19__**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32 (%struct.vnode.0*, i64)*, align 8
  %15 = alloca i8* (%struct.vnode.1*, i32)*, align 8
  %16 = alloca %struct.TYPE_19__*, align 8
  %17 = alloca %struct.TYPE_20__*, align 8
  %18 = alloca %struct.buf*, align 8
  %19 = alloca %struct.mount*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %9, align 8
  store %struct.TYPE_19__** %1, %struct.TYPE_19__*** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32 (%struct.vnode.0*, i64)* %5, i32 (%struct.vnode.0*, i64)** %14, align 8
  store i8* (%struct.vnode.1*, i32)* %6, i8* (%struct.vnode.1*, i32)** %15, align 8
  %36 = load %struct.vnode*, %struct.vnode** %9, align 8
  %37 = getelementptr inbounds %struct.vnode, %struct.vnode* %36, i32 0, i32 1
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %37, align 8
  store %struct.TYPE_20__* %38, %struct.TYPE_20__** %17, align 8
  %39 = load %struct.vnode*, %struct.vnode** %9, align 8
  %40 = getelementptr inbounds %struct.vnode, %struct.vnode* %39, i32 0, i32 0
  %41 = load %struct.mount*, %struct.mount** %40, align 8
  store %struct.mount* %41, %struct.mount** %19, align 8
  store i32 0, i32* %29, align 4
  %42 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %10, align 8
  %43 = load i32, i32* %11, align 4
  %44 = sub nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %42, i64 %45
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @IDX_TO_OFF(i32 %49)
  store i64 %50, i64* %22, align 8
  %51 = load i64, i64* %22, align 8
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp sge i64 %51, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %7
  %59 = load i32, i32* @VM_PAGER_BAD, align 4
  store i32 %59, i32* %8, align 4
  br label %368

60:                                               ; preds = %7
  %61 = load i32, i32* @PAGE_SIZE, align 4
  %62 = sext i32 %61 to i64
  %63 = load i64, i64* %22, align 8
  %64 = add nsw i64 %63, %62
  store i64 %64, i64* %22, align 8
  %65 = load i64, i64* %22, align 8
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp sgt i64 %65, %70
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %35, align 4
  %73 = load i8* (%struct.vnode.1*, i32)*, i8* (%struct.vnode.1*, i32)** %15, align 8
  %74 = load %struct.vnode*, %struct.vnode** %9, align 8
  %75 = bitcast %struct.vnode* %74 to %struct.vnode.1*
  %76 = load i32 (%struct.vnode.0*, i64)*, i32 (%struct.vnode.0*, i64)** %14, align 8
  %77 = load %struct.vnode*, %struct.vnode** %9, align 8
  %78 = bitcast %struct.vnode* %77 to %struct.vnode.0*
  %79 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %79, i64 0
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @IDX_TO_OFF(i32 %83)
  %85 = call i32 %76(%struct.vnode.0* %78, i64 %84)
  %86 = call i8* %73(%struct.vnode.1* %75, i32 %85)
  %87 = ptrtoint i8* %86 to i32
  store i32 %87, i32* %27, align 4
  %88 = load i32, i32* %11, align 4
  store i32 %88, i32* %31, align 4
  %89 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %89, i64 0
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @IDX_TO_OFF(i32 %93)
  store i64 %94, i64* %23, align 8
  %95 = load i64, i64* %23, align 8
  %96 = load i64, i64* %23, align 8
  %97 = load i32, i32* %27, align 4
  %98 = call i64 @rounddown2(i64 %96, i32 %97)
  %99 = sub nsw i64 %95, %98
  %100 = call i32 @OFF_TO_IDX(i64 %99)
  store i32 %100, i32* %33, align 4
  %101 = load i32, i32* %33, align 4
  %102 = load i32, i32* %31, align 4
  %103 = add nsw i32 %102, %101
  store i32 %103, i32* %31, align 4
  %104 = load i32*, i32** %12, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %106, label %109

106:                                              ; preds = %60
  %107 = load i32, i32* %33, align 4
  %108 = load i32*, i32** %12, align 8
  store i32 %107, i32* %108, align 4
  br label %109

109:                                              ; preds = %106, %60
  %110 = load i64, i64* %22, align 8
  %111 = load i32, i32* %27, align 4
  %112 = call i64 @roundup2(i64 %110, i32 %111)
  %113 = load i64, i64* %22, align 8
  %114 = sub nsw i64 %112, %113
  %115 = call i32 @OFF_TO_IDX(i64 %114)
  store i32 %115, i32* %32, align 4
  %116 = load i64, i64* %22, align 8
  %117 = load i32, i32* %32, align 4
  %118 = call i64 @IDX_TO_OFF(i32 %117)
  %119 = add nsw i64 %116, %118
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp sge i64 %119, %124
  br i1 %125, label %126, label %137

126:                                              ; preds = %109
  %127 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i32, i32* @PAGE_SIZE, align 4
  %133 = call i64 @roundup2(i64 %131, i32 %132)
  %134 = load i64, i64* %22, align 8
  %135 = sub nsw i64 %133, %134
  %136 = call i32 @OFF_TO_IDX(i64 %135)
  store i32 %136, i32* %32, align 4
  br label %137

137:                                              ; preds = %126, %109
  %138 = load i32, i32* %32, align 4
  %139 = load i32, i32* %31, align 4
  %140 = add nsw i32 %139, %138
  store i32 %140, i32* %31, align 4
  %141 = load i32*, i32** %13, align 8
  %142 = icmp ne i32* %141, null
  br i1 %142, label %143, label %146

143:                                              ; preds = %137
  %144 = load i32, i32* %32, align 4
  %145 = load i32*, i32** %13, align 8
  store i32 %144, i32* %145, align 4
  br label %146

146:                                              ; preds = %143, %137
  %147 = load i32, i32* @v_vnodein, align 4
  %148 = call i32 @VM_CNT_INC(i32 %147)
  %149 = load i32, i32* @v_vnodepgsin, align 4
  %150 = load i32, i32* %31, align 4
  %151 = call i32 @VM_CNT_ADD(i32 %149, i32 %150)
  %152 = load %struct.mount*, %struct.mount** %19, align 8
  %153 = icmp ne %struct.mount* %152, null
  br i1 %153, label %154, label %163

154:                                              ; preds = %146
  %155 = load %struct.mount*, %struct.mount** %19, align 8
  %156 = getelementptr inbounds %struct.mount, %struct.mount* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @MNTK_UNMAPPED_BUFS, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %154
  %162 = load i32, i32* @GB_UNMAPPED, align 4
  br label %164

163:                                              ; preds = %154, %146
  br label %164

164:                                              ; preds = %163, %161
  %165 = phi i32 [ %162, %161 ], [ 0, %163 ]
  store i32 %165, i32* %28, align 4
  br label %166

166:                                              ; preds = %358, %164
  store i32 0, i32* %30, align 4
  br label %167

167:                                              ; preds = %178, %166
  %168 = load i32, i32* %30, align 4
  %169 = load i32, i32* %11, align 4
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %171, label %181

171:                                              ; preds = %167
  %172 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %10, align 8
  %173 = load i32, i32* %30, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %172, i64 %174
  %176 = load %struct.TYPE_19__*, %struct.TYPE_19__** %175, align 8
  %177 = call i32 @vm_page_busy_downgrade(%struct.TYPE_19__* %176)
  br label %178

178:                                              ; preds = %171
  %179 = load i32, i32* %30, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %30, align 4
  br label %167

181:                                              ; preds = %167
  store i32 -1, i32* %21, align 4
  store i32 0, i32* %30, align 4
  br label %182

182:                                              ; preds = %306, %181
  %183 = load i32, i32* %30, align 4
  %184 = load i32, i32* %11, align 4
  %185 = icmp slt i32 %183, %184
  br i1 %185, label %186, label %309

186:                                              ; preds = %182
  %187 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %10, align 8
  %188 = load i32, i32* %30, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %187, i64 %189
  %191 = load %struct.TYPE_19__*, %struct.TYPE_19__** %190, align 8
  store %struct.TYPE_19__* %191, %struct.TYPE_19__** %16, align 8
  %192 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %193 = call i64 @vm_page_all_valid(%struct.TYPE_19__* %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %186
  br label %306

196:                                              ; preds = %186
  %197 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %198 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = call i64 @IDX_TO_OFF(i32 %199)
  store i64 %200, i64* %24, align 8
  %201 = load i64, i64* %24, align 8
  %202 = load i32, i32* @PAGE_SIZE, align 4
  %203 = sext i32 %202 to i64
  %204 = add nsw i64 %201, %203
  %205 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %206 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = call i64 @MIN(i64 %204, i64 %209)
  store i64 %210, i64* %25, align 8
  br label %211

211:                                              ; preds = %275, %196
  %212 = load i64, i64* %24, align 8
  %213 = load i64, i64* %25, align 8
  %214 = icmp slt i64 %212, %213
  br i1 %214, label %215, label %279

215:                                              ; preds = %211
  %216 = load i32 (%struct.vnode.0*, i64)*, i32 (%struct.vnode.0*, i64)** %14, align 8
  %217 = load %struct.vnode*, %struct.vnode** %9, align 8
  %218 = bitcast %struct.vnode* %217 to %struct.vnode.0*
  %219 = load i64, i64* %24, align 8
  %220 = call i32 %216(%struct.vnode.0* %218, i64 %219)
  store i32 %220, i32* %20, align 4
  %221 = load i32, i32* %20, align 4
  %222 = load i32, i32* %21, align 4
  %223 = icmp eq i32 %221, %222
  br i1 %223, label %224, label %225

224:                                              ; preds = %215
  br label %305

225:                                              ; preds = %215
  %226 = load i32, i32* %20, align 4
  store i32 %226, i32* %21, align 4
  %227 = load i8* (%struct.vnode.1*, i32)*, i8* (%struct.vnode.1*, i32)** %15, align 8
  %228 = load %struct.vnode*, %struct.vnode** %9, align 8
  %229 = bitcast %struct.vnode* %228 to %struct.vnode.1*
  %230 = load i32, i32* %20, align 4
  %231 = call i8* %227(%struct.vnode.1* %229, i32 %230)
  %232 = ptrtoint i8* %231 to i64
  store i64 %232, i64* %26, align 8
  %233 = load %struct.vnode*, %struct.vnode** %9, align 8
  %234 = load i32, i32* %20, align 4
  %235 = load i64, i64* %26, align 8
  %236 = load %struct.TYPE_16__*, %struct.TYPE_16__** @curthread, align 8
  %237 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* %28, align 4
  %240 = call i32 @bread_gb(%struct.vnode* %233, i32 %234, i64 %235, i32 %238, i32 %239, %struct.buf** %18)
  store i32 %240, i32* %29, align 4
  %241 = load i32, i32* %29, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %225
  br label %310

244:                                              ; preds = %225
  %245 = load %struct.buf*, %struct.buf** %18, align 8
  %246 = getelementptr inbounds %struct.buf, %struct.buf* %245, i32 0, i32 1
  %247 = call i64 @LIST_EMPTY(i32* %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %271

249:                                              ; preds = %244
  %250 = load i64, i64* @buf_pager_relbuf, align 8
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %256, label %252

252:                                              ; preds = %249
  %253 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %254 = call i64 @vm_page_all_valid(%struct.TYPE_19__* %253)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %262, label %256

256:                                              ; preds = %252, %249
  %257 = load i32, i32* @B_RELBUF, align 4
  %258 = load %struct.buf*, %struct.buf** %18, align 8
  %259 = getelementptr inbounds %struct.buf, %struct.buf* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = or i32 %260, %257
  store i32 %261, i32* %259, align 4
  br label %262

262:                                              ; preds = %256, %252
  %263 = load i32, i32* @B_NOCACHE, align 4
  %264 = xor i32 %263, -1
  %265 = load %struct.buf*, %struct.buf** %18, align 8
  %266 = getelementptr inbounds %struct.buf, %struct.buf* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = and i32 %267, %264
  store i32 %268, i32* %266, align 4
  %269 = load %struct.buf*, %struct.buf** %18, align 8
  %270 = call i32 @brelse(%struct.buf* %269)
  br label %274

271:                                              ; preds = %244
  %272 = load %struct.buf*, %struct.buf** %18, align 8
  %273 = call i32 @bqrelse(%struct.buf* %272)
  br label %274

274:                                              ; preds = %271, %262
  br label %275

275:                                              ; preds = %274
  %276 = load i64, i64* %26, align 8
  %277 = load i64, i64* %24, align 8
  %278 = add nsw i64 %277, %276
  store i64 %278, i64* %24, align 8
  br label %211

279:                                              ; preds = %211
  %280 = load i32, i32* %30, align 4
  %281 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %282 = bitcast %struct.TYPE_19__* %281 to i8*
  %283 = call i32 @KASSERT(i32 1, i8* %282)
  %284 = load i32, i32* %30, align 4
  %285 = load i32, i32* %11, align 4
  %286 = sub nsw i32 %285, 1
  %287 = icmp eq i32 %284, %286
  br i1 %287, label %288, label %304

288:                                              ; preds = %279
  %289 = load i32, i32* %35, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %304

291:                                              ; preds = %288
  %292 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %293 = call i32 @vm_page_none_valid(%struct.TYPE_19__* %292)
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %303, label %295

295:                                              ; preds = %291
  %296 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %297 = call i64 @vm_page_all_valid(%struct.TYPE_19__* %296)
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %303, label %299

299:                                              ; preds = %295
  %300 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %301 = load i32, i32* @TRUE, align 4
  %302 = call i32 @vm_page_zero_invalid(%struct.TYPE_19__* %300, i32 %301)
  br label %303

303:                                              ; preds = %299, %295, %291
  br label %304

304:                                              ; preds = %303, %288, %279
  br label %305

305:                                              ; preds = %304, %224
  br label %306

306:                                              ; preds = %305, %195
  %307 = load i32, i32* %30, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %30, align 4
  br label %182

309:                                              ; preds = %182
  br label %310

310:                                              ; preds = %309, %243
  %311 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %312 = call i32 @VM_OBJECT_WLOCK(%struct.TYPE_20__* %311)
  store i32 0, i32* %34, align 4
  store i32 0, i32* %30, align 4
  br label %313

313:                                              ; preds = %347, %310
  %314 = load i32, i32* %30, align 4
  %315 = load i32, i32* %11, align 4
  %316 = icmp slt i32 %314, %315
  br i1 %316, label %317, label %350

317:                                              ; preds = %313
  %318 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %10, align 8
  %319 = load i32, i32* %30, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %318, i64 %320
  %322 = load %struct.TYPE_19__*, %struct.TYPE_19__** %321, align 8
  %323 = call i32 @vm_page_sunbusy(%struct.TYPE_19__* %322)
  %324 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %325 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %10, align 8
  %326 = load i32, i32* %30, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %325, i64 %327
  %329 = load %struct.TYPE_19__*, %struct.TYPE_19__** %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 4
  %332 = load i32, i32* @VM_ALLOC_NORMAL, align 4
  %333 = call %struct.TYPE_19__* @vm_page_grab(%struct.TYPE_20__* %324, i32 %331, i32 %332)
  %334 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %10, align 8
  %335 = load i32, i32* %30, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %334, i64 %336
  store %struct.TYPE_19__* %333, %struct.TYPE_19__** %337, align 8
  %338 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %10, align 8
  %339 = load i32, i32* %30, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %338, i64 %340
  %342 = load %struct.TYPE_19__*, %struct.TYPE_19__** %341, align 8
  %343 = call i64 @vm_page_all_valid(%struct.TYPE_19__* %342)
  %344 = icmp ne i64 %343, 0
  br i1 %344, label %346, label %345

345:                                              ; preds = %317
  store i32 1, i32* %34, align 4
  br label %346

346:                                              ; preds = %345, %317
  br label %347

347:                                              ; preds = %346
  %348 = load i32, i32* %30, align 4
  %349 = add nsw i32 %348, 1
  store i32 %349, i32* %30, align 4
  br label %313

350:                                              ; preds = %313
  %351 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %352 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_20__* %351)
  %353 = load i32, i32* %34, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %359

355:                                              ; preds = %350
  %356 = load i32, i32* %29, align 4
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %358, label %359

358:                                              ; preds = %355
  br label %166

359:                                              ; preds = %355, %350
  %360 = load i32, i32* %29, align 4
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %364

362:                                              ; preds = %359
  %363 = load i32, i32* @VM_PAGER_ERROR, align 4
  br label %366

364:                                              ; preds = %359
  %365 = load i32, i32* @VM_PAGER_OK, align 4
  br label %366

366:                                              ; preds = %364, %362
  %367 = phi i32 [ %363, %362 ], [ %365, %364 ]
  store i32 %367, i32* %8, align 4
  br label %368

368:                                              ; preds = %366, %58
  %369 = load i32, i32* %8, align 4
  ret i32 %369
}

declare dso_local i64 @IDX_TO_OFF(i32) #1

declare dso_local i32 @OFF_TO_IDX(i64) #1

declare dso_local i64 @rounddown2(i64, i32) #1

declare dso_local i64 @roundup2(i64, i32) #1

declare dso_local i32 @VM_CNT_INC(i32) #1

declare dso_local i32 @VM_CNT_ADD(i32, i32) #1

declare dso_local i32 @vm_page_busy_downgrade(%struct.TYPE_19__*) #1

declare dso_local i64 @vm_page_all_valid(%struct.TYPE_19__*) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i32 @bread_gb(%struct.vnode*, i32, i64, i32, i32, %struct.buf**) #1

declare dso_local i64 @LIST_EMPTY(i32*) #1

declare dso_local i32 @brelse(%struct.buf*) #1

declare dso_local i32 @bqrelse(%struct.buf*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @vm_page_none_valid(%struct.TYPE_19__*) #1

declare dso_local i32 @vm_page_zero_invalid(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @VM_OBJECT_WLOCK(%struct.TYPE_20__*) #1

declare dso_local i32 @vm_page_sunbusy(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_19__* @vm_page_grab(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
