; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/malta/extr_gt_pci.c_gt_pci_alloc_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/malta/extr_gt_pci.c_gt_pci_alloc_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.gt_pci_softc = type { i32, %struct.rman, i32, %struct.rman, %struct.rman }
%struct.rman = type { i32 }

@gt_pci_bus_space = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.resource* (i32, i32, i32, i32*, i32, i32, i32, i32)* @gt_pci_alloc_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.resource* @gt_pci_alloc_resource(i32 %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.gt_pci_softc*, align 8
  %19 = alloca %struct.resource*, align 8
  %20 = alloca %struct.rman*, align 8
  %21 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %22 = load i32, i32* %10, align 4
  %23 = call %struct.gt_pci_softc* @device_get_softc(i32 %22)
  store %struct.gt_pci_softc* %23, %struct.gt_pci_softc** %18, align 8
  store %struct.resource* null, %struct.resource** %19, align 8
  store i32 0, i32* %21, align 4
  %24 = load i32, i32* %12, align 4
  switch i32 %24, label %40 [
    i32 129, label %25
    i32 128, label %28
    i32 130, label %34
  ]

25:                                               ; preds = %8
  %26 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %18, align 8
  %27 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %26, i32 0, i32 4
  store %struct.rman* %27, %struct.rman** %20, align 8
  br label %41

28:                                               ; preds = %8
  %29 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %18, align 8
  %30 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %29, i32 0, i32 3
  store %struct.rman* %30, %struct.rman** %20, align 8
  %31 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %18, align 8
  %32 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %21, align 4
  br label %41

34:                                               ; preds = %8
  %35 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %18, align 8
  %36 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %35, i32 0, i32 1
  store %struct.rman* %36, %struct.rman** %20, align 8
  %37 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %18, align 8
  %38 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %21, align 4
  br label %41

40:                                               ; preds = %8
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %91

41:                                               ; preds = %34, %28, %25
  %42 = load %struct.rman*, %struct.rman** %20, align 8
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* %15, align 4
  %45 = load i32, i32* %16, align 4
  %46 = load i32, i32* %17, align 4
  %47 = load i32, i32* %11, align 4
  %48 = call %struct.resource* @rman_reserve_resource(%struct.rman* %42, i32 %43, i32 %44, i32 %45, i32 %46, i32 %47)
  store %struct.resource* %48, %struct.resource** %19, align 8
  %49 = load %struct.resource*, %struct.resource** %19, align 8
  %50 = icmp eq %struct.resource* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %91

52:                                               ; preds = %41
  %53 = load %struct.resource*, %struct.resource** %19, align 8
  %54 = load i32*, i32** %13, align 8
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @rman_set_rid(%struct.resource* %53, i32 %55)
  %57 = load i32, i32* %12, align 4
  %58 = icmp ne i32 %57, 129
  br i1 %58, label %59, label %89

59:                                               ; preds = %52
  %60 = load %struct.resource*, %struct.resource** %19, align 8
  %61 = call i64 @rman_get_start(%struct.resource* %60)
  %62 = load i32, i32* %21, align 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %63, %61
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %21, align 4
  %66 = load %struct.resource*, %struct.resource** %19, align 8
  %67 = load i32, i32* @gt_pci_bus_space, align 4
  %68 = call i32 @rman_set_bustag(%struct.resource* %66, i32 %67)
  %69 = load %struct.resource*, %struct.resource** %19, align 8
  %70 = load i32, i32* %21, align 4
  %71 = call i32 @rman_set_bushandle(%struct.resource* %69, i32 %70)
  %72 = load i32, i32* %17, align 4
  %73 = load i32, i32* @RF_ACTIVE, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %59
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %12, align 4
  %79 = load i32*, i32** %13, align 8
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.resource*, %struct.resource** %19, align 8
  %82 = call i64 @bus_activate_resource(i32 %77, i32 %78, i32 %80, %struct.resource* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %76
  %85 = load %struct.resource*, %struct.resource** %19, align 8
  %86 = call i32 @rman_release_resource(%struct.resource* %85)
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %91

87:                                               ; preds = %76
  br label %88

88:                                               ; preds = %87, %59
  br label %89

89:                                               ; preds = %88, %52
  %90 = load %struct.resource*, %struct.resource** %19, align 8
  store %struct.resource* %90, %struct.resource** %9, align 8
  br label %91

91:                                               ; preds = %89, %84, %51, %40
  %92 = load %struct.resource*, %struct.resource** %9, align 8
  ret %struct.resource* %92
}

declare dso_local %struct.gt_pci_softc* @device_get_softc(i32) #1

declare dso_local %struct.resource* @rman_reserve_resource(%struct.rman*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @rman_set_rid(%struct.resource*, i32) #1

declare dso_local i64 @rman_get_start(%struct.resource*) #1

declare dso_local i32 @rman_set_bustag(%struct.resource*, i32) #1

declare dso_local i32 @rman_set_bushandle(%struct.resource*, i32) #1

declare dso_local i64 @bus_activate_resource(i32, i32, i32, %struct.resource*) #1

declare dso_local i32 @rman_release_resource(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
