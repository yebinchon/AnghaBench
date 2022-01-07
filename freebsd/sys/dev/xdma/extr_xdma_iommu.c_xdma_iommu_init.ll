; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xdma/extr_xdma_iommu.c_xdma_iommu_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xdma/extr_xdma_iommu.c_xdma_iommu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdma_iommu = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [10 x i8] c"xDMA vmem\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@M_FIRSTFIT = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xdma_iommu_init(%struct.xdma_iommu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xdma_iommu*, align 8
  store %struct.xdma_iommu* %0, %struct.xdma_iommu** %3, align 8
  %4 = load %struct.xdma_iommu*, %struct.xdma_iommu** %3, align 8
  %5 = getelementptr inbounds %struct.xdma_iommu, %struct.xdma_iommu* %4, i32 0, i32 2
  %6 = call i32 @pmap_pinit(i32* %5)
  %7 = load i32, i32* @PAGE_SIZE, align 4
  %8 = load i32, i32* @PAGE_SIZE, align 4
  %9 = load i32, i32* @M_FIRSTFIT, align 4
  %10 = load i32, i32* @M_WAITOK, align 4
  %11 = or i32 %9, %10
  %12 = call i32* @vmem_create(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 %7, i32 %8, i32 %11)
  %13 = load %struct.xdma_iommu*, %struct.xdma_iommu** %3, align 8
  %14 = getelementptr inbounds %struct.xdma_iommu, %struct.xdma_iommu* %13, i32 0, i32 1
  store i32* %12, i32** %14, align 8
  %15 = load %struct.xdma_iommu*, %struct.xdma_iommu** %3, align 8
  %16 = getelementptr inbounds %struct.xdma_iommu, %struct.xdma_iommu* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @ENXIO, align 4
  store i32 %20, i32* %2, align 4
  br label %27

21:                                               ; preds = %1
  %22 = load %struct.xdma_iommu*, %struct.xdma_iommu** %3, align 8
  %23 = getelementptr inbounds %struct.xdma_iommu, %struct.xdma_iommu* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.xdma_iommu*, %struct.xdma_iommu** %3, align 8
  %26 = call i32 @XDMA_IOMMU_INIT(i32 %24, %struct.xdma_iommu* %25)
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %21, %19
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @pmap_pinit(i32*) #1

declare dso_local i32* @vmem_create(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XDMA_IOMMU_INIT(i32, %struct.xdma_iommu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
