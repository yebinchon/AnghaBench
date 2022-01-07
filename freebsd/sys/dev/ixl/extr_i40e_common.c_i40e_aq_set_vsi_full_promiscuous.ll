; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_set_vsi_full_promiscuous.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_set_vsi_full_promiscuous.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }
%struct.i40e_asq_cmd_details = type { i32 }
%struct.i40e_aq_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_aqc_set_vsi_promiscuous_modes = type { i8*, i8*, i8* }

@i40e_aqc_opc_set_vsi_promiscuous_modes = common dso_local global i32 0, align 4
@I40E_AQC_SET_VSI_PROMISC_UNICAST = common dso_local global i32 0, align 4
@I40E_AQC_SET_VSI_PROMISC_MULTICAST = common dso_local global i32 0, align 4
@I40E_AQC_SET_VSI_PROMISC_BROADCAST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_aq_set_vsi_full_promiscuous(%struct.i40e_hw* %0, i32 %1, i32 %2, %struct.i40e_asq_cmd_details* %3) #0 {
  %5 = alloca %struct.i40e_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.i40e_asq_cmd_details*, align 8
  %9 = alloca %struct.i40e_aq_desc, align 4
  %10 = alloca %struct.i40e_aqc_set_vsi_promiscuous_modes*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.i40e_asq_cmd_details* %3, %struct.i40e_asq_cmd_details** %8, align 8
  %13 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %9, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = bitcast i32* %14 to %struct.i40e_aqc_set_vsi_promiscuous_modes*
  store %struct.i40e_aqc_set_vsi_promiscuous_modes* %15, %struct.i40e_aqc_set_vsi_promiscuous_modes** %10, align 8
  store i32 0, i32* %12, align 4
  %16 = load i32, i32* @i40e_aqc_opc_set_vsi_promiscuous_modes, align 4
  %17 = call i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc* %9, i32 %16)
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %4
  %21 = load i32, i32* @I40E_AQC_SET_VSI_PROMISC_UNICAST, align 4
  %22 = load i32, i32* @I40E_AQC_SET_VSI_PROMISC_MULTICAST, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @I40E_AQC_SET_VSI_PROMISC_BROADCAST, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %12, align 4
  br label %26

26:                                               ; preds = %20, %4
  %27 = load i32, i32* %12, align 4
  %28 = call i8* @CPU_TO_LE16(i32 %27)
  %29 = load %struct.i40e_aqc_set_vsi_promiscuous_modes*, %struct.i40e_aqc_set_vsi_promiscuous_modes** %10, align 8
  %30 = getelementptr inbounds %struct.i40e_aqc_set_vsi_promiscuous_modes, %struct.i40e_aqc_set_vsi_promiscuous_modes* %29, i32 0, i32 2
  store i8* %28, i8** %30, align 8
  %31 = load i32, i32* @I40E_AQC_SET_VSI_PROMISC_UNICAST, align 4
  %32 = load i32, i32* @I40E_AQC_SET_VSI_PROMISC_MULTICAST, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @I40E_AQC_SET_VSI_PROMISC_BROADCAST, align 4
  %35 = or i32 %33, %34
  %36 = call i8* @CPU_TO_LE16(i32 %35)
  %37 = load %struct.i40e_aqc_set_vsi_promiscuous_modes*, %struct.i40e_aqc_set_vsi_promiscuous_modes** %10, align 8
  %38 = getelementptr inbounds %struct.i40e_aqc_set_vsi_promiscuous_modes, %struct.i40e_aqc_set_vsi_promiscuous_modes* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i8* @CPU_TO_LE16(i32 %39)
  %41 = load %struct.i40e_aqc_set_vsi_promiscuous_modes*, %struct.i40e_aqc_set_vsi_promiscuous_modes** %10, align 8
  %42 = getelementptr inbounds %struct.i40e_aqc_set_vsi_promiscuous_modes, %struct.i40e_aqc_set_vsi_promiscuous_modes* %41, i32 0, i32 0
  store i8* %40, i8** %42, align 8
  %43 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %44 = load %struct.i40e_asq_cmd_details*, %struct.i40e_asq_cmd_details** %8, align 8
  %45 = call i32 @i40e_asq_send_command(%struct.i40e_hw* %43, %struct.i40e_aq_desc* %9, i32* null, i32 0, %struct.i40e_asq_cmd_details* %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  ret i32 %46
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
