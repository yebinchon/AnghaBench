; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_swap_pager.c_swp_pager_async_iodone.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_swap_pager.c_swp_pager_async_iodone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32, i64, i64, i32, i32, i32, i32, i32*, i32*, %struct.TYPE_17__**, i64, i64, i64, i64 }
%struct.TYPE_17__ = type { i32, i64, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }

@BIO_ERROR = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [65 x i8] c"swap_pager: I/O error - %s failed; blkno %ld,size %ld, error %d\0A\00", align 1
@BIO_READ = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"pagein\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"pageout\00", align 1
@VPO_SWAPINPROG = common dso_local global i32 0, align 4
@VPO_SWAPSLEEP = common dso_local global i32 0, align 4
@VM_PAGE_BITS_ALL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [42 x i8] c"swp_pager_async_iodone: page %p is mapped\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"swp_pager_async_iodone: page %p is dirty\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"swp_pager_async_iodone: page %p is not write protected\00", align 1
@B_ASYNC = common dso_local global i32 0, align 4
@swbuf_mtx = common dso_local global i32 0, align 4
@nsw_wcount_async = common dso_local global i32 0, align 4
@swrbuf_zone = common dso_local global i32 0, align 4
@swwbuf_zone = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buf*)* @swp_pager_async_iodone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @swp_pager_async_iodone(%struct.buf* %0) #0 {
  %2 = alloca %struct.buf*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  store %struct.buf* %0, %struct.buf** %2, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %4, align 8
  %6 = load %struct.buf*, %struct.buf** %2, align 8
  %7 = getelementptr inbounds %struct.buf, %struct.buf* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @BIO_ERROR, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %36

12:                                               ; preds = %1
  %13 = load %struct.buf*, %struct.buf** %2, align 8
  %14 = getelementptr inbounds %struct.buf, %struct.buf* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ENOMEM, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %36

18:                                               ; preds = %12
  %19 = load %struct.buf*, %struct.buf** %2, align 8
  %20 = getelementptr inbounds %struct.buf, %struct.buf* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @BIO_READ, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %26 = load %struct.buf*, %struct.buf** %2, align 8
  %27 = getelementptr inbounds %struct.buf, %struct.buf* %26, i32 0, i32 13
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.buf*, %struct.buf** %2, align 8
  %30 = getelementptr inbounds %struct.buf, %struct.buf* %29, i32 0, i32 12
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.buf*, %struct.buf** %2, align 8
  %33 = getelementptr inbounds %struct.buf, %struct.buf* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i8* %25, i64 %28, i64 %31, i64 %34)
  br label %36

