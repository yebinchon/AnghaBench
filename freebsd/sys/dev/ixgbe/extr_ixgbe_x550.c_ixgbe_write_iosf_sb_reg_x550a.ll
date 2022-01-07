; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_write_iosf_sb_reg_x550a.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_write_iosf_sb_reg_x550a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ixgbe_hic_internal_phy_req = type { i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@FW_INT_PHY_REQ_CMD = common dso_local global i32 0, align 4
@FW_INT_PHY_REQ_LEN = common dso_local global i32 0, align 4
@FW_DEFAULT_CHECKSUM = common dso_local global i32 0, align 4
@FW_INT_PHY_REQ_WRITE = common dso_local global i32 0, align 4
@IXGBE_HI_COMMAND_TIMEOUT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_write_iosf_sb_reg_x550a(%struct.ixgbe_hw* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ixgbe_hic_internal_phy_req, align 4
  %10 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @UNREFERENCED_1PARAMETER(i32 %11)
  %13 = call i32 @memset(%struct.ixgbe_hic_internal_phy_req* %9, i32 0, i32 28)
  %14 = load i32, i32* @FW_INT_PHY_REQ_CMD, align 4
  %15 = getelementptr inbounds %struct.ixgbe_hic_internal_phy_req, %struct.ixgbe_hic_internal_phy_req* %9, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @FW_INT_PHY_REQ_LEN, align 4
  %18 = getelementptr inbounds %struct.ixgbe_hic_internal_phy_req, %struct.ixgbe_hic_internal_phy_req* %9, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @FW_DEFAULT_CHECKSUM, align 4
  %21 = getelementptr inbounds %struct.ixgbe_hic_internal_phy_req, %struct.ixgbe_hic_internal_phy_req* %9, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %24 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.ixgbe_hic_internal_phy_req, %struct.ixgbe_hic_internal_phy_req* %9, i32 0, i32 3
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @FW_INT_PHY_REQ_WRITE, align 4
  %29 = getelementptr inbounds %struct.ixgbe_hic_internal_phy_req, %struct.ixgbe_hic_internal_phy_req* %9, i32 0, i32 2
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @IXGBE_CPU_TO_BE16(i32 %30)
  %32 = getelementptr inbounds %struct.ixgbe_hic_internal_phy_req, %struct.ixgbe_hic_internal_phy_req* %9, i32 0, i32 1
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @IXGBE_CPU_TO_BE32(i32 %33)
  %35 = getelementptr inbounds %struct.ixgbe_hic_internal_phy_req, %struct.ixgbe_hic_internal_phy_req* %9, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %37 = bitcast %struct.ixgbe_hic_internal_phy_req* %9 to i32*
  %38 = load i32, i32* @IXGBE_HI_COMMAND_TIMEOUT, align 4
  %39 = load i32, i32* @FALSE, align 4
  %40 = call i32 @ixgbe_host_interface_command(%struct.ixgbe_hw* %36, i32* %37, i32 28, i32 %38, i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  ret i32 %41
}

declare dso_local i32 @UNREFERENCED_1PARAMETER(i32) #1

declare dso_local i32 @memset(%struct.ixgbe_hic_internal_phy_req*, i32, i32) #1

declare dso_local i32 @IXGBE_CPU_TO_BE16(i32) #1

declare dso_local i32 @IXGBE_CPU_TO_BE32(i32) #1

declare dso_local i32 @ixgbe_host_interface_command(%struct.ixgbe_hw*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
