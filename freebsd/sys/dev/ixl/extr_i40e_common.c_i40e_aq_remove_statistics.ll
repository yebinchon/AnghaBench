; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_remove_statistics.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_remove_statistics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }
%struct.i40e_asq_cmd_details = type { i32 }
%struct.i40e_aq_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_aqc_add_remove_statistics = type { i8*, i8*, i8* }

@I40E_ERR_PARAM = common dso_local global i32 0, align 4
@i40e_aqc_opc_remove_statistics = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_aq_remove_statistics(%struct.i40e_hw* %0, i64 %1, i64 %2, i64 %3, %struct.i40e_asq_cmd_details* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.i40e_hw*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.i40e_asq_cmd_details*, align 8
  %12 = alloca %struct.i40e_aq_desc, align 4
  %13 = alloca %struct.i40e_aqc_add_remove_statistics*, align 8
  %14 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.i40e_asq_cmd_details* %4, %struct.i40e_asq_cmd_details** %11, align 8
  %15 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %12, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = bitcast i32* %16 to %struct.i40e_aqc_add_remove_statistics*
  store %struct.i40e_aqc_add_remove_statistics* %17, %struct.i40e_aqc_add_remove_statistics** %13, align 8
  %18 = load i64, i64* %8, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %21, i32* %6, align 4
  br label %41

22:                                               ; preds = %5
  %23 = load i32, i32* @i40e_aqc_opc_remove_statistics, align 4
  %24 = call i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc* %12, i32 %23)
  %25 = load i64, i64* %8, align 8
  %26 = call i8* @CPU_TO_LE16(i64 %25)
  %27 = load %struct.i40e_aqc_add_remove_statistics*, %struct.i40e_aqc_add_remove_statistics** %13, align 8
  %28 = getelementptr inbounds %struct.i40e_aqc_add_remove_statistics, %struct.i40e_aqc_add_remove_statistics* %27, i32 0, i32 2
  store i8* %26, i8** %28, align 8
  %29 = load i64, i64* %9, align 8
  %30 = call i8* @CPU_TO_LE16(i64 %29)
  %31 = load %struct.i40e_aqc_add_remove_statistics*, %struct.i40e_aqc_add_remove_statistics** %13, align 8
  %32 = getelementptr inbounds %struct.i40e_aqc_add_remove_statistics, %struct.i40e_aqc_add_remove_statistics* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  %33 = load i64, i64* %10, align 8
  %34 = call i8* @CPU_TO_LE16(i64 %33)
  %35 = load %struct.i40e_aqc_add_remove_statistics*, %struct.i40e_aqc_add_remove_statistics** %13, align 8
  %36 = getelementptr inbounds %struct.i40e_aqc_add_remove_statistics, %struct.i40e_aqc_add_remove_statistics* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  %37 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %38 = load %struct.i40e_asq_cmd_details*, %struct.i40e_asq_cmd_details** %11, align 8
  %39 = call i32 @i40e_asq_send_command(%struct.i40e_hw* %37, %struct.i40e_aq_desc* %12, i32* null, i32 0, %struct.i40e_asq_cmd_details* %38)
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %14, align 4
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %22, %20
  %42 = load i32, i32* %6, align 4
  ret i32 %42
}

declare dso_local i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc*, i32) #1

declare dso_local i8* @CPU_TO_LE16(i64) #1

declare dso_local i32 @i40e_asq_send_command(%struct.i40e_hw*, %struct.i40e_aq_desc*, i32*, i32, %struct.i40e_asq_cmd_details*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
