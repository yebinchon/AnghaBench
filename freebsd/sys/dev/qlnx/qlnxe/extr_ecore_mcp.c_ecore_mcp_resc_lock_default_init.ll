; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_resc_lock_default_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_resc_lock_default_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_resc_unlock_params = type { i32, i32, i32, i32, i32 }
%struct.ecore_resc_lock_params = type { i32, i32, i32, i32, i32 }

@OSAL_NULL = common dso_local global %struct.ecore_resc_unlock_params* null, align 8
@ECORE_MCP_RESC_LOCK_TO_NONE = common dso_local global i32 0, align 4
@ECORE_MCP_RESC_LOCK_RETRY_CNT_DFLT = common dso_local global i32 0, align 4
@ECORE_MCP_RESC_LOCK_RETRY_VAL_DFLT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ecore_mcp_resc_lock_default_init(%struct.ecore_resc_lock_params* %0, %struct.ecore_resc_unlock_params* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ecore_resc_lock_params*, align 8
  %6 = alloca %struct.ecore_resc_unlock_params*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ecore_resc_lock_params* %0, %struct.ecore_resc_lock_params** %5, align 8
  store %struct.ecore_resc_unlock_params* %1, %struct.ecore_resc_unlock_params** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.ecore_resc_lock_params*, %struct.ecore_resc_lock_params** %5, align 8
  %10 = load %struct.ecore_resc_unlock_params*, %struct.ecore_resc_unlock_params** @OSAL_NULL, align 8
  %11 = bitcast %struct.ecore_resc_unlock_params* %10 to %struct.ecore_resc_lock_params*
  %12 = icmp ne %struct.ecore_resc_lock_params* %9, %11
  br i1 %12, label %13, label %36

13:                                               ; preds = %4
  %14 = load %struct.ecore_resc_lock_params*, %struct.ecore_resc_lock_params** %5, align 8
  %15 = bitcast %struct.ecore_resc_lock_params* %14 to %struct.ecore_resc_unlock_params*
  %16 = call i32 @OSAL_MEM_ZERO(%struct.ecore_resc_unlock_params* %15, i32 20)
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load i32, i32* @ECORE_MCP_RESC_LOCK_TO_NONE, align 4
  %21 = load %struct.ecore_resc_lock_params*, %struct.ecore_resc_lock_params** %5, align 8
  %22 = getelementptr inbounds %struct.ecore_resc_lock_params, %struct.ecore_resc_lock_params* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 4
  br label %32

23:                                               ; preds = %13
  %24 = load i32, i32* @ECORE_MCP_RESC_LOCK_RETRY_CNT_DFLT, align 4
  %25 = load %struct.ecore_resc_lock_params*, %struct.ecore_resc_lock_params** %5, align 8
  %26 = getelementptr inbounds %struct.ecore_resc_lock_params, %struct.ecore_resc_lock_params* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @ECORE_MCP_RESC_LOCK_RETRY_VAL_DFLT, align 4
  %28 = load %struct.ecore_resc_lock_params*, %struct.ecore_resc_lock_params** %5, align 8
  %29 = getelementptr inbounds %struct.ecore_resc_lock_params, %struct.ecore_resc_lock_params* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load %struct.ecore_resc_lock_params*, %struct.ecore_resc_lock_params** %5, align 8
  %31 = getelementptr inbounds %struct.ecore_resc_lock_params, %struct.ecore_resc_lock_params* %30, i32 0, i32 0
  store i32 1, i32* %31, align 4
  br label %32

32:                                               ; preds = %23, %19
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.ecore_resc_lock_params*, %struct.ecore_resc_lock_params** %5, align 8
  %35 = getelementptr inbounds %struct.ecore_resc_lock_params, %struct.ecore_resc_lock_params* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  br label %36

36:                                               ; preds = %32, %4
  %37 = load %struct.ecore_resc_unlock_params*, %struct.ecore_resc_unlock_params** %6, align 8
  %38 = load %struct.ecore_resc_unlock_params*, %struct.ecore_resc_unlock_params** @OSAL_NULL, align 8
  %39 = icmp ne %struct.ecore_resc_unlock_params* %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = load %struct.ecore_resc_unlock_params*, %struct.ecore_resc_unlock_params** %6, align 8
  %42 = call i32 @OSAL_MEM_ZERO(%struct.ecore_resc_unlock_params* %41, i32 20)
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.ecore_resc_unlock_params*, %struct.ecore_resc_unlock_params** %6, align 8
  %45 = getelementptr inbounds %struct.ecore_resc_unlock_params, %struct.ecore_resc_unlock_params* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %40, %36
  ret void
}

declare dso_local i32 @OSAL_MEM_ZERO(%struct.ecore_resc_unlock_params*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
