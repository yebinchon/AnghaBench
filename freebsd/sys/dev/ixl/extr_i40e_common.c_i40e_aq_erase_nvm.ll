; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_erase_nvm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_erase_nvm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }
%struct.i40e_asq_cmd_details = type { i32 }
%struct.i40e_aq_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_aqc_nvm_update = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"i40e_aq_erase_nvm\00", align 1
@I40E_ERR_PARAM = common dso_local global i32 0, align 4
@i40e_aqc_opc_nvm_erase = common dso_local global i32 0, align 4
@I40E_AQ_NVM_LAST_CMD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_aq_erase_nvm(%struct.i40e_hw* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.i40e_asq_cmd_details* %5) #0 {
  %7 = alloca %struct.i40e_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.i40e_asq_cmd_details*, align 8
  %13 = alloca %struct.i40e_aq_desc, align 4
  %14 = alloca %struct.i40e_aqc_nvm_update*, align 8
  %15 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.i40e_asq_cmd_details* %5, %struct.i40e_asq_cmd_details** %12, align 8
  %16 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %13, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = bitcast i32* %17 to %struct.i40e_aqc_nvm_update*
  store %struct.i40e_aqc_nvm_update* %18, %struct.i40e_aqc_nvm_update** %14, align 8
  %19 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %9, align 4
  %21 = and i32 %20, -16777216
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %6
  %24 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %24, i32* %15, align 4
  br label %51

25:                                               ; preds = %6
  %26 = load i32, i32* @i40e_aqc_opc_nvm_erase, align 4
  %27 = call i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc* %13, i32 %26)
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load i32, i32* @I40E_AQ_NVM_LAST_CMD, align 4
  %32 = load %struct.i40e_aqc_nvm_update*, %struct.i40e_aqc_nvm_update** %14, align 8
  %33 = getelementptr inbounds %struct.i40e_aqc_nvm_update, %struct.i40e_aqc_nvm_update* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %30, %25
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.i40e_aqc_nvm_update*, %struct.i40e_aqc_nvm_update** %14, align 8
  %39 = getelementptr inbounds %struct.i40e_aqc_nvm_update, %struct.i40e_aqc_nvm_update* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @CPU_TO_LE32(i32 %40)
  %42 = load %struct.i40e_aqc_nvm_update*, %struct.i40e_aqc_nvm_update** %14, align 8
  %43 = getelementptr inbounds %struct.i40e_aqc_nvm_update, %struct.i40e_aqc_nvm_update* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @CPU_TO_LE16(i32 %44)
  %46 = load %struct.i40e_aqc_nvm_update*, %struct.i40e_aqc_nvm_update** %14, align 8
  %47 = getelementptr inbounds %struct.i40e_aqc_nvm_update, %struct.i40e_aqc_nvm_update* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %49 = load %struct.i40e_asq_cmd_details*, %struct.i40e_asq_cmd_details** %12, align 8
  %50 = call i32 @i40e_asq_send_command(%struct.i40e_hw* %48, %struct.i40e_aq_desc* %13, i32* null, i32 0, %struct.i40e_asq_cmd_details* %49)
  store i32 %50, i32* %15, align 4
  br label %51

51:                                               ; preds = %36, %23
  %52 = load i32, i32* %15, align 4
  ret i32 %52
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc*, i32) #1

declare dso_local i32 @CPU_TO_LE32(i32) #1

declare dso_local i32 @CPU_TO_LE16(i32) #1

declare dso_local i32 @i40e_asq_send_command(%struct.i40e_hw*, %struct.i40e_aq_desc*, i32*, i32, %struct.i40e_asq_cmd_details*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
