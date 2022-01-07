; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_pmap.c_mmu_booke_protect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_pmap.c_mmu_booke_protect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VM_PROT_READ = common dso_local global i32 0, align 4
@VM_PROT_NONE = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@tlbivax_mutex = common dso_local global i32 0, align 4
@PTE_UW = common dso_local global i32 0, align 4
@PTE_SW = common dso_local global i32 0, align 4
@PTE_MODIFIED = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i64, i64, i32)* @mmu_booke_protect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmu_booke_protect(i32 %0, i32 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* @VM_PROT_READ, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* @VM_PROT_NONE, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %5
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* %9, align 8
  %24 = call i32 @mmu_booke_remove(i32 %20, i32 %21, i64 %22, i64 %23)
  br label %88

25:                                               ; preds = %5
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @VM_PROT_WRITE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %88

31:                                               ; preds = %25
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @PMAP_LOCK(i32 %32)
  %34 = load i64, i64* %8, align 8
  store i64 %34, i64* %11, align 8
  br label %35

35:                                               ; preds = %81, %31
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* %9, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %85

39:                                               ; preds = %35
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i64, i64* %11, align 8
  %43 = call i32* @pte_find(i32 %40, i32 %41, i64 %42)
  store i32* %43, i32** %13, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %80

45:                                               ; preds = %39
  %46 = load i32*, i32** %13, align 8
  %47 = call i64 @PTE_ISVALID(i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %79

49:                                               ; preds = %45
  %50 = load i32*, i32** %13, align 8
  %51 = call i32 @PTE_PA(i32* %50)
  %52 = call i32 @PHYS_TO_VM_PAGE(i32 %51)
  store i32 %52, i32* %12, align 4
  %53 = call i32 @mtx_lock_spin(i32* @tlbivax_mutex)
  %54 = call i32 (...) @tlb_miss_lock()
  %55 = load i32*, i32** %13, align 8
  %56 = call i64 @PTE_ISMODIFIED(i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %49
  %59 = load i32*, i32** %13, align 8
  %60 = call i64 @PTE_ISMANAGED(i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i32, i32* %12, align 4
  %64 = call i32 @vm_page_dirty(i32 %63)
  br label %65

65:                                               ; preds = %62, %58, %49
  %66 = load i64, i64* %11, align 8
  %67 = call i32 @tlb0_flush_entry(i64 %66)
  %68 = load i32, i32* @PTE_UW, align 4
  %69 = load i32, i32* @PTE_SW, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @PTE_MODIFIED, align 4
  %72 = or i32 %70, %71
  %73 = xor i32 %72, -1
  %74 = load i32*, i32** %13, align 8
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, %73
  store i32 %76, i32* %74, align 4
  %77 = call i32 (...) @tlb_miss_unlock()
  %78 = call i32 @mtx_unlock_spin(i32* @tlbivax_mutex)
  br label %79

79:                                               ; preds = %65, %45
  br label %80

80:                                               ; preds = %79, %39
  br label %81

81:                                               ; preds = %80
  %82 = load i64, i64* @PAGE_SIZE, align 8
  %83 = load i64, i64* %11, align 8
  %84 = add nsw i64 %83, %82
  store i64 %84, i64* %11, align 8
  br label %35

85:                                               ; preds = %35
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @PMAP_UNLOCK(i32 %86)
  br label %88

88:                                               ; preds = %85, %30, %19
  ret void
}

declare dso_local i32 @mmu_booke_remove(i32, i32, i64, i64) #1

declare dso_local i32 @PMAP_LOCK(i32) #1

declare dso_local i32* @pte_find(i32, i32, i64) #1

declare dso_local i64 @PTE_ISVALID(i32*) #1

declare dso_local i32 @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i32 @PTE_PA(i32*) #1

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @tlb_miss_lock(...) #1

declare dso_local i64 @PTE_ISMODIFIED(i32*) #1

declare dso_local i64 @PTE_ISMANAGED(i32*) #1

declare dso_local i32 @vm_page_dirty(i32) #1

declare dso_local i32 @tlb0_flush_entry(i64) #1

declare dso_local i32 @tlb_miss_unlock(...) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

declare dso_local i32 @PMAP_UNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
