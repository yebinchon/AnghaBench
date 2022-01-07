; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_set_pci_config_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_set_pci_config_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@i40e_bus_type_pci_express = common dso_local global i32 0, align 4
@I40E_PCI_LINK_WIDTH = common dso_local global i32 0, align 4
@i40e_bus_width_pcie_x1 = common dso_local global i32 0, align 4
@i40e_bus_width_pcie_x2 = common dso_local global i32 0, align 4
@i40e_bus_width_pcie_x4 = common dso_local global i32 0, align 4
@i40e_bus_width_pcie_x8 = common dso_local global i32 0, align 4
@i40e_bus_width_unknown = common dso_local global i32 0, align 4
@I40E_PCI_LINK_SPEED = common dso_local global i32 0, align 4
@i40e_bus_speed_2500 = common dso_local global i32 0, align 4
@i40e_bus_speed_5000 = common dso_local global i32 0, align 4
@i40e_bus_speed_8000 = common dso_local global i32 0, align 4
@i40e_bus_speed_unknown = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40e_set_pci_config_data(%struct.i40e_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.i40e_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @i40e_bus_type_pci_express, align 4
  %6 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %7 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 2
  store i32 %5, i32* %8, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @I40E_PCI_LINK_WIDTH, align 4
  %11 = and i32 %9, %10
  switch i32 %11, label %32 [
    i32 131, label %12
    i32 130, label %17
    i32 129, label %22
    i32 128, label %27
  ]

12:                                               ; preds = %2
  %13 = load i32, i32* @i40e_bus_width_pcie_x1, align 4
  %14 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %15 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  store i32 %13, i32* %16, align 4
  br label %37

17:                                               ; preds = %2
  %18 = load i32, i32* @i40e_bus_width_pcie_x2, align 4
  %19 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %20 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  store i32 %18, i32* %21, align 4
  br label %37

22:                                               ; preds = %2
  %23 = load i32, i32* @i40e_bus_width_pcie_x4, align 4
  %24 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %25 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store i32 %23, i32* %26, align 4
  br label %37

27:                                               ; preds = %2
  %28 = load i32, i32* @i40e_bus_width_pcie_x8, align 4
  %29 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %30 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 4
  br label %37

32:                                               ; preds = %2
  %33 = load i32, i32* @i40e_bus_width_unknown, align 4
  %34 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %35 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 4
  br label %37

37:                                               ; preds = %32, %27, %22, %17, %12
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @I40E_PCI_LINK_SPEED, align 4
  %40 = and i32 %38, %39
  switch i32 %40, label %56 [
    i32 134, label %41
    i32 133, label %46
    i32 132, label %51
  ]

41:                                               ; preds = %37
  %42 = load i32, i32* @i40e_bus_speed_2500, align 4
  %43 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %44 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 4
  br label %61

46:                                               ; preds = %37
  %47 = load i32, i32* @i40e_bus_speed_5000, align 4
  %48 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %49 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 4
  br label %61

51:                                               ; preds = %37
  %52 = load i32, i32* @i40e_bus_speed_8000, align 4
  %53 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %54 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 4
  br label %61

56:                                               ; preds = %37
  %57 = load i32, i32* @i40e_bus_speed_unknown, align 4
  %58 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %59 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 4
  br label %61

61:                                               ; preds = %56, %51, %46, %41
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
