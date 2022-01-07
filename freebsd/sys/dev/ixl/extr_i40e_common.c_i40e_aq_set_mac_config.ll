; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_set_mac_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_set_mac_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }
%struct.i40e_asq_cmd_details = type { i32 }
%struct.i40e_aq_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_aq_set_mac_config = type { i32, i32 }

@I40E_ERR_PARAM = common dso_local global i32 0, align 4
@i40e_aqc_opc_set_mac_config = common dso_local global i32 0, align 4
@I40E_AQ_SET_MAC_CONFIG_CRC_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_aq_set_mac_config(%struct.i40e_hw* %0, i64 %1, i32 %2, i64 %3, %struct.i40e_asq_cmd_details* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.i40e_hw*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.i40e_asq_cmd_details*, align 8
  %12 = alloca %struct.i40e_aq_desc, align 4
  %13 = alloca %struct.i40e_aq_set_mac_config*, align 8
  %14 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store %struct.i40e_asq_cmd_details* %4, %struct.i40e_asq_cmd_details** %11, align 8
  %15 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %12, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = bitcast i32* %16 to %struct.i40e_aq_set_mac_config*
  store %struct.i40e_aq_set_mac_config* %17, %struct.i40e_aq_set_mac_config** %13, align 8
  %18 = load i64, i64* %8, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %21, i32* %6, align 4
  br label %48

22:                                               ; preds = %5
  %23 = load i32, i32* @i40e_aqc_opc_set_mac_config, align 4
  %24 = call i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc* %12, i32 %23)
  %25 = load i64, i64* %8, align 8
  %26 = call i32 @CPU_TO_LE16(i64 %25)
  %27 = load %struct.i40e_aq_set_mac_config*, %struct.i40e_aq_set_mac_config** %13, align 8
  %28 = getelementptr inbounds %struct.i40e_aq_set_mac_config, %struct.i40e_aq_set_mac_config* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i64, i64* %10, align 8
  %30 = trunc i64 %29 to i32
  %31 = and i32 %30, 15
  %32 = shl i32 %31, 3
  %33 = load %struct.i40e_aq_set_mac_config*, %struct.i40e_aq_set_mac_config** %13, align 8
  %34 = getelementptr inbounds %struct.i40e_aq_set_mac_config, %struct.i40e_aq_set_mac_config* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %22
  %38 = load i32, i32* @I40E_AQ_SET_MAC_CONFIG_CRC_EN, align 4
  %39 = load %struct.i40e_aq_set_mac_config*, %struct.i40e_aq_set_mac_config** %13, align 8
  %40 = getelementptr inbounds %struct.i40e_aq_set_mac_config, %struct.i40e_aq_set_mac_config* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %37, %22
  %44 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %45 = load %struct.i40e_asq_cmd_details*, %struct.i40e_asq_cmd_details** %11, align 8
  %46 = call i32 @i40e_asq_send_command(%struct.i40e_hw* %44, %struct.i40e_aq_desc* %12, i32* null, i32 0, %struct.i40e_asq_cmd_details* %45)
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %14, align 4
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %43, %20
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc*, i32) #1

declare dso_local i32 @CPU_TO_LE16(i64) #1

declare dso_local i32 @i40e_asq_send_command(%struct.i40e_hw*, %struct.i40e_aq_desc*, i32*, i32, %struct.i40e_asq_cmd_details*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