36:                                               ; preds = %18, %12, %1
  %37 = load %struct.buf*, %struct.buf** %2, align 8
  %38 = call i64 @buf_mapped(%struct.buf* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %36
  %41 = load %struct.buf*, %struct.buf** %2, align 8
  %42 = getelementptr inbounds %struct.buf, %struct.buf* %41, i32 0, i32 11
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = load %struct.buf*, %struct.buf** %2, align 8
  %46 = getelementptr inbounds %struct.buf, %struct.buf* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @pmap_qremove(i32 %44, i32 %47)
  br label %55

49:                                               ; preds = %36
  %50 = load %struct.buf*, %struct.buf** %2, align 8
  %51 = getelementptr inbounds %struct.buf, %struct.buf* %50, i32 0, i32 10
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.buf*, %struct.buf** %2, align 8
  %54 = getelementptr inbounds %struct.buf, %struct.buf* %53, i32 0, i32 11
  store i64 %52, i64* %54, align 8
  br label %55

55:                                               ; preds = %49, %40
  %56 = load %struct.buf*, %struct.buf** %2, align 8
  %57 = getelementptr inbounds %struct.buf, %struct.buf* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %55
  %61 = load %struct.buf*, %struct.buf** %2, align 8
  %62 = getelementptr inbounds %struct.buf, %struct.buf* %61, i32 0, i32 9
  %63 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %63, i64 0
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %66, align 8
  store %struct.TYPE_18__* %67, %struct.TYPE_18__** %4, align 8
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %69 = call i32 @VM_OBJECT_WLOCK(%struct.TYPE_18__* %68)
  br label %70

70:                                               ; preds = %60, %55
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %205, %70
  %72 = load i32, i32* %3, align 4
  %73 = load %struct.buf*, %struct.buf** %2, align 8
  %74 = getelementptr inbounds %struct.buf, %struct.buf* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %77, label %208

77:                                               ; preds = %71
  %78 = load %struct.buf*, %struct.buf** %2, align 8
  %79 = getelementptr inbounds %struct.buf, %struct.buf* %78, i32 0, i32 9
  %80 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %79, align 8
  %81 = load i32, i32* %3, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %80, i64 %82
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %83, align 8
  store %struct.TYPE_17__* %84, %struct.TYPE_17__** %5, align 8
  %85 = load i32, i32* @VPO_SWAPINPROG, align 4
  %86 = xor i32 %85, -1
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = and i32 %89, %86
  store i32 %90, i32* %88, align 8
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @VPO_SWAPSLEEP, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %77
  %98 = load i32, i32* @VPO_SWAPSLEEP, align 4
  %99 = xor i32 %98, -1
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = and i32 %102, %99
  store i32 %103, i32* %101, align 8
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 0
  %106 = call i32 @wakeup(i32* %105)
  br label %107

107:                                              ; preds = %97, %77
  %108 = load %struct.buf*, %struct.buf** %2, align 8
  %109 = getelementptr inbounds %struct.buf, %struct.buf* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @BIO_ERROR, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %140

114:                                              ; preds = %107
  %115 = load %struct.buf*, %struct.buf** %2, align 8
  %116 = getelementptr inbounds %struct.buf, %struct.buf* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @BIO_READ, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %114
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %122 = call i32 @vm_page_invalid(%struct.TYPE_17__* %121)
  br label %139

123:                                              ; preds = %114
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @VM_PAGE_BITS_ALL, align 8
  %128 = icmp eq i64 %126, %127
  %129 = zext i1 %128 to i32
  %130 = call i32 @MPASS(i32 %129)
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %132 = call i32 @vm_page_lock(%struct.TYPE_17__* %131)
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %134 = call i32 @vm_page_activate(%struct.TYPE_17__* %133)
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %136 = call i32 @vm_page_unlock(%struct.TYPE_17__* %135)
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %138 = call i32 @vm_page_sunbusy(%struct.TYPE_17__* %137)
  br label %139

139:                                              ; preds = %123, %120
  br label %204

140:                                              ; preds = %107
  %141 = load %struct.buf*, %struct.buf** %2, align 8
  %142 = getelementptr inbounds %struct.buf, %struct.buf* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @BIO_READ, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %184

146:                                              ; preds = %140
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %148 = call i32 @pmap_page_is_mapped(%struct.TYPE_17__* %147)
  %149 = icmp ne i32 %148, 0
  %150 = xor i1 %149, true
  %151 = zext i1 %150 to i32
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %153 = bitcast %struct.TYPE_17__* %152 to i8*
  %154 = call i32 @KASSERT(i32 %151, i8* %153)
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = icmp eq i64 %157, 0
  %159 = zext i1 %158 to i32
  %160 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %161 = bitcast %struct.TYPE_17__* %160 to i8*
  %162 = call i32 @KASSERT(i32 %159, i8* %161)
  %163 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %164 = call i32 @vm_page_valid(%struct.TYPE_17__* %163)
  %165 = load i32, i32* %3, align 4
  %166 = load %struct.buf*, %struct.buf** %2, align 8
  %167 = getelementptr inbounds %struct.buf, %struct.buf* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 4
  %169 = icmp slt i32 %165, %168
  br i1 %169, label %180, label %170

170:                                              ; preds = %146
  %171 = load i32, i32* %3, align 4
  %172 = load %struct.buf*, %struct.buf** %2, align 8
  %173 = getelementptr inbounds %struct.buf, %struct.buf* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.buf*, %struct.buf** %2, align 8
  %176 = getelementptr inbounds %struct.buf, %struct.buf* %175, i32 0, i32 5
  %177 = load i32, i32* %176, align 8
  %178 = sub nsw i32 %174, %177
  %179 = icmp sge i32 %171, %178
  br i1 %179, label %180, label %183

180:                                              ; preds = %170, %146
  %181 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %182 = call i32 @vm_page_readahead_finish(%struct.TYPE_17__* %181)
  br label %183

183:                                              ; preds = %180, %170
  br label %203

184:                                              ; preds = %140
  %185 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %186 = call i32 @pmap_page_is_write_mapped(%struct.TYPE_17__* %185)
  %187 = icmp ne i32 %186, 0
  %188 = xor i1 %187, true
  %189 = zext i1 %188 to i32
  %190 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %191 = bitcast %struct.TYPE_17__* %190 to i8*
  %192 = call i32 @KASSERT(i32 %189, i8* %191)
  %193 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %194 = call i32 @vm_page_undirty(%struct.TYPE_17__* %193)
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %196 = call i32 @vm_page_lock(%struct.TYPE_17__* %195)
  %197 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %198 = call i32 @vm_page_deactivate_noreuse(%struct.TYPE_17__* %197)
  %199 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %200 = call i32 @vm_page_unlock(%struct.TYPE_17__* %199)
  %201 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %202 = call i32 @vm_page_sunbusy(%struct.TYPE_17__* %201)
  br label %203

203:                                              ; preds = %184, %183
  br label %204

204:                                              ; preds = %203, %139
  br label %205

205:                                              ; preds = %204
  %206 = load i32, i32* %3, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %3, align 4
  br label %71

208:                                              ; preds = %71
  %209 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %210 = icmp ne %struct.TYPE_18__* %209, null
  br i1 %210, label %211, label %219

211:                                              ; preds = %208
  %212 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %213 = load %struct.buf*, %struct.buf** %2, align 8
  %214 = getelementptr inbounds %struct.buf, %struct.buf* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @vm_object_pip_wakeupn(%struct.TYPE_18__* %212, i32 %215)
  %217 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %218 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_18__* %217)
  br label %219

