; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_send_msg_to_vf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_send_msg_to_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }
%struct.i40e_asq_cmd_details = type { i32 }
%struct.i40e_aq_desc = type { i32, i32, i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_aqc_pf_vf_message = type { i8* }

@i40e_aqc_opc_send_msg_to_vf = common dso_local global i32 0, align 4
@I40E_AQ_FLAG_SI = common dso_local global i64 0, align 8
@I40E_AQ_FLAG_BUF = common dso_local global i32 0, align 4
@I40E_AQ_FLAG_RD = common dso_local global i32 0, align 4
@I40E_AQ_LARGE_BUF = common dso_local global i32 0, align 4
@I40E_AQ_FLAG_LB = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_aq_send_msg_to_vf(%struct.i40e_hw* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5, %struct.i40e_asq_cmd_details* %6) #0 {
  %8 = alloca %struct.i40e_hw*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.i40e_asq_cmd_details*, align 8
  %15 = alloca %struct.i40e_aq_desc, align 8
  %16 = alloca %struct.i40e_aqc_pf_vf_message*, align 8
  %17 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store %struct.i40e_asq_cmd_details* %6, %struct.i40e_asq_cmd_details** %14, align 8
  %18 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %15, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = bitcast i32* %19 to %struct.i40e_aqc_pf_vf_message*
  store %struct.i40e_aqc_pf_vf_message* %20, %struct.i40e_aqc_pf_vf_message** %16, align 8
  %21 = load i32, i32* @i40e_aqc_opc_send_msg_to_vf, align 4
  %22 = call i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc* %15, i32 %21)
  %23 = load i32, i32* %9, align 4
  %24 = call i8* @CPU_TO_LE32(i32 %23)
  %25 = load %struct.i40e_aqc_pf_vf_message*, %struct.i40e_aqc_pf_vf_message** %16, align 8
  %26 = getelementptr inbounds %struct.i40e_aqc_pf_vf_message, %struct.i40e_aqc_pf_vf_message* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  %27 = load i32, i32* %10, align 4
  %28 = call i8* @CPU_TO_LE32(i32 %27)
  %29 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %15, i32 0, i32 3
  store i8* %28, i8** %29, align 8
  %30 = load i32, i32* %11, align 4
  %31 = call i8* @CPU_TO_LE32(i32 %30)
  %32 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %15, i32 0, i32 2
  store i8* %31, i8** %32, align 8
  %33 = load i64, i64* @I40E_AQ_FLAG_SI, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i32 @CPU_TO_LE16(i32 %34)
  %36 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %15, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %35
  store i32 %38, i32* %36, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %63

41:                                               ; preds = %7
  %42 = load i32, i32* @I40E_AQ_FLAG_BUF, align 4
  %43 = load i32, i32* @I40E_AQ_FLAG_RD, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @CPU_TO_LE16(i32 %44)
  %46 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %15, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %45
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* @I40E_AQ_LARGE_BUF, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %41
  %53 = load i64, i64* @I40E_AQ_FLAG_LB, align 8
  %54 = trunc i64 %53 to i32
  %55 = call i32 @CPU_TO_LE16(i32 %54)
  %56 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %15, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %55
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %52, %41
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @CPU_TO_LE16(i32 %60)
  %62 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %15, i32 0, i32 0
  store i32 %61, i32* %62, align 8
  br label %63

63:                                               ; preds = %59, %7
  %64 = load %struct.i40e_hw*, %struct.i40e_hw** %8, align 8
  %65 = load i32*, i32** %12, align 8
  %66 = load i32, i32* %13, align 4
  %67 = load %struct.i40e_asq_cmd_details*, %struct.i40e_asq_cmd_details** %14, align 8
  %68 = call i32 @i40e_asq_send_command(%struct.i40e_hw* %64, %struct.i40e_aq_desc* %15, i32* %65, i32 %66, %struct.i40e_asq_cmd_details* %67)
  store i32 %68, i32* %17, align 4
  %69 = load i32, i32* %17, align 4
  ret i32 %69
}

declare dso_local i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc*, i32) #1

declare dso_local i8* @CPU_TO_LE32(i32) #1

declare dso_local i32 @CPU_TO_LE16(i32) #1

declare dso_local i32 @i40e_asq_send_command(%struct.i40e_hw*, %struct.i40e_aq_desc*, i32*, i32, %struct.i40e_asq_cmd_details*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
