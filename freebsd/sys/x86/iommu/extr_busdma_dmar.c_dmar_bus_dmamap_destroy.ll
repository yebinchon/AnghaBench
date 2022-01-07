; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_busdma_dmar.c_dmar_bus_dmamap_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_busdma_dmar.c_dmar_bus_dmamap_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bus_dma_tag_dmar = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.dmar_domain* }
%struct.dmar_domain = type { i32 }
%struct.bus_dmamap_dmar = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@M_DMAR_DMAMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @dmar_bus_dmamap_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmar_bus_dmamap_destroy(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.bus_dma_tag_dmar*, align 8
  %7 = alloca %struct.bus_dmamap_dmar*, align 8
  %8 = alloca %struct.dmar_domain*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = inttoptr i64 %9 to %struct.bus_dma_tag_dmar*
  store %struct.bus_dma_tag_dmar* %10, %struct.bus_dma_tag_dmar** %6, align 8
  %11 = load i64, i64* %5, align 8
  %12 = inttoptr i64 %11 to %struct.bus_dmamap_dmar*
  store %struct.bus_dmamap_dmar* %12, %struct.bus_dmamap_dmar** %7, align 8
  %13 = load %struct.bus_dmamap_dmar*, %struct.bus_dmamap_dmar** %7, align 8
  %14 = icmp ne %struct.bus_dmamap_dmar* %13, null
  br i1 %14, label %15, label %37

15:                                               ; preds = %2
  %16 = load %struct.bus_dma_tag_dmar*, %struct.bus_dma_tag_dmar** %6, align 8
  %17 = getelementptr inbounds %struct.bus_dma_tag_dmar, %struct.bus_dma_tag_dmar* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.dmar_domain*, %struct.dmar_domain** %19, align 8
  store %struct.dmar_domain* %20, %struct.dmar_domain** %8, align 8
  %21 = load %struct.dmar_domain*, %struct.dmar_domain** %8, align 8
  %22 = call i32 @DMAR_DOMAIN_LOCK(%struct.dmar_domain* %21)
  %23 = load %struct.bus_dmamap_dmar*, %struct.bus_dmamap_dmar** %7, align 8
  %24 = getelementptr inbounds %struct.bus_dmamap_dmar, %struct.bus_dmamap_dmar* %23, i32 0, i32 0
  %25 = call i32 @TAILQ_EMPTY(i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %15
  %28 = load %struct.dmar_domain*, %struct.dmar_domain** %8, align 8
  %29 = call i32 @DMAR_DOMAIN_UNLOCK(%struct.dmar_domain* %28)
  %30 = load i32, i32* @EBUSY, align 4
  store i32 %30, i32* %3, align 4
  br label %42

31:                                               ; preds = %15
  %32 = load %struct.dmar_domain*, %struct.dmar_domain** %8, align 8
  %33 = call i32 @DMAR_DOMAIN_UNLOCK(%struct.dmar_domain* %32)
  %34 = load %struct.bus_dmamap_dmar*, %struct.bus_dmamap_dmar** %7, align 8
  %35 = load i32, i32* @M_DMAR_DMAMAP, align 4
  %36 = call i32 @free_domain(%struct.bus_dmamap_dmar* %34, i32 %35)
  br label %37

37:                                               ; preds = %31, %2
  %38 = load %struct.bus_dma_tag_dmar*, %struct.bus_dma_tag_dmar** %6, align 8
  %39 = getelementptr inbounds %struct.bus_dma_tag_dmar, %struct.bus_dma_tag_dmar* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %39, align 8
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %37, %27
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @DMAR_DOMAIN_LOCK(%struct.dmar_domain*) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @DMAR_DOMAIN_UNLOCK(%struct.dmar_domain*) #1

declare dso_local i32 @free_domain(%struct.bus_dmamap_dmar*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