219:                                              ; preds = %211, %208
  %220 = load %struct.buf*, %struct.buf** %2, align 8
  %221 = getelementptr inbounds %struct.buf, %struct.buf* %220, i32 0, i32 8
  %222 = load i32*, i32** %221, align 8
  %223 = icmp ne i32* %222, null
  br i1 %223, label %224, label %229

224:                                              ; preds = %219
  %225 = load %struct.buf*, %struct.buf** %2, align 8
  %226 = getelementptr inbounds %struct.buf, %struct.buf* %225, i32 0, i32 8
  store i32* null, i32** %226, align 8
  %227 = load %struct.buf*, %struct.buf** %2, align 8
  %228 = getelementptr inbounds %struct.buf, %struct.buf* %227, i32 0, i32 7
  store i32* null, i32** %228, align 8
  br label %229

229:                                              ; preds = %224, %219
  %230 = load %struct.buf*, %struct.buf** %2, align 8
  %231 = getelementptr inbounds %struct.buf, %struct.buf* %230, i32 0, i32 6
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* @B_ASYNC, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %245

236:                                              ; preds = %229
  %237 = call i32 @mtx_lock(i32* @swbuf_mtx)
  %238 = load i32, i32* @nsw_wcount_async, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* @nsw_wcount_async, align 4
  %240 = icmp eq i32 %239, 1
  br i1 %240, label %241, label %243

241:                                              ; preds = %236
  %242 = call i32 @wakeup(i32* @nsw_wcount_async)
  br label %243

243:                                              ; preds = %241, %236
  %244 = call i32 @mtx_unlock(i32* @swbuf_mtx)
  br label %245

245:                                              ; preds = %243, %229
  %246 = load %struct.buf*, %struct.buf** %2, align 8
  %247 = getelementptr inbounds %struct.buf, %struct.buf* %246, i32 0, i32 2
  %248 = load i64, i64* %247, align 8
  %249 = load i64, i64* @BIO_READ, align 8
  %250 = icmp eq i64 %248, %249
  br i1 %250, label %251, label %253

251:                                              ; preds = %245
  %252 = load i32, i32* @swrbuf_zone, align 4
  br label %255

253:                                              ; preds = %245
  %254 = load i32, i32* @swwbuf_zone, align 4
  br label %255

255:                                              ; preds = %253, %251
  %256 = phi i32 [ %252, %251 ], [ %254, %253 ]
  %257 = load %struct.buf*, %struct.buf** %2, align 8
  %258 = call i32 @uma_zfree(i32 %256, %struct.buf* %257)
  ret void
}

declare dso_local i32 @printf(i8*, i8*, i64, i64, i64) #1

declare dso_local i64 @buf_mapped(%struct.buf*) #1

declare dso_local i32 @pmap_qremove(i32, i32) #1

declare dso_local i32 @VM_OBJECT_WLOCK(%struct.TYPE_18__*) #1

declare dso_local i32 @wakeup(i32*) #1

declare dso_local i32 @vm_page_invalid(%struct.TYPE_17__*) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @vm_page_lock(%struct.TYPE_17__*) #1

declare dso_local i32 @vm_page_activate(%struct.TYPE_17__*) #1

declare dso_local i32 @vm_page_unlock(%struct.TYPE_17__*) #1

declare dso_local i32 @vm_page_sunbusy(%struct.TYPE_17__*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @pmap_page_is_mapped(%struct.TYPE_17__*) #1

declare dso_local i32 @vm_page_valid(%struct.TYPE_17__*) #1

declare dso_local i32 @vm_page_readahead_finish(%struct.TYPE_17__*) #1

declare dso_local i32 @pmap_page_is_write_mapped(%struct.TYPE_17__*) #1

declare dso_local i32 @vm_page_undirty(%struct.TYPE_17__*) #1

declare dso_local i32 @vm_page_deactivate_noreuse(%struct.TYPE_17__*) #1

declare dso_local i32 @vm_object_pip_wakeupn(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_18__*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @uma_zfree(i32, %struct.buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
