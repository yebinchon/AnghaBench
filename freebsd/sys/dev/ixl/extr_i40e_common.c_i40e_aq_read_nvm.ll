; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_read_nvm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_read_nvm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }
%struct.i40e_asq_cmd_details = type { i32 }
%struct.i40e_aq_desc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_aqc_nvm_update = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"i40e_aq_read_nvm\00", align 1
@I40E_ERR_PARAM = common dso_local global i32 0, align 4
@i40e_aqc_opc_nvm_read = common dso_local global i32 0, align 4
@I40E_AQ_NVM_LAST_CMD = common dso_local global i32 0, align 4
@I40E_AQ_FLAG_BUF = common dso_local global i64 0, align 8
@I40E_AQ_LARGE_BUF = common dso_local global i32 0, align 4
@I40E_AQ_FLAG_LB = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_aq_read_nvm(%struct.i40e_hw* %0, i32 %1, i32 %2, i32 %3, i8* %4, i32 %5, %struct.i40e_asq_cmd_details* %6) #0 {
  %8 = alloca %struct.i40e_hw*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.i40e_asq_cmd_details*, align 8
  %15 = alloca %struct.i40e_aq_desc, align 4
  %16 = alloca %struct.i40e_aqc_nvm_update*, align 8
  %17 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store %struct.i40e_asq_cmd_details* %6, %struct.i40e_asq_cmd_details** %14, align 8
  %18 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %15, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = bitcast i32* %19 to %struct.i40e_aqc_nvm_update*
  store %struct.i40e_aqc_nvm_update* %20, %struct.i40e_aqc_nvm_update** %16, align 8
  %21 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* %10, align 4
  %23 = and i32 %22, -16777216
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %7
  %26 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %26, i32* %17, align 4
  br label %72

27:                                               ; preds = %7
  %28 = load i32, i32* @i40e_aqc_opc_nvm_read, align 4
  %29 = call i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc* %15, i32 %28)
  %30 = load i32, i32* %13, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load i32, i32* @I40E_AQ_NVM_LAST_CMD, align 4
  %34 = load %struct.i40e_aqc_nvm_update*, %struct.i40e_aqc_nvm_update** %16, align 8
  %35 = getelementptr inbounds %struct.i40e_aqc_nvm_update, %struct.i40e_aqc_nvm_update* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %32, %27
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.i40e_aqc_nvm_update*, %struct.i40e_aqc_nvm_update** %16, align 8
  %41 = getelementptr inbounds %struct.i40e_aqc_nvm_update, %struct.i40e_aqc_nvm_update* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @CPU_TO_LE32(i32 %42)
  %44 = load %struct.i40e_aqc_nvm_update*, %struct.i40e_aqc_nvm_update** %16, align 8
  %45 = getelementptr inbounds %struct.i40e_aqc_nvm_update, %struct.i40e_aqc_nvm_update* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @CPU_TO_LE16(i32 %46)
  %48 = load %struct.i40e_aqc_nvm_update*, %struct.i40e_aqc_nvm_update** %16, align 8
  %49 = getelementptr inbounds %struct.i40e_aqc_nvm_update, %struct.i40e_aqc_nvm_update* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load i64, i64* @I40E_AQ_FLAG_BUF, align 8
  %51 = trunc i64 %50 to i32
  %52 = call i32 @CPU_TO_LE16(i32 %51)
  %53 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %15, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %52
  store i32 %55, i32* %53, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @I40E_AQ_LARGE_BUF, align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %38
  %60 = load i64, i64* @I40E_AQ_FLAG_LB, align 8
  %61 = trunc i64 %60 to i32
  %62 = call i32 @CPU_TO_LE16(i32 %61)
  %63 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %15, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %62
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %59, %38
  %67 = load %struct.i40e_hw*, %struct.i40e_hw** %8, align 8
  %68 = load i8*, i8** %12, align 8
  %69 = load i32, i32* %11, align 4
  %70 = load %struct.i40e_asq_cmd_details*, %struct.i40e_asq_cmd_details** %14, align 8
  %71 = call i32 @i40e_asq_send_command(%struct.i40e_hw* %67, %struct.i40e_aq_desc* %15, i8* %68, i32 %69, %struct.i40e_asq_cmd_details* %70)
  store i32 %71, i32* %17, align 4
  br label %72

72:                                               ; preds = %66, %25
  %73 = load i32, i32* %17, align 4
  ret i32 %73
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc*, i32) #1

declare dso_local i32 @CPU_TO_LE32(i32) #1

declare dso_local i32 @CPU_TO_LE16(i32) #1

declare dso_local i32 @i40e_asq_send_command(%struct.i40e_hw*, %struct.i40e_aq_desc*, i8*, i32, %struct.i40e_asq_cmd_details*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
