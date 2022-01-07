; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_set_lan_id_multi_port_pcie.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_set_lan_id_multi_port_pcie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i64, %struct.TYPE_4__, %struct.ixgbe_bus_info }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*, i32, i32*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_bus_info = type { i32, i32, i64 }

@.str = private unnamed_addr constant [33 x i8] c"ixgbe_set_lan_id_multi_port_pcie\00", align 1
@IXGBE_STATUS = common dso_local global i32 0, align 4
@IXGBE_STATUS_LAN_ID = common dso_local global i32 0, align 4
@IXGBE_STATUS_LAN_ID_SHIFT = common dso_local global i32 0, align 4
@IXGBE_FACTPS_LFS = common dso_local global i32 0, align 4
@IXGBE_DEV_ID_X550EM_A_SFP = common dso_local global i64 0, align 8
@IXGBE_EEPROM_CTRL_4 = common dso_local global i32 0, align 4
@IXGBE_EE_CTRL_4_INST_ID = common dso_local global i32 0, align 4
@IXGBE_EE_CTRL_4_INST_ID_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_set_lan_id_multi_port_pcie(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca %struct.ixgbe_bus_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %6 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %7 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %6, i32 0, i32 2
  store %struct.ixgbe_bus_info* %7, %struct.ixgbe_bus_info** %3, align 8
  %8 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %10 = load i32, i32* @IXGBE_STATUS, align 4
  %11 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @IXGBE_STATUS_LAN_ID, align 4
  %14 = and i32 %12, %13
  %15 = load i32, i32* @IXGBE_STATUS_LAN_ID_SHIFT, align 4
  %16 = ashr i32 %14, %15
  %17 = load %struct.ixgbe_bus_info*, %struct.ixgbe_bus_info** %3, align 8
  %18 = getelementptr inbounds %struct.ixgbe_bus_info, %struct.ixgbe_bus_info* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.ixgbe_bus_info*, %struct.ixgbe_bus_info** %3, align 8
  %20 = getelementptr inbounds %struct.ixgbe_bus_info, %struct.ixgbe_bus_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = load %struct.ixgbe_bus_info*, %struct.ixgbe_bus_info** %3, align 8
  %24 = getelementptr inbounds %struct.ixgbe_bus_info, %struct.ixgbe_bus_info* %23, i32 0, i32 2
  store i64 %22, i64* %24, align 8
  %25 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %26 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %27 = call i32 @IXGBE_FACTPS_BY_MAC(%struct.ixgbe_hw* %26)
  %28 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %25, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @IXGBE_FACTPS_LFS, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %1
  %34 = load %struct.ixgbe_bus_info*, %struct.ixgbe_bus_info** %3, align 8
  %35 = getelementptr inbounds %struct.ixgbe_bus_info, %struct.ixgbe_bus_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = xor i32 %36, 1
  store i32 %37, i32* %35, align 8
  br label %38

38:                                               ; preds = %33, %1
  %39 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %40 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @IXGBE_DEV_ID_X550EM_A_SFP, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %61

44:                                               ; preds = %38
  %45 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %46 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32 (%struct.ixgbe_hw.0*, i32, i32*)*, i32 (%struct.ixgbe_hw.0*, i32, i32*)** %48, align 8
  %50 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %51 = bitcast %struct.ixgbe_hw* %50 to %struct.ixgbe_hw.0*
  %52 = load i32, i32* @IXGBE_EEPROM_CTRL_4, align 4
  %53 = call i32 %49(%struct.ixgbe_hw.0* %51, i32 %52, i32* %5)
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @IXGBE_EE_CTRL_4_INST_ID, align 4
  %56 = and i32 %54, %55
  %57 = load i32, i32* @IXGBE_EE_CTRL_4_INST_ID_SHIFT, align 4
  %58 = ashr i32 %56, %57
  %59 = load %struct.ixgbe_bus_info*, %struct.ixgbe_bus_info** %3, align 8
  %60 = getelementptr inbounds %struct.ixgbe_bus_info, %struct.ixgbe_bus_info* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %44, %38
  ret void
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_FACTPS_BY_MAC(%struct.ixgbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
