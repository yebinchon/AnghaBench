; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_phys.c_vm_phys_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_phys.c_vm_phys_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_phys_seg = type { i64, i64, i64, %struct.vm_freelist***, i32* }
%struct.vm_freelist = type { i32 }

@vm_phys_nsegs = common dso_local global i32 0, align 4
@vm_phys_segs = common dso_local global %struct.vm_phys_seg* null, align 8
@vm_freelist_to_flind = common dso_local global i32* null, align 8
@VM_FREELIST_DEFAULT = common dso_local global i64 0, align 8
@VM_NFREELIST = common dso_local global i32 0, align 4
@vm_nfreelists = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"vm_phys_init: no free lists\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"vm_phys_init: DEFAULT flind < 0\00", align 1
@vm_phys_free_queues = common dso_local global %struct.vm_freelist**** null, align 8
@.str.2 = private unnamed_addr constant [46 x i8] c"vm_phys_init: free queues cannot span domains\00", align 1
@vm_ndomains = common dso_local global i32 0, align 4
@VM_NFREEPOOL = common dso_local global i32 0, align 4
@VM_NFREEORDER = common dso_local global i32 0, align 4
@vm_phys_fictitious_reg_lock = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"vmfctr\00", align 1
@VM_DMA32_BOUNDARY = common dso_local global i64 0, align 8
@VM_DMA32_NPAGES_THRESHOLD = common dso_local global i64 0, align 8
@VM_FREELIST_DMA32 = common dso_local global i64 0, align 8
@VM_FREELIST_LOWMEM = common dso_local global i64 0, align 8
@VM_LOWMEM_BOUNDARY = common dso_local global i64 0, align 8
@vm_page_array = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_phys_init() #0 {
  %1 = alloca %struct.vm_freelist*, align 8
  %2 = alloca %struct.vm_phys_seg*, align 8
  %3 = alloca %struct.vm_phys_seg*, align 8
  %4 = alloca %struct.vm_phys_seg*, align 8
  %5 = alloca %struct.vm_phys_seg*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i64 0, i64* %6, align 8
  %13 = load i32, i32* @vm_phys_nsegs, align 4
  %14 = sub nsw i32 %13, 1
  store i32 %14, i32* %12, align 4
  br label %15

15:                                               ; preds = %36, %0
  %16 = load i32, i32* %12, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %39

18:                                               ; preds = %15
  %19 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** @vm_phys_segs, align 8
  %20 = load i32, i32* %12, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.vm_phys_seg, %struct.vm_phys_seg* %19, i64 %21
  store %struct.vm_phys_seg* %22, %struct.vm_phys_seg** %4, align 8
  %23 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** %4, align 8
  %24 = getelementptr inbounds %struct.vm_phys_seg, %struct.vm_phys_seg* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** %4, align 8
  %27 = getelementptr inbounds %struct.vm_phys_seg, %struct.vm_phys_seg* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 %25, %28
  %30 = call i64 @atop(i64 %29)
  %31 = load i64, i64* %6, align 8
  %32 = add i64 %31, %30
  store i64 %32, i64* %6, align 8
  %33 = load i32*, i32** @vm_freelist_to_flind, align 8
  %34 = load i64, i64* @VM_FREELIST_DEFAULT, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  store i32 1, i32* %35, align 4
  br label %36

36:                                               ; preds = %18
  %37 = load i32, i32* %12, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %12, align 4
  br label %15

39:                                               ; preds = %15
  store i32 1, i32* %9, align 4
  br label %40

40:                                               ; preds = %57, %39
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @VM_NFREELIST, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %60

44:                                               ; preds = %40
  %45 = load i32*, i32** @vm_freelist_to_flind, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sub nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** @vm_freelist_to_flind, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, %50
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %44
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %9, align 4
  br label %40

