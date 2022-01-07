; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82598.c_ixgbe_set_lan_id_multi_port_pcie_82598.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82598.c_ixgbe_set_lan_id_multi_port_pcie_82598.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__, %struct.ixgbe_bus_info }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*, i64, i32*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_bus_info = type { i64 }

@.str = private unnamed_addr constant [39 x i8] c"ixgbe_set_lan_id_multi_port_pcie_82598\00", align 1
@IXGBE_PCIE_GENERAL_PTR = common dso_local global i64 0, align 8
@IXGBE_PCIE_CTRL2 = common dso_local global i64 0, align 8
@IXGBE_PCIE_CTRL2_LAN_DISABLE = common dso_local global i32 0, align 4
@IXGBE_PCIE_CTRL2_DISABLE_SELECT = common dso_local global i32 0, align 4
@IXGBE_PCIE_CTRL2_DUMMY_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_set_lan_id_multi_port_pcie_82598(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca %struct.ixgbe_bus_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %6 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %7 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %6, i32 0, i32 1
  store %struct.ixgbe_bus_info* %7, %struct.ixgbe_bus_info** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %10 = call i32 @ixgbe_set_lan_id_multi_port_pcie(%struct.ixgbe_hw* %9)
  %11 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %12 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32 (%struct.ixgbe_hw.0*, i64, i32*)*, i32 (%struct.ixgbe_hw.0*, i64, i32*)** %14, align 8
  %16 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %17 = bitcast %struct.ixgbe_hw* %16 to %struct.ixgbe_hw.0*
  %18 = load i64, i64* @IXGBE_PCIE_GENERAL_PTR, align 8
  %19 = call i32 %15(%struct.ixgbe_hw.0* %17, i64 %18, i32* %4)
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %56

22:                                               ; preds = %1
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 65535
  br i1 %24, label %25, label %56

25:                                               ; preds = %22
  %26 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %27 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32 (%struct.ixgbe_hw.0*, i64, i32*)*, i32 (%struct.ixgbe_hw.0*, i64, i32*)** %29, align 8
  %31 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %32 = bitcast %struct.ixgbe_hw* %31 to %struct.ixgbe_hw.0*
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* @IXGBE_PCIE_CTRL2, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 %30(%struct.ixgbe_hw.0* %32, i64 %36, i32* %5)
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @IXGBE_PCIE_CTRL2_LAN_DISABLE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %25
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @IXGBE_PCIE_CTRL2_DISABLE_SELECT, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @IXGBE_PCIE_CTRL2_DUMMY_ENABLE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %47
  %53 = load %struct.ixgbe_bus_info*, %struct.ixgbe_bus_info** %3, align 8
  %54 = getelementptr inbounds %struct.ixgbe_bus_info, %struct.ixgbe_bus_info* %53, i32 0, i32 0
  store i64 0, i64* %54, align 8
  br label %55

55:                                               ; preds = %52, %47, %42, %25
  br label %56

56:                                               ; preds = %55, %22, %1
  ret void
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @ixgbe_set_lan_id_multi_port_pcie(%struct.ixgbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
