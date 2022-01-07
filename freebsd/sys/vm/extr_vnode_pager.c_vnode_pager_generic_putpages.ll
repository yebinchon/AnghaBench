; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vnode_pager.c_vnode_pager_generic_putpages.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vnode_pager.c_vnode_pager_generic_putpages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.vnode = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_19__ = type { i64, i64 }
%struct.uio = type { i32, i32, i32, i32*, i32, i32, %struct.iovec* }
%struct.iovec = type { i32, i32* }

@vnode_pager_generic_putpages.lastfail = internal global %struct.timeval zeroinitializer, align 4
@vnode_pager_generic_putpages.curfail = internal global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@VM_PAGER_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"vnode_pager_generic_putpages: attempt to write meta-data 0x%jx(%lx)\0A\00", align 1
@VM_PAGER_BAD = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@DEV_BSIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [55 x i8] c"vnode_pager_generic_putpages: page %p is not read-only\00", align 1
@UIO_NOCOPY = common dso_local global i32 0, align 4
@UIO_WRITE = common dso_local global i32 0, align 4
@NBBY = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_16__* null, align 8
@.str.2 = private unnamed_addr constant [58 x i8] c"vnode_pager_putpages: zero-length write at %ju resid %zd\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"vnode_pager_putpages: I/O error %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"vnode_pager_putpages: residual I/O %zd at %ju\0A\00", align 1
@VM_PAGER_OK = common dso_local global i32 0, align 4
@v_vnodepgsout = common dso_local global i32 0, align 4
@v_vnodeout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnode_pager_generic_putpages(%struct.vnode* %0, %struct.TYPE_19__** %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca %struct.TYPE_19__**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_20__*, align 8
  %13 = alloca %struct.TYPE_19__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.uio, align 8
  %19 = alloca %struct.iovec, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %7, align 8
  store %struct.TYPE_19__** %1, %struct.TYPE_19__*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %30 = load %struct.vnode*, %struct.vnode** %7, align 8
  %31 = getelementptr inbounds %struct.vnode, %struct.vnode* %30, i32 0, i32 0
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %31, align 8
  store %struct.TYPE_20__* %32, %struct.TYPE_20__** %12, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @PAGE_SIZE, align 4
  %35 = sdiv i32 %33, %34
  store i32 %35, i32* %22, align 4
  store i32 0, i32* %24, align 4
  br label %36

36:                                               ; preds = %46, %5
  %37 = load i32, i32* %24, align 4
  %38 = load i32, i32* %22, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %36
  %41 = load i32, i32* @VM_PAGER_ERROR, align 4
  %42 = load i32*, i32** %11, align 8
  %43 = load i32, i32* %24, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32 %41, i32* %45, align 4
  br label %46

46:                                               ; preds = %40
  %47 = load i32, i32* %24, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %24, align 4
  br label %36

49:                                               ; preds = %36
  %50 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %50, i64 0
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %74

56:                                               ; preds = %49
  %57 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %57, i64 0
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %63, i64 0
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = call i32 @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %68)
  %70 = load i32, i32* @VM_PAGER_BAD, align 4
  %71 = load i32*, i32** %11, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* @VM_PAGER_BAD, align 4
  store i32 %73, i32* %6, align 4
  br label %487

74:                                               ; preds = %49
  %75 = load i32, i32* %22, align 4
  %76 = load i32, i32* @PAGE_SIZE, align 4
  %77 = mul nsw i32 %75, %76
  store i32 %77, i32* %25, align 4
  %78 = load i32, i32* %22, align 4
  store i32 %78, i32* %26, align 4
  %79 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %79, i64 0
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @IDX_TO_OFF(i64 %83)
  store i32 %84, i32* %16, align 4
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %86 = call i32 @VM_OBJECT_RLOCK(%struct.TYPE_20__* %85)
  %87 = load i32, i32* %25, align 4
  %88 = load i32, i32* %16, align 4
  %89 = add nsw i32 %87, %88
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp sgt i32 %89, %94
  br i1 %95, label %96, label %191

