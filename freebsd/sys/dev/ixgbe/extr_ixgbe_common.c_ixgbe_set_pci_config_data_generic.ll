; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_set_pci_config_data_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_set_pci_config_data_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_3__, %struct.ixgbe_mac_info }
%struct.TYPE_3__ = type { i64, i32, i32 }
%struct.ixgbe_mac_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.ixgbe_hw.0*)* }
%struct.ixgbe_hw.0 = type opaque

@ixgbe_bus_type_unknown = common dso_local global i64 0, align 8
@ixgbe_bus_type_pci_express = common dso_local global i64 0, align 8
@IXGBE_PCI_LINK_WIDTH = common dso_local global i32 0, align 4
@ixgbe_bus_width_pcie_x1 = common dso_local global i32 0, align 4
@ixgbe_bus_width_pcie_x2 = common dso_local global i32 0, align 4
@ixgbe_bus_width_pcie_x4 = common dso_local global i32 0, align 4
@ixgbe_bus_width_pcie_x8 = common dso_local global i32 0, align 4
@ixgbe_bus_width_unknown = common dso_local global i32 0, align 4
@IXGBE_PCI_LINK_SPEED = common dso_local global i32 0, align 4
@ixgbe_bus_speed_2500 = common dso_local global i32 0, align 4
@ixgbe_bus_speed_5000 = common dso_local global i32 0, align 4
@ixgbe_bus_speed_8000 = common dso_local global i32 0, align 4
@ixgbe_bus_speed_unknown = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_set_pci_config_data_generic(%struct.ixgbe_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixgbe_mac_info*, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %7 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %6, i32 0, i32 1
  store %struct.ixgbe_mac_info* %7, %struct.ixgbe_mac_info** %5, align 8
  %8 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %9 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ixgbe_bus_type_unknown, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load i64, i64* @ixgbe_bus_type_pci_express, align 8
  %16 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %17 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i64 %15, i64* %18, align 8
  br label %19

19:                                               ; preds = %14, %2
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @IXGBE_PCI_LINK_WIDTH, align 4
  %22 = and i32 %20, %21
  switch i32 %22, label %43 [
    i32 131, label %23
    i32 130, label %28
    i32 129, label %33
    i32 128, label %38
  ]

23:                                               ; preds = %19
  %24 = load i32, i32* @ixgbe_bus_width_pcie_x1, align 4
  %25 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %26 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  store i32 %24, i32* %27, align 4
  br label %48

28:                                               ; preds = %19
  %29 = load i32, i32* @ixgbe_bus_width_pcie_x2, align 4
  %30 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %31 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  store i32 %29, i32* %32, align 4
  br label %48

33:                                               ; preds = %19
  %34 = load i32, i32* @ixgbe_bus_width_pcie_x4, align 4
  %35 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %36 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  store i32 %34, i32* %37, align 4
  br label %48

38:                                               ; preds = %19
  %39 = load i32, i32* @ixgbe_bus_width_pcie_x8, align 4
  %40 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %41 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  store i32 %39, i32* %42, align 4
  br label %48

43:                                               ; preds = %19
  %44 = load i32, i32* @ixgbe_bus_width_unknown, align 4
  %45 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %46 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  store i32 %44, i32* %47, align 4
  br label %48

48:                                               ; preds = %43, %38, %33, %28, %23
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @IXGBE_PCI_LINK_SPEED, align 4
  %51 = and i32 %49, %50
  switch i32 %51, label %67 [
    i32 134, label %52
    i32 133, label %57
    i32 132, label %62
  ]

52:                                               ; preds = %48
  %53 = load i32, i32* @ixgbe_bus_speed_2500, align 4
  %54 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %55 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  store i32 %53, i32* %56, align 8
  br label %72

57:                                               ; preds = %48
  %58 = load i32, i32* @ixgbe_bus_speed_5000, align 4
  %59 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %60 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 8
  br label %72

62:                                               ; preds = %48
  %63 = load i32, i32* @ixgbe_bus_speed_8000, align 4
  %64 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %65 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  store i32 %63, i32* %66, align 8
  br label %72

67:                                               ; preds = %48
  %68 = load i32, i32* @ixgbe_bus_speed_unknown, align 4
  %69 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %70 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  store i32 %68, i32* %71, align 8
  br label %72

72:                                               ; preds = %67, %62, %57, %52
  %73 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %5, align 8
  %74 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.0*)** %75, align 8
  %77 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %78 = bitcast %struct.ixgbe_hw* %77 to %struct.ixgbe_hw.0*
  %79 = call i32 %76(%struct.ixgbe_hw.0* %78)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
