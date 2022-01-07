; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_swap_pager.c_swap_pager_getpages.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_swap_pager.c_swap_pager_getpages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32, i64 }
%struct.buf = type { i32, i32, i32, i32, i32, i64, i32, i8*, i8*, i32, i32, i32, %struct.TYPE_18__** }

@VM_PAGER_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"page count %d extends beyond swap block\00", align 1
@listq = common dso_local global i32 0, align 4
@pglist = common dso_local global i32 0, align 4
@VPO_SWAPINPROG = common dso_local global i32 0, align 4
@VM_ALLOC_NORMAL = common dso_local global i32 0, align 4
@SWAPBLK_NONE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"no swap blocking containing %p(%jx)\00", align 1
@swrbuf_zone = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@B_PAGING = common dso_local global i32 0, align 4
@BIO_READ = common dso_local global i32 0, align 4
@swp_pager_async_iodone = common dso_local global i32 0, align 4
@thread0 = common dso_local global %struct.TYPE_20__ zeroinitializer, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@v_swapin = common dso_local global i32 0, align 4
@v_swappgsin = common dso_local global i32 0, align 4
@VPO_SWAPSLEEP = common dso_local global i32 0, align 4
@v_intrans = common dso_local global i32 0, align 4
@PSWP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"swread\00", align 1
@hz = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [71 x i8] c"swap_pager: indefinite wait buffer: bufobj: %p, blkno: %jd, size: %ld\0A\00", align 1
@VM_PAGE_BITS_ALL = common dso_local global i64 0, align 8
@VM_PAGER_ERROR = common dso_local global i32 0, align 4
@VM_PAGER_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.TYPE_18__**, i32, i32*, i32*)* @swap_pager_getpages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @swap_pager_getpages(%struct.TYPE_19__* %0, %struct.TYPE_18__** %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_18__**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.buf*, align 8
  %13 = alloca %struct.TYPE_18__*, align 8
  %14 = alloca %struct.TYPE_18__*, align 8
  %15 = alloca %struct.TYPE_18__*, align 8
  %16 = alloca %struct.TYPE_18__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %7, align 8
  store %struct.TYPE_18__** %1, %struct.TYPE_18__*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %22, align 4
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %25 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %25, i64 0
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @swap_pager_haspage(%struct.TYPE_19__* %24, i32 %29, i32* %21, i32* %20)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %5
  %33 = load i32, i32* @VM_PAGER_FAIL, align 4
  store i32 %33, i32* %6, align 4
  br label %430

34:                                               ; preds = %5
  %35 = load i32*, i32** %11, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %92

37:                                               ; preds = %34
  %38 = load i32, i32* %22, align 4
  %39 = sub nsw i32 %38, 1
  %40 = load i32, i32* %20, align 4
  %41 = icmp sle i32 %39, %40
  %42 = zext i1 %41 to i32
  %43 = load i32, i32* %22, align 4
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to i8*
  %46 = call i32 @KASSERT(i32 %42, i8* %45)
  %47 = load i32*, i32** %11, align 8
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %20, align 4
  %50 = load i32, i32* %22, align 4
  %51 = sub nsw i32 %50, 1
  %52 = sub nsw i32 %49, %51
  %53 = call i32 @imin(i32 %48, i32 %52)
  %54 = load i32*, i32** %11, align 8
  store i32 %53, i32* %54, align 4
  %55 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  %56 = load i32, i32* %22, align 4
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %55, i64 %58
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %17, align 4
  %63 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  %64 = load i32, i32* %22, align 4
  %65 = sub nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %63, i64 %66
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %67, align 8
  %69 = load i32, i32* @listq, align 4
  %70 = call %struct.TYPE_18__* @TAILQ_NEXT(%struct.TYPE_18__* %68, i32 %69)
  store %struct.TYPE_18__* %70, %struct.TYPE_18__** %15, align 8
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %72 = icmp ne %struct.TYPE_18__* %71, null
  br i1 %72, label %73, label %91

73:                                               ; preds = %37
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %17, align 4
  %78 = sub nsw i32 %76, %77
  %79 = sub nsw i32 %78, 1
  %80 = load i32*, i32** %11, align 8
  %81 = load i32, i32* %80, align 4
  %82 = icmp slt i32 %79, %81
  br i1 %82, label %83, label %91

83:                                               ; preds = %73
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %17, align 4
  %88 = sub nsw i32 %86, %87
  %89 = sub nsw i32 %88, 1
  %90 = load i32*, i32** %11, align 8
  store i32 %89, i32* %90, align 4
  br label %91

91:                                               ; preds = %83, %73, %37
  br label %92

92:                                               ; preds = %91, %34
  %93 = load i32*, i32** %10, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %133

95:                                               ; preds = %92
  %96 = load i32*, i32** %10, align 8
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %21, align 4
  %99 = call i32 @imin(i32 %97, i32 %98)
  %100 = load i32*, i32** %10, align 8
  store i32 %99, i32* %100, align 4
  %101 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %101, i64 0
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  store i32 %105, i32* %17, align 4
  %106 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %106, i64 0
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %107, align 8
  %109 = load i32, i32* @pglist, align 4
  %110 = load i32, i32* @listq, align 4
  %111 = call %struct.TYPE_18__* @TAILQ_PREV(%struct.TYPE_18__* %108, i32 %109, i32 %110)
  store %struct.TYPE_18__* %111, %struct.TYPE_18__** %14, align 8
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %113 = icmp ne %struct.TYPE_18__* %112, null
  br i1 %113, label %114, label %132

114:                                              ; preds = %95
  %115 = load i32, i32* %17, align 4
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = sub nsw i32 %115, %118
  %120 = sub nsw i32 %119, 1
  %121 = load i32*, i32** %10, align 8
  %122 = load i32, i32* %121, align 4
  %123 = icmp slt i32 %120, %122
  br i1 %123, label %124, label %132

124:                                              ; preds = %114
  %125 = load i32, i32* %17, align 4
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = sub nsw i32 %125, %128
  %130 = sub nsw i32 %129, 1
  %131 = load i32*, i32** %10, align 8
  store i32 %130, i32* %131, align 4
  br label %132

132:                                              ; preds = %124, %114, %95
  br label %133

133:                                              ; preds = %132, %92
  %134 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %134, i64 0
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %135, align 8
  store %struct.TYPE_18__* %136, %struct.TYPE_18__** %13, align 8
  store i32 0, i32* %19, align 4
  br label %137

137:                                              ; preds = %151, %133
  %138 = load i32, i32* %19, align 4
  %139 = load i32, i32* %9, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %154

141:                                              ; preds = %137
  %142 = load i32, i32* @VPO_SWAPINPROG, align 4
  %143 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  %144 = load i32, i32* %19, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %143, i64 %145
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = or i32 %149, %142
  store i32 %150, i32* %148, align 4
  br label %151

151:                                              ; preds = %141
  %152 = load i32, i32* %19, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %19, align 4
  br label %137

154:                                              ; preds = %137
  %155 = load i32*, i32** %10, align 8
  %156 = icmp ne i32* %155, null
  br i1 %156, label %157, label %191

157:                                              ; preds = %154
  store i32 1, i32* %19, align 4
  br label %158

158:                                              ; preds = %184, %157
  %159 = load i32, i32* %19, align 4
  %160 = load i32*, i32** %10, align 8
  %161 = load i32, i32* %160, align 4
  %162 = icmp sle i32 %159, %161
  br i1 %162, label %163, label %187

163:                                              ; preds = %158
  %164 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %165 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %165, i64 0
  %167 = load %struct.TYPE_18__*, %struct.TYPE_18__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* %19, align 4
  %171 = sub nsw i32 %169, %170
  %172 = load i32, i32* @VM_ALLOC_NORMAL, align 4
  %173 = call %struct.TYPE_18__* @vm_page_alloc(%struct.TYPE_19__* %164, i32 %171, i32 %172)
  store %struct.TYPE_18__* %173, %struct.TYPE_18__** %16, align 8
  %174 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %175 = icmp eq %struct.TYPE_18__* %174, null
  br i1 %175, label %176, label %177

176:                                              ; preds = %163
  br label %187

177:                                              ; preds = %163
  %178 = load i32, i32* @VPO_SWAPINPROG, align 4
  %179 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %180 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = or i32 %181, %178
  store i32 %182, i32* %180, align 4
  %183 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  store %struct.TYPE_18__* %183, %struct.TYPE_18__** %13, align 8
  br label %184

184:                                              ; preds = %177
  %185 = load i32, i32* %19, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %19, align 4
  br label %158

187:                                              ; preds = %176, %158
  %188 = load i32, i32* %19, align 4
  %189 = sub nsw i32 %188, 1
  %190 = load i32*, i32** %10, align 8
  store i32 %189, i32* %190, align 4
  br label %191

191:                                              ; preds = %187, %154
  %192 = load i32*, i32** %11, align 8
  %193 = icmp ne i32* %192, null
  br i1 %193, label %194, label %230

194:                                              ; preds = %191
  store i32 0, i32* %19, align 4
  br label %195

195:                                              ; preds = %224, %194
  %196 = load i32, i32* %19, align 4
  %197 = load i32*, i32** %11, align 8
  %198 = load i32, i32* %197, align 4
  %199 = icmp slt i32 %196, %198
  br i1 %199, label %200, label %227

200:                                              ; preds = %195
  %201 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %202 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  %203 = load i32, i32* %22, align 4
  %204 = sub nsw i32 %203, 1
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %202, i64 %205
  %207 = load %struct.TYPE_18__*, %struct.TYPE_18__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* %19, align 4
  %211 = add nsw i32 %209, %210
  %212 = add nsw i32 %211, 1
  %213 = load i32, i32* @VM_ALLOC_NORMAL, align 4
  %214 = call %struct.TYPE_18__* @vm_page_alloc(%struct.TYPE_19__* %201, i32 %212, i32 %213)
  store %struct.TYPE_18__* %214, %struct.TYPE_18__** %16, align 8
  %215 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %216 = icmp eq %struct.TYPE_18__* %215, null
  br i1 %216, label %217, label %218

217:                                              ; preds = %200
  br label %227

218:                                              ; preds = %200
  %219 = load i32, i32* @VPO_SWAPINPROG, align 4
  %220 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %221 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = or i32 %222, %219
  store i32 %223, i32* %221, align 4
  br label %224

224:                                              ; preds = %218
  %225 = load i32, i32* %19, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %19, align 4
  br label %195

227:                                              ; preds = %217, %195
  %228 = load i32, i32* %19, align 4
  %229 = load i32*, i32** %11, align 8
  store i32 %228, i32* %229, align 4
  br label %230

230:                                              ; preds = %227, %191
  %231 = load i32*, i32** %10, align 8
  %232 = icmp ne i32* %231, null
  br i1 %232, label %233, label %238

233:                                              ; preds = %230
  %234 = load i32*, i32** %10, align 8
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* %9, align 4
  %237 = add nsw i32 %236, %235
  store i32 %237, i32* %9, align 4
  br label %238

238:                                              ; preds = %233, %230
  %239 = load i32*, i32** %11, align 8
  %240 = icmp ne i32* %239, null
  br i1 %240, label %241, label %246

241:                                              ; preds = %238
  %242 = load i32*, i32** %11, align 8
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* %9, align 4
  %245 = add nsw i32 %244, %243
  store i32 %245, i32* %9, align 4
  br label %246

246:                                              ; preds = %241, %238
  %247 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %248 = load i32, i32* %9, align 4
  %249 = call i32 @vm_object_pip_add(%struct.TYPE_19__* %247, i32 %248)
  %250 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %251 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  store i32 %252, i32* %17, align 4
  %253 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %254 = load i32, i32* %17, align 4
  %255 = call i64 @swp_pager_meta_ctl(%struct.TYPE_19__* %253, i32 %254, i32 0)
  store i64 %255, i64* %18, align 8
  %256 = load i64, i64* %18, align 8
  %257 = load i64, i64* @SWAPBLK_NONE, align 8
  %258 = icmp ne i64 %256, %257
  %259 = zext i1 %258 to i32
  %260 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %261 = load i32, i32* %17, align 4
  %262 = sext i32 %261 to i64
  %263 = inttoptr i64 %262 to i8*
  %264 = call i32 @KASSERT(i32 %259, i8* %263)
  %265 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %266 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_19__* %265)
  %267 = load i32, i32* @swrbuf_zone, align 4
  %268 = load i32, i32* @M_WAITOK, align 4
  %269 = call %struct.buf* @uma_zalloc(i32 %267, i32 %268)
  store %struct.buf* %269, %struct.buf** %12, align 8
  store i32 0, i32* %19, align 4
  %270 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  store %struct.TYPE_18__* %270, %struct.TYPE_18__** %16, align 8
  br label %271

