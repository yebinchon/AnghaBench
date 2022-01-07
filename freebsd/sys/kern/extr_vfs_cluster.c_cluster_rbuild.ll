; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_cluster.c_cluster_rbuild.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_cluster.c_cluster_rbuild.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.vnode = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%struct.buf = type { i32, i32, i8*, i32, i64, i64, i64, i32, i32, i64, %struct.TYPE_16__**, %struct.TYPE_13__, i8*, %struct.TYPE_14__*, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"cluster_rbuild: size %ld != f_iosize %jd\0A\00", align 1
@BIO_READ = common dso_local global i8* null, align 8
@B_CACHE = common dso_local global i32 0, align 4
@B_ASYNC = common dso_local global i32 0, align 4
@B_RAM = common dso_local global i32 0, align 4
@B_MALLOC = common dso_local global i32 0, align 4
@B_VMIO = common dso_local global i32 0, align 4
@cluster_pbuf_zone = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@B_CLUSTER = common dso_local global i32 0, align 4
@GB_UNMAPPED = common dso_local global i32 0, align 4
@unmapped_buf = common dso_local global i8* null, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@cluster_callback = common dso_local global i32 0, align 4
@NOOFFSET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"cluster_rbuild: no buffer offset\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@GB_LOCK_NOWAIT = common dso_local global i32 0, align 4
@BV_BKGRDINPROG = common dso_local global i32 0, align 4
@b_cluster = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@bogus_page = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"warning: tbp->b_bcount wrong %ld vs %ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"warning: tbp->b_bufsize wrong %ld vs %ld\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"cluster_rbuild: b_bufsize(%ld) > b_kvasize(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.buf* (%struct.vnode*, i32, i32, i32, i64, i32, i32, %struct.buf*)* @cluster_rbuild to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.buf* @cluster_rbuild(%struct.vnode* %0, i32 %1, i32 %2, i32 %3, i64 %4, i32 %5, i32 %6, %struct.buf* %7) #0 {
  %9 = alloca %struct.buf*, align 8
  %10 = alloca %struct.vnode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.buf*, align 8
  %18 = alloca %struct.buf*, align 8
  %19 = alloca %struct.buf*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca %struct.TYPE_16__*, align 8
  store %struct.vnode* %0, %struct.vnode** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i64 %4, i64* %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store %struct.buf* %7, %struct.buf** %17, align 8
  %30 = load i64, i64* %14, align 8
  %31 = load %struct.vnode*, %struct.vnode** %10, align 8
  %32 = getelementptr inbounds %struct.vnode, %struct.vnode* %31, i32 0, i32 0
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %30, %36
  %38 = zext i1 %37 to i32
  %39 = load i64, i64* %14, align 8
  %40 = load %struct.vnode*, %struct.vnode** %10, align 8
  %41 = getelementptr inbounds %struct.vnode, %struct.vnode* %40, i32 0, i32 0
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = sext i32 %46 to i64
  %48 = inttoptr i64 %47 to i8*
  %49 = call i32 @KASSERT(i32 %38, i8* %48)
  br label %50

50:                                               ; preds = %59, %8
  %51 = load i64, i64* %14, align 8
  %52 = trunc i64 %51 to i32
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %15, align 4
  %55 = add nsw i32 %53, %54
  %56 = mul nsw i32 %52, %55
  %57 = load i32, i32* %11, align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %50
  %60 = load i32, i32* %15, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %15, align 4
  br label %50

62:                                               ; preds = %50
  %63 = load %struct.buf*, %struct.buf** %17, align 8
  %64 = icmp ne %struct.buf* %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load %struct.buf*, %struct.buf** %17, align 8
  store %struct.buf* %66, %struct.buf** %19, align 8
  %67 = load i8*, i8** @BIO_READ, align 8
  %68 = load %struct.buf*, %struct.buf** %19, align 8
  %69 = getelementptr inbounds %struct.buf, %struct.buf* %68, i32 0, i32 12
  store i8* %67, i8** %69, align 8
  br label %95

70:                                               ; preds = %62
  %71 = load %struct.vnode*, %struct.vnode** %10, align 8
  %72 = load i32, i32* %12, align 4
  %73 = load i64, i64* %14, align 8
  %74 = load i32, i32* %16, align 4
  %75 = call %struct.buf* @getblk(%struct.vnode* %71, i32 %72, i64 %73, i32 0, i32 0, i32 %74)
  store %struct.buf* %75, %struct.buf** %19, align 8
  %76 = load %struct.buf*, %struct.buf** %19, align 8
  %77 = getelementptr inbounds %struct.buf, %struct.buf* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @B_CACHE, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %70
  %83 = load %struct.buf*, %struct.buf** %19, align 8
  store %struct.buf* %83, %struct.buf** %9, align 8
  br label %603

84:                                               ; preds = %70
  %85 = load i32, i32* @B_ASYNC, align 4
  %86 = load i32, i32* @B_RAM, align 4
  %87 = or i32 %85, %86
  %88 = load %struct.buf*, %struct.buf** %19, align 8
  %89 = getelementptr inbounds %struct.buf, %struct.buf* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 8
  %92 = load i8*, i8** @BIO_READ, align 8
  %93 = load %struct.buf*, %struct.buf** %19, align 8
  %94 = getelementptr inbounds %struct.buf, %struct.buf* %93, i32 0, i32 12
  store i8* %92, i8** %94, align 8
  br label %95

95:                                               ; preds = %84, %65
  %96 = load i32, i32* %13, align 4
  %97 = load %struct.buf*, %struct.buf** %19, align 8
  %98 = getelementptr inbounds %struct.buf, %struct.buf* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  %99 = load %struct.buf*, %struct.buf** %19, align 8
  %100 = getelementptr inbounds %struct.buf, %struct.buf* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @B_MALLOC, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %115, label %105

105:                                              ; preds = %95
  %106 = load %struct.buf*, %struct.buf** %19, align 8
  %107 = getelementptr inbounds %struct.buf, %struct.buf* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @B_VMIO, align 4
  %110 = and i32 %108, %109
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %105
  %113 = load i32, i32* %15, align 4
  %114 = icmp sle i32 %113, 1
  br i1 %114, label %115, label %117

115:                                              ; preds = %112, %105, %95
  %116 = load %struct.buf*, %struct.buf** %19, align 8
  store %struct.buf* %116, %struct.buf** %9, align 8
  br label %603

117:                                              ; preds = %112
  %118 = load i32, i32* @cluster_pbuf_zone, align 4
  %119 = load i32, i32* @M_NOWAIT, align 4
  %120 = call %struct.buf* @uma_zalloc(i32 %118, i32 %119)
  store %struct.buf* %120, %struct.buf** %18, align 8
  %121 = load %struct.buf*, %struct.buf** %18, align 8
  %122 = icmp eq %struct.buf* %121, null
  br i1 %122, label %123, label %125

123:                                              ; preds = %117
  %124 = load %struct.buf*, %struct.buf** %19, align 8
  store %struct.buf* %124, %struct.buf** %9, align 8
  br label %603

125:                                              ; preds = %117
  %126 = load i32, i32* @B_ASYNC, align 4
  %127 = load i32, i32* @B_CLUSTER, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @B_VMIO, align 4
  %130 = or i32 %128, %129
  %131 = load %struct.buf*, %struct.buf** %18, align 8
  %132 = getelementptr inbounds %struct.buf, %struct.buf* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 8
  %133 = load i32, i32* %16, align 4
  %134 = load i32, i32* @GB_UNMAPPED, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %125
  %138 = load i8*, i8** @unmapped_buf, align 8
  %139 = load %struct.buf*, %struct.buf** %18, align 8
  %140 = getelementptr inbounds %struct.buf, %struct.buf* %139, i32 0, i32 2
  store i8* %138, i8** %140, align 8
  br label %156

141:                                              ; preds = %125
  %142 = load %struct.buf*, %struct.buf** %18, align 8
  %143 = getelementptr inbounds %struct.buf, %struct.buf* %142, i32 0, i32 2
  %144 = load i8*, i8** %143, align 8
  %145 = ptrtoint i8* %144 to i64
  %146 = load %struct.buf*, %struct.buf** %19, align 8
  %147 = getelementptr inbounds %struct.buf, %struct.buf* %146, i32 0, i32 2
  %148 = load i8*, i8** %147, align 8
  %149 = ptrtoint i8* %148 to i64
  %150 = load i64, i64* @PAGE_MASK, align 8
  %151 = and i64 %149, %150
  %152 = or i64 %145, %151
  %153 = inttoptr i64 %152 to i8*
  %154 = load %struct.buf*, %struct.buf** %18, align 8
  %155 = getelementptr inbounds %struct.buf, %struct.buf* %154, i32 0, i32 2
  store i8* %153, i8** %155, align 8
  br label %156

156:                                              ; preds = %141, %137
  %157 = load i8*, i8** @BIO_READ, align 8
  %158 = load %struct.buf*, %struct.buf** %18, align 8
  %159 = getelementptr inbounds %struct.buf, %struct.buf* %158, i32 0, i32 12
  store i8* %157, i8** %159, align 8
  %160 = load i32, i32* @cluster_callback, align 4
  %161 = load %struct.buf*, %struct.buf** %18, align 8
  %162 = getelementptr inbounds %struct.buf, %struct.buf* %161, i32 0, i32 14
  store i32 %160, i32* %162, align 8
  %163 = load i32, i32* %13, align 4
  %164 = load %struct.buf*, %struct.buf** %18, align 8
  %165 = getelementptr inbounds %struct.buf, %struct.buf* %164, i32 0, i32 1
  store i32 %163, i32* %165, align 4
  %166 = load i32, i32* %12, align 4
  %167 = load %struct.buf*, %struct.buf** %18, align 8
  %168 = getelementptr inbounds %struct.buf, %struct.buf* %167, i32 0, i32 3
  store i32 %166, i32* %168, align 8
  %169 = load %struct.buf*, %struct.buf** %19, align 8
  %170 = getelementptr inbounds %struct.buf, %struct.buf* %169, i32 0, i32 4
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.buf*, %struct.buf** %18, align 8
  %173 = getelementptr inbounds %struct.buf, %struct.buf* %172, i32 0, i32 4
  store i64 %171, i64* %173, align 8
  %174 = load %struct.buf*, %struct.buf** %18, align 8
  %175 = getelementptr inbounds %struct.buf, %struct.buf* %174, i32 0, i32 4
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @NOOFFSET, align 8
  %178 = icmp ne i64 %176, %177
  %179 = zext i1 %178 to i32
  %180 = call i32 @KASSERT(i32 %179, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %181 = load %struct.vnode*, %struct.vnode** %10, align 8
  %182 = load %struct.buf*, %struct.buf** %18, align 8
  %183 = call i32 @pbgetvp(%struct.vnode* %181, %struct.buf* %182)
  %184 = load %struct.buf*, %struct.buf** %18, align 8
  %185 = getelementptr inbounds %struct.buf, %struct.buf* %184, i32 0, i32 11
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 0
  %187 = call i32 @TAILQ_INIT(i32* %186)
  %188 = load %struct.buf*, %struct.buf** %18, align 8
  %189 = getelementptr inbounds %struct.buf, %struct.buf* %188, i32 0, i32 5
  store i64 0, i64* %189, align 8
  %190 = load %struct.buf*, %struct.buf** %18, align 8
  %191 = getelementptr inbounds %struct.buf, %struct.buf* %190, i32 0, i32 6
  store i64 0, i64* %191, align 8
  %192 = load %struct.buf*, %struct.buf** %18, align 8
  %193 = getelementptr inbounds %struct.buf, %struct.buf* %192, i32 0, i32 7
  store i32 0, i32* %193, align 8
  %194 = load i64, i64* %14, align 8
  %195 = call i32 @btodb(i64 %194)
  store i32 %195, i32* %25, align 4
  %196 = load i32, i32* %13, align 4
  store i32 %196, i32* %20, align 4
  store i32 0, i32* %24, align 4
  br label %197

197:                                              ; preds = %532, %156
  %198 = load i32, i32* %24, align 4
  %199 = load i32, i32* %15, align 4
  %200 = icmp slt i32 %198, %199
  br i1 %200, label %201, label %538

201:                                              ; preds = %197
  %202 = load i32, i32* %24, align 4
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %216

204:                                              ; preds = %201
  %205 = load %struct.buf*, %struct.buf** %19, align 8
  %206 = getelementptr inbounds %struct.buf, %struct.buf* %205, i32 0, i32 13
  %207 = load %struct.TYPE_14__*, %struct.TYPE_14__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.buf*, %struct.buf** %19, align 8
  %211 = getelementptr inbounds %struct.buf, %struct.buf* %210, i32 0, i32 7
  %212 = load i32, i32* %211, align 8
  %213 = call i32 @vm_object_pip_add(i32 %209, i32 %212)
  %214 = load %struct.buf*, %struct.buf** %19, align 8
  %215 = call i32 @vfs_busy_pages_acquire(%struct.buf* %214)
  br label %426

216:                                              ; preds = %201
  %217 = load %struct.buf*, %struct.buf** %18, align 8
  %218 = getelementptr inbounds %struct.buf, %struct.buf* %217, i32 0, i32 7
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* @PAGE_SIZE, align 4
  %221 = mul nsw i32 %219, %220
  %222 = sext i32 %221 to i64
  %223 = load i64, i64* %14, align 8
  %224 = call i64 @round_page(i64 %223)
  %225 = add nsw i64 %222, %224
  %226 = load %struct.vnode*, %struct.vnode** %10, align 8
  %227 = getelementptr inbounds %struct.vnode, %struct.vnode* %226, i32 0, i32 0
  %228 = load %struct.TYPE_15__*, %struct.TYPE_15__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = icmp sgt i64 %225, %230
  br i1 %231, label %232, label %233

232:                                              ; preds = %216
  br label %538

233:                                              ; preds = %216
  %234 = load %struct.vnode*, %struct.vnode** %10, align 8
  %235 = load i32, i32* %12, align 4
  %236 = load i32, i32* %24, align 4
  %237 = add nsw i32 %235, %236
  %238 = load i64, i64* %14, align 8
  %239 = load i32, i32* @GB_LOCK_NOWAIT, align 4
  %240 = load i32, i32* %16, align 4
  %241 = load i32, i32* @GB_UNMAPPED, align 4
  %242 = and i32 %240, %241
  %243 = or i32 %239, %242
  %244 = call %struct.buf* @getblk(%struct.vnode* %234, i32 %237, i64 %238, i32 0, i32 0, i32 %243)
  store %struct.buf* %244, %struct.buf** %19, align 8
  %245 = load %struct.buf*, %struct.buf** %19, align 8
  %246 = icmp eq %struct.buf* %245, null
  br i1 %246, label %247, label %248

247:                                              ; preds = %233
  br label %538

248:                                              ; preds = %233
  %249 = load %struct.buf*, %struct.buf** %19, align 8
  %250 = getelementptr inbounds %struct.buf, %struct.buf* %249, i32 0, i32 8
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* @BV_BKGRDINPROG, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %269, label %255

255:                                              ; preds = %248
  %256 = load %struct.buf*, %struct.buf** %19, align 8
  %257 = getelementptr inbounds %struct.buf, %struct.buf* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = load i32, i32* @B_CACHE, align 4
  %260 = and i32 %258, %259
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %269, label %262

262:                                              ; preds = %255
  %263 = load %struct.buf*, %struct.buf** %19, align 8
  %264 = getelementptr inbounds %struct.buf, %struct.buf* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = load i32, i32* @B_VMIO, align 4
  %267 = and i32 %265, %266
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %272

269:                                              ; preds = %262, %255, %248
  %270 = load %struct.buf*, %struct.buf** %19, align 8
  %271 = call i32 @bqrelse(%struct.buf* %270)
  br label %538

272:                                              ; preds = %262
  %273 = load %struct.buf*, %struct.buf** %19, align 8
  %274 = getelementptr inbounds %struct.buf, %struct.buf* %273, i32 0, i32 4
  %275 = load i64, i64* %274, align 8
  store i64 %275, i64* %21, align 8
  %276 = load i64, i64* %14, align 8
  store i64 %276, i64* %23, align 8
  store i32 0, i32* %26, align 4
  br label %277

277:                                              ; preds = %346, %272
  %278 = load i64, i64* %23, align 8
  %279 = icmp sgt i64 %278, 0
  br i1 %279, label %280, label %349

280:                                              ; preds = %277
  %281 = load i64, i64* %21, align 8
  %282 = load i64, i64* @PAGE_MASK, align 8
  %283 = and i64 %281, %282
  %284 = trunc i64 %283 to i32
  store i32 %284, i32* %28, align 4
  %285 = load i64, i64* %23, align 8
  store i64 %285, i64* %22, align 8
  %286 = load i32, i32* %28, align 4
  %287 = sext i32 %286 to i64
  %288 = load i64, i64* %22, align 8
  %289 = add nsw i64 %287, %288
  %290 = load i32, i32* @PAGE_SIZE, align 4
  %291 = sext i32 %290 to i64
  %292 = icmp sgt i64 %289, %291
  br i1 %292, label %293, label %298

293:                                              ; preds = %280
  %294 = load i32, i32* @PAGE_SIZE, align 4
  %295 = load i32, i32* %28, align 4
  %296 = sub nsw i32 %294, %295
  %297 = sext i32 %296 to i64
  store i64 %297, i64* %22, align 8
  br label %298

298:                                              ; preds = %293, %280
  %299 = load %struct.buf*, %struct.buf** %19, align 8
  %300 = getelementptr inbounds %struct.buf, %struct.buf* %299, i32 0, i32 10
  %301 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %300, align 8
  %302 = load i32, i32* %26, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %301, i64 %303
  %305 = load %struct.TYPE_16__*, %struct.TYPE_16__** %304, align 8
  %306 = call i64 @vm_page_trysbusy(%struct.TYPE_16__* %305)
  %307 = icmp eq i64 %306, 0
  br i1 %307, label %308, label %309

308:                                              ; preds = %298
  br label %349

309:                                              ; preds = %298
  %310 = load %struct.buf*, %struct.buf** %19, align 8
  %311 = getelementptr inbounds %struct.buf, %struct.buf* %310, i32 0, i32 10
  %312 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %311, align 8
  %313 = load i32, i32* %26, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %312, i64 %314
  %316 = load %struct.TYPE_16__*, %struct.TYPE_16__** %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 4
  %319 = load i32, i32* %28, align 4
  %320 = load i64, i64* %22, align 8
  %321 = call i32 @vm_page_bits(i32 %319, i64 %320)
  %322 = and i32 %318, %321
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %333

324:                                              ; preds = %309
  %325 = load %struct.buf*, %struct.buf** %19, align 8
  %326 = getelementptr inbounds %struct.buf, %struct.buf* %325, i32 0, i32 10
  %327 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %326, align 8
  %328 = load i32, i32* %26, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %327, i64 %329
  %331 = load %struct.TYPE_16__*, %struct.TYPE_16__** %330, align 8
  %332 = call i32 @vm_page_sunbusy(%struct.TYPE_16__* %331)
  br label %349

333:                                              ; preds = %309
  %334 = load %struct.buf*, %struct.buf** %19, align 8
  %335 = getelementptr inbounds %struct.buf, %struct.buf* %334, i32 0, i32 13
  %336 = load %struct.TYPE_14__*, %struct.TYPE_14__** %335, align 8
  %337 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 4
  %339 = call i32 @vm_object_pip_add(i32 %338, i32 1)
  %340 = load i64, i64* %22, align 8
  %341 = load i64, i64* %21, align 8
  %342 = add nsw i64 %341, %340
  store i64 %342, i64* %21, align 8
  %343 = load i64, i64* %22, align 8
  %344 = load i64, i64* %23, align 8
  %345 = sub nsw i64 %344, %343
  store i64 %345, i64* %23, align 8
  br label %346

346:                                              ; preds = %333
  %347 = load i32, i32* %26, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %26, align 4
  br label %277

349:                                              ; preds = %324, %308, %277
  %350 = load i64, i64* %23, align 8
  %351 = icmp sgt i64 %350, 0
  br i1 %351, label %352, label %380

352:                                              ; preds = %349
  br label %353

353:                                              ; preds = %423, %352
  %354 = load %struct.buf*, %struct.buf** %19, align 8
  %355 = getelementptr inbounds %struct.buf, %struct.buf* %354, i32 0, i32 13
  %356 = load %struct.TYPE_14__*, %struct.TYPE_14__** %355, align 8
  %357 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 4
  %359 = load i32, i32* %26, align 4
  %360 = call i32 @vm_object_pip_wakeupn(i32 %358, i32 %359)
  store i32 0, i32* %27, align 4
  br label %361

361:                                              ; preds = %374, %353
  %362 = load i32, i32* %27, align 4
  %363 = load i32, i32* %26, align 4
  %364 = icmp slt i32 %362, %363
  br i1 %364, label %365, label %377

365:                                              ; preds = %361
  %366 = load %struct.buf*, %struct.buf** %19, align 8
  %367 = getelementptr inbounds %struct.buf, %struct.buf* %366, i32 0, i32 10
  %368 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %367, align 8
  %369 = load i32, i32* %27, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %368, i64 %370
  %372 = load %struct.TYPE_16__*, %struct.TYPE_16__** %371, align 8
  %373 = call i32 @vm_page_sunbusy(%struct.TYPE_16__* %372)
  br label %374

374:                                              ; preds = %365
  %375 = load i32, i32* %27, align 4
  %376 = add nsw i32 %375, 1
  store i32 %376, i32* %27, align 4
  br label %361

377:                                              ; preds = %361
  %378 = load %struct.buf*, %struct.buf** %19, align 8
  %379 = call i32 @bqrelse(%struct.buf* %378)
  br label %538

380:                                              ; preds = %349
  %381 = load %struct.buf*, %struct.buf** %17, align 8
  %382 = icmp ne %struct.buf* %381, null
  br i1 %382, label %383, label %386

383:                                              ; preds = %380
  %384 = load i32, i32* %24, align 4
  %385 = icmp eq i32 %384, 1
  br i1 %385, label %391, label %386

386:                                              ; preds = %383, %380
  %387 = load i32, i32* %24, align 4
  %388 = load i32, i32* %15, align 4
  %389 = sub nsw i32 %388, 1
  %390 = icmp eq i32 %387, %389
  br i1 %390, label %391, label %397

391:                                              ; preds = %386, %383
  %392 = load i32, i32* @B_RAM, align 4
  %393 = load %struct.buf*, %struct.buf** %19, align 8
  %394 = getelementptr inbounds %struct.buf, %struct.buf* %393, i32 0, i32 0
  %395 = load i32, i32* %394, align 8
  %396 = or i32 %395, %392
  store i32 %396, i32* %394, align 8
  br label %397

397:                                              ; preds = %391, %386
  %398 = load i32, i32* @B_ASYNC, align 4
  %399 = load %struct.buf*, %struct.buf** %19, align 8
  %400 = getelementptr inbounds %struct.buf, %struct.buf* %399, i32 0, i32 0
  %401 = load i32, i32* %400, align 8
  %402 = or i32 %401, %398
  store i32 %402, i32* %400, align 8
  %403 = load i8*, i8** @BIO_READ, align 8
  %404 = load %struct.buf*, %struct.buf** %19, align 8
  %405 = getelementptr inbounds %struct.buf, %struct.buf* %404, i32 0, i32 12
  store i8* %403, i8** %405, align 8
  %406 = load %struct.buf*, %struct.buf** %19, align 8
  %407 = getelementptr inbounds %struct.buf, %struct.buf* %406, i32 0, i32 1
  %408 = load i32, i32* %407, align 4
  %409 = load %struct.buf*, %struct.buf** %19, align 8
  %410 = getelementptr inbounds %struct.buf, %struct.buf* %409, i32 0, i32 3
  %411 = load i32, i32* %410, align 8
  %412 = icmp eq i32 %408, %411
  br i1 %412, label %413, label %417

413:                                              ; preds = %397
  %414 = load i32, i32* %20, align 4
  %415 = load %struct.buf*, %struct.buf** %19, align 8
  %416 = getelementptr inbounds %struct.buf, %struct.buf* %415, i32 0, i32 1
  store i32 %414, i32* %416, align 4
  br label %425

417:                                              ; preds = %397
  %418 = load %struct.buf*, %struct.buf** %19, align 8
  %419 = getelementptr inbounds %struct.buf, %struct.buf* %418, i32 0, i32 1
  %420 = load i32, i32* %419, align 4
  %421 = load i32, i32* %20, align 4
  %422 = icmp ne i32 %420, %421
  br i1 %422, label %423, label %424

423:                                              ; preds = %417
  br label %353

424:                                              ; preds = %417
  br label %425

425:                                              ; preds = %424, %413
  br label %426

426:                                              ; preds = %425, %204
  %427 = load %struct.buf*, %struct.buf** %19, align 8
  %428 = call i32 @BUF_KERNPROC(%struct.buf* %427)
  %429 = load %struct.buf*, %struct.buf** %18, align 8
  %430 = getelementptr inbounds %struct.buf, %struct.buf* %429, i32 0, i32 11
  %431 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %430, i32 0, i32 0
  %432 = load %struct.buf*, %struct.buf** %19, align 8
  %433 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @b_cluster, i32 0, i32 0), align 4
  %434 = call i32 @TAILQ_INSERT_TAIL(i32* %431, %struct.buf* %432, i32 %433)
  store i32 0, i32* %26, align 4
  br label %435

435:                                              ; preds = %494, %426
  %436 = load i32, i32* %26, align 4
  %437 = load %struct.buf*, %struct.buf** %19, align 8
  %438 = getelementptr inbounds %struct.buf, %struct.buf* %437, i32 0, i32 7
  %439 = load i32, i32* %438, align 8
  %440 = icmp slt i32 %436, %439
  br i1 %440, label %441, label %497

441:                                              ; preds = %435
  %442 = load %struct.buf*, %struct.buf** %19, align 8
  %443 = getelementptr inbounds %struct.buf, %struct.buf* %442, i32 0, i32 10
  %444 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %443, align 8
  %445 = load i32, i32* %26, align 4
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %444, i64 %446
  %448 = load %struct.TYPE_16__*, %struct.TYPE_16__** %447, align 8
  store %struct.TYPE_16__* %448, %struct.TYPE_16__** %29, align 8
  %449 = load %struct.buf*, %struct.buf** %18, align 8
  %450 = getelementptr inbounds %struct.buf, %struct.buf* %449, i32 0, i32 7
  %451 = load i32, i32* %450, align 8
  %452 = icmp eq i32 %451, 0
  br i1 %452, label %466, label %453

453:                                              ; preds = %441
  %454 = load %struct.buf*, %struct.buf** %18, align 8
  %455 = getelementptr inbounds %struct.buf, %struct.buf* %454, i32 0, i32 10
  %456 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %455, align 8
  %457 = load %struct.buf*, %struct.buf** %18, align 8
  %458 = getelementptr inbounds %struct.buf, %struct.buf* %457, i32 0, i32 7
  %459 = load i32, i32* %458, align 8
  %460 = sub nsw i32 %459, 1
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %456, i64 %461
  %463 = load %struct.TYPE_16__*, %struct.TYPE_16__** %462, align 8
  %464 = load %struct.TYPE_16__*, %struct.TYPE_16__** %29, align 8
  %465 = icmp ne %struct.TYPE_16__* %463, %464
  br i1 %465, label %466, label %480

466:                                              ; preds = %453, %441
  %467 = load %struct.TYPE_16__*, %struct.TYPE_16__** %29, align 8
  %468 = load %struct.buf*, %struct.buf** %18, align 8
  %469 = getelementptr inbounds %struct.buf, %struct.buf* %468, i32 0, i32 10
  %470 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %469, align 8
  %471 = load %struct.buf*, %struct.buf** %18, align 8
  %472 = getelementptr inbounds %struct.buf, %struct.buf* %471, i32 0, i32 7
  %473 = load i32, i32* %472, align 8
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %470, i64 %474
  store %struct.TYPE_16__* %467, %struct.TYPE_16__** %475, align 8
  %476 = load %struct.buf*, %struct.buf** %18, align 8
  %477 = getelementptr inbounds %struct.buf, %struct.buf* %476, i32 0, i32 7
  %478 = load i32, i32* %477, align 8
  %479 = add nsw i32 %478, 1
  store i32 %479, i32* %477, align 8
  br label %480

480:                                              ; preds = %466, %453
  %481 = load %struct.TYPE_16__*, %struct.TYPE_16__** %29, align 8
  %482 = call i64 @vm_page_all_valid(%struct.TYPE_16__* %481)
  %483 = icmp ne i64 %482, 0
  br i1 %483, label %484, label %493

484:                                              ; preds = %480
  %485 = load i8*, i8** @bogus_page, align 8
  %486 = bitcast i8* %485 to %struct.TYPE_16__*
  %487 = load %struct.buf*, %struct.buf** %19, align 8
  %488 = getelementptr inbounds %struct.buf, %struct.buf* %487, i32 0, i32 10
  %489 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %488, align 8
  %490 = load i32, i32* %26, align 4
  %491 = sext i32 %490 to i64
  %492 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %489, i64 %491
  store %struct.TYPE_16__* %486, %struct.TYPE_16__** %492, align 8
  br label %493

493:                                              ; preds = %484, %480
  br label %494

494:                                              ; preds = %493
  %495 = load i32, i32* %26, align 4
  %496 = add nsw i32 %495, 1
  store i32 %496, i32* %26, align 4
  br label %435

497:                                              ; preds = %435
  %498 = load %struct.buf*, %struct.buf** %19, align 8
  %499 = getelementptr inbounds %struct.buf, %struct.buf* %498, i32 0, i32 5
  %500 = load i64, i64* %499, align 8
  %501 = load i64, i64* %14, align 8
  %502 = icmp ne i64 %500, %501
  br i1 %502, label %503, label %509

503:                                              ; preds = %497
  %504 = load %struct.buf*, %struct.buf** %19, align 8
  %505 = getelementptr inbounds %struct.buf, %struct.buf* %504, i32 0, i32 5
  %506 = load i64, i64* %505, align 8
  %507 = load i64, i64* %14, align 8
  %508 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i64 %506, i64 %507)
  br label %509

