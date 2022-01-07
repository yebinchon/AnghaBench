; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_pmap.c_pmap_quick_enter_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_pmap.c_pmap_quick_enter_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VM_MEMATTR_WRITE_BACK = common dso_local global i64 0, align 8
@qmap_addr = common dso_local global i32 0, align 4
@qmap_ptep = common dso_local global i32 0, align 4
@PTE_G = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"pmap_quick_enter_page: PTE busy\00", align 1
@PTE_D = common dso_local global i32 0, align 4
@PTE_V = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @pmap_quick_enter_page(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @VM_PAGE_TO_PHYS(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @MIPS_DIRECT_MAPPABLE(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = call i64 @pmap_page_get_memattr(i32 %14)
  %16 = load i64, i64* @VM_MEMATTR_WRITE_BACK, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i32, i32* %5, align 4
  %20 = call i8* @MIPS_PHYS_TO_DIRECT_UNCACHED(i32 %19)
  store i8* %20, i8** %2, align 8
  br label %52

21:                                               ; preds = %13
  %22 = load i32, i32* %5, align 4
  %23 = call i8* @MIPS_PHYS_TO_DIRECT(i32 %22)
  store i8* %23, i8** %2, align 8
  br label %52

24:                                               ; preds = %1
  %25 = call i32 (...) @critical_enter()
  %26 = load i32, i32* @qmap_addr, align 4
  %27 = call i8* @PCPU_GET(i32 %26)
  store i8* %27, i8** %4, align 8
  %28 = load i32, i32* @qmap_ptep, align 4
  %29 = call i8* @PCPU_GET(i32 %28)
  %30 = bitcast i8* %29 to i32*
  store i32* %30, i32** %6, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @PTE_G, align 4
  %34 = icmp eq i32 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @KASSERT(i32 %35, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @TLBLO_PA_TO_PFN(i32 %37)
  %39 = load i32, i32* @PTE_D, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @PTE_V, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @PTE_G, align 4
  %44 = or i32 %42, %43
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @PMAP_PTE_SET_CACHE_BITS(i32 %45, i32 %46, i32 %47)
  %49 = load i32, i32* %7, align 4
  %50 = load i32*, i32** %6, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i8*, i8** %4, align 8
  store i8* %51, i8** %2, align 8
  br label %52

52:                                               ; preds = %24, %21, %18
  %53 = load i8*, i8** %2, align 8
  ret i8* %53
}

declare dso_local i32 @VM_PAGE_TO_PHYS(i32) #1

declare dso_local i64 @MIPS_DIRECT_MAPPABLE(i32) #1

declare dso_local i64 @pmap_page_get_memattr(i32) #1

declare dso_local i8* @MIPS_PHYS_TO_DIRECT_UNCACHED(i32) #1

declare dso_local i8* @MIPS_PHYS_TO_DIRECT(i32) #1

declare dso_local i32 @critical_enter(...) #1

declare dso_local i8* @PCPU_GET(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @TLBLO_PA_TO_PFN(i32) #1

declare dso_local i32 @PMAP_PTE_SET_CACHE_BITS(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
