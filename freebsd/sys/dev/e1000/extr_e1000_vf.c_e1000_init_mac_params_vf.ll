; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_vf.c_e1000_init_mac_params_vf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_vf.c_e1000_init_mac_params_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_3__, %struct.e1000_mac_info }
%struct.TYPE_3__ = type { i32 }
%struct.e1000_mac_info = type { i32, i32, %struct.TYPE_4__, i8*, i8*, i8* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"e1000_init_mac_params_vf\00", align 1
@e1000_media_type_unknown = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@e1000_setup_link_vf = common dso_local global i32 0, align 4
@e1000_get_bus_info_pcie_vf = common dso_local global i32 0, align 4
@e1000_reset_hw_vf = common dso_local global i32 0, align 4
@e1000_init_hw_vf = common dso_local global i32 0, align 4
@e1000_check_for_link_vf = common dso_local global i32 0, align 4
@e1000_get_link_up_info_vf = common dso_local global i32 0, align 4
@e1000_update_mc_addr_list_vf = common dso_local global i32 0, align 4
@e1000_rar_set_vf = common dso_local global i32 0, align 4
@e1000_read_mac_addr_vf = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @e1000_init_mac_params_vf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_init_mac_params_vf(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_mac_info*, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %4 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %5 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %4, i32 0, i32 1
  store %struct.e1000_mac_info* %5, %struct.e1000_mac_info** %3, align 8
  %6 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @e1000_media_type_unknown, align 4
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store i32 %7, i32* %10, align 8
  %11 = load i8*, i8** @FALSE, align 8
  %12 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %13 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %12, i32 0, i32 5
  store i8* %11, i8** %13, align 8
  %14 = load i8*, i8** @FALSE, align 8
  %15 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %16 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %15, i32 0, i32 4
  store i8* %14, i8** %16, align 8
  %17 = load i8*, i8** @FALSE, align 8
  %18 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %19 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %18, i32 0, i32 3
  store i8* %17, i8** %19, align 8
  %20 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %21 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %20, i32 0, i32 0
  store i32 128, i32* %21, align 8
  %22 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %23 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %22, i32 0, i32 1
  store i32 1, i32* %23, align 4
  %24 = load i32, i32* @e1000_setup_link_vf, align 4
  %25 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %26 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 8
  store i32 %24, i32* %27, align 8
  %28 = load i32, i32* @e1000_get_bus_info_pcie_vf, align 4
  %29 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %30 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 7
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* @e1000_reset_hw_vf, align 4
  %33 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %34 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 6
  store i32 %32, i32* %35, align 8
  %36 = load i32, i32* @e1000_init_hw_vf, align 4
  %37 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %38 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 5
  store i32 %36, i32* %39, align 4
  %40 = load i32, i32* @e1000_check_for_link_vf, align 4
  %41 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %42 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 4
  store i32 %40, i32* %43, align 8
  %44 = load i32, i32* @e1000_get_link_up_info_vf, align 4
  %45 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %46 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 3
  store i32 %44, i32* %47, align 4
  %48 = load i32, i32* @e1000_update_mc_addr_list_vf, align 4
  %49 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %50 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  store i32 %48, i32* %51, align 8
  %52 = load i32, i32* @e1000_rar_set_vf, align 4
  %53 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %54 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  store i32 %52, i32* %55, align 4
  %56 = load i32, i32* @e1000_read_mac_addr_vf, align 4
  %57 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %58 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 8
  %60 = load i32, i32* @E1000_SUCCESS, align 4
  ret i32 %60
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
