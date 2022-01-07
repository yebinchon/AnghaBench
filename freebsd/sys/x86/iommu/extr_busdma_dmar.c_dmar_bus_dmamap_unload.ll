; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_busdma_dmar.c_dmar_bus_dmamap_unload.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_busdma_dmar.c_dmar_bus_dmamap_unload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bus_dma_tag_dmar = type { %struct.dmar_ctx* }
%struct.dmar_ctx = type { i32, %struct.dmar_domain* }
%struct.dmar_domain = type { i32, %struct.TYPE_2__*, %struct.dmar_map_entries_tailq }
%struct.TYPE_2__ = type { i32 }
%struct.dmar_map_entries_tailq = type { i32 }
%struct.bus_dmamap_dmar = type { i32 }

@dmamap_link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"lazy dmar_ctx_unload %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @dmar_bus_dmamap_unload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmar_bus_dmamap_unload(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.bus_dma_tag_dmar*, align 8
  %6 = alloca %struct.bus_dmamap_dmar*, align 8
  %7 = alloca %struct.dmar_ctx*, align 8
  %8 = alloca %struct.dmar_domain*, align 8
  %9 = alloca %struct.dmar_map_entries_tailq, align 4
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load i64, i64* %3, align 8
  %11 = inttoptr i64 %10 to %struct.bus_dma_tag_dmar*
  store %struct.bus_dma_tag_dmar* %11, %struct.bus_dma_tag_dmar** %5, align 8
  %12 = load i64, i64* %4, align 8
  %13 = inttoptr i64 %12 to %struct.bus_dmamap_dmar*
  store %struct.bus_dmamap_dmar* %13, %struct.bus_dmamap_dmar** %6, align 8
  %14 = load %struct.bus_dma_tag_dmar*, %struct.bus_dma_tag_dmar** %5, align 8
  %15 = getelementptr inbounds %struct.bus_dma_tag_dmar, %struct.bus_dma_tag_dmar* %14, i32 0, i32 0
  %16 = load %struct.dmar_ctx*, %struct.dmar_ctx** %15, align 8
  store %struct.dmar_ctx* %16, %struct.dmar_ctx** %7, align 8
  %17 = load %struct.dmar_ctx*, %struct.dmar_ctx** %7, align 8
  %18 = getelementptr inbounds %struct.dmar_ctx, %struct.dmar_ctx* %17, i32 0, i32 1
  %19 = load %struct.dmar_domain*, %struct.dmar_domain** %18, align 8
  store %struct.dmar_domain* %19, %struct.dmar_domain** %8, align 8
  %20 = load %struct.dmar_ctx*, %struct.dmar_ctx** %7, align 8
  %21 = getelementptr inbounds %struct.dmar_ctx, %struct.dmar_ctx* %20, i32 0, i32 0
  %22 = call i32 @atomic_add_long(i32* %21, i32 1)
  %23 = call i32 @TAILQ_INIT(%struct.dmar_map_entries_tailq* %9)
  %24 = load %struct.dmar_domain*, %struct.dmar_domain** %8, align 8
  %25 = call i32 @DMAR_DOMAIN_LOCK(%struct.dmar_domain* %24)
  %26 = load %struct.bus_dmamap_dmar*, %struct.bus_dmamap_dmar** %6, align 8
  %27 = getelementptr inbounds %struct.bus_dmamap_dmar, %struct.bus_dmamap_dmar* %26, i32 0, i32 0
  %28 = load i32, i32* @dmamap_link, align 4
  %29 = call i32 @TAILQ_CONCAT(%struct.dmar_map_entries_tailq* %9, i32* %27, i32 %28)
  %30 = load %struct.dmar_domain*, %struct.dmar_domain** %8, align 8
  %31 = call i32 @DMAR_DOMAIN_UNLOCK(%struct.dmar_domain* %30)
  %32 = call i32 (...) @THREAD_NO_SLEEPING()
  %33 = load %struct.dmar_domain*, %struct.dmar_domain** %8, align 8
  %34 = call i32 @dmar_domain_unload(%struct.dmar_domain* %33, %struct.dmar_map_entries_tailq* %9, i32 0)
  %35 = call i32 (...) @THREAD_SLEEPING_OK()
  %36 = call i32 @TAILQ_EMPTY(%struct.dmar_map_entries_tailq* %9)
  %37 = load %struct.dmar_ctx*, %struct.dmar_ctx** %7, align 8
  %38 = bitcast %struct.dmar_ctx* %37 to i8*
  %39 = call i32 @KASSERT(i32 %36, i8* %38)
  ret void
}

declare dso_local i32 @atomic_add_long(i32*, i32) #1

declare dso_local i32 @TAILQ_INIT(%struct.dmar_map_entries_tailq*) #1

declare dso_local i32 @DMAR_DOMAIN_LOCK(%struct.dmar_domain*) #1

declare dso_local i32 @TAILQ_CONCAT(%struct.dmar_map_entries_tailq*, i32*, i32) #1

declare dso_local i32 @DMAR_DOMAIN_UNLOCK(%struct.dmar_domain*) #1

declare dso_local i32 @THREAD_NO_SLEEPING(...) #1

declare dso_local i32 @dmar_domain_unload(%struct.dmar_domain*, %struct.dmar_map_entries_tailq*, i32) #1

declare dso_local i32 @THREAD_SLEEPING_OK(...) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @TAILQ_EMPTY(%struct.dmar_map_entries_tailq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