271:                                              ; preds = %294, %246
  %272 = load i32, i32* %19, align 4
  %273 = load i32, i32* %9, align 4
  %274 = icmp slt i32 %272, %273
  br i1 %274, label %275, label %300

275:                                              ; preds = %271
  %276 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %277 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %280 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = load i32, i32* %19, align 4
  %283 = add nsw i32 %281, %282
  %284 = icmp eq i32 %278, %283
  %285 = zext i1 %284 to i32
  %286 = call i32 @MPASS(i32 %285)
  %287 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %288 = load %struct.buf*, %struct.buf** %12, align 8
  %289 = getelementptr inbounds %struct.buf, %struct.buf* %288, i32 0, i32 12
  %290 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %289, align 8
  %291 = load i32, i32* %19, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %290, i64 %292
  store %struct.TYPE_18__* %287, %struct.TYPE_18__** %293, align 8
  br label %294

294:                                              ; preds = %275
  %295 = load i32, i32* %19, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %19, align 4
  %297 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %298 = load i32, i32* @listq, align 4
  %299 = call %struct.TYPE_18__* @TAILQ_NEXT(%struct.TYPE_18__* %297, i32 %298)
  store %struct.TYPE_18__* %299, %struct.TYPE_18__** %16, align 8
  br label %271

