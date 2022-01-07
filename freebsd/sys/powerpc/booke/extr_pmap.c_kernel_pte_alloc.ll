; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_pmap.c_kernel_pte_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_pmap.c_kernel_pte_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32** }

@kernel_ptbls = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PTBL_PAGES = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global %struct.TYPE_2__* null, align 8
@kptbl_min = common dso_local global i32 0, align 4
@kernload = common dso_local global i64 0, align 8
@kernstart = common dso_local global i64 0, align 8
@PTE_M = common dso_local global i32 0, align 4
@PTE_SR = common dso_local global i32 0, align 4
@PTE_SW = common dso_local global i32 0, align 4
@PTE_SX = common dso_local global i32 0, align 4
@PTE_WIRED = common dso_local global i32 0, align 4
@PTE_VALID = common dso_local global i32 0, align 4
@PTE_PS_4KB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64)* @kernel_pte_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kernel_pte_alloc(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %32, %3
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @kernel_ptbls, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %35

14:                                               ; preds = %10
  %15 = load i64, i64* %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @PAGE_SIZE, align 4
  %18 = mul nsw i32 %16, %17
  %19 = load i32, i32* @PTBL_PAGES, align 4
  %20 = mul nsw i32 %18, %19
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %15, %21
  %23 = inttoptr i64 %22 to i32*
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kernel_pmap, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32**, i32*** %25, align 8
  %27 = load i32, i32* @kptbl_min, align 4
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %27, %28
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32*, i32** %26, i64 %30
  store i32* %23, i32** %31, align 8
  br label %32

32:                                               ; preds = %14
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %7, align 4
  br label %10

35:                                               ; preds = %10
  %36 = load i64, i64* %5, align 8
  store i64 %36, i64* %8, align 8
  br label %37

37:                                               ; preds = %75, %35
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %4, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %41, label %80

41:                                               ; preds = %37
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kernel_pmap, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32**, i32*** %43, align 8
  %45 = load i64, i64* %8, align 8
  %46 = call i64 @PDIR_IDX(i64 %45)
  %47 = getelementptr inbounds i32*, i32** %44, i64 %46
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* %8, align 8
  %50 = call i64 @PTBL_IDX(i64 %49)
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32* %51, i32** %9, align 8
  %52 = load i64, i64* @kernload, align 8
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* @kernstart, align 8
  %55 = sub nsw i64 %53, %54
  %56 = add nsw i64 %52, %55
  %57 = call i32 @PTE_RPN_FROM_PA(i64 %56)
  %58 = load i32*, i32** %9, align 8
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* @PTE_M, align 4
  %60 = load i32, i32* @PTE_SR, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @PTE_SW, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @PTE_SX, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @PTE_WIRED, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @PTE_VALID, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @PTE_PS_4KB, align 4
  %71 = or i32 %69, %70
  %72 = load i32*, i32** %9, align 8
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %71
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %41
  %76 = load i32, i32* @PAGE_SIZE, align 4
  %77 = sext i32 %76 to i64
  %78 = load i64, i64* %8, align 8
  %79 = add nsw i64 %78, %77
  store i64 %79, i64* %8, align 8
  br label %37

80:                                               ; preds = %37
  ret void
}

declare dso_local i64 @PDIR_IDX(i64) #1

declare dso_local i64 @PTBL_IDX(i64) #1

declare dso_local i32 @PTE_RPN_FROM_PA(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
