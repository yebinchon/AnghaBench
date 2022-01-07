; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/beri/extr_beri_iommu.c_beri_iommu_enter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/beri/extr_beri_iommu.c_beri_iommu_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdma_iommu = type { i32 }
%struct.beri_iommu_softc = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"pte is NULL\0A\00", align 1
@PTE_C_MASK = common dso_local global i32 0, align 4
@VM_MEMATTR_UNCACHEABLE = common dso_local global i32 0, align 4
@PTE_V = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.xdma_iommu*, i32, i32)* @beri_iommu_enter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @beri_iommu_enter(i32 %0, %struct.xdma_iommu* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xdma_iommu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.beri_iommu_softc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.xdma_iommu* %1, %struct.xdma_iommu** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.beri_iommu_softc* @device_get_softc(i32 %14)
  store %struct.beri_iommu_softc* %15, %struct.beri_iommu_softc** %9, align 8
  %16 = load %struct.xdma_iommu*, %struct.xdma_iommu** %6, align 8
  %17 = getelementptr inbounds %struct.xdma_iommu, %struct.xdma_iommu* %16, i32 0, i32 0
  store i32* %17, i32** %13, align 8
  %18 = load i32*, i32** %13, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32* @pmap_pte(i32* %18, i32 %19)
  store i32* %20, i32** %12, align 8
  %21 = load i32*, i32** %12, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = call i32 @panic(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %4
  %26 = load i32*, i32** %12, align 8
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @PTE_C_MASK, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* @VM_MEMATTR_UNCACHEABLE, align 4
  %33 = call i32 @PTE_C(i32 %32)
  %34 = load i32, i32* %11, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load i32*, i32** %12, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i32*, i32** %12, align 8
  %39 = ptrtoint i32* %38 to i32
  %40 = call i32 @mips_dcache_wbinv_range(i32 %39, i32 4)
  %41 = load i32, i32* @PTE_V, align 4
  %42 = call i64 @pte_test(i32* %10, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %25
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load %struct.beri_iommu_softc*, %struct.beri_iommu_softc** %9, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @beri_iommu_invalidate(%struct.beri_iommu_softc* %49, i32 %50)
  br label %52

52:                                               ; preds = %48, %44, %25
  ret i32 0
}

declare dso_local %struct.beri_iommu_softc* @device_get_softc(i32) #1

declare dso_local i32* @pmap_pte(i32*, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @PTE_C(i32) #1

declare dso_local i32 @mips_dcache_wbinv_range(i32, i32) #1

declare dso_local i64 @pte_test(i32*, i32) #1

declare dso_local i32 @beri_iommu_invalidate(%struct.beri_iommu_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
