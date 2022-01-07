; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_mac.c_e1000_init_mac_ops_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_mac.c_e1000_init_mac_ops_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_mac_info }
%struct.e1000_mac_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i8*, i32, i32, i32, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [27 x i8] c"e1000_init_mac_ops_generic\00", align 1
@e1000_null_ops_generic = common dso_local global i8* null, align 8
@e1000_set_lan_id_multi_port_pcie = common dso_local global i32 0, align 4
@e1000_read_mac_addr_generic = common dso_local global i32 0, align 4
@e1000_config_collision_dist_generic = common dso_local global i32 0, align 4
@e1000_null_mac_generic = common dso_local global i8* null, align 8
@e1000_null_link_info = common dso_local global i32 0, align 4
@e1000_null_set_obff_timer = common dso_local global i32 0, align 4
@e1000_null_mng_mode = common dso_local global i32 0, align 4
@e1000_null_update_mc = common dso_local global i32 0, align 4
@e1000_null_write_vfta = common dso_local global i32 0, align 4
@e1000_rar_set_generic = common dso_local global i32 0, align 4
@e1000_validate_mdi_setting_generic = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @e1000_init_mac_ops_generic(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_mac_info*, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %4 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %5 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %4, i32 0, i32 0
  store %struct.e1000_mac_info* %5, %struct.e1000_mac_info** %3, align 8
  %6 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %7 = load i8*, i8** @e1000_null_ops_generic, align 8
  %8 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %9 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 23
  store i8* %7, i8** %10, align 8
  %11 = load i8*, i8** @e1000_null_ops_generic, align 8
  %12 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %13 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 22
  store i8* %11, i8** %14, align 8
  %15 = load i8*, i8** @e1000_null_ops_generic, align 8
  %16 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %17 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 21
  store i8* %15, i8** %18, align 8
  %19 = load i8*, i8** @e1000_null_ops_generic, align 8
  %20 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %21 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 20
  store i8* %19, i8** %22, align 8
  %23 = load i8*, i8** @e1000_null_ops_generic, align 8
  %24 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %25 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 19
  store i8* %23, i8** %26, align 8
  %27 = load i32, i32* @e1000_set_lan_id_multi_port_pcie, align 4
  %28 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %29 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 18
  store i32 %27, i32* %30, align 8
  %31 = load i32, i32* @e1000_read_mac_addr_generic, align 4
  %32 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %33 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 17
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* @e1000_config_collision_dist_generic, align 4
  %36 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %37 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 16
  store i32 %35, i32* %38, align 8
  %39 = load i8*, i8** @e1000_null_mac_generic, align 8
  %40 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %41 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 15
  store i8* %39, i8** %42, align 8
  %43 = load i8*, i8** @e1000_null_ops_generic, align 8
  %44 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %45 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 14
  store i8* %43, i8** %46, align 8
  %47 = load i8*, i8** @e1000_null_ops_generic, align 8
  %48 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %49 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 13
  store i8* %47, i8** %50, align 8
  %51 = load i8*, i8** @e1000_null_ops_generic, align 8
  %52 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %53 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 12
  store i8* %51, i8** %54, align 8
  %55 = load i8*, i8** @e1000_null_ops_generic, align 8
  %56 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %57 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 11
  store i8* %55, i8** %58, align 8
  %59 = load i8*, i8** @e1000_null_ops_generic, align 8
  %60 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %61 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 10
  store i8* %59, i8** %62, align 8
  %63 = load i8*, i8** @e1000_null_ops_generic, align 8
  %64 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %65 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 9
  store i8* %63, i8** %66, align 8
  %67 = load i32, i32* @e1000_null_link_info, align 4
  %68 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %69 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 8
  store i32 %67, i32* %70, align 8
  %71 = load i8*, i8** @e1000_null_ops_generic, align 8
  %72 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %73 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 7
  store i8* %71, i8** %74, align 8
  %75 = load i32, i32* @e1000_null_set_obff_timer, align 4
  %76 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %77 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 6
  store i32 %75, i32* %78, align 8
  %79 = load i32, i32* @e1000_null_mng_mode, align 4
  %80 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %81 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 5
  store i32 %79, i32* %82, align 4
  %83 = load i32, i32* @e1000_null_update_mc, align 4
  %84 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %85 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 4
  store i32 %83, i32* %86, align 8
  %87 = load i8*, i8** @e1000_null_mac_generic, align 8
  %88 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %89 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 3
  store i8* %87, i8** %90, align 8
  %91 = load i32, i32* @e1000_null_write_vfta, align 4
  %92 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %93 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 2
  store i32 %91, i32* %94, align 8
  %95 = load i32, i32* @e1000_rar_set_generic, align 4
  %96 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %97 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  store i32 %95, i32* %98, align 4
  %99 = load i32, i32* @e1000_validate_mdi_setting_generic, align 4
  %100 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %101 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  store i32 %99, i32* %102, align 8
  ret void
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
