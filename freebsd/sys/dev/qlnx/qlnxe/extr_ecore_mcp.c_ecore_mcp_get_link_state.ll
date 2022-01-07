; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_get_link_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_get_link_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_mcp_link_state = type { i32 }
%struct.ecore_hwfn = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.ecore_mcp_link_state }

@OSAL_NULL = common dso_local global %struct.ecore_mcp_link_state* null, align 8
@.str = private unnamed_addr constant [42 x i8] c"Non-ASIC - always notify that link is up\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ecore_mcp_link_state* @ecore_mcp_get_link_state(%struct.ecore_hwfn* %0) #0 {
  %2 = alloca %struct.ecore_mcp_link_state*, align 8
  %3 = alloca %struct.ecore_hwfn*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  %4 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %5 = icmp ne %struct.ecore_hwfn* %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %8 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %6, %1
  %12 = load %struct.ecore_mcp_link_state*, %struct.ecore_mcp_link_state** @OSAL_NULL, align 8
  store %struct.ecore_mcp_link_state* %12, %struct.ecore_mcp_link_state** %2, align 8
  br label %32

13:                                               ; preds = %6
  %14 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %15 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @CHIP_REV_IS_SLOW(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %13
  %20 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %21 = call i32 @DP_INFO(%struct.ecore_hwfn* %20, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %23 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.ecore_mcp_link_state, %struct.ecore_mcp_link_state* %25, i32 0, i32 0
  store i32 1, i32* %26, align 4
  br label %27

27:                                               ; preds = %19, %13
  %28 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %29 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store %struct.ecore_mcp_link_state* %31, %struct.ecore_mcp_link_state** %2, align 8
  br label %32

32:                                               ; preds = %27, %11
  %33 = load %struct.ecore_mcp_link_state*, %struct.ecore_mcp_link_state** %2, align 8
  ret %struct.ecore_mcp_link_state* %33
}

declare dso_local i64 @CHIP_REV_IS_SLOW(i32) #1

declare dso_local i32 @DP_INFO(%struct.ecore_hwfn*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
