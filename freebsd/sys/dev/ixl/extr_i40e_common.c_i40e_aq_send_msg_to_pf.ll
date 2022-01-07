; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_send_msg_to_pf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_send_msg_to_pf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }
%struct.i40e_asq_cmd_details = type { i32 }
%struct.i40e_aq_desc = type { i32, i32, i8*, i8* }

@i40e_aqc_opc_send_msg_to_pf = common dso_local global i32 0, align 4
@I40E_AQ_FLAG_SI = common dso_local global i64 0, align 8
@I40E_AQ_FLAG_BUF = common dso_local global i32 0, align 4
@I40E_AQ_FLAG_RD = common dso_local global i32 0, align 4
@I40E_AQ_LARGE_BUF = common dso_local global i32 0, align 4
@I40E_AQ_FLAG_LB = common dso_local global i64 0, align 8
@I40E_NONDMA_MEM = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_aq_send_msg_to_pf(%struct.i40e_hw* %0, i32 %1, i32 %2, i32* %3, i32 %4, %struct.i40e_asq_cmd_details* %5) #0 {
  %7 = alloca %struct.i40e_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.i40e_asq_cmd_details*, align 8
  %13 = alloca %struct.i40e_aq_desc, align 8
  %14 = alloca %struct.i40e_asq_cmd_details, align 4
  %15 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.i40e_asq_cmd_details* %5, %struct.i40e_asq_cmd_details** %12, align 8
  %16 = load i32, i32* @i40e_aqc_opc_send_msg_to_pf, align 4
  %17 = call i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc* %13, i32 %16)
  %18 = load i64, i64* @I40E_AQ_FLAG_SI, align 8
  %19 = trunc i64 %18 to i32
  %20 = call i32 @CPU_TO_LE16(i32 %19)
  %21 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %13, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %20
  store i32 %23, i32* %21, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i8* @CPU_TO_LE32(i32 %24)
  %26 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %13, i32 0, i32 3
  store i8* %25, i8** %26, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i8* @CPU_TO_LE32(i32 %27)
  %29 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %13, i32 0, i32 2
  store i8* %28, i8** %29, align 8
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %54

32:                                               ; preds = %6
  %33 = load i32, i32* @I40E_AQ_FLAG_BUF, align 4
  %34 = load i32, i32* @I40E_AQ_FLAG_RD, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @CPU_TO_LE16(i32 %35)
  %37 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %13, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %36
  store i32 %39, i32* %37, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @I40E_AQ_LARGE_BUF, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %32
  %44 = load i64, i64* @I40E_AQ_FLAG_LB, align 8
  %45 = trunc i64 %44 to i32
  %46 = call i32 @CPU_TO_LE16(i32 %45)
  %47 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %13, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %46
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %43, %32
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @CPU_TO_LE16(i32 %51)
  %53 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %13, i32 0, i32 0
  store i32 %52, i32* %53, align 8
  br label %54

54:                                               ; preds = %50, %6
  %55 = load %struct.i40e_asq_cmd_details*, %struct.i40e_asq_cmd_details** %12, align 8
  %56 = icmp ne %struct.i40e_asq_cmd_details* %55, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* @I40E_NONDMA_MEM, align 4
  %59 = call i32 @i40e_memset(%struct.i40e_asq_cmd_details* %14, i32 0, i32 4, i32 %58)
  %60 = load i32, i32* @TRUE, align 4
  %61 = getelementptr inbounds %struct.i40e_asq_cmd_details, %struct.i40e_asq_cmd_details* %14, i32 0, i32 0
  store i32 %60, i32* %61, align 4
  store %struct.i40e_asq_cmd_details* %14, %struct.i40e_asq_cmd_details** %12, align 8
  br label %62

62:                                               ; preds = %57, %54
  %63 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %64 = load i32*, i32** %10, align 8
  %65 = load i32, i32* %11, align 4
  %66 = load %struct.i40e_asq_cmd_details*, %struct.i40e_asq_cmd_details** %12, align 8
  %67 = call i32 @i40e_asq_send_command(%struct.i40e_hw* %63, %struct.i40e_aq_desc* %13, i32* %64, i32 %65, %struct.i40e_asq_cmd_details* %66)
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* %15, align 4
  ret i32 %68
}

declare dso_local i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc*, i32) #1

declare dso_local i32 @CPU_TO_LE16(i32) #1

declare dso_local i8* @CPU_TO_LE32(i32) #1

declare dso_local i32 @i40e_memset(%struct.i40e_asq_cmd_details*, i32, i32, i32) #1

declare dso_local i32 @i40e_asq_send_command(%struct.i40e_hw*, %struct.i40e_aq_desc*, i32*, i32, %struct.i40e_asq_cmd_details*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