509:                                              ; preds = %503, %497
  %510 = load %struct.buf*, %struct.buf** %19, align 8
  %511 = getelementptr inbounds %struct.buf, %struct.buf* %510, i32 0, i32 6
  %512 = load i64, i64* %511, align 8
  %513 = load i64, i64* %14, align 8
  %514 = icmp ne i64 %512, %513
  br i1 %514, label %515, label %521

515:                                              ; preds = %509
  %516 = load %struct.buf*, %struct.buf** %19, align 8
  %517 = getelementptr inbounds %struct.buf, %struct.buf* %516, i32 0, i32 6
  %518 = load i64, i64* %517, align 8
  %519 = load i64, i64* %14, align 8
  %520 = call i32 @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i64 %518, i64 %519)
  br label %521

521:                                              ; preds = %515, %509
  %522 = load i64, i64* %14, align 8
  %523 = load %struct.buf*, %struct.buf** %18, align 8
  %524 = getelementptr inbounds %struct.buf, %struct.buf* %523, i32 0, i32 5
  %525 = load i64, i64* %524, align 8
  %526 = add nsw i64 %525, %522
  store i64 %526, i64* %524, align 8
  %527 = load i64, i64* %14, align 8
  %528 = load %struct.buf*, %struct.buf** %18, align 8
  %529 = getelementptr inbounds %struct.buf, %struct.buf* %528, i32 0, i32 6
  %530 = load i64, i64* %529, align 8
  %531 = add nsw i64 %530, %527
  store i64 %531, i64* %529, align 8
  br label %532

