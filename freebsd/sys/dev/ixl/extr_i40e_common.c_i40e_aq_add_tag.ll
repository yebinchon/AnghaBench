; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_add_tag.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_add_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }
%struct.i40e_asq_cmd_details = type { i32 }
%struct.i40e_aq_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_aqc_add_tag = type { i8*, i8*, i8*, i8* }
%struct.i40e_aqc_add_remove_tag_completion = type { i32, i32 }

@I40E_ERR_PARAM = common dso_local global i32 0, align 4
@i40e_aqc_opc_add_tag = common dso_local global i32 0, align 4
@I40E_AQC_ADD_TAG_FLAG_TO_QUEUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_aq_add_tag(%struct.i40e_hw* %0, i32 %1, i64 %2, i64 %3, i64 %4, i64* %5, i64* %6, %struct.i40e_asq_cmd_details* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.i40e_hw*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca %struct.i40e_asq_cmd_details*, align 8
  %18 = alloca %struct.i40e_aq_desc, align 4
  %19 = alloca %struct.i40e_aqc_add_tag*, align 8
  %20 = alloca %struct.i40e_aqc_add_remove_tag_completion*, align 8
  %21 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %10, align 8
  store i32 %1, i32* %11, align 4
  store i64 %2, i64* %12, align 8
  store i64 %3, i64* %13, align 8
  store i64 %4, i64* %14, align 8
  store i64* %5, i64** %15, align 8
  store i64* %6, i64** %16, align 8
  store %struct.i40e_asq_cmd_details* %7, %struct.i40e_asq_cmd_details** %17, align 8
  %22 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %18, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = bitcast i32* %23 to %struct.i40e_aqc_add_tag*
  store %struct.i40e_aqc_add_tag* %24, %struct.i40e_aqc_add_tag** %19, align 8
  %25 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %18, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = bitcast i32* %26 to %struct.i40e_aqc_add_remove_tag_completion*
  store %struct.i40e_aqc_add_remove_tag_completion* %27, %struct.i40e_aqc_add_remove_tag_completion** %20, align 8
  %28 = load i64, i64* %12, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %8
  %31 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %31, i32* %9, align 4
  br label %81

32:                                               ; preds = %8
  %33 = load i32, i32* @i40e_aqc_opc_add_tag, align 4
  %34 = call i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc* %18, i32 %33)
  %35 = load i64, i64* %12, align 8
  %36 = call i8* @CPU_TO_LE16(i64 %35)
  %37 = load %struct.i40e_aqc_add_tag*, %struct.i40e_aqc_add_tag** %19, align 8
  %38 = getelementptr inbounds %struct.i40e_aqc_add_tag, %struct.i40e_aqc_add_tag* %37, i32 0, i32 3
  store i8* %36, i8** %38, align 8
  %39 = load i64, i64* %13, align 8
  %40 = call i8* @CPU_TO_LE16(i64 %39)
  %41 = load %struct.i40e_aqc_add_tag*, %struct.i40e_aqc_add_tag** %19, align 8
  %42 = getelementptr inbounds %struct.i40e_aqc_add_tag, %struct.i40e_aqc_add_tag* %41, i32 0, i32 2
  store i8* %40, i8** %42, align 8
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %32
  %46 = load i64, i64* @I40E_AQC_ADD_TAG_FLAG_TO_QUEUE, align 8
  %47 = call i8* @CPU_TO_LE16(i64 %46)
  %48 = load %struct.i40e_aqc_add_tag*, %struct.i40e_aqc_add_tag** %19, align 8
  %49 = getelementptr inbounds %struct.i40e_aqc_add_tag, %struct.i40e_aqc_add_tag* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  %50 = load i64, i64* %14, align 8
  %51 = call i8* @CPU_TO_LE16(i64 %50)
  %52 = load %struct.i40e_aqc_add_tag*, %struct.i40e_aqc_add_tag** %19, align 8
  %53 = getelementptr inbounds %struct.i40e_aqc_add_tag, %struct.i40e_aqc_add_tag* %52, i32 0, i32 0
  store i8* %51, i8** %53, align 8
  br label %54

54:                                               ; preds = %45, %32
  %55 = load %struct.i40e_hw*, %struct.i40e_hw** %10, align 8
  %56 = load %struct.i40e_asq_cmd_details*, %struct.i40e_asq_cmd_details** %17, align 8
  %57 = call i32 @i40e_asq_send_command(%struct.i40e_hw* %55, %struct.i40e_aq_desc* %18, i32* null, i32 0, %struct.i40e_asq_cmd_details* %56)
  store i32 %57, i32* %21, align 4
  %58 = load i32, i32* %21, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %79, label %60

60:                                               ; preds = %54
  %61 = load i64*, i64** %15, align 8
  %62 = icmp ne i64* %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load %struct.i40e_aqc_add_remove_tag_completion*, %struct.i40e_aqc_add_remove_tag_completion** %20, align 8
  %65 = getelementptr inbounds %struct.i40e_aqc_add_remove_tag_completion, %struct.i40e_aqc_add_remove_tag_completion* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @LE16_TO_CPU(i32 %66)
  %68 = load i64*, i64** %15, align 8
  store i64 %67, i64* %68, align 8
  br label %69

69:                                               ; preds = %63, %60
  %70 = load i64*, i64** %16, align 8
  %71 = icmp ne i64* %70, null
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = load %struct.i40e_aqc_add_remove_tag_completion*, %struct.i40e_aqc_add_remove_tag_completion** %20, align 8
  %74 = getelementptr inbounds %struct.i40e_aqc_add_remove_tag_completion, %struct.i40e_aqc_add_remove_tag_completion* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @LE16_TO_CPU(i32 %75)
  %77 = load i64*, i64** %16, align 8
  store i64 %76, i64* %77, align 8
  br label %78

78:                                               ; preds = %72, %69
  br label %79

79:                                               ; preds = %78, %54
  %80 = load i32, i32* %21, align 4
  store i32 %80, i32* %9, align 4
  br label %81

81:                                               ; preds = %79, %30
  %82 = load i32, i32* %9, align 4
  ret i32 %82
}

declare dso_local i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc*, i32) #1

declare dso_local i8* @CPU_TO_LE16(i64) #1

declare dso_local i32 @i40e_asq_send_command(%struct.i40e_hw*, %struct.i40e_aq_desc*, i32*, i32, %struct.i40e_asq_cmd_details*) #1

declare dso_local i64 @LE16_TO_CPU(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
