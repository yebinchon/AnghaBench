; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82543.c_e1000_init_mac_params_82543.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82543.c_e1000_init_mac_params_82543.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32, %struct.TYPE_4__, %struct.e1000_mac_info }
%struct.TYPE_4__ = type { i64 }
%struct.e1000_mac_info = type { i32, i64, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"e1000_init_mac_params_82543\00", align 1
@e1000_media_type_fiber = common dso_local global i64 0, align 8
@e1000_media_type_copper = common dso_local global i64 0, align 8
@E1000_RAR_ENTRIES = common dso_local global i32 0, align 4
@e1000_get_bus_info_pci_generic = common dso_local global i32 0, align 4
@e1000_set_lan_id_multi_port_pci = common dso_local global i32 0, align 4
@e1000_reset_hw_82543 = common dso_local global i32 0, align 4
@e1000_init_hw_82543 = common dso_local global i32 0, align 4
@e1000_setup_link_82543 = common dso_local global i32 0, align 4
@e1000_setup_copper_link_82543 = common dso_local global i32 0, align 4
@e1000_setup_fiber_link_82543 = common dso_local global i32 0, align 4
@e1000_check_for_copper_link_82543 = common dso_local global i32 0, align 4
@e1000_check_for_fiber_link_82543 = common dso_local global i32 0, align 4
@e1000_get_speed_and_duplex_copper_generic = common dso_local global i32 0, align 4
@e1000_get_speed_and_duplex_fiber_serdes_generic = common dso_local global i32 0, align 4
@e1000_update_mc_addr_list_generic = common dso_local global i32 0, align 4
@e1000_write_vfta_82543 = common dso_local global i32 0, align 4
@e1000_clear_vfta_generic = common dso_local global i32 0, align 4
@e1000_read_mac_addr_82543 = common dso_local global i32 0, align 4
@e1000_led_on_82543 = common dso_local global i32 0, align 4
@e1000_led_off_82543 = common dso_local global i32 0, align 4
@e1000_clear_hw_cntrs_82543 = common dso_local global i32 0, align 4
@e1000_82543 = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @e1000_init_mac_params_82543 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_init_mac_params_82543(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_mac_info*, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %4 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %5 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %4, i32 0, i32 2
  store %struct.e1000_mac_info* %5, %struct.e1000_mac_info** %3, align 8
  %6 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %15 [
    i32 129, label %10
    i32 128, label %10
  ]

10:                                               ; preds = %1, %1
  %11 = load i64, i64* @e1000_media_type_fiber, align 8
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %13 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store i64 %11, i64* %14, align 8
  br label %20

15:                                               ; preds = %1
  %16 = load i64, i64* @e1000_media_type_copper, align 8
  %17 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %18 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i64 %16, i64* %19, align 8
  br label %20

20:                                               ; preds = %15, %10
  %21 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %22 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %21, i32 0, i32 0
  store i32 128, i32* %22, align 8
  %23 = load i32, i32* @E1000_RAR_ENTRIES, align 4
  %24 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %25 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @e1000_get_bus_info_pci_generic, align 4
  %27 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %28 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 14
  store i32 %26, i32* %29, align 8
  %30 = load i32, i32* @e1000_set_lan_id_multi_port_pci, align 4
  %31 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %32 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 13
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* @e1000_reset_hw_82543, align 4
  %35 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %36 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 12
  store i32 %34, i32* %37, align 8
  %38 = load i32, i32* @e1000_init_hw_82543, align 4
  %39 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %40 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 11
  store i32 %38, i32* %41, align 4
  %42 = load i32, i32* @e1000_setup_link_82543, align 4
  %43 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %44 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 10
  store i32 %42, i32* %45, align 8
  %46 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %47 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @e1000_media_type_copper, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %20
  %53 = load i32, i32* @e1000_setup_copper_link_82543, align 4
  br label %56

54:                                               ; preds = %20
  %55 = load i32, i32* @e1000_setup_fiber_link_82543, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  %58 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %59 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 9
  store i32 %57, i32* %60, align 4
  %61 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %62 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @e1000_media_type_copper, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %56
  %68 = load i32, i32* @e1000_check_for_copper_link_82543, align 4
  br label %71

69:                                               ; preds = %56
  %70 = load i32, i32* @e1000_check_for_fiber_link_82543, align 4
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi i32 [ %68, %67 ], [ %70, %69 ]
  %73 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %74 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 8
  store i32 %72, i32* %75, align 8
  %76 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %77 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @e1000_media_type_copper, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %71
  %83 = load i32, i32* @e1000_get_speed_and_duplex_copper_generic, align 4
  br label %86

84:                                               ; preds = %71
  %85 = load i32, i32* @e1000_get_speed_and_duplex_fiber_serdes_generic, align 4
  br label %86

86:                                               ; preds = %84, %82
  %87 = phi i32 [ %83, %82 ], [ %85, %84 ]
  %88 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %89 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 7
  store i32 %87, i32* %90, align 4
  %91 = load i32, i32* @e1000_update_mc_addr_list_generic, align 4
  %92 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %93 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 6
  store i32 %91, i32* %94, align 8
  %95 = load i32, i32* @e1000_write_vfta_82543, align 4
  %96 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %97 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 5
  store i32 %95, i32* %98, align 4
  %99 = load i32, i32* @e1000_clear_vfta_generic, align 4
  %100 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %101 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 4
  store i32 %99, i32* %102, align 8
  %103 = load i32, i32* @e1000_read_mac_addr_82543, align 4
  %104 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %105 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 3
  store i32 %103, i32* %106, align 4
  %107 = load i32, i32* @e1000_led_on_82543, align 4
  %108 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %109 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 2
  store i32 %107, i32* %110, align 8
  %111 = load i32, i32* @e1000_led_off_82543, align 4
  %112 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %113 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  store i32 %111, i32* %114, align 4
  %115 = load i32, i32* @e1000_clear_hw_cntrs_82543, align 4
  %116 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %117 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  store i32 %115, i32* %118, align 8
  %119 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %120 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @e1000_82543, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %132, label %125

125:                                              ; preds = %86
  %126 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %127 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @e1000_media_type_fiber, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %136

132:                                              ; preds = %125, %86
  %133 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %134 = load i32, i32* @FALSE, align 4
  %135 = call i32 @e1000_set_tbi_compatibility_82543(%struct.e1000_hw* %133, i32 %134)
  br label %136

136:                                              ; preds = %132, %125
  %137 = load i32, i32* @E1000_SUCCESS, align 4
  ret i32 %137
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @e1000_set_tbi_compatibility_82543(%struct.e1000_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
