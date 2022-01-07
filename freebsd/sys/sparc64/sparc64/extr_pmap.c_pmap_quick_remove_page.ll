; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_pmap.c_pmap_quick_remove_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_pmap.c_pmap_quick_remove_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tte = type { i64 }

@VM_MIN_DIRECT_ADDRESS = common dso_local global i64 0, align 8
@qmap_addr = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@DCACHE_COLORS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"pmap_quick_remove_page: invalid address\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"pmap_quick_remove_page: PTE not in use\00", align 1
@TLB_DEMAP_NUCLEUS = common dso_local global i32 0, align 4
@TLB_DEMAP_PAGE = common dso_local global i32 0, align 4
@ASI_DMMU_DEMAP = common dso_local global i32 0, align 4
@ASI_IMMU_DEMAP = common dso_local global i32 0, align 4
@KERNBASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_quick_remove_page(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.tte*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = load i64, i64* @VM_MIN_DIRECT_ADDRESS, align 8
  %7 = icmp sge i64 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %57

9:                                                ; preds = %1
  %10 = load i64, i64* %2, align 8
  %11 = call %struct.tte* @tsb_kvtotte(i64 %10)
  store %struct.tte* %11, %struct.tte** %4, align 8
  %12 = load i32, i32* @qmap_addr, align 4
  %13 = call i64 @PCPU_GET(i32 %12)
  store i64 %13, i64* %3, align 8
  %14 = load i64, i64* %2, align 8
  %15 = load i64, i64* %3, align 8
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %9
  %18 = load i64, i64* %2, align 8
  %19 = load i64, i64* %3, align 8
  %20 = load i32, i32* @PAGE_SIZE, align 4
  %21 = load i32, i32* @DCACHE_COLORS, align 4
  %22 = mul nsw i32 %20, %21
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %19, %23
  %25 = icmp slt i64 %18, %24
  br label %26

26:                                               ; preds = %17, %9
  %27 = phi i1 [ false, %9 ], [ %25, %17 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @KASSERT(i32 %28, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.tte*, %struct.tte** %4, align 8
  %31 = getelementptr inbounds %struct.tte, %struct.tte* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @KASSERT(i32 %34, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i64, i64* %2, align 8
  %37 = call i32 @TLB_DEMAP_VA(i64 %36)
  %38 = load i32, i32* @TLB_DEMAP_NUCLEUS, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @TLB_DEMAP_PAGE, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @ASI_DMMU_DEMAP, align 4
  %43 = call i32 @stxa(i32 %41, i32 %42, i32 0)
  %44 = load i64, i64* %2, align 8
  %45 = call i32 @TLB_DEMAP_VA(i64 %44)
  %46 = load i32, i32* @TLB_DEMAP_NUCLEUS, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @TLB_DEMAP_PAGE, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @ASI_IMMU_DEMAP, align 4
  %51 = call i32 @stxa(i32 %49, i32 %50, i32 0)
  %52 = load i32, i32* @KERNBASE, align 4
  %53 = call i32 @flush(i32 %52)
  %54 = load %struct.tte*, %struct.tte** %4, align 8
  %55 = call i32 @TTE_ZERO(%struct.tte* %54)
  %56 = call i32 (...) @critical_exit()
  br label %57

57:                                               ; preds = %26, %8
  ret void
}

declare dso_local %struct.tte* @tsb_kvtotte(i64) #1

declare dso_local i64 @PCPU_GET(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @stxa(i32, i32, i32) #1

declare dso_local i32 @TLB_DEMAP_VA(i64) #1

declare dso_local i32 @flush(i32) #1

declare dso_local i32 @TTE_ZERO(%struct.tte*) #1

declare dso_local i32 @critical_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
