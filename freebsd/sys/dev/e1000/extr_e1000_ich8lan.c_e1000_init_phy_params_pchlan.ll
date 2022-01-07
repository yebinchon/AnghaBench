; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_init_phy_params_pchlan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_init_phy_params_pchlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_3__, %struct.e1000_phy_info }
%struct.TYPE_3__ = type { i32 }
%struct.e1000_phy_info = type { i32, i32, i64, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"e1000_init_phy_params_pchlan\00", align 1
@e1000_acquire_swflag_ich8lan = common dso_local global i32 0, align 4
@e1000_check_reset_block_ich8lan = common dso_local global i32 0, align 4
@e1000_get_cfg_done_ich8lan = common dso_local global i32 0, align 4
@e1000_set_page_igp = common dso_local global i32 0, align 4
@e1000_read_phy_reg_hv = common dso_local global i32 0, align 4
@e1000_read_phy_reg_hv_locked = common dso_local global i32 0, align 4
@e1000_read_phy_reg_page_hv = common dso_local global i32 0, align 4
@e1000_release_swflag_ich8lan = common dso_local global i32 0, align 4
@e1000_phy_hw_reset_ich8lan = common dso_local global i32 0, align 4
@e1000_set_lplu_state_pchlan = common dso_local global i8* null, align 8
@e1000_write_phy_reg_hv = common dso_local global i32 0, align 4
@e1000_write_phy_reg_hv_locked = common dso_local global i32 0, align 4
@e1000_write_phy_reg_page_hv = common dso_local global i32 0, align 4
@e1000_power_up_phy_copper = common dso_local global i32 0, align 4
@e1000_power_down_phy_copper_ich8lan = common dso_local global i32 0, align 4
@AUTONEG_ADVERTISE_SPEED_DEFAULT = common dso_local global i32 0, align 4
@e1000_phy_unknown = common dso_local global i64 0, align 8
@PHY_REVISION_MASK = common dso_local global i64 0, align 8
@e1000_check_polarity_82577 = common dso_local global i32 0, align 4
@e1000_phy_force_speed_duplex_82577 = common dso_local global i32 0, align 4
@e1000_get_cable_length_82577 = common dso_local global i32 0, align 4
@e1000_get_phy_info_82577 = common dso_local global i32 0, align 4
@e1000_phy_sw_reset_generic = common dso_local global i32 0, align 4
@e1000_check_polarity_m88 = common dso_local global i32 0, align 4
@e1000_phy_force_speed_duplex_m88 = common dso_local global i32 0, align 4
@e1000_get_cable_length_m88 = common dso_local global i32 0, align 4
@e1000_get_phy_info_m88 = common dso_local global i32 0, align 4
@E1000_ERR_PHY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_init_phy_params_pchlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_init_phy_params_pchlan(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_phy_info*, align 8
  %5 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %6 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %7 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %6, i32 0, i32 1
  store %struct.e1000_phy_info* %7, %struct.e1000_phy_info** %4, align 8
  %8 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %10 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %9, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %12 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %11, i32 0, i32 1
  store i32 100, i32* %12, align 4
  %13 = load i32, i32* @e1000_acquire_swflag_ich8lan, align 4
  %14 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %15 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 20
  store i32 %13, i32* %16, align 8
  %17 = load i32, i32* @e1000_check_reset_block_ich8lan, align 4
  %18 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %19 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 19
  store i32 %17, i32* %20, align 4
  %21 = load i32, i32* @e1000_get_cfg_done_ich8lan, align 4
  %22 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %23 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 18
  store i32 %21, i32* %24, align 8
  %25 = load i32, i32* @e1000_set_page_igp, align 4
  %26 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %27 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 17
  store i32 %25, i32* %28, align 4
  %29 = load i32, i32* @e1000_read_phy_reg_hv, align 4
  %30 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %31 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 16
  store i32 %29, i32* %32, align 8
  %33 = load i32, i32* @e1000_read_phy_reg_hv_locked, align 4
  %34 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %35 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 15
  store i32 %33, i32* %36, align 4
  %37 = load i32, i32* @e1000_read_phy_reg_page_hv, align 4
  %38 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %39 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 14
  store i32 %37, i32* %40, align 8
  %41 = load i32, i32* @e1000_release_swflag_ich8lan, align 4
  %42 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %43 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 13
  store i32 %41, i32* %44, align 4
  %45 = load i32, i32* @e1000_phy_hw_reset_ich8lan, align 4
  %46 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %47 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 12
  store i32 %45, i32* %48, align 8
  %49 = load i8*, i8** @e1000_set_lplu_state_pchlan, align 8
  %50 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %51 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 11
  store i8* %49, i8** %52, align 8
  %53 = load i8*, i8** @e1000_set_lplu_state_pchlan, align 8
  %54 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %55 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 10
  store i8* %53, i8** %56, align 8
  %57 = load i32, i32* @e1000_write_phy_reg_hv, align 4
  %58 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %59 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 9
  store i32 %57, i32* %60, align 4
  %61 = load i32, i32* @e1000_write_phy_reg_hv_locked, align 4
  %62 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %63 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 8
  store i32 %61, i32* %64, align 8
  %65 = load i32, i32* @e1000_write_phy_reg_page_hv, align 4
  %66 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %67 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 7
  store i32 %65, i32* %68, align 4
  %69 = load i32, i32* @e1000_power_up_phy_copper, align 4
  %70 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %71 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 6
  store i32 %69, i32* %72, align 8
  %73 = load i32, i32* @e1000_power_down_phy_copper_ich8lan, align 4
  %74 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %75 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 5
  store i32 %73, i32* %76, align 4
  %77 = load i32, i32* @AUTONEG_ADVERTISE_SPEED_DEFAULT, align 4
  %78 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %79 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %78, i32 0, i32 5
  store i32 %77, i32* %79, align 8
  %80 = load i64, i64* @e1000_phy_unknown, align 8
  %81 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %82 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %81, i32 0, i32 2
  store i64 %80, i64* %82, align 8
  %83 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %84 = call i64 @e1000_init_phy_workarounds_pchlan(%struct.e1000_hw* %83)
  store i64 %84, i64* %5, align 8
  %85 = load i64, i64* %5, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %1
  %88 = load i64, i64* %5, align 8
  store i64 %88, i64* %2, align 8
  br label %189

89:                                               ; preds = %1
  %90 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %91 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @e1000_phy_unknown, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %136

95:                                               ; preds = %89
  %96 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %97 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  switch i32 %99, label %100 [
    i32 135, label %120
    i32 133, label %120
    i32 132, label %120
    i32 134, label %120
  ]

100:                                              ; preds = %95
  %101 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %102 = call i64 @e1000_get_phy_id(%struct.e1000_hw* %101)
  store i64 %102, i64* %5, align 8
  %103 = load i64, i64* %5, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  %106 = load i64, i64* %5, align 8
  store i64 %106, i64* %2, align 8
  br label %189

107:                                              ; preds = %100
  %108 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %109 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %107
  %113 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %114 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @PHY_REVISION_MASK, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  br label %135

119:                                              ; preds = %112, %107
  br label %120

120:                                              ; preds = %95, %95, %95, %95, %119
  %121 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %122 = call i64 @e1000_set_mdio_slow_mode_hv(%struct.e1000_hw* %121)
  store i64 %122, i64* %5, align 8
  %123 = load i64, i64* %5, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %120
  %126 = load i64, i64* %5, align 8
  store i64 %126, i64* %2, align 8
  br label %189

127:                                              ; preds = %120
  %128 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %129 = call i64 @e1000_get_phy_id(%struct.e1000_hw* %128)
  store i64 %129, i64* %5, align 8
  %130 = load i64, i64* %5, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %127
  %133 = load i64, i64* %5, align 8
  store i64 %133, i64* %2, align 8
  br label %189

134:                                              ; preds = %127
  br label %135

135:                                              ; preds = %134, %118
  br label %136

136:                                              ; preds = %135, %89
  %137 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %138 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @e1000_get_phy_type_from_id(i64 %139)
  %141 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %142 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %141, i32 0, i32 3
  store i32 %140, i32* %142, align 8
  %143 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %144 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 8
  switch i32 %145, label %184 [
    i32 131, label %146
    i32 129, label %146
    i32 128, label %146
    i32 130, label %167
  ]

146:                                              ; preds = %136, %136, %136
  %147 = load i32, i32* @e1000_check_polarity_82577, align 4
  %148 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %149 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %148, i32 0, i32 4
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 3
  store i32 %147, i32* %150, align 4
  %151 = load i32, i32* @e1000_phy_force_speed_duplex_82577, align 4
  %152 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %153 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %152, i32 0, i32 4
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 2
  store i32 %151, i32* %154, align 8
  %155 = load i32, i32* @e1000_get_cable_length_82577, align 4
  %156 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %157 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %156, i32 0, i32 4
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 1
  store i32 %155, i32* %158, align 4
  %159 = load i32, i32* @e1000_get_phy_info_82577, align 4
  %160 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %161 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %160, i32 0, i32 4
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  store i32 %159, i32* %162, align 8
  %163 = load i32, i32* @e1000_phy_sw_reset_generic, align 4
  %164 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %165 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %164, i32 0, i32 4
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 4
  store i32 %163, i32* %166, align 8
  br label %187

167:                                              ; preds = %136
  %168 = load i32, i32* @e1000_check_polarity_m88, align 4
  %169 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %170 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %169, i32 0, i32 4
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 3
  store i32 %168, i32* %171, align 4
  %172 = load i32, i32* @e1000_phy_force_speed_duplex_m88, align 4
  %173 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %174 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %173, i32 0, i32 4
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 2
  store i32 %172, i32* %175, align 8
  %176 = load i32, i32* @e1000_get_cable_length_m88, align 4
  %177 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %178 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %177, i32 0, i32 4
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 1
  store i32 %176, i32* %179, align 4
  %180 = load i32, i32* @e1000_get_phy_info_m88, align 4
  %181 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %182 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %181, i32 0, i32 4
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 0
  store i32 %180, i32* %183, align 8
  br label %187

184:                                              ; preds = %136
  %185 = load i64, i64* @E1000_ERR_PHY, align 8
  %186 = sub nsw i64 0, %185
  store i64 %186, i64* %5, align 8
  br label %187

187:                                              ; preds = %184, %167, %146
  %188 = load i64, i64* %5, align 8
  store i64 %188, i64* %2, align 8
  br label %189

189:                                              ; preds = %187, %132, %125, %105, %87
  %190 = load i64, i64* %2, align 8
  ret i64 %190
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @e1000_init_phy_workarounds_pchlan(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_get_phy_id(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_set_mdio_slow_mode_hv(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_get_phy_type_from_id(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
