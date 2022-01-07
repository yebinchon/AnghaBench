; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xdma/extr_xdma_iommu.c_xdma_iommu_add_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xdma/extr_xdma_iommu.c_xdma_iommu_add_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.xdma_iommu }
%struct.xdma_iommu = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@M_FIRSTFIT = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Could not allocate virtual address.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xdma_iommu_add_entry(%struct.TYPE_3__* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.xdma_iommu*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @PAGE_SIZE, align 4
  %15 = call i32 @roundup2(i32 %13, i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store %struct.xdma_iommu* %17, %struct.xdma_iommu** %11, align 8
  %18 = load %struct.xdma_iommu*, %struct.xdma_iommu** %11, align 8
  %19 = getelementptr inbounds %struct.xdma_iommu, %struct.xdma_iommu* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @M_FIRSTFIT, align 4
  %23 = load i32, i32* @M_NOWAIT, align 4
  %24 = or i32 %22, %23
  %25 = call i64 @vmem_alloc(i32 %20, i32 %21, i32 %24, i32* %12)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = call i32 @panic(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %5
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @PAGE_SIZE, align 4
  %32 = sub nsw i32 %31, 1
  %33 = and i32 %30, %32
  %34 = load i32, i32* %12, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %12, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %29
  %39 = load i32, i32* %12, align 4
  %40 = load i32*, i32** %7, align 8
  store i32 %39, i32* %40, align 4
  br label %41

41:                                               ; preds = %38, %29
  %42 = load %struct.xdma_iommu*, %struct.xdma_iommu** %11, align 8
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @xdma_iommu_enter(%struct.xdma_iommu* %42, i32 %43, i32 %44, i32 %45, i32 %46)
  ret void
}

declare dso_local i32 @roundup2(i32, i32) #1

declare dso_local i64 @vmem_alloc(i32, i32, i32, i32*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @xdma_iommu_enter(%struct.xdma_iommu*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
