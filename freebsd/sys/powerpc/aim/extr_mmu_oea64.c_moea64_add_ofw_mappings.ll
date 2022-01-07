; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea64.c_moea64_add_ofw_mappings.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea64.c_moea64_add_ofw_mappings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvo_entry = type { i32 }
%struct.ofw_map = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"#address-cells\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"translations\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"moea64_bootstrap: can't get ofw translations\00", align 1
@KTR_PMAP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"moea64_add_ofw_mappings: translations\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"Translations map has incorrect cell count (%d/%zd)\00", align 1
@om_cmp = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [40 x i8] c"OFW translations above 32-bit boundary!\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [41 x i8] c"OFW translation not page-aligned (phys)!\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"OFW translation not page-aligned (virt)!\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"translation: pa=%#zx va=%#x len=%#x\00", align 1
@hw_direct_map = common dso_local global i64 0, align 8
@VM_MEMATTR_DEFAULT = common dso_local global i32 0, align 4
@LPTE_M = common dso_local global i64 0, align 8
@kernel_pmap = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i64)* @moea64_add_ofw_mappings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @moea64_add_ofw_mappings(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.pvo_entry*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  %18 = udiv i64 %17, 16
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %7, align 8
  %20 = alloca %struct.ofw_map, i64 %18, align 16
  store i64 %18, i64* %8, align 8
  %21 = load i64, i64* %6, align 8
  %22 = udiv i64 %21, 4
  %23 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %10, align 8
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @bzero(%struct.ofw_map* %20, i64 %24)
  %26 = call i32 @OF_finddevice(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %27 = call i32 @OF_getencprop(i32 %26, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32* %9, i64 4)
  %28 = load i32, i32* %5, align 4
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @OF_getencprop(i32 %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32* %23, i64 %29)
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %34

32:                                               ; preds = %3
  %33 = call i32 @panic(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %3
  %35 = load i32, i32* @KTR_PMAP, align 4
  %36 = call i32 @CTR0(i32 %35, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %37 = load i64, i64* %6, align 8
  %38 = udiv i64 %37, 4
  store i64 %38, i64* %6, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %39

39:                                               ; preds = %102, %34
  %40 = load i32, i32* %15, align 4
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* %6, align 8
  %43 = icmp ult i64 %41, %42
  br i1 %43, label %44, label %105

44:                                               ; preds = %39
  %45 = load i32, i32* %15, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %15, align 4
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i32, i32* %23, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %16, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.ofw_map, %struct.ofw_map* %20, i64 %51
  %53 = getelementptr inbounds %struct.ofw_map, %struct.ofw_map* %52, i32 0, i32 0
  store i32 %49, i32* %53, align 16
  %54 = load i32, i32* %15, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %15, align 4
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i32, i32* %23, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %16, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.ofw_map, %struct.ofw_map* %20, i64 %60
  %62 = getelementptr inbounds %struct.ofw_map, %struct.ofw_map* %61, i32 0, i32 1
  store i32 %58, i32* %62, align 4
  %63 = load i32, i32* %15, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %15, align 4
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds i32, i32* %23, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %16, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.ofw_map, %struct.ofw_map* %20, i64 %69
  %71 = getelementptr inbounds %struct.ofw_map, %struct.ofw_map* %70, i32 0, i32 2
  store i32 %67, i32* %71, align 8
  %72 = load i32, i32* %9, align 4
  %73 = icmp eq i32 %72, 2
  br i1 %73, label %74, label %92

74:                                               ; preds = %44
  %75 = load i32, i32* %16, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.ofw_map, %struct.ofw_map* %20, i64 %76
  %78 = getelementptr inbounds %struct.ofw_map, %struct.ofw_map* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = shl i32 %79, 32
  store i32 %80, i32* %78, align 8
  %81 = load i32, i32* %15, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %15, align 4
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i32, i32* %23, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %16, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.ofw_map, %struct.ofw_map* %20, i64 %87
  %89 = getelementptr inbounds %struct.ofw_map, %struct.ofw_map* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = or i32 %90, %85
  store i32 %91, i32* %89, align 8
  br label %92

92:                                               ; preds = %74, %44
  %93 = load i32, i32* %15, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %15, align 4
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i32, i32* %23, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %16, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.ofw_map, %struct.ofw_map* %20, i64 %99
  %101 = getelementptr inbounds %struct.ofw_map, %struct.ofw_map* %100, i32 0, i32 3
  store i32 %97, i32* %101, align 4
  br label %102

102:                                              ; preds = %92
  %103 = load i32, i32* %16, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %16, align 4
  br label %39

105:                                              ; preds = %39
  %106 = load i32, i32* %15, align 4
  %107 = sext i32 %106 to i64
  %108 = load i64, i64* %6, align 8
  %109 = icmp eq i64 %107, %108
  %110 = zext i1 %109 to i32
  %111 = load i32, i32* %15, align 4
  %112 = load i64, i64* %6, align 8
  %113 = inttoptr i64 %112 to i8*
  %114 = call i32 @KASSERT(i32 %110, i8* %113)
  %115 = load i32, i32* %16, align 4
  %116 = sext i32 %115 to i64
  store i64 %116, i64* %6, align 8
  %117 = load i64, i64* %6, align 8
  %118 = load i32, i32* @om_cmp, align 4
  %119 = call i32 @qsort(%struct.ofw_map* %20, i64 %117, i32 16, i32 %118)
  store i32 0, i32* %15, align 4
  br label %120

120:                                              ; preds = %246, %105
  %121 = load i32, i32* %15, align 4
  %122 = sext i32 %121 to i64
  %123 = load i64, i64* %6, align 8
  %124 = icmp ult i64 %122, %123
  br i1 %124, label %125, label %249

125:                                              ; preds = %120
  %126 = load i32, i32* %15, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.ofw_map, %struct.ofw_map* %20, i64 %127
  %129 = getelementptr inbounds %struct.ofw_map, %struct.ofw_map* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  store i32 %130, i32* %14, align 4
  %131 = load i32, i32* %15, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.ofw_map, %struct.ofw_map* %20, i64 %132
  %134 = getelementptr inbounds %struct.ofw_map, %struct.ofw_map* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = ashr i32 %135, 32
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %125
  %139 = call i32 @panic(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  br label %140

140:                                              ; preds = %138, %125
  %141 = load i32, i32* %14, align 4
  %142 = load i32, i32* @PAGE_SIZE, align 4
  %143 = srem i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %140
  %146 = call i32 @panic(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  br label %147

147:                                              ; preds = %145, %140
  %148 = load i32, i32* %15, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.ofw_map, %struct.ofw_map* %20, i64 %149
  %151 = getelementptr inbounds %struct.ofw_map, %struct.ofw_map* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 16
  %153 = load i32, i32* @PAGE_SIZE, align 4
  %154 = srem i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %147
  %157 = call i32 @panic(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0))
  br label %158

158:                                              ; preds = %156, %147
  %159 = load i32, i32* @KTR_PMAP, align 4
  %160 = load i32, i32* %14, align 4
  %161 = load i32, i32* %15, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.ofw_map, %struct.ofw_map* %20, i64 %162
  %164 = getelementptr inbounds %struct.ofw_map, %struct.ofw_map* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 16
  %166 = load i32, i32* %15, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.ofw_map, %struct.ofw_map* %20, i64 %167
  %169 = getelementptr inbounds %struct.ofw_map, %struct.ofw_map* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @CTR3(i32 %159, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), i32 %160, i32 %165, i32 %170)
  %172 = load i32, i32* %12, align 4
  %173 = call i32 @DISABLE_TRANS(i32 %172)
  store i64 0, i64* %13, align 8
  br label %174

174:                                              ; preds = %238, %158
  %175 = load i64, i64* %13, align 8
  %176 = load i32, i32* %15, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.ofw_map, %struct.ofw_map* %20, i64 %177
  %179 = getelementptr inbounds %struct.ofw_map, %struct.ofw_map* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = sext i32 %180 to i64
  %182 = icmp slt i64 %175, %181
  br i1 %182, label %183, label %243

183:                                              ; preds = %174
  %184 = load i64, i64* @hw_direct_map, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %205

186:                                              ; preds = %183
  %187 = load i32, i32* %15, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.ofw_map, %struct.ofw_map* %20, i64 %188
  %190 = getelementptr inbounds %struct.ofw_map, %struct.ofw_map* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 16
  %192 = load i32, i32* %14, align 4
  %193 = call i32 @PHYS_TO_DMAP(i32 %192)
  %194 = icmp eq i32 %191, %193
  br i1 %194, label %195, label %205

195:                                              ; preds = %186
  %196 = load i32, i32* %14, align 4
  %197 = sext i32 %196 to i64
  %198 = load i64, i64* %13, align 8
  %199 = add nsw i64 %197, %198
  %200 = load i32, i32* @VM_MEMATTR_DEFAULT, align 4
  %201 = call i64 @moea64_calc_wimg(i64 %199, i32 %200)
  %202 = load i64, i64* @LPTE_M, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %204, label %205

204:                                              ; preds = %195
  br label %238

205:                                              ; preds = %195, %186, %183
  %206 = load i32, i32* @kernel_pmap, align 4
  %207 = call i32 @PMAP_LOCK(i32 %206)
  %208 = load i32, i32* @kernel_pmap, align 4
  %209 = load i32, i32* %15, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.ofw_map, %struct.ofw_map* %20, i64 %210
  %212 = getelementptr inbounds %struct.ofw_map, %struct.ofw_map* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 16
  %214 = sext i32 %213 to i64
  %215 = load i64, i64* %13, align 8
  %216 = add nsw i64 %214, %215
  %217 = call %struct.pvo_entry* @moea64_pvo_find_va(i32 %208, i64 %216)
  store %struct.pvo_entry* %217, %struct.pvo_entry** %11, align 8
  %218 = load i32, i32* @kernel_pmap, align 4
  %219 = call i32 @PMAP_UNLOCK(i32 %218)
  %220 = load %struct.pvo_entry*, %struct.pvo_entry** %11, align 8
  %221 = icmp ne %struct.pvo_entry* %220, null
  br i1 %221, label %222, label %223

222:                                              ; preds = %205
  br label %238

223:                                              ; preds = %205
  %224 = load i32, i32* %4, align 4
  %225 = load i32, i32* %15, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.ofw_map, %struct.ofw_map* %20, i64 %226
  %228 = getelementptr inbounds %struct.ofw_map, %struct.ofw_map* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 16
  %230 = sext i32 %229 to i64
  %231 = load i64, i64* %13, align 8
  %232 = add nsw i64 %230, %231
  %233 = load i32, i32* %14, align 4
  %234 = sext i32 %233 to i64
  %235 = load i64, i64* %13, align 8
  %236 = add nsw i64 %234, %235
  %237 = call i32 @moea64_kenter(i32 %224, i64 %232, i64 %236)
  br label %238

238:                                              ; preds = %223, %222, %204
  %239 = load i32, i32* @PAGE_SIZE, align 4
  %240 = sext i32 %239 to i64
  %241 = load i64, i64* %13, align 8
  %242 = add nsw i64 %241, %240
  store i64 %242, i64* %13, align 8
  br label %174

243:                                              ; preds = %174
  %244 = load i32, i32* %12, align 4
  %245 = call i32 @ENABLE_TRANS(i32 %244)
  br label %246

246:                                              ; preds = %243
  %247 = load i32, i32* %15, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %15, align 4
  br label %120

249:                                              ; preds = %120
  %250 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %250)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @bzero(%struct.ofw_map*, i64) #2

declare dso_local i32 @OF_getencprop(i32, i8*, i32*, i64) #2

declare dso_local i32 @OF_finddevice(i8*) #2

declare dso_local i32 @panic(i8*) #2

declare dso_local i32 @CTR0(i32, i8*) #2

declare dso_local i32 @KASSERT(i32, i8*) #2

declare dso_local i32 @qsort(%struct.ofw_map*, i64, i32, i32) #2

declare dso_local i32 @CTR3(i32, i8*, i32, i32, i32) #2

declare dso_local i32 @DISABLE_TRANS(i32) #2

declare dso_local i32 @PHYS_TO_DMAP(i32) #2

declare dso_local i64 @moea64_calc_wimg(i64, i32) #2

declare dso_local i32 @PMAP_LOCK(i32) #2

declare dso_local %struct.pvo_entry* @moea64_pvo_find_va(i32, i64) #2

declare dso_local i32 @PMAP_UNLOCK(i32) #2

declare dso_local i32 @moea64_kenter(i32, i64, i64) #2

declare dso_local i32 @ENABLE_TRANS(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
