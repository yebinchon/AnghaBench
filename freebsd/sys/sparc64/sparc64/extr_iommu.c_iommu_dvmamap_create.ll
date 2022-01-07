; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_iommu.c_iommu_dvmamap_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_iommu.c_iommu_dvmamap_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, %struct.iommu_state* }
%struct.iommu_state = type { i32 }
%struct.TYPE_10__ = type { i32 }

@BUS_DMA_COHERENT = common dso_local global i32 0, align 4
@DMF_COHERENT = common dso_local global i32 0, align 4
@IOMMU_MAX_PRE = common dso_local global i64 0, align 8
@IOMMU_MAX_PRE_SEG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32, %struct.TYPE_10__**)* @iommu_dvmamap_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iommu_dvmamap_create(%struct.TYPE_11__* %0, i32 %1, %struct.TYPE_10__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__**, align 8
  %8 = alloca %struct.iommu_state*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_10__** %2, %struct.TYPE_10__*** %7, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 2
  %17 = load %struct.iommu_state*, %struct.iommu_state** %16, align 8
  store %struct.iommu_state* %17, %struct.iommu_state** %8, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %19 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  %20 = call i32 @sparc64_dma_alloc_map(%struct.TYPE_11__* %18, %struct.TYPE_10__** %19)
  store i32 %20, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %12, align 4
  store i32 %23, i32* %4, align 4
  br label %106

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load i32, i32* @DMF_COHERENT, align 4
  %31 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %30
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %29, %24
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @IOMMU_SIZE_ROUNDUP(i32 %39)
  %41 = load i64, i64* @IOMMU_MAX_PRE, align 8
  %42 = call i64 @ulmin(i64 %40, i64 %41)
  store i64 %42, i64* %9, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %44 = load %struct.iommu_state*, %struct.iommu_state** %8, align 8
  %45 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = load i64, i64* %9, align 8
  %48 = call i32 @iommu_dvma_valloc(%struct.TYPE_11__* %43, %struct.iommu_state* %44, %struct.TYPE_10__* %46, i64 %47)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %106

52:                                               ; preds = %36
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @IOMMU_MAX_PRE_SEG, align 4
  %57 = call i32 @imin(i32 %55, i32 %56)
  store i32 %57, i32* %14, align 4
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %14, align 4
  %62 = sdiv i32 %60, %61
  %63 = sext i32 %62 to i64
  store i64 %63, i64* %10, align 8
  store i32 1, i32* %13, align 4
  br label %64

64:                                               ; preds = %94, %52
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %14, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load i64, i64* %9, align 8
  %70 = load i64, i64* @IOMMU_MAX_PRE, align 8
  %71 = icmp slt i64 %69, %70
  br label %72

72:                                               ; preds = %68, %64
  %73 = phi i1 [ false, %64 ], [ %71, %68 ]
  br i1 %73, label %74, label %97

74:                                               ; preds = %72
  %75 = load i64, i64* %10, align 8
  %76 = load i64, i64* @IOMMU_MAX_PRE, align 8
  %77 = load i64, i64* %9, align 8
  %78 = sub nsw i64 %76, %77
  %79 = call i64 @ulmin(i64 %75, i64 %78)
  %80 = call i64 @round_io_page(i64 %79)
  store i64 %80, i64* %11, align 8
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %82 = load %struct.iommu_state*, %struct.iommu_state** %8, align 8
  %83 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %83, align 8
  %85 = load i64, i64* %11, align 8
  %86 = call i32 @iommu_dvma_valloc(%struct.TYPE_11__* %81, %struct.iommu_state* %82, %struct.TYPE_10__* %84, i64 %85)
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %12, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %74
  br label %97

90:                                               ; preds = %74
  %91 = load i64, i64* %11, align 8
  %92 = load i64, i64* %9, align 8
  %93 = add nsw i64 %92, %91
  store i64 %93, i64* %9, align 8
  br label %94

94:                                               ; preds = %90
  %95 = load i32, i32* %13, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %13, align 4
  br label %64

97:                                               ; preds = %89, %72
  %98 = load %struct.iommu_state*, %struct.iommu_state** %8, align 8
  %99 = call i32 @IS_LOCK(%struct.iommu_state* %98)
  %100 = load %struct.iommu_state*, %struct.iommu_state** %8, align 8
  %101 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %101, align 8
  %103 = call i32 @iommu_map_insq(%struct.iommu_state* %100, %struct.TYPE_10__* %102)
  %104 = load %struct.iommu_state*, %struct.iommu_state** %8, align 8
  %105 = call i32 @IS_UNLOCK(%struct.iommu_state* %104)
  store i32 0, i32* %4, align 4
  br label %106

106:                                              ; preds = %97, %51, %22
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i32 @sparc64_dma_alloc_map(%struct.TYPE_11__*, %struct.TYPE_10__**) #1

declare dso_local i64 @ulmin(i64, i64) #1

declare dso_local i64 @IOMMU_SIZE_ROUNDUP(i32) #1

declare dso_local i32 @iommu_dvma_valloc(%struct.TYPE_11__*, %struct.iommu_state*, %struct.TYPE_10__*, i64) #1

declare dso_local i32 @imin(i32, i32) #1

declare dso_local i64 @round_io_page(i64) #1

declare dso_local i32 @IS_LOCK(%struct.iommu_state*) #1

declare dso_local i32 @iommu_map_insq(%struct.iommu_state*, %struct.TYPE_10__*) #1

declare dso_local i32 @IS_UNLOCK(%struct.iommu_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
