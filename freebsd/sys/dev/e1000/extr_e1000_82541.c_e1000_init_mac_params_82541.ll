; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82541.c_e1000_init_mac_params_82541.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82541.c_e1000_init_mac_params_82541.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_3__, %struct.e1000_mac_info }
%struct.TYPE_3__ = type { i32 }
%struct.e1000_mac_info = type { i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"e1000_init_mac_params_82541\00", align 1
@e1000_media_type_copper = common dso_local global i32 0, align 4
@E1000_RAR_ENTRIES = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@e1000_get_bus_info_pci_generic = common dso_local global i32 0, align 4
@e1000_set_lan_id_single_port = common dso_local global i32 0, align 4
@e1000_reset_hw_82541 = common dso_local global i32 0, align 4
@e1000_init_hw_82541 = common dso_local global i32 0, align 4
@e1000_setup_link_generic = common dso_local global i32 0, align 4
@e1000_setup_copper_link_82541 = common dso_local global i32 0, align 4
@e1000_check_for_link_82541 = common dso_local global i32 0, align 4
@e1000_get_link_up_info_82541 = common dso_local global i32 0, align 4
@e1000_update_mc_addr_list_generic = common dso_local global i32 0, align 4
@e1000_write_vfta_generic = common dso_local global i32 0, align 4
@e1000_clear_vfta_generic = common dso_local global i32 0, align 4
@e1000_read_mac_addr_82541 = common dso_local global i32 0, align 4
@e1000_id_led_init_generic = common dso_local global i32 0, align 4
@e1000_setup_led_82541 = common dso_local global i32 0, align 4
@e1000_cleanup_led_82541 = common dso_local global i32 0, align 4
@e1000_led_on_generic = common dso_local global i32 0, align 4
@e1000_led_off_generic = common dso_local global i32 0, align 4
@e1000_clear_hw_cntrs_82541 = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @e1000_init_mac_params_82541 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_init_mac_params_82541(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_mac_info*, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %4 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %5 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %4, i32 0, i32 1
  store %struct.e1000_mac_info* %5, %struct.e1000_mac_info** %3, align 8
  %6 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @e1000_media_type_copper, align 4
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store i32 %7, i32* %10, align 4
  %11 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %12 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %11, i32 0, i32 0
  store i32 128, i32* %12, align 4
  %13 = load i32, i32* @E1000_RAR_ENTRIES, align 4
  %14 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %15 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @TRUE, align 4
  %17 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %18 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @e1000_get_bus_info_pci_generic, align 4
  %20 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %21 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 17
  store i32 %19, i32* %22, align 4
  %23 = load i32, i32* @e1000_set_lan_id_single_port, align 4
  %24 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %25 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 16
  store i32 %23, i32* %26, align 4
  %27 = load i32, i32* @e1000_reset_hw_82541, align 4
  %28 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %29 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 15
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* @e1000_init_hw_82541, align 4
  %32 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %33 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 14
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* @e1000_setup_link_generic, align 4
  %36 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %37 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 13
  store i32 %35, i32* %38, align 4
  %39 = load i32, i32* @e1000_setup_copper_link_82541, align 4
  %40 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %41 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 12
  store i32 %39, i32* %42, align 4
  %43 = load i32, i32* @e1000_check_for_link_82541, align 4
  %44 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %45 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 11
  store i32 %43, i32* %46, align 4
  %47 = load i32, i32* @e1000_get_link_up_info_82541, align 4
  %48 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %49 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 10
  store i32 %47, i32* %50, align 4
  %51 = load i32, i32* @e1000_update_mc_addr_list_generic, align 4
  %52 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %53 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 9
  store i32 %51, i32* %54, align 4
  %55 = load i32, i32* @e1000_write_vfta_generic, align 4
  %56 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %57 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 8
  store i32 %55, i32* %58, align 4
  %59 = load i32, i32* @e1000_clear_vfta_generic, align 4
  %60 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %61 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 7
  store i32 %59, i32* %62, align 4
  %63 = load i32, i32* @e1000_read_mac_addr_82541, align 4
  %64 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %65 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 6
  store i32 %63, i32* %66, align 4
  %67 = load i32, i32* @e1000_id_led_init_generic, align 4
  %68 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %69 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 5
  store i32 %67, i32* %70, align 4
  %71 = load i32, i32* @e1000_setup_led_82541, align 4
  %72 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %73 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 4
  store i32 %71, i32* %74, align 4
  %75 = load i32, i32* @e1000_cleanup_led_82541, align 4
  %76 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %77 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 3
  store i32 %75, i32* %78, align 4
  %79 = load i32, i32* @e1000_led_on_generic, align 4
  %80 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %81 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 2
  store i32 %79, i32* %82, align 4
  %83 = load i32, i32* @e1000_led_off_generic, align 4
  %84 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %85 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  store i32 %83, i32* %86, align 4
  %87 = load i32, i32* @e1000_clear_hw_cntrs_82541, align 4
  %88 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %89 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  store i32 %87, i32* %90, align 4
  %91 = load i32, i32* @E1000_SUCCESS, align 4
  ret i32 %91
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
