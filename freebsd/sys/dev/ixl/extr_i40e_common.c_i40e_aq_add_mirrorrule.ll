; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_add_mirrorrule.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_add_mirrorrule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }
%struct.i40e_asq_cmd_details = type { i32 }

@I40E_AQC_MIRROR_RULE_TYPE_ALL_INGRESS = common dso_local global i64 0, align 8
@I40E_AQC_MIRROR_RULE_TYPE_ALL_EGRESS = common dso_local global i64 0, align 8
@I40E_ERR_PARAM = common dso_local global i32 0, align 4
@i40e_aqc_opc_add_mirror_rule = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_aq_add_mirrorrule(%struct.i40e_hw* %0, i64 %1, i64 %2, i64 %3, i64 %4, i32* %5, %struct.i40e_asq_cmd_details* %6, i64* %7, i64* %8, i64* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.i40e_hw*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.i40e_asq_cmd_details*, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i64*, align 8
  store %struct.i40e_hw* %0, %struct.i40e_hw** %12, align 8
  store i64 %1, i64* %13, align 8
  store i64 %2, i64* %14, align 8
  store i64 %3, i64* %15, align 8
  store i64 %4, i64* %16, align 8
  store i32* %5, i32** %17, align 8
  store %struct.i40e_asq_cmd_details* %6, %struct.i40e_asq_cmd_details** %18, align 8
  store i64* %7, i64** %19, align 8
  store i64* %8, i64** %20, align 8
  store i64* %9, i64** %21, align 8
  %22 = load i64, i64* %14, align 8
  %23 = load i64, i64* @I40E_AQC_MIRROR_RULE_TYPE_ALL_INGRESS, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %38, label %25

25:                                               ; preds = %10
  %26 = load i64, i64* %14, align 8
  %27 = load i64, i64* @I40E_AQC_MIRROR_RULE_TYPE_ALL_EGRESS, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %38, label %29

29:                                               ; preds = %25
  %30 = load i64, i64* %16, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i32*, i32** %17, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %32, %29
  %36 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %36, i32* %11, align 4
  br label %51

37:                                               ; preds = %32
  br label %38

38:                                               ; preds = %37, %25, %10
  %39 = load %struct.i40e_hw*, %struct.i40e_hw** %12, align 8
  %40 = load i32, i32* @i40e_aqc_opc_add_mirror_rule, align 4
  %41 = load i64, i64* %13, align 8
  %42 = load i64, i64* %14, align 8
  %43 = load i64, i64* %15, align 8
  %44 = load i64, i64* %16, align 8
  %45 = load i32*, i32** %17, align 8
  %46 = load %struct.i40e_asq_cmd_details*, %struct.i40e_asq_cmd_details** %18, align 8
  %47 = load i64*, i64** %19, align 8
  %48 = load i64*, i64** %20, align 8
  %49 = load i64*, i64** %21, align 8
  %50 = call i32 @i40e_mirrorrule_op(%struct.i40e_hw* %39, i32 %40, i64 %41, i64 %42, i64 %43, i64 %44, i32* %45, %struct.i40e_asq_cmd_details* %46, i64* %47, i64* %48, i64* %49)
  store i32 %50, i32* %11, align 4
  br label %51

51:                                               ; preds = %38, %35
  %52 = load i32, i32* %11, align 4
  ret i32 %52
}

declare dso_local i32 @i40e_mirrorrule_op(%struct.i40e_hw*, i32, i64, i64, i64, i64, i32*, %struct.i40e_asq_cmd_details*, i64*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
