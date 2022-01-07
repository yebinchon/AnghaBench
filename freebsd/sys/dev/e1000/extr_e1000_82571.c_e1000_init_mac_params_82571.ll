; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82571.c_e1000_init_mac_params_82571.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82571.c_e1000_init_mac_params_82571.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32, %struct.TYPE_8__, %struct.e1000_mac_info, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.e1000_mac_info = type { i32, i32, i32, i8*, %struct.TYPE_6__, i8*, i8*, i32 }
%struct.TYPE_6__ = type { i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i8* }
%struct.TYPE_5__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"e1000_init_mac_params_82571\00", align 1
@e1000_media_type_fiber = common dso_local global i32 0, align 4
@e1000_setup_fiber_serdes_link_82571 = common dso_local global i8* null, align 8
@e1000_check_for_fiber_link_generic = common dso_local global i32 0, align 4
@e1000_get_speed_and_duplex_fiber_serdes_generic = common dso_local global i8* null, align 8
@e1000_media_type_internal_serdes = common dso_local global i32 0, align 4
@e1000_check_for_serdes_link_82571 = common dso_local global i32 0, align 4
@e1000_media_type_copper = common dso_local global i32 0, align 4
@e1000_setup_copper_link_82571 = common dso_local global i8* null, align 8
@e1000_check_for_copper_link_generic = common dso_local global i32 0, align 4
@e1000_get_speed_and_duplex_copper_generic = common dso_local global i8* null, align 8
@E1000_RAR_ENTRIES = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@e1000_get_bus_info_pcie_generic = common dso_local global i32 0, align 4
@e1000_reset_hw_82571 = common dso_local global i32 0, align 4
@e1000_init_hw_82571 = common dso_local global i32 0, align 4
@e1000_setup_link_82571 = common dso_local global i32 0, align 4
@e1000_update_mc_addr_list_generic = common dso_local global i32 0, align 4
@e1000_write_vfta_generic = common dso_local global i32 0, align 4
@e1000_clear_vfta_82571 = common dso_local global i32 0, align 4
@e1000_read_mac_addr_82571 = common dso_local global i32 0, align 4
@e1000_id_led_init_generic = common dso_local global i32 0, align 4
@e1000_setup_led_generic = common dso_local global i32 0, align 4
@e1000_cleanup_led_generic = common dso_local global i32 0, align 4
@e1000_led_off_generic = common dso_local global i32 0, align 4
@e1000_clear_hw_cntrs_82571 = common dso_local global i32 0, align 4
@e1000_set_lan_id_single_port = common dso_local global i8* null, align 8
@e1000_check_mng_mode_generic = common dso_local global i8* null, align 8
@e1000_led_on_generic = common dso_local global i8* null, align 8
@e1000_blink_led_generic = common dso_local global i8* null, align 8
@E1000_FWSM = common dso_local global i32 0, align 4
@E1000_FWSM_MODE_MASK = common dso_local global i32 0, align 4
@e1000_check_mng_mode_82574 = common dso_local global i8* null, align 8
@e1000_led_on_82574 = common dso_local global i8* null, align 8
@E1000_SWSM2 = common dso_local global i32 0, align 4
@E1000_SWSM2_LOCK = common dso_local global i32 0, align 4
@E1000_SWSM = common dso_local global i32 0, align 4
@E1000_SWSM_SMBI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Please update your 82571 Bootagent\0A\00", align 1
@E1000_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @e1000_init_mac_params_82571 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_init_mac_params_82571(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_mac_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 2
  store %struct.e1000_mac_info* %8, %struct.e1000_mac_info** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %9 = load i32, i32* @FALSE, align 4
  store i32 %9, i32* %6, align 4
  %10 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %12 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %48 [
    i32 139, label %14
    i32 134, label %14
    i32 138, label %14
    i32 137, label %31
    i32 136, label %31
    i32 135, label %31
    i32 133, label %31
  ]

14:                                               ; preds = %1, %1, %1
  %15 = load i32, i32* @e1000_media_type_fiber, align 4
  %16 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %17 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 8
  %19 = load i8*, i8** @e1000_setup_fiber_serdes_link_82571, align 8
  %20 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %21 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 19
  store i8* %19, i8** %22, align 8
  %23 = load i32, i32* @e1000_check_for_fiber_link_generic, align 4
  %24 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %25 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 18
  store i32 %23, i32* %26, align 8
  %27 = load i8*, i8** @e1000_get_speed_and_duplex_fiber_serdes_generic, align 8
  %28 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %29 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 17
  store i8* %27, i8** %30, align 8
  br label %65

31:                                               ; preds = %1, %1, %1, %1
  %32 = load i32, i32* @e1000_media_type_internal_serdes, align 4
  %33 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %34 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 8
  %36 = load i8*, i8** @e1000_setup_fiber_serdes_link_82571, align 8
  %37 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %38 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 19
  store i8* %36, i8** %39, align 8
  %40 = load i32, i32* @e1000_check_for_serdes_link_82571, align 4
  %41 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %42 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 18
  store i32 %40, i32* %43, align 8
  %44 = load i8*, i8** @e1000_get_speed_and_duplex_fiber_serdes_generic, align 8
  %45 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %46 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 17
  store i8* %44, i8** %47, align 8
  br label %65

48:                                               ; preds = %1
  %49 = load i32, i32* @e1000_media_type_copper, align 4
  %50 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %51 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 8
  %53 = load i8*, i8** @e1000_setup_copper_link_82571, align 8
  %54 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %55 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 19
  store i8* %53, i8** %56, align 8
  %57 = load i32, i32* @e1000_check_for_copper_link_generic, align 4
  %58 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %59 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 18
  store i32 %57, i32* %60, align 8
  %61 = load i8*, i8** @e1000_get_speed_and_duplex_copper_generic, align 8
  %62 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %63 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 17
  store i8* %61, i8** %64, align 8
  br label %65

65:                                               ; preds = %48, %31, %14
  %66 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %67 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %66, i32 0, i32 0
  store i32 128, i32* %67, align 8
  %68 = load i32, i32* @E1000_RAR_ENTRIES, align 4
  %69 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %70 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %69, i32 0, i32 7
  store i32 %68, i32* %70, align 8
  %71 = load i8*, i8** @TRUE, align 8
  %72 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %73 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %72, i32 0, i32 6
  store i8* %71, i8** %73, align 8
  %74 = load i8*, i8** @TRUE, align 8
  %75 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %76 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %75, i32 0, i32 5
  store i8* %74, i8** %76, align 8
  %77 = load i32, i32* @e1000_get_bus_info_pcie_generic, align 4
  %78 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %79 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 16
  store i32 %77, i32* %80, align 8
  %81 = load i32, i32* @e1000_reset_hw_82571, align 4
  %82 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %83 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 15
  store i32 %81, i32* %84, align 4
  %85 = load i32, i32* @e1000_init_hw_82571, align 4
  %86 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %87 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %86, i32 0, i32 4
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 14
  store i32 %85, i32* %88, align 8
  %89 = load i32, i32* @e1000_setup_link_82571, align 4
  %90 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %91 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %90, i32 0, i32 4
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 13
  store i32 %89, i32* %92, align 4
  %93 = load i32, i32* @e1000_update_mc_addr_list_generic, align 4
  %94 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %95 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 12
  store i32 %93, i32* %96, align 8
  %97 = load i32, i32* @e1000_write_vfta_generic, align 4
  %98 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %99 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %98, i32 0, i32 4
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 11
  store i32 %97, i32* %100, align 4
  %101 = load i32, i32* @e1000_clear_vfta_82571, align 4
  %102 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %103 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %102, i32 0, i32 4
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 10
  store i32 %101, i32* %104, align 8
  %105 = load i32, i32* @e1000_read_mac_addr_82571, align 4
  %106 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %107 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 9
  store i32 %105, i32* %108, align 4
  %109 = load i32, i32* @e1000_id_led_init_generic, align 4
  %110 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %111 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %110, i32 0, i32 4
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 8
  store i32 %109, i32* %112, align 8
  %113 = load i32, i32* @e1000_setup_led_generic, align 4
  %114 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %115 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %114, i32 0, i32 4
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 7
  store i32 %113, i32* %116, align 4
  %117 = load i32, i32* @e1000_cleanup_led_generic, align 4
  %118 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %119 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %118, i32 0, i32 4
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 6
  store i32 %117, i32* %120, align 8
  %121 = load i32, i32* @e1000_led_off_generic, align 4
  %122 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %123 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %122, i32 0, i32 4
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 5
  store i32 %121, i32* %124, align 4
  %125 = load i32, i32* @e1000_clear_hw_cntrs_82571, align 4
  %126 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %127 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %126, i32 0, i32 4
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 4
  store i32 %125, i32* %128, align 8
  %129 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %130 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  switch i32 %132, label %177 [
    i32 130, label %133
    i32 129, label %164
    i32 128, label %164
  ]

133:                                              ; preds = %65
  %134 = load i8*, i8** @e1000_set_lan_id_single_port, align 8
  %135 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %136 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %135, i32 0, i32 4
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 3
  store i8* %134, i8** %137, align 8
  %138 = load i8*, i8** @e1000_check_mng_mode_generic, align 8
  %139 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %140 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %139, i32 0, i32 4
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 2
  store i8* %138, i8** %141, align 8
  %142 = load i8*, i8** @e1000_led_on_generic, align 8
  %143 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %144 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %143, i32 0, i32 4
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 1
  store i8* %142, i8** %145, align 8
  %146 = load i8*, i8** @e1000_blink_led_generic, align 8
  %147 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %148 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %147, i32 0, i32 4
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  store i8* %146, i8** %149, align 8
  %150 = load i8*, i8** @TRUE, align 8
  %151 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %152 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %151, i32 0, i32 3
  store i8* %150, i8** %152, align 8
  %153 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %154 = load i32, i32* @E1000_FWSM, align 4
  %155 = call i32 @E1000_READ_REG(%struct.e1000_hw* %153, i32 %154)
  %156 = load i32, i32* @E1000_FWSM_MODE_MASK, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  %159 = xor i1 %158, true
  %160 = xor i1 %159, true
  %161 = zext i1 %160 to i32
  %162 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %163 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %162, i32 0, i32 2
  store i32 %161, i32* %163, align 8
  br label %193

164:                                              ; preds = %65, %65
  %165 = load i8*, i8** @e1000_set_lan_id_single_port, align 8
  %166 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %167 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %166, i32 0, i32 4
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 3
  store i8* %165, i8** %168, align 8
  %169 = load i8*, i8** @e1000_check_mng_mode_82574, align 8
  %170 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %171 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %170, i32 0, i32 4
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 2
  store i8* %169, i8** %172, align 8
  %173 = load i8*, i8** @e1000_led_on_82574, align 8
  %174 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %175 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %174, i32 0, i32 4
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 1
  store i8* %173, i8** %176, align 8
  br label %193

177:                                              ; preds = %65
  %178 = load i8*, i8** @e1000_check_mng_mode_generic, align 8
  %179 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %180 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %179, i32 0, i32 4
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 2
  store i8* %178, i8** %181, align 8
  %182 = load i8*, i8** @e1000_led_on_generic, align 8
  %183 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %184 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %183, i32 0, i32 4
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 1
  store i8* %182, i8** %185, align 8
  %186 = load i8*, i8** @e1000_blink_led_generic, align 8
  %187 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %188 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %187, i32 0, i32 4
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 0
  store i8* %186, i8** %189, align 8
  %190 = load i8*, i8** @TRUE, align 8
  %191 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %192 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %191, i32 0, i32 3
  store i8* %190, i8** %192, align 8
  br label %193

193:                                              ; preds = %177, %164, %133
  %194 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %195 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %194, i32 0, i32 2
  %196 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  switch i32 %197, label %218 [
    i32 132, label %198
    i32 131, label %198
  ]

198:                                              ; preds = %193, %193
  %199 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %200 = load i32, i32* @E1000_SWSM2, align 4
  %201 = call i32 @E1000_READ_REG(%struct.e1000_hw* %199, i32 %200)
  store i32 %201, i32* %5, align 4
  %202 = load i32, i32* %5, align 4
  %203 = load i32, i32* @E1000_SWSM2_LOCK, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %215, label %206

206:                                              ; preds = %198
  %207 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %208 = load i32, i32* @E1000_SWSM2, align 4
  %209 = load i32, i32* %5, align 4
  %210 = load i32, i32* @E1000_SWSM2_LOCK, align 4
  %211 = or i32 %209, %210
  %212 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %207, i32 %208, i32 %211)
  %213 = load i8*, i8** @TRUE, align 8
  %214 = ptrtoint i8* %213 to i32
  store i32 %214, i32* %6, align 4
  br label %217