300:                                              ; preds = %271
  %301 = load i32, i32* @B_PAGING, align 4
  %302 = load %struct.buf*, %struct.buf** %12, align 8
  %303 = getelementptr inbounds %struct.buf, %struct.buf* %302, i32 0, i32 11
  %304 = load i32, i32* %303, align 8
  %305 = or i32 %304, %301
  store i32 %305, i32* %303, align 8
  %306 = load i32, i32* @BIO_READ, align 4
  %307 = load %struct.buf*, %struct.buf** %12, align 8
  %308 = getelementptr inbounds %struct.buf, %struct.buf* %307, i32 0, i32 10
  store i32 %306, i32* %308, align 4
  %309 = load i32, i32* @swp_pager_async_iodone, align 4
  %310 = load %struct.buf*, %struct.buf** %12, align 8
  %311 = getelementptr inbounds %struct.buf, %struct.buf* %310, i32 0, i32 9
  store i32 %309, i32* %311, align 8
  %312 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @thread0, i32 0, i32 0), align 4
  %313 = call i8* @crhold(i32 %312)
  %314 = load %struct.buf*, %struct.buf** %12, align 8
  %315 = getelementptr inbounds %struct.buf, %struct.buf* %314, i32 0, i32 8
  store i8* %313, i8** %315, align 8
  %316 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @thread0, i32 0, i32 0), align 4
  %317 = call i8* @crhold(i32 %316)
  %318 = load %struct.buf*, %struct.buf** %12, align 8
  %319 = getelementptr inbounds %struct.buf, %struct.buf* %318, i32 0, i32 7
  store i8* %317, i8** %319, align 8
  %320 = load i64, i64* %18, align 8
  %321 = load %struct.buf*, %struct.buf** %12, align 8
  %322 = getelementptr inbounds %struct.buf, %struct.buf* %321, i32 0, i32 5
  store i64 %320, i64* %322, align 8
  %323 = load i32, i32* @PAGE_SIZE, align 4
  %324 = load i32, i32* %9, align 4
  %325 = mul nsw i32 %323, %324
  %326 = load %struct.buf*, %struct.buf** %12, align 8
  %327 = getelementptr inbounds %struct.buf, %struct.buf* %326, i32 0, i32 0
  store i32 %325, i32* %327, align 8
  %328 = load i32, i32* @PAGE_SIZE, align 4
  %329 = load i32, i32* %9, align 4
  %330 = mul nsw i32 %328, %329
  %331 = load %struct.buf*, %struct.buf** %12, align 8
  %332 = getelementptr inbounds %struct.buf, %struct.buf* %331, i32 0, i32 1
  store i32 %330, i32* %332, align 4
  %333 = load i32, i32* %9, align 4
  %334 = load %struct.buf*, %struct.buf** %12, align 8
  %335 = getelementptr inbounds %struct.buf, %struct.buf* %334, i32 0, i32 2
  store i32 %333, i32* %335, align 8
  %336 = load i32*, i32** %10, align 8
  %337 = icmp ne i32* %336, null
  br i1 %337, label %338, label %341

