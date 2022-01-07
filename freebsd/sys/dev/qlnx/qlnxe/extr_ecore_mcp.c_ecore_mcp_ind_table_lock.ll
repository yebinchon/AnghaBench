; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_ind_table_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_ind_table_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }
%struct.ecore_resc_lock_params = type { i32, i64, i64, i32 }

@ECORE_RESC_LOCK_IND_TABLE = common dso_local global i32 0, align 4
@ECORE_MCP_RESC_LOCK_RETRY_CNT_DFLT = common dso_local global i64 0, align 8
@ECORE_MCP_RESC_LOCK_RETRY_VAL_DFLT = common dso_local global i64 0, align 8
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Failed to acquire the resource lock for IDT access\0A\00", align 1
@ECORE_BUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_mcp_ind_table_lock(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ecore_hwfn*, align 8
  %7 = alloca %struct.ecore_ptt*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ecore_resc_lock_params, align 8
  %11 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %6, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = call i32 @OSAL_MEM_ZERO(%struct.ecore_resc_lock_params* %10, i32 32)
  %13 = load i32, i32* @ECORE_RESC_LOCK_IND_TABLE, align 4
  %14 = getelementptr inbounds %struct.ecore_resc_lock_params, %struct.ecore_resc_lock_params* %10, i32 0, i32 3
  store i32 %13, i32* %14, align 8
  %15 = load i64, i64* %8, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %4
  %18 = load i64, i64* @ECORE_MCP_RESC_LOCK_RETRY_CNT_DFLT, align 8
  store i64 %18, i64* %8, align 8
  br label %19

19:                                               ; preds = %17, %4
  %20 = load i64, i64* %8, align 8
  %21 = getelementptr inbounds %struct.ecore_resc_lock_params, %struct.ecore_resc_lock_params* %10, i32 0, i32 2
  store i64 %20, i64* %21, align 8
  %22 = load i64, i64* %9, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = load i64, i64* @ECORE_MCP_RESC_LOCK_RETRY_VAL_DFLT, align 8
  store i64 %25, i64* %9, align 8
  br label %26

26:                                               ; preds = %24, %19
  %27 = load i64, i64* %9, align 8
  %28 = getelementptr inbounds %struct.ecore_resc_lock_params, %struct.ecore_resc_lock_params* %10, i32 0, i32 1
  store i64 %27, i64* %28, align 8
  %29 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %30 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %31 = call i32 @ecore_mcp_resc_lock(%struct.ecore_hwfn* %29, %struct.ecore_ptt* %30, %struct.ecore_resc_lock_params* %10)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* @ECORE_SUCCESS, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.ecore_resc_lock_params, %struct.ecore_resc_lock_params* %10, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %41 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %40, i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @ECORE_BUSY, align 4
  store i32 %42, i32* %5, align 4
  br label %45

43:                                               ; preds = %35, %26
  %44 = load i32, i32* %11, align 4
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %43, %39
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @OSAL_MEM_ZERO(%struct.ecore_resc_lock_params*, i32) #1

declare dso_local i32 @ecore_mcp_resc_lock(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_resc_lock_params*) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
