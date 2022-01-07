; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c___ecore_hw_set_soft_resc_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c___ecore_hw_set_soft_resc_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"MFW response failure for a max value setting of resource %d [%s]\0A\00", align 1
@FW_MSG_CODE_RESOURCE_ALLOC_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [69 x i8] c"Failed to set the max value of resource %d [%s]. mcp_resp = 0x%08x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i64, i64*)* @__ecore_hw_set_soft_resc_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ecore_hw_set_soft_resc_size(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32 %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ecore_hwfn*, align 8
  %8 = alloca %struct.ecore_ptt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %7, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  %13 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %14 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %15 = load i32, i32* %9, align 4
  %16 = load i64, i64* %10, align 8
  %17 = load i64*, i64** %11, align 8
  %18 = call i32 @ecore_mcp_set_resc_max_val(%struct.ecore_hwfn* %13, %struct.ecore_ptt* %14, i32 %15, i64 %16, i64* %17)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = load i32, i32* @ECORE_SUCCESS, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %5
  %23 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @ecore_hw_get_resc_name(i32 %25)
  %27 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %23, i32 0, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %26)
  %28 = load i32, i32* %12, align 4
  store i32 %28, i32* %6, align 4
  br label %44

29:                                               ; preds = %5
  %30 = load i64*, i64** %11, align 8
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @FW_MSG_CODE_RESOURCE_ALLOC_OK, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @ecore_hw_get_resc_name(i32 %37)
  %39 = load i64*, i64** %11, align 8
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @DP_INFO(%struct.ecore_hwfn* %35, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %38, i64 %40)
  br label %42

42:                                               ; preds = %34, %29
  %43 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %42, %22
  %45 = load i32, i32* %6, align 4
  ret i32 %45
}

declare dso_local i32 @ecore_mcp_set_resc_max_val(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i64, i64*) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, i32, i32) #1

declare dso_local i32 @ecore_hw_get_resc_name(i32) #1

declare dso_local i32 @DP_INFO(%struct.ecore_hwfn*, i8*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
