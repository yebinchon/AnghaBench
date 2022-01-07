; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_pmap.c_mmu_booke_copy_pages.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_pmap.c_mmu_booke_copy_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@copy_page_mutex = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@copy_page_src_va = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@copy_page_dst_va = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i64, i32*, i64, i32)* @mmu_booke_copy_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmu_booke_copy_pages(i32 %0, i32* %1, i64 %2, i32* %3, i64 %4, i32 %5) #0 {
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
  %18 = call i32 @mtx_lock(i32* @copy_page_mutex)
  br label %19

19:                                               ; preds = %22, %6
  %20 = load i32, i32* %12, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %88

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
  %32 = load i64, i64* @copy_page_src_va, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* @PAGE_SHIFT, align 8
  %36 = lshr i64 %34, %35
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @VM_PAGE_TO_PHYS(i32 %38)
  %40 = call i32 @mmu_booke_kenter(i32 %31, i64 %32, i32 %39)
  %41 = load i64, i64* @copy_page_src_va, align 8
  %42 = inttoptr i64 %41 to i8*
  %43 = load i64, i64* %15, align 8
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  store i8* %44, i8** %13, align 8
  %45 = load i64, i64* %11, align 8
  %46 = load i64, i64* @PAGE_MASK, align 8
  %47 = and i64 %45, %46
  store i64 %47, i64* %16, align 8
  %48 = load i32, i32* %17, align 4
  %49 = load i64, i64* @PAGE_SIZE, align 8
  %50 = load i64, i64* %16, align 8
  %51 = sub i64 %49, %50
  %52 = call i32 @min(i32 %48, i64 %51)
  store i32 %52, i32* %17, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i64, i64* @copy_page_dst_va, align 8
  %55 = load i32*, i32** %10, align 8
  %56 = load i64, i64* %11, align 8
  %57 = load i64, i64* @PAGE_SHIFT, align 8
  %58 = lshr i64 %56, %57
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @VM_PAGE_TO_PHYS(i32 %60)
  %62 = call i32 @mmu_booke_kenter(i32 %53, i64 %54, i32 %61)
  %63 = load i64, i64* @copy_page_dst_va, align 8
  %64 = inttoptr i64 %63 to i8*
  %65 = load i64, i64* %16, align 8
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  store i8* %66, i8** %14, align 8
  %67 = load i8*, i8** %13, align 8
  %68 = load i8*, i8** %14, align 8
  %69 = load i32, i32* %17, align 4
  %70 = call i32 @bcopy(i8* %67, i8* %68, i32 %69)
  %71 = load i32, i32* %7, align 4
  %72 = load i64, i64* @copy_page_dst_va, align 8
  %73 = call i32 @mmu_booke_kremove(i32 %71, i64 %72)
  %74 = load i32, i32* %7, align 4
  %75 = load i64, i64* @copy_page_src_va, align 8
  %76 = call i32 @mmu_booke_kremove(i32 %74, i64 %75)
  %77 = load i32, i32* %17, align 4
  %78 = sext i32 %77 to i64
  %79 = load i64, i64* %9, align 8
  %80 = add i64 %79, %78
  store i64 %80, i64* %9, align 8
  %81 = load i32, i32* %17, align 4
  %82 = sext i32 %81 to i64
  %83 = load i64, i64* %11, align 8
  %84 = add i64 %83, %82
  store i64 %84, i64* %11, align 8
  %85 = load i32, i32* %17, align 4
  %86 = load i32, i32* %12, align 4
  %87 = sub nsw i32 %86, %85
  store i32 %87, i32* %12, align 4
  br label %19

88:                                               ; preds = %19
  %89 = call i32 @mtx_unlock(i32* @copy_page_mutex)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @mmu_booke_kenter(i32, i64, i32) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(i32) #1

declare dso_local i32 @bcopy(i8*, i8*, i32) #1

declare dso_local i32 @mmu_booke_kremove(i32, i64) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
