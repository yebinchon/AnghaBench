; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_rawread.c_ffs_rawread_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_rawread.c_ffs_rawread_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.vnode = type { i32 }
%struct.uio = type { i64, i64, %struct.TYPE_2__*, %struct.thread* }
%struct.TYPE_2__ = type { i64 }
%struct.buf = type { i64, i64, i64, i32, i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@ffsraw_pbuf_zone = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@rawreadahead = common dso_local global i64 0, align 8
@M_NOWAIT = common dso_local global i32 0, align 4
@PRIBIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"rawrd\00", align 1
@BIO_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnode*, %struct.uio*)* @ffs_rawread_main to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffs_rawread_main(%struct.vnode* %0, %struct.uio* %1) #0 {
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca %struct.uio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.buf*, align 8
  %8 = alloca %struct.buf*, align 8
  %9 = alloca %struct.buf*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.thread*, align 8
  store %struct.vnode* %0, %struct.vnode** %3, align 8
  store %struct.uio* %1, %struct.uio** %4, align 8
  %15 = load %struct.uio*, %struct.uio** %4, align 8
  %16 = getelementptr inbounds %struct.uio, %struct.uio* %15, i32 0, i32 3
  %17 = load %struct.thread*, %struct.thread** %16, align 8
  %18 = icmp ne %struct.thread* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.uio*, %struct.uio** %4, align 8
  %21 = getelementptr inbounds %struct.uio, %struct.uio* %20, i32 0, i32 3
  %22 = load %struct.thread*, %struct.thread** %21, align 8
  br label %25

23:                                               ; preds = %2
  %24 = load %struct.thread*, %struct.thread** @curthread, align 8
  br label %25

25:                                               ; preds = %23, %19
  %26 = phi %struct.thread* [ %22, %19 ], [ %24, %23 ]
  store %struct.thread* %26, %struct.thread** %14, align 8
  %27 = load %struct.uio*, %struct.uio** %4, align 8
  %28 = getelementptr inbounds %struct.uio, %struct.uio* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %11, align 8
  %32 = load %struct.uio*, %struct.uio** %4, align 8
  %33 = getelementptr inbounds %struct.uio, %struct.uio* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %12, align 8
  %35 = load %struct.uio*, %struct.uio** %4, align 8
  %36 = getelementptr inbounds %struct.uio, %struct.uio* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %13, align 8
  %38 = load %struct.thread*, %struct.thread** %14, align 8
  %39 = getelementptr inbounds %struct.thread, %struct.thread* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @PHOLD(i32 %40)
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store %struct.buf* null, %struct.buf** %7, align 8
  store %struct.buf* null, %struct.buf** %8, align 8
  br label %42

42:                                               ; preds = %251, %25
  %43 = load i64, i64* %12, align 8
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %252

45:                                               ; preds = %42
  %46 = load %struct.buf*, %struct.buf** %7, align 8
  %47 = icmp eq %struct.buf* %46, null
  br i1 %47, label %48, label %116

