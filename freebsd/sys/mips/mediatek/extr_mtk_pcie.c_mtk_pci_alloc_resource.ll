; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_pcie.c_mtk_pci_alloc_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_pcie.c_mtk_pci_alloc_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.mtk_pci_softc = type { %struct.rman, %struct.rman, %struct.rman }
%struct.rman = type { i32 }

@RF_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.resource* (i32, i32, i32, i32*, i32, i32, i32, i32)* @mtk_pci_alloc_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.resource* @mtk_pci_alloc_resource(i32 %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.mtk_pci_softc*, align 8
  %19 = alloca %struct.resource*, align 8
  %20 = alloca %struct.rman*, align 8
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %21 = load i32, i32* %10, align 4
  %22 = call %struct.mtk_pci_softc* @device_get_softc(i32 %21)
  store %struct.mtk_pci_softc* %22, %struct.mtk_pci_softc** %18, align 8
  %23 = load i32, i32* %12, align 4
  switch i32 %23, label %41 [
    i32 131, label %24
    i32 129, label %32
    i32 130, label %35
    i32 128, label %38
  ]

24:                                               ; preds = %8
  %25 = load i32, i32* %11, align 4
  %26 = load i32*, i32** %13, align 8
  %27 = load i32, i32* %14, align 4
  %28 = load i32, i32* %15, align 4
  %29 = load i32, i32* %16, align 4
  %30 = load i32, i32* %17, align 4
  %31 = call %struct.resource* @pci_domain_alloc_bus(i32 0, i32 %25, i32* %26, i32 %27, i32 %28, i32 %29, i32 %30)
  store %struct.resource* %31, %struct.resource** %9, align 8
  br label %79

32:                                               ; preds = %8
  %33 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %18, align 8
  %34 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %33, i32 0, i32 2
  store %struct.rman* %34, %struct.rman** %20, align 8
  br label %42

35:                                               ; preds = %8
  %36 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %18, align 8
  %37 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %36, i32 0, i32 1
  store %struct.rman* %37, %struct.rman** %20, align 8
  br label %42

38:                                               ; preds = %8
  %39 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %18, align 8
  %40 = getelementptr inbounds %struct.mtk_pci_softc, %struct.mtk_pci_softc* %39, i32 0, i32 0
  store %struct.rman* %40, %struct.rman** %20, align 8
  br label %42

41:                                               ; preds = %8
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %79

42:                                               ; preds = %38, %35, %32
  %43 = load %struct.rman*, %struct.rman** %20, align 8
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* %15, align 4
  %46 = load i32, i32* %16, align 4
  %47 = load i32, i32* %17, align 4
  %48 = load i32, i32* %11, align 4
  %49 = call %struct.resource* @rman_reserve_resource(%struct.rman* %43, i32 %44, i32 %45, i32 %46, i32 %47, i32 %48)
  store %struct.resource* %49, %struct.resource** %19, align 8
  %50 = load %struct.resource*, %struct.resource** %19, align 8
  %51 = icmp eq %struct.resource* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %79

53:                                               ; preds = %42
  %54 = load %struct.resource*, %struct.resource** %19, align 8
  %55 = load i32*, i32** %13, align 8
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @rman_set_rid(%struct.resource* %54, i32 %56)
  %58 = load i32, i32* %17, align 4
  %59 = load i32, i32* @RF_ACTIVE, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %77

62:                                               ; preds = %53
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 129
  br i1 %64, label %65, label %77

65:                                               ; preds = %62
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %12, align 4
  %68 = load i32*, i32** %13, align 8
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.resource*, %struct.resource** %19, align 8
  %71 = call i64 @bus_activate_resource(i32 %66, i32 %67, i32 %69, %struct.resource* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %65
  %74 = load %struct.resource*, %struct.resource** %19, align 8
  %75 = call i32 @rman_release_resource(%struct.resource* %74)
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %79

76:                                               ; preds = %65
  br label %77

77:                                               ; preds = %76, %62, %53
  %78 = load %struct.resource*, %struct.resource** %19, align 8
  store %struct.resource* %78, %struct.resource** %9, align 8
  br label %79

79:                                               ; preds = %77, %73, %52, %41, %24
  %80 = load %struct.resource*, %struct.resource** %9, align 8
  ret %struct.resource* %80
}

declare dso_local %struct.mtk_pci_softc* @device_get_softc(i32) #1

declare dso_local %struct.resource* @pci_domain_alloc_bus(i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local %struct.resource* @rman_reserve_resource(%struct.rman*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @rman_set_rid(%struct.resource*, i32) #1

declare dso_local i64 @bus_activate_resource(i32, i32, i32, %struct.resource*) #1

declare dso_local i32 @rman_release_resource(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
