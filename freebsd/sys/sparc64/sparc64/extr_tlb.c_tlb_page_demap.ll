; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_tlb.c_tlb_page_demap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_tlb.c_tlb_page_demap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmap = type { i32*, i32 }

@tlb_npage_demap = common dso_local global i32 0, align 4
@cpuid = common dso_local global i32 0, align 4
@curcpu = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"tlb_page_demap: inactive pmap?\00", align 1
@kernel_pmap = common dso_local global %struct.pmap* null, align 8
@TLB_DEMAP_NUCLEUS = common dso_local global i32 0, align 4
@TLB_DEMAP_PAGE = common dso_local global i32 0, align 4
@TLB_DEMAP_PRIMARY = common dso_local global i32 0, align 4
@ASI_DMMU_DEMAP = common dso_local global i32 0, align 4
@ASI_IMMU_DEMAP = common dso_local global i32 0, align 4
@KERNBASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tlb_page_demap(%struct.pmap* %0, i32 %1) #0 {
  %3 = alloca %struct.pmap*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.pmap* %0, %struct.pmap** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @tlb_npage_demap, align 4
  %9 = call i32 @PMAP_STATS_INC(i32 %8)
  %10 = load %struct.pmap*, %struct.pmap** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i8* @ipi_tlb_page_demap(%struct.pmap* %10, i32 %11)
  store i8* %12, i8** %6, align 8
  %13 = call i32 (...) @intr_disable()
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* @cpuid, align 4
  %15 = call i32 @PCPU_GET(i32 %14)
  %16 = load %struct.pmap*, %struct.pmap** %3, align 8
  %17 = getelementptr inbounds %struct.pmap, %struct.pmap* %16, i32 0, i32 1
  %18 = call i64 @CPU_ISSET(i32 %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %56

20:                                               ; preds = %2
  %21 = load %struct.pmap*, %struct.pmap** %3, align 8
  %22 = getelementptr inbounds %struct.pmap, %struct.pmap* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* @curcpu, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, -1
  %28 = zext i1 %27 to i32
  %29 = call i32 @KASSERT(i32 %28, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.pmap*, %struct.pmap** %3, align 8
  %31 = load %struct.pmap*, %struct.pmap** @kernel_pmap, align 8
  %32 = icmp eq %struct.pmap* %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %20
  %34 = load i32, i32* @TLB_DEMAP_NUCLEUS, align 4
  %35 = load i32, i32* @TLB_DEMAP_PAGE, align 4
  %36 = or i32 %34, %35
  store i32 %36, i32* %5, align 4
  br label %41

37:                                               ; preds = %20
  %38 = load i32, i32* @TLB_DEMAP_PRIMARY, align 4
  %39 = load i32, i32* @TLB_DEMAP_PAGE, align 4
  %40 = or i32 %38, %39
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %37, %33
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @TLB_DEMAP_VA(i32 %42)
  %44 = load i32, i32* %5, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @ASI_DMMU_DEMAP, align 4
  %47 = call i32 @stxa(i32 %45, i32 %46, i32 0)
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @TLB_DEMAP_VA(i32 %48)
  %50 = load i32, i32* %5, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @ASI_IMMU_DEMAP, align 4
  %53 = call i32 @stxa(i32 %51, i32 %52, i32 0)
  %54 = load i32, i32* @KERNBASE, align 4
  %55 = call i32 @flush(i32 %54)
  br label %56

56:                                               ; preds = %41, %2
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @intr_restore(i32 %57)
  %59 = load i8*, i8** %6, align 8
  %60 = call i32 @ipi_wait(i8* %59)
  ret void
}

declare dso_local i32 @PMAP_STATS_INC(i32) #1

declare dso_local i8* @ipi_tlb_page_demap(%struct.pmap*, i32) #1

declare dso_local i32 @intr_disable(...) #1

declare dso_local i64 @CPU_ISSET(i32, i32*) #1

declare dso_local i32 @PCPU_GET(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @stxa(i32, i32, i32) #1

declare dso_local i32 @TLB_DEMAP_VA(i32) #1

declare dso_local i32 @flush(i32) #1

declare dso_local i32 @intr_restore(i32) #1

declare dso_local i32 @ipi_wait(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
