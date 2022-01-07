; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_pmap.c_mmu_booke_sync_icache.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_pmap.c_mmu_booke_sync_icache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pvh_global_lock = common dso_local global i32 0, align 4
@curpmap = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@PTE_SR = common dso_local global i32 0, align 4
@PTE_VALID = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@PTBL_UNHOLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i32, i32)* @mmu_booke_sync_icache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmu_booke_sync_icache(i32 %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %17 = call i32 @rw_wlock(i32* @pvh_global_lock)
  %18 = load i32, i32* @curpmap, align 4
  %19 = call i64 @PCPU_GET(i32 %18)
  store i64 %19, i64* %13, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @kernel_pmap, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %4
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* %13, align 8
  %26 = icmp eq i64 %24, %25
  br label %27

27:                                               ; preds = %23, %4
  %28 = phi i1 [ true, %4 ], [ %26, %23 ]
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 1, i32 0
  store i32 %30, i32* %16, align 4
  br label %31

31:                                               ; preds = %110, %27
  %32 = load i32, i32* %8, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %117

34:                                               ; preds = %31
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @PMAP_LOCK(i64 %35)
  %37 = load i32, i32* %5, align 4
  %38 = load i64, i64* %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32* @pte_find(i32 %37, i64 %38, i32 %39)
  store i32* %40, i32** %9, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %34
  %44 = load i32*, i32** %9, align 8
  %45 = call i64 @PTE_ISVALID(i32* %44)
  %46 = icmp ne i64 %45, 0
  br label %47

47:                                               ; preds = %43, %34
  %48 = phi i1 [ false, %34 ], [ %46, %43 ]
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 1, i32 0
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i32*, i32** %9, align 8
  %55 = call i32 @PTE_PA(i32* %54)
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %53, %47
  %57 = load i64, i64* %6, align 8
  %58 = call i32 @PMAP_UNLOCK(i64 %57)
  %59 = load i32, i32* @PAGE_SIZE, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @PAGE_MASK, align 4
  %62 = and i32 %60, %61
  %63 = sub nsw i32 %59, %62
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @min(i32 %64, i32 %65)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %110

69:                                               ; preds = %56
  %70 = load i32, i32* %16, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %103, label %72

72:                                               ; preds = %69
  store i32 0, i32* %15, align 4
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @PHYS_TO_VM_PAGE(i32 %73)
  store i32 %74, i32* %14, align 4
  %75 = load i64, i64* %13, align 8
  %76 = call i32 @PMAP_LOCK(i64 %75)
  %77 = load i32, i32* %5, align 4
  %78 = load i64, i64* %13, align 8
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* @PTE_SR, align 4
  %82 = load i32, i32* @PTE_VALID, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @FALSE, align 4
  %85 = call i32 @pte_enter(i32 %77, i64 %78, i32 %79, i32 %80, i32 %83, i32 %84)
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @PAGE_MASK, align 4
  %88 = and i32 %86, %87
  %89 = load i32, i32* %15, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %15, align 4
  %91 = load i32, i32* %15, align 4
  %92 = sext i32 %91 to i64
  %93 = inttoptr i64 %92 to i8*
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @__syncicache(i8* %93, i32 %94)
  %96 = load i32, i32* %5, align 4
  %97 = load i64, i64* %13, align 8
  %98 = load i32, i32* %15, align 4
  %99 = load i32, i32* @PTBL_UNHOLD, align 4
  %100 = call i32 @pte_remove(i32 %96, i64 %97, i32 %98, i32 %99)
  %101 = load i64, i64* %13, align 8
  %102 = call i32 @PMAP_UNLOCK(i64 %101)
  br label %109

103:                                              ; preds = %69
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = inttoptr i64 %105 to i8*
  %107 = load i32, i32* %11, align 4
  %108 = call i32 @__syncicache(i8* %106, i32 %107)
  br label %109

109:                                              ; preds = %103, %72
  br label %110

110:                                              ; preds = %109, %56
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* %7, align 4
  %113 = add nsw i32 %112, %111
  store i32 %113, i32* %7, align 4
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* %8, align 4
  %116 = sub nsw i32 %115, %114
  store i32 %116, i32* %8, align 4
  br label %31

117:                                              ; preds = %31
  %118 = call i32 @rw_wunlock(i32* @pvh_global_lock)
  ret void
}

declare dso_local i32 @rw_wlock(i32*) #1

declare dso_local i64 @PCPU_GET(i32) #1

declare dso_local i32 @PMAP_LOCK(i64) #1

declare dso_local i32* @pte_find(i32, i64, i32) #1

declare dso_local i64 @PTE_ISVALID(i32*) #1

declare dso_local i32 @PTE_PA(i32*) #1

declare dso_local i32 @PMAP_UNLOCK(i64) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i32 @pte_enter(i32, i64, i32, i32, i32, i32) #1

declare dso_local i32 @__syncicache(i8*, i32) #1

declare dso_local i32 @pte_remove(i32, i64, i32, i32) #1

declare dso_local i32 @rw_wunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