60:                                               ; preds = %40
  %61 = load i32*, i32** @vm_freelist_to_flind, align 8
  %62 = load i32, i32* @VM_NFREELIST, align 4
  %63 = sub nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* @vm_nfreelists, align 4
  %67 = load i32, i32* @vm_nfreelists, align 4
  %68 = icmp sgt i32 %67, 0
  %69 = zext i1 %68 to i32
  %70 = call i32 @KASSERT(i32 %69, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %71

71:                                               ; preds = %82, %60
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @VM_NFREELIST, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %85

75:                                               ; preds = %71
  %76 = load i32*, i32** @vm_freelist_to_flind, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %75
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %9, align 4
  br label %71

85:                                               ; preds = %71
  store i32 0, i32* %12, align 4
  br label %86

86:                                               ; preds = %120, %85
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* @vm_phys_nsegs, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %123

90:                                               ; preds = %86
  %91 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** @vm_phys_segs, align 8
  %92 = load i32, i32* %12, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.vm_phys_seg, %struct.vm_phys_seg* %91, i64 %93
  store %struct.vm_phys_seg* %94, %struct.vm_phys_seg** %4, align 8
  %95 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** %4, align 8
  %96 = getelementptr inbounds %struct.vm_phys_seg, %struct.vm_phys_seg* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = call i32* @PHYS_TO_VM_PAGE(i64 %97)
  %99 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** %4, align 8
  %100 = getelementptr inbounds %struct.vm_phys_seg, %struct.vm_phys_seg* %99, i32 0, i32 4
  store i32* %98, i32** %100, align 8
  %101 = load i32*, i32** @vm_freelist_to_flind, align 8
  %102 = load i64, i64* @VM_FREELIST_DEFAULT, align 8
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %8, align 4
  %106 = icmp sge i32 %105, 0
  %107 = zext i1 %106 to i32
  %108 = call i32 @KASSERT(i32 %107, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %109 = load %struct.vm_freelist****, %struct.vm_freelist***** @vm_phys_free_queues, align 8
  %110 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** %4, align 8
  %111 = getelementptr inbounds %struct.vm_phys_seg, %struct.vm_phys_seg* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds %struct.vm_freelist***, %struct.vm_freelist**** %109, i64 %112
  %114 = load %struct.vm_freelist***, %struct.vm_freelist**** %113, align 8
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.vm_freelist**, %struct.vm_freelist*** %114, i64 %116
  %118 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** %4, align 8
  %119 = getelementptr inbounds %struct.vm_phys_seg, %struct.vm_phys_seg* %118, i32 0, i32 3
  store %struct.vm_freelist*** %117, %struct.vm_freelist**** %119, align 8
  br label %120

120:                                              ; preds = %90
  %121 = load i32, i32* %12, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %12, align 4
  br label %86

123:                                              ; preds = %86
  %124 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** @vm_phys_segs, align 8
  store %struct.vm_phys_seg* %124, %struct.vm_phys_seg** %3, align 8
  %125 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** @vm_phys_segs, align 8
  %126 = getelementptr inbounds %struct.vm_phys_seg, %struct.vm_phys_seg* %125, i64 1
  store %struct.vm_phys_seg* %126, %struct.vm_phys_seg** %4, align 8
  %127 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** @vm_phys_segs, align 8
  %128 = load i32, i32* @vm_phys_nsegs, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.vm_phys_seg, %struct.vm_phys_seg* %127, i64 %129
  store %struct.vm_phys_seg* %130, %struct.vm_phys_seg** %2, align 8
  br label %131

131:                                              ; preds = %189, %123
  %132 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** %4, align 8
  %133 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** %2, align 8
  %134 = icmp ult %struct.vm_phys_seg* %132, %133
  br i1 %134, label %135, label %190

135:                                              ; preds = %131
  %136 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** %3, align 8
  %137 = getelementptr inbounds %struct.vm_phys_seg, %struct.vm_phys_seg* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** %4, align 8
  %140 = getelementptr inbounds %struct.vm_phys_seg, %struct.vm_phys_seg* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = icmp eq i64 %138, %141
  br i1 %142, label %143, label %185

143:                                              ; preds = %135
  %144 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** %3, align 8
  %145 = getelementptr inbounds %struct.vm_phys_seg, %struct.vm_phys_seg* %144, i32 0, i32 3
  %146 = load %struct.vm_freelist***, %struct.vm_freelist**** %145, align 8
  %147 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** %4, align 8
  %148 = getelementptr inbounds %struct.vm_phys_seg, %struct.vm_phys_seg* %147, i32 0, i32 3
  %149 = load %struct.vm_freelist***, %struct.vm_freelist**** %148, align 8
  %150 = icmp eq %struct.vm_freelist*** %146, %149
  br i1 %150, label %151, label %185

151:                                              ; preds = %143
  %152 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** %4, align 8
  %153 = getelementptr inbounds %struct.vm_phys_seg, %struct.vm_phys_seg* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** %3, align 8
  %156 = getelementptr inbounds %struct.vm_phys_seg, %struct.vm_phys_seg* %155, i32 0, i32 0
  store i64 %154, i64* %156, align 8
  %157 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** %3, align 8
  %158 = getelementptr inbounds %struct.vm_phys_seg, %struct.vm_phys_seg* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** %4, align 8
  %161 = getelementptr inbounds %struct.vm_phys_seg, %struct.vm_phys_seg* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = icmp eq i64 %159, %162
  %164 = zext i1 %163 to i32
  %165 = call i32 @KASSERT(i32 %164, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %166 = load i32, i32* @vm_phys_nsegs, align 4
  %167 = add nsw i32 %166, -1
  store i32 %167, i32* @vm_phys_nsegs, align 4
  %168 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** %2, align 8
  %169 = getelementptr inbounds %struct.vm_phys_seg, %struct.vm_phys_seg* %168, i32 -1
  store %struct.vm_phys_seg* %169, %struct.vm_phys_seg** %2, align 8
  %170 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** %4, align 8
  store %struct.vm_phys_seg* %170, %struct.vm_phys_seg** %5, align 8
  br label %171

171:                                              ; preds = %181, %151
  %172 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** %5, align 8
  %173 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** %2, align 8
  %174 = icmp ult %struct.vm_phys_seg* %172, %173
  br i1 %174, label %175, label %184

175:                                              ; preds = %171
  %176 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** %5, align 8
  %177 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** %5, align 8
  %178 = getelementptr inbounds %struct.vm_phys_seg, %struct.vm_phys_seg* %177, i64 1
  %179 = bitcast %struct.vm_phys_seg* %176 to i8*
  %180 = bitcast %struct.vm_phys_seg* %178 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %179, i8* align 8 %180, i64 40, i1 false)
  br label %181

181:                                              ; preds = %175
  %182 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** %5, align 8
  %183 = getelementptr inbounds %struct.vm_phys_seg, %struct.vm_phys_seg* %182, i32 1
  store %struct.vm_phys_seg* %183, %struct.vm_phys_seg** %5, align 8
  br label %171

184:                                              ; preds = %171
  br label %189

185:                                              ; preds = %143, %135
  %186 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** %4, align 8
  store %struct.vm_phys_seg* %186, %struct.vm_phys_seg** %3, align 8
  %187 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** %4, align 8
  %188 = getelementptr inbounds %struct.vm_phys_seg, %struct.vm_phys_seg* %187, i32 1
  store %struct.vm_phys_seg* %188, %struct.vm_phys_seg** %4, align 8
  br label %189

189:                                              ; preds = %185, %184
  br label %131

190:                                              ; preds = %131
  store i32 0, i32* %7, align 4
  br label %191

191:                                              ; preds = %242, %190
  %192 = load i32, i32* %7, align 4
  %193 = load i32, i32* @vm_ndomains, align 4
  %194 = icmp slt i32 %192, %193
  br i1 %194, label %195, label %245

195:                                              ; preds = %191
  store i32 0, i32* %8, align 4
  br label %196

196:                                              ; preds = %238, %195
  %197 = load i32, i32* %8, align 4
  %198 = load i32, i32* @vm_nfreelists, align 4
  %199 = icmp slt i32 %197, %198
  br i1 %199, label %200, label %241

200:                                              ; preds = %196
  store i32 0, i32* %11, align 4
  br label %201

201:                                              ; preds = %234, %200
  %202 = load i32, i32* %11, align 4
  %203 = load i32, i32* @VM_NFREEPOOL, align 4
  %204 = icmp slt i32 %202, %203
  br i1 %204, label %205, label %237

205:                                              ; preds = %201
  %206 = load %struct.vm_freelist****, %struct.vm_freelist***** @vm_phys_free_queues, align 8
  %207 = load i32, i32* %7, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.vm_freelist***, %struct.vm_freelist**** %206, i64 %208
  %210 = load %struct.vm_freelist***, %struct.vm_freelist**** %209, align 8
  %211 = load i32, i32* %8, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.vm_freelist**, %struct.vm_freelist*** %210, i64 %212
  %214 = load %struct.vm_freelist**, %struct.vm_freelist*** %213, align 8
  %215 = load i32, i32* %11, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.vm_freelist*, %struct.vm_freelist** %214, i64 %216
  %218 = load %struct.vm_freelist*, %struct.vm_freelist** %217, align 8
  store %struct.vm_freelist* %218, %struct.vm_freelist** %1, align 8
  store i32 0, i32* %10, align 4
  br label %219

219:                                              ; preds = %230, %205
  %220 = load i32, i32* %10, align 4
  %221 = load i32, i32* @VM_NFREEORDER, align 4
  %222 = icmp slt i32 %220, %221
  br i1 %222, label %223, label %233

223:                                              ; preds = %219
  %224 = load %struct.vm_freelist*, %struct.vm_freelist** %1, align 8
  %225 = load i32, i32* %10, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.vm_freelist, %struct.vm_freelist* %224, i64 %226
  %228 = getelementptr inbounds %struct.vm_freelist, %struct.vm_freelist* %227, i32 0, i32 0
  %229 = call i32 @TAILQ_INIT(i32* %228)
  br label %230

230:                                              ; preds = %223
  %231 = load i32, i32* %10, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %10, align 4
  br label %219

233:                                              ; preds = %219
  br label %234

234:                                              ; preds = %233
  %235 = load i32, i32* %11, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %11, align 4
  br label %201

237:                                              ; preds = %201
  br label %238

238:                                              ; preds = %237
  %239 = load i32, i32* %8, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %8, align 4
  br label %196

241:                                              ; preds = %196
  br label %242

242:                                              ; preds = %241
  %243 = load i32, i32* %7, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %7, align 4
  br label %191

245:                                              ; preds = %191
  %246 = call i32 @rw_init(i32* @vm_phys_fictitious_reg_lock, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i64 @atop(i64) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32* @PHYS_TO_VM_PAGE(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @rw_init(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
