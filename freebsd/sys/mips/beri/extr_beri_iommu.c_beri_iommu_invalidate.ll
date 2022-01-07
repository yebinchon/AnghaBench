; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/beri/extr_beri_iommu.c_beri_iommu_invalidate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/beri/extr_beri_iommu.c_beri_iommu_invalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beri_iommu_softc = type { i32* }

@IOMMU_INVALIDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.beri_iommu_softc*, i32)* @beri_iommu_invalidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @beri_iommu_invalidate(%struct.beri_iommu_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.beri_iommu_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.beri_iommu_softc* %0, %struct.beri_iommu_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.beri_iommu_softc*, %struct.beri_iommu_softc** %3, align 8
  %6 = getelementptr inbounds %struct.beri_iommu_softc, %struct.beri_iommu_softc* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @IOMMU_INVALIDATE, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @htole64(i32 %11)
  %13 = call i32 @bus_write_8(i32 %9, i32 %10, i32 %12)
  ret void
}

declare dso_local i32 @bus_write_8(i32, i32, i32) #1

declare dso_local i32 @htole64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
