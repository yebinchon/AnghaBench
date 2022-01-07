; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_add_statistics.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_add_statistics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }
%struct.i40e_asq_cmd_details = type { i32 }
%struct.i40e_aq_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_aqc_add_remove_statistics = type { i32, i8*, i8* }

@I40E_ERR_PARAM = common dso_local global i32 0, align 4
@i40e_aqc_opc_add_statistics = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_aq_add_statistics(%struct.i40e_hw* %0, i64 %1, i64 %2, i64* %3, %struct.i40e_asq_cmd_details* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.i40e_hw*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.i40e_asq_cmd_details*, align 8
  %12 = alloca %struct.i40e_aq_desc, align 4
  %13 = alloca %struct.i40e_aqc_add_remove_statistics*, align 8
  %14 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store %struct.i40e_asq_cmd_details* %4, %struct.i40e_asq_cmd_details** %11, align 8
  %15 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %12, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = bitcast i32* %16 to %struct.i40e_aqc_add_remove_statistics*
  store %struct.i40e_aqc_add_remove_statistics* %17, %struct.i40e_aqc_add_remove_statistics** %13, align 8
  %18 = load i64, i64* %8, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %5
  %21 = load i64*, i64** %10, align 8
  %22 = icmp eq i64* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %20, %5
  %24 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %24, i32* %6, align 4
  br label %52

25:                                               ; preds = %20
  %26 = load i32, i32* @i40e_aqc_opc_add_statistics, align 4
  %27 = call i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc* %12, i32 %26)
  %28 = load i64, i64* %8, align 8
  %29 = call i8* @CPU_TO_LE16(i64 %28)
  %30 = load %struct.i40e_aqc_add_remove_statistics*, %struct.i40e_aqc_add_remove_statistics** %13, align 8
  %31 = getelementptr inbounds %struct.i40e_aqc_add_remove_statistics, %struct.i40e_aqc_add_remove_statistics* %30, i32 0, i32 2
  store i8* %29, i8** %31, align 8
  %32 = load i64, i64* %9, align 8
  %33 = call i8* @CPU_TO_LE16(i64 %32)
  %34 = load %struct.i40e_aqc_add_remove_statistics*, %struct.i40e_aqc_add_remove_statistics** %13, align 8
  %35 = getelementptr inbounds %struct.i40e_aqc_add_remove_statistics, %struct.i40e_aqc_add_remove_statistics* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  %36 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %37 = load %struct.i40e_asq_cmd_details*, %struct.i40e_asq_cmd_details** %11, align 8
  %38 = call i32 @i40e_asq_send_command(%struct.i40e_hw* %36, %struct.i40e_aq_desc* %12, i32* null, i32 0, %struct.i40e_asq_cmd_details* %37)
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %14, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %25
  %42 = load i64*, i64** %10, align 8
  %43 = icmp ne i64* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load %struct.i40e_aqc_add_remove_statistics*, %struct.i40e_aqc_add_remove_statistics** %13, align 8
  %46 = getelementptr inbounds %struct.i40e_aqc_add_remove_statistics, %struct.i40e_aqc_add_remove_statistics* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @LE16_TO_CPU(i32 %47)
  %49 = load i64*, i64** %10, align 8
  store i64 %48, i64* %49, align 8
  br label %50

50:                                               ; preds = %44, %41, %25
  %51 = load i32, i32* %14, align 4
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %50, %23
  %53 = load i32, i32* %6, align 4
  ret i32 %53
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
