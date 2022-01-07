; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_handle_critical_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_handle_critical_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.ecore_ptt = type { i32 }
%struct.ecore_mdump_retain_data = type { i32, i32, i32, i64 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [102 x i8] c"The MFW notified that a critical error occurred in the device [epoch 0x%08x, pf 0x%x, status 0x%08x]\0A\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"The MFW notified that a critical error occurred in the device\0A\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"Not acknowledging the notification to allow the MFW crash dump\0A\00", align 1
@.str.3 = private unnamed_addr constant [109 x i8] c"Acknowledging the notification to not allow the MFW crash dump [driver debug data collection is preferable]\0A\00", align 1
@ECORE_HW_ERR_HW_ATTN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, %struct.ecore_ptt*)* @ecore_mcp_handle_critical_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_mcp_handle_critical_error(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1) #0 {
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca %struct.ecore_ptt*, align 8
  %5 = alloca %struct.ecore_mdump_retain_data, align 8
  %6 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %4, align 8
  %7 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %8 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %9 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = call %struct.ecore_hwfn* @ECORE_LEADING_HWFN(%struct.TYPE_2__* %10)
  %12 = icmp ne %struct.ecore_hwfn* %7, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %56

14:                                               ; preds = %2
  %15 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %16 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %17 = call i32 @ecore_mcp_mdump_get_retain(%struct.ecore_hwfn* %15, %struct.ecore_ptt* %16, %struct.ecore_mdump_retain_data* %5)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @ECORE_SUCCESS, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.ecore_mdump_retain_data, %struct.ecore_mdump_retain_data* %5, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %21
  %26 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %27 = getelementptr inbounds %struct.ecore_mdump_retain_data, %struct.ecore_mdump_retain_data* %5, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = getelementptr inbounds %struct.ecore_mdump_retain_data, %struct.ecore_mdump_retain_data* %5, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.ecore_mdump_retain_data, %struct.ecore_mdump_retain_data* %5, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_NOTICE(%struct.ecore_hwfn* %26, i32 0, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %30, i32 %32)
  br label %37

34:                                               ; preds = %21, %14
  %35 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %36 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_NOTICE(%struct.ecore_hwfn* %35, i32 0, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %25
  %38 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %39 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %46 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_NOTICE(%struct.ecore_hwfn* %45, i32 0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0))
  br label %56

47:                                               ; preds = %37
  %48 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %49 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_NOTICE(%struct.ecore_hwfn* %48, i32 0, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.3, i64 0, i64 0))
  %50 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %51 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %52 = call i32 @ecore_mcp_mdump_ack(%struct.ecore_hwfn* %50, %struct.ecore_ptt* %51)
  %53 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %54 = load i32, i32* @ECORE_HW_ERR_HW_ATTN, align 4
  %55 = call i32 @ecore_hw_err_notify(%struct.ecore_hwfn* %53, i32 %54)
  br label %56

56:                                               ; preds = %47, %44, %13
  ret void
}

declare dso_local %struct.ecore_hwfn* @ECORE_LEADING_HWFN(%struct.TYPE_2__*) #1

declare dso_local i32 @ecore_mcp_mdump_get_retain(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_mdump_retain_data*) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, ...) #1

declare dso_local i32 @ecore_mcp_mdump_ack(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

declare dso_local i32 @ecore_hw_err_notify(%struct.ecore_hwfn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
