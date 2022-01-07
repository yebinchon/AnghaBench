; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_80003es2lan.c_e1000_init_phy_params_80003es2lan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_80003es2lan.c_e1000_init_phy_params_80003es2lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_phy_info }
%struct.e1000_phy_info = type { i64, i32, i32, i64, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"e1000_init_phy_params_80003es2lan\00", align 1
@e1000_media_type_copper = common dso_local global i64 0, align 8
@e1000_phy_none = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i32 0, align 4
@e1000_power_up_phy_copper = common dso_local global i32 0, align 4
@e1000_power_down_phy_copper_80003es2lan = common dso_local global i32 0, align 4
@AUTONEG_ADVERTISE_SPEED_DEFAULT = common dso_local global i32 0, align 4
@e1000_phy_gg82563 = common dso_local global i32 0, align 4
@e1000_acquire_phy_80003es2lan = common dso_local global i32 0, align 4
@e1000_check_polarity_m88 = common dso_local global i32 0, align 4
@e1000_check_reset_block_generic = common dso_local global i32 0, align 4
@e1000_phy_sw_reset_generic = common dso_local global i32 0, align 4
@e1000_get_cfg_done_80003es2lan = common dso_local global i32 0, align 4
@e1000_get_phy_info_m88 = common dso_local global i32 0, align 4
@e1000_release_phy_80003es2lan = common dso_local global i32 0, align 4
@e1000_phy_hw_reset_generic = common dso_local global i32 0, align 4
@e1000_set_d3_lplu_state_generic = common dso_local global i32 0, align 4
@e1000_phy_force_speed_duplex_80003es2lan = common dso_local global i32 0, align 4
@e1000_get_cable_length_80003es2lan = common dso_local global i32 0, align 4
@e1000_read_phy_reg_gg82563_80003es2lan = common dso_local global i32 0, align 4
@e1000_write_phy_reg_gg82563_80003es2lan = common dso_local global i32 0, align 4
@e1000_cfg_on_link_up_80003es2lan = common dso_local global i32 0, align 4
@GG82563_E_PHY_ID = common dso_local global i64 0, align 8
@E1000_ERR_PHY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @e1000_init_phy_params_80003es2lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_init_phy_params_80003es2lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_phy_info*, align 8
  %5 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %6 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %7 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %6, i32 0, i32 0
  store %struct.e1000_phy_info* %7, %struct.e1000_phy_info** %4, align 8
  %8 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %10 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @e1000_media_type_copper, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load i32, i32* @e1000_phy_none, align 4
  %17 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %18 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %17, i32 0, i32 5
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %19, i32* %2, align 4
  br label %108

20:                                               ; preds = %1
  %21 = load i32, i32* @e1000_power_up_phy_copper, align 4
  %22 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %23 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 15
  store i32 %21, i32* %24, align 4
  %25 = load i32, i32* @e1000_power_down_phy_copper_80003es2lan, align 4
  %26 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %27 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 14
  store i32 %25, i32* %28, align 8
  br label %29

29:                                               ; preds = %20
  %30 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %31 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %30, i32 0, i32 1
  store i32 1, i32* %31, align 8
  %32 = load i32, i32* @AUTONEG_ADVERTISE_SPEED_DEFAULT, align 4
  %33 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %34 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %33, i32 0, i32 6
  store i32 %32, i32* %34, align 4
  %35 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %36 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %35, i32 0, i32 2
  store i32 100, i32* %36, align 4
  %37 = load i32, i32* @e1000_phy_gg82563, align 4
  %38 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %39 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @e1000_acquire_phy_80003es2lan, align 4
  %41 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %42 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 13
  store i32 %40, i32* %43, align 4
  %44 = load i32, i32* @e1000_check_polarity_m88, align 4
  %45 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %46 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 12
  store i32 %44, i32* %47, align 8
  %48 = load i32, i32* @e1000_check_reset_block_generic, align 4
  %49 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %50 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 11
  store i32 %48, i32* %51, align 4
  %52 = load i32, i32* @e1000_phy_sw_reset_generic, align 4
  %53 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %54 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 10
  store i32 %52, i32* %55, align 8
  %56 = load i32, i32* @e1000_get_cfg_done_80003es2lan, align 4
  %57 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %58 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 9
  store i32 %56, i32* %59, align 4
  %60 = load i32, i32* @e1000_get_phy_info_m88, align 4
  %61 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %62 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 8
  store i32 %60, i32* %63, align 8
  %64 = load i32, i32* @e1000_release_phy_80003es2lan, align 4
  %65 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %66 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 7
  store i32 %64, i32* %67, align 4
  %68 = load i32, i32* @e1000_phy_hw_reset_generic, align 4
  %69 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %70 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 6
  store i32 %68, i32* %71, align 8
  %72 = load i32, i32* @e1000_set_d3_lplu_state_generic, align 4
  %73 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %74 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 5
  store i32 %72, i32* %75, align 4
  %76 = load i32, i32* @e1000_phy_force_speed_duplex_80003es2lan, align 4
  %77 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %78 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %77, i32 0, i32 4
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 4
  store i32 %76, i32* %79, align 8
  %80 = load i32, i32* @e1000_get_cable_length_80003es2lan, align 4
  %81 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %82 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 3
  store i32 %80, i32* %83, align 4
  %84 = load i32, i32* @e1000_read_phy_reg_gg82563_80003es2lan, align 4
  %85 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %86 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %85, i32 0, i32 4
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 2
  store i32 %84, i32* %87, align 8
  %88 = load i32, i32* @e1000_write_phy_reg_gg82563_80003es2lan, align 4
  %89 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %90 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %89, i32 0, i32 4
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  store i32 %88, i32* %91, align 4
  %92 = load i32, i32* @e1000_cfg_on_link_up_80003es2lan, align 4
  %93 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %94 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %93, i32 0, i32 4
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  store i32 %92, i32* %95, align 8
  %96 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %97 = call i32 @e1000_get_phy_id(%struct.e1000_hw* %96)
  store i32 %97, i32* %5, align 4
  %98 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %99 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @GG82563_E_PHY_ID, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %29
  %104 = load i32, i32* @E1000_ERR_PHY, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %2, align 4
  br label %108

106:                                              ; preds = %29
  %107 = load i32, i32* %5, align 4
  store i32 %107, i32* %2, align 4
  br label %108

108:                                              ; preds = %106, %103, %15
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @e1000_get_phy_id(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
