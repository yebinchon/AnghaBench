; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82599.c_ixgbe_init_ops_82599.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82599.c_ixgbe_init_ops_82599.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_8__, %struct.ixgbe_eeprom_info, %struct.ixgbe_phy_info, %struct.ixgbe_mac_info }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.ixgbe_eeprom_info = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.ixgbe_phy_info = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.ixgbe_mac_info = type { i32, i32, %struct.TYPE_10__, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"ixgbe_init_ops_82599\00", align 1
@ixgbe_identify_phy_82599 = common dso_local global i32 0, align 4
@ixgbe_init_phy_ops_82599 = common dso_local global i32 0, align 4
@ixgbe_reset_hw_82599 = common dso_local global i32 0, align 4
@ixgbe_enable_relaxed_ordering_gen2 = common dso_local global i32 0, align 4
@ixgbe_get_media_type_82599 = common dso_local global i32 0, align 4
@ixgbe_get_supported_physical_layer_82599 = common dso_local global i32 0, align 4
@ixgbe_disable_sec_rx_path_generic = common dso_local global i32 0, align 4
@ixgbe_enable_sec_rx_path_generic = common dso_local global i32 0, align 4
@ixgbe_enable_rx_dma_82599 = common dso_local global i32 0, align 4
@ixgbe_read_analog_reg8_82599 = common dso_local global i32 0, align 4
@ixgbe_write_analog_reg8_82599 = common dso_local global i32 0, align 4
@ixgbe_start_hw_82599 = common dso_local global i32 0, align 4
@ixgbe_get_san_mac_addr_generic = common dso_local global i32 0, align 4
@ixgbe_set_san_mac_addr_generic = common dso_local global i32 0, align 4
@ixgbe_get_device_caps_generic = common dso_local global i32 0, align 4
@ixgbe_get_wwn_prefix_generic = common dso_local global i32 0, align 4
@ixgbe_get_fcoe_boot_status_generic = common dso_local global i32 0, align 4
@prot_autoc_read_82599 = common dso_local global i32 0, align 4
@prot_autoc_write_82599 = common dso_local global i32 0, align 4
@ixgbe_set_vmdq_generic = common dso_local global i32 0, align 4
@ixgbe_set_vmdq_san_mac_generic = common dso_local global i32 0, align 4
@ixgbe_clear_vmdq_generic = common dso_local global i32 0, align 4
@ixgbe_insert_mac_addr_generic = common dso_local global i32 0, align 4
@ixgbe_set_vfta_generic = common dso_local global i32 0, align 4
@ixgbe_set_vlvf_generic = common dso_local global i32 0, align 4
@ixgbe_clear_vfta_generic = common dso_local global i32 0, align 4
@ixgbe_init_uta_tables_generic = common dso_local global i32 0, align 4
@ixgbe_setup_sfp_modules_82599 = common dso_local global i32 0, align 4
@ixgbe_set_mac_anti_spoofing = common dso_local global i32 0, align 4
@ixgbe_set_vlan_anti_spoofing = common dso_local global i32 0, align 4
@ixgbe_get_link_capabilities_82599 = common dso_local global i32 0, align 4
@ixgbe_check_mac_link_generic = common dso_local global i32 0, align 4
@ixgbe_set_rxpba_generic = common dso_local global i32 0, align 4
@IXGBE_82599_MC_TBL_SIZE = common dso_local global i32 0, align 4
@IXGBE_82599_VFT_TBL_SIZE = common dso_local global i32 0, align 4
@IXGBE_82599_RAR_ENTRIES = common dso_local global i32 0, align 4
@IXGBE_82599_RX_PB_SIZE = common dso_local global i32 0, align 4
@IXGBE_82599_MAX_RX_QUEUES = common dso_local global i32 0, align 4
@IXGBE_82599_MAX_TX_QUEUES = common dso_local global i32 0, align 4
@IXGBE_FWSM_MODE_MASK = common dso_local global i32 0, align 4
@ixgbe_init_mbx_params_pf = common dso_local global i32 0, align 4
@ixgbe_read_eeprom_82599 = common dso_local global i32 0, align 4
@ixgbe_read_eeprom_buffer_82599 = common dso_local global i32 0, align 4
@ixgbe_set_fw_drv_ver_generic = common dso_local global i32 0, align 4
@ixgbe_bypass_rw_generic = common dso_local global i32 0, align 4
@ixgbe_bypass_valid_rd_generic = common dso_local global i32 0, align 4
@ixgbe_bypass_set_generic = common dso_local global i32 0, align 4
@ixgbe_bypass_rd_eep_generic = common dso_local global i32 0, align 4
@ixgbe_dcb_get_rtrup2tc_generic = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_init_ops_82599(%struct.ixgbe_hw* %0) #0 {
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
  %13 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %15 = call i32 @ixgbe_init_phy_ops_generic(%struct.ixgbe_hw* %14)
  %16 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %17 = call i32 @ixgbe_init_ops_generic(%struct.ixgbe_hw* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* @ixgbe_identify_phy_82599, align 4
  %19 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %4, align 8
  %20 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  store i32 %18, i32* %21, align 4
  %22 = load i32, i32* @ixgbe_init_phy_ops_82599, align 4
  %23 = load %struct.ixgbe_phy_info*, %struct.ixgbe_phy_info** %4, align 8
  %24 = getelementptr inbounds %struct.ixgbe_phy_info, %struct.ixgbe_phy_info* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 4
  %26 = load i32, i32* @ixgbe_reset_hw_82599, align 4
  %27 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %28 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 36
  store i32 %26, i32* %29, align 4
  %30 = load i32, i32* @ixgbe_enable_relaxed_ordering_gen2, align 4
  %31 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %32 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 35
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* @ixgbe_get_media_type_82599, align 4
  %35 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %36 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 34
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* @ixgbe_get_supported_physical_layer_82599, align 4
  %39 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %40 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 33
  store i32 %38, i32* %41, align 4
  %42 = load i32, i32* @ixgbe_disable_sec_rx_path_generic, align 4
  %43 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %44 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 32
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* @ixgbe_enable_sec_rx_path_generic, align 4
  %47 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %48 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 31
  store i32 %46, i32* %49, align 4
  %50 = load i32, i32* @ixgbe_enable_rx_dma_82599, align 4
  %51 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %52 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 30
  store i32 %50, i32* %53, align 4
  %54 = load i32, i32* @ixgbe_read_analog_reg8_82599, align 4
  %55 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %56 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 29
  store i32 %54, i32* %57, align 4
  %58 = load i32, i32* @ixgbe_write_analog_reg8_82599, align 4
  %59 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %60 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 28
  store i32 %58, i32* %61, align 4
  %62 = load i32, i32* @ixgbe_start_hw_82599, align 4
  %63 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %64 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 27
  store i32 %62, i32* %65, align 4
  %66 = load i32, i32* @ixgbe_get_san_mac_addr_generic, align 4
  %67 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %68 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 26
  store i32 %66, i32* %69, align 4
  %70 = load i32, i32* @ixgbe_set_san_mac_addr_generic, align 4
  %71 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %72 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 25
  store i32 %70, i32* %73, align 4
  %74 = load i32, i32* @ixgbe_get_device_caps_generic, align 4
  %75 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %76 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 24
  store i32 %74, i32* %77, align 4
  %78 = load i32, i32* @ixgbe_get_wwn_prefix_generic, align 4
  %79 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %80 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 23
  store i32 %78, i32* %81, align 4
  %82 = load i32, i32* @ixgbe_get_fcoe_boot_status_generic, align 4
  %83 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %84 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 22
  store i32 %82, i32* %85, align 4
  %86 = load i32, i32* @prot_autoc_read_82599, align 4
  %87 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %88 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 21
  store i32 %86, i32* %89, align 4
  %90 = load i32, i32* @prot_autoc_write_82599, align 4
  %91 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %92 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 20
  store i32 %90, i32* %93, align 4
  %94 = load i32, i32* @ixgbe_set_vmdq_generic, align 4
  %95 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %96 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 19
  store i32 %94, i32* %97, align 4
  %98 = load i32, i32* @ixgbe_set_vmdq_san_mac_generic, align 4
  %99 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %100 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 18
  store i32 %98, i32* %101, align 4
  %102 = load i32, i32* @ixgbe_clear_vmdq_generic, align 4
  %103 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %104 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 17
  store i32 %102, i32* %105, align 4
  %106 = load i32, i32* @ixgbe_insert_mac_addr_generic, align 4
  %107 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %108 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 16
  store i32 %106, i32* %109, align 4
  %110 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %111 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %110, i32 0, i32 0
  store i32 1, i32* %111, align 4
  %112 = load i32, i32* @ixgbe_set_vfta_generic, align 4
  %113 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %114 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 15
  store i32 %112, i32* %115, align 4
  %116 = load i32, i32* @ixgbe_set_vlvf_generic, align 4
  %117 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %118 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 14
  store i32 %116, i32* %119, align 4
  %120 = load i32, i32* @ixgbe_clear_vfta_generic, align 4
  %121 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %122 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 13
  store i32 %120, i32* %123, align 4
  %124 = load i32, i32* @ixgbe_init_uta_tables_generic, align 4
  %125 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %126 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 12
  store i32 %124, i32* %127, align 4
  %128 = load i32, i32* @ixgbe_setup_sfp_modules_82599, align 4
  %129 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %130 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 11
  store i32 %128, i32* %131, align 4
  %132 = load i32, i32* @ixgbe_set_mac_anti_spoofing, align 4
  %133 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %134 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 10
  store i32 %132, i32* %135, align 4
  %136 = load i32, i32* @ixgbe_set_vlan_anti_spoofing, align 4
  %137 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %138 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 9
  store i32 %136, i32* %139, align 4
  %140 = load i32, i32* @ixgbe_get_link_capabilities_82599, align 4
  %141 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %142 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 8
  store i32 %140, i32* %143, align 4
  %144 = load i32, i32* @ixgbe_check_mac_link_generic, align 4
  %145 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %146 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 7
  store i32 %144, i32* %147, align 4
  %148 = load i32, i32* @ixgbe_set_rxpba_generic, align 4
  %149 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %150 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 6
  store i32 %148, i32* %151, align 4
  %152 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %153 = call i32 @ixgbe_init_mac_link_ops_82599(%struct.ixgbe_hw* %152)
  %154 = load i32, i32* @IXGBE_82599_MC_TBL_SIZE, align 4
  %155 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %156 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %155, i32 0, i32 9
  store i32 %154, i32* %156, align 4
  %157 = load i32, i32* @IXGBE_82599_VFT_TBL_SIZE, align 4
  %158 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %159 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %158, i32 0, i32 8
  store i32 %157, i32* %159, align 4
  %160 = load i32, i32* @IXGBE_82599_RAR_ENTRIES, align 4
  %161 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %162 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %161, i32 0, i32 7
  store i32 %160, i32* %162, align 4
  %163 = load i32, i32* @IXGBE_82599_RX_PB_SIZE, align 4
  %164 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %165 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %164, i32 0, i32 6
  store i32 %163, i32* %165, align 4
  %166 = load i32, i32* @IXGBE_82599_MAX_RX_QUEUES, align 4
  %167 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %168 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %167, i32 0, i32 5
  store i32 %166, i32* %168, align 4
  %169 = load i32, i32* @IXGBE_82599_MAX_TX_QUEUES, align 4
  %170 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %171 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %170, i32 0, i32 4
  store i32 %169, i32* %171, align 4
  %172 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %173 = call i32 @ixgbe_get_pcie_msix_count_generic(%struct.ixgbe_hw* %172)
  %174 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %175 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %174, i32 0, i32 3
  store i32 %173, i32* %175, align 4
  %176 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %177 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %178 = call i32 @IXGBE_FWSM_BY_MAC(%struct.ixgbe_hw* %177)
  %179 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %176, i32 %178)
  %180 = load i32, i32* @IXGBE_FWSM_MODE_MASK, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  %183 = xor i1 %182, true
  %184 = xor i1 %183, true
  %185 = zext i1 %184 to i32
  %186 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %187 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %186, i32 0, i32 1
  store i32 %185, i32* %187, align 4
  %188 = load i32, i32* @ixgbe_init_mbx_params_pf, align 4
  %189 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %190 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 0
  store i32 %188, i32* %192, align 4
  %193 = load i32, i32* @ixgbe_read_eeprom_82599, align 4
  %194 = load %struct.ixgbe_eeprom_info*, %struct.ixgbe_eeprom_info** %5, align 8
  %195 = getelementptr inbounds %struct.ixgbe_eeprom_info, %struct.ixgbe_eeprom_info* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 1
  store i32 %193, i32* %196, align 4
  %197 = load i32, i32* @ixgbe_read_eeprom_buffer_82599, align 4
  %198 = load %struct.ixgbe_eeprom_info*, %struct.ixgbe_eeprom_info** %5, align 8
  %199 = getelementptr inbounds %struct.ixgbe_eeprom_info, %struct.ixgbe_eeprom_info* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 0
  store i32 %197, i32* %200, align 4
  %201 = load i32, i32* @ixgbe_set_fw_drv_ver_generic, align 4
  %202 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %203 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %202, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 5
  store i32 %201, i32* %204, align 4
  %205 = load i32, i32* @ixgbe_bypass_rw_generic, align 4
  %206 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %207 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %206, i32 0, i32 2
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 4
  store i32 %205, i32* %208, align 4
  %209 = load i32, i32* @ixgbe_bypass_valid_rd_generic, align 4
  %210 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %211 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %210, i32 0, i32 2
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 3
  store i32 %209, i32* %212, align 4
  %213 = load i32, i32* @ixgbe_bypass_set_generic, align 4
  %214 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %215 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %214, i32 0, i32 2
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 2
  store i32 %213, i32* %216, align 4
  %217 = load i32, i32* @ixgbe_bypass_rd_eep_generic, align 4
  %218 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %219 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %218, i32 0, i32 2
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 1
  store i32 %217, i32* %220, align 4
  %221 = load i32, i32* @ixgbe_dcb_get_rtrup2tc_generic, align 4
  %222 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %223 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %222, i32 0, i32 2
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i32 0, i32 0
  store i32 %221, i32* %224, align 4
  %225 = load i32, i32* %6, align 4
  ret i32 %225
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @ixgbe_init_phy_ops_generic(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_init_ops_generic(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_init_mac_link_ops_82599(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_get_pcie_msix_count_generic(%struct.ixgbe_hw*) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_FWSM_BY_MAC(%struct.ixgbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
