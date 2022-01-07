; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_host_generic.c_pci_host_generic_core_release_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_host_generic.c_pci_host_generic_core_release_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.generic_pcie_core_softc = type { i32 }
%struct.rman = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"rman mismatch\00", align 1
@PCI_RES_BUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_host_generic_core_release_resource(i32 %0, i32 %1, i32 %2, i32 %3, %struct.resource* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.resource*, align 8
  %11 = alloca %struct.generic_pcie_core_softc*, align 8
  %12 = alloca %struct.rman*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.resource* %4, %struct.resource** %10, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.generic_pcie_core_softc* @device_get_softc(i32 %13)
  store %struct.generic_pcie_core_softc* %14, %struct.generic_pcie_core_softc** %11, align 8
  %15 = load %struct.generic_pcie_core_softc*, %struct.generic_pcie_core_softc** %11, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call %struct.rman* @generic_pcie_rman(%struct.generic_pcie_core_softc* %15, i32 %16)
  store %struct.rman* %17, %struct.rman** %12, align 8
  %18 = load %struct.rman*, %struct.rman** %12, align 8
  %19 = icmp ne %struct.rman* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %5
  %21 = load %struct.resource*, %struct.resource** %10, align 8
  %22 = load %struct.rman*, %struct.rman** %12, align 8
  %23 = call i32 @rman_is_region_manager(%struct.resource* %21, %struct.rman* %22)
  %24 = call i32 @KASSERT(i32 %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.resource*, %struct.resource** %10, align 8
  %26 = call i32 @rman_release_resource(%struct.resource* %25)
  br label %27

27:                                               ; preds = %20, %5
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.resource*, %struct.resource** %10, align 8
  %33 = call i32 @bus_generic_release_resource(i32 %28, i32 %29, i32 %30, i32 %31, %struct.resource* %32)
  ret i32 %33
}

declare dso_local %struct.generic_pcie_core_softc* @device_get_softc(i32) #1

declare dso_local %struct.rman* @generic_pcie_rman(%struct.generic_pcie_core_softc*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @rman_is_region_manager(%struct.resource*, %struct.rman*) #1

declare dso_local i32 @rman_release_resource(%struct.resource*) #1

declare dso_local i32 @bus_generic_release_resource(i32, i32, i32, i32, %struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
