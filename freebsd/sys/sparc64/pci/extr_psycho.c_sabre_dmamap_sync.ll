; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_psycho.c_sabre_dmamap_sync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_psycho.c_sabre_dmamap_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.iommu_state* }
%struct.iommu_state = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@DMF_LOADED = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@PSR_DMA_WRITE_SYNC = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@Sync = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.TYPE_5__*, i32)* @sabre_dmamap_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sabre_dmamap_sync(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iommu_state*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load %struct.iommu_state*, %struct.iommu_state** %9, align 8
  store %struct.iommu_state* %10, %struct.iommu_state** %7, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @DMF_LOADED, align 4
  %15 = and i32 %13, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %40

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %18
  %24 = load %struct.iommu_state*, %struct.iommu_state** %7, align 8
  %25 = getelementptr inbounds %struct.iommu_state, %struct.iommu_state* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.iommu_state*, %struct.iommu_state** %7, align 8
  %28 = getelementptr inbounds %struct.iommu_state, %struct.iommu_state* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @PSR_DMA_WRITE_SYNC, align 4
  %31 = call i32 @bus_space_read_8(i32 %26, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %23, %18
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* @Sync, align 4
  %39 = call i32 @membar(i32 %38)
  br label %40

40:                                               ; preds = %17, %37, %32
  ret void
}

declare dso_local i32 @bus_space_read_8(i32, i32, i32) #1

declare dso_local i32 @membar(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
