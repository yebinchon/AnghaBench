; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_80003es2lan.c_e1000_init_mac_params_80003es2lan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_80003es2lan.c_e1000_init_mac_params_80003es2lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32, %struct.e1000_mac_info, %struct.TYPE_3__ }
%struct.e1000_mac_info = type { i32, i32, %struct.TYPE_4__, i32, i8*, i8*, i32 }
%struct.TYPE_4__ = type { i32 (%struct.e1000_hw.0*)*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.e1000_hw.0 = type opaque
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"e1000_init_mac_params_80003es2lan\00", align 1
@e1000_media_type_internal_serdes = common dso_local global i32 0, align 4
@e1000_check_for_serdes_link_generic = common dso_local global i32 0, align 4
@e1000_setup_fiber_serdes_link_generic = common dso_local global i32 0, align 4
@e1000_media_type_copper = common dso_local global i32 0, align 4
@e1000_check_for_copper_link_generic = common dso_local global i32 0, align 4
@e1000_setup_copper_link_80003es2lan = common dso_local global i32 0, align 4
@E1000_RAR_ENTRIES = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@E1000_FWSM = common dso_local global i32 0, align 4
@E1000_FWSM_MODE_MASK = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@e1000_get_bus_info_pcie_generic = common dso_local global i32 0, align 4
@e1000_reset_hw_80003es2lan = common dso_local global i32 0, align 4
@e1000_init_hw_80003es2lan = common dso_local global i32 0, align 4
@e1000_setup_link_generic = common dso_local global i32 0, align 4
@e1000_check_mng_mode_generic = common dso_local global i32 0, align 4
@e1000_update_mc_addr_list_generic = common dso_local global i32 0, align 4
@e1000_write_vfta_generic = common dso_local global i32 0, align 4
@e1000_clear_vfta_generic = common dso_local global i32 0, align 4
@e1000_read_mac_addr_80003es2lan = common dso_local global i32 0, align 4
@e1000_id_led_init_generic = common dso_local global i32 0, align 4
@e1000_blink_led_generic = common dso_local global i32 0, align 4
@e1000_setup_led_generic = common dso_local global i32 0, align 4
@e1000_cleanup_led_generic = common dso_local global i32 0, align 4
@e1000_led_on_generic = common dso_local global i32 0, align 4
@e1000_led_off_generic = common dso_local global i32 0, align 4
@e1000_clear_hw_cntrs_80003es2lan = common dso_local global i32 0, align 4
@e1000_get_link_up_info_80003es2lan = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @e1000_init_mac_params_80003es2lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_init_mac_params_80003es2lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_mac_info*, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %4 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %5 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %4, i32 0, i32 1
  store %struct.e1000_mac_info* %5, %struct.e1000_mac_info** %3, align 8
  %6 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %23 [
    i32 128, label %10
  ]

10:                                               ; preds = %1
  %11 = load i32, i32* @e1000_media_type_internal_serdes, align 4
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %13 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store i32 %11, i32* %14, align 8
  %15 = load i32, i32* @e1000_check_for_serdes_link_generic, align 4
  %16 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %17 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 19
  store i32 %15, i32* %18, align 8
  %19 = load i32, i32* @e1000_setup_fiber_serdes_link_generic, align 4
  %20 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %21 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 18
  store i32 %19, i32* %22, align 4
  br label %36

23:                                               ; preds = %1
  %24 = load i32, i32* @e1000_media_type_copper, align 4
  %25 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %26 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 8
  %28 = load i32, i32* @e1000_check_for_copper_link_generic, align 4
  %29 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %30 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 19
  store i32 %28, i32* %31, align 8
  %32 = load i32, i32* @e1000_setup_copper_link_80003es2lan, align 4
  %33 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %34 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 18
  store i32 %32, i32* %35, align 4
  br label %36

36:                                               ; preds = %23, %10
  %37 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %38 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %37, i32 0, i32 0
  store i32 128, i32* %38, align 8
  %39 = load i32, i32* @E1000_RAR_ENTRIES, align 4
  %40 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %41 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %40, i32 0, i32 6
  store i32 %39, i32* %41, align 8
  %42 = load i8*, i8** @TRUE, align 8
  %43 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %44 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %43, i32 0, i32 5
  store i8* %42, i8** %44, align 8
  %45 = load i8*, i8** @TRUE, align 8
  %46 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %47 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %46, i32 0, i32 4
  store i8* %45, i8** %47, align 8
  %48 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %49 = load i32, i32* @E1000_FWSM, align 4
  %50 = call i32 @E1000_READ_REG(%struct.e1000_hw* %48, i32 %49)
  %51 = load i32, i32* @E1000_FWSM_MODE_MASK, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %58 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @FALSE, align 4
  %60 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %61 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* @e1000_get_bus_info_pcie_generic, align 4
  %63 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %64 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 17
  store i32 %62, i32* %65, align 8
  %66 = load i32, i32* @e1000_reset_hw_80003es2lan, align 4
  %67 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %68 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 16
  store i32 %66, i32* %69, align 4
  %70 = load i32, i32* @e1000_init_hw_80003es2lan, align 4
  %71 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %72 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 15
  store i32 %70, i32* %73, align 8
  %74 = load i32, i32* @e1000_setup_link_generic, align 4
  %75 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %76 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 14
  store i32 %74, i32* %77, align 4
  %78 = load i32, i32* @e1000_check_mng_mode_generic, align 4
  %79 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %80 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 13
  store i32 %78, i32* %81, align 8
  %82 = load i32, i32* @e1000_update_mc_addr_list_generic, align 4
  %83 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %84 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 12
  store i32 %82, i32* %85, align 4
  %86 = load i32, i32* @e1000_write_vfta_generic, align 4
  %87 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %88 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 11
  store i32 %86, i32* %89, align 8
  %90 = load i32, i32* @e1000_clear_vfta_generic, align 4
  %91 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %92 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 10
  store i32 %90, i32* %93, align 4
  %94 = load i32, i32* @e1000_read_mac_addr_80003es2lan, align 4
  %95 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %96 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 9
  store i32 %94, i32* %97, align 8
  %98 = load i32, i32* @e1000_id_led_init_generic, align 4
  %99 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %100 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 8
  store i32 %98, i32* %101, align 4
  %102 = load i32, i32* @e1000_blink_led_generic, align 4
  %103 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %104 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 7
  store i32 %102, i32* %105, align 8
  %106 = load i32, i32* @e1000_setup_led_generic, align 4
  %107 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %108 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 6
  store i32 %106, i32* %109, align 4
  %110 = load i32, i32* @e1000_cleanup_led_generic, align 4
  %111 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %112 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 5
  store i32 %110, i32* %113, align 8
  %114 = load i32, i32* @e1000_led_on_generic, align 4
  %115 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %116 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 4
  store i32 %114, i32* %117, align 4
  %118 = load i32, i32* @e1000_led_off_generic, align 4
  %119 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %120 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 3
  store i32 %118, i32* %121, align 8
  %122 = load i32, i32* @e1000_clear_hw_cntrs_80003es2lan, align 4
  %123 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %124 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 2
  store i32 %122, i32* %125, align 4
  %126 = load i32, i32* @e1000_get_link_up_info_80003es2lan, align 4
  %127 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %128 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 1
  store i32 %126, i32* %129, align 8
  %130 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %131 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %133, align 8
  %135 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %136 = bitcast %struct.e1000_hw* %135 to %struct.e1000_hw.0*
  %137 = call i32 %134(%struct.e1000_hw.0* %136)
  %138 = load i32, i32* @E1000_SUCCESS, align 4
  ret i32 %138
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
