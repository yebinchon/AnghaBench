; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_get_switch_resource_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_get_switch_resource_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }
%struct.i40e_aqc_switch_resource_alloc_element_resp = type { i32 }
%struct.i40e_asq_cmd_details = type { i32 }
%struct.i40e_aq_desc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_aqc_get_switch_resource_alloc = type { i32 }

@i40e_aqc_opc_get_switch_resource_alloc = common dso_local global i32 0, align 4
@I40E_AQ_FLAG_BUF = common dso_local global i64 0, align 8
@I40E_AQ_LARGE_BUF = common dso_local global i32 0, align 4
@I40E_AQ_FLAG_LB = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_aq_get_switch_resource_alloc(%struct.i40e_hw* %0, i32* %1, %struct.i40e_aqc_switch_resource_alloc_element_resp* %2, i32 %3, %struct.i40e_asq_cmd_details* %4) #0 {
  %6 = alloca %struct.i40e_hw*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.i40e_aqc_switch_resource_alloc_element_resp*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.i40e_asq_cmd_details*, align 8
  %11 = alloca %struct.i40e_aq_desc, align 4
  %12 = alloca %struct.i40e_aqc_get_switch_resource_alloc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.i40e_aqc_switch_resource_alloc_element_resp* %2, %struct.i40e_aqc_switch_resource_alloc_element_resp** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.i40e_asq_cmd_details* %4, %struct.i40e_asq_cmd_details** %10, align 8
  %15 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %11, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = bitcast i32* %16 to %struct.i40e_aqc_get_switch_resource_alloc*
  store %struct.i40e_aqc_get_switch_resource_alloc* %17, %struct.i40e_aqc_get_switch_resource_alloc** %12, align 8
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 4
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* @i40e_aqc_opc_get_switch_resource_alloc, align 4
  %23 = call i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc* %11, i32 %22)
  %24 = load i64, i64* @I40E_AQ_FLAG_BUF, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i32 @CPU_TO_LE16(i32 %25)
  %27 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %11, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %26
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* @I40E_AQ_LARGE_BUF, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %5
  %34 = load i64, i64* @I40E_AQ_FLAG_LB, align 8
  %35 = trunc i64 %34 to i32
  %36 = call i32 @CPU_TO_LE16(i32 %35)
  %37 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %11, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %36
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %33, %5
  %41 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %42 = load %struct.i40e_aqc_switch_resource_alloc_element_resp*, %struct.i40e_aqc_switch_resource_alloc_element_resp** %8, align 8
  %43 = load i32, i32* %14, align 4
  %44 = load %struct.i40e_asq_cmd_details*, %struct.i40e_asq_cmd_details** %10, align 8
  %45 = call i32 @i40e_asq_send_command(%struct.i40e_hw* %41, %struct.i40e_aq_desc* %11, %struct.i40e_aqc_switch_resource_alloc_element_resp* %42, i32 %43, %struct.i40e_asq_cmd_details* %44)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %40
  %49 = load i32*, i32** %7, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load %struct.i40e_aqc_get_switch_resource_alloc*, %struct.i40e_aqc_get_switch_resource_alloc** %12, align 8
  %53 = getelementptr inbounds %struct.i40e_aqc_get_switch_resource_alloc, %struct.i40e_aqc_get_switch_resource_alloc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %7, align 8
  store i32 %54, i32* %55, align 4
  br label %56

56:                                               ; preds = %51, %48, %40
  %57 = load i32, i32* %13, align 4
  ret i32 %57
}

declare dso_local i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc*, i32) #1

declare dso_local i32 @CPU_TO_LE16(i32) #1

declare dso_local i32 @i40e_asq_send_command(%struct.i40e_hw*, %struct.i40e_aq_desc*, %struct.i40e_aqc_switch_resource_alloc_element_resp*, i32, %struct.i40e_asq_cmd_details*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
