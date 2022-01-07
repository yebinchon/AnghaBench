; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_set_switch_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_set_switch_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32, i32, i32, i32 }
%struct.i40e_asq_cmd_details = type { i32 }
%struct.i40e_aq_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_aqc_set_switch_config = type { i8*, i8*, i8*, i32, i8*, i8* }

@i40e_aqc_opc_set_switch_config = common dso_local global i32 0, align 4
@I40E_HW_FLAG_802_1AD_CAPABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_aq_set_switch_config(%struct.i40e_hw* %0, i32 %1, i32 %2, i32 %3, %struct.i40e_asq_cmd_details* %4) #0 {
  %6 = alloca %struct.i40e_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.i40e_asq_cmd_details*, align 8
  %11 = alloca %struct.i40e_aq_desc, align 4
  %12 = alloca %struct.i40e_aqc_set_switch_config*, align 8
  %13 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.i40e_asq_cmd_details* %4, %struct.i40e_asq_cmd_details** %10, align 8
  %14 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %11, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = bitcast i32* %15 to %struct.i40e_aqc_set_switch_config*
  store %struct.i40e_aqc_set_switch_config* %16, %struct.i40e_aqc_set_switch_config** %12, align 8
  %17 = load i32, i32* @i40e_aqc_opc_set_switch_config, align 4
  %18 = call i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc* %11, i32 %17)
  %19 = load i32, i32* %7, align 4
  %20 = call i8* @CPU_TO_LE16(i32 %19)
  %21 = load %struct.i40e_aqc_set_switch_config*, %struct.i40e_aqc_set_switch_config** %12, align 8
  %22 = getelementptr inbounds %struct.i40e_aqc_set_switch_config, %struct.i40e_aqc_set_switch_config* %21, i32 0, i32 5
  store i8* %20, i8** %22, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i8* @CPU_TO_LE16(i32 %23)
  %25 = load %struct.i40e_aqc_set_switch_config*, %struct.i40e_aqc_set_switch_config** %12, align 8
  %26 = getelementptr inbounds %struct.i40e_aqc_set_switch_config, %struct.i40e_aqc_set_switch_config* %25, i32 0, i32 4
  store i8* %24, i8** %26, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.i40e_aqc_set_switch_config*, %struct.i40e_aqc_set_switch_config** %12, align 8
  %29 = getelementptr inbounds %struct.i40e_aqc_set_switch_config, %struct.i40e_aqc_set_switch_config* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 8
  %30 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %31 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @I40E_HW_FLAG_802_1AD_CAPABLE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %55

36:                                               ; preds = %5
  %37 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %38 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @CPU_TO_LE16(i32 %39)
  %41 = load %struct.i40e_aqc_set_switch_config*, %struct.i40e_aqc_set_switch_config** %12, align 8
  %42 = getelementptr inbounds %struct.i40e_aqc_set_switch_config, %struct.i40e_aqc_set_switch_config* %41, i32 0, i32 2
  store i8* %40, i8** %42, align 8
  %43 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %44 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @CPU_TO_LE16(i32 %45)
  %47 = load %struct.i40e_aqc_set_switch_config*, %struct.i40e_aqc_set_switch_config** %12, align 8
  %48 = getelementptr inbounds %struct.i40e_aqc_set_switch_config, %struct.i40e_aqc_set_switch_config* %47, i32 0, i32 1
  store i8* %46, i8** %48, align 8
  %49 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %50 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @CPU_TO_LE16(i32 %51)
  %53 = load %struct.i40e_aqc_set_switch_config*, %struct.i40e_aqc_set_switch_config** %12, align 8
  %54 = getelementptr inbounds %struct.i40e_aqc_set_switch_config, %struct.i40e_aqc_set_switch_config* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  br label %55

55:                                               ; preds = %36, %5
  %56 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %57 = load %struct.i40e_asq_cmd_details*, %struct.i40e_asq_cmd_details** %10, align 8
  %58 = call i32 @i40e_asq_send_command(%struct.i40e_hw* %56, %struct.i40e_aq_desc* %11, i32* null, i32 0, %struct.i40e_asq_cmd_details* %57)
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  ret i32 %59
}

declare dso_local i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc*, i32) #1

declare dso_local i8* @CPU_TO_LE16(i32) #1

declare dso_local i32 @i40e_asq_send_command(%struct.i40e_hw*, %struct.i40e_aq_desc*, i32*, i32, %struct.i40e_asq_cmd_details*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
