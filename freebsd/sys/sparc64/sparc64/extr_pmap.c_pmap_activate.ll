; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_pmap.c_pmap_activate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_pmap.c_pmap_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.vmspace* }
%struct.vmspace = type { i32 }
%struct.pmap = type { i32*, i32, i32 }

@tlb_ctx = common dso_local global i32 0, align 4
@tlb_ctx_max = common dso_local global i32 0, align 4
@tlb_ctx_min = common dso_local global i32 0, align 4
@curcpu = common dso_local global i64 0, align 8
@cpuid = common dso_local global i32 0, align 4
@pmap = common dso_local global i32 0, align 4
@AA_DMMU_TSB = common dso_local global i32 0, align 4
@ASI_DMMU = common dso_local global i32 0, align 4
@AA_IMMU_TSB = common dso_local global i32 0, align 4
@ASI_IMMU = common dso_local global i32 0, align 4
@AA_DMMU_PCXR = common dso_local global i32 0, align 4
@TLB_CXR_PGSZ_MASK = common dso_local global i32 0, align 4
@KERNBASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_activate(%struct.thread* %0) #0 {
  %2 = alloca %struct.thread*, align 8
  %3 = alloca %struct.vmspace*, align 8
  %4 = alloca %struct.pmap*, align 8
  %5 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %2, align 8
  %6 = call i32 (...) @critical_enter()
  %7 = load %struct.thread*, %struct.thread** %2, align 8
  %8 = getelementptr inbounds %struct.thread, %struct.thread* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.vmspace*, %struct.vmspace** %10, align 8
  store %struct.vmspace* %11, %struct.vmspace** %3, align 8
  %12 = load %struct.vmspace*, %struct.vmspace** %3, align 8
  %13 = call %struct.pmap* @vmspace_pmap(%struct.vmspace* %12)
  store %struct.pmap* %13, %struct.pmap** %4, align 8
  %14 = load i32, i32* @tlb_ctx, align 4
  %15 = call i32 @PCPU_GET(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @tlb_ctx_max, align 4
  %18 = call i32 @PCPU_GET(i32 %17)
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = call i32 (...) @tlb_flush_user()
  %22 = load i32, i32* @tlb_ctx_min, align 4
  %23 = call i32 @PCPU_GET(i32 %22)
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %20, %1
  %25 = load i32, i32* @tlb_ctx, align 4
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  %28 = call i32 (i32, ...) @PCPU_SET(i32 %25, i32 %27)
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.pmap*, %struct.pmap** %4, align 8
  %31 = getelementptr inbounds %struct.pmap, %struct.pmap* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* @curcpu, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  store i32 %29, i32* %34, align 4
  %35 = load i32, i32* @cpuid, align 4
  %36 = call i32 @PCPU_GET(i32 %35)
  %37 = load %struct.pmap*, %struct.pmap** %4, align 8
  %38 = getelementptr inbounds %struct.pmap, %struct.pmap* %37, i32 0, i32 2
  %39 = call i32 @CPU_SET(i32 %36, i32* %38)
  %40 = load i32, i32* @pmap, align 4
  %41 = load %struct.pmap*, %struct.pmap** %4, align 8
  %42 = call i32 (i32, ...) @PCPU_SET(i32 %40, %struct.pmap* %41)
  %43 = load i32, i32* @AA_DMMU_TSB, align 4
  %44 = load i32, i32* @ASI_DMMU, align 4
  %45 = load %struct.pmap*, %struct.pmap** %4, align 8
  %46 = getelementptr inbounds %struct.pmap, %struct.pmap* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @stxa(i32 %43, i32 %44, i32 %47)
  %49 = load i32, i32* @AA_IMMU_TSB, align 4
  %50 = load i32, i32* @ASI_IMMU, align 4
  %51 = load %struct.pmap*, %struct.pmap** %4, align 8
  %52 = getelementptr inbounds %struct.pmap, %struct.pmap* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @stxa(i32 %49, i32 %50, i32 %53)
  %55 = load i32, i32* @AA_DMMU_PCXR, align 4
  %56 = load i32, i32* @ASI_DMMU, align 4
  %57 = load i32, i32* @AA_DMMU_PCXR, align 4
  %58 = load i32, i32* @ASI_DMMU, align 4
  %59 = call i32 @ldxa(i32 %57, i32 %58)
  %60 = load i32, i32* @TLB_CXR_PGSZ_MASK, align 4
  %61 = and i32 %59, %60
  %62 = load i32, i32* %5, align 4
  %63 = or i32 %61, %62
  %64 = call i32 @stxa(i32 %55, i32 %56, i32 %63)
  %65 = load i32, i32* @KERNBASE, align 4
  %66 = call i32 @flush(i32 %65)
  %67 = call i32 (...) @critical_exit()
  ret void
}

declare dso_local i32 @critical_enter(...) #1

declare dso_local %struct.pmap* @vmspace_pmap(%struct.vmspace*) #1

declare dso_local i32 @PCPU_GET(i32) #1

declare dso_local i32 @tlb_flush_user(...) #1

declare dso_local i32 @PCPU_SET(i32, ...) #1

declare dso_local i32 @CPU_SET(i32, i32*) #1

declare dso_local i32 @stxa(i32, i32, i32) #1

declare dso_local i32 @ldxa(i32, i32) #1

declare dso_local i32 @flush(i32) #1

declare dso_local i32 @critical_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
