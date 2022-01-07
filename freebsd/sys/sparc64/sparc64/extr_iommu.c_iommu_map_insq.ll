; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_iommu.c_iommu_map_insq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_iommu.c_iommu_map_insq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_state = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@dm_maplruq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iommu_state*, %struct.TYPE_5__*)* @iommu_map_insq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iommu_map_insq(%struct.iommu_state* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca %struct.iommu_state*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  store %struct.iommu_state* %0, %struct.iommu_state** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %5 = load %struct.iommu_state*, %struct.iommu_state** %3, align 8
  %6 = call i32 @IS_LOCK_ASSERT(%struct.iommu_state* %5)
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %9 = call i32 @SLIST_EMPTY(i32* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %30, label %11

11:                                               ; preds = %2
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = load %struct.iommu_state*, %struct.iommu_state** %3, align 8
  %18 = getelementptr inbounds %struct.iommu_state, %struct.iommu_state* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = load i32, i32* @dm_maplruq, align 4
  %21 = call i32 @TAILQ_REMOVE(i32* %18, %struct.TYPE_5__* %19, i32 %20)
  br label %22

22:                                               ; preds = %16, %11
  %23 = load %struct.iommu_state*, %struct.iommu_state** %3, align 8
  %24 = getelementptr inbounds %struct.iommu_state, %struct.iommu_state* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = load i32, i32* @dm_maplruq, align 4
  %27 = call i32 @TAILQ_INSERT_TAIL(i32* %24, %struct.TYPE_5__* %25, i32 %26)
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store i32 1, i32* %29, align 4
  br label %30

30:                                               ; preds = %22, %2
  ret void
}

declare dso_local i32 @IS_LOCK_ASSERT(%struct.iommu_state*) #1

declare dso_local i32 @SLIST_EMPTY(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