532:                                              ; preds = %521
  %533 = load i32, i32* %24, align 4
  %534 = add nsw i32 %533, 1
  store i32 %534, i32* %24, align 4
  %535 = load i32, i32* %25, align 4
  %536 = load i32, i32* %20, align 4
  %537 = add nsw i32 %536, %535
  store i32 %537, i32* %20, align 4
  br label %197

538:                                              ; preds = %377, %269, %247, %232, %197
  store i32 0, i32* %26, align 4
  br label %539

539:                                              ; preds = %565, %538
  %540 = load i32, i32* %26, align 4
  %541 = load %struct.buf*, %struct.buf** %18, align 8
  %542 = getelementptr inbounds %struct.buf, %struct.buf* %541, i32 0, i32 7
  %543 = load i32, i32* %542, align 8
  %544 = icmp slt i32 %540, %543
  br i1 %544, label %545, label %568

545:                                              ; preds = %539
  %546 = load %struct.buf*, %struct.buf** %18, align 8
  %547 = getelementptr inbounds %struct.buf, %struct.buf* %546, i32 0, i32 10
  %548 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %547, align 8
  %549 = load i32, i32* %26, align 4
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %548, i64 %550
  %552 = load %struct.TYPE_16__*, %struct.TYPE_16__** %551, align 8
  %553 = call i64 @vm_page_all_valid(%struct.TYPE_16__* %552)
  %554 = icmp ne i64 %553, 0
  br i1 %554, label %555, label %564

