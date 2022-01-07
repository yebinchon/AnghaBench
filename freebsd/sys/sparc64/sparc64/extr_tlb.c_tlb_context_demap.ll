; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_tlb.c_tlb_context_demap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_tlb.c_tlb_context_demap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmap = type { i32*, i32 }

@tlb_ncontext_demap = common dso_local global i32 0, align 4
@cpuid = common dso_local global i32 0, align 4
@curcpu = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"tlb_context_demap: inactive pmap?\00", align 1
@TLB_DEMAP_PRIMARY = common dso_local global i32 0, align 4
@TLB_DEMAP_CONTEXT = common dso_local global i32 0, align 4
@ASI_DMMU_DEMAP = common dso_local global i32 0, align 4
@ASI_IMMU_DEMAP = common dso_local global i32 0, align 4
@KERNBASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tlb_context_demap(%struct.pmap* %0) #0 {
  %2 = alloca %struct.pmap*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store %struct.pmap* %0, %struct.pmap** %2, align 8
  %5 = load i32, i32* @tlb_ncontext_demap, align 4
  %6 = call i32 @PMAP_STATS_INC(i32 %5)
  %7 = load %struct.pmap*, %struct.pmap** %2, align 8
  %8 = call i8* @ipi_tlb_context_demap(%struct.pmap* %7)
  store i8* %8, i8** %3, align 8
  %9 = call i32 (...) @intr_disable()
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* @cpuid, align 4
  %11 = call i32 @PCPU_GET(i32 %10)
  %12 = load %struct.pmap*, %struct.pmap** %2, align 8
  %13 = getelementptr inbounds %struct.pmap, %struct.pmap* %12, i32 0, i32 1
  %14 = call i64 @CPU_ISSET(i32 %11, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %38

16:                                               ; preds = %1
  %17 = load %struct.pmap*, %struct.pmap** %2, align 8
  %18 = getelementptr inbounds %struct.pmap, %struct.pmap* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* @curcpu, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, -1
  %24 = zext i1 %23 to i32
  %25 = call i32 @KASSERT(i32 %24, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @TLB_DEMAP_PRIMARY, align 4
  %27 = load i32, i32* @TLB_DEMAP_CONTEXT, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @ASI_DMMU_DEMAP, align 4
  %30 = call i32 @stxa(i32 %28, i32 %29, i32 0)
  %31 = load i32, i32* @TLB_DEMAP_PRIMARY, align 4
  %32 = load i32, i32* @TLB_DEMAP_CONTEXT, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @ASI_IMMU_DEMAP, align 4
  %35 = call i32 @stxa(i32 %33, i32 %34, i32 0)
  %36 = load i32, i32* @KERNBASE, align 4
  %37 = call i32 @flush(i32 %36)
  br label %38

38:                                               ; preds = %16, %1
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @intr_restore(i32 %39)
  %41 = load i8*, i8** %3, align 8
  %42 = call i32 @ipi_wait(i8* %41)
  ret void
}

declare dso_local i32 @PMAP_STATS_INC(i32) #1

declare dso_local i8* @ipi_tlb_context_demap(%struct.pmap*) #1

declare dso_local i32 @intr_disable(...) #1

declare dso_local i64 @CPU_ISSET(i32, i32*) #1

declare dso_local i32 @PCPU_GET(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @stxa(i32, i32, i32) #1

declare dso_local i32 @flush(i32) #1

declare dso_local i32 @intr_restore(i32) #1

declare dso_local i32 @ipi_wait(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
