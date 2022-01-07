; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea64.c_moea64_syncicache.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea64.c_moea64_syncicache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pmap_bootstrapped = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global i64 0, align 8
@hw_direct_map = common dso_local global i64 0, align 8
@moea64_scratchpage_mtx = common dso_local global i32 0, align 4
@ADDR_POFF = common dso_local global i32 0, align 4
@moea64_scratchpage_va = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i32, i32, i32)* @moea64_syncicache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @moea64_syncicache(i32 %0, i64 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* @pmap_bootstrapped, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %5
  %14 = load i32, i32* %9, align 4
  %15 = sext i32 %14 to i64
  %16 = inttoptr i64 %15 to i8*
  %17 = load i32, i32* %10, align 4
  %18 = call i32 @__syncicache(i8* %16, i32 %17)
  br label %60

19:                                               ; preds = %5
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* @kernel_pmap, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to i8*
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @__syncicache(i8* %26, i32 %27)
  br label %59

29:                                               ; preds = %19
  %30 = load i64, i64* @hw_direct_map, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load i32, i32* %9, align 4
  %34 = call i64 @PHYS_TO_DMAP(i32 %33)
  %35 = inttoptr i64 %34 to i8*
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @__syncicache(i8* %35, i32 %36)
  br label %58

38:                                               ; preds = %29
  %39 = call i32 @mtx_lock(i32* @moea64_scratchpage_mtx)
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @ADDR_POFF, align 4
  %43 = xor i32 %42, -1
  %44 = and i32 %41, %43
  %45 = call i32 @moea64_set_scratchpage_pa(i32 %40, i32 1, i32 %44)
  %46 = load i64*, i64** @moea64_scratchpage_va, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 1
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @ADDR_POFF, align 4
  %51 = and i32 %49, %50
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %48, %52
  %54 = inttoptr i64 %53 to i8*
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @__syncicache(i8* %54, i32 %55)
  %57 = call i32 @mtx_unlock(i32* @moea64_scratchpage_mtx)
  br label %58

58:                                               ; preds = %38, %32
  br label %59

59:                                               ; preds = %58, %23
  br label %60

60:                                               ; preds = %59, %13
  ret void
}

declare dso_local i32 @__syncicache(i8*, i32) #1

declare dso_local i64 @PHYS_TO_DMAP(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @moea64_set_scratchpage_pa(i32, i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
