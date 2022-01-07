; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_iommu.c_iommu_dvma_vfree.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_iommu.c_iommu_dvma_vfree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_state = type { i32 }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iommu_state*, %struct.TYPE_6__*)* @iommu_dvma_vfree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iommu_dvma_vfree(%struct.iommu_state* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %struct.iommu_state*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  store %struct.iommu_state* %0, %struct.iommu_state** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %5 = load %struct.iommu_state*, %struct.iommu_state** %3, align 8
  %6 = call i32 @IS_LOCK(%struct.iommu_state* %5)
  %7 = load %struct.iommu_state*, %struct.iommu_state** %3, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %9 = call i32 @iommu_map_remq(%struct.iommu_state* %7, %struct.TYPE_6__* %8)
  %10 = load %struct.iommu_state*, %struct.iommu_state** %3, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = call i32 @iommu_dvmamap_vunload(%struct.iommu_state* %10, %struct.TYPE_6__* %11)
  %13 = load %struct.iommu_state*, %struct.iommu_state** %3, align 8
  %14 = call i32 @IS_UNLOCK(%struct.iommu_state* %13)
  br label %15

15:                                               ; preds = %21, %2
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = call i32 @SLIST_EMPTY(i32* %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br i1 %20, label %21, label %27

21:                                               ; preds = %15
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = call i32 @SLIST_FIRST(i32* %24)
  %26 = call i32 @iommu_dvma_vfree_res(%struct.TYPE_6__* %22, i32 %25)
  br label %15

27:                                               ; preds = %15
  ret void
}

declare dso_local i32 @IS_LOCK(%struct.iommu_state*) #1

declare dso_local i32 @iommu_map_remq(%struct.iommu_state*, %struct.TYPE_6__*) #1

declare dso_local i32 @iommu_dvmamap_vunload(%struct.iommu_state*, %struct.TYPE_6__*) #1

declare dso_local i32 @IS_UNLOCK(%struct.iommu_state*) #1

declare dso_local i32 @SLIST_EMPTY(i32*) #1

declare dso_local i32 @iommu_dvma_vfree_res(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @SLIST_FIRST(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
