; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_get_cee_dcb_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_get_cee_dcb_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }
%struct.i40e_asq_cmd_details = type { i32 }
%struct.i40e_aq_desc = type { i32 }

@I40E_ERR_PARAM = common dso_local global i32 0, align 4
@i40e_aqc_opc_get_cee_dcb_cfg = common dso_local global i32 0, align 4
@I40E_AQ_FLAG_BUF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_aq_get_cee_dcb_config(%struct.i40e_hw* %0, i8* %1, i32 %2, %struct.i40e_asq_cmd_details* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40e_hw*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.i40e_asq_cmd_details*, align 8
  %10 = alloca %struct.i40e_aq_desc, align 4
  %11 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.i40e_asq_cmd_details* %3, %struct.i40e_asq_cmd_details** %9, align 8
  %12 = load i32, i32* %8, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load i8*, i8** %7, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %14, %4
  %18 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %18, i32* %5, align 4
  br label %34

19:                                               ; preds = %14
  %20 = load i32, i32* @i40e_aqc_opc_get_cee_dcb_cfg, align 4
  %21 = call i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc* %10, i32 %20)
  %22 = load i64, i64* @I40E_AQ_FLAG_BUF, align 8
  %23 = trunc i64 %22 to i32
  %24 = call i32 @CPU_TO_LE16(i32 %23)
  %25 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %10, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %24
  store i32 %27, i32* %25, align 4
  %28 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.i40e_asq_cmd_details*, %struct.i40e_asq_cmd_details** %9, align 8
  %32 = call i32 @i40e_asq_send_command(%struct.i40e_hw* %28, %struct.i40e_aq_desc* %10, i8* %29, i32 %30, %struct.i40e_asq_cmd_details* %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %19, %17
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc*, i32) #1

declare dso_local i32 @CPU_TO_LE16(i32) #1

declare dso_local i32 @i40e_asq_send_command(%struct.i40e_hw*, %struct.i40e_aq_desc*, i8*, i32, %struct.i40e_asq_cmd_details*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
