; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82571.c_e1000_init_phy_params_82571.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82571.c_e1000_init_phy_params_82571.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__, %struct.e1000_phy_info }
%struct.TYPE_4__ = type { i32 }
%struct.e1000_phy_info = type { i64, i32, i32, i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i8*, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"e1000_init_phy_params_82571\00", align 1
@e1000_media_type_copper = common dso_local global i64 0, align 8
@e1000_phy_none = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i64 0, align 8
@AUTONEG_ADVERTISE_SPEED_DEFAULT = common dso_local global i32 0, align 4
@e1000_check_reset_block_generic = common dso_local global i32 0, align 4
@e1000_phy_hw_reset_generic = common dso_local global i32 0, align 4
@e1000_set_d0_lplu_state_82571 = common dso_local global i32 0, align 4
@e1000_set_d3_lplu_state_generic = common dso_local global i32 0, align 4
@e1000_power_up_phy_copper = common dso_local global i32 0, align 4
@e1000_power_down_phy_copper_82571 = common dso_local global i32 0, align 4
@e1000_phy_igp_2 = common dso_local global i32 0, align 4
@e1000_get_cfg_done_82571 = common dso_local global i8* null, align 8
@e1000_get_phy_info_igp = common dso_local global i8* null, align 8
@e1000_check_polarity_igp = common dso_local global i8* null, align 8
@e1000_phy_force_speed_duplex_igp = common dso_local global i8* null, align 8
@e1000_get_cable_length_igp_2 = common dso_local global i8* null, align 8
@e1000_read_phy_reg_igp = common dso_local global i32 0, align 4
@e1000_write_phy_reg_igp = common dso_local global i32 0, align 4
@e1000_get_hw_semaphore = common dso_local global i8* null, align 8
@e1000_put_hw_semaphore = common dso_local global i8* null, align 8
@e1000_phy_m88 = common dso_local global i32 0, align 4
@e1000_get_cfg_done_generic = common dso_local global i8* null, align 8
@e1000_get_phy_info_m88 = common dso_local global i8* null, align 8
@e1000_check_polarity_m88 = common dso_local global i8* null, align 8
@e1000_phy_sw_reset_generic = common dso_local global i8* null, align 8
@e1000_phy_force_speed_duplex_m88 = common dso_local global i8* null, align 8
@e1000_get_cable_length_m88 = common dso_local global i8* null, align 8
@e1000_read_phy_reg_m88 = common dso_local global i32 0, align 4
@e1000_write_phy_reg_m88 = common dso_local global i32 0, align 4
@e1000_phy_bm = common dso_local global i32 0, align 4
@e1000_read_phy_reg_bm2 = common dso_local global i32 0, align 4
@e1000_write_phy_reg_bm2 = common dso_local global i32 0, align 4
@e1000_get_hw_semaphore_82574 = common dso_local global i8* null, align 8
@e1000_put_hw_semaphore_82574 = common dso_local global i8* null, align 8
@e1000_set_d0_lplu_state_82574 = common dso_local global i32 0, align 4
@e1000_set_d3_lplu_state_82574 = common dso_local global i32 0, align 4
@E1000_ERR_PHY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"Error getting PHY ID\0A\00", align 1
@IGP01E1000_I_PHY_ID = common dso_local global i32 0, align 4
@M88E1111_I_PHY_ID = common dso_local global i32 0, align 4
@BME1000_E_PHY_ID_R2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"PHY ID unknown: type = 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_init_phy_params_82571 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_init_phy_params_82571(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_phy_info*, align 8
  %5 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %6 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %7 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %6, i32 0, i32 1
  store %struct.e1000_phy_info* %7, %struct.e1000_phy_info** %4, align 8
  %8 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %10 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %9, i32 0, i32 1
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
  %19 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %19, i64* %2, align 8
  br label %251

20:                                               ; preds = %1
  %21 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %22 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %21, i32 0, i32 1
  store i32 1, i32* %22, align 8
  %23 = load i32, i32* @AUTONEG_ADVERTISE_SPEED_DEFAULT, align 4
  %24 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %25 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %24, i32 0, i32 6
  store i32 %23, i32* %25, align 4
  %26 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %27 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %26, i32 0, i32 2
  store i32 100, i32* %27, align 4
  %28 = load i32, i32* @e1000_check_reset_block_generic, align 4
  %29 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %30 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 15
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* @e1000_phy_hw_reset_generic, align 4
  %33 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %34 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 14
  store i32 %32, i32* %35, align 8
  %36 = load i32, i32* @e1000_set_d0_lplu_state_82571, align 4
  %37 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %38 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  store i32 %36, i32* %39, align 4
  %40 = load i32, i32* @e1000_set_d3_lplu_state_generic, align 4
  %41 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %42 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 8
  %44 = load i32, i32* @e1000_power_up_phy_copper, align 4
  %45 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %46 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 13
  store i32 %44, i32* %47, align 4
  %48 = load i32, i32* @e1000_power_down_phy_copper_82571, align 4
  %49 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %50 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 12
  store i32 %48, i32* %51, align 8
  %52 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %53 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  switch i32 %55, label %192 [
    i32 132, label %56
    i32 131, label %56
    i32 130, label %96
    i32 129, label %140
    i32 128, label %140
  ]

56:                                               ; preds = %20, %20
  %57 = load i32, i32* @e1000_phy_igp_2, align 4
  %58 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %59 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %58, i32 0, i32 5
  store i32 %57, i32* %59, align 8
  %60 = load i8*, i8** @e1000_get_cfg_done_82571, align 8
  %61 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %62 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 11
  store i8* %60, i8** %63, align 8
  %64 = load i8*, i8** @e1000_get_phy_info_igp, align 8
  %65 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %66 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 10
  store i8* %64, i8** %67, align 8
  %68 = load i8*, i8** @e1000_check_polarity_igp, align 8
  %69 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %70 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 9
  store i8* %68, i8** %71, align 8
  %72 = load i8*, i8** @e1000_phy_force_speed_duplex_igp, align 8
  %73 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %74 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 7
  store i8* %72, i8** %75, align 8
  %76 = load i8*, i8** @e1000_get_cable_length_igp_2, align 8
  %77 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %78 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %77, i32 0, i32 4
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 6
  store i8* %76, i8** %79, align 8
  %80 = load i32, i32* @e1000_read_phy_reg_igp, align 4
  %81 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %82 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 5
  store i32 %80, i32* %83, align 4
  %84 = load i32, i32* @e1000_write_phy_reg_igp, align 4
  %85 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %86 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %85, i32 0, i32 4
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 4
  store i32 %84, i32* %87, align 8
  %88 = load i8*, i8** @e1000_get_hw_semaphore, align 8
  %89 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %90 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %89, i32 0, i32 4
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 3
  store i8* %88, i8** %91, align 8
  %92 = load i8*, i8** @e1000_put_hw_semaphore, align 8
  %93 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %94 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %93, i32 0, i32 4
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 2
  store i8* %92, i8** %95, align 8
  br label %195

96:                                               ; preds = %20
  %97 = load i32, i32* @e1000_phy_m88, align 4
  %98 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %99 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %98, i32 0, i32 5
  store i32 %97, i32* %99, align 8
  %100 = load i8*, i8** @e1000_get_cfg_done_generic, align 8
  %101 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %102 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 11
  store i8* %100, i8** %103, align 8
  %104 = load i8*, i8** @e1000_get_phy_info_m88, align 8
  %105 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %106 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %105, i32 0, i32 4
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 10
  store i8* %104, i8** %107, align 8
  %108 = load i8*, i8** @e1000_check_polarity_m88, align 8
  %109 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %110 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %109, i32 0, i32 4
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 9
  store i8* %108, i8** %111, align 8
  %112 = load i8*, i8** @e1000_phy_sw_reset_generic, align 8
  %113 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %114 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %113, i32 0, i32 4
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 8
  store i8* %112, i8** %115, align 8
  %116 = load i8*, i8** @e1000_phy_force_speed_duplex_m88, align 8
  %117 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %118 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %117, i32 0, i32 4
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 7
  store i8* %116, i8** %119, align 8
  %120 = load i8*, i8** @e1000_get_cable_length_m88, align 8
  %121 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %122 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %121, i32 0, i32 4
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 6
  store i8* %120, i8** %123, align 8
  %124 = load i32, i32* @e1000_read_phy_reg_m88, align 4
  %125 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %126 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %125, i32 0, i32 4
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 5
  store i32 %124, i32* %127, align 4
  %128 = load i32, i32* @e1000_write_phy_reg_m88, align 4
  %129 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %130 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %129, i32 0, i32 4
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 4
  store i32 %128, i32* %131, align 8
  %132 = load i8*, i8** @e1000_get_hw_semaphore, align 8
  %133 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %134 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %133, i32 0, i32 4
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 3
  store i8* %132, i8** %135, align 8
  %136 = load i8*, i8** @e1000_put_hw_semaphore, align 8
  %137 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %138 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %137, i32 0, i32 4
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 2
  store i8* %136, i8** %139, align 8
  br label %195

140:                                              ; preds = %20, %20
  %141 = load i32, i32* @e1000_phy_bm, align 4
  %142 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %143 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %142, i32 0, i32 5
  store i32 %141, i32* %143, align 8
  %144 = load i8*, i8** @e1000_get_cfg_done_generic, align 8
  %145 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %146 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %145, i32 0, i32 4
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 11
  store i8* %144, i8** %147, align 8
  %148 = load i8*, i8** @e1000_get_phy_info_m88, align 8
  %149 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %150 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %149, i32 0, i32 4
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 10
  store i8* %148, i8** %151, align 8
  %152 = load i8*, i8** @e1000_check_polarity_m88, align 8
  %153 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %154 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %153, i32 0, i32 4
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 9
  store i8* %152, i8** %155, align 8
  %156 = load i8*, i8** @e1000_phy_sw_reset_generic, align 8
  %157 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %158 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %157, i32 0, i32 4
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 8
  store i8* %156, i8** %159, align 8
  %160 = load i8*, i8** @e1000_phy_force_speed_duplex_m88, align 8
  %161 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %162 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %161, i32 0, i32 4
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 7
  store i8* %160, i8** %163, align 8
  %164 = load i8*, i8** @e1000_get_cable_length_m88, align 8
  %165 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %166 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %165, i32 0, i32 4
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 6
  store i8* %164, i8** %167, align 8
  %168 = load i32, i32* @e1000_read_phy_reg_bm2, align 4
  %169 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %170 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %169, i32 0, i32 4
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 5
  store i32 %168, i32* %171, align 4
  %172 = load i32, i32* @e1000_write_phy_reg_bm2, align 4
  %173 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %174 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %173, i32 0, i32 4
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 4
  store i32 %172, i32* %175, align 8
  %176 = load i8*, i8** @e1000_get_hw_semaphore_82574, align 8
  %177 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %178 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %177, i32 0, i32 4
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 3
  store i8* %176, i8** %179, align 8
  %180 = load i8*, i8** @e1000_put_hw_semaphore_82574, align 8
  %181 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %182 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %181, i32 0, i32 4
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 2
  store i8* %180, i8** %183, align 8
  %184 = load i32, i32* @e1000_set_d0_lplu_state_82574, align 4
  %185 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %186 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %185, i32 0, i32 4
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 1
  store i32 %184, i32* %187, align 4
  %188 = load i32, i32* @e1000_set_d3_lplu_state_82574, align 4
  %189 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %190 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %189, i32 0, i32 4
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i32 0, i32 0
  store i32 %188, i32* %191, align 8
  br label %195

192:                                              ; preds = %20
  %193 = load i64, i64* @E1000_ERR_PHY, align 8
  %194 = sub nsw i64 0, %193
  store i64 %194, i64* %2, align 8
  br label %251

195:                                              ; preds = %140, %96, %56
  %196 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %197 = call i64 @e1000_get_phy_id_82571(%struct.e1000_hw* %196)
  store i64 %197, i64* %5, align 8
  %198 = load i64, i64* %5, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %195
  %201 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %202 = load i64, i64* %5, align 8
  store i64 %202, i64* %2, align 8
  br label %251

203:                                              ; preds = %195
  %204 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %205 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  switch i32 %207, label %238 [
    i32 132, label %208
    i32 131, label %208
    i32 130, label %218
    i32 129, label %228
    i32 128, label %228
  ]

208:                                              ; preds = %203, %203
  %209 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %210 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* @IGP01E1000_I_PHY_ID, align 4
  %213 = icmp ne i32 %211, %212
  br i1 %213, label %214, label %217

214:                                              ; preds = %208
  %215 = load i64, i64* @E1000_ERR_PHY, align 8
  %216 = sub nsw i64 0, %215
  store i64 %216, i64* %5, align 8
  br label %217

217:                                              ; preds = %214, %208
  br label %241

218:                                              ; preds = %203
  %219 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %220 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* @M88E1111_I_PHY_ID, align 4
  %223 = icmp ne i32 %221, %222
  br i1 %223, label %224, label %227

224:                                              ; preds = %218
  %225 = load i64, i64* @E1000_ERR_PHY, align 8
  %226 = sub nsw i64 0, %225
  store i64 %226, i64* %5, align 8
  br label %227

227:                                              ; preds = %224, %218
  br label %241

228:                                              ; preds = %203, %203
  %229 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %230 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %229, i32 0, i32 3
  %231 = load i32, i32* %230, align 8
  %232 = load i32, i32* @BME1000_E_PHY_ID_R2, align 4
  %233 = icmp ne i32 %231, %232
  br i1 %233, label %234, label %237

234:                                              ; preds = %228
  %235 = load i64, i64* @E1000_ERR_PHY, align 8
  %236 = sub nsw i64 0, %235
  store i64 %236, i64* %5, align 8
  br label %237

237:                                              ; preds = %234, %228
  br label %241

238:                                              ; preds = %203
  %239 = load i64, i64* @E1000_ERR_PHY, align 8
  %240 = sub nsw i64 0, %239
  store i64 %240, i64* %5, align 8
  br label %241

241:                                              ; preds = %238, %237, %227, %217
  %242 = load i64, i64* %5, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %249

244:                                              ; preds = %241
  %245 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %246 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %245, i32 0, i32 3
  %247 = load i32, i32* %246, align 8
  %248 = call i32 @DEBUGOUT1(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %247)
  br label %249

249:                                              ; preds = %244, %241
  %250 = load i64, i64* %5, align 8
  store i64 %250, i64* %2, align 8
  br label %251

251:                                              ; preds = %249, %200, %192, %15
  %252 = load i64, i64* %2, align 8
  ret i64 %252
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @e1000_get_phy_id_82571(%struct.e1000_hw*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @DEBUGOUT1(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
