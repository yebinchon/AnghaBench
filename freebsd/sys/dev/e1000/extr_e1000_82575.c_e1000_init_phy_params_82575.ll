; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82575.c_e1000_init_phy_params_82575.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82575.c_e1000_init_phy_params_82575.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_5__, %struct.e1000_phy_info }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.e1000_phy_info = type { i64, i32, i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i32 (%struct.e1000_hw.0*, i32, i32*)*, i32 (%struct.e1000_hw.1*, i32, i32)*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@E1000_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"e1000_init_phy_params_82575\00", align 1
@e1000_read_i2c_byte_generic = common dso_local global i32 0, align 4
@e1000_write_i2c_byte_generic = common dso_local global i32 0, align 4
@e1000_media_type_copper = common dso_local global i64 0, align 8
@e1000_phy_none = common dso_local global i32 0, align 4
@e1000_power_up_phy_copper = common dso_local global i32 0, align 4
@e1000_power_down_phy_copper_82575 = common dso_local global i32 0, align 4
@AUTONEG_ADVERTISE_SPEED_DEFAULT = common dso_local global i32 0, align 4
@e1000_acquire_phy_82575 = common dso_local global i32 0, align 4
@e1000_check_reset_block_generic = common dso_local global i32 0, align 4
@e1000_phy_sw_reset_generic = common dso_local global i32 0, align 4
@e1000_get_cfg_done_82575 = common dso_local global i32 0, align 4
@e1000_release_phy_82575 = common dso_local global i32 0, align 4
@E1000_CTRL_EXT = common dso_local global i32 0, align 4
@e1000_phy_hw_reset_sgmii_82575 = common dso_local global i32 0, align 4
@E1000_CTRL_I2C_ENA = common dso_local global i32 0, align 4
@e1000_phy_hw_reset_generic = common dso_local global i32 0, align 4
@e1000_phy_m88 = common dso_local global i32 0, align 4
@e1000_check_polarity_m88 = common dso_local global i8* null, align 8
@e1000_get_phy_info_m88 = common dso_local global i8* null, align 8
@e1000_get_cable_length_m88_gen2 = common dso_local global i8* null, align 8
@e1000_get_cable_length_m88 = common dso_local global i8* null, align 8
@e1000_phy_force_speed_duplex_m88 = common dso_local global i8* null, align 8
@E1000_M88E1112_PAGE_ADDR = common dso_local global i32 0, align 4
@E1000_M88E1112_MAC_CTRL_1 = common dso_local global i32 0, align 4
@E1000_M88E1112_MAC_CTRL_1_MODE_MASK = common dso_local global i32 0, align 4
@E1000_M88E1112_MAC_CTRL_1_MODE_SHIFT = common dso_local global i32 0, align 4
@E1000_M88E1112_AUTO_COPPER_SGMII = common dso_local global i32 0, align 4
@E1000_M88E1112_AUTO_COPPER_BASEX = common dso_local global i32 0, align 4
@e1000_check_for_link_media_swap = common dso_local global i32 0, align 4
@e1000_phy_igp_3 = common dso_local global i32 0, align 4
@e1000_check_polarity_igp = common dso_local global i8* null, align 8
@e1000_get_phy_info_igp = common dso_local global i8* null, align 8
@e1000_get_cable_length_igp_2 = common dso_local global i8* null, align 8
@e1000_phy_force_speed_duplex_igp = common dso_local global i8* null, align 8
@e1000_set_d0_lplu_state_82575 = common dso_local global i8* null, align 8
@e1000_set_d3_lplu_state_generic = common dso_local global i8* null, align 8
@e1000_phy_82580 = common dso_local global i32 0, align 4
@e1000_check_polarity_82577 = common dso_local global i8* null, align 8
@e1000_phy_force_speed_duplex_82577 = common dso_local global i8* null, align 8
@e1000_get_cable_length_82577 = common dso_local global i8* null, align 8
@e1000_get_phy_info_82577 = common dso_local global i8* null, align 8
@e1000_set_d0_lplu_state_82580 = common dso_local global i8* null, align 8
@e1000_set_d3_lplu_state_82580 = common dso_local global i8* null, align 8
@e1000_phy_i210 = common dso_local global i32 0, align 4
@E1000_ERR_PHY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @e1000_init_phy_params_82575 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_init_phy_params_82575(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_phy_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 1
  store %struct.e1000_phy_info* %8, %struct.e1000_phy_info** %3, align 8
  %9 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %9, i32* %4, align 4
  %10 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @e1000_read_i2c_byte_generic, align 4
  %12 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %13 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 17
  store i32 %11, i32* %14, align 4
  %15 = load i32, i32* @e1000_write_i2c_byte_generic, align 4
  %16 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %17 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 16
  store i32 %15, i32* %18, align 8
  %19 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %20 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @e1000_media_type_copper, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load i32, i32* @e1000_phy_none, align 4
  %27 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %28 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 8
  br label %358

29:                                               ; preds = %1
  %30 = load i32, i32* @e1000_power_up_phy_copper, align 4
  %31 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %32 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 15
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* @e1000_power_down_phy_copper_82575, align 4
  %35 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %36 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 14
  store i32 %34, i32* %37, align 8
  %38 = load i32, i32* @AUTONEG_ADVERTISE_SPEED_DEFAULT, align 4
  %39 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %40 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 4
  %41 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %42 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %41, i32 0, i32 1
  store i32 100, i32* %42, align 8
  %43 = load i32, i32* @e1000_acquire_phy_82575, align 4
  %44 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %45 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 13
  store i32 %43, i32* %46, align 4
  %47 = load i32, i32* @e1000_check_reset_block_generic, align 4
  %48 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %49 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 12
  store i32 %47, i32* %50, align 8
  %51 = load i32, i32* @e1000_phy_sw_reset_generic, align 4
  %52 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %53 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 11
  store i32 %51, i32* %54, align 4
  %55 = load i32, i32* @e1000_get_cfg_done_82575, align 4
  %56 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %57 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 10
  store i32 %55, i32* %58, align 8
  %59 = load i32, i32* @e1000_release_phy_82575, align 4
  %60 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %61 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 9
  store i32 %59, i32* %62, align 4
  %63 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %64 = load i32, i32* @E1000_CTRL_EXT, align 4
  %65 = call i32 @E1000_READ_REG(%struct.e1000_hw* %63, i32 %64)
  store i32 %65, i32* %5, align 4
  %66 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %67 = call i64 @e1000_sgmii_active_82575(%struct.e1000_hw* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %29
  %70 = load i32, i32* @e1000_phy_hw_reset_sgmii_82575, align 4
  %71 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %72 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 8
  store i32 %70, i32* %73, align 8
  %74 = load i32, i32* @E1000_CTRL_I2C_ENA, align 4
  %75 = load i32, i32* %5, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %5, align 4
  br label %86

77:                                               ; preds = %29
  %78 = load i32, i32* @e1000_phy_hw_reset_generic, align 4
  %79 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %80 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 8
  store i32 %78, i32* %81, align 8
  %82 = load i32, i32* @E1000_CTRL_I2C_ENA, align 4
  %83 = xor i32 %82, -1
  %84 = load i32, i32* %5, align 4
  %85 = and i32 %84, %83
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %77, %69
  %87 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %88 = load i32, i32* @E1000_CTRL_EXT, align 4
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %87, i32 %88, i32 %89)
  %91 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %92 = call i32 @e1000_reset_mdicnfg_82580(%struct.e1000_hw* %91)
  %93 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %94 = call i64 @e1000_sgmii_active_82575(%struct.e1000_hw* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %86
  %97 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %98 = call i32 @e1000_sgmii_uses_mdio_82575(%struct.e1000_hw* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %107, label %100

100:                                              ; preds = %96
  %101 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %102 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 6
  store i32 (%struct.e1000_hw.0*, i32, i32*)* bitcast (i32 (%struct.e1000_hw*, i32, i32*)* @e1000_read_phy_reg_sgmii_82575 to i32 (%struct.e1000_hw.0*, i32, i32*)*), i32 (%struct.e1000_hw.0*, i32, i32*)** %103, align 8
  %104 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %105 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 7
  store i32 (%struct.e1000_hw.1*, i32, i32)* bitcast (i32 (%struct.e1000_hw*, i32, i32)* @e1000_write_phy_reg_sgmii_82575 to i32 (%struct.e1000_hw.1*, i32, i32)*), i32 (%struct.e1000_hw.1*, i32, i32)** %106, align 8
  br label %134

107:                                              ; preds = %96, %86
  %108 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %109 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  switch i32 %111, label %126 [
    i32 132, label %112
    i32 129, label %112
    i32 128, label %112
    i32 131, label %119
    i32 130, label %119
  ]

112:                                              ; preds = %107, %107, %107
  %113 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %114 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 6
  store i32 (%struct.e1000_hw.0*, i32, i32*)* bitcast (i32 (%struct.e1000_hw*, i32, i32*)* @e1000_read_phy_reg_82580 to i32 (%struct.e1000_hw.0*, i32, i32*)*), i32 (%struct.e1000_hw.0*, i32, i32*)** %115, align 8
  %116 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %117 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 7
  store i32 (%struct.e1000_hw.1*, i32, i32)* bitcast (i32 (%struct.e1000_hw*, i32, i32)* @e1000_write_phy_reg_82580 to i32 (%struct.e1000_hw.1*, i32, i32)*), i32 (%struct.e1000_hw.1*, i32, i32)** %118, align 8
  br label %133

119:                                              ; preds = %107, %107
  %120 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %121 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 6
  store i32 (%struct.e1000_hw.0*, i32, i32*)* bitcast (i32 (%struct.e1000_hw*, i32, i32*)* @e1000_read_phy_reg_gs40g to i32 (%struct.e1000_hw.0*, i32, i32*)*), i32 (%struct.e1000_hw.0*, i32, i32*)** %122, align 8
  %123 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %124 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 7
  store i32 (%struct.e1000_hw.1*, i32, i32)* bitcast (i32 (%struct.e1000_hw*, i32, i32)* @e1000_write_phy_reg_gs40g to i32 (%struct.e1000_hw.1*, i32, i32)*), i32 (%struct.e1000_hw.1*, i32, i32)** %125, align 8
  br label %133

126:                                              ; preds = %107
  %127 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %128 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 6
  store i32 (%struct.e1000_hw.0*, i32, i32*)* bitcast (i32 (%struct.e1000_hw*, i32, i32*)* @e1000_read_phy_reg_igp to i32 (%struct.e1000_hw.0*, i32, i32*)*), i32 (%struct.e1000_hw.0*, i32, i32*)** %129, align 8
  %130 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %131 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 7
  store i32 (%struct.e1000_hw.1*, i32, i32)* bitcast (i32 (%struct.e1000_hw*, i32, i32)* @e1000_write_phy_reg_igp to i32 (%struct.e1000_hw.1*, i32, i32)*), i32 (%struct.e1000_hw.1*, i32, i32)** %132, align 8
  br label %133

133:                                              ; preds = %126, %119, %112
  br label %134

134:                                              ; preds = %133, %100
  %135 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %136 = call i32 @e1000_get_phy_id_82575(%struct.e1000_hw* %135)
  store i32 %136, i32* %4, align 4
  %137 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %138 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  switch i32 %139, label %354 [
    i32 133, label %140
    i32 134, label %140
    i32 142, label %140
    i32 136, label %140
    i32 135, label %140
    i32 137, label %140
    i32 139, label %270
    i32 138, label %270
    i32 140, label %298
    i32 141, label %298
    i32 143, label %326
  ]

140:                                              ; preds = %134, %134, %134, %134, %134, %134
  %141 = load i32, i32* @e1000_phy_m88, align 4
  %142 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %143 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %142, i32 0, i32 4
  store i32 %141, i32* %143, align 8
  %144 = load i8*, i8** @e1000_check_polarity_m88, align 8
  %145 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %146 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 5
  store i8* %144, i8** %147, align 8
  %148 = load i8*, i8** @e1000_get_phy_info_m88, align 8
  %149 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %150 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %149, i32 0, i32 3
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 4
  store i8* %148, i8** %151, align 8
  %152 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %153 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = icmp eq i32 %154, 142
  br i1 %155, label %166, label %156

156:                                              ; preds = %140
  %157 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %158 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = icmp eq i32 %159, 136
  br i1 %160, label %166, label %161

161:                                              ; preds = %156
  %162 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %163 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = icmp eq i32 %164, 135
  br i1 %165, label %166, label %171

166:                                              ; preds = %161, %156, %140
  %167 = load i8*, i8** @e1000_get_cable_length_m88_gen2, align 8
  %168 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %169 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %168, i32 0, i32 3
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 3
  store i8* %167, i8** %170, align 8
  br label %192

171:                                              ; preds = %161
  %172 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %173 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = icmp eq i32 %174, 133
  br i1 %175, label %181, label %176

176:                                              ; preds = %171
  %177 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %178 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = icmp eq i32 %179, 134
  br i1 %180, label %181, label %186

181:                                              ; preds = %176, %171
  %182 = load i8*, i8** @e1000_get_cable_length_m88_gen2, align 8
  %183 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %184 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %183, i32 0, i32 3
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 3
  store i8* %182, i8** %185, align 8
  br label %191

186:                                              ; preds = %176
  %187 = load i8*, i8** @e1000_get_cable_length_m88, align 8
  %188 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %189 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %188, i32 0, i32 3
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 3
  store i8* %187, i8** %190, align 8
  br label %191

191:                                              ; preds = %186, %181
  br label %192

192:                                              ; preds = %191, %166
  %193 = load i8*, i8** @e1000_phy_force_speed_duplex_m88, align 8
  %194 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %195 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %194, i32 0, i32 3
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 0
  store i8* %193, i8** %196, align 8
  %197 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %198 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  %200 = icmp eq i32 %199, 136
  br i1 %200, label %201, label %245

201:                                              ; preds = %192
  %202 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %203 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %202, i32 0, i32 3
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 7
  %205 = load i32 (%struct.e1000_hw.1*, i32, i32)*, i32 (%struct.e1000_hw.1*, i32, i32)** %204, align 8
  %206 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %207 = bitcast %struct.e1000_hw* %206 to %struct.e1000_hw.1*
  %208 = load i32, i32* @E1000_M88E1112_PAGE_ADDR, align 4
  %209 = call i32 %205(%struct.e1000_hw.1* %207, i32 %208, i32 2)
  store i32 %209, i32* %4, align 4
  %210 = load i32, i32* %4, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %201
  br label %358

213:                                              ; preds = %201
  %214 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %215 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %214, i32 0, i32 3
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 6
  %217 = load i32 (%struct.e1000_hw.0*, i32, i32*)*, i32 (%struct.e1000_hw.0*, i32, i32*)** %216, align 8
  %218 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %219 = bitcast %struct.e1000_hw* %218 to %struct.e1000_hw.0*
  %220 = load i32, i32* @E1000_M88E1112_MAC_CTRL_1, align 4
  %221 = call i32 %217(%struct.e1000_hw.0* %219, i32 %220, i32* %6)
  store i32 %221, i32* %4, align 4
  %222 = load i32, i32* %4, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %213
  br label %358

225:                                              ; preds = %213
  %226 = load i32, i32* %6, align 4
  %227 = load i32, i32* @E1000_M88E1112_MAC_CTRL_1_MODE_MASK, align 4
  %228 = and i32 %226, %227
  %229 = load i32, i32* @E1000_M88E1112_MAC_CTRL_1_MODE_SHIFT, align 4
  %230 = ashr i32 %228, %229
  store i32 %230, i32* %6, align 4
  %231 = load i32, i32* %6, align 4
  %232 = load i32, i32* @E1000_M88E1112_AUTO_COPPER_SGMII, align 4
  %233 = icmp eq i32 %231, %232
  br i1 %233, label %238, label %234

234:                                              ; preds = %225
  %235 = load i32, i32* %6, align 4
  %236 = load i32, i32* @E1000_M88E1112_AUTO_COPPER_BASEX, align 4
  %237 = icmp eq i32 %235, %236
  br i1 %237, label %238, label %244

238:                                              ; preds = %234, %225
  %239 = load i32, i32* @e1000_check_for_link_media_swap, align 4
  %240 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %241 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %242, i32 0, i32 0
  store i32 %239, i32* %243, align 4
  br label %244

244:                                              ; preds = %238, %234
  br label %245

245:                                              ; preds = %244, %192
  %246 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %247 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 4
  %249 = icmp eq i32 %248, 134
  br i1 %249, label %250, label %257

250:                                              ; preds = %245
  %251 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %252 = call i32 @e1000_initialize_M88E1512_phy(%struct.e1000_hw* %251)
  store i32 %252, i32* %4, align 4
  %253 = load i32, i32* %4, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %256

255:                                              ; preds = %250
  br label %358

256:                                              ; preds = %250
  br label %257

257:                                              ; preds = %256, %245
  %258 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %259 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 4
  %261 = icmp eq i32 %260, 133
  br i1 %261, label %262, label %269

262:                                              ; preds = %257
  %263 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %264 = call i32 @e1000_initialize_M88E1543_phy(%struct.e1000_hw* %263)
  store i32 %264, i32* %4, align 4
  %265 = load i32, i32* %4, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %268

267:                                              ; preds = %262
  br label %358

268:                                              ; preds = %262
  br label %269

269:                                              ; preds = %268, %257
  br label %357

270:                                              ; preds = %134, %134
  %271 = load i32, i32* @e1000_phy_igp_3, align 4
  %272 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %273 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %272, i32 0, i32 4
  store i32 %271, i32* %273, align 8
  %274 = load i8*, i8** @e1000_check_polarity_igp, align 8
  %275 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %276 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %275, i32 0, i32 3
  %277 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %276, i32 0, i32 5
  store i8* %274, i8** %277, align 8
  %278 = load i8*, i8** @e1000_get_phy_info_igp, align 8
  %279 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %280 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %279, i32 0, i32 3
  %281 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %280, i32 0, i32 4
  store i8* %278, i8** %281, align 8
  %282 = load i8*, i8** @e1000_get_cable_length_igp_2, align 8
  %283 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %284 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %283, i32 0, i32 3
  %285 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %284, i32 0, i32 3
  store i8* %282, i8** %285, align 8
  %286 = load i8*, i8** @e1000_phy_force_speed_duplex_igp, align 8
  %287 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %288 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %287, i32 0, i32 3
  %289 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %288, i32 0, i32 0
  store i8* %286, i8** %289, align 8
  %290 = load i8*, i8** @e1000_set_d0_lplu_state_82575, align 8
  %291 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %292 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %291, i32 0, i32 3
  %293 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %292, i32 0, i32 2
  store i8* %290, i8** %293, align 8
  %294 = load i8*, i8** @e1000_set_d3_lplu_state_generic, align 8
  %295 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %296 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %295, i32 0, i32 3
  %297 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %296, i32 0, i32 1
  store i8* %294, i8** %297, align 8
  br label %357

298:                                              ; preds = %134, %134
  %299 = load i32, i32* @e1000_phy_82580, align 4
  %300 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %301 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %300, i32 0, i32 4
  store i32 %299, i32* %301, align 8
  %302 = load i8*, i8** @e1000_check_polarity_82577, align 8
  %303 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %304 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %303, i32 0, i32 3
  %305 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %304, i32 0, i32 5
  store i8* %302, i8** %305, align 8
  %306 = load i8*, i8** @e1000_phy_force_speed_duplex_82577, align 8
  %307 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %308 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %307, i32 0, i32 3
  %309 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %308, i32 0, i32 0
  store i8* %306, i8** %309, align 8
  %310 = load i8*, i8** @e1000_get_cable_length_82577, align 8
  %311 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %312 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %311, i32 0, i32 3
  %313 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %312, i32 0, i32 3
  store i8* %310, i8** %313, align 8
  %314 = load i8*, i8** @e1000_get_phy_info_82577, align 8
  %315 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %316 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %315, i32 0, i32 3
  %317 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %316, i32 0, i32 4
  store i8* %314, i8** %317, align 8
  %318 = load i8*, i8** @e1000_set_d0_lplu_state_82580, align 8
  %319 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %320 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %319, i32 0, i32 3
  %321 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %320, i32 0, i32 2
  store i8* %318, i8** %321, align 8
  %322 = load i8*, i8** @e1000_set_d3_lplu_state_82580, align 8
  %323 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %324 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %323, i32 0, i32 3
  %325 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %324, i32 0, i32 1
  store i8* %322, i8** %325, align 8
  br label %357

326:                                              ; preds = %134
  %327 = load i32, i32* @e1000_phy_i210, align 4
  %328 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %329 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %328, i32 0, i32 4
  store i32 %327, i32* %329, align 8
  %330 = load i8*, i8** @e1000_check_polarity_m88, align 8
  %331 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %332 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %331, i32 0, i32 3
  %333 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %332, i32 0, i32 5
  store i8* %330, i8** %333, align 8
  %334 = load i8*, i8** @e1000_get_phy_info_m88, align 8
  %335 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %336 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %335, i32 0, i32 3
  %337 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %336, i32 0, i32 4
  store i8* %334, i8** %337, align 8
  %338 = load i8*, i8** @e1000_get_cable_length_m88_gen2, align 8
  %339 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %340 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %339, i32 0, i32 3
  %341 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %340, i32 0, i32 3
  store i8* %338, i8** %341, align 8
  %342 = load i8*, i8** @e1000_set_d0_lplu_state_82580, align 8
  %343 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %344 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %343, i32 0, i32 3
  %345 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %344, i32 0, i32 2
  store i8* %342, i8** %345, align 8
  %346 = load i8*, i8** @e1000_set_d3_lplu_state_82580, align 8
  %347 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %348 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %347, i32 0, i32 3
  %349 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %348, i32 0, i32 1
  store i8* %346, i8** %349, align 8
  %350 = load i8*, i8** @e1000_phy_force_speed_duplex_m88, align 8
  %351 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %352 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %351, i32 0, i32 3
  %353 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %352, i32 0, i32 0
  store i8* %350, i8** %353, align 8
  br label %357

354:                                              ; preds = %134
  %355 = load i32, i32* @E1000_ERR_PHY, align 4
  %356 = sub nsw i32 0, %355
  store i32 %356, i32* %4, align 4
  br label %358

357:                                              ; preds = %326, %298, %270, %269
  br label %358

358:                                              ; preds = %357, %354, %267, %255, %224, %212, %25
  %359 = load i32, i32* %4, align 4
  ret i32 %359
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i64 @e1000_sgmii_active_82575(%struct.e1000_hw*) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @e1000_reset_mdicnfg_82580(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_sgmii_uses_mdio_82575(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_read_phy_reg_sgmii_82575(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i32 @e1000_write_phy_reg_sgmii_82575(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @e1000_read_phy_reg_82580(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i32 @e1000_write_phy_reg_82580(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @e1000_read_phy_reg_gs40g(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i32 @e1000_write_phy_reg_gs40g(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @e1000_read_phy_reg_igp(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i32 @e1000_write_phy_reg_igp(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @e1000_get_phy_id_82575(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_initialize_M88E1512_phy(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_initialize_M88E1543_phy(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
