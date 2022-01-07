; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_mmu_phyp.c_mphyp_pte_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_mmu_phyp.c_mphyp_pte_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvo_entry = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.rm_priotracker = type { i32 }
%struct.lpte = type { i32, i64 }

@MA_OWNED = common dso_local global i32 0, align 4
@mphyp_eviction_lock = common dso_local global i32 0, align 4
@H_ENTER = common dso_local global i32 0, align 4
@H_SUCCESS = common dso_local global i64 0, align 8
@H_PTEG_FULL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [61 x i8] c"Page insertion error: %ld (ptegidx: %#zx/%#lx, PTE %#lx/%#lx\00", align 1
@moea64_pteg_count = common dso_local global i32 0, align 4
@PVO_HID = common dso_local global i32 0, align 4
@LPTE_HID = common dso_local global i32 0, align 4
@moea64_pteg_mask = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Secondary page insertion error: %ld\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"mphyp_pte_insert: overflow\00", align 1
@LPTE_VALID = common dso_local global i32 0, align 4
@H_REMOVE = common dso_local global i32 0, align 4
@H_AVPN = common dso_local global i32 0, align 4
@LPTE_AVPN_MASK = common dso_local global i32 0, align 4
@moea64_pte_overflow = common dso_local global i32 0, align 4
@H_NOT_FOUND = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"Error evicting page: %d\00", align 1
@H_EXACT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"Page replacement error: %ld\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.pvo_entry*)* @mphyp_pte_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mphyp_pte_insert(i32 %0, %struct.pvo_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.pvo_entry*, align 8
  %6 = alloca %struct.rm_priotracker, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.lpte, align 8
  %9 = alloca %struct.lpte, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.pvo_entry* %1, %struct.pvo_entry** %5, align 8
  %13 = load %struct.pvo_entry*, %struct.pvo_entry** %5, align 8
  %14 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @MA_OWNED, align 4
  %17 = call i32 @PMAP_LOCK_ASSERT(i32 %15, i32 %16)
  %18 = load %struct.pvo_entry*, %struct.pvo_entry** %5, align 8
  %19 = call i32 @moea64_pte_from_pvo(%struct.pvo_entry* %18, %struct.lpte* %9)
  %20 = getelementptr inbounds %struct.lpte, %struct.lpte* %8, i32 0, i32 0
  store i32 0, i32* %20, align 8
  %21 = call i32 @rm_rlock(i32* @mphyp_eviction_lock, %struct.rm_priotracker* %6)
  %22 = load %struct.pvo_entry*, %struct.pvo_entry** %5, align 8
  %23 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = and i64 %25, -8
  store i64 %26, i64* %24, align 8
  %27 = load i32, i32* @H_ENTER, align 4
  %28 = load %struct.pvo_entry*, %struct.pvo_entry** %5, align 8
  %29 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.lpte, %struct.lpte* %9, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = getelementptr inbounds %struct.lpte, %struct.lpte* %9, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.lpte, %struct.lpte* %8, i32 0, i32 1
  %37 = call i64 @phyp_pft_hcall(i32 %27, i32 0, i64 %31, i32 %33, i64 %35, i64* %10, i64* %36, i64* %11)
  store i64 %37, i64* %7, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* @H_SUCCESS, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %2
  %42 = call i32 @rm_runlock(i32* @mphyp_eviction_lock, %struct.rm_priotracker* %6)
  %43 = load i64, i64* %10, align 8
  %44 = load %struct.pvo_entry*, %struct.pvo_entry** %5, align 8
  %45 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i64 %43, i64* %46, align 8
  store i32 0, i32* %3, align 4
  br label %204