555:                                              ; preds = %545
  %556 = load i8*, i8** @bogus_page, align 8
  %557 = bitcast i8* %556 to %struct.TYPE_16__*
  %558 = load %struct.buf*, %struct.buf** %18, align 8
  %559 = getelementptr inbounds %struct.buf, %struct.buf* %558, i32 0, i32 10
  %560 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %559, align 8
  %561 = load i32, i32* %26, align 4
  %562 = sext i32 %561 to i64
  %563 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %560, i64 %562
  store %struct.TYPE_16__* %557, %struct.TYPE_16__** %563, align 8
  br label %564

564:                                              ; preds = %555, %545
  br label %565

565:                                              ; preds = %564
  %566 = load i32, i32* %26, align 4
  %567 = add nsw i32 %566, 1
  store i32 %567, i32* %26, align 4
  br label %539

568:                                              ; preds = %539
  %569 = load %struct.buf*, %struct.buf** %18, align 8
  %570 = getelementptr inbounds %struct.buf, %struct.buf* %569, i32 0, i32 6
  %571 = load i64, i64* %570, align 8
  %572 = load %struct.buf*, %struct.buf** %18, align 8
  %573 = getelementptr inbounds %struct.buf, %struct.buf* %572, i32 0, i32 9
  %574 = load i64, i64* %573, align 8
  %575 = icmp sgt i64 %571, %574
  br i1 %575, label %576, label %584

