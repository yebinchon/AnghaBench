; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_update_nvm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_update_nvm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.i40e_asq_cmd_details = type { i32 }
%struct.i40e_aq_desc = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.i40e_aqc_nvm_update = type { i32, i32, i32, i64 }

@.str = private unnamed_addr constant [19 x i8] c"i40e_aq_update_nvm\00", align 1
@I40E_ERR_PARAM = common dso_local global i32 0, align 4
@i40e_aqc_opc_nvm_update = common dso_local global i32 0, align 4
@I40E_AQ_NVM_LAST_CMD = common dso_local global i32 0, align 4
@I40E_MAC_X722 = common dso_local global i64 0, align 8
@I40E_NVM_PRESERVATION_FLAGS_SELECTED = common dso_local global i64 0, align 8
@I40E_AQ_NVM_PRESERVATION_FLAGS_SELECTED = common dso_local global i32 0, align 4
@I40E_AQ_NVM_PRESERVATION_FLAGS_SHIFT = common dso_local global i32 0, align 4
@I40E_NVM_PRESERVATION_FLAGS_ALL = common dso_local global i64 0, align 8
@I40E_AQ_NVM_PRESERVATION_FLAGS_ALL = common dso_local global i32 0, align 4
@I40E_AQ_FLAG_BUF = common dso_local global i32 0, align 4
@I40E_AQ_FLAG_RD = common dso_local global i32 0, align 4
@I40E_AQ_LARGE_BUF = common dso_local global i32 0, align 4
@I40E_AQ_FLAG_LB = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_aq_update_nvm(%struct.i40e_hw* %0, i64 %1, i32 %2, i32 %3, i8* %4, i32 %5, i64 %6, %struct.i40e_asq_cmd_details* %7) #0 {
  %9 = alloca %struct.i40e_hw*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.i40e_asq_cmd_details*, align 8
  %17 = alloca %struct.i40e_aq_desc, align 4
  %18 = alloca %struct.i40e_aqc_nvm_update*, align 8
  %19 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i64 %6, i64* %15, align 8
  store %struct.i40e_asq_cmd_details* %7, %struct.i40e_asq_cmd_details** %16, align 8
  %20 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %17, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = bitcast i32* %21 to %struct.i40e_aqc_nvm_update*
  store %struct.i40e_aqc_nvm_update* %22, %struct.i40e_aqc_nvm_update** %18, align 8
  %23 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %11, align 4
  %25 = and i32 %24, -16777216
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %8
  %28 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %28, i32* %19, align 4
  br label %108

29:                                               ; preds = %8
  %30 = load i32, i32* @i40e_aqc_opc_nvm_update, align 4
  %31 = call i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc* %17, i32 %30)
  %32 = load i32, i32* %14, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load i32, i32* @I40E_AQ_NVM_LAST_CMD, align 4
  %36 = load %struct.i40e_aqc_nvm_update*, %struct.i40e_aqc_nvm_update** %18, align 8
  %37 = getelementptr inbounds %struct.i40e_aqc_nvm_update, %struct.i40e_aqc_nvm_update* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  br label %40

40:                                               ; preds = %34, %29
  %41 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %42 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @I40E_MAC_X722, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %73

47:                                               ; preds = %40
  %48 = load i64, i64* %15, align 8
  %49 = load i64, i64* @I40E_NVM_PRESERVATION_FLAGS_SELECTED, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %47
  %52 = load i32, i32* @I40E_AQ_NVM_PRESERVATION_FLAGS_SELECTED, align 4
  %53 = load i32, i32* @I40E_AQ_NVM_PRESERVATION_FLAGS_SHIFT, align 4
  %54 = shl i32 %52, %53
  %55 = load %struct.i40e_aqc_nvm_update*, %struct.i40e_aqc_nvm_update** %18, align 8
  %56 = getelementptr inbounds %struct.i40e_aqc_nvm_update, %struct.i40e_aqc_nvm_update* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 8
  br label %72

59:                                               ; preds = %47
  %60 = load i64, i64* %15, align 8
  %61 = load i64, i64* @I40E_NVM_PRESERVATION_FLAGS_ALL, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %59
  %64 = load i32, i32* @I40E_AQ_NVM_PRESERVATION_FLAGS_ALL, align 4
  %65 = load i32, i32* @I40E_AQ_NVM_PRESERVATION_FLAGS_SHIFT, align 4
  %66 = shl i32 %64, %65
  %67 = load %struct.i40e_aqc_nvm_update*, %struct.i40e_aqc_nvm_update** %18, align 8
  %68 = getelementptr inbounds %struct.i40e_aqc_nvm_update, %struct.i40e_aqc_nvm_update* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 8
  br label %71

71:                                               ; preds = %63, %59
  br label %72

72:                                               ; preds = %71, %51
  br label %73

73:                                               ; preds = %72, %40
  %74 = load i64, i64* %10, align 8
  %75 = load %struct.i40e_aqc_nvm_update*, %struct.i40e_aqc_nvm_update** %18, align 8
  %76 = getelementptr inbounds %struct.i40e_aqc_nvm_update, %struct.i40e_aqc_nvm_update* %75, i32 0, i32 3
  store i64 %74, i64* %76, align 8
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @CPU_TO_LE32(i32 %77)
  %79 = load %struct.i40e_aqc_nvm_update*, %struct.i40e_aqc_nvm_update** %18, align 8
  %80 = getelementptr inbounds %struct.i40e_aqc_nvm_update, %struct.i40e_aqc_nvm_update* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* %12, align 4
  %82 = call i32 @CPU_TO_LE16(i32 %81)
  %83 = load %struct.i40e_aqc_nvm_update*, %struct.i40e_aqc_nvm_update** %18, align 8
  %84 = getelementptr inbounds %struct.i40e_aqc_nvm_update, %struct.i40e_aqc_nvm_update* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* @I40E_AQ_FLAG_BUF, align 4
  %86 = load i32, i32* @I40E_AQ_FLAG_RD, align 4
  %87 = or i32 %85, %86
  %88 = call i32 @CPU_TO_LE16(i32 %87)
  %89 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %17, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %88
  store i32 %91, i32* %89, align 4
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* @I40E_AQ_LARGE_BUF, align 4
  %94 = icmp sgt i32 %92, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %73
  %96 = load i64, i64* @I40E_AQ_FLAG_LB, align 8
  %97 = trunc i64 %96 to i32
  %98 = call i32 @CPU_TO_LE16(i32 %97)
  %99 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %17, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %98
  store i32 %101, i32* %99, align 4
  br label %102

102:                                              ; preds = %95, %73
  %103 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %104 = load i8*, i8** %13, align 8
  %105 = load i32, i32* %12, align 4
  %106 = load %struct.i40e_asq_cmd_details*, %struct.i40e_asq_cmd_details** %16, align 8
  %107 = call i32 @i40e_asq_send_command(%struct.i40e_hw* %103, %struct.i40e_aq_desc* %17, i8* %104, i32 %105, %struct.i40e_asq_cmd_details* %106)
  store i32 %107, i32* %19, align 4
  br label %108

108:                                              ; preds = %102, %27
  %109 = load i32, i32* %19, align 4
  ret i32 %109
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
