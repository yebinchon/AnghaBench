; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82540.c_e1000_init_phy_params_82540.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82540.c_e1000_init_phy_params_82540.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__, %struct.e1000_phy_info }
%struct.TYPE_4__ = type { i32 }
%struct.e1000_phy_info = type { i32, i32, i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@AUTONEG_ADVERTISE_SPEED_DEFAULT = common dso_local global i32 0, align 4
@e1000_phy_m88 = common dso_local global i32 0, align 4
@e1000_check_polarity_m88 = common dso_local global i32 0, align 4
@e1000_phy_sw_reset_generic = common dso_local global i32 0, align 4
@e1000_phy_force_speed_duplex_m88 = common dso_local global i32 0, align 4
@e1000_get_cable_length_m88 = common dso_local global i32 0, align 4
@e1000_get_cfg_done_generic = common dso_local global i32 0, align 4
@e1000_read_phy_reg_m88 = common dso_local global i32 0, align 4
@e1000_phy_hw_reset_generic = common dso_local global i32 0, align 4
@e1000_write_phy_reg_m88 = common dso_local global i32 0, align 4
@e1000_get_phy_info_m88 = common dso_local global i32 0, align 4
@e1000_power_up_phy_copper = common dso_local global i32 0, align 4
@e1000_power_down_phy_copper_82540 = common dso_local global i32 0, align 4
@M88E1011_I_PHY_ID = common dso_local global i32 0, align 4
@E1000_ERR_PHY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_init_phy_params_82540 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_init_phy_params_82540(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_phy_info*, align 8
  %4 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %5 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %6 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %5, i32 0, i32 1
  store %struct.e1000_phy_info* %6, %struct.e1000_phy_info** %3, align 8
  %7 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %8 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %7, i32 0, i32 0
  store i32 1, i32* %8, align 4
  %9 = load i32, i32* @AUTONEG_ADVERTISE_SPEED_DEFAULT, align 4
  %10 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %11 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %10, i32 0, i32 5
  store i32 %9, i32* %11, align 4
  %12 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %13 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %12, i32 0, i32 1
  store i32 10000, i32* %13, align 4
  %14 = load i32, i32* @e1000_phy_m88, align 4
  %15 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %16 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %15, i32 0, i32 4
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @e1000_check_polarity_m88, align 4
  %18 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %19 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 10
  store i32 %17, i32* %20, align 4
  %21 = load i32, i32* @e1000_phy_sw_reset_generic, align 4
  %22 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %23 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 9
  store i32 %21, i32* %24, align 4
  %25 = load i32, i32* @e1000_phy_force_speed_duplex_m88, align 4
  %26 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %27 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 8
  store i32 %25, i32* %28, align 4
  %29 = load i32, i32* @e1000_get_cable_length_m88, align 4
  %30 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %31 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 7
  store i32 %29, i32* %32, align 4
  %33 = load i32, i32* @e1000_get_cfg_done_generic, align 4
  %34 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %35 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 6
  store i32 %33, i32* %36, align 4
  %37 = load i32, i32* @e1000_read_phy_reg_m88, align 4
  %38 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %39 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 5
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* @e1000_phy_hw_reset_generic, align 4
  %42 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %43 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 4
  store i32 %41, i32* %44, align 4
  %45 = load i32, i32* @e1000_write_phy_reg_m88, align 4
  %46 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %47 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 3
  store i32 %45, i32* %48, align 4
  %49 = load i32, i32* @e1000_get_phy_info_m88, align 4
  %50 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %51 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  store i32 %49, i32* %52, align 4
  %53 = load i32, i32* @e1000_power_up_phy_copper, align 4
  %54 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %55 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  store i32 %53, i32* %56, align 4
  %57 = load i32, i32* @e1000_power_down_phy_copper_82540, align 4
  %58 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %59 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 4
  %61 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %62 = call i64 @e1000_get_phy_id(%struct.e1000_hw* %61)
  store i64 %62, i64* %4, align 8
  %63 = load i64, i64* %4, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %1
  br label %83

66:                                               ; preds = %1
  %67 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %68 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  switch i32 %70, label %79 [
    i32 132, label %71
    i32 131, label %71
    i32 130, label %71
    i32 129, label %71
    i32 128, label %71
  ]

71:                                               ; preds = %66, %66, %66, %66, %66
  %72 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %73 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @M88E1011_I_PHY_ID, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  br label %82

78:                                               ; preds = %71
  br label %79

79:                                               ; preds = %66, %78
  %80 = load i64, i64* @E1000_ERR_PHY, align 8
  %81 = sub nsw i64 0, %80
  store i64 %81, i64* %4, align 8
  br label %83

82:                                               ; preds = %77
  br label %83

83:                                               ; preds = %82, %79, %65
  %84 = load i64, i64* %4, align 8
  ret i64 %84
}

declare dso_local i64 @e1000_get_phy_id(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