338:                                              ; preds = %300
  %339 = load i32*, i32** %10, align 8
  %340 = load i32, i32* %339, align 4
  br label %342

341:                                              ; preds = %300
  br label %342

342:                                              ; preds = %341, %338
  %343 = phi i32 [ %340, %338 ], [ 0, %341 ]
  %344 = load %struct.buf*, %struct.buf** %12, align 8
  %345 = getelementptr inbounds %struct.buf, %struct.buf* %344, i32 0, i32 3
  store i32 %343, i32* %345, align 4
  %346 = load i32*, i32** %11, align 8
  %347 = icmp ne i32* %346, null
  br i1 %347, label %348, label %351

348:                                              ; preds = %342
  %349 = load i32*, i32** %11, align 8
  %350 = load i32, i32* %349, align 4
  br label %352

351:                                              ; preds = %342
  br label %352

352:                                              ; preds = %351, %348
  %353 = phi i32 [ %350, %348 ], [ 0, %351 ]
  %354 = load %struct.buf*, %struct.buf** %12, align 8
  %355 = getelementptr inbounds %struct.buf, %struct.buf* %354, i32 0, i32 4
  store i32 %353, i32* %355, align 8
  %356 = load i32, i32* @v_swapin, align 4
  %357 = call i32 @VM_CNT_INC(i32 %356)
  %358 = load i32, i32* @v_swappgsin, align 4
  %359 = load i32, i32* %9, align 4
  %360 = call i32 @VM_CNT_ADD(i32 %358, i32 %359)
  %361 = load %struct.buf*, %struct.buf** %12, align 8
  %362 = call i32 @BUF_KERNPROC(%struct.buf* %361)
  %363 = load %struct.buf*, %struct.buf** %12, align 8
  %364 = call i32 @swp_pager_strategy(%struct.buf* %363)
  %365 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %366 = call i32 @VM_OBJECT_WLOCK(%struct.TYPE_19__* %365)
  br label %367

