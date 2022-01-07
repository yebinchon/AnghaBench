; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_pmap.c_mmu_booke_extract_and_hold.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_pmap.c_mmu_booke_extract_and_hold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kernel_pmap = common dso_local global i64 0, align 8
@PTE_SW = common dso_local global i32 0, align 4
@PTE_UW = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i64, i32, i32)* @mmu_booke_extract_and_hold to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @mmu_booke_extract_and_hold(i32 %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32* null, i32** %10, align 8
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @PMAP_LOCK(i64 %12)
  %14 = load i32, i32* %5, align 4
  %15 = load i64, i64* %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32* @pte_find(i32 %14, i64 %15, i32 %16)
  store i32* %17, i32** %9, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %53

20:                                               ; preds = %4
  %21 = load i32*, i32** %9, align 8
  %22 = call i64 @PTE_ISVALID(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %53

24:                                               ; preds = %20
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @kernel_pmap, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @PTE_SW, align 4
  store i32 %29, i32* %11, align 4
  br label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @PTE_UW, align 4
  store i32 %31, i32* %11, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %11, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @VM_PROT_WRITE, align 4
  %41 = and i32 %39, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %38, %32
  %44 = load i32*, i32** %9, align 8
  %45 = call i32 @PTE_PA(i32* %44)
  %46 = call i32* @PHYS_TO_VM_PAGE(i32 %45)
  store i32* %46, i32** %10, align 8
  %47 = load i32*, i32** %10, align 8
  %48 = call i32 @vm_page_wire_mapped(i32* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %43
  store i32* null, i32** %10, align 8
  br label %51

51:                                               ; preds = %50, %43
  br label %52

52:                                               ; preds = %51, %38
  br label %53

53:                                               ; preds = %52, %20, %4
  %54 = load i64, i64* %6, align 8
  %55 = call i32 @PMAP_UNLOCK(i64 %54)
  %56 = load i32*, i32** %10, align 8
  ret i32* %56
}

declare dso_local i32 @PMAP_LOCK(i64) #1

declare dso_local i32* @pte_find(i32, i64, i32) #1

declare dso_local i64 @PTE_ISVALID(i32*) #1

declare dso_local i32* @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i32 @PTE_PA(i32*) #1

declare dso_local i32 @vm_page_wire_mapped(i32*) #1

declare dso_local i32 @PMAP_UNLOCK(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
