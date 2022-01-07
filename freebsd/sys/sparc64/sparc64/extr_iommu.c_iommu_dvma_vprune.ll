; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_iommu.c_iommu_dvma_vprune.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_iommu.c_iommu_dvma_vprune.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_state = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.bus_dmamap_res = type { i64 }

@dr_link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iommu_state*, %struct.TYPE_5__*)* @iommu_dvma_vprune to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iommu_dvma_vprune(%struct.iommu_state* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca %struct.iommu_state*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.bus_dmamap_res*, align 8
  %6 = alloca %struct.bus_dmamap_res*, align 8
  %7 = alloca i32, align 4
  store %struct.iommu_state* %0, %struct.iommu_state** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.iommu_state*, %struct.iommu_state** %3, align 8
  %9 = call i32 @IS_LOCK_ASSERT(%struct.iommu_state* %8)
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = call %struct.bus_dmamap_res* @SLIST_FIRST(i32* %11)
  store %struct.bus_dmamap_res* %12, %struct.bus_dmamap_res** %5, align 8
  br label %13

13:                                               ; preds = %35, %2
  %14 = load %struct.bus_dmamap_res*, %struct.bus_dmamap_res** %5, align 8
  %15 = icmp ne %struct.bus_dmamap_res* %14, null
  br i1 %15, label %16, label %37

16:                                               ; preds = %13
  %17 = load %struct.bus_dmamap_res*, %struct.bus_dmamap_res** %5, align 8
  %18 = load i32, i32* @dr_link, align 4
  %19 = call %struct.bus_dmamap_res* @SLIST_NEXT(%struct.bus_dmamap_res* %17, i32 %18)
  store %struct.bus_dmamap_res* %19, %struct.bus_dmamap_res** %6, align 8
  %20 = load %struct.bus_dmamap_res*, %struct.bus_dmamap_res** %5, align 8
  %21 = getelementptr inbounds %struct.bus_dmamap_res, %struct.bus_dmamap_res* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %16
  %25 = load %struct.bus_dmamap_res*, %struct.bus_dmamap_res** %5, align 8
  %26 = call i64 @BDR_SIZE(%struct.bus_dmamap_res* %25)
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %28, %26
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %7, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %32 = load %struct.bus_dmamap_res*, %struct.bus_dmamap_res** %5, align 8
  %33 = call i32 @iommu_dvma_vfree_res(%struct.TYPE_5__* %31, %struct.bus_dmamap_res* %32)
  br label %34

34:                                               ; preds = %24, %16
  br label %35

35:                                               ; preds = %34
  %36 = load %struct.bus_dmamap_res*, %struct.bus_dmamap_res** %6, align 8
  store %struct.bus_dmamap_res* %36, %struct.bus_dmamap_res** %5, align 8
  br label %13

37:                                               ; preds = %13
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = call i64 @SLIST_EMPTY(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load %struct.iommu_state*, %struct.iommu_state** %3, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %45 = call i32 @iommu_map_remq(%struct.iommu_state* %43, %struct.TYPE_5__* %44)
  br label %46

46:                                               ; preds = %42, %37
  %47 = load i32, i32* %7, align 4
  ret i32 %47
}

declare dso_local i32 @IS_LOCK_ASSERT(%struct.iommu_state*) #1

declare dso_local %struct.bus_dmamap_res* @SLIST_FIRST(i32*) #1

declare dso_local %struct.bus_dmamap_res* @SLIST_NEXT(%struct.bus_dmamap_res*, i32) #1

declare dso_local i64 @BDR_SIZE(%struct.bus_dmamap_res*) #1

declare dso_local i32 @iommu_dvma_vfree_res(%struct.TYPE_5__*, %struct.bus_dmamap_res*) #1

declare dso_local i64 @SLIST_EMPTY(i32*) #1

declare dso_local i32 @iommu_map_remq(%struct.iommu_state*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