367:                                              ; preds = %406, %352
  %368 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  %369 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %368, i64 0
  %370 = load %struct.TYPE_18__*, %struct.TYPE_18__** %369, align 8
  %371 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %370, i32 0, i32 1
  %372 = load i32, i32* %371, align 4
  %373 = load i32, i32* @VPO_SWAPINPROG, align 4
  %374 = and i32 %372, %373
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %407

376:                                              ; preds = %367
  %377 = load i32, i32* @VPO_SWAPSLEEP, align 4
  %378 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  %379 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %378, i64 0
  %380 = load %struct.TYPE_18__*, %struct.TYPE_18__** %379, align 8
  %381 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %380, i32 0, i32 1
  %382 = load i32, i32* %381, align 4
  %383 = or i32 %382, %377
  store i32 %383, i32* %381, align 4
  %384 = load i32, i32* @v_intrans, align 4
  %385 = call i32 @VM_CNT_INC(i32 %384)
  %386 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %387 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %388 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %387, i32 0, i32 0
  %389 = load i32, i32* @PSWP, align 4
  %390 = load i32, i32* @hz, align 4
  %391 = mul nsw i32 %390, 20
  %392 = call i64 @VM_OBJECT_SLEEP(%struct.TYPE_19__* %386, i32* %388, i32 %389, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %391)
  %393 = icmp ne i64 %392, 0
  br i1 %393, label %394, label %406