47:                                               ; preds = %2
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* @H_PTEG_FULL, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = load i64, i64* %7, align 8
  %53 = load %struct.pvo_entry*, %struct.pvo_entry** %5, align 8
  %54 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* @moea64_pteg_count, align 4
  %58 = getelementptr inbounds %struct.lpte, %struct.lpte* %9, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = getelementptr inbounds %struct.lpte, %struct.lpte* %9, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to i8*
  %63 = call i32 @KASSERT(i32 %51, i8* %62)
  %64 = load i32, i32* @PVO_HID, align 4
  %65 = load %struct.pvo_entry*, %struct.pvo_entry** %5, align 8
  %66 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = xor i32 %67, %64
  store i32 %68, i32* %66, align 8
  %69 = load i32, i32* @LPTE_HID, align 4
  %70 = getelementptr inbounds %struct.lpte, %struct.lpte* %9, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = xor i32 %71, %69
  store i32 %72, i32* %70, align 8
  %73 = load i32, i32* @moea64_pteg_mask, align 4
  %74 = shl i32 %73, 3
  %75 = sext i32 %74 to i64
  %76 = load %struct.pvo_entry*, %struct.pvo_entry** %5, align 8
  %77 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = xor i64 %79, %75
  store i64 %80, i64* %78, align 8
  %81 = load i32, i32* @H_ENTER, align 4
  %82 = load %struct.pvo_entry*, %struct.pvo_entry** %5, align 8
  %83 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds %struct.lpte, %struct.lpte* %9, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = getelementptr inbounds %struct.lpte, %struct.lpte* %9, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds %struct.lpte, %struct.lpte* %8, i32 0, i32 1
  %91 = call i64 @phyp_pft_hcall(i32 %81, i32 0, i64 %85, i32 %87, i64 %89, i64* %10, i64* %90, i64* %11)
  store i64 %91, i64* %7, align 8
  %92 = load i64, i64* %7, align 8
  %93 = load i64, i64* @H_SUCCESS, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %47
  %96 = call i32 @rm_runlock(i32* @mphyp_eviction_lock, %struct.rm_priotracker* %6)
  %97 = load i64, i64* %10, align 8
  %98 = load %struct.pvo_entry*, %struct.pvo_entry** %5, align 8
  %99 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  store i64 %97, i64* %100, align 8
  store i32 0, i32* %3, align 4
  br label %204

101:                                              ; preds = %47
  %102 = load i64, i64* %7, align 8
  %103 = load i64, i64* @H_PTEG_FULL, align 8
  %104 = icmp eq i64 %102, %103
  %105 = zext i1 %104 to i32
  %106 = load i64, i64* %7, align 8
  %107 = inttoptr i64 %106 to i8*
  %108 = call i32 @KASSERT(i32 %105, i8* %107)
  %109 = call i32 @rm_runlock(i32* @mphyp_eviction_lock, %struct.rm_priotracker* %6)
  %110 = call i32 @rm_wlock(i32* @mphyp_eviction_lock)
  %111 = load %struct.pvo_entry*, %struct.pvo_entry** %5, align 8
  %112 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = call i64 @mphyp_pte_spillable_ident(i64 %114, %struct.lpte* %8)
  store i64 %115, i64* %10, align 8
  %116 = load i64, i64* %10, align 8
  %117 = icmp eq i64 %116, -1
  br i1 %117, label %118, label %141

118:                                              ; preds = %101
  %119 = load i32, i32* @PVO_HID, align 4
  %120 = load %struct.pvo_entry*, %struct.pvo_entry** %5, align 8
  %121 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = xor i32 %122, %119
  store i32 %123, i32* %121, align 8
  %124 = load i32, i32* @LPTE_HID, align 4
  %125 = getelementptr inbounds %struct.lpte, %struct.lpte* %9, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = xor i32 %126, %124
  store i32 %127, i32* %125, align 8
  %128 = load i32, i32* @moea64_pteg_mask, align 4
  %129 = shl i32 %128, 3
  %130 = sext i32 %129 to i64
  %131 = load %struct.pvo_entry*, %struct.pvo_entry** %5, align 8
  %132 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = xor i64 %134, %130
  store i64 %135, i64* %133, align 8
  %136 = load %struct.pvo_entry*, %struct.pvo_entry** %5, align 8
  %137 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = call i64 @mphyp_pte_spillable_ident(i64 %139, %struct.lpte* %8)
  store i64 %140, i64* %10, align 8
  br label %141

141:                                              ; preds = %118, %101
  %142 = load i64, i64* %10, align 8
  %143 = icmp eq i64 %142, -1
  br i1 %143, label %144, label %147

144:                                              ; preds = %141
  %145 = call i32 @rm_wunlock(i32* @mphyp_eviction_lock)
  %146 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %204

