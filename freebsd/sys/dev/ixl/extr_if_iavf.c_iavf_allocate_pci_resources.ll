; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_iavf.c_iavf_allocate_pci_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_iavf.c_iavf_allocate_pci_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_sc = type { %struct.TYPE_6__, %struct.i40e_hw, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.i40e_hw = type { %struct.TYPE_6__*, i32*, %struct.TYPE_5__, i8*, i8*, i8*, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Unable to allocate bus resource: PCI memory\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@PCIR_REVID = common dso_local global i32 0, align 4
@PCIR_SUBVEND_0 = common dso_local global i32 0, align 4
@PCIR_SUBDEV_0 = common dso_local global i32 0, align 4
@I40E_VFGEN_RSTAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iavf_sc*)* @iavf_allocate_pci_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iavf_allocate_pci_resources(%struct.iavf_sc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iavf_sc*, align 8
  %4 = alloca %struct.i40e_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.iavf_sc* %0, %struct.iavf_sc** %3, align 8
  %7 = load %struct.iavf_sc*, %struct.iavf_sc** %3, align 8
  %8 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %7, i32 0, i32 1
  store %struct.i40e_hw* %8, %struct.i40e_hw** %4, align 8
  %9 = load %struct.iavf_sc*, %struct.iavf_sc** %3, align 8
  %10 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @iflib_get_dev(i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = call i32 @PCIR_BAR(i32 0)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @SYS_RES_MEMORY, align 4
  %17 = load i32, i32* @RF_ACTIVE, align 4
  %18 = call i32 @bus_alloc_resource_any(i32 %15, i32 %16, i32* %6, i32 %17)
  %19 = load %struct.iavf_sc*, %struct.iavf_sc** %3, align 8
  %20 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  %21 = load %struct.iavf_sc*, %struct.iavf_sc** %3, align 8
  %22 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @device_printf(i32 %26, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ENXIO, align 4
  store i32 %28, i32* %2, align 4
  br label %103

29:                                               ; preds = %1
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @pci_get_vendor(i32 %30)
  %32 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %33 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %32, i32 0, i32 7
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @pci_get_device(i32 %34)
  %36 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %37 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %36, i32 0, i32 6
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @PCIR_REVID, align 4
  %40 = call i8* @pci_read_config(i32 %38, i32 %39, i32 1)
  %41 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %42 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %41, i32 0, i32 5
  store i8* %40, i8** %42, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @PCIR_SUBVEND_0, align 4
  %45 = call i8* @pci_read_config(i32 %43, i32 %44, i32 2)
  %46 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %47 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %46, i32 0, i32 4
  store i8* %45, i8** %47, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @PCIR_SUBDEV_0, align 4
  %50 = call i8* @pci_read_config(i32 %48, i32 %49, i32 2)
  %51 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %52 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %51, i32 0, i32 3
  store i8* %50, i8** %52, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @pci_get_slot(i32 %53)
  %55 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %56 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  store i32 %54, i32* %57, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @pci_get_function(i32 %58)
  %60 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %61 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 8
  %63 = load %struct.iavf_sc*, %struct.iavf_sc** %3, align 8
  %64 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @rman_get_bustag(i32 %65)
  %67 = load %struct.iavf_sc*, %struct.iavf_sc** %3, align 8
  %68 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 4
  store i32 %66, i32* %69, align 8
  %70 = load %struct.iavf_sc*, %struct.iavf_sc** %3, align 8
  %71 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @rman_get_bushandle(i32 %72)
  %74 = load %struct.iavf_sc*, %struct.iavf_sc** %3, align 8
  %75 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  store i32 %73, i32* %76, align 8
  %77 = load %struct.iavf_sc*, %struct.iavf_sc** %3, align 8
  %78 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @rman_get_size(i32 %79)
  %81 = load %struct.iavf_sc*, %struct.iavf_sc** %3, align 8
  %82 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 3
  store i32 %80, i32* %83, align 4
  %84 = load i32, i32* @I40E_VFGEN_RSTAT, align 4
  %85 = load %struct.iavf_sc*, %struct.iavf_sc** %3, align 8
  %86 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 2
  store i32 %84, i32* %87, align 8
  %88 = load i32, i32* %5, align 4
  %89 = load %struct.iavf_sc*, %struct.iavf_sc** %3, align 8
  %90 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  store i32 %88, i32* %91, align 4
  %92 = load %struct.iavf_sc*, %struct.iavf_sc** %3, align 8
  %93 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load %struct.iavf_sc*, %struct.iavf_sc** %3, align 8
  %96 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %96, i32 0, i32 1
  store i32* %94, i32** %97, align 8
  %98 = load %struct.iavf_sc*, %struct.iavf_sc** %3, align 8
  %99 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %98, i32 0, i32 0
  %100 = load %struct.iavf_sc*, %struct.iavf_sc** %3, align 8
  %101 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %101, i32 0, i32 0
  store %struct.TYPE_6__* %99, %struct.TYPE_6__** %102, align 8
  store i32 0, i32* %2, align 4
  br label %103

103:                                              ; preds = %29, %25
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i32 @iflib_get_dev(i32) #1

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i32 @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @pci_get_vendor(i32) #1

declare dso_local i32 @pci_get_device(i32) #1

declare dso_local i8* @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @pci_get_slot(i32) #1

declare dso_local i32 @pci_get_function(i32) #1

declare dso_local i32 @rman_get_bustag(i32) #1

declare dso_local i32 @rman_get_bushandle(i32) #1

declare dso_local i32 @rman_get_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
