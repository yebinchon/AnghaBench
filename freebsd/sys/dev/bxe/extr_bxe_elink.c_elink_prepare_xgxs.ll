; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_prepare_xgxs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_prepare_xgxs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elink_phy = type { i64, i64, i64 }
%struct.elink_params = type { i32 }
%struct.elink_vars = type { i32, i32 }

@PHY_XGXS_FLAG = common dso_local global i32 0, align 4
@ELINK_SPEED_100 = common dso_local global i64 0, align 8
@ELINK_SPEED_10 = common dso_local global i64 0, align 8
@PORT_HW_CFG_SPEED_CAPABILITY_D0_10M_FULL = common dso_local global i64 0, align 8
@PORT_HW_CFG_SPEED_CAPABILITY_D0_1G = common dso_local global i64 0, align 8
@PORT_HW_CFG_SERDES_EXT_PHY_TYPE_DIRECT_SD = common dso_local global i64 0, align 8
@PHY_SGMII_FLAG = common dso_local global i32 0, align 4
@PORT_HW_CFG_XGXS_EXT_PHY_TYPE_DIRECT = common dso_local global i64 0, align 8
@ELINK_STATUS_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.elink_phy*, %struct.elink_params*, %struct.elink_vars*)* @elink_prepare_xgxs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @elink_prepare_xgxs(%struct.elink_phy* %0, %struct.elink_params* %1, %struct.elink_vars* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.elink_phy*, align 8
  %6 = alloca %struct.elink_params*, align 8
  %7 = alloca %struct.elink_vars*, align 8
  %8 = alloca i64, align 8
  store %struct.elink_phy* %0, %struct.elink_phy** %5, align 8
  store %struct.elink_params* %1, %struct.elink_params** %6, align 8
  store %struct.elink_vars* %2, %struct.elink_vars** %7, align 8
  %9 = load i32, i32* @PHY_XGXS_FLAG, align 4
  %10 = load %struct.elink_vars*, %struct.elink_vars** %7, align 8
  %11 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %12, %9
  store i32 %13, i32* %11, align 4
  %14 = load %struct.elink_phy*, %struct.elink_phy** %5, align 8
  %15 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %3
  %19 = load %struct.elink_phy*, %struct.elink_phy** %5, align 8
  %20 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ELINK_SPEED_100, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %53, label %24

24:                                               ; preds = %18
  %25 = load %struct.elink_phy*, %struct.elink_phy** %5, align 8
  %26 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ELINK_SPEED_10, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %53, label %30

30:                                               ; preds = %24, %3
  %31 = load %struct.elink_phy*, %struct.elink_phy** %5, align 8
  %32 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %47, label %35

35:                                               ; preds = %30
  %36 = load %struct.elink_phy*, %struct.elink_phy** %5, align 8
  %37 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PORT_HW_CFG_SPEED_CAPABILITY_D0_10M_FULL, align 8
  %40 = icmp sge i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load %struct.elink_phy*, %struct.elink_phy** %5, align 8
  %43 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @PORT_HW_CFG_SPEED_CAPABILITY_D0_1G, align 8
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %53, label %47

47:                                               ; preds = %41, %35, %30
  %48 = load %struct.elink_phy*, %struct.elink_phy** %5, align 8
  %49 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @PORT_HW_CFG_SERDES_EXT_PHY_TYPE_DIRECT_SD, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %47, %41, %24, %18
  %54 = load i32, i32* @PHY_SGMII_FLAG, align 4
  %55 = load %struct.elink_vars*, %struct.elink_vars** %7, align 8
  %56 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %66

59:                                               ; preds = %47
  %60 = load i32, i32* @PHY_SGMII_FLAG, align 4
  %61 = xor i32 %60, -1
  %62 = load %struct.elink_vars*, %struct.elink_vars** %7, align 8
  %63 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, %61
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %59, %53
  %67 = load %struct.elink_phy*, %struct.elink_phy** %5, align 8
  %68 = load %struct.elink_params*, %struct.elink_params** %6, align 8
  %69 = load %struct.elink_vars*, %struct.elink_vars** %7, align 8
  %70 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %69, i32 0, i32 0
  %71 = call i32 @elink_calc_ieee_aneg_adv(%struct.elink_phy* %67, %struct.elink_params* %68, i32* %70)
  %72 = load %struct.elink_params*, %struct.elink_params** %6, align 8
  %73 = load %struct.elink_phy*, %struct.elink_phy** %5, align 8
  %74 = call i32 @elink_set_aer_mmd(%struct.elink_params* %72, %struct.elink_phy* %73)
  %75 = load %struct.elink_phy*, %struct.elink_phy** %5, align 8
  %76 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @PORT_HW_CFG_XGXS_EXT_PHY_TYPE_DIRECT, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %66
  %81 = load %struct.elink_params*, %struct.elink_params** %6, align 8
  %82 = load %struct.elink_phy*, %struct.elink_phy** %5, align 8
  %83 = call i32 @elink_set_master_ln(%struct.elink_params* %81, %struct.elink_phy* %82)
  br label %84

84:                                               ; preds = %80, %66
  %85 = load %struct.elink_params*, %struct.elink_params** %6, align 8
  %86 = load %struct.elink_phy*, %struct.elink_phy** %5, align 8
  %87 = call i64 @elink_reset_unicore(%struct.elink_params* %85, %struct.elink_phy* %86, i32 0)
  store i64 %87, i64* %8, align 8
  %88 = load i64, i64* %8, align 8
  %89 = load i64, i64* @ELINK_STATUS_OK, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %84
  %92 = load i64, i64* %8, align 8
  store i64 %92, i64* %4, align 8
  br label %111

93:                                               ; preds = %84
  %94 = load %struct.elink_params*, %struct.elink_params** %6, align 8
  %95 = load %struct.elink_phy*, %struct.elink_phy** %5, align 8
  %96 = call i32 @elink_set_aer_mmd(%struct.elink_params* %94, %struct.elink_phy* %95)
  %97 = load %struct.elink_phy*, %struct.elink_phy** %5, align 8
  %98 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @PORT_HW_CFG_XGXS_EXT_PHY_TYPE_DIRECT, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %109

102:                                              ; preds = %93
  %103 = load %struct.elink_params*, %struct.elink_params** %6, align 8
  %104 = load %struct.elink_phy*, %struct.elink_phy** %5, align 8
  %105 = call i32 @elink_set_master_ln(%struct.elink_params* %103, %struct.elink_phy* %104)
  %106 = load %struct.elink_params*, %struct.elink_params** %6, align 8
  %107 = load %struct.elink_phy*, %struct.elink_phy** %5, align 8
  %108 = call i32 @elink_set_swap_lanes(%struct.elink_params* %106, %struct.elink_phy* %107)
  br label %109

109:                                              ; preds = %102, %93
  %110 = load i64, i64* %8, align 8
  store i64 %110, i64* %4, align 8
  br label %111

111:                                              ; preds = %109, %91
  %112 = load i64, i64* %4, align 8
  ret i64 %112
}

declare dso_local i32 @elink_calc_ieee_aneg_adv(%struct.elink_phy*, %struct.elink_params*, i32*) #1

declare dso_local i32 @elink_set_aer_mmd(%struct.elink_params*, %struct.elink_phy*) #1

declare dso_local i32 @elink_set_master_ln(%struct.elink_params*, %struct.elink_phy*) #1

declare dso_local i64 @elink_reset_unicore(%struct.elink_params*, %struct.elink_phy*, i32) #1

declare dso_local i32 @elink_set_swap_lanes(%struct.elink_params*, %struct.elink_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
