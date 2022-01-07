; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82540.c_e1000_init_mac_params_82540.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82540.c_e1000_init_mac_params_82540.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32, %struct.TYPE_3__, %struct.e1000_mac_info }
%struct.TYPE_3__ = type { i32 }
%struct.e1000_mac_info = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@E1000_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"e1000_init_mac_params_82540\00", align 1
@E1000_RAR_ENTRIES = common dso_local global i32 0, align 4
@e1000_get_bus_info_pci_generic = common dso_local global i32 0, align 4
@e1000_set_lan_id_multi_port_pci = common dso_local global i32 0, align 4
@e1000_reset_hw_82540 = common dso_local global i32 0, align 4
@e1000_init_hw_82540 = common dso_local global i32 0, align 4
@e1000_setup_link_generic = common dso_local global i32 0, align 4
@e1000_setup_copper_link_82540 = common dso_local global i32 0, align 4
@e1000_setup_fiber_serdes_link_82540 = common dso_local global i32 0, align 4
@e1000_check_for_copper_link_generic = common dso_local global i32 0, align 4
@e1000_check_for_fiber_link_generic = common dso_local global i32 0, align 4
@e1000_check_for_serdes_link_generic = common dso_local global i32 0, align 4
@E1000_ERR_CONFIG = common dso_local global i32 0, align 4
@e1000_get_speed_and_duplex_copper_generic = common dso_local global i32 0, align 4
@e1000_get_speed_and_duplex_fiber_serdes_generic = common dso_local global i32 0, align 4
@e1000_update_mc_addr_list_generic = common dso_local global i32 0, align 4
@e1000_write_vfta_generic = common dso_local global i32 0, align 4
@e1000_clear_vfta_generic = common dso_local global i32 0, align 4
@e1000_read_mac_addr_82540 = common dso_local global i32 0, align 4
@e1000_id_led_init_generic = common dso_local global i32 0, align 4
@e1000_setup_led_generic = common dso_local global i32 0, align 4
@e1000_cleanup_led_generic = common dso_local global i32 0, align 4
@e1000_led_on_generic = common dso_local global i32 0, align 4
@e1000_led_off_generic = common dso_local global i32 0, align 4
@e1000_clear_hw_cntrs_82540 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @e1000_init_mac_params_82540 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_init_mac_params_82540(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_mac_info*, align 8
  %4 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %5 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %6 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %5, i32 0, i32 2
  store %struct.e1000_mac_info* %6, %struct.e1000_mac_info** %3, align 8
  %7 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %7, i32* %4, align 4
  %8 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %10 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %20 [
    i32 136, label %12
    i32 135, label %12
    i32 133, label %12
    i32 132, label %12
    i32 134, label %16
    i32 131, label %16
  ]

12:                                               ; preds = %1, %1, %1, %1
  %13 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %14 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store i32 129, i32* %15, align 4
  br label %24

16:                                               ; preds = %1, %1
  %17 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %18 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32 128, i32* %19, align 4
  br label %24

20:                                               ; preds = %1
  %21 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %22 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i32 130, i32* %23, align 4
  br label %24

24:                                               ; preds = %20, %16, %12
  %25 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %26 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %25, i32 0, i32 0
  store i32 128, i32* %26, align 4
  %27 = load i32, i32* @E1000_RAR_ENTRIES, align 4
  %28 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %29 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @e1000_get_bus_info_pci_generic, align 4
  %31 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %32 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 17
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* @e1000_set_lan_id_multi_port_pci, align 4
  %35 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %36 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 16
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* @e1000_reset_hw_82540, align 4
  %39 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %40 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 15
  store i32 %38, i32* %41, align 4
  %42 = load i32, i32* @e1000_init_hw_82540, align 4
  %43 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %44 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 14
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* @e1000_setup_link_generic, align 4
  %47 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %48 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 13
  store i32 %46, i32* %49, align 4
  %50 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %51 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 130
  br i1 %54, label %55, label %57

55:                                               ; preds = %24
  %56 = load i32, i32* @e1000_setup_copper_link_82540, align 4
  br label %59

57:                                               ; preds = %24
  %58 = load i32, i32* @e1000_setup_fiber_serdes_link_82540, align 4
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i32 [ %56, %55 ], [ %58, %57 ]
  %61 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %62 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 12
  store i32 %60, i32* %63, align 4
  %64 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %65 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  switch i32 %67, label %83 [
    i32 130, label %68
    i32 129, label %73
    i32 128, label %78
  ]

68:                                               ; preds = %59
  %69 = load i32, i32* @e1000_check_for_copper_link_generic, align 4
  %70 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %71 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 11
  store i32 %69, i32* %72, align 4
  br label %86

73:                                               ; preds = %59
  %74 = load i32, i32* @e1000_check_for_fiber_link_generic, align 4
  %75 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %76 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 11
  store i32 %74, i32* %77, align 4
  br label %86

78:                                               ; preds = %59
  %79 = load i32, i32* @e1000_check_for_serdes_link_generic, align 4
  %80 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %81 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 11
  store i32 %79, i32* %82, align 4
  br label %86

83:                                               ; preds = %59
  %84 = load i32, i32* @E1000_ERR_CONFIG, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %4, align 4
  br label %141

86:                                               ; preds = %78, %73, %68
  %87 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %88 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %90, 130
  br i1 %91, label %92, label %94

92:                                               ; preds = %86
  %93 = load i32, i32* @e1000_get_speed_and_duplex_copper_generic, align 4
  br label %96

94:                                               ; preds = %86
  %95 = load i32, i32* @e1000_get_speed_and_duplex_fiber_serdes_generic, align 4
  br label %96

96:                                               ; preds = %94, %92
  %97 = phi i32 [ %93, %92 ], [ %95, %94 ]
  %98 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %99 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 10
  store i32 %97, i32* %100, align 4
  %101 = load i32, i32* @e1000_update_mc_addr_list_generic, align 4
  %102 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %103 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 9
  store i32 %101, i32* %104, align 4
  %105 = load i32, i32* @e1000_write_vfta_generic, align 4
  %106 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %107 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 8
  store i32 %105, i32* %108, align 4
  %109 = load i32, i32* @e1000_clear_vfta_generic, align 4
  %110 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %111 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 7
  store i32 %109, i32* %112, align 4
  %113 = load i32, i32* @e1000_read_mac_addr_82540, align 4
  %114 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %115 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 6
  store i32 %113, i32* %116, align 4
  %117 = load i32, i32* @e1000_id_led_init_generic, align 4
  %118 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %119 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 5
  store i32 %117, i32* %120, align 4
  %121 = load i32, i32* @e1000_setup_led_generic, align 4
  %122 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %123 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 4
  store i32 %121, i32* %124, align 4
  %125 = load i32, i32* @e1000_cleanup_led_generic, align 4
  %126 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %127 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 3
  store i32 %125, i32* %128, align 4
  %129 = load i32, i32* @e1000_led_on_generic, align 4
  %130 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %131 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 2
  store i32 %129, i32* %132, align 4
  %133 = load i32, i32* @e1000_led_off_generic, align 4
  %134 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %135 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 1
  store i32 %133, i32* %136, align 4
  %137 = load i32, i32* @e1000_clear_hw_cntrs_82540, align 4
  %138 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %139 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  store i32 %137, i32* %140, align 4
  br label %141

141:                                              ; preds = %96, %83
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
