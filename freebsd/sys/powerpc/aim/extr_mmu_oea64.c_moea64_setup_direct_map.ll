; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea64.c_moea64_setup_direct_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea64.c_moea64_setup_direct_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.pvo_entry = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@moea64_large_page_size = common dso_local global i64 0, align 8
@hw_direct_map = common dso_local global i64 0, align 8
@kernel_pmap = common dso_local global i32 0, align 4
@pregions_sz = common dso_local global i32 0, align 4
@pregions = common dso_local global %struct.TYPE_4__* null, align 8
@LPTE_M = common dso_local global i32 0, align 4
@PVO_WIRED = common dso_local global i32 0, align 4
@PVO_LARGE = common dso_local global i32 0, align 4
@moea64_large_page_mask = common dso_local global i32 0, align 4
@LPTE_G = common dso_local global i32 0, align 4
@VM_PROT_READ = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@VM_PROT_EXECUTE = common dso_local global i32 0, align 4
@DMAP_BASE_ADDRESS = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@moea64_bpvo_pool_size = common dso_local global i32 0, align 4
@moea64_bpvo_pool = common dso_local global i64 0, align 8
@EXC_RSVD = common dso_local global i32 0, align 4
@EXC_LAST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"vfs.unmapped_buf_allowed\00", align 1
@unmapped_buf_allowed = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @moea64_setup_direct_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @moea64_setup_direct_map(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pvo_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %16 = load i64, i64* @moea64_large_page_size, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i64 0, i64* @hw_direct_map, align 8
  br label %19

19:                                               ; preds = %18, %3
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @DISABLE_TRANS(i32 %20)
  %22 = load i64, i64* @hw_direct_map, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %135

24:                                               ; preds = %19
  %25 = load i32, i32* @kernel_pmap, align 4
  %26 = call i32 @PMAP_LOCK(i32 %25)
  store i32 0, i32* %15, align 4
  br label %27

27:                                               ; preds = %129, %24
  %28 = load i32, i32* %15, align 4
  %29 = load i32, i32* @pregions_sz, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %132

31:                                               ; preds = %27
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pregions, align 8
  %33 = load i32, i32* %15, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %122, %31
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pregions, align 8
  %41 = load i32, i32* %15, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pregions, align 8
  %47 = load i32, i32* %15, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %45, %51
  %53 = icmp slt i32 %39, %52
  br i1 %53, label %54, label %128

54:                                               ; preds = %38
  %55 = load i32, i32* @LPTE_M, align 4
  store i32 %55, i32* %14, align 4
  %56 = call %struct.pvo_entry* @alloc_pvo_entry(i32 1)
  store %struct.pvo_entry* %56, %struct.pvo_entry** %7, align 8
  %57 = load i32, i32* @PVO_WIRED, align 4
  %58 = load i32, i32* @PVO_LARGE, align 4
  %59 = or i32 %57, %58
  %60 = load %struct.pvo_entry*, %struct.pvo_entry** %7, align 8
  %61 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  %64 = load %struct.pvo_entry*, %struct.pvo_entry** %7, align 8
  %65 = load i32, i32* @kernel_pmap, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @PHYS_TO_DMAP(i32 %66)
  %68 = call i32 @init_pvo_entry(%struct.pvo_entry* %64, i32 %65, i32 %67)
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @moea64_large_page_mask, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %54
  %74 = load i32, i32* @moea64_large_page_mask, align 4
  %75 = load i32, i32* %9, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* @LPTE_G, align 4
  %78 = load i32, i32* %14, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %14, align 4
  br label %80

80:                                               ; preds = %73, %54
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = load i64, i64* @moea64_large_page_size, align 8
  %84 = add nsw i64 %82, %83
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pregions, align 8
  %86 = load i32, i32* %15, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pregions, align 8
  %92 = load i32, i32* %15, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %90, %96
  %98 = sext i32 %97 to i64
  %99 = icmp sgt i64 %84, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %80
  %101 = load i32, i32* @LPTE_G, align 4
  %102 = load i32, i32* %14, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %14, align 4
  br label %104

104:                                              ; preds = %100, %80
  %105 = load i32, i32* @VM_PROT_READ, align 4
  %106 = load i32, i32* @VM_PROT_WRITE, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @VM_PROT_EXECUTE, align 4
  %109 = or i32 %107, %108
  %110 = load %struct.pvo_entry*, %struct.pvo_entry** %7, align 8
  %111 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  store i32 %109, i32* %112, align 4
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* %14, align 4
  %115 = or i32 %113, %114
  %116 = load %struct.pvo_entry*, %struct.pvo_entry** %7, align 8
  %117 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 1
  store i32 %115, i32* %118, align 4
  %119 = load i32, i32* %4, align 4
  %120 = load %struct.pvo_entry*, %struct.pvo_entry** %7, align 8
  %121 = call i32 @moea64_pvo_enter(i32 %119, %struct.pvo_entry* %120, i32* null, i32* null)
  br label %122

122:                                              ; preds = %104
  %123 = load i64, i64* @moea64_large_page_size, align 8
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = add nsw i64 %125, %123
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %9, align 4
  br label %38

128:                                              ; preds = %38
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %15, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %15, align 4
  br label %27

132:                                              ; preds = %27
  %133 = load i32, i32* @kernel_pmap, align 4
  %134 = call i32 @PMAP_UNLOCK(i32 %133)
  br label %135

135:                                              ; preds = %132, %19
  %136 = load i32, i32* %5, align 4
  %137 = load i32, i32* @DMAP_BASE_ADDRESS, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %160

139:                                              ; preds = %135
  %140 = load i32, i32* %5, align 4
  %141 = load i32, i32* @PAGE_MASK, align 4
  %142 = xor i32 %141, -1
  %143 = and i32 %140, %142
  store i32 %143, i32* %9, align 4
  br label %144

144:                                              ; preds = %153, %139
  %145 = load i32, i32* %9, align 4
  %146 = load i32, i32* %6, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %159

148:                                              ; preds = %144
  %149 = load i32, i32* %4, align 4
  %150 = load i32, i32* %9, align 4
  %151 = load i32, i32* %9, align 4
  %152 = call i32 @moea64_kenter(i32 %149, i32 %150, i32 %151)
  br label %153

153:                                              ; preds = %148
  %154 = load i64, i64* @PAGE_SIZE, align 8
  %155 = load i32, i32* %9, align 4
  %156 = sext i32 %155 to i64
  %157 = add nsw i64 %156, %154
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %9, align 4
  br label %144

159:                                              ; preds = %144
  br label %195

160:                                              ; preds = %135
  %161 = load i64, i64* @hw_direct_map, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %194, label %163

163:                                              ; preds = %160
  %164 = load i32, i32* %5, align 4
  %165 = load i32, i32* @DMAP_BASE_ADDRESS, align 4
  %166 = xor i32 %165, -1
  %167 = and i32 %164, %166
  store i32 %167, i32* %10, align 4
  %168 = load i32, i32* %6, align 4
  %169 = load i32, i32* @DMAP_BASE_ADDRESS, align 4
  %170 = xor i32 %169, -1
  %171 = and i32 %168, %170
  store i32 %171, i32* %11, align 4
  %172 = load i32, i32* %10, align 4
  %173 = load i32, i32* @PAGE_MASK, align 4
  %174 = xor i32 %173, -1
  %175 = and i32 %172, %174
  store i32 %175, i32* %9, align 4
  br label %176

176:                                              ; preds = %187, %163
  %177 = load i32, i32* %9, align 4
  %178 = load i32, i32* %11, align 4
  %179 = icmp slt i32 %177, %178
  br i1 %179, label %180, label %193

180:                                              ; preds = %176
  %181 = load i32, i32* %4, align 4
  %182 = load i32, i32* %9, align 4
  %183 = load i32, i32* @DMAP_BASE_ADDRESS, align 4
  %184 = or i32 %182, %183
  %185 = load i32, i32* %9, align 4
  %186 = call i32 @moea64_kenter(i32 %181, i32 %184, i32 %185)
  br label %187

187:                                              ; preds = %180
  %188 = load i64, i64* @PAGE_SIZE, align 8
  %189 = load i32, i32* %9, align 4
  %190 = sext i32 %189 to i64
  %191 = add nsw i64 %190, %188
  %192 = trunc i64 %191 to i32
  store i32 %192, i32* %9, align 4
  br label %176

193:                                              ; preds = %176
  br label %194

194:                                              ; preds = %193, %160
  br label %195

195:                                              ; preds = %194, %159
  %196 = load i64, i64* @hw_direct_map, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %243, label %198

198:                                              ; preds = %195
  %199 = load i32, i32* @moea64_bpvo_pool_size, align 4
  %200 = sext i32 %199 to i64
  %201 = mul i64 %200, 12
  %202 = trunc i64 %201 to i32
  store i32 %202, i32* %12, align 4
  %203 = load i64, i64* @moea64_bpvo_pool, align 8
  %204 = trunc i64 %203 to i32
  store i32 %204, i32* %13, align 4
  %205 = load i32, i32* %13, align 4
  store i32 %205, i32* %9, align 4
  br label %206

206:                                              ; preds = %217, %198
  %207 = load i32, i32* %9, align 4
  %208 = load i32, i32* %13, align 4
  %209 = load i32, i32* %12, align 4
  %210 = add nsw i32 %208, %209
  %211 = icmp slt i32 %207, %210
  br i1 %211, label %212, label %223

212:                                              ; preds = %206
  %213 = load i32, i32* %4, align 4
  %214 = load i32, i32* %9, align 4
  %215 = load i32, i32* %9, align 4
  %216 = call i32 @moea64_kenter(i32 %213, i32 %214, i32 %215)
  br label %217

217:                                              ; preds = %212
  %218 = load i64, i64* @PAGE_SIZE, align 8
  %219 = load i32, i32* %9, align 4
  %220 = sext i32 %219 to i64
  %221 = add nsw i64 %220, %218
  %222 = trunc i64 %221 to i32
  store i32 %222, i32* %9, align 4
  br label %206

223:                                              ; preds = %206
  %224 = load i32, i32* @EXC_RSVD, align 4
  store i32 %224, i32* %9, align 4
  br label %225

225:                                              ; preds = %236, %223
  %226 = load i32, i32* %9, align 4
  %227 = load i32, i32* @EXC_LAST, align 4
  %228 = icmp slt i32 %226, %227
  br i1 %228, label %229, label %242

229:                                              ; preds = %225
  %230 = load i32, i32* %4, align 4
  %231 = load i32, i32* %9, align 4
  %232 = load i32, i32* @DMAP_BASE_ADDRESS, align 4
  %233 = or i32 %231, %232
  %234 = load i32, i32* %9, align 4
  %235 = call i32 @moea64_kenter(i32 %230, i32 %233, i32 %234)
  br label %236

236:                                              ; preds = %229
  %237 = load i64, i64* @PAGE_SIZE, align 8
  %238 = load i32, i32* %9, align 4
  %239 = sext i32 %238 to i64
  %240 = add nsw i64 %239, %237
  %241 = trunc i64 %240 to i32
  store i32 %241, i32* %9, align 4
  br label %225

242:                                              ; preds = %225
  br label %243

243:                                              ; preds = %242, %195
  %244 = load i32, i32* %8, align 4
  %245 = call i32 @ENABLE_TRANS(i32 %244)
  %246 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64* @unmapped_buf_allowed)
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %250, label %248

248:                                              ; preds = %243
  %249 = load i64, i64* @hw_direct_map, align 8
  store i64 %249, i64* @unmapped_buf_allowed, align 8
  br label %250

250:                                              ; preds = %248, %243
  ret void
}

declare dso_local i32 @DISABLE_TRANS(i32) #1

declare dso_local i32 @PMAP_LOCK(i32) #1

declare dso_local %struct.pvo_entry* @alloc_pvo_entry(i32) #1

declare dso_local i32 @init_pvo_entry(%struct.pvo_entry*, i32, i32) #1

declare dso_local i32 @PHYS_TO_DMAP(i32) #1

declare dso_local i32 @moea64_pvo_enter(i32, %struct.pvo_entry*, i32*, i32*) #1

declare dso_local i32 @PMAP_UNLOCK(i32) #1

declare dso_local i32 @moea64_kenter(i32, i32, i32) #1

declare dso_local i32 @ENABLE_TRANS(i32) #1

declare dso_local i32 @TUNABLE_INT_FETCH(i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