576:                                              ; preds = %568
  %577 = load %struct.buf*, %struct.buf** %18, align 8
  %578 = getelementptr inbounds %struct.buf, %struct.buf* %577, i32 0, i32 6
  %579 = load i64, i64* %578, align 8
  %580 = load %struct.buf*, %struct.buf** %18, align 8
  %581 = getelementptr inbounds %struct.buf, %struct.buf* %580, i32 0, i32 9
  %582 = load i64, i64* %581, align 8
  %583 = call i32 @panic(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i64 %579, i64 %582)
  br label %584

584:                                              ; preds = %576, %568
  %585 = load %struct.buf*, %struct.buf** %18, align 8
  %586 = call i64 @buf_mapped(%struct.buf* %585)
  %587 = icmp ne i64 %586, 0
  br i1 %587, label %588, label %601

588:                                              ; preds = %584
  %589 = load %struct.buf*, %struct.buf** %18, align 8
  %590 = getelementptr inbounds %struct.buf, %struct.buf* %589, i32 0, i32 2
  %591 = load i8*, i8** %590, align 8
  %592 = ptrtoint i8* %591 to i64
  %593 = call i32 @trunc_page(i64 %592)
  %594 = load %struct.buf*, %struct.buf** %18, align 8
  %595 = getelementptr inbounds %struct.buf, %struct.buf* %594, i32 0, i32 10
  %596 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %595, align 8
  %597 = load %struct.buf*, %struct.buf** %18, align 8
  %598 = getelementptr inbounds %struct.buf, %struct.buf* %597, i32 0, i32 7
  %599 = load i32, i32* %598, align 8
  %600 = call i32 @pmap_qenter(i32 %593, %struct.TYPE_16__** %596, i32 %599)
  br label %601

