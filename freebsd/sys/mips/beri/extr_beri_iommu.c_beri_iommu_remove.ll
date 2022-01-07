; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/beri/extr_beri_iommu.c_beri_iommu_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/beri/extr_beri_iommu.c_beri_iommu_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdma_iommu = type { i32 }
%struct.beri_iommu_softc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.xdma_iommu*, i32)* @beri_iommu_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @beri_iommu_remove(i32 %0, %struct.xdma_iommu* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xdma_iommu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.beri_iommu_softc*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.xdma_iommu* %1, %struct.xdma_iommu** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.beri_iommu_softc* @device_get_softc(i32 %8)
  store %struct.beri_iommu_softc* %9, %struct.beri_iommu_softc** %7, align 8
  %10 = load %struct.beri_iommu_softc*, %struct.beri_iommu_softc** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @beri_iommu_invalidate(%struct.beri_iommu_softc* %10, i32 %11)
  ret i32 0
}

declare dso_local %struct.beri_iommu_softc* @device_get_softc(i32) #1

declare dso_local i32 @beri_iommu_invalidate(%struct.beri_iommu_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
