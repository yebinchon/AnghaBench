; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_tlb.c_tlb_range_demap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_tlb.c_tlb_range_demap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmap = type { i32*, i32 }

@tlb_nrange_demap = common dso_local global i32 0, align 4
@cpuid = common dso_local global i32 0, align 4
@curcpu = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"tlb_range_demap: inactive pmap?\00", align 1
@kernel_pmap = common dso_local global %struct.pmap* null, align 8
@TLB_DEMAP_NUCLEUS = common dso_local global i32 0, align 4
@TLB_DEMAP_PAGE = common dso_local global i32 0, align 4
@TLB_DEMAP_PRIMARY = common dso_local global i32 0, align 4
@ASI_DMMU_DEMAP = common dso_local global i32 0, align 4
@ASI_IMMU_DEMAP = common dso_local global i32 0, align 4
@KERNBASE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tlb_range_demap(%struct.pmap* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.pmap*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pmap* %0, %struct.pmap** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i32, i32* @tlb_nrange_demap, align 4
  %12 = call i32 @PMAP_STATS_INC(i32 %11)
  %13 = load %struct.pmap*, %struct.pmap** %4, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call i8* @ipi_tlb_range_demap(%struct.pmap* %13, i64 %14, i64 %15)
  store i8* %16, i8** %8, align 8
  %17 = call i32 (...) @intr_disable()
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* @cpuid, align 4
  %19 = call i32 @PCPU_GET(i32 %18)
  %20 = load %struct.pmap*, %struct.pmap** %4, align 8
  %21 = getelementptr inbounds %struct.pmap, %struct.pmap* %20, i32 0, i32 1
  %22 = call i64 @CPU_ISSET(i32 %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %71

24:                                               ; preds = %3
  %25 = load %struct.pmap*, %struct.pmap** %4, align 8
  %26 = getelementptr inbounds %struct.pmap, %struct.pmap* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* @curcpu, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, -1
  %32 = zext i1 %31 to i32
  %33 = call i32 @KASSERT(i32 %32, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.pmap*, %struct.pmap** %4, align 8
  %35 = load %struct.pmap*, %struct.pmap** @kernel_pmap, align 8
  %36 = icmp eq %struct.pmap* %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %24
  %38 = load i32, i32* @TLB_DEMAP_NUCLEUS, align 4
  %39 = load i32, i32* @TLB_DEMAP_PAGE, align 4
  %40 = or i32 %38, %39
  store i32 %40, i32* %9, align 4
  br label %45

41:                                               ; preds = %24
  %42 = load i32, i32* @TLB_DEMAP_PRIMARY, align 4
  %43 = load i32, i32* @TLB_DEMAP_PAGE, align 4
  %44 = or i32 %42, %43
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %41, %37
  %46 = load i64, i64* %5, align 8
  store i64 %46, i64* %7, align 8
  br label %47

47:                                               ; preds = %66, %45
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* %6, align 8
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %51, label %70

51:                                               ; preds = %47
  %52 = load i64, i64* %7, align 8
  %53 = call i32 @TLB_DEMAP_VA(i64 %52)
  %54 = load i32, i32* %9, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @ASI_DMMU_DEMAP, align 4
  %57 = call i32 @stxa(i32 %55, i32 %56, i32 0)
  %58 = load i64, i64* %7, align 8
  %59 = call i32 @TLB_DEMAP_VA(i64 %58)
  %60 = load i32, i32* %9, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @ASI_IMMU_DEMAP, align 4
  %63 = call i32 @stxa(i32 %61, i32 %62, i32 0)
  %64 = load i32, i32* @KERNBASE, align 4
  %65 = call i32 @flush(i32 %64)
  br label %66

66:                                               ; preds = %51
  %67 = load i64, i64* @PAGE_SIZE, align 8
  %68 = load i64, i64* %7, align 8
  %69 = add nsw i64 %68, %67
  store i64 %69, i64* %7, align 8
  br label %47

70:                                               ; preds = %47
  br label %71

71:                                               ; preds = %70, %3
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @intr_restore(i32 %72)
  %74 = load i8*, i8** %8, align 8
  %75 = call i32 @ipi_wait(i8* %74)
  ret void
}

declare dso_local i32 @PMAP_STATS_INC(i32) #1

declare dso_local i8* @ipi_tlb_range_demap(%struct.pmap*, i64, i64) #1

declare dso_local i32 @intr_disable(...) #1

declare dso_local i64 @CPU_ISSET(i32, i32*) #1

declare dso_local i32 @PCPU_GET(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @stxa(i32, i32, i32) #1

declare dso_local i32 @TLB_DEMAP_VA(i64) #1

declare dso_local i32 @flush(i32) #1

declare dso_local i32 @intr_restore(i32) #1

declare dso_local i32 @ipi_wait(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
