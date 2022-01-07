; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82575.c_e1000_init_mac_params_82575.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82575.c_e1000_init_mac_params_82575.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_mac_info, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.e1000_mac_info = type { i32, i32, i64, i32, %struct.TYPE_6__, i8*, i8*, i32 }
%struct.TYPE_6__ = type { i32 (%struct.e1000_hw.0*)*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.e1000_hw.0 = type opaque
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { %struct.e1000_dev_spec_82575 }
%struct.e1000_dev_spec_82575 = type { i8*, i32 }

@.str = private unnamed_addr constant [28 x i8] c"e1000_init_mac_params_82575\00", align 1
@e1000_82575 = common dso_local global i64 0, align 8
@E1000_RAR_ENTRIES_82575 = common dso_local global i32 0, align 4
@e1000_82576 = common dso_local global i64 0, align 8
@E1000_RAR_ENTRIES_82576 = common dso_local global i32 0, align 4
@e1000_82580 = common dso_local global i64 0, align 8
@E1000_RAR_ENTRIES_82580 = common dso_local global i32 0, align 4
@e1000_i350 = common dso_local global i64 0, align 8
@e1000_i354 = common dso_local global i64 0, align 8
@E1000_RAR_ENTRIES_I350 = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@e1000_i210 = common dso_local global i64 0, align 8
@TRUE = common dso_local global i8* null, align 8
@E1000_FWSM = common dso_local global i32 0, align 4
@E1000_FWSM_MODE_MASK = common dso_local global i32 0, align 4
@e1000_get_bus_info_pcie_generic = common dso_local global i32 0, align 4
@e1000_reset_hw_82580 = common dso_local global i32 0, align 4
@e1000_reset_hw_82575 = common dso_local global i32 0, align 4
@e1000_i211 = common dso_local global i64 0, align 8
@e1000_init_hw_i210 = common dso_local global i32 0, align 4
@e1000_init_hw_82575 = common dso_local global i32 0, align 4
@e1000_setup_link_generic = common dso_local global i32 0, align 4
@e1000_media_type_copper = common dso_local global i64 0, align 8
@e1000_setup_copper_link_82575 = common dso_local global i32 0, align 4
@e1000_setup_serdes_link_82575 = common dso_local global i32 0, align 4
@e1000_shutdown_serdes_link_82575 = common dso_local global i32 0, align 4
@e1000_power_up_serdes_link_82575 = common dso_local global i32 0, align 4
@e1000_check_for_link_82575 = common dso_local global i32 0, align 4
@e1000_read_mac_addr_82575 = common dso_local global i32 0, align 4
@e1000_config_collision_dist_82575 = common dso_local global i32 0, align 4
@e1000_update_mc_addr_list_generic = common dso_local global i32 0, align 4
@e1000_write_vfta_i350 = common dso_local global i32 0, align 4
@e1000_clear_vfta_i350 = common dso_local global i32 0, align 4
@e1000_write_vfta_generic = common dso_local global i32 0, align 4
@e1000_clear_vfta_generic = common dso_local global i32 0, align 4
@e1000_validate_mdi_setting_crossover_generic = common dso_local global i32 0, align 4
@e1000_id_led_init_generic = common dso_local global i32 0, align 4
@e1000_blink_led_generic = common dso_local global i32 0, align 4
@e1000_setup_led_generic = common dso_local global i32 0, align 4
@e1000_cleanup_led_generic = common dso_local global i32 0, align 4
@e1000_led_on_generic = common dso_local global i32 0, align 4
@e1000_led_off_generic = common dso_local global i32 0, align 4
@e1000_clear_hw_cntrs_82575 = common dso_local global i32 0, align 4
@e1000_get_link_up_info_82575 = common dso_local global i32 0, align 4
@e1000_acquire_swfw_sync = common dso_local global i32 0, align 4
@e1000_release_swfw_sync = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @e1000_init_mac_params_82575 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_init_mac_params_82575(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_mac_info*, align 8
  %4 = alloca %struct.e1000_dev_spec_82575*, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %5 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %6 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %5, i32 0, i32 0
  store %struct.e1000_mac_info* %6, %struct.e1000_mac_info** %3, align 8
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store %struct.e1000_dev_spec_82575* %9, %struct.e1000_dev_spec_82575** %4, align 8
  %10 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %12 = call i32 @e1000_get_media_type_82575(%struct.e1000_hw* %11)
  %13 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %14 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %13, i32 0, i32 0
  store i32 128, i32* %14, align 8
  %15 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %16 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @e1000_82575, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 0, i32 128
  %23 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %24 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @E1000_RAR_ENTRIES_82575, align 4
  %26 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %27 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %26, i32 0, i32 7
  store i32 %25, i32* %27, align 8
  %28 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %29 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @e1000_82576, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %1
  %34 = load i32, i32* @E1000_RAR_ENTRIES_82576, align 4
  %35 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %36 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %35, i32 0, i32 7
  store i32 %34, i32* %36, align 8
  br label %37

37:                                               ; preds = %33, %1
  %38 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %39 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @e1000_82580, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load i32, i32* @E1000_RAR_ENTRIES_82580, align 4
  %45 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %46 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %45, i32 0, i32 7
  store i32 %44, i32* %46, align 8
  br label %47

47:                                               ; preds = %43, %37
  %48 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %49 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @e1000_i350, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %59, label %53

53:                                               ; preds = %47
  %54 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %55 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @e1000_i354, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %53, %47
  %60 = load i32, i32* @E1000_RAR_ENTRIES_I350, align 4
  %61 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %62 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %61, i32 0, i32 7
  store i32 %60, i32* %62, align 8
  br label %63

63:                                               ; preds = %59, %53
  %64 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %65 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @e1000_i350, align 8
  %68 = icmp sge i64 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load i32, i32* @FALSE, align 4
  %71 = load %struct.e1000_dev_spec_82575*, %struct.e1000_dev_spec_82575** %4, align 8
  %72 = getelementptr inbounds %struct.e1000_dev_spec_82575, %struct.e1000_dev_spec_82575* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 8
  br label %73

73:                                               ; preds = %69, %63
  %74 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %75 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @e1000_i210, align 8
  %78 = icmp sge i64 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = load i8*, i8** @TRUE, align 8
  %81 = load %struct.e1000_dev_spec_82575*, %struct.e1000_dev_spec_82575** %4, align 8
  %82 = getelementptr inbounds %struct.e1000_dev_spec_82575, %struct.e1000_dev_spec_82575* %81, i32 0, i32 0
  store i8* %80, i8** %82, align 8
  br label %83

83:                                               ; preds = %79, %73
  %84 = load i8*, i8** @TRUE, align 8
  %85 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %86 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %85, i32 0, i32 6
  store i8* %84, i8** %86, align 8
  %87 = load i8*, i8** @TRUE, align 8
  %88 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %89 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %88, i32 0, i32 5
  store i8* %87, i8** %89, align 8
  %90 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %91 = load i32, i32* @E1000_FWSM, align 4
  %92 = call i32 @E1000_READ_REG(%struct.e1000_hw* %90, i32 %91)
  %93 = load i32, i32* @E1000_FWSM_MODE_MASK, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  %96 = xor i1 %95, true
  %97 = xor i1 %96, true
  %98 = zext i1 %97 to i32
  %99 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %100 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %99, i32 0, i32 3
  store i32 %98, i32* %100, align 8
  %101 = load i32, i32* @e1000_get_bus_info_pcie_generic, align 4
  %102 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %103 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %102, i32 0, i32 4
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 24
  store i32 %101, i32* %104, align 4
  %105 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %106 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @e1000_82580, align 8
  %109 = icmp sge i64 %107, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %83
  %111 = load i32, i32* @e1000_reset_hw_82580, align 4
  %112 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %113 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %112, i32 0, i32 4
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 23
  store i32 %111, i32* %114, align 8
  br label %120

115:                                              ; preds = %83
  %116 = load i32, i32* @e1000_reset_hw_82575, align 4
  %117 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %118 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %117, i32 0, i32 4
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 23
  store i32 %116, i32* %119, align 8
  br label %120

120:                                              ; preds = %115, %110
  %121 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %122 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @e1000_i210, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %132, label %126

126:                                              ; preds = %120
  %127 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %128 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @e1000_i211, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %137

132:                                              ; preds = %126, %120
  %133 = load i32, i32* @e1000_init_hw_i210, align 4
  %134 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %135 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %134, i32 0, i32 4
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 22
  store i32 %133, i32* %136, align 4
  br label %142

137:                                              ; preds = %126
  %138 = load i32, i32* @e1000_init_hw_82575, align 4
  %139 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %140 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %139, i32 0, i32 4
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 22
  store i32 %138, i32* %141, align 4
  br label %142

142:                                              ; preds = %137, %132
  %143 = load i32, i32* @e1000_setup_link_generic, align 4
  %144 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %145 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %144, i32 0, i32 4
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 21
  store i32 %143, i32* %146, align 8
  %147 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %148 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @e1000_media_type_copper, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %155

153:                                              ; preds = %142
  %154 = load i32, i32* @e1000_setup_copper_link_82575, align 4
  br label %157

155:                                              ; preds = %142
  %156 = load i32, i32* @e1000_setup_serdes_link_82575, align 4
  br label %157

157:                                              ; preds = %155, %153
  %158 = phi i32 [ %154, %153 ], [ %156, %155 ]
  %159 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %160 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %159, i32 0, i32 4
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 20
  store i32 %158, i32* %161, align 4
  %162 = load i32, i32* @e1000_shutdown_serdes_link_82575, align 4
  %163 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %164 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %163, i32 0, i32 4
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 19
  store i32 %162, i32* %165, align 8
  %166 = load i32, i32* @e1000_power_up_serdes_link_82575, align 4
  %167 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %168 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %167, i32 0, i32 4
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 18
  store i32 %166, i32* %169, align 4
  %170 = load i32, i32* @e1000_check_for_link_82575, align 4
  %171 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %172 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %171, i32 0, i32 4
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 17
  store i32 %170, i32* %173, align 8
  %174 = load i32, i32* @e1000_read_mac_addr_82575, align 4
  %175 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %176 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %175, i32 0, i32 4
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 16
  store i32 %174, i32* %177, align 4
  %178 = load i32, i32* @e1000_config_collision_dist_82575, align 4
  %179 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %180 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %179, i32 0, i32 4
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 15
  store i32 %178, i32* %181, align 8
  %182 = load i32, i32* @e1000_update_mc_addr_list_generic, align 4
  %183 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %184 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %183, i32 0, i32 4
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 14
  store i32 %182, i32* %185, align 4
  %186 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %187 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %187, i32 0, i32 2
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @e1000_i350, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %198, label %192

192:                                              ; preds = %157
  %193 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %194 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %193, i32 0, i32 2
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @e1000_i354, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %198, label %207

198:                                              ; preds = %192, %157
  %199 = load i32, i32* @e1000_write_vfta_i350, align 4
  %200 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %201 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %200, i32 0, i32 4
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 13
  store i32 %199, i32* %202, align 8
  %203 = load i32, i32* @e1000_clear_vfta_i350, align 4
  %204 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %205 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %204, i32 0, i32 4
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 12
  store i32 %203, i32* %206, align 4
  br label %216

207:                                              ; preds = %192
  %208 = load i32, i32* @e1000_write_vfta_generic, align 4
  %209 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %210 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %209, i32 0, i32 4
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 13
  store i32 %208, i32* %211, align 8
  %212 = load i32, i32* @e1000_clear_vfta_generic, align 4
  %213 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %214 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %213, i32 0, i32 4
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 12
  store i32 %212, i32* %215, align 4
  br label %216

216:                                              ; preds = %207, %198
  %217 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %218 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %218, i32 0, i32 2
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* @e1000_82580, align 8
  %222 = icmp sge i64 %220, %221
  br i1 %222, label %223, label %228

223:                                              ; preds = %216
  %224 = load i32, i32* @e1000_validate_mdi_setting_crossover_generic, align 4
  %225 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %226 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %225, i32 0, i32 4
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 11
  store i32 %224, i32* %227, align 8
  br label %228

228:                                              ; preds = %223, %216
  %229 = load i32, i32* @e1000_id_led_init_generic, align 4
  %230 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %231 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %230, i32 0, i32 4
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 10
  store i32 %229, i32* %232, align 4
  %233 = load i32, i32* @e1000_blink_led_generic, align 4
  %234 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %235 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %234, i32 0, i32 4
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i32 0, i32 9
  store i32 %233, i32* %236, align 8
  %237 = load i32, i32* @e1000_setup_led_generic, align 4
  %238 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %239 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %238, i32 0, i32 4
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i32 0, i32 8
  store i32 %237, i32* %240, align 4
  %241 = load i32, i32* @e1000_cleanup_led_generic, align 4
  %242 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %243 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %242, i32 0, i32 4
  %244 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %243, i32 0, i32 7
  store i32 %241, i32* %244, align 8
  %245 = load i32, i32* @e1000_led_on_generic, align 4
  %246 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %247 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %246, i32 0, i32 4
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i32 0, i32 6
  store i32 %245, i32* %248, align 4
  %249 = load i32, i32* @e1000_led_off_generic, align 4
  %250 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %251 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %250, i32 0, i32 4
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i32 0, i32 5
  store i32 %249, i32* %252, align 8
  %253 = load i32, i32* @e1000_clear_hw_cntrs_82575, align 4
  %254 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %255 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %254, i32 0, i32 4
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i32 0, i32 4
  store i32 %253, i32* %256, align 4
  %257 = load i32, i32* @e1000_get_link_up_info_82575, align 4
  %258 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %259 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %258, i32 0, i32 4
  %260 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %259, i32 0, i32 3
  store i32 %257, i32* %260, align 8
  %261 = load i32, i32* @e1000_acquire_swfw_sync, align 4
  %262 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %263 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %262, i32 0, i32 4
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %263, i32 0, i32 2
  store i32 %261, i32* %264, align 4
  %265 = load i32, i32* @e1000_release_swfw_sync, align 4
  %266 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %267 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %266, i32 0, i32 4
  %268 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %267, i32 0, i32 1
  store i32 %265, i32* %268, align 8
  %269 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %270 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %270, i32 0, i32 4
  %272 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %271, i32 0, i32 0
  %273 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %272, align 8
  %274 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %275 = bitcast %struct.e1000_hw* %274 to %struct.e1000_hw.0*
  %276 = call i32 %273(%struct.e1000_hw.0* %275)
  %277 = load i32, i32* @E1000_SUCCESS, align 4
  ret i32 %277
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @e1000_get_media_type_82575(%struct.e1000_hw*) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