215:                                              ; preds = %198
  %216 = load i32, i32* @FALSE, align 4
  store i32 %216, i32* %6, align 4
  br label %217

217:                                              ; preds = %215, %206
  br label %221

218:                                              ; preds = %193
  %219 = load i8*, i8** @TRUE, align 8
  %220 = ptrtoint i8* %219 to i32
  store i32 %220, i32* %6, align 4
  br label %221

221:                                              ; preds = %218, %217
  %222 = load i32, i32* %6, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %242

224:                                              ; preds = %221
  %225 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %226 = load i32, i32* @E1000_SWSM, align 4
  %227 = call i32 @E1000_READ_REG(%struct.e1000_hw* %225, i32 %226)
  store i32 %227, i32* %4, align 4
  %228 = load i32, i32* %4, align 4
  %229 = load i32, i32* @E1000_SWSM_SMBI, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %234

232:                                              ; preds = %224
  %233 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %234

234:                                              ; preds = %232, %224
  %235 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %236 = load i32, i32* @E1000_SWSM, align 4
  %237 = load i32, i32* %4, align 4
  %238 = load i32, i32* @E1000_SWSM_SMBI, align 4
  %239 = xor i32 %238, -1
  %240 = and i32 %237, %239
  %241 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %235, i32 %236, i32 %240)
  br label %242

242:                                              ; preds = %234, %221
  %243 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %244 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i32 0, i32 0
  store i64 0, i64* %246, align 8
  %247 = load i32, i32* @E1000_SUCCESS, align 4
  ret i32 %247
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
