; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_update_tag.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_update_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }
%struct.i40e_asq_cmd_details = type { i32 }
%struct.i40e_aq_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_aqc_update_tag = type { i8*, i8*, i8* }
%struct.i40e_aqc_update_tag_completion = type { i32, i32 }

@I40E_ERR_PARAM = common dso_local global i32 0, align 4
@i40e_aqc_opc_update_tag = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_aq_update_tag(%struct.i40e_hw* %0, i64 %1, i64 %2, i64 %3, i64* %4, i64* %5, %struct.i40e_asq_cmd_details* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.i40e_hw*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca %struct.i40e_asq_cmd_details*, align 8
  %16 = alloca %struct.i40e_aq_desc, align 4
  %17 = alloca %struct.i40e_aqc_update_tag*, align 8
  %18 = alloca %struct.i40e_aqc_update_tag_completion*, align 8
  %19 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64* %4, i64** %13, align 8
  store i64* %5, i64** %14, align 8
  store %struct.i40e_asq_cmd_details* %6, %struct.i40e_asq_cmd_details** %15, align 8
  %20 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %16, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = bitcast i32* %21 to %struct.i40e_aqc_update_tag*
  store %struct.i40e_aqc_update_tag* %22, %struct.i40e_aqc_update_tag** %17, align 8
  %23 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %16, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = bitcast i32* %24 to %struct.i40e_aqc_update_tag_completion*
  store %struct.i40e_aqc_update_tag_completion* %25, %struct.i40e_aqc_update_tag_completion** %18, align 8
  %26 = load i64, i64* %10, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %7
  %29 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %29, i32* %8, align 4
  br label %71

30:                                               ; preds = %7
  %31 = load i32, i32* @i40e_aqc_opc_update_tag, align 4
  %32 = call i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc* %16, i32 %31)
  %33 = load i64, i64* %10, align 8
  %34 = call i8* @CPU_TO_LE16(i64 %33)
  %35 = load %struct.i40e_aqc_update_tag*, %struct.i40e_aqc_update_tag** %17, align 8
  %36 = getelementptr inbounds %struct.i40e_aqc_update_tag, %struct.i40e_aqc_update_tag* %35, i32 0, i32 2
  store i8* %34, i8** %36, align 8
  %37 = load i64, i64* %11, align 8
  %38 = call i8* @CPU_TO_LE16(i64 %37)
  %39 = load %struct.i40e_aqc_update_tag*, %struct.i40e_aqc_update_tag** %17, align 8
  %40 = getelementptr inbounds %struct.i40e_aqc_update_tag, %struct.i40e_aqc_update_tag* %39, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  %41 = load i64, i64* %12, align 8
  %42 = call i8* @CPU_TO_LE16(i64 %41)
  %43 = load %struct.i40e_aqc_update_tag*, %struct.i40e_aqc_update_tag** %17, align 8
  %44 = getelementptr inbounds %struct.i40e_aqc_update_tag, %struct.i40e_aqc_update_tag* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  %45 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %46 = load %struct.i40e_asq_cmd_details*, %struct.i40e_asq_cmd_details** %15, align 8
  %47 = call i32 @i40e_asq_send_command(%struct.i40e_hw* %45, %struct.i40e_aq_desc* %16, i32* null, i32 0, %struct.i40e_asq_cmd_details* %46)
  store i32 %47, i32* %19, align 4
  %48 = load i32, i32* %19, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %69, label %50

50:                                               ; preds = %30
  %51 = load i64*, i64** %13, align 8
  %52 = icmp ne i64* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load %struct.i40e_aqc_update_tag_completion*, %struct.i40e_aqc_update_tag_completion** %18, align 8
  %55 = getelementptr inbounds %struct.i40e_aqc_update_tag_completion, %struct.i40e_aqc_update_tag_completion* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @LE16_TO_CPU(i32 %56)
  %58 = load i64*, i64** %13, align 8
  store i64 %57, i64* %58, align 8
  br label %59

59:                                               ; preds = %53, %50
  %60 = load i64*, i64** %14, align 8
  %61 = icmp ne i64* %60, null
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = load %struct.i40e_aqc_update_tag_completion*, %struct.i40e_aqc_update_tag_completion** %18, align 8
  %64 = getelementptr inbounds %struct.i40e_aqc_update_tag_completion, %struct.i40e_aqc_update_tag_completion* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @LE16_TO_CPU(i32 %65)
  %67 = load i64*, i64** %14, align 8
  store i64 %66, i64* %67, align 8
  br label %68

68:                                               ; preds = %62, %59
  br label %69

69:                                               ; preds = %68, %30
  %70 = load i32, i32* %19, align 4
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %69, %28
  %72 = load i32, i32* %8, align 4
  ret i32 %72
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
