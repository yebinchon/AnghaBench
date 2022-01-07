; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea64.c_moea64_set_scratchpage_pa.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea64.c_moea64_set_scratchpage_pa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvo_entry = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@hw_direct_map = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Using OEA64 scratchpage with a direct map!\00", align 1
@moea64_scratchpage_mtx = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@moea64_scratchpage_pvo = common dso_local global %struct.pvo_entry** null, align 8
@VM_MEMATTR_DEFAULT = common dso_local global i32 0, align 4
@MOEA64_PTE_INVALIDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i64)* @moea64_set_scratchpage_pa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @moea64_set_scratchpage_pa(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.pvo_entry*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load i32, i32* @hw_direct_map, align 4
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @KASSERT(i32 %11, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @MA_OWNED, align 4
  %14 = call i32 @mtx_assert(i32* @moea64_scratchpage_mtx, i32 %13)
  %15 = load %struct.pvo_entry**, %struct.pvo_entry*** @moea64_scratchpage_pvo, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.pvo_entry*, %struct.pvo_entry** %15, i64 %17
  %19 = load %struct.pvo_entry*, %struct.pvo_entry** %18, align 8
  store %struct.pvo_entry* %19, %struct.pvo_entry** %7, align 8
  %20 = load %struct.pvo_entry*, %struct.pvo_entry** %7, align 8
  %21 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @PMAP_LOCK(i32 %22)
  %24 = load i64, i64* %6, align 8
  %25 = load i32, i32* @VM_MEMATTR_DEFAULT, align 4
  %26 = call i32 @moea64_calc_wimg(i64 %24, i32 %25)
  %27 = load i64, i64* %6, align 8
  %28 = trunc i64 %27 to i32
  %29 = or i32 %26, %28
  %30 = load %struct.pvo_entry*, %struct.pvo_entry** %7, align 8
  %31 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.pvo_entry*, %struct.pvo_entry** %7, align 8
  %35 = load i32, i32* @MOEA64_PTE_INVALIDATE, align 4
  %36 = call i32 @MOEA64_PTE_REPLACE(i32 %33, %struct.pvo_entry* %34, i32 %35)
  %37 = load %struct.pvo_entry*, %struct.pvo_entry** %7, align 8
  %38 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @PMAP_UNLOCK(i32 %39)
  %41 = call i32 (...) @isync()
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @PMAP_LOCK(i32) #1

declare dso_local i32 @moea64_calc_wimg(i64, i32) #1

declare dso_local i32 @MOEA64_PTE_REPLACE(i32, %struct.pvo_entry*, i32) #1

declare dso_local i32 @PMAP_UNLOCK(i32) #1

declare dso_local i32 @isync(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
