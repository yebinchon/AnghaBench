; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_init_ops_X550.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_init_ops_X550.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32, %struct.ixgbe_mac_info, %struct.ixgbe_eeprom_info }
%struct.ixgbe_mac_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32 }
%struct.ixgbe_eeprom_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"ixgbe_init_ops_X550\00", align 1
@ixgbe_dmac_config_X550 = common dso_local global i32 0, align 4
@ixgbe_dmac_config_tcs_X550 = common dso_local global i32 0, align 4
@ixgbe_dmac_update_tcs_X550 = common dso_local global i32 0, align 4
@ixgbe_set_source_address_pruning_X550 = common dso_local global i32 0, align 4
@ixgbe_set_ethertype_anti_spoofing_X550 = common dso_local global i32 0, align 4
@ixgbe_dcb_get_rtrup2tc_generic = common dso_local global i32 0, align 4
@ixgbe_init_eeprom_params_X550 = common dso_local global i32 0, align 4
@ixgbe_calc_eeprom_checksum_X550 = common dso_local global i32 0, align 4
@ixgbe_read_ee_hostif_X550 = common dso_local global i32 0, align 4
@ixgbe_read_ee_hostif_buffer_X550 = common dso_local global i32 0, align 4
@ixgbe_write_ee_hostif_X550 = common dso_local global i32 0, align 4
@ixgbe_write_ee_hostif_buffer_X550 = common dso_local global i32 0, align 4
@ixgbe_update_eeprom_checksum_X550 = common dso_local global i32 0, align 4
@ixgbe_validate_eeprom_checksum_X550 = common dso_local global i32 0, align 4
@ixgbe_disable_mdd_X550 = common dso_local global i32 0, align 4
@ixgbe_enable_mdd_X550 = common dso_local global i32 0, align 4
@ixgbe_mdd_event_X550 = common dso_local global i32 0, align 4
@ixgbe_restore_mdd_vf_X550 = common dso_local global i32 0, align 4
@ixgbe_disable_rx_x550 = common dso_local global i32 0, align 4
@ixgbe_set_fw_drv_ver_x550 = common dso_local global i32 0, align 4
@ixgbe_led_on_t_X550em = common dso_local global i32* null, align 8
@ixgbe_led_off_t_X550em = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_init_ops_X550(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca %struct.ixgbe_mac_info*, align 8
  %4 = alloca %struct.ixgbe_eeprom_info*, align 8
  %5 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %6 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %7 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %6, i32 0, i32 1
  store %struct.ixgbe_mac_info* %7, %struct.ixgbe_mac_info** %3, align 8
  %8 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %9 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %8, i32 0, i32 2
  store %struct.ixgbe_eeprom_info* %9, %struct.ixgbe_eeprom_info** %4, align 8
  %10 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %12 = call i32 @ixgbe_init_ops_X540(%struct.ixgbe_hw* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* @ixgbe_dmac_config_X550, align 4
  %14 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %15 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 14
  store i32 %13, i32* %16, align 8
  %17 = load i32, i32* @ixgbe_dmac_config_tcs_X550, align 4
  %18 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %19 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 13
  store i32 %17, i32* %20, align 4
  %21 = load i32, i32* @ixgbe_dmac_update_tcs_X550, align 4
  %22 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %23 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 12
  store i32 %21, i32* %24, align 8
  %25 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %26 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 11
  store i32* null, i32** %27, align 8
  %28 = load i32, i32* @ixgbe_set_source_address_pruning_X550, align 4
  %29 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %30 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 10
  store i32 %28, i32* %31, align 8
  %32 = load i32, i32* @ixgbe_set_ethertype_anti_spoofing_X550, align 4
  %33 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %34 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 9
  store i32 %32, i32* %35, align 4
  %36 = load i32, i32* @ixgbe_dcb_get_rtrup2tc_generic, align 4
  %37 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %38 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 8
  store i32 %36, i32* %39, align 8
  %40 = load i32, i32* @ixgbe_init_eeprom_params_X550, align 4
  %41 = load %struct.ixgbe_eeprom_info*, %struct.ixgbe_eeprom_info** %4, align 8
  %42 = getelementptr inbounds %struct.ixgbe_eeprom_info, %struct.ixgbe_eeprom_info* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 7
  store i32 %40, i32* %43, align 4
  %44 = load i32, i32* @ixgbe_calc_eeprom_checksum_X550, align 4
  %45 = load %struct.ixgbe_eeprom_info*, %struct.ixgbe_eeprom_info** %4, align 8
  %46 = getelementptr inbounds %struct.ixgbe_eeprom_info, %struct.ixgbe_eeprom_info* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 6
  store i32 %44, i32* %47, align 4
  %48 = load i32, i32* @ixgbe_read_ee_hostif_X550, align 4
  %49 = load %struct.ixgbe_eeprom_info*, %struct.ixgbe_eeprom_info** %4, align 8
  %50 = getelementptr inbounds %struct.ixgbe_eeprom_info, %struct.ixgbe_eeprom_info* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 5
  store i32 %48, i32* %51, align 4
  %52 = load i32, i32* @ixgbe_read_ee_hostif_buffer_X550, align 4
  %53 = load %struct.ixgbe_eeprom_info*, %struct.ixgbe_eeprom_info** %4, align 8
  %54 = getelementptr inbounds %struct.ixgbe_eeprom_info, %struct.ixgbe_eeprom_info* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 4
  store i32 %52, i32* %55, align 4
  %56 = load i32, i32* @ixgbe_write_ee_hostif_X550, align 4
  %57 = load %struct.ixgbe_eeprom_info*, %struct.ixgbe_eeprom_info** %4, align 8
  %58 = getelementptr inbounds %struct.ixgbe_eeprom_info, %struct.ixgbe_eeprom_info* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 3
  store i32 %56, i32* %59, align 4
  %60 = load i32, i32* @ixgbe_write_ee_hostif_buffer_X550, align 4
  %61 = load %struct.ixgbe_eeprom_info*, %struct.ixgbe_eeprom_info** %4, align 8
  %62 = getelementptr inbounds %struct.ixgbe_eeprom_info, %struct.ixgbe_eeprom_info* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  store i32 %60, i32* %63, align 4
  %64 = load i32, i32* @ixgbe_update_eeprom_checksum_X550, align 4
  %65 = load %struct.ixgbe_eeprom_info*, %struct.ixgbe_eeprom_info** %4, align 8
  %66 = getelementptr inbounds %struct.ixgbe_eeprom_info, %struct.ixgbe_eeprom_info* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  store i32 %64, i32* %67, align 4
  %68 = load i32, i32* @ixgbe_validate_eeprom_checksum_X550, align 4
  %69 = load %struct.ixgbe_eeprom_info*, %struct.ixgbe_eeprom_info** %4, align 8
  %70 = getelementptr inbounds %struct.ixgbe_eeprom_info, %struct.ixgbe_eeprom_info* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 4
  %72 = load i32, i32* @ixgbe_disable_mdd_X550, align 4
  %73 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %74 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 7
  store i32 %72, i32* %75, align 4
  %76 = load i32, i32* @ixgbe_enable_mdd_X550, align 4
  %77 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %78 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 6
  store i32 %76, i32* %79, align 8
  %80 = load i32, i32* @ixgbe_mdd_event_X550, align 4
  %81 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %82 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 5
  store i32 %80, i32* %83, align 4
  %84 = load i32, i32* @ixgbe_restore_mdd_vf_X550, align 4
  %85 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %86 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 4
  store i32 %84, i32* %87, align 8
  %88 = load i32, i32* @ixgbe_disable_rx_x550, align 4
  %89 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %90 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 3
  store i32 %88, i32* %91, align 4
  %92 = load i32, i32* @ixgbe_set_fw_drv_ver_x550, align 4
  %93 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %94 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 2
  store i32 %92, i32* %95, align 8
  %96 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %97 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  switch i32 %98, label %119 [
    i32 128, label %99
    i32 129, label %108
    i32 130, label %108
  ]

99:                                               ; preds = %1
  %100 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %101 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  store i32* null, i32** %103, align 8
  %104 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %105 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  store i32* null, i32** %107, align 8
  br label %120

108:                                              ; preds = %1, %1
  %109 = load i32*, i32** @ixgbe_led_on_t_X550em, align 8
  %110 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %111 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  store i32* %109, i32** %113, align 8
  %114 = load i32*, i32** @ixgbe_led_off_t_X550em, align 8
  %115 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %116 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  store i32* %114, i32** %118, align 8
  br label %120

119:                                              ; preds = %1
  br label %120

120:                                              ; preds = %119, %108, %99
  %121 = load i32, i32* %5, align 4
  ret i32 %121
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @ixgbe_init_ops_X540(%struct.ixgbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