601:                                              ; preds = %588, %584
  %602 = load %struct.buf*, %struct.buf** %18, align 8
  store %struct.buf* %602, %struct.buf** %9, align 8
  br label %603

603:                                              ; preds = %601, %123, %115, %82
  %604 = load %struct.buf*, %struct.buf** %9, align 8
  ret %struct.buf* %604
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.buf* @getblk(%struct.vnode*, i32, i64, i32, i32, i32) #1

declare dso_local %struct.buf* @uma_zalloc(i32, i32) #1

declare dso_local i32 @pbgetvp(%struct.vnode*, %struct.buf*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @btodb(i64) #1

declare dso_local i32 @vm_object_pip_add(i32, i32) #1

declare dso_local i32 @vfs_busy_pages_acquire(%struct.buf*) #1

declare dso_local i64 @round_page(i64) #1

declare dso_local i32 @bqrelse(%struct.buf*) #1

declare dso_local i64 @vm_page_trysbusy(%struct.TYPE_16__*) #1

declare dso_local i32 @vm_page_bits(i32, i64) #1

declare dso_local i32 @vm_page_sunbusy(%struct.TYPE_16__*) #1

declare dso_local i32 @vm_object_pip_wakeupn(i32, i32) #1

declare dso_local i32 @BUF_KERNPROC(%struct.buf*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.buf*, i32) #1

declare dso_local i64 @vm_page_all_valid(%struct.TYPE_16__*) #1

declare dso_local i32 @printf(i8*, i64, i64) #1

declare dso_local i32 @panic(i8*, i64, i64) #1

declare dso_local i64 @buf_mapped(%struct.buf*) #1

declare dso_local i32 @pmap_qenter(i32, %struct.TYPE_16__**, i32) #1

declare dso_local i32 @trunc_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