394:                                              ; preds = %376
  %395 = load %struct.buf*, %struct.buf** %12, align 8
  %396 = getelementptr inbounds %struct.buf, %struct.buf* %395, i32 0, i32 6
  %397 = load i32, i32* %396, align 8
  %398 = load %struct.buf*, %struct.buf** %12, align 8
  %399 = getelementptr inbounds %struct.buf, %struct.buf* %398, i32 0, i32 5
  %400 = load i64, i64* %399, align 8
  %401 = trunc i64 %400 to i32
  %402 = load %struct.buf*, %struct.buf** %12, align 8
  %403 = getelementptr inbounds %struct.buf, %struct.buf* %402, i32 0, i32 0
  %404 = load i32, i32* %403, align 8
  %405 = call i32 @printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0), i32 %397, i32 %401, i32 %404)
  br label %406

406:                                              ; preds = %394, %376
  br label %367

407:                                              ; preds = %367
  store i32 0, i32* %19, align 4
  br label %408

408:                                              ; preds = %425, %407
  %409 = load i32, i32* %19, align 4
  %410 = load i32, i32* %22, align 4
  %411 = icmp slt i32 %409, %410
  br i1 %411, label %412, label %428

412:                                              ; preds = %408
  %413 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  %414 = load i32, i32* %19, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %413, i64 %415
  %417 = load %struct.TYPE_18__*, %struct.TYPE_18__** %416, align 8
  %418 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %417, i32 0, i32 2
  %419 = load i64, i64* %418, align 8
  %420 = load i64, i64* @VM_PAGE_BITS_ALL, align 8
  %421 = icmp ne i64 %419, %420
  br i1 %421, label %422, label %424

422:                                              ; preds = %412
  %423 = load i32, i32* @VM_PAGER_ERROR, align 4
  store i32 %423, i32* %6, align 4
  br label %430

424:                                              ; preds = %412
  br label %425

425:                                              ; preds = %424
  %426 = load i32, i32* %19, align 4
  %427 = add nsw i32 %426, 1
  store i32 %427, i32* %19, align 4
  br label %408

428:                                              ; preds = %408
  %429 = load i32, i32* @VM_PAGER_OK, align 4
  store i32 %429, i32* %6, align 4
  br label %430

430:                                              ; preds = %428, %422, %32
  %431 = load i32, i32* %6, align 4
  ret i32 %431
}

declare dso_local i32 @swap_pager_haspage(%struct.TYPE_19__*, i32, i32*, i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @imin(i32, i32) #1

declare dso_local %struct.TYPE_18__* @TAILQ_NEXT(%struct.TYPE_18__*, i32) #1

declare dso_local %struct.TYPE_18__* @TAILQ_PREV(%struct.TYPE_18__*, i32, i32) #1

declare dso_local %struct.TYPE_18__* @vm_page_alloc(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @vm_object_pip_add(%struct.TYPE_19__*, i32) #1

declare dso_local i64 @swp_pager_meta_ctl(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_19__*) #1

declare dso_local %struct.buf* @uma_zalloc(i32, i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i8* @crhold(i32) #1

declare dso_local i32 @VM_CNT_INC(i32) #1

declare dso_local i32 @VM_CNT_ADD(i32, i32) #1

declare dso_local i32 @BUF_KERNPROC(%struct.buf*) #1

declare dso_local i32 @swp_pager_strategy(%struct.buf*) #1

declare dso_local i32 @VM_OBJECT_WLOCK(%struct.TYPE_19__*) #1

declare dso_local i64 @VM_OBJECT_SLEEP(%struct.TYPE_19__*, i32*, i32, i8*, i32) #1

declare dso_local i32 @printf(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
