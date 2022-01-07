; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xdma/extr_xdma_iommu.c_xdma_iommu_remove_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xdma/extr_xdma_iommu.c_xdma_iommu_remove_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.xdma_iommu }
%struct.xdma_iommu = type { i32, i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xdma_iommu_remove_entry(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.xdma_iommu*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store %struct.xdma_iommu* %7, %struct.xdma_iommu** %5, align 8
  %8 = load i32, i32* @PAGE_SIZE, align 4
  %9 = sub nsw i32 %8, 1
  %10 = xor i32 %9, -1
  %11 = load i32, i32* %4, align 4
  %12 = and i32 %11, %10
  store i32 %12, i32* %4, align 4
  %13 = load %struct.xdma_iommu*, %struct.xdma_iommu** %5, align 8
  %14 = getelementptr inbounds %struct.xdma_iommu, %struct.xdma_iommu* %13, i32 0, i32 2
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @PAGE_SIZE, align 4
  %18 = add nsw i32 %16, %17
  %19 = call i32 @pmap_remove(i32* %14, i32 %15, i32 %18)
  %20 = load %struct.xdma_iommu*, %struct.xdma_iommu** %5, align 8
  %21 = getelementptr inbounds %struct.xdma_iommu, %struct.xdma_iommu* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.xdma_iommu*, %struct.xdma_iommu** %5, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @XDMA_IOMMU_REMOVE(i32 %22, %struct.xdma_iommu* %23, i32 %24)
  %26 = load %struct.xdma_iommu*, %struct.xdma_iommu** %5, align 8
  %27 = getelementptr inbounds %struct.xdma_iommu, %struct.xdma_iommu* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @PAGE_SIZE, align 4
  %31 = call i32 @vmem_free(i32 %28, i32 %29, i32 %30)
  ret void
}

declare dso_local i32 @pmap_remove(i32*, i32, i32) #1

declare dso_local i32 @XDMA_IOMMU_REMOVE(i32, %struct.xdma_iommu*, i32) #1

declare dso_local i32 @vmem_free(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