48:                                               ; preds = %45
  %49 = load i32, i32* @ffsraw_pbuf_zone, align 4
  %50 = load i32, i32* @M_WAITOK, align 4
  %51 = call %struct.buf* @uma_zalloc(i32 %49, i32 %50)
  store %struct.buf* %51, %struct.buf** %7, align 8
  %52 = load %struct.vnode*, %struct.vnode** %3, align 8
  %53 = load %struct.buf*, %struct.buf** %7, align 8
  %54 = call i32 @pbgetvp(%struct.vnode* %52, %struct.buf* %53)
  %55 = load %struct.vnode*, %struct.vnode** %3, align 8
  %56 = load i64, i64* %11, align 8
  %57 = load i64, i64* %13, align 8
  %58 = load i64, i64* %12, align 8
  %59 = load %struct.thread*, %struct.thread** %14, align 8
  %60 = load %struct.buf*, %struct.buf** %7, align 8
  %61 = call i32 @ffs_rawread_readahead(%struct.vnode* %55, i64 %56, i64 %57, i64 %58, %struct.thread* %59, %struct.buf* %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %48
  br label %252

65:                                               ; preds = %48
  %66 = load i64, i64* %12, align 8
  %67 = load %struct.buf*, %struct.buf** %7, align 8
  %68 = getelementptr inbounds %struct.buf, %struct.buf* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp sgt i64 %66, %69
  br i1 %70, label %71, label %115

71:                                               ; preds = %65
  %72 = load i64, i64* @rawreadahead, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load i32, i32* @ffsraw_pbuf_zone, align 4
  %76 = load i32, i32* @M_NOWAIT, align 4
  %77 = call %struct.buf* @uma_zalloc(i32 %75, i32 %76)
  store %struct.buf* %77, %struct.buf** %8, align 8
  br label %79

78:                                               ; preds = %71
  store %struct.buf* null, %struct.buf** %8, align 8
  br label %79

79:                                               ; preds = %78, %74
  %80 = load %struct.buf*, %struct.buf** %8, align 8
  %81 = icmp ne %struct.buf* %80, null
  br i1 %81, label %82, label %114

82:                                               ; preds = %79
  %83 = load %struct.vnode*, %struct.vnode** %3, align 8
  %84 = load %struct.buf*, %struct.buf** %8, align 8
  %85 = call i32 @pbgetvp(%struct.vnode* %83, %struct.buf* %84)
  %86 = load %struct.vnode*, %struct.vnode** %3, align 8
  %87 = load i64, i64* %11, align 8
  %88 = load %struct.buf*, %struct.buf** %7, align 8
  %89 = getelementptr inbounds %struct.buf, %struct.buf* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %87, %90
  %92 = load i64, i64* %13, align 8
  %93 = load %struct.buf*, %struct.buf** %7, align 8
  %94 = getelementptr inbounds %struct.buf, %struct.buf* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %92, %95
  %97 = load i64, i64* %12, align 8
  %98 = load %struct.buf*, %struct.buf** %7, align 8
  %99 = getelementptr inbounds %struct.buf, %struct.buf* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = sub nsw i64 %97, %100
  %102 = load %struct.thread*, %struct.thread** %14, align 8
  %103 = load %struct.buf*, %struct.buf** %8, align 8
  %104 = call i32 @ffs_rawread_readahead(%struct.vnode* %86, i64 %91, i64 %96, i64 %101, %struct.thread* %102, %struct.buf* %103)
  store i32 %104, i32* %6, align 4
  %105 = load i32, i32* %6, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %82
  %108 = load %struct.buf*, %struct.buf** %8, align 8
  %109 = call i32 @pbrelvp(%struct.buf* %108)
  %110 = load i32, i32* @ffsraw_pbuf_zone, align 4
  %111 = load %struct.buf*, %struct.buf** %8, align 8
  %112 = call i32 @uma_zfree(i32 %110, %struct.buf* %111)
  store %struct.buf* null, %struct.buf** %8, align 8
  br label %113

113:                                              ; preds = %107, %82
  br label %114

114:                                              ; preds = %113, %79
  br label %115

115:                                              ; preds = %114, %65
  br label %116

116:                                              ; preds = %115, %45
  %117 = load %struct.buf*, %struct.buf** %7, align 8
  %118 = load i32, i32* @PRIBIO, align 4
  %119 = call i32 @bwait(%struct.buf* %117, i32 %118, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %120 = load %struct.buf*, %struct.buf** %7, align 8
  %121 = call i32 @vunmapbuf(%struct.buf* %120)
  %122 = load %struct.buf*, %struct.buf** %7, align 8
  %123 = getelementptr inbounds %struct.buf, %struct.buf* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.buf*, %struct.buf** %7, align 8
  %126 = getelementptr inbounds %struct.buf, %struct.buf* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = sub nsw i64 %124, %127
  store i64 %128, i64* %10, align 8
  %129 = load i64, i64* %10, align 8
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %139

131:                                              ; preds = %116
  %132 = load %struct.buf*, %struct.buf** %7, align 8
  %133 = getelementptr inbounds %struct.buf, %struct.buf* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @BIO_ERROR, align 4
  %136 = and i32 %134, %135
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %131
  store i32 0, i32* %6, align 4
  br label %252

139:                                              ; preds = %131, %116
  %140 = load %struct.buf*, %struct.buf** %7, align 8
  %141 = getelementptr inbounds %struct.buf, %struct.buf* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @BIO_ERROR, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %139
  %147 = load %struct.buf*, %struct.buf** %7, align 8
  %148 = getelementptr inbounds %struct.buf, %struct.buf* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 4
  store i32 %149, i32* %5, align 4
  br label %252

150:                                              ; preds = %139
  %151 = load i64, i64* %10, align 8
  %152 = load i64, i64* %12, align 8
  %153 = sub nsw i64 %152, %151
  store i64 %153, i64* %12, align 8
  %154 = load i64, i64* %10, align 8
  %155 = load i64, i64* %11, align 8
  %156 = add nsw i64 %155, %154
  store i64 %156, i64* %11, align 8
  %157 = load i64, i64* %10, align 8
  %158 = load i64, i64* %13, align 8
  %159 = add nsw i64 %158, %157
  store i64 %159, i64* %13, align 8
  %160 = load i64, i64* %10, align 8
  %161 = load %struct.buf*, %struct.buf** %7, align 8
  %162 = getelementptr inbounds %struct.buf, %struct.buf* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = icmp slt i64 %160, %163
  br i1 %164, label %165, label %181

165:                                              ; preds = %150
  %166 = load %struct.vnode*, %struct.vnode** %3, align 8
  %167 = load i64, i64* %11, align 8
  %168 = load i64, i64* %13, align 8
  %169 = load %struct.buf*, %struct.buf** %7, align 8
  %170 = getelementptr inbounds %struct.buf, %struct.buf* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* %10, align 8
  %173 = sub nsw i64 %171, %172
  %174 = load %struct.thread*, %struct.thread** %14, align 8
  %175 = load %struct.buf*, %struct.buf** %7, align 8
  %176 = call i32 @ffs_rawread_readahead(%struct.vnode* %166, i64 %167, i64 %168, i64 %173, %struct.thread* %174, %struct.buf* %175)
  store i32 %176, i32* %5, align 4
  %177 = load i32, i32* %5, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %165
  br label %252

180:                                              ; preds = %165
  br label %251

181:                                              ; preds = %150
  %182 = load %struct.buf*, %struct.buf** %8, align 8
  %183 = icmp ne %struct.buf* %182, null
  br i1 %183, label %184, label %229

184:                                              ; preds = %181
  %185 = load %struct.buf*, %struct.buf** %7, align 8
  store %struct.buf* %185, %struct.buf** %9, align 8
  %186 = load %struct.buf*, %struct.buf** %8, align 8
  store %struct.buf* %186, %struct.buf** %7, align 8
  %187 = load %struct.buf*, %struct.buf** %9, align 8
  store %struct.buf* %187, %struct.buf** %8, align 8
  %188 = load i64, i64* %12, align 8
  %189 = load %struct.buf*, %struct.buf** %7, align 8
  %190 = getelementptr inbounds %struct.buf, %struct.buf* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = icmp sle i64 %188, %191
  br i1 %192, label %193, label %199

193:                                              ; preds = %184
  %194 = load %struct.buf*, %struct.buf** %8, align 8
  %195 = call i32 @pbrelvp(%struct.buf* %194)
  %196 = load i32, i32* @ffsraw_pbuf_zone, align 4
  %197 = load %struct.buf*, %struct.buf** %8, align 8
  %198 = call i32 @uma_zfree(i32 %196, %struct.buf* %197)
  store %struct.buf* null, %struct.buf** %8, align 8
  br label %228

199:                                              ; preds = %184
  %200 = load %struct.vnode*, %struct.vnode** %3, align 8
  %201 = load i64, i64* %11, align 8
  %202 = load %struct.buf*, %struct.buf** %7, align 8
  %203 = getelementptr inbounds %struct.buf, %struct.buf* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = add nsw i64 %201, %204
  %206 = load i64, i64* %13, align 8
  %207 = load %struct.buf*, %struct.buf** %7, align 8
  %208 = getelementptr inbounds %struct.buf, %struct.buf* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = add nsw i64 %206, %209
  %211 = load i64, i64* %12, align 8
  %212 = load %struct.buf*, %struct.buf** %7, align 8
  %213 = getelementptr inbounds %struct.buf, %struct.buf* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = sub nsw i64 %211, %214
  %216 = load %struct.thread*, %struct.thread** %14, align 8
  %217 = load %struct.buf*, %struct.buf** %8, align 8
  %218 = call i32 @ffs_rawread_readahead(%struct.vnode* %200, i64 %205, i64 %210, i64 %215, %struct.thread* %216, %struct.buf* %217)
  store i32 %218, i32* %6, align 4
  %219 = load i32, i32* %6, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %227

221:                                              ; preds = %199
  %222 = load %struct.buf*, %struct.buf** %8, align 8
  %223 = call i32 @pbrelvp(%struct.buf* %222)
  %224 = load i32, i32* @ffsraw_pbuf_zone, align 4
  %225 = load %struct.buf*, %struct.buf** %8, align 8
  %226 = call i32 @uma_zfree(i32 %224, %struct.buf* %225)
  store %struct.buf* null, %struct.buf** %8, align 8
  br label %227

227:                                              ; preds = %221, %199
  br label %228

228:                                              ; preds = %227, %193
  br label %250

229:                                              ; preds = %181
  %230 = load i32, i32* %6, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %229
  br label %252

233:                                              ; preds = %229
  %234 = load i64, i64* %12, align 8
  %235 = icmp sgt i64 %234, 0
  br i1 %235, label %236, label %248

236:                                              ; preds = %233
  %237 = load %struct.vnode*, %struct.vnode** %3, align 8
  %238 = load i64, i64* %11, align 8
  %239 = load i64, i64* %13, align 8
  %240 = load i64, i64* %12, align 8
  %241 = load %struct.thread*, %struct.thread** %14, align 8
  %242 = load %struct.buf*, %struct.buf** %7, align 8
  %243 = call i32 @ffs_rawread_readahead(%struct.vnode* %237, i64 %238, i64 %239, i64 %240, %struct.thread* %241, %struct.buf* %242)
  store i32 %243, i32* %5, align 4
  %244 = load i32, i32* %5, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %247

246:                                              ; preds = %236
  br label %252

247:                                              ; preds = %236
  br label %248

248:                                              ; preds = %247, %233
  br label %249

249:                                              ; preds = %248
  br label %250

250:                                              ; preds = %249, %228
  br label %251

251:                                              ; preds = %250, %180
  br label %42

252:                                              ; preds = %246, %232, %179, %146, %138, %64, %42
  %253 = load %struct.buf*, %struct.buf** %7, align 8
  %254 = icmp ne %struct.buf* %253, null
  br i1 %254, label %255, label %261

255:                                              ; preds = %252
  %256 = load %struct.buf*, %struct.buf** %7, align 8
  %257 = call i32 @pbrelvp(%struct.buf* %256)
  %258 = load i32, i32* @ffsraw_pbuf_zone, align 4
  %259 = load %struct.buf*, %struct.buf** %7, align 8
  %260 = call i32 @uma_zfree(i32 %258, %struct.buf* %259)
  br label %261

261:                                              ; preds = %255, %252
  %262 = load %struct.buf*, %struct.buf** %8, align 8
  %263 = icmp ne %struct.buf* %262, null
  br i1 %263, label %264, label %275

264:                                              ; preds = %261
  %265 = load %struct.buf*, %struct.buf** %8, align 8
  %266 = load i32, i32* @PRIBIO, align 4
  %267 = call i32 @bwait(%struct.buf* %265, i32 %266, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %268 = load %struct.buf*, %struct.buf** %8, align 8
  %269 = call i32 @vunmapbuf(%struct.buf* %268)
  %270 = load %struct.buf*, %struct.buf** %8, align 8
  %271 = call i32 @pbrelvp(%struct.buf* %270)
  %272 = load i32, i32* @ffsraw_pbuf_zone, align 4
  %273 = load %struct.buf*, %struct.buf** %8, align 8
  %274 = call i32 @uma_zfree(i32 %272, %struct.buf* %273)
  br label %275

275:                                              ; preds = %264, %261
  %276 = load i32, i32* %5, align 4
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %278, label %280

278:                                              ; preds = %275
  %279 = load i32, i32* %6, align 4
  store i32 %279, i32* %5, align 4
  br label %280

280:                                              ; preds = %278, %275
  %281 = load %struct.thread*, %struct.thread** %14, align 8
  %282 = getelementptr inbounds %struct.thread, %struct.thread* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = call i32 @PRELE(i32 %283)
  %285 = load i64, i64* %11, align 8
  %286 = load %struct.uio*, %struct.uio** %4, align 8
  %287 = getelementptr inbounds %struct.uio, %struct.uio* %286, i32 0, i32 2
  %288 = load %struct.TYPE_2__*, %struct.TYPE_2__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %288, i32 0, i32 0
  store i64 %285, i64* %289, align 8
  %290 = load i64, i64* %12, align 8
  %291 = load %struct.uio*, %struct.uio** %4, align 8
  %292 = getelementptr inbounds %struct.uio, %struct.uio* %291, i32 0, i32 0
  store i64 %290, i64* %292, align 8
  %293 = load i64, i64* %13, align 8
  %294 = load %struct.uio*, %struct.uio** %4, align 8
  %295 = getelementptr inbounds %struct.uio, %struct.uio* %294, i32 0, i32 1
  store i64 %293, i64* %295, align 8
  %296 = load i32, i32* %5, align 4
  ret i32 %296
}

declare dso_local i32 @PHOLD(i32) #1

declare dso_local %struct.buf* @uma_zalloc(i32, i32) #1

declare dso_local i32 @pbgetvp(%struct.vnode*, %struct.buf*) #1

declare dso_local i32 @ffs_rawread_readahead(%struct.vnode*, i64, i64, i64, %struct.thread*, %struct.buf*) #1

declare dso_local i32 @pbrelvp(%struct.buf*) #1

declare dso_local i32 @uma_zfree(i32, %struct.buf*) #1

declare dso_local i32 @bwait(%struct.buf*, i32, i8*) #1

declare dso_local i32 @vunmapbuf(%struct.buf*) #1

declare dso_local i32 @PRELE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
