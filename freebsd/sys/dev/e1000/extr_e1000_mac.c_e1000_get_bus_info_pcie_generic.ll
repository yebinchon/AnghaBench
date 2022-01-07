; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_mac.c_e1000_get_bus_info_pcie_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_mac.c_e1000_get_bus_info_pcie_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_bus_info, %struct.e1000_mac_info }
%struct.e1000_bus_info = type { i32, i8*, i32 }
%struct.e1000_mac_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.e1000_hw.0*)* }
%struct.e1000_hw.0 = type opaque

@.str = private unnamed_addr constant [32 x i8] c"e1000_get_bus_info_pcie_generic\00", align 1
@e1000_bus_type_pci_express = common dso_local global i32 0, align 4
@PCIE_LINK_STATUS = common dso_local global i32 0, align 4
@e1000_bus_width_unknown = common dso_local global i32 0, align 4
@e1000_bus_speed_unknown = common dso_local global i8* null, align 8
@PCIE_LINK_SPEED_MASK = common dso_local global i32 0, align 4
@e1000_bus_speed_2500 = common dso_local global i8* null, align 8
@e1000_bus_speed_5000 = common dso_local global i8* null, align 8
@PCIE_LINK_WIDTH_MASK = common dso_local global i32 0, align 4
@PCIE_LINK_WIDTH_SHIFT = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_get_bus_info_pcie_generic(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_mac_info*, align 8
  %4 = alloca %struct.e1000_bus_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 1
  store %struct.e1000_mac_info* %8, %struct.e1000_mac_info** %3, align 8
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %10 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %9, i32 0, i32 0
  store %struct.e1000_bus_info* %10, %struct.e1000_bus_info** %4, align 8
  %11 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @e1000_bus_type_pci_express, align 4
  %13 = load %struct.e1000_bus_info*, %struct.e1000_bus_info** %4, align 8
  %14 = getelementptr inbounds %struct.e1000_bus_info, %struct.e1000_bus_info* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 8
  %15 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %16 = load i32, i32* @PCIE_LINK_STATUS, align 4
  %17 = call i64 @e1000_read_pcie_cap_reg(%struct.e1000_hw* %15, i32 %16, i32* %6)
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* %5, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = load i32, i32* @e1000_bus_width_unknown, align 4
  %22 = load %struct.e1000_bus_info*, %struct.e1000_bus_info** %4, align 8
  %23 = getelementptr inbounds %struct.e1000_bus_info, %struct.e1000_bus_info* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load i8*, i8** @e1000_bus_speed_unknown, align 8
  %25 = load %struct.e1000_bus_info*, %struct.e1000_bus_info** %4, align 8
  %26 = getelementptr inbounds %struct.e1000_bus_info, %struct.e1000_bus_info* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  br label %51

27:                                               ; preds = %1
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @PCIE_LINK_SPEED_MASK, align 4
  %30 = and i32 %28, %29
  switch i32 %30, label %39 [
    i32 129, label %31
    i32 128, label %35
  ]

31:                                               ; preds = %27
  %32 = load i8*, i8** @e1000_bus_speed_2500, align 8
  %33 = load %struct.e1000_bus_info*, %struct.e1000_bus_info** %4, align 8
  %34 = getelementptr inbounds %struct.e1000_bus_info, %struct.e1000_bus_info* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  br label %43

35:                                               ; preds = %27
  %36 = load i8*, i8** @e1000_bus_speed_5000, align 8
  %37 = load %struct.e1000_bus_info*, %struct.e1000_bus_info** %4, align 8
  %38 = getelementptr inbounds %struct.e1000_bus_info, %struct.e1000_bus_info* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  br label %43

39:                                               ; preds = %27
  %40 = load i8*, i8** @e1000_bus_speed_unknown, align 8
  %41 = load %struct.e1000_bus_info*, %struct.e1000_bus_info** %4, align 8
  %42 = getelementptr inbounds %struct.e1000_bus_info, %struct.e1000_bus_info* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  br label %43

43:                                               ; preds = %39, %35, %31
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @PCIE_LINK_WIDTH_MASK, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* @PCIE_LINK_WIDTH_SHIFT, align 4
  %48 = ashr i32 %46, %47
  %49 = load %struct.e1000_bus_info*, %struct.e1000_bus_info** %4, align 8
  %50 = getelementptr inbounds %struct.e1000_bus_info, %struct.e1000_bus_info* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  br label %51

51:                                               ; preds = %43, %20
  %52 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %53 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %54, align 8
  %56 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %57 = bitcast %struct.e1000_hw* %56 to %struct.e1000_hw.0*
  %58 = call i32 %55(%struct.e1000_hw.0* %57)
  %59 = load i64, i64* @E1000_SUCCESS, align 8
  ret i64 %59
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @e1000_read_pcie_cap_reg(%struct.e1000_hw*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
