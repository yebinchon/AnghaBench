; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_init_mac_params_ich8lan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_init_mac_params_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_3__, %struct.e1000_mac_info }
%struct.TYPE_3__ = type { i32 }
%struct.e1000_mac_info = type { i32, i32, %struct.TYPE_4__, i64, i8*, i32, i8*, i8* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"e1000_init_mac_params_ich8lan\00", align 1
@e1000_media_type_copper = common dso_local global i32 0, align 4
@E1000_ICH_RAR_ENTRIES = common dso_local global i64 0, align 8
@TRUE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i32 0, align 4
@e1000_get_bus_info_ich8lan = common dso_local global i32 0, align 4
@e1000_set_lan_id_single_port = common dso_local global i32 0, align 4
@e1000_reset_hw_ich8lan = common dso_local global i32 0, align 4
@e1000_init_hw_ich8lan = common dso_local global i32 0, align 4
@e1000_setup_link_ich8lan = common dso_local global i32 0, align 4
@e1000_setup_copper_link_ich8lan = common dso_local global i32 0, align 4
@e1000_check_for_copper_link_ich8lan = common dso_local global i32 0, align 4
@e1000_get_link_up_info_ich8lan = common dso_local global i32 0, align 4
@e1000_update_mc_addr_list_generic = common dso_local global i32 0, align 4
@e1000_clear_hw_cntrs_ich8lan = common dso_local global i32 0, align 4
@e1000_check_mng_mode_ich8lan = common dso_local global i32 0, align 4
@e1000_id_led_init_generic = common dso_local global i32 0, align 4
@e1000_blink_led_generic = common dso_local global i32 0, align 4
@e1000_setup_led_generic = common dso_local global i32 0, align 4
@e1000_cleanup_led_ich8lan = common dso_local global i32 0, align 4
@e1000_led_on_ich8lan = common dso_local global i32 0, align 4
@e1000_led_off_ich8lan = common dso_local global i32 0, align 4
@E1000_PCH2_RAR_ENTRIES = common dso_local global i64 0, align 8
@e1000_rar_set_pch2lan = common dso_local global i32 0, align 4
@e1000_update_mc_addr_list_pch2lan = common dso_local global i32 0, align 4
@e1000_check_mng_mode_pchlan = common dso_local global i32 0, align 4
@e1000_id_led_init_pchlan = common dso_local global i32 0, align 4
@e1000_setup_led_pchlan = common dso_local global i32 0, align 4
@e1000_cleanup_led_pchlan = common dso_local global i32 0, align 4
@e1000_led_on_pchlan = common dso_local global i32 0, align 4
@e1000_led_off_pchlan = common dso_local global i32 0, align 4
@E1000_PCH_LPT_RAR_ENTRIES = common dso_local global i64 0, align 8
@e1000_rar_set_pch_lpt = common dso_local global i32 0, align 4
@e1000_setup_copper_link_pch_lpt = common dso_local global i32 0, align 4
@e1000_set_obff_timer_pch_lpt = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @e1000_init_mac_params_ich8lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_init_mac_params_ich8lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_mac_info*, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %4 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %5 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %4, i32 0, i32 1
  store %struct.e1000_mac_info* %5, %struct.e1000_mac_info** %3, align 8
  %6 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @e1000_media_type_copper, align 4
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store i32 %7, i32* %10, align 8
  %11 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %12 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %11, i32 0, i32 0
  store i32 32, i32* %12, align 8
  %13 = load i64, i64* @E1000_ICH_RAR_ENTRIES, align 8
  %14 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %15 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %14, i32 0, i32 3
  store i64 %13, i64* %15, align 8
  %16 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %17 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 134
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %22 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, -1
  store i64 %24, i64* %22, align 8
  br label %25

25:                                               ; preds = %20, %1
  %26 = load i8*, i8** @TRUE, align 8
  %27 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %28 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %27, i32 0, i32 7
  store i8* %26, i8** %28, align 8
  %29 = load i8*, i8** @TRUE, align 8
  %30 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %31 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %30, i32 0, i32 6
  store i8* %29, i8** %31, align 8
  %32 = load i32, i32* @FALSE, align 4
  %33 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %34 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 8
  %35 = load i8*, i8** @TRUE, align 8
  %36 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %37 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %36, i32 0, i32 4
  store i8* %35, i8** %37, align 8
  %38 = load i32, i32* @e1000_get_bus_info_ich8lan, align 4
  %39 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %40 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 18
  store i32 %38, i32* %41, align 8
  %42 = load i32, i32* @e1000_set_lan_id_single_port, align 4
  %43 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %44 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 17
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* @e1000_reset_hw_ich8lan, align 4
  %47 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %48 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 16
  store i32 %46, i32* %49, align 8
  %50 = load i32, i32* @e1000_init_hw_ich8lan, align 4
  %51 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %52 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 15
  store i32 %50, i32* %53, align 4
  %54 = load i32, i32* @e1000_setup_link_ich8lan, align 4
  %55 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %56 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 14
  store i32 %54, i32* %57, align 8
  %58 = load i32, i32* @e1000_setup_copper_link_ich8lan, align 4
  %59 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %60 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 4
  %62 = load i32, i32* @e1000_check_for_copper_link_ich8lan, align 4
  %63 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %64 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 13
  store i32 %62, i32* %65, align 4
  %66 = load i32, i32* @e1000_get_link_up_info_ich8lan, align 4
  %67 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %68 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 12
  store i32 %66, i32* %69, align 8
  %70 = load i32, i32* @e1000_update_mc_addr_list_generic, align 4
  %71 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %72 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 9
  store i32 %70, i32* %73, align 4
  %74 = load i32, i32* @e1000_clear_hw_cntrs_ich8lan, align 4
  %75 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %76 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 11
  store i32 %74, i32* %77, align 4
  %78 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %79 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  switch i32 %80, label %148 [
    i32 134, label %81
    i32 133, label %81
    i32 135, label %81
    i32 132, label %110
    i32 130, label %118
    i32 129, label %118
    i32 131, label %118
    i32 128, label %123
  ]

81:                                               ; preds = %25, %25, %25
  %82 = load i32, i32* @e1000_check_mng_mode_ich8lan, align 4
  %83 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %84 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 8
  store i32 %82, i32* %85, align 8
  %86 = load i32, i32* @e1000_id_led_init_generic, align 4
  %87 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %88 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 7
  store i32 %86, i32* %89, align 4
  %90 = load i32, i32* @e1000_blink_led_generic, align 4
  %91 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %92 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 10
  store i32 %90, i32* %93, align 8
  %94 = load i32, i32* @e1000_setup_led_generic, align 4
  %95 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %96 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 6
  store i32 %94, i32* %97, align 8
  %98 = load i32, i32* @e1000_cleanup_led_ich8lan, align 4
  %99 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %100 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 5
  store i32 %98, i32* %101, align 4
  %102 = load i32, i32* @e1000_led_on_ich8lan, align 4
  %103 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %104 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 4
  store i32 %102, i32* %105, align 8
  %106 = load i32, i32* @e1000_led_off_ich8lan, align 4
  %107 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %108 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 3
  store i32 %106, i32* %109, align 4
  br label %149

110:                                              ; preds = %25
  %111 = load i64, i64* @E1000_PCH2_RAR_ENTRIES, align 8
  %112 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %113 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %112, i32 0, i32 3
  store i64 %111, i64* %113, align 8
  %114 = load i32, i32* @e1000_rar_set_pch2lan, align 4
  %115 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %116 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 2
  store i32 %114, i32* %117, align 8
  br label %118

118:                                              ; preds = %25, %25, %25, %110
  %119 = load i32, i32* @e1000_update_mc_addr_list_pch2lan, align 4
  %120 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %121 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 9
  store i32 %119, i32* %122, align 4
  br label %123

123:                                              ; preds = %25, %118
  %124 = load i32, i32* @e1000_check_mng_mode_pchlan, align 4
  %125 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %126 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 8
  store i32 %124, i32* %127, align 8
  %128 = load i32, i32* @e1000_id_led_init_pchlan, align 4
  %129 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %130 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 7
  store i32 %128, i32* %131, align 4
  %132 = load i32, i32* @e1000_setup_led_pchlan, align 4
  %133 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %134 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 6
  store i32 %132, i32* %135, align 8
  %136 = load i32, i32* @e1000_cleanup_led_pchlan, align 4
  %137 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %138 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 5
  store i32 %136, i32* %139, align 4
  %140 = load i32, i32* @e1000_led_on_pchlan, align 4
  %141 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %142 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 4
  store i32 %140, i32* %143, align 8
  %144 = load i32, i32* @e1000_led_off_pchlan, align 4
  %145 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %146 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 3
  store i32 %144, i32* %147, align 4
  br label %149

148:                                              ; preds = %25
  br label %149

149:                                              ; preds = %148, %123, %81
  %150 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %151 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = icmp sge i32 %152, 130
  br i1 %153, label %154, label %170

154:                                              ; preds = %149
  %155 = load i64, i64* @E1000_PCH_LPT_RAR_ENTRIES, align 8
  %156 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %157 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %156, i32 0, i32 3
  store i64 %155, i64* %157, align 8
  %158 = load i32, i32* @e1000_rar_set_pch_lpt, align 4
  %159 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %160 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 2
  store i32 %158, i32* %161, align 8
  %162 = load i32, i32* @e1000_setup_copper_link_pch_lpt, align 4
  %163 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %164 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 1
  store i32 %162, i32* %165, align 4
  %166 = load i32, i32* @e1000_set_obff_timer_pch_lpt, align 4
  %167 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %168 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  store i32 %166, i32* %169, align 8
  br label %170

170:                                              ; preds = %154, %149
  %171 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %172 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = icmp eq i32 %173, 134
  br i1 %174, label %175, label %179

175:                                              ; preds = %170
  %176 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %177 = load i8*, i8** @TRUE, align 8
  %178 = call i32 @e1000_set_kmrn_lock_loss_workaround_ich8lan(%struct.e1000_hw* %176, i8* %177)
  br label %179

179:                                              ; preds = %175, %170
  %180 = load i32, i32* @E1000_SUCCESS, align 4
  ret i32 %180
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @e1000_set_kmrn_lock_loss_workaround_ich8lan(%struct.e1000_hw*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
