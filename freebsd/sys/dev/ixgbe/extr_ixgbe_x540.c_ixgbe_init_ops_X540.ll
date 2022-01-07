; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x540.c_ixgbe_init_ops_X540.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x540.c_ixgbe_init_ops_X540.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_9__, %struct.ixgbe_eeprom_info, %struct.ixgbe_phy_info, %struct.ixgbe_mac_info }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.ixgbe_eeprom_info = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ixgbe_phy_info = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32*, i32 (%struct.ixgbe_hw.0*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_mac_info = type { i32, i32, %struct.TYPE_10__, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"ixgbe_init_ops_X540\00", align 1
@ixgbe_init_eeprom_params_X540 = common dso_local global i32 0, align 4
@ixgbe_read_eerd_X540 = common dso_local global i32 0, align 4
@ixgbe_read_eerd_buffer_X540 = common dso_local global i32 0, align 4
@ixgbe_write_eewr_X540 = common dso_local global i32 0, align 4
@ixgbe_write_eewr_buffer_X540 = common dso_local global i32 0, align 4
@ixgbe_update_eeprom_checksum_X540 = common dso_local global i32 0, align 4
@ixgbe_validate_eeprom_checksum_X540 = common dso_local global i32 0, align 4
@ixgbe_calc_eeprom_checksum_X540 = common dso_local global i32 0, align 4
@ixgbe_set_copper_phy_power = common dso_local global i32 0, align 4
@ixgbe_reset_hw_X540 = common dso_local global i32 0, align 4
@ixgbe_enable_relaxed_ordering_gen2 = common dso_local global i32 0, align 4
@ixgbe_get_media_type_X540 = common dso_local global i32 0, align 4
@ixgbe_get_supported_physical_layer_X540 = common dso_local global i32 0, align 4
@ixgbe_start_hw_X540 = common dso_local global i32 0, align 4
@ixgbe_get_san_mac_addr_generic = common dso_local global i32 0, align 4
@ixgbe_set_san_mac_addr_generic = common dso_local global i32 0, align 4
@ixgbe_get_device_caps_generic = common dso_local global i32 0, align 4
@ixgbe_get_wwn_prefix_generic = common dso_local global i32 0, align 4
@ixgbe_get_fcoe_boot_status_generic = common dso_local global i32 0, align 4
@ixgbe_acquire_swfw_sync_X540 = common dso_local global i32 0, align 4
@ixgbe_release_swfw_sync_X540 = common dso_local global i32 0, align 4
@ixgbe_init_swfw_sync_X540 = common dso_local global i32 0, align 4
@ixgbe_disable_sec_rx_path_generic = common dso_local global i32 0, align 4
@ixgbe_enable_sec_rx_path_generic = common dso_local global i32 0, align 4
@ixgbe_set_vmdq_generic = common dso_local global i32 0, align 4
@ixgbe_set_vmdq_san_mac_generic = common dso_local global i32 0, align 4
@ixgbe_clear_vmdq_generic = common dso_local global i32 0, align 4
@ixgbe_insert_mac_addr_generic = common dso_local global i32 0, align 4
@ixgbe_set_vfta_generic = common dso_local global i32 0, align 4
@ixgbe_set_vlvf_generic = common dso_local global i32 0, align 4
@ixgbe_clear_vfta_generic = common dso_local global i32 0, align 4
@ixgbe_init_uta_tables_generic = common dso_local global i32 0, align 4
@ixgbe_set_mac_anti_spoofing = common dso_local global i32 0, align 4
@ixgbe_set_vlan_anti_spoofing = common dso_local global i32 0, align 4
@ixgbe_get_copper_link_capabilities_generic = common dso_local global i32 0, align 4
@ixgbe_setup_mac_link_X540 = common dso_local global i32 0, align 4
@ixgbe_set_rxpba_generic = common dso_local global i32 0, align 4
@ixgbe_check_mac_link_generic = common dso_local global i32 0, align 4
@ixgbe_bypass_rw_generic = common dso_local global i32 0, align 4
@ixgbe_bypass_valid_rd_generic = common dso_local global i32 0, align 4
@ixgbe_bypass_set_generic = common dso_local global i32 0, align 4
@ixgbe_bypass_rd_eep_generic = common dso_local global i32 0, align 4
@IXGBE_X540_MC_TBL_SIZE = common dso_local global i32 0, align 4
@IXGBE_X540_VFT_TBL_SIZE = common dso_local global i32 0, align 4
@IXGBE_X540_RAR_ENTRIES = common dso_local global i32 0, align 4
@IXGBE_X540_RX_PB_SIZE = common dso_local global i32 0, align 4
@IXGBE_X540_MAX_RX_QUEUES = common dso_local global i32 0, align 4
@IXGBE_X540_MAX_TX_QUEUES = common dso_local global i32 0, align 4
@IXGBE_FWSM_MODE_MASK = common dso_local global i32 0, align 4
@ixgbe_init_mbx_params_pf = common dso_local global i32 0, align 4
@ixgbe_blink_led_start_X540 = common dso_local global i32 0, align 4
@ixgbe_blink_led_stop_X540 = common dso_local global i32 0, align 4
@ixgbe_set_fw_drv_ver_generic = common dso_local global i32 0, align 4
@ixgbe_dcb_get_rtrup2tc_generic = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_init_ops_X540(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca %struct.ixgbe_mac_info*, align 8
  %4 = alloca %struct.ixgbe_phy_info*, align 8
  %5 = alloca %struct.ixgbe_eeprom_info*, align 8
  %6 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %7 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %8 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %7, i32 0, i32 3
  store %struct.ixgbe_mac_info* %8, %struct.ixgbe_mac_info** %3, align 8
  %9 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %10 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %9, i32 0, i32 2
  store %struct.ixgbe_phy_info* %10, %struct.ixgbe_phy_info** %4, align 8
  %11 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %12 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %11, i32 0, i32 1
  store %struct.ixgbe_eeprom_info* %12, %struct.ixgbe_eeprom_info** %5, align 8
  %13 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %15 = call i32 @ixgbe_init_phy_ops_generic(%struct.ixgbe_hw* %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %17 = call i32 @ixgbe_init_ops_generic(%struct.ixgbe_hw* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* @ixgbe_init_eeprom_params_X540, align 4
  %19 = load %struct.ixgbe_eeprom_info*, %struct.ixgbe_eeprom_info** %5, align 8
  %20 = getelementptr inbounds %struct.ixgbe_eeprom_info, %struct.ixgbe_eeprom_info* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 7
  store i32 %18, i32* %21, align 4
  %22 = load i32, i32* @ixgbe_read_eerd_X540, align 4
  %23 = load %struct.ixgbe_eeprom_info*, %struct.ixgbe_eeprom_info** %5, align 8
  %24 = getelementptr inbounds %struct.ixgbe_eeprom_info, %struct.ixgbe_eeprom_info* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 6
  store i32 %22, i32* %25, align 4
  %26 = load i32, i32* @ixgbe_read_eerd_buffer_X540, align 4
  %27 = load %struct.ixgbe_eeprom_info*, %struct.ixgbe_eeprom_info** %5, align 8
  %28 = getelementptr inbounds %struct.ixgbe_eeprom_info, %struct.ixgbe_eeprom_info* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 5
  store i32 %26, i32* %29, align 4
  %30 = load i32, i32* @ixgbe_write_eewr_X540, align 4
  %31 = load %struct.ixgbe_eeprom_info*, %struct.ixgbe_eeprom_info** %5, align 8
  %32 = getelementptr inbounds %struct.ixgbe_eeprom_info, %struct.ixgbe_eeprom_info* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 4
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* @ixgbe_write_eewr_buffer_X540, align 4
  %35 = load %struct.ixgbe_eeprom_info*, %struct.ixgbe_eeprom_info** %5, align 8
  %36 = getelementptr inbounds %struct.ixgbe_eeprom_info, %struct.ixgbe_eeprom_info* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 3
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* @ixgbe_update_eeprom_checksum_X540, align 4
  %39 = load %struct.ixgbe_eeprom_info*, %struct.ixgbe_eeprom_info** %5, align 8
  %40 = getelementptr inbounds %struct.ixgbe_eeprom_info, %struct.ixgbe_eeprom_info* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  store i32 %38, i32* %41, align 4
  %42 = load i32, i32* @ixgbe_validate_eeprom_checksum_X540, align 4
  %43 = load %struct.ixgbe_eeprom_info*, %struct.ixgbe_eeprom_info** %5, align 8
  %44 = getelementptr inbounds %struct.ixgbe_eeprom_info, %struct.ixgbe_eeprom_info* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* @ixgbe_calc_eeprom_checksum_X540, align 4
  %47 = load %struct.ixgbe_eeprom_info*, %struct.ixgbe_eeprom_info** %5, align 8
  %48 = getelementptr inbounds %struct.ixgbe_eeprom_info, %struct.ixgbe_eeprom_info* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 4
  %50 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %4, align 8
  %51 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 2
  store i32 (%struct.ixgbe_hw.0*)* bitcast (i32 (%struct.ixgbe_hw*)* @ixgbe_init_phy_ops_generic to i32 (%struct.ixgbe_hw.0*)*), i32 (%struct.ixgbe_hw.0*)** %52, align 8
  %53 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %4, align 8
  %54 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  store i32* null, i32** %55, align 8
  %56 = load i32, i32* @ixgbe_set_copper_phy_power, align 4
  %57 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %4, align 8
  %58 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 8
  %60 = load i32, i32* @ixgbe_reset_hw_X540, align 4
  %61 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %62 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 38
  store i32 %60, i32* %63, align 4
  %64 = load i32, i32* @ixgbe_enable_relaxed_ordering_gen2, align 4
  %65 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %66 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 37
  store i32 %64, i32* %67, align 8
  %68 = load i32, i32* @ixgbe_get_media_type_X540, align 4
  %69 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %70 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 36
  store i32 %68, i32* %71, align 4
  %72 = load i32, i32* @ixgbe_get_supported_physical_layer_X540, align 4
  %73 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %74 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 35
  store i32 %72, i32* %75, align 8
  %76 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %77 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 34
  store i32* null, i32** %78, align 8
  %79 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %80 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 33
  store i32* null, i32** %81, align 8
  %82 = load i32, i32* @ixgbe_start_hw_X540, align 4
  %83 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %84 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 32
  store i32 %82, i32* %85, align 8
  %86 = load i32, i32* @ixgbe_get_san_mac_addr_generic, align 4
  %87 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %88 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 31
  store i32 %86, i32* %89, align 4
  %90 = load i32, i32* @ixgbe_set_san_mac_addr_generic, align 4
  %91 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %92 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 30
  store i32 %90, i32* %93, align 8
  %94 = load i32, i32* @ixgbe_get_device_caps_generic, align 4
  %95 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %96 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 29
  store i32 %94, i32* %97, align 4
  %98 = load i32, i32* @ixgbe_get_wwn_prefix_generic, align 4
  %99 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %100 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 28
  store i32 %98, i32* %101, align 8
  %102 = load i32, i32* @ixgbe_get_fcoe_boot_status_generic, align 4
  %103 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %104 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 27
  store i32 %102, i32* %105, align 4
  %106 = load i32, i32* @ixgbe_acquire_swfw_sync_X540, align 4
  %107 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %108 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 26
  store i32 %106, i32* %109, align 8
  %110 = load i32, i32* @ixgbe_release_swfw_sync_X540, align 4
  %111 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %112 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 25
  store i32 %110, i32* %113, align 4
  %114 = load i32, i32* @ixgbe_init_swfw_sync_X540, align 4
  %115 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %116 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 24
  store i32 %114, i32* %117, align 8
  %118 = load i32, i32* @ixgbe_disable_sec_rx_path_generic, align 4
  %119 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %120 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 23
  store i32 %118, i32* %121, align 4
  %122 = load i32, i32* @ixgbe_enable_sec_rx_path_generic, align 4
  %123 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %124 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 22
  store i32 %122, i32* %125, align 8
  %126 = load i32, i32* @ixgbe_set_vmdq_generic, align 4
  %127 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %128 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 21
  store i32 %126, i32* %129, align 4
  %130 = load i32, i32* @ixgbe_set_vmdq_san_mac_generic, align 4
  %131 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %132 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 20
  store i32 %130, i32* %133, align 8
  %134 = load i32, i32* @ixgbe_clear_vmdq_generic, align 4
  %135 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %136 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 19
  store i32 %134, i32* %137, align 4
  %138 = load i32, i32* @ixgbe_insert_mac_addr_generic, align 4
  %139 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %140 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 18
  store i32 %138, i32* %141, align 8
  %142 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %143 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %142, i32 0, i32 0
  store i32 1, i32* %143, align 8
  %144 = load i32, i32* @ixgbe_set_vfta_generic, align 4
  %145 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %146 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 17
  store i32 %144, i32* %147, align 4
  %148 = load i32, i32* @ixgbe_set_vlvf_generic, align 4
  %149 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %150 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 16
  store i32 %148, i32* %151, align 8
  %152 = load i32, i32* @ixgbe_clear_vfta_generic, align 4
  %153 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %154 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 15
  store i32 %152, i32* %155, align 4
  %156 = load i32, i32* @ixgbe_init_uta_tables_generic, align 4
  %157 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %158 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 14
  store i32 %156, i32* %159, align 8
  %160 = load i32, i32* @ixgbe_set_mac_anti_spoofing, align 4
  %161 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %162 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 13
  store i32 %160, i32* %163, align 4
  %164 = load i32, i32* @ixgbe_set_vlan_anti_spoofing, align 4
  %165 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %166 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 12
  store i32 %164, i32* %167, align 8
  %168 = load i32, i32* @ixgbe_get_copper_link_capabilities_generic, align 4
  %169 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %170 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 11
  store i32 %168, i32* %171, align 4
  %172 = load i32, i32* @ixgbe_setup_mac_link_X540, align 4
  %173 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %174 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 10
  store i32 %172, i32* %175, align 8
  %176 = load i32, i32* @ixgbe_set_rxpba_generic, align 4
  %177 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %178 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 9
  store i32 %176, i32* %179, align 4
  %180 = load i32, i32* @ixgbe_check_mac_link_generic, align 4
  %181 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %182 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 8
  store i32 %180, i32* %183, align 8
  %184 = load i32, i32* @ixgbe_bypass_rw_generic, align 4
  %185 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %186 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 7
  store i32 %184, i32* %187, align 4
  %188 = load i32, i32* @ixgbe_bypass_valid_rd_generic, align 4
  %189 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %190 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 6
  store i32 %188, i32* %191, align 8
  %192 = load i32, i32* @ixgbe_bypass_set_generic, align 4
  %193 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %194 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 5
  store i32 %192, i32* %195, align 4
  %196 = load i32, i32* @ixgbe_bypass_rd_eep_generic, align 4
  %197 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %198 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %197, i32 0, i32 2
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 4
  store i32 %196, i32* %199, align 8
  %200 = load i32, i32* @IXGBE_X540_MC_TBL_SIZE, align 4
  %201 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %202 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %201, i32 0, i32 9
  store i32 %200, i32* %202, align 8
  %203 = load i32, i32* @IXGBE_X540_VFT_TBL_SIZE, align 4
  %204 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %205 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %204, i32 0, i32 8
  store i32 %203, i32* %205, align 4
  %206 = load i32, i32* @IXGBE_X540_RAR_ENTRIES, align 4
  %207 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %208 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %207, i32 0, i32 7
  store i32 %206, i32* %208, align 8
  %209 = load i32, i32* @IXGBE_X540_RX_PB_SIZE, align 4
  %210 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %211 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %210, i32 0, i32 6
  store i32 %209, i32* %211, align 4
  %212 = load i32, i32* @IXGBE_X540_MAX_RX_QUEUES, align 4
  %213 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %214 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %213, i32 0, i32 5
  store i32 %212, i32* %214, align 8
  %215 = load i32, i32* @IXGBE_X540_MAX_TX_QUEUES, align 4
  %216 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %217 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %216, i32 0, i32 4
  store i32 %215, i32* %217, align 4
  %218 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %219 = call i32 @ixgbe_get_pcie_msix_count_generic(%struct.ixgbe_hw* %218)
  %220 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %221 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %220, i32 0, i32 3
  store i32 %219, i32* %221, align 8
  %222 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %223 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %224 = call i32 @IXGBE_FWSM_BY_MAC(%struct.ixgbe_hw* %223)
  %225 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %222, i32 %224)
  %226 = load i32, i32* @IXGBE_FWSM_MODE_MASK, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  %229 = xor i1 %228, true
  %230 = xor i1 %229, true
  %231 = zext i1 %230 to i32
  %232 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %233 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %232, i32 0, i32 1
  store i32 %231, i32* %233, align 4
  %234 = load i32, i32* @ixgbe_init_mbx_params_pf, align 4
  %235 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %236 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %237, i32 0, i32 0
  store i32 %234, i32* %238, align 8
  %239 = load i32, i32* @ixgbe_blink_led_start_X540, align 4
  %240 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %241 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %240, i32 0, i32 2
  %242 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %241, i32 0, i32 3
  store i32 %239, i32* %242, align 4
  %243 = load i32, i32* @ixgbe_blink_led_stop_X540, align 4
  %244 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %245 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %244, i32 0, i32 2
  %246 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %245, i32 0, i32 2
  store i32 %243, i32* %246, align 8
  %247 = load i32, i32* @ixgbe_set_fw_drv_ver_generic, align 4
  %248 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %249 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %248, i32 0, i32 2
  %250 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %249, i32 0, i32 1
  store i32 %247, i32* %250, align 4
  %251 = load i32, i32* @ixgbe_dcb_get_rtrup2tc_generic, align 4
  %252 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %253 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %252, i32 0, i32 2
  %254 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %253, i32 0, i32 0
  store i32 %251, i32* %254, align 8
  %255 = load i32, i32* %6, align 4
  ret i32 %255
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @ixgbe_init_phy_ops_generic(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_init_ops_generic(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_get_pcie_msix_count_generic(%struct.ixgbe_hw*) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_FWSM_BY_MAC(%struct.ixgbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
