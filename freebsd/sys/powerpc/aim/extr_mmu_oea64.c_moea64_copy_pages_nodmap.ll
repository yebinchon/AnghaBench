; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea64.c_moea64_copy_pages_nodmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea64.c_moea64_copy_pages_nodmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@moea64_scratchpage_mtx = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@moea64_scratchpage_va = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i64, i32*, i64, i32)* @moea64_copy_pages_nodmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @moea64_copy_pages_nodmap(i32 %0, i32* %1, i64 %2, i32* %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %18 = call i32 @mtx_lock(i32* @moea64_scratchpage_mtx)
  br label %19

19:                                               ; preds = %22, %6
  %20 = load i32, i32* %12, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %84

22:                                               ; preds = %19
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* @PAGE_MASK, align 8
  %25 = and i64 %23, %24
  store i64 %25, i64* %15, align 8
  %26 = load i32, i32* %12, align 4
  %27 = load i64, i64* @PAGE_SIZE, align 8
  %28 = load i64, i64* %15, align 8
  %29 = sub i64 %27, %28
  %30 = call i32 @min(i32 %26, i64 %29)
  store i32 %30, i32* %17, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32*, i32** %8, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* @PAGE_SHIFT, align 8
  %35 = lshr i64 %33, %34
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @VM_PAGE_TO_PHYS(i32 %37)
  %39 = call i32 @moea64_set_scratchpage_pa(i32 %31, i32 0, i32 %38)
  %40 = load i64*, i64** @moea64_scratchpage_va, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 0
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i8*
  %44 = load i64, i64* %15, align 8
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  store i8* %45, i8** %13, align 8
  %46 = load i64, i64* %11, align 8
  %47 = load i64, i64* @PAGE_MASK, align 8
  %48 = and i64 %46, %47
  store i64 %48, i64* %16, align 8
  %49 = load i32, i32* %17, align 4
  %50 = load i64, i64* @PAGE_SIZE, align 8
  %51 = load i64, i64* %16, align 8
  %52 = sub i64 %50, %51
  %53 = call i32 @min(i32 %49, i64 %52)
  store i32 %53, i32* %17, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32*, i32** %10, align 8
  %56 = load i64, i64* %11, align 8
  %57 = load i64, i64* @PAGE_SHIFT, align 8
  %58 = lshr i64 %56, %57
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @VM_PAGE_TO_PHYS(i32 %60)
  %62 = call i32 @moea64_set_scratchpage_pa(i32 %54, i32 1, i32 %61)
  %63 = load i64*, i64** @moea64_scratchpage_va, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 1
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to i8*
  %67 = load i64, i64* %16, align 8
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  store i8* %68, i8** %14, align 8
  %69 = load i8*, i8** %13, align 8
  %70 = load i8*, i8** %14, align 8
  %71 = load i32, i32* %17, align 4
  %72 = call i32 @bcopy(i8* %69, i8* %70, i32 %71)
  %73 = load i32, i32* %17, align 4
  %74 = sext i32 %73 to i64
  %75 = load i64, i64* %9, align 8
  %76 = add i64 %75, %74
  store i64 %76, i64* %9, align 8
  %77 = load i32, i32* %17, align 4
  %78 = sext i32 %77 to i64
  %79 = load i64, i64* %11, align 8
  %80 = add i64 %79, %78
  store i64 %80, i64* %11, align 8
  %81 = load i32, i32* %17, align 4
  %82 = load i32, i32* %12, align 4
  %83 = sub nsw i32 %82, %81
  store i32 %83, i32* %12, align 4
  br label %19

84:                                               ; preds = %19
  %85 = call i32 @mtx_unlock(i32* @moea64_scratchpage_mtx)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @moea64_set_scratchpage_pa(i32, i32, i32) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(i32) #1

declare dso_local i32 @bcopy(i8*, i8*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
