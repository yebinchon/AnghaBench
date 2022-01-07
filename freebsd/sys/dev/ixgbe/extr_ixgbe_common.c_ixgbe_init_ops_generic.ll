; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_init_ops_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_init_ops_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.ixgbe_mac_info, %struct.ixgbe_eeprom_info }
%struct.ixgbe_mac_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i32*, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32*, i32 }
%struct.ixgbe_eeprom_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"ixgbe_init_ops_generic\00", align 1
@ixgbe_init_eeprom_params_generic = common dso_local global i32 0, align 4
@IXGBE_EEC_PRES = common dso_local global i32 0, align 4
@ixgbe_read_eerd_generic = common dso_local global i32 0, align 4
@ixgbe_read_eerd_buffer_generic = common dso_local global i32 0, align 4
@ixgbe_read_eeprom_bit_bang_generic = common dso_local global i32 0, align 4
@ixgbe_read_eeprom_buffer_bit_bang_generic = common dso_local global i32 0, align 4
@ixgbe_write_eeprom_generic = common dso_local global i32 0, align 4
@ixgbe_write_eeprom_buffer_bit_bang_generic = common dso_local global i32 0, align 4
@ixgbe_validate_eeprom_checksum_generic = common dso_local global i32 0, align 4
@ixgbe_update_eeprom_checksum_generic = common dso_local global i32 0, align 4
@ixgbe_calc_eeprom_checksum_generic = common dso_local global i32 0, align 4
@ixgbe_init_hw_generic = common dso_local global i32 0, align 4
@ixgbe_start_hw_generic = common dso_local global i32 0, align 4
@ixgbe_clear_hw_cntrs_generic = common dso_local global i32 0, align 4
@ixgbe_enable_rx_dma_generic = common dso_local global i32 0, align 4
@ixgbe_get_mac_addr_generic = common dso_local global i32 0, align 4
@ixgbe_stop_adapter_generic = common dso_local global i32 0, align 4
@ixgbe_get_bus_info_generic = common dso_local global i32 0, align 4
@ixgbe_set_lan_id_multi_port_pcie = common dso_local global i32 0, align 4
@ixgbe_acquire_swfw_sync = common dso_local global i32 0, align 4
@ixgbe_release_swfw_sync = common dso_local global i32 0, align 4
@prot_autoc_read_generic = common dso_local global i32 0, align 4
@prot_autoc_write_generic = common dso_local global i32 0, align 4
@ixgbe_led_on_generic = common dso_local global i32 0, align 4
@ixgbe_led_off_generic = common dso_local global i32 0, align 4
@ixgbe_blink_led_start_generic = common dso_local global i32 0, align 4
@ixgbe_blink_led_stop_generic = common dso_local global i32 0, align 4
@ixgbe_init_led_link_act_generic = common dso_local global i32 0, align 4
@ixgbe_set_rar_generic = common dso_local global i32 0, align 4
@ixgbe_clear_rar_generic = common dso_local global i32 0, align 4
@ixgbe_init_rx_addrs_generic = common dso_local global i32 0, align 4
@ixgbe_update_uc_addr_list_generic = common dso_local global i32 0, align 4
@ixgbe_update_mc_addr_list_generic = common dso_local global i32 0, align 4
@ixgbe_enable_mc_generic = common dso_local global i32 0, align 4
@ixgbe_disable_mc_generic = common dso_local global i32 0, align 4
@ixgbe_enable_rx_generic = common dso_local global i32 0, align 4
@ixgbe_disable_rx_generic = common dso_local global i32 0, align 4
@ixgbe_fc_enable_generic = common dso_local global i32 0, align 4
@ixgbe_setup_fc_generic = common dso_local global i32 0, align 4
@ixgbe_fc_autoneg = common dso_local global i32 0, align 4
@IXGBE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_init_ops_generic(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca %struct.ixgbe_eeprom_info*, align 8
  %4 = alloca %struct.ixgbe_mac_info*, align 8
  %5 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %6 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %7 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %6, i32 0, i32 1
  store %struct.ixgbe_eeprom_info* %7, %struct.ixgbe_eeprom_info** %3, align 8
  %8 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %9 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %8, i32 0, i32 0
  store %struct.ixgbe_mac_info* %9, %struct.ixgbe_mac_info** %4, align 8
  %10 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %11 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %12 = call i32 @IXGBE_EEC_BY_MAC(%struct.ixgbe_hw* %11)
  %13 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %10, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @ixgbe_init_eeprom_params_generic, align 4
  %16 = load %struct.ixgbe_eeprom_info*, %struct.ixgbe_eeprom_info** %3, align 8
  %17 = getelementptr inbounds %struct.ixgbe_eeprom_info, %struct.ixgbe_eeprom_info* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 7
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @IXGBE_EEC_PRES, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %1
  %24 = load i32, i32* @ixgbe_read_eerd_generic, align 4
  %25 = load %struct.ixgbe_eeprom_info*, %struct.ixgbe_eeprom_info** %3, align 8
  %26 = getelementptr inbounds %struct.ixgbe_eeprom_info, %struct.ixgbe_eeprom_info* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 6
  store i32 %24, i32* %27, align 4
  %28 = load i32, i32* @ixgbe_read_eerd_buffer_generic, align 4
  %29 = load %struct.ixgbe_eeprom_info*, %struct.ixgbe_eeprom_info** %3, align 8
  %30 = getelementptr inbounds %struct.ixgbe_eeprom_info, %struct.ixgbe_eeprom_info* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 5
  store i32 %28, i32* %31, align 4
  br label %41

32:                                               ; preds = %1
  %33 = load i32, i32* @ixgbe_read_eeprom_bit_bang_generic, align 4
  %34 = load %struct.ixgbe_eeprom_info*, %struct.ixgbe_eeprom_info** %3, align 8
  %35 = getelementptr inbounds %struct.ixgbe_eeprom_info, %struct.ixgbe_eeprom_info* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 6
  store i32 %33, i32* %36, align 4
  %37 = load i32, i32* @ixgbe_read_eeprom_buffer_bit_bang_generic, align 4
  %38 = load %struct.ixgbe_eeprom_info*, %struct.ixgbe_eeprom_info** %3, align 8
  %39 = getelementptr inbounds %struct.ixgbe_eeprom_info, %struct.ixgbe_eeprom_info* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 5
  store i32 %37, i32* %40, align 4
  br label %41

41:                                               ; preds = %32, %23
  %42 = load i32, i32* @ixgbe_write_eeprom_generic, align 4
  %43 = load %struct.ixgbe_eeprom_info*, %struct.ixgbe_eeprom_info** %3, align 8
  %44 = getelementptr inbounds %struct.ixgbe_eeprom_info, %struct.ixgbe_eeprom_info* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 4
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* @ixgbe_write_eeprom_buffer_bit_bang_generic, align 4
  %47 = load %struct.ixgbe_eeprom_info*, %struct.ixgbe_eeprom_info** %3, align 8
  %48 = getelementptr inbounds %struct.ixgbe_eeprom_info, %struct.ixgbe_eeprom_info* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 3
  store i32 %46, i32* %49, align 4
  %50 = load i32, i32* @ixgbe_validate_eeprom_checksum_generic, align 4
  %51 = load %struct.ixgbe_eeprom_info*, %struct.ixgbe_eeprom_info** %3, align 8
  %52 = getelementptr inbounds %struct.ixgbe_eeprom_info, %struct.ixgbe_eeprom_info* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  store i32 %50, i32* %53, align 4
  %54 = load i32, i32* @ixgbe_update_eeprom_checksum_generic, align 4
  %55 = load %struct.ixgbe_eeprom_info*, %struct.ixgbe_eeprom_info** %3, align 8
  %56 = getelementptr inbounds %struct.ixgbe_eeprom_info, %struct.ixgbe_eeprom_info* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  store i32 %54, i32* %57, align 4
  %58 = load i32, i32* @ixgbe_calc_eeprom_checksum_generic, align 4
  %59 = load %struct.ixgbe_eeprom_info*, %struct.ixgbe_eeprom_info** %3, align 8
  %60 = getelementptr inbounds %struct.ixgbe_eeprom_info, %struct.ixgbe_eeprom_info* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 4
  %62 = load i32, i32* @ixgbe_init_hw_generic, align 4
  %63 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %4, align 8
  %64 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 44
  store i32 %62, i32* %65, align 8
  %66 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %4, align 8
  %67 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 43
  store i32* null, i32** %68, align 8
  %69 = load i32, i32* @ixgbe_start_hw_generic, align 4
  %70 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %4, align 8
  %71 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 42
  store i32 %69, i32* %72, align 4
  %73 = load i32, i32* @ixgbe_clear_hw_cntrs_generic, align 4
  %74 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %4, align 8
  %75 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 41
  store i32 %73, i32* %76, align 8
  %77 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %4, align 8
  %78 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 40
  store i32* null, i32** %79, align 8
  %80 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %4, align 8
  %81 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 39
  store i32* null, i32** %82, align 8
  %83 = load i32, i32* @ixgbe_enable_rx_dma_generic, align 4
  %84 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %4, align 8
  %85 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 38
  store i32 %83, i32* %86, align 4
  %87 = load i32, i32* @ixgbe_get_mac_addr_generic, align 4
  %88 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %4, align 8
  %89 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 37
  store i32 %87, i32* %90, align 8
  %91 = load i32, i32* @ixgbe_stop_adapter_generic, align 4
  %92 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %4, align 8
  %93 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 36
  store i32 %91, i32* %94, align 4
  %95 = load i32, i32* @ixgbe_get_bus_info_generic, align 4
  %96 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %4, align 8
  %97 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 35
  store i32 %95, i32* %98, align 8
  %99 = load i32, i32* @ixgbe_set_lan_id_multi_port_pcie, align 4
  %100 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %4, align 8
  %101 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 34
  store i32 %99, i32* %102, align 4
  %103 = load i32, i32* @ixgbe_acquire_swfw_sync, align 4
  %104 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %4, align 8
  %105 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 33
  store i32 %103, i32* %106, align 8
  %107 = load i32, i32* @ixgbe_release_swfw_sync, align 4
  %108 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %4, align 8
  %109 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 32
  store i32 %107, i32* %110, align 4
  %111 = load i32, i32* @prot_autoc_read_generic, align 4
  %112 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %4, align 8
  %113 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 31
  store i32 %111, i32* %114, align 8
  %115 = load i32, i32* @prot_autoc_write_generic, align 4
  %116 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %4, align 8
  %117 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 30
  store i32 %115, i32* %118, align 4
  %119 = load i32, i32* @ixgbe_led_on_generic, align 4
  %120 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %4, align 8
  %121 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 29
  store i32 %119, i32* %122, align 8
  %123 = load i32, i32* @ixgbe_led_off_generic, align 4
  %124 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %4, align 8
  %125 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 28
  store i32 %123, i32* %126, align 4
  %127 = load i32, i32* @ixgbe_blink_led_start_generic, align 4
  %128 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %4, align 8
  %129 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 27
  store i32 %127, i32* %130, align 8
  %131 = load i32, i32* @ixgbe_blink_led_stop_generic, align 4
  %132 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %4, align 8
  %133 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 26
  store i32 %131, i32* %134, align 4
  %135 = load i32, i32* @ixgbe_init_led_link_act_generic, align 4
  %136 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %4, align 8
  %137 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 25
  store i32 %135, i32* %138, align 8
  %139 = load i32, i32* @ixgbe_set_rar_generic, align 4
  %140 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %4, align 8
  %141 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 24
  store i32 %139, i32* %142, align 4
  %143 = load i32, i32* @ixgbe_clear_rar_generic, align 4
  %144 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %4, align 8
  %145 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 23
  store i32 %143, i32* %146, align 8
  %147 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %4, align 8
  %148 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 22
  store i32* null, i32** %149, align 8
  %150 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %4, align 8
  %151 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 21
  store i32* null, i32** %152, align 8
  %153 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %4, align 8
  %154 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 20
  store i32* null, i32** %155, align 8
  %156 = load i32, i32* @ixgbe_init_rx_addrs_generic, align 4
  %157 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %4, align 8
  %158 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 19
  store i32 %156, i32* %159, align 8
  %160 = load i32, i32* @ixgbe_update_uc_addr_list_generic, align 4
  %161 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %4, align 8
  %162 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 18
  store i32 %160, i32* %163, align 4
  %164 = load i32, i32* @ixgbe_update_mc_addr_list_generic, align 4
  %165 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %4, align 8
  %166 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 17
  store i32 %164, i32* %167, align 8
  %168 = load i32, i32* @ixgbe_enable_mc_generic, align 4
  %169 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %4, align 8
  %170 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 16
  store i32 %168, i32* %171, align 4
  %172 = load i32, i32* @ixgbe_disable_mc_generic, align 4
  %173 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %4, align 8
  %174 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 15
  store i32 %172, i32* %175, align 8
  %176 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %4, align 8
  %177 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 14
  store i32* null, i32** %178, align 8
  %179 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %4, align 8
  %180 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 13
  store i32* null, i32** %181, align 8
  %182 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %4, align 8
  %183 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 12
  store i32* null, i32** %184, align 8
  %185 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %4, align 8
  %186 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 11
  store i32* null, i32** %187, align 8
  %188 = load i32, i32* @ixgbe_enable_rx_generic, align 4
  %189 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %4, align 8
  %190 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 10
  store i32 %188, i32* %191, align 8
  %192 = load i32, i32* @ixgbe_disable_rx_generic, align 4
  %193 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %4, align 8
  %194 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 9
  store i32 %192, i32* %195, align 4
  %196 = load i32, i32* @ixgbe_fc_enable_generic, align 4
  %197 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %4, align 8
  %198 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 8
  store i32 %196, i32* %199, align 8
  %200 = load i32, i32* @ixgbe_setup_fc_generic, align 4
  %201 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %4, align 8
  %202 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 7
  store i32 %200, i32* %203, align 4
  %204 = load i32, i32* @ixgbe_fc_autoneg, align 4
  %205 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %4, align 8
  %206 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 6
  store i32 %204, i32* %207, align 8
  %208 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %4, align 8
  %209 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 5
  store i32* null, i32** %210, align 8
  %211 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %4, align 8
  %212 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 4
  store i32* null, i32** %213, align 8
  %214 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %4, align 8
  %215 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 3
  store i32* null, i32** %216, align 8
  %217 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %4, align 8
  %218 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 2
  store i32* null, i32** %219, align 8
  %220 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %4, align 8
  %221 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 1
  store i32* null, i32** %222, align 8
  %223 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %4, align 8
  %224 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 0
  store i32* null, i32** %225, align 8
  %226 = load i32, i32* @IXGBE_SUCCESS, align 4
  ret i32 %226
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_EEC_BY_MAC(%struct.ixgbe_hw*) #1

declare dso_local i32 @DEBUGFUNC(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
