; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_cmd_add_elem.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_cmd_add_elem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_mcp_cmd_elem = type { i32, i32, %struct.ecore_mcp_mb_params* }
%struct.ecore_mcp_mb_params = type { i32 }
%struct.ecore_hwfn = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@OSAL_NULL = common dso_local global %struct.ecore_mcp_cmd_elem* null, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Failed to allocate `struct ecore_mcp_cmd_elem'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ecore_mcp_cmd_elem* (%struct.ecore_hwfn*, %struct.ecore_mcp_mb_params*, i32)* @ecore_mcp_cmd_add_elem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ecore_mcp_cmd_elem* @ecore_mcp_cmd_add_elem(%struct.ecore_hwfn* %0, %struct.ecore_mcp_mb_params* %1, i32 %2) #0 {
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_mcp_mb_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ecore_mcp_cmd_elem*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_mcp_mb_params* %1, %struct.ecore_mcp_mb_params** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ecore_mcp_cmd_elem*, %struct.ecore_mcp_cmd_elem** @OSAL_NULL, align 8
  store %struct.ecore_mcp_cmd_elem* %8, %struct.ecore_mcp_cmd_elem** %7, align 8
  %9 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %10 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @GFP_ATOMIC, align 4
  %13 = call %struct.ecore_mcp_cmd_elem* @OSAL_ZALLOC(i32 %11, i32 %12, i32 16)
  store %struct.ecore_mcp_cmd_elem* %13, %struct.ecore_mcp_cmd_elem** %7, align 8
  %14 = load %struct.ecore_mcp_cmd_elem*, %struct.ecore_mcp_cmd_elem** %7, align 8
  %15 = icmp ne %struct.ecore_mcp_cmd_elem* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %18 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %17, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %33

19:                                               ; preds = %3
  %20 = load %struct.ecore_mcp_mb_params*, %struct.ecore_mcp_mb_params** %5, align 8
  %21 = load %struct.ecore_mcp_cmd_elem*, %struct.ecore_mcp_cmd_elem** %7, align 8
  %22 = getelementptr inbounds %struct.ecore_mcp_cmd_elem, %struct.ecore_mcp_cmd_elem* %21, i32 0, i32 2
  store %struct.ecore_mcp_mb_params* %20, %struct.ecore_mcp_mb_params** %22, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.ecore_mcp_cmd_elem*, %struct.ecore_mcp_cmd_elem** %7, align 8
  %25 = getelementptr inbounds %struct.ecore_mcp_cmd_elem, %struct.ecore_mcp_cmd_elem* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.ecore_mcp_cmd_elem*, %struct.ecore_mcp_cmd_elem** %7, align 8
  %27 = getelementptr inbounds %struct.ecore_mcp_cmd_elem, %struct.ecore_mcp_cmd_elem* %26, i32 0, i32 0
  %28 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %29 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call i32 @OSAL_LIST_PUSH_HEAD(i32* %27, i32* %31)
  br label %33

33:                                               ; preds = %19, %16
  %34 = load %struct.ecore_mcp_cmd_elem*, %struct.ecore_mcp_cmd_elem** %7, align 8
  ret %struct.ecore_mcp_cmd_elem* %34
}

declare dso_local %struct.ecore_mcp_cmd_elem* @OSAL_ZALLOC(i32, i32, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*) #1

declare dso_local i32 @OSAL_LIST_PUSH_HEAD(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
