; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c___ecore_configure_pf_min_bandwidth.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c___ecore_configure_pf_min_bandwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ecore_ptt = type { i32 }
%struct.ecore_mcp_link_state = type { i32, i32 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@ECORE_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Configured MIN bandwidth to be %d Mb/sec\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__ecore_configure_pf_min_bandwidth(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, %struct.ecore_mcp_link_state* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ecore_hwfn*, align 8
  %7 = alloca %struct.ecore_ptt*, align 8
  %8 = alloca %struct.ecore_mcp_link_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %6, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %7, align 8
  store %struct.ecore_mcp_link_state* %2, %struct.ecore_mcp_link_state** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %11, i32* %10, align 4
  %12 = load i32, i32* %9, align 4
  %13 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %14 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %13, i32 0, i32 2
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i32 %12, i32* %17, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %20 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 4
  %22 = load %struct.ecore_mcp_link_state*, %struct.ecore_mcp_link_state** %8, align 8
  %23 = getelementptr inbounds %struct.ecore_mcp_link_state, %struct.ecore_mcp_link_state* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %5, align 4
  br label %51

28:                                               ; preds = %4
  %29 = load %struct.ecore_mcp_link_state*, %struct.ecore_mcp_link_state** %8, align 8
  %30 = getelementptr inbounds %struct.ecore_mcp_link_state, %struct.ecore_mcp_link_state* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %9, align 4
  %33 = mul nsw i32 %31, %32
  %34 = sdiv i32 %33, 100
  %35 = load %struct.ecore_mcp_link_state*, %struct.ecore_mcp_link_state** %8, align 8
  %36 = getelementptr inbounds %struct.ecore_mcp_link_state, %struct.ecore_mcp_link_state* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %38 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %39 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %40 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @ecore_init_pf_wfq(%struct.ecore_hwfn* %37, %struct.ecore_ptt* %38, i32 %41, i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %45 = load i32, i32* @ECORE_MSG_LINK, align 4
  %46 = load %struct.ecore_mcp_link_state*, %struct.ecore_mcp_link_state** %8, align 8
  %47 = getelementptr inbounds %struct.ecore_mcp_link_state, %struct.ecore_mcp_link_state* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %44, i32 %45, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %28, %26
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @ecore_init_pf_wfq(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
