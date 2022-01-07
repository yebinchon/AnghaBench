; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea64.c_moea64_enter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea64.c_moea64_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { %struct.pvo_head }
%struct.pvo_head = type { i32 }
%struct.pvo_entry = type { i64, %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32, i32 }

@VPO_UNMANAGED = common dso_local global i32 0, align 4
@PMAP_ENTER_QUICK_LOCKED = common dso_local global i32 0, align 4
@KERN_RESOURCE_SHORTAGE = common dso_local global i32 0, align 4
@PMAP_ENTER_WIRED = common dso_local global i32 0, align 4
@PVO_WIRED = common dso_local global i32 0, align 4
@moea64_initialized = common dso_local global i32 0, align 4
@PVO_MANAGED = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@pmap_bootstrapped = common dso_local global i64 0, align 8
@PGA_WRITEABLE = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@moea64_pte_overflow = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"pmap of old mapping does not match new mapping\00", align 1
@kernel_pmap = common dso_local global i64 0, align 8
@PGA_EXECUTABLE = common dso_local global i32 0, align 4
@LPTE_I = common dso_local global i32 0, align 4
@LPTE_G = common dso_local global i32 0, align 4
@LPTE_NOEXEC = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @moea64_enter(i32 %0, i64 %1, i32 %2, %struct.TYPE_13__* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.pvo_entry*, align 8
  %17 = alloca %struct.pvo_entry*, align 8
  %18 = alloca %struct.pvo_head*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i64 %1, i64* %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @VPO_UNMANAGED, align 4
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %7
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* @PMAP_ENTER_QUICK_LOCKED, align 4
  %30 = and i32 %28, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %34 = call i32 @VM_PAGE_OBJECT_BUSY_ASSERT(%struct.TYPE_13__* %33)
  br label %40

35:                                               ; preds = %27
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @VM_OBJECT_ASSERT_LOCKED(i32 %38)
  br label %40

40:                                               ; preds = %35, %32
  br label %41

41:                                               ; preds = %40, %7
  %42 = call %struct.pvo_entry* @alloc_pvo_entry(i32 0)
  store %struct.pvo_entry* %42, %struct.pvo_entry** %16, align 8
  %43 = load %struct.pvo_entry*, %struct.pvo_entry** %16, align 8
  %44 = icmp eq %struct.pvo_entry* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* @KERN_RESOURCE_SHORTAGE, align 4
  store i32 %46, i32* %8, align 4
  br label %247

47:                                               ; preds = %41
  %48 = load %struct.pvo_entry*, %struct.pvo_entry** %16, align 8
  %49 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  %50 = load i32, i32* %13, align 4
  %51 = load %struct.pvo_entry*, %struct.pvo_entry** %16, align 8
  %52 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 8
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %55 = call i32 @VM_PAGE_TO_PHYS(%struct.TYPE_13__* %54)
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %57 = call i32 @pmap_page_get_memattr(%struct.TYPE_13__* %56)
  %58 = call i32 @moea64_calc_wimg(i32 %55, i32 %57)
  store i32 %58, i32* %19, align 4
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %60 = call i32 @VM_PAGE_TO_PHYS(%struct.TYPE_13__* %59)
  %61 = load i32, i32* %19, align 4
  %62 = or i32 %60, %61
  %63 = load %struct.pvo_entry*, %struct.pvo_entry** %16, align 8
  %64 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 1
  store i32 %62, i32* %65, align 4
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* @PMAP_ENTER_WIRED, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %47
  %71 = load i32, i32* @PVO_WIRED, align 4
  %72 = load %struct.pvo_entry*, %struct.pvo_entry** %16, align 8
  %73 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %70, %47
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @VPO_UNMANAGED, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %76
  %84 = load i32, i32* @moea64_initialized, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %83, %76
  store %struct.pvo_head* null, %struct.pvo_head** %18, align 8
  br label %96

87:                                               ; preds = %83
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  store %struct.pvo_head* %90, %struct.pvo_head** %18, align 8
  %91 = load i32, i32* @PVO_MANAGED, align 4
  %92 = load %struct.pvo_entry*, %struct.pvo_entry** %16, align 8
  %93 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 8
  br label %96

96:                                               ; preds = %87, %86
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %98 = call i32 @PV_PAGE_LOCK(%struct.TYPE_13__* %97)
  %99 = load i64, i64* %10, align 8
  %100 = call i32 @PMAP_LOCK(i64 %99)
  %101 = load %struct.pvo_entry*, %struct.pvo_entry** %16, align 8
  %102 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = inttoptr i64 %103 to i8*
  %105 = icmp eq i8* %104, null
  br i1 %105, label %106, label %111

106:                                              ; preds = %96
  %107 = load %struct.pvo_entry*, %struct.pvo_entry** %16, align 8
  %108 = load i64, i64* %10, align 8
  %109 = load i32, i32* %11, align 4
  %110 = call i32 @init_pvo_entry(%struct.pvo_entry* %107, i64 %108, i32 %109)
  br label %111

111:                                              ; preds = %106, %96
  %112 = load i32, i32* %13, align 4
  %113 = load i32, i32* @VM_PROT_WRITE, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %131

116:                                              ; preds = %111
  %117 = load i64, i64* @pmap_bootstrapped, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %130

119:                                              ; preds = %116
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @VPO_UNMANAGED, align 4
  %124 = and i32 %122, %123
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %119
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %128 = load i32, i32* @PGA_WRITEABLE, align 4
  %129 = call i32 @vm_page_aflag_set(%struct.TYPE_13__* %127, i32 %128)
  br label %130

130:                                              ; preds = %126, %119, %116
  br label %131

131:                                              ; preds = %130, %111
  %132 = load i32, i32* %9, align 4
  %133 = load %struct.pvo_entry*, %struct.pvo_entry** %16, align 8
  %134 = load %struct.pvo_head*, %struct.pvo_head** %18, align 8
  %135 = call i32 @moea64_pvo_enter(i32 %132, %struct.pvo_entry* %133, %struct.pvo_head* %134, %struct.pvo_entry** %17)
  store i32 %135, i32* %20, align 4
  %136 = load i32, i32* %20, align 4
  %137 = load i32, i32* @EEXIST, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %199

139:                                              ; preds = %131
  %140 = load %struct.pvo_entry*, %struct.pvo_entry** %17, align 8
  %141 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.pvo_entry*, %struct.pvo_entry** %16, align 8
  %144 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = icmp eq i32 %142, %145
  br i1 %146, label %147, label %183

147:                                              ; preds = %139
  %148 = load %struct.pvo_entry*, %struct.pvo_entry** %17, align 8
  %149 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.pvo_entry*, %struct.pvo_entry** %16, align 8
  %153 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = icmp eq i32 %151, %155
  br i1 %156, label %157, label %183

157:                                              ; preds = %147
  %158 = load %struct.pvo_entry*, %struct.pvo_entry** %17, align 8
  %159 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* %13, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %183

164:                                              ; preds = %157
  store i32 0, i32* %20, align 4
  %165 = load i32, i32* %9, align 4
  %166 = load %struct.pvo_entry*, %struct.pvo_entry** %17, align 8
  %167 = call i64 @MOEA64_PTE_SYNCH(i32 %165, %struct.pvo_entry* %166)
  %168 = icmp slt i64 %167, 0
  br i1 %168, label %169, label %176

169:                                              ; preds = %164
  %170 = load i32, i32* @moea64_pte_overflow, align 4
  %171 = add nsw i32 %170, -1
  store i32 %171, i32* @moea64_pte_overflow, align 4
  %172 = call i32 @STAT_MOEA64(i32 %170)
  %173 = load i32, i32* %9, align 4
  %174 = load %struct.pvo_entry*, %struct.pvo_entry** %17, align 8
  %175 = call i32 @MOEA64_PTE_INSERT(i32 %173, %struct.pvo_entry* %174)
  br label %176

176:                                              ; preds = %169, %164
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %178 = call i32 @PV_PAGE_UNLOCK(%struct.TYPE_13__* %177)
  %179 = load i64, i64* %10, align 8
  %180 = call i32 @PMAP_UNLOCK(i64 %179)
  %181 = load %struct.pvo_entry*, %struct.pvo_entry** %16, align 8
  %182 = call i32 @free_pvo_entry(%struct.pvo_entry* %181)
  br label %214

183:                                              ; preds = %157, %147, %139
  %184 = load %struct.pvo_entry*, %struct.pvo_entry** %17, align 8
  %185 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* %10, align 8
  %188 = icmp eq i64 %186, %187
  %189 = zext i1 %188 to i32
  %190 = call i32 @KASSERT(i32 %189, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %191 = load i32, i32* %9, align 4
  %192 = load %struct.pvo_entry*, %struct.pvo_entry** %17, align 8
  %193 = call i32 @moea64_pvo_remove_from_pmap(i32 %191, %struct.pvo_entry* %192)
  %194 = load i32, i32* %9, align 4
  %195 = load %struct.pvo_entry*, %struct.pvo_entry** %16, align 8
  %196 = load %struct.pvo_head*, %struct.pvo_head** %18, align 8
  %197 = call i32 @moea64_pvo_enter(i32 %194, %struct.pvo_entry* %195, %struct.pvo_head* %196, %struct.pvo_entry** null)
  br label %198

198:                                              ; preds = %183
  br label %199

199:                                              ; preds = %198, %131
  %200 = load i64, i64* %10, align 8
  %201 = call i32 @PMAP_UNLOCK(i64 %200)
  %202 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %203 = call i32 @PV_PAGE_UNLOCK(%struct.TYPE_13__* %202)
  %204 = load i32, i32* %20, align 4
  %205 = load i32, i32* @EEXIST, align 4
  %206 = icmp eq i32 %204, %205
  br i1 %206, label %207, label %213

207:                                              ; preds = %199
  %208 = load i32, i32* %9, align 4
  %209 = load %struct.pvo_entry*, %struct.pvo_entry** %17, align 8
  %210 = call i32 @moea64_pvo_remove_from_page(i32 %208, %struct.pvo_entry* %209)
  %211 = load %struct.pvo_entry*, %struct.pvo_entry** %17, align 8
  %212 = call i32 @free_pvo_entry(%struct.pvo_entry* %211)
  br label %213

213:                                              ; preds = %207, %199
  br label %214

214:                                              ; preds = %213, %176
  %215 = load i64, i64* %10, align 8
  %216 = load i64, i64* @kernel_pmap, align 8
  %217 = icmp ne i64 %215, %216
  br i1 %217, label %218, label %245

218:                                              ; preds = %214
  %219 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* @PGA_EXECUTABLE, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %245, label %225

225:                                              ; preds = %218
  %226 = load i32, i32* %19, align 4
  %227 = load i32, i32* @LPTE_I, align 4
  %228 = load i32, i32* @LPTE_G, align 4
  %229 = or i32 %227, %228
  %230 = load i32, i32* @LPTE_NOEXEC, align 4
  %231 = or i32 %229, %230
  %232 = and i32 %226, %231
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %245

234:                                              ; preds = %225
  %235 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %236 = load i32, i32* @PGA_EXECUTABLE, align 4
  %237 = call i32 @vm_page_aflag_set(%struct.TYPE_13__* %235, i32 %236)
  %238 = load i32, i32* %9, align 4
  %239 = load i64, i64* %10, align 8
  %240 = load i32, i32* %11, align 4
  %241 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %242 = call i32 @VM_PAGE_TO_PHYS(%struct.TYPE_13__* %241)
  %243 = load i32, i32* @PAGE_SIZE, align 4
  %244 = call i32 @moea64_syncicache(i32 %238, i64 %239, i32 %240, i32 %242, i32 %243)
  br label %245

245:                                              ; preds = %234, %225, %218, %214
  %246 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %246, i32* %8, align 4
  br label %247

247:                                              ; preds = %245, %45
  %248 = load i32, i32* %8, align 4
  ret i32 %248
}

declare dso_local i32 @VM_PAGE_OBJECT_BUSY_ASSERT(%struct.TYPE_13__*) #1

declare dso_local i32 @VM_OBJECT_ASSERT_LOCKED(i32) #1

declare dso_local %struct.pvo_entry* @alloc_pvo_entry(i32) #1

declare dso_local i32 @moea64_calc_wimg(i32, i32) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(%struct.TYPE_13__*) #1

declare dso_local i32 @pmap_page_get_memattr(%struct.TYPE_13__*) #1

declare dso_local i32 @PV_PAGE_LOCK(%struct.TYPE_13__*) #1

declare dso_local i32 @PMAP_LOCK(i64) #1

declare dso_local i32 @init_pvo_entry(%struct.pvo_entry*, i64, i32) #1

declare dso_local i32 @vm_page_aflag_set(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @moea64_pvo_enter(i32, %struct.pvo_entry*, %struct.pvo_head*, %struct.pvo_entry**) #1

declare dso_local i64 @MOEA64_PTE_SYNCH(i32, %struct.pvo_entry*) #1

declare dso_local i32 @STAT_MOEA64(i32) #1

declare dso_local i32 @MOEA64_PTE_INSERT(i32, %struct.pvo_entry*) #1

declare dso_local i32 @PV_PAGE_UNLOCK(%struct.TYPE_13__*) #1

declare dso_local i32 @PMAP_UNLOCK(i64) #1

declare dso_local i32 @free_pvo_entry(%struct.pvo_entry*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @moea64_pvo_remove_from_pmap(i32, %struct.pvo_entry*) #1

declare dso_local i32 @moea64_pvo_remove_from_page(i32, %struct.pvo_entry*) #1

declare dso_local i32 @moea64_syncicache(i32, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