147:                                              ; preds = %141
  %148 = getelementptr inbounds %struct.lpte, %struct.lpte* %8, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @LPTE_VALID, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %180

153:                                              ; preds = %147
  %154 = load i32, i32* @H_REMOVE, align 4
  %155 = load i32, i32* @H_AVPN, align 4
  %156 = load i64, i64* %10, align 8
  %157 = getelementptr inbounds %struct.lpte, %struct.lpte* %8, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @LPTE_AVPN_MASK, align 4
  %160 = and i32 %158, %159
  %161 = call i64 @phyp_pft_hcall(i32 %154, i32 %155, i64 %156, i32 %160, i64 0, i64* %11, i64* %12, i64* %11)
  store i64 %161, i64* %7, align 8
  %162 = load i32, i32* @moea64_pte_overflow, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* @moea64_pte_overflow, align 4
  %164 = call i32 @STAT_MOEA64(i32 %162)
  %165 = load i64, i64* %7, align 8
  %166 = load i64, i64* @H_SUCCESS, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %172, label %168

168:                                              ; preds = %153
  %169 = load i64, i64* %7, align 8
  %170 = load i64, i64* @H_NOT_FOUND, align 8
  %171 = icmp eq i64 %169, %170
  br label %172

172:                                              ; preds = %168, %153
  %173 = phi i1 [ true, %153 ], [ %171, %168 ]
  %174 = zext i1 %173 to i32
  %175 = load i64, i64* %7, align 8
  %176 = trunc i64 %175 to i32
  %177 = sext i32 %176 to i64
  %178 = inttoptr i64 %177 to i8*
  %179 = call i32 @KASSERT(i32 %174, i8* %178)
  br label %180

180:                                              ; preds = %172, %147
  %181 = load i32, i32* @H_ENTER, align 4
  %182 = load i32, i32* @H_EXACT, align 4
  %183 = load i64, i64* %10, align 8
  %184 = getelementptr inbounds %struct.lpte, %struct.lpte* %9, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = getelementptr inbounds %struct.lpte, %struct.lpte* %9, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = getelementptr inbounds %struct.lpte, %struct.lpte* %8, i32 0, i32 1
  %189 = call i64 @phyp_pft_hcall(i32 %181, i32 %182, i64 %183, i32 %185, i64 %187, i64* %10, i64* %188, i64* %11)
  store i64 %189, i64* %7, align 8
  %190 = call i32 @rm_wunlock(i32* @mphyp_eviction_lock)
  %191 = load i64, i64* %10, align 8
  %192 = load %struct.pvo_entry*, %struct.pvo_entry** %5, align 8
  %193 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 0
  store i64 %191, i64* %194, align 8
  %195 = load i64, i64* %7, align 8
  %196 = load i64, i64* @H_SUCCESS, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %198, label %199

198:                                              ; preds = %180
  store i32 0, i32* %3, align 4
  br label %204

199:                                              ; preds = %180
  %200 = load i64, i64* %7, align 8
  %201 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i64 %200)
  %202 = load i64, i64* %7, align 8
  %203 = trunc i64 %202 to i32
  store i32 %203, i32* %3, align 4
  br label %204

204:                                              ; preds = %199, %198, %144, %95, %41
  %205 = load i32, i32* %3, align 4
  ret i32 %205
}

declare dso_local i32 @PMAP_LOCK_ASSERT(i32, i32) #1

declare dso_local i32 @moea64_pte_from_pvo(%struct.pvo_entry*, %struct.lpte*) #1

declare dso_local i32 @rm_rlock(i32*, %struct.rm_priotracker*) #1

declare dso_local i64 @phyp_pft_hcall(i32, i32, i64, i32, i64, i64*, i64*, i64*) #1

declare dso_local i32 @rm_runlock(i32*, %struct.rm_priotracker*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @rm_wlock(i32*) #1

declare dso_local i64 @mphyp_pte_spillable_ident(i64, %struct.lpte*) #1

declare dso_local i32 @rm_wunlock(i32*) #1

declare dso_local i32 @panic(i8*, ...) #1

declare dso_local i32 @STAT_MOEA64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