96:                                               ; preds = %74
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %98 = call i32 @VM_OBJECT_TRYUPGRADE(%struct.TYPE_20__* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %116, label %100

100:                                              ; preds = %96
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %102 = call i32 @VM_OBJECT_RUNLOCK(%struct.TYPE_20__* %101)
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %104 = call i32 @VM_OBJECT_WLOCK(%struct.TYPE_20__* %103)
  %105 = load i32, i32* %25, align 4
  %106 = load i32, i32* %16, align 4
  %107 = add nsw i32 %105, %106
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp sle i32 %107, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %100
  br label %188

115:                                              ; preds = %100
  br label %116

116:                                              ; preds = %115, %96
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %16, align 4
  %123 = icmp sgt i32 %121, %122
  br i1 %123, label %124, label %171

124:                                              ; preds = %116
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %16, align 4
  %131 = sub nsw i32 %129, %130
  store i32 %131, i32* %25, align 4
  %132 = load i32, i32* %25, align 4
  %133 = call i32 @btoc(i32 %132)
  store i32 %133, i32* %26, align 4
  %134 = load i32, i32* %25, align 4
  %135 = load i32, i32* @PAGE_MASK, align 4
  %136 = and i32 %134, %135
  store i32 %136, i32* %27, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %170

138:                                              ; preds = %124
  %139 = load i32, i32* %27, align 4
  %140 = load i64, i64* @DEV_BSIZE, align 8
  %141 = call i32 @roundup2(i32 %139, i64 %140)
  store i32 %141, i32* %27, align 4
  %142 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %8, align 8
  %143 = load i32, i32* %26, align 4
  %144 = sub nsw i32 %143, 1
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %142, i64 %145
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %146, align 8
  store %struct.TYPE_19__* %147, %struct.TYPE_19__** %13, align 8
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %149 = call i32 @vm_page_assert_sbusied(%struct.TYPE_19__* %148)
  %150 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %151 = call i32 @pmap_page_is_write_mapped(%struct.TYPE_19__* %150)
  %152 = icmp ne i32 %151, 0
  %153 = xor i1 %152, true
  %154 = zext i1 %153 to i32
  %155 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %156 = bitcast %struct.TYPE_19__* %155 to i8*
  %157 = call i32 @KASSERT(i32 %154, i8* %156)
  %158 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %159 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  %162 = zext i1 %161 to i32
  %163 = call i32 @MPASS(i32 %162)
  %164 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %165 = load i32, i32* %27, align 4
  %166 = load i32, i32* @PAGE_SIZE, align 4
  %167 = load i32, i32* %27, align 4
  %168 = sub nsw i32 %166, %167
  %169 = call i32 @vm_page_clear_dirty(%struct.TYPE_19__* %164, i32 %165, i32 %168)
  br label %170

170:                                              ; preds = %138, %124
  br label %172

171:                                              ; preds = %116
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  br label %172

172:                                              ; preds = %171, %170
  %173 = load i32, i32* %26, align 4
  store i32 %173, i32* %24, align 4
  br label %174

174:                                              ; preds = %184, %172
  %175 = load i32, i32* %24, align 4
  %176 = load i32, i32* %22, align 4
  %177 = icmp slt i32 %175, %176
  br i1 %177, label %178, label %187

178:                                              ; preds = %174
  %179 = load i32, i32* @VM_PAGER_BAD, align 4
  %180 = load i32*, i32** %11, align 8
  %181 = load i32, i32* %24, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  store i32 %179, i32* %183, align 4
  br label %184

184:                                              ; preds = %178
  %185 = load i32, i32* %24, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %24, align 4
  br label %174

187:                                              ; preds = %174
  br label %188

188:                                              ; preds = %187, %114
  %189 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %190 = call i32 @VM_OBJECT_LOCK_DOWNGRADE(%struct.TYPE_20__* %189)
  br label %191

191:                                              ; preds = %188, %74
  %192 = getelementptr inbounds %struct.uio, %struct.uio* %18, i32 0, i32 6
  store %struct.iovec* %19, %struct.iovec** %192, align 8
  %193 = load i32, i32* @UIO_NOCOPY, align 4
  %194 = getelementptr inbounds %struct.uio, %struct.uio* %18, i32 0, i32 5
  store i32 %193, i32* %194, align 4
  %195 = load i32, i32* @UIO_WRITE, align 4
  %196 = getelementptr inbounds %struct.uio, %struct.uio* %18, i32 0, i32 4
  store i32 %195, i32* %196, align 8
  %197 = getelementptr inbounds %struct.uio, %struct.uio* %18, i32 0, i32 3
  store i32* null, i32** %197, align 8
  %198 = load i32, i32* %16, align 4
  %199 = load i32, i32* %25, align 4
  %200 = add nsw i32 %198, %199
  %201 = load i64, i64* @DEV_BSIZE, align 8
  %202 = call i32 @roundup2(i32 %200, i64 %201)
  store i32 %202, i32* %14, align 4
  %203 = load i32, i32* %16, align 4
  store i32 %203, i32* %17, align 4
  br label %204

204:                                              ; preds = %412, %191
  %205 = load i32, i32* %17, align 4
  %206 = load i32, i32* %14, align 4
  %207 = icmp slt i32 %205, %206
  br i1 %207, label %208, label %413

208:                                              ; preds = %204
  store i32 1, i32* %29, align 4
  br label %209

209:                                              ; preds = %257, %208
  %210 = load i32, i32* %29, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %216

212:                                              ; preds = %209
  %213 = load i32, i32* %17, align 4
  %214 = load i32, i32* %14, align 4
  %215 = icmp slt i32 %213, %214
  br label %216

216:                                              ; preds = %212, %209
  %217 = phi i1 [ false, %209 ], [ %215, %212 ]
  br i1 %217, label %218, label %258

218:                                              ; preds = %216
  %219 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %8, align 8
  %220 = load i32, i32* %17, align 4
  %221 = load i32, i32* %16, align 4
  %222 = sub nsw i32 %220, %221
  %223 = call i32 @OFF_TO_IDX(i32 %222)
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %219, i64 %224
  %226 = load %struct.TYPE_19__*, %struct.TYPE_19__** %225, align 8
  store %struct.TYPE_19__* %226, %struct.TYPE_19__** %13, align 8
  %227 = load i32, i32* %17, align 4
  %228 = call i32 @vn_off2bidx(i32 %227)
  store i32 %228, i32* %24, align 4
  br label %229

229:                                              ; preds = %254, %218
  %230 = load i32, i32* %24, align 4
  %231 = sext i32 %230 to i64
  %232 = load i32, i32* @NBBY, align 4
  %233 = sext i32 %232 to i64
  %234 = mul i64 4, %233
  %235 = icmp ult i64 %231, %234
  br i1 %235, label %236, label %240

236:                                              ; preds = %229
  %237 = load i32, i32* %17, align 4
  %238 = load i32, i32* %14, align 4
  %239 = icmp slt i32 %237, %238
  br label %240

240:                                              ; preds = %236, %229
  %241 = phi i1 [ false, %229 ], [ %239, %236 ]
  br i1 %241, label %242, label %257

242:                                              ; preds = %240
  %243 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %244 = load i32, i32* %17, align 4
  %245 = call i64 @vn_dirty_blk(%struct.TYPE_19__* %243, i32 %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %248

247:                                              ; preds = %242
  store i32 0, i32* %29, align 4
  br label %257

248:                                              ; preds = %242
  %249 = load i64, i64* @DEV_BSIZE, align 8
  %250 = load i32, i32* %17, align 4
  %251 = sext i32 %250 to i64
  %252 = add nsw i64 %251, %249
  %253 = trunc i64 %252 to i32
  store i32 %253, i32* %17, align 4
  br label %254

254:                                              ; preds = %248
  %255 = load i32, i32* %24, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %24, align 4
  br label %229

257:                                              ; preds = %247, %240
  br label %209

258:                                              ; preds = %216
  %259 = load i32, i32* %29, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %262

261:                                              ; preds = %258
  br label %414

262:                                              ; preds = %258
  %263 = load i32, i32* %17, align 4
  store i32 %263, i32* %15, align 4
  br label %264

264:                                              ; preds = %307, %262
  %265 = load i32, i32* %15, align 4
  %266 = load i32, i32* %14, align 4
  %267 = icmp slt i32 %265, %266
  br i1 %267, label %268, label %308

268:                                              ; preds = %264
  %269 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %8, align 8
  %270 = load i32, i32* %15, align 4
  %271 = load i32, i32* %16, align 4
  %272 = sub nsw i32 %270, %271
  %273 = call i32 @OFF_TO_IDX(i32 %272)
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %269, i64 %274
  %276 = load %struct.TYPE_19__*, %struct.TYPE_19__** %275, align 8
  store %struct.TYPE_19__* %276, %struct.TYPE_19__** %13, align 8
  %277 = load i32, i32* %15, align 4
  %278 = call i32 @vn_off2bidx(i32 %277)
  store i32 %278, i32* %24, align 4
  br label %279

279:                                              ; preds = %304, %268
  %280 = load i32, i32* %24, align 4
  %281 = sext i32 %280 to i64
  %282 = load i32, i32* @NBBY, align 4
  %283 = sext i32 %282 to i64
  %284 = mul i64 4, %283
  %285 = icmp ult i64 %281, %284
  br i1 %285, label %286, label %290

286:                                              ; preds = %279
  %287 = load i32, i32* %15, align 4
  %288 = load i32, i32* %14, align 4
  %289 = icmp slt i32 %287, %288
  br label %290

290:                                              ; preds = %286, %279
  %291 = phi i1 [ false, %279 ], [ %289, %286 ]
  br i1 %291, label %292, label %307

292:                                              ; preds = %290
  %293 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %294 = load i32, i32* %15, align 4
  %295 = call i64 @vn_dirty_blk(%struct.TYPE_19__* %293, i32 %294)
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %298, label %297

297:                                              ; preds = %292
  br label %309

298:                                              ; preds = %292
  %299 = load i64, i64* @DEV_BSIZE, align 8
  %300 = load i32, i32* %15, align 4
  %301 = sext i32 %300 to i64
  %302 = add nsw i64 %301, %299
  %303 = trunc i64 %302 to i32
  store i32 %303, i32* %15, align 4
  br label %304

304:                                              ; preds = %298
  %305 = load i32, i32* %24, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %24, align 4
  br label %279

307:                                              ; preds = %290
  br label %264

308:                                              ; preds = %264
  br label %309

309:                                              ; preds = %308, %297
  %310 = load i32, i32* %15, align 4
  %311 = load i32, i32* %16, align 4
  %312 = load i32, i32* %25, align 4
  %313 = add nsw i32 %311, %312
  %314 = icmp sgt i32 %310, %313
  br i1 %314, label %315, label %319

315:                                              ; preds = %309
  %316 = load i32, i32* %16, align 4
  %317 = load i32, i32* %25, align 4
  %318 = add nsw i32 %316, %317
  store i32 %318, i32* %15, align 4
  br label %319

319:                                              ; preds = %315, %309
  %320 = load i32, i32* %17, align 4
  %321 = load i32, i32* %15, align 4
  %322 = icmp slt i32 %320, %321
  %323 = zext i1 %322 to i32
  %324 = call i32 @MPASS(i32 %323)
  %325 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %326 = call i32 @VM_OBJECT_RUNLOCK(%struct.TYPE_20__* %325)
  %327 = getelementptr inbounds %struct.iovec, %struct.iovec* %19, i32 0, i32 1
  store i32* null, i32** %327, align 8
  %328 = getelementptr inbounds %struct.uio, %struct.uio* %18, i32 0, i32 0
  store i32 1, i32* %328, align 8
  %329 = load i32, i32* %17, align 4
  %330 = getelementptr inbounds %struct.uio, %struct.uio* %18, i32 0, i32 1
  store i32 %329, i32* %330, align 4
  %331 = load i32, i32* %15, align 4
  %332 = load i32, i32* %17, align 4
  %333 = sub nsw i32 %331, %332
  %334 = getelementptr inbounds %struct.iovec, %struct.iovec* %19, i32 0, i32 0
  store i32 %333, i32* %334, align 8
  %335 = getelementptr inbounds %struct.uio, %struct.uio* %18, i32 0, i32 2
  store i32 %333, i32* %335, align 8
  store i32 %333, i32* %20, align 4
  %336 = load %struct.vnode*, %struct.vnode** %7, align 8
  %337 = load i32, i32* %10, align 4
  %338 = call i32 @vnode_pager_putpages_ioflags(i32 %337)
  %339 = load %struct.TYPE_16__*, %struct.TYPE_16__** @curthread, align 8
  %340 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 4
  %342 = call i32 @VOP_WRITE(%struct.vnode* %336, %struct.uio* %18, i32 %338, i32 %341)
  store i32 %342, i32* %23, align 4
  %343 = load i32, i32* %20, align 4
  %344 = getelementptr inbounds %struct.uio, %struct.uio* %18, i32 0, i32 2
  %345 = load i32, i32* %344, align 8
  %346 = sub nsw i32 %343, %345
  store i32 %346, i32* %21, align 4
  %347 = load i32, i32* %21, align 4
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %349, label %362

349:                                              ; preds = %319
  %350 = call i32 @ppsratecheck(%struct.timeval* @vnode_pager_generic_putpages.lastfail, i32* @vnode_pager_generic_putpages.curfail, i32 1)
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %359

352:                                              ; preds = %349
  %353 = load %struct.vnode*, %struct.vnode** %7, align 8
  %354 = getelementptr inbounds %struct.uio, %struct.uio* %18, i32 0, i32 1
  %355 = load i32, i32* %354, align 4
  %356 = getelementptr inbounds %struct.uio, %struct.uio* %18, i32 0, i32 2
  %357 = load i32, i32* %356, align 8
  %358 = call i32 (%struct.vnode*, i8*, i32, ...) @vn_printf(%struct.vnode* %353, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i32 %355, i32 %357)
  br label %359

359:                                              ; preds = %352, %349
  %360 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %361 = call i32 @VM_OBJECT_RLOCK(%struct.TYPE_20__* %360)
  br label %413

362:                                              ; preds = %319
  %363 = load i32, i32* %21, align 4
  %364 = load i32, i32* %17, align 4
  %365 = add nsw i32 %364, %363
  store i32 %365, i32* %17, align 4
  %366 = getelementptr inbounds %struct.uio, %struct.uio* %18, i32 0, i32 1
  %367 = load i32, i32* %366, align 4
  %368 = load i32, i32* %17, align 4
  %369 = icmp eq i32 %367, %368
  %370 = zext i1 %369 to i32
  %371 = call i32 @MPASS(i32 %370)
  store i32 0, i32* %28, align 4
  %372 = load i32, i32* %23, align 4
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %381

374:                                              ; preds = %362
  %375 = call i32 @ppsratecheck(%struct.timeval* @vnode_pager_generic_putpages.lastfail, i32* @vnode_pager_generic_putpages.curfail, i32 1)
  store i32 %375, i32* %28, align 4
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %381

377:                                              ; preds = %374
  %378 = load %struct.vnode*, %struct.vnode** %7, align 8
  %379 = load i32, i32* %23, align 4
  %380 = call i32 (%struct.vnode*, i8*, i32, ...) @vn_printf(%struct.vnode* %378, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %379)
  br label %381

381:                                              ; preds = %377, %374, %362
  %382 = getelementptr inbounds %struct.uio, %struct.uio* %18, i32 0, i32 2
  %383 = load i32, i32* %382, align 8
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %402

385:                                              ; preds = %381
  %386 = load i32, i32* %28, align 4
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %391, label %388

388:                                              ; preds = %385
  %389 = call i32 @ppsratecheck(%struct.timeval* @vnode_pager_generic_putpages.lastfail, i32* @vnode_pager_generic_putpages.curfail, i32 1)
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %391, label %402

391:                                              ; preds = %388, %385
  %392 = load %struct.vnode*, %struct.vnode** %7, align 8
  %393 = getelementptr inbounds %struct.uio, %struct.uio* %18, i32 0, i32 2
  %394 = load i32, i32* %393, align 8
  %395 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %8, align 8
  %396 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %395, i64 0
  %397 = load %struct.TYPE_19__*, %struct.TYPE_19__** %396, align 8
  %398 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %397, i32 0, i32 1
  %399 = load i64, i64* %398, align 8
  %400 = trunc i64 %399 to i32
  %401 = call i32 (%struct.vnode*, i8*, i32, ...) @vn_printf(%struct.vnode* %392, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 %394, i32 %400)
  br label %402

402:                                              ; preds = %391, %388, %381
  %403 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %404 = call i32 @VM_OBJECT_RLOCK(%struct.TYPE_20__* %403)
  %405 = load i32, i32* %23, align 4
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %411, label %407

407:                                              ; preds = %402
  %408 = getelementptr inbounds %struct.uio, %struct.uio* %18, i32 0, i32 2
  %409 = load i32, i32* %408, align 8
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %411, label %412

411:                                              ; preds = %407, %402
  br label %413

412:                                              ; preds = %407
  br label %204

413:                                              ; preds = %411, %359, %204
  br label %414

414:                                              ; preds = %413, %261
  store i32 0, i32* %24, align 4
  br label %415

415:                                              ; preds = %428, %414
  %416 = load i32, i32* %24, align 4
  %417 = load i32, i32* %17, align 4
  %418 = load i32, i32* %16, align 4
  %419 = sub nsw i32 %417, %418
  %420 = call i32 @OFF_TO_IDX(i32 %419)
  %421 = icmp slt i32 %416, %420
  br i1 %421, label %422, label %431

422:                                              ; preds = %415
  %423 = load i32, i32* @VM_PAGER_OK, align 4
  %424 = load i32*, i32** %11, align 8
  %425 = load i32, i32* %24, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds i32, i32* %424, i64 %426
  store i32 %423, i32* %427, align 4
  br label %428

428:                                              ; preds = %422
  %429 = load i32, i32* %24, align 4
  %430 = add nsw i32 %429, 1
  store i32 %430, i32* %24, align 4
  br label %415

431:                                              ; preds = %415
  %432 = load i32, i32* %17, align 4
  %433 = load i32, i32* %16, align 4
  %434 = load i32, i32* %25, align 4
  %435 = add nsw i32 %433, %434
  %436 = icmp eq i32 %432, %435
  br i1 %436, label %437, label %449

437:                                              ; preds = %431
  %438 = load i32, i32* %17, align 4
  %439 = load i32, i32* @PAGE_MASK, align 4
  %440 = and i32 %438, %439
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %442, label %449

442:                                              ; preds = %437
  %443 = load i32, i32* @VM_PAGER_OK, align 4
  %444 = load i32*, i32** %11, align 8
  %445 = load i32, i32* %24, align 4
  %446 = add nsw i32 %445, 1
  store i32 %446, i32* %24, align 4
  %447 = sext i32 %445 to i64
  %448 = getelementptr inbounds i32, i32* %444, i64 %447
  store i32 %443, i32* %448, align 4
  br label %449

449:                                              ; preds = %442, %437, %431
  br label %450

450:                                              ; preds = %473, %449
  %451 = load i32, i32* %24, align 4
  %452 = load i32, i32* %26, align 4
  %453 = icmp slt i32 %451, %452
  br i1 %453, label %454, label %476

454:                                              ; preds = %450
  %455 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %8, align 8
  %456 = load i32, i32* %24, align 4
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %455, i64 %457
  %459 = load %struct.TYPE_19__*, %struct.TYPE_19__** %458, align 8
  %460 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %459, i32 0, i32 0
  %461 = load i64, i64* %460, align 8
  %462 = icmp eq i64 %461, 0
  br i1 %462, label %463, label %465

463:                                              ; preds = %454
  %464 = load i32, i32* @VM_PAGER_OK, align 4
  br label %467

465:                                              ; preds = %454
  %466 = load i32, i32* @VM_PAGER_ERROR, align 4
  br label %467

467:                                              ; preds = %465, %463
  %468 = phi i32 [ %464, %463 ], [ %466, %465 ]
  %469 = load i32*, i32** %11, align 8
  %470 = load i32, i32* %24, align 4
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds i32, i32* %469, i64 %471
  store i32 %468, i32* %472, align 4
  br label %473

473:                                              ; preds = %467
  %474 = load i32, i32* %24, align 4
  %475 = add nsw i32 %474, 1
  store i32 %475, i32* %24, align 4
  br label %450

476:                                              ; preds = %450
  %477 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %478 = call i32 @VM_OBJECT_RUNLOCK(%struct.TYPE_20__* %477)
  %479 = load i32, i32* @v_vnodepgsout, align 4
  %480 = load i32, i32* %24, align 4
  %481 = call i32 @VM_CNT_ADD(i32 %479, i32 %480)
  %482 = load i32, i32* @v_vnodeout, align 4
  %483 = call i32 @VM_CNT_INC(i32 %482)
  %484 = load i32*, i32** %11, align 8
  %485 = getelementptr inbounds i32, i32* %484, i64 0
  %486 = load i32, i32* %485, align 4
  store i32 %486, i32* %6, align 4
  br label %487

487:                                              ; preds = %476, %56
  %488 = load i32, i32* %6, align 4
  ret i32 %488
}

declare dso_local i32 @printf(i8*, i32, i32) #1

declare dso_local i32 @IDX_TO_OFF(i64) #1

declare dso_local i32 @VM_OBJECT_RLOCK(%struct.TYPE_20__*) #1

declare dso_local i32 @VM_OBJECT_TRYUPGRADE(%struct.TYPE_20__*) #1

declare dso_local i32 @VM_OBJECT_RUNLOCK(%struct.TYPE_20__*) #1

declare dso_local i32 @VM_OBJECT_WLOCK(%struct.TYPE_20__*) #1

declare dso_local i32 @btoc(i32) #1

declare dso_local i32 @roundup2(i32, i64) #1

declare dso_local i32 @vm_page_assert_sbusied(%struct.TYPE_19__*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @pmap_page_is_write_mapped(%struct.TYPE_19__*) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @vm_page_clear_dirty(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @VM_OBJECT_LOCK_DOWNGRADE(%struct.TYPE_20__*) #1

declare dso_local i32 @OFF_TO_IDX(i32) #1

declare dso_local i32 @vn_off2bidx(i32) #1

declare dso_local i64 @vn_dirty_blk(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @VOP_WRITE(%struct.vnode*, %struct.uio*, i32, i32) #1

declare dso_local i32 @vnode_pager_putpages_ioflags(i32) #1

declare dso_local i32 @ppsratecheck(%struct.timeval*, i32*, i32) #1

declare dso_local i32 @vn_printf(%struct.vnode*, i8*, i32, ...) #1

declare dso_local i32 @VM_CNT_ADD(i32, i32) #1

declare dso_local i32 @VM_CNT_INC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
