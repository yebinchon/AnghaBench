; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_pmap.c_pmap_demote_pde.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_pmap.c_pmap_demote_pde.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_20__ = type { i64, i32 }
%struct.spglist = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@PG_PS = common dso_local global i32 0, align 4
@PG_V = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"pmap_demote_pde: oldpde is missing PG_PS and/or PG_V\00", align 1
@PG_A = common dso_local global i32 0, align 4
@PG_W = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"pmap_demote_pde: page table page for a wired mapping is missing\00", align 1
@PDRSHIFT = common dso_local global i32 0, align 4
@VM_ALLOC_NOOBJ = common dso_local global i32 0, align 4
@VM_ALLOC_NORMAL = common dso_local global i32 0, align 4
@VM_ALLOC_WIRED = common dso_local global i32 0, align 4
@PG_G = common dso_local global i32 0, align 4
@KTR_PMAP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"pmap_demote_pde: failure for va %#x in pmap %p\00", align 1
@FALSE = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global %struct.TYPE_21__* null, align 8
@NPTEPG = common dso_local global i32 0, align 4
@KPTmap = common dso_local global i32* null, align 8
@curthread = common dso_local global %struct.TYPE_18__* null, align 8
@pvh_global_lock = common dso_local global i32 0, align 4
@PMAP1 = common dso_local global i32* null, align 8
@PG_FRAME = common dso_local global i32 0, align 4
@PG_RW = common dso_local global i32 0, align 4
@PG_M = common dso_local global i32 0, align 4
@PADDR1 = common dso_local global i32* null, align 8
@PMAP1changed = common dso_local global i32 0, align 4
@PMAP1unchanged = common dso_local global i32 0, align 4
@PMAP2mutex = common dso_local global i32 0, align 4
@PMAP2 = common dso_local global i32* null, align 8
@PADDR2 = common dso_local global i32* null, align 8
@PG_U = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"pmap_demote_pde: oldpde is missing PG_A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"pmap_demote_pde: oldpde is missing PG_M\00", align 1
@PG_PDE_PAT = common dso_local global i32 0, align 4
@PG_PTE_PAT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [70 x i8] c"pmap_demote_pde: firstpte and newpte map different physical addresses\00", align 1
@PG_PTE_PROMOTE = common dso_local global i32 0, align 4
@workaround_erratum383 = common dso_local global i64 0, align 8
@PG_MANAGED = common dso_local global i32 0, align 4
@PG_PS_FRAME = common dso_local global i32 0, align 4
@pmap_pde_demotions = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [47 x i8] c"pmap_demote_pde: success for va %#x in pmap %p\00", align 1
@TRUE = common dso_local global i32 0, align 4
@PMAP1changedcpu = common dso_local global i32 0, align 4
@PMAP1cpu = common dso_local global i64 0, align 8
@cpuid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, i32*, i32)* @pmap_demote_pde to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmap_demote_pde(%struct.TYPE_21__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_20__*, align 8
  %14 = alloca %struct.spglist, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %17 = load i32, i32* @MA_OWNED, align 4
  %18 = call i32 @PMAP_LOCK_ASSERT(%struct.TYPE_21__* %16, i32 %17)
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @PG_PS, align 4
  %23 = load i32, i32* @PG_V, align 4
  %24 = or i32 %22, %23
  %25 = and i32 %21, %24
  %26 = load i32, i32* @PG_PS, align 4
  %27 = load i32, i32* @PG_V, align 4
  %28 = or i32 %26, %27
  %29 = icmp eq i32 %25, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @KASSERT(i32 %30, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @PG_A, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %3
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call %struct.TYPE_20__* @pmap_remove_pt_page(%struct.TYPE_21__* %37, i32 %38)
  store %struct.TYPE_20__* %39, %struct.TYPE_20__** %13, align 8
  %40 = icmp eq %struct.TYPE_20__* %39, null
  br i1 %40, label %41, label %101

41:                                               ; preds = %36, %3
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @PG_W, align 4
  %44 = and i32 %42, %43
  %45 = icmp eq i32 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i32 @KASSERT(i32 %46, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @PG_A, align 4
  %50 = and i32 %48, %49
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %63, label %52

52:                                               ; preds = %41
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @PDRSHIFT, align 4
  %55 = ashr i32 %53, %54
  %56 = load i32, i32* @VM_ALLOC_NOOBJ, align 4
  %57 = load i32, i32* @VM_ALLOC_NORMAL, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @VM_ALLOC_WIRED, align 4
  %60 = or i32 %58, %59
  %61 = call %struct.TYPE_20__* @vm_page_alloc(i32* null, i32 %55, i32 %60)
  store %struct.TYPE_20__* %61, %struct.TYPE_20__** %13, align 8
  %62 = icmp eq %struct.TYPE_20__* %61, null
  br i1 %62, label %63, label %87

63:                                               ; preds = %52, %41
  %64 = call i32 @SLIST_INIT(%struct.spglist* %14)
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @trunc_4mpage(i32 %65)
  store i32 %66, i32* %15, align 4
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %68 = load i32*, i32** %6, align 8
  %69 = load i32, i32* %15, align 4
  %70 = call i32 @pmap_remove_pde(%struct.TYPE_21__* %67, i32* %68, i32 %69, %struct.spglist* %14)
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @PG_G, align 4
  %73 = and i32 %71, %72
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %63
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %77 = load i32, i32* %15, align 4
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @pmap_invalidate_pde_page(%struct.TYPE_21__* %76, i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %75, %63
  %81 = call i32 @vm_page_free_pages_toq(%struct.spglist* %14, i32 1)
  %82 = load i32, i32* @KTR_PMAP, align 4
  %83 = load i32, i32* %7, align 4
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %85 = call i32 @CTR2(i32 %82, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %83, %struct.TYPE_21__* %84)
  %86 = load i32, i32* @FALSE, align 4
  store i32 %86, i32* %4, align 4
  br label %302

87:                                               ; preds = %52
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** @kernel_pmap, align 8
  %90 = icmp ne %struct.TYPE_21__* %88, %89
  br i1 %90, label %91, label %100

91:                                               ; preds = %87
  %92 = load i32, i32* @NPTEPG, align 4
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 8
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %91, %87
  br label %101

101:                                              ; preds = %100, %36
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %103 = call i32 @VM_PAGE_TO_PHYS(%struct.TYPE_20__* %102)
  store i32 %103, i32* %12, align 4
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** @kernel_pmap, align 8
  %106 = icmp eq %struct.TYPE_21__* %104, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %101
  %108 = load i32*, i32** @KPTmap, align 8
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @trunc_4mpage(i32 %109)
  %111 = call i64 @i386_btop(i32 %110)
  %112 = getelementptr inbounds i32, i32* %108, i64 %111
  store i32* %112, i32** %10, align 8
  br label %174

113:                                              ; preds = %101
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** @curthread, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp sgt i64 %116, 0
  br i1 %117, label %118, label %148

118:                                              ; preds = %113
  %119 = call i64 @rw_wowned(i32* @pvh_global_lock)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %148

121:                                              ; preds = %118
  %122 = load i32*, i32** @PMAP1, align 8
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @PG_FRAME, align 4
  %125 = and i32 %123, %124
  %126 = load i32, i32* %12, align 4
  %127 = icmp ne i32 %125, %126
  br i1 %127, label %128, label %143

128:                                              ; preds = %121
  %129 = load i32, i32* %12, align 4
  %130 = load i32, i32* @PG_RW, align 4
  %131 = or i32 %129, %130
  %132 = load i32, i32* @PG_V, align 4
  %133 = or i32 %131, %132
  %134 = load i32, i32* @PG_A, align 4
  %135 = or i32 %133, %134
  %136 = load i32, i32* @PG_M, align 4
  %137 = or i32 %135, %136
  %138 = load i32*, i32** @PMAP1, align 8
  store i32 %137, i32* %138, align 4
  %139 = load i32*, i32** @PADDR1, align 8
  %140 = call i32 @invlcaddr(i32* %139)
  %141 = load i32, i32* @PMAP1changed, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* @PMAP1changed, align 4
  br label %146

143:                                              ; preds = %121
  %144 = load i32, i32* @PMAP1unchanged, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* @PMAP1unchanged, align 4
  br label %146

146:                                              ; preds = %143, %128
  %147 = load i32*, i32** @PADDR1, align 8
  store i32* %147, i32** %10, align 8
  br label %173

148:                                              ; preds = %118, %113
  %149 = call i32 @mtx_lock(i32* @PMAP2mutex)
  %150 = load i32*, i32** @PMAP2, align 8
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @PG_FRAME, align 4
  %153 = and i32 %151, %152
  %154 = load i32, i32* %12, align 4
  %155 = icmp ne i32 %153, %154
  br i1 %155, label %156, label %171

156:                                              ; preds = %148
  %157 = load i32, i32* %12, align 4
  %158 = load i32, i32* @PG_RW, align 4
  %159 = or i32 %157, %158
  %160 = load i32, i32* @PG_V, align 4
  %161 = or i32 %159, %160
  %162 = load i32, i32* @PG_A, align 4
  %163 = or i32 %161, %162
  %164 = load i32, i32* @PG_M, align 4
  %165 = or i32 %163, %164
  %166 = load i32*, i32** @PMAP2, align 8
  store i32 %165, i32* %166, align 4
  %167 = load %struct.TYPE_21__*, %struct.TYPE_21__** @kernel_pmap, align 8
  %168 = load i32*, i32** @PADDR2, align 8
  %169 = ptrtoint i32* %168 to i32
  %170 = call i32 @pmap_invalidate_page_int(%struct.TYPE_21__* %167, i32 %169)
  br label %171

171:                                              ; preds = %156, %148
  %172 = load i32*, i32** @PADDR2, align 8
  store i32* %172, i32** %10, align 8
  br label %173

173:                                              ; preds = %171, %146
  br label %174

174:                                              ; preds = %173, %107
  %175 = load i32, i32* %12, align 4
  %176 = load i32, i32* @PG_M, align 4
  %177 = or i32 %175, %176
  %178 = load i32, i32* @PG_A, align 4
  %179 = or i32 %177, %178
  %180 = load i32, i32* %9, align 4
  %181 = load i32, i32* @PG_U, align 4
  %182 = and i32 %180, %181
  %183 = or i32 %179, %182
  %184 = load i32, i32* @PG_RW, align 4
  %185 = or i32 %183, %184
  %186 = load i32, i32* @PG_V, align 4
  %187 = or i32 %185, %186
  store i32 %187, i32* %8, align 4
  %188 = load i32, i32* %9, align 4
  %189 = load i32, i32* @PG_A, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  %192 = zext i1 %191 to i32
  %193 = call i32 @KASSERT(i32 %192, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %194 = load i32, i32* %9, align 4
  %195 = load i32, i32* @PG_M, align 4
  %196 = load i32, i32* @PG_RW, align 4
  %197 = or i32 %195, %196
  %198 = and i32 %194, %197
  %199 = load i32, i32* @PG_RW, align 4
  %200 = icmp ne i32 %198, %199
  %201 = zext i1 %200 to i32
  %202 = call i32 @KASSERT(i32 %201, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  %203 = load i32, i32* %9, align 4
  %204 = load i32, i32* @PG_PS, align 4
  %205 = xor i32 %204, -1
  %206 = and i32 %203, %205
  store i32 %206, i32* %11, align 4
  %207 = load i32, i32* %11, align 4
  %208 = load i32, i32* @PG_PDE_PAT, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %217

211:                                              ; preds = %174
  %212 = load i32, i32* @PG_PDE_PAT, align 4
  %213 = load i32, i32* @PG_PTE_PAT, align 4
  %214 = or i32 %212, %213
  %215 = load i32, i32* %11, align 4
  %216 = xor i32 %215, %214
  store i32 %216, i32* %11, align 4
  br label %217

217:                                              ; preds = %211, %174
  %218 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %219 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = icmp eq i64 %220, 0
  br i1 %221, label %222, label %226

222:                                              ; preds = %217
  %223 = load i32*, i32** %10, align 8
  %224 = load i32, i32* %11, align 4
  %225 = call i32 @pmap_fill_ptp(i32* %223, i32 %224)
  br label %226

226:                                              ; preds = %222, %217
  %227 = load i32*, i32** %10, align 8
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* @PG_FRAME, align 4
  %230 = and i32 %228, %229
  %231 = load i32, i32* %11, align 4
  %232 = load i32, i32* @PG_FRAME, align 4
  %233 = and i32 %231, %232
  %234 = icmp eq i32 %230, %233
  %235 = zext i1 %234 to i32
  %236 = call i32 @KASSERT(i32 %235, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.5, i64 0, i64 0))
  %237 = load i32*, i32** %10, align 8
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* @PG_PTE_PROMOTE, align 4
  %240 = and i32 %238, %239
  %241 = load i32, i32* %11, align 4
  %242 = load i32, i32* @PG_PTE_PROMOTE, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %240, %243
  br i1 %244, label %245, label %249

245:                                              ; preds = %226
  %246 = load i32*, i32** %10, align 8
  %247 = load i32, i32* %11, align 4
  %248 = call i32 @pmap_fill_ptp(i32* %246, i32 %247)
  br label %249

249:                                              ; preds = %245, %226
  %250 = load i64, i64* @workaround_erratum383, align 8
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %258

252:                                              ; preds = %249
  %253 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %254 = load i32, i32* %7, align 4
  %255 = load i32*, i32** %6, align 8
  %256 = load i32, i32* %8, align 4
  %257 = call i32 @pmap_update_pde(%struct.TYPE_21__* %253, i32 %254, i32* %255, i32 %256)
  br label %271

258:                                              ; preds = %249
  %259 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %260 = load %struct.TYPE_21__*, %struct.TYPE_21__** @kernel_pmap, align 8
  %261 = icmp eq %struct.TYPE_21__* %259, %260
  br i1 %261, label %262, label %266

262:                                              ; preds = %258
  %263 = load i32, i32* %7, align 4
  %264 = load i32, i32* %8, align 4
  %265 = call i32 @pmap_kenter_pde(i32 %263, i32 %264)
  br label %270

266:                                              ; preds = %258
  %267 = load i32*, i32** %6, align 8
  %268 = load i32, i32* %8, align 4
  %269 = call i32 @pde_store(i32* %267, i32 %268)
  br label %270

270:                                              ; preds = %266, %262
  br label %271

271:                                              ; preds = %270, %252
  %272 = load i32*, i32** %10, align 8
  %273 = load i32*, i32** @PADDR2, align 8
  %274 = icmp eq i32* %272, %273
  br i1 %274, label %275, label %277

275:                                              ; preds = %271
  %276 = call i32 @mtx_unlock(i32* @PMAP2mutex)
  br label %277

277:                                              ; preds = %275, %271
  %278 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %279 = load i32, i32* %7, align 4
  %280 = call i64 @vtopte(i32 %279)
  %281 = trunc i64 %280 to i32
  %282 = call i32 @pmap_invalidate_page_int(%struct.TYPE_21__* %278, i32 %281)
  %283 = load i32, i32* %9, align 4
  %284 = load i32, i32* @PG_MANAGED, align 4
  %285 = and i32 %283, %284
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %294

287:                                              ; preds = %277
  %288 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %289 = load i32, i32* %7, align 4
  %290 = load i32, i32* %9, align 4
  %291 = load i32, i32* @PG_PS_FRAME, align 4
  %292 = and i32 %290, %291
  %293 = call i32 @pmap_pv_demote_pde(%struct.TYPE_21__* %288, i32 %289, i32 %292)
  br label %294

294:                                              ; preds = %287, %277
  %295 = load i32, i32* @pmap_pde_demotions, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* @pmap_pde_demotions, align 4
  %297 = load i32, i32* @KTR_PMAP, align 4
  %298 = load i32, i32* %7, align 4
  %299 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %300 = call i32 @CTR2(i32 %297, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i32 %298, %struct.TYPE_21__* %299)
  %301 = load i32, i32* @TRUE, align 4
  store i32 %301, i32* %4, align 4
  br label %302

302:                                              ; preds = %294, %80
  %303 = load i32, i32* %4, align 4
  ret i32 %303
}

declare dso_local i32 @PMAP_LOCK_ASSERT(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.TYPE_20__* @pmap_remove_pt_page(%struct.TYPE_21__*, i32) #1

declare dso_local %struct.TYPE_20__* @vm_page_alloc(i32*, i32, i32) #1

declare dso_local i32 @SLIST_INIT(%struct.spglist*) #1

declare dso_local i32 @trunc_4mpage(i32) #1

declare dso_local i32 @pmap_remove_pde(%struct.TYPE_21__*, i32*, i32, %struct.spglist*) #1

declare dso_local i32 @pmap_invalidate_pde_page(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @vm_page_free_pages_toq(%struct.spglist*, i32) #1

declare dso_local i32 @CTR2(i32, i8*, i32, %struct.TYPE_21__*) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(%struct.TYPE_20__*) #1

declare dso_local i64 @i386_btop(i32) #1

declare dso_local i64 @rw_wowned(i32*) #1

declare dso_local i32 @invlcaddr(i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @pmap_invalidate_page_int(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @pmap_fill_ptp(i32*, i32) #1

declare dso_local i32 @pmap_update_pde(%struct.TYPE_21__*, i32, i32*, i32) #1

declare dso_local i32 @pmap_kenter_pde(i32, i32) #1

declare dso_local i32 @pde_store(i32*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i64 @vtopte(i32) #1

declare dso_local i32 @pmap_pv_demote_pde(%struct.TYPE_21__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
