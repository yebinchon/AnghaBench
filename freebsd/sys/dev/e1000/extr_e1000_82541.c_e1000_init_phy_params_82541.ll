; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82541.c_e1000_init_phy_params_82541.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82541.c_e1000_init_phy_params_82541.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_phy_info }
%struct.e1000_phy_info = type { i32, i32, i64, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"e1000_init_phy_params_82541\00", align 1
@AUTONEG_ADVERTISE_SPEED_DEFAULT = common dso_local global i32 0, align 4
@e1000_phy_igp = common dso_local global i32 0, align 4
@e1000_check_polarity_igp = common dso_local global i32 0, align 4
@e1000_phy_force_speed_duplex_igp = common dso_local global i32 0, align 4
@e1000_get_cable_length_igp_82541 = common dso_local global i32 0, align 4
@e1000_get_cfg_done_generic = common dso_local global i32 0, align 4
@e1000_get_phy_info_igp = common dso_local global i32 0, align 4
@e1000_read_phy_reg_igp = common dso_local global i32 0, align 4
@e1000_phy_hw_reset_82541 = common dso_local global i32 0, align 4
@e1000_set_d3_lplu_state_82541 = common dso_local global i32 0, align 4
@e1000_write_phy_reg_igp = common dso_local global i32 0, align 4
@e1000_power_up_phy_copper = common dso_local global i32 0, align 4
@e1000_power_down_phy_copper_82541 = common dso_local global i32 0, align 4
@IGP01E1000_I_PHY_ID = common dso_local global i64 0, align 8
@E1000_ERR_PHY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @e1000_init_phy_params_82541 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_init_phy_params_82541(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_phy_info*, align 8
  %4 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %5 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %6 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %5, i32 0, i32 0
  store %struct.e1000_phy_info* %6, %struct.e1000_phy_info** %3, align 8
  %7 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %9 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %8, i32 0, i32 0
  store i32 1, i32* %9, align 8
  %10 = load i32, i32* @AUTONEG_ADVERTISE_SPEED_DEFAULT, align 4
  %11 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %12 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %11, i32 0, i32 5
  store i32 %10, i32* %12, align 8
  %13 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %14 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %13, i32 0, i32 1
  store i32 10000, i32* %14, align 4
  %15 = load i32, i32* @e1000_phy_igp, align 4
  %16 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %17 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %16, i32 0, i32 4
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @e1000_check_polarity_igp, align 4
  %19 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %20 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 10
  store i32 %18, i32* %21, align 8
  %22 = load i32, i32* @e1000_phy_force_speed_duplex_igp, align 4
  %23 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %24 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 9
  store i32 %22, i32* %25, align 4
  %26 = load i32, i32* @e1000_get_cable_length_igp_82541, align 4
  %27 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %28 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 8
  store i32 %26, i32* %29, align 8
  %30 = load i32, i32* @e1000_get_cfg_done_generic, align 4
  %31 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %32 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 7
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* @e1000_get_phy_info_igp, align 4
  %35 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %36 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 6
  store i32 %34, i32* %37, align 8
  %38 = load i32, i32* @e1000_read_phy_reg_igp, align 4
  %39 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %40 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 5
  store i32 %38, i32* %41, align 4
  %42 = load i32, i32* @e1000_phy_hw_reset_82541, align 4
  %43 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %44 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 4
  store i32 %42, i32* %45, align 8
  %46 = load i32, i32* @e1000_set_d3_lplu_state_82541, align 4
  %47 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %48 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 3
  store i32 %46, i32* %49, align 4
  %50 = load i32, i32* @e1000_write_phy_reg_igp, align 4
  %51 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %52 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  store i32 %50, i32* %53, align 8
  %54 = load i32, i32* @e1000_power_up_phy_copper, align 4
  %55 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %56 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  store i32 %54, i32* %57, align 4
  %58 = load i32, i32* @e1000_power_down_phy_copper_82541, align 4
  %59 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %60 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 8
  %62 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %63 = call i32 @e1000_get_phy_id(%struct.e1000_hw* %62)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %1
  br label %77

67:                                               ; preds = %1
  %68 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %69 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @IGP01E1000_I_PHY_ID, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load i32, i32* @E1000_ERR_PHY, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %77

76:                                               ; preds = %67
  br label %77

77:                                               ; preds = %76, %73, %66
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @e1000_get_phy_id(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
