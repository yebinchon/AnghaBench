; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_init_phy_params_ich8lan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_init_phy_params_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_phy_info }
%struct.e1000_phy_info = type { i32, i32, i32, %struct.TYPE_2__, i8*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"e1000_init_phy_params_ich8lan\00", align 1
@e1000_acquire_swflag_ich8lan = common dso_local global i32 0, align 4
@e1000_check_reset_block_ich8lan = common dso_local global i32 0, align 4
@e1000_get_cable_length_igp_2 = common dso_local global i32 0, align 4
@e1000_get_cfg_done_ich8lan = common dso_local global i32 0, align 4
@e1000_read_phy_reg_igp = common dso_local global i8* null, align 8
@e1000_release_swflag_ich8lan = common dso_local global i32 0, align 4
@e1000_phy_hw_reset_ich8lan = common dso_local global i32 0, align 4
@e1000_set_d0_lplu_state_ich8lan = common dso_local global i32 0, align 4
@e1000_set_d3_lplu_state_ich8lan = common dso_local global i32 0, align 4
@e1000_write_phy_reg_igp = common dso_local global i8* null, align 8
@e1000_power_up_phy_copper = common dso_local global i32 0, align 4
@e1000_power_down_phy_copper_ich8lan = common dso_local global i32 0, align 4
@e1000_write_phy_reg_bm = common dso_local global i8* null, align 8
@e1000_read_phy_reg_bm = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"Cannot determine PHY addr. Erroring out\0A\00", align 1
@e1000_phy_unknown = common dso_local global i64 0, align 8
@e1000_phy_igp_3 = common dso_local global i32 0, align 4
@AUTONEG_ADVERTISE_SPEED_DEFAULT = common dso_local global i8* null, align 8
@e1000_read_phy_reg_igp_locked = common dso_local global i32 0, align 4
@e1000_write_phy_reg_igp_locked = common dso_local global i32 0, align 4
@e1000_get_phy_info_igp = common dso_local global i32 0, align 4
@e1000_check_polarity_igp = common dso_local global i32 0, align 4
@e1000_phy_force_speed_duplex_igp = common dso_local global i32 0, align 4
@e1000_phy_ife = common dso_local global i32 0, align 4
@E1000_ALL_NOT_GIG = common dso_local global i8* null, align 8
@e1000_get_phy_info_ife = common dso_local global i32 0, align 4
@e1000_check_polarity_ife = common dso_local global i32 0, align 4
@e1000_phy_force_speed_duplex_ife = common dso_local global i32 0, align 4
@e1000_phy_bm = common dso_local global i32 0, align 4
@e1000_phy_sw_reset_generic = common dso_local global i32 0, align 4
@e1000_get_phy_info_m88 = common dso_local global i32 0, align 4
@e1000_check_polarity_m88 = common dso_local global i32 0, align 4
@e1000_phy_force_speed_duplex_m88 = common dso_local global i32 0, align 4
@E1000_ERR_PHY = common dso_local global i64 0, align 8
@E1000_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_init_phy_params_ich8lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_init_phy_params_ich8lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_phy_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 0
  store %struct.e1000_phy_info* %8, %struct.e1000_phy_info** %4, align 8
  store i64 0, i64* %6, align 8
  %9 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %11 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %10, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %13 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %12, i32 0, i32 1
  store i32 100, i32* %13, align 4
  %14 = load i32, i32* @e1000_acquire_swflag_ich8lan, align 4
  %15 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %16 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 17
  store i32 %14, i32* %17, align 4
  %18 = load i32, i32* @e1000_check_reset_block_ich8lan, align 4
  %19 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %20 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 16
  store i32 %18, i32* %21, align 8
  %22 = load i32, i32* @e1000_get_cable_length_igp_2, align 4
  %23 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %24 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 15
  store i32 %22, i32* %25, align 4
  %26 = load i32, i32* @e1000_get_cfg_done_ich8lan, align 4
  %27 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %28 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 14
  store i32 %26, i32* %29, align 8
  %30 = load i8*, i8** @e1000_read_phy_reg_igp, align 8
  %31 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %32 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 5
  store i8* %30, i8** %33, align 8
  %34 = load i32, i32* @e1000_release_swflag_ich8lan, align 4
  %35 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %36 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 13
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* @e1000_phy_hw_reset_ich8lan, align 4
  %39 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %40 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 12
  store i32 %38, i32* %41, align 8
  %42 = load i32, i32* @e1000_set_d0_lplu_state_ich8lan, align 4
  %43 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %44 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 11
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* @e1000_set_d3_lplu_state_ich8lan, align 4
  %47 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %48 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 10
  store i32 %46, i32* %49, align 8
  %50 = load i8*, i8** @e1000_write_phy_reg_igp, align 8
  %51 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %52 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 4
  store i8* %50, i8** %53, align 8
  %54 = load i32, i32* @e1000_power_up_phy_copper, align 4
  %55 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %56 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 9
  store i32 %54, i32* %57, align 4
  %58 = load i32, i32* @e1000_power_down_phy_copper_ich8lan, align 4
  %59 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %60 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 8
  store i32 %58, i32* %61, align 8
  %62 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %63 = call i64 @e1000_determine_phy_address(%struct.e1000_hw* %62)
  store i64 %63, i64* %5, align 8
  %64 = load i64, i64* %5, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %83

66:                                               ; preds = %1
  %67 = load i8*, i8** @e1000_write_phy_reg_bm, align 8
  %68 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %69 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 4
  store i8* %67, i8** %70, align 8
  %71 = load i8*, i8** @e1000_read_phy_reg_bm, align 8
  %72 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %73 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 5
  store i8* %71, i8** %74, align 8
  %75 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %76 = call i64 @e1000_determine_phy_address(%struct.e1000_hw* %75)
  store i64 %76, i64* %5, align 8
  %77 = load i64, i64* %5, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %66
  %80 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %81 = load i64, i64* %5, align 8
  store i64 %81, i64* %2, align 8
  br label %194

82:                                               ; preds = %66
  br label %83

83:                                               ; preds = %82, %1
  %84 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %85 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %84, i32 0, i32 2
  store i32 0, i32* %85, align 8
  br label %86

86:                                               ; preds = %107, %83
  %87 = load i64, i64* @e1000_phy_unknown, align 8
  %88 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %89 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i64 @e1000_get_phy_type_from_id(i32 %90)
  %92 = icmp eq i64 %87, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %86
  %94 = load i64, i64* %6, align 8
  %95 = add nsw i64 %94, 1
  store i64 %95, i64* %6, align 8
  %96 = icmp slt i64 %94, 100
  br label %97

97:                                               ; preds = %93, %86
  %98 = phi i1 [ false, %86 ], [ %96, %93 ]
  br i1 %98, label %99, label %108

99:                                               ; preds = %97
  %100 = call i32 @msec_delay(i32 1)
  %101 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %102 = call i64 @e1000_get_phy_id(%struct.e1000_hw* %101)
  store i64 %102, i64* %5, align 8
  %103 = load i64, i64* %5, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %99
  %106 = load i64, i64* %5, align 8
  store i64 %106, i64* %2, align 8
  br label %194

107:                                              ; preds = %99
  br label %86

108:                                              ; preds = %97
  %109 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %110 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  switch i32 %111, label %189 [
    i32 128, label %112
    i32 130, label %139
    i32 129, label %139
    i32 131, label %139
    i32 132, label %158
  ]

112:                                              ; preds = %108
  %113 = load i32, i32* @e1000_phy_igp_3, align 4
  %114 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %115 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %114, i32 0, i32 5
  store i32 %113, i32* %115, align 8
  %116 = load i8*, i8** @AUTONEG_ADVERTISE_SPEED_DEFAULT, align 8
  %117 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %118 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %117, i32 0, i32 4
  store i8* %116, i8** %118, align 8
  %119 = load i32, i32* @e1000_read_phy_reg_igp_locked, align 4
  %120 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %121 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 7
  store i32 %119, i32* %122, align 4
  %123 = load i32, i32* @e1000_write_phy_reg_igp_locked, align 4
  %124 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %125 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 6
  store i32 %123, i32* %126, align 8
  %127 = load i32, i32* @e1000_get_phy_info_igp, align 4
  %128 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %129 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 2
  store i32 %127, i32* %130, align 8
  %131 = load i32, i32* @e1000_check_polarity_igp, align 4
  %132 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %133 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %132, i32 0, i32 3
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 1
  store i32 %131, i32* %134, align 4
  %135 = load i32, i32* @e1000_phy_force_speed_duplex_igp, align 4
  %136 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %137 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  store i32 %135, i32* %138, align 8
  br label %192

139:                                              ; preds = %108, %108, %108
  %140 = load i32, i32* @e1000_phy_ife, align 4
  %141 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %142 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %141, i32 0, i32 5
  store i32 %140, i32* %142, align 8
  %143 = load i8*, i8** @E1000_ALL_NOT_GIG, align 8
  %144 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %145 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %144, i32 0, i32 4
  store i8* %143, i8** %145, align 8
  %146 = load i32, i32* @e1000_get_phy_info_ife, align 4
  %147 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %148 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %147, i32 0, i32 3
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 2
  store i32 %146, i32* %149, align 8
  %150 = load i32, i32* @e1000_check_polarity_ife, align 4
  %151 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %152 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %151, i32 0, i32 3
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 1
  store i32 %150, i32* %153, align 4
  %154 = load i32, i32* @e1000_phy_force_speed_duplex_ife, align 4
  %155 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %156 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %155, i32 0, i32 3
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 0
  store i32 %154, i32* %157, align 8
  br label %192

158:                                              ; preds = %108
  %159 = load i32, i32* @e1000_phy_bm, align 4
  %160 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %161 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %160, i32 0, i32 5
  store i32 %159, i32* %161, align 8
  %162 = load i8*, i8** @AUTONEG_ADVERTISE_SPEED_DEFAULT, align 8
  %163 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %164 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %163, i32 0, i32 4
  store i8* %162, i8** %164, align 8
  %165 = load i8*, i8** @e1000_read_phy_reg_bm, align 8
  %166 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %167 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %166, i32 0, i32 3
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 5
  store i8* %165, i8** %168, align 8
  %169 = load i8*, i8** @e1000_write_phy_reg_bm, align 8
  %170 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %171 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %170, i32 0, i32 3
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 4
  store i8* %169, i8** %172, align 8
  %173 = load i32, i32* @e1000_phy_sw_reset_generic, align 4
  %174 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %175 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %174, i32 0, i32 3
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 3
  store i32 %173, i32* %176, align 4
  %177 = load i32, i32* @e1000_get_phy_info_m88, align 4
  %178 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %179 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %178, i32 0, i32 3
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 2
  store i32 %177, i32* %180, align 8
  %181 = load i32, i32* @e1000_check_polarity_m88, align 4
  %182 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %183 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %182, i32 0, i32 3
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 1
  store i32 %181, i32* %184, align 4
  %185 = load i32, i32* @e1000_phy_force_speed_duplex_m88, align 4
  %186 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %187 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %186, i32 0, i32 3
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 0
  store i32 %185, i32* %188, align 8
  br label %192

189:                                              ; preds = %108
  %190 = load i64, i64* @E1000_ERR_PHY, align 8
  %191 = sub nsw i64 0, %190
  store i64 %191, i64* %2, align 8
  br label %194

192:                                              ; preds = %158, %139, %112
  %193 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %193, i64* %2, align 8
  br label %194

194:                                              ; preds = %192, %189, %105, %79
  %195 = load i64, i64* %2, align 8
  ret i64 %195
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @e1000_determine_phy_address(%struct.e1000_hw*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i64 @e1000_get_phy_type_from_id(i32) #1

declare dso_local i32 @msec_delay(i32) #1

declare dso_local i64 @e1000_get_phy_id(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
