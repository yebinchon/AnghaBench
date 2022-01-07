; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c___ecore_configure_pf_max_bandwidth.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c___ecore_configure_pf_max_bandwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_5__, i32, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.ecore_ptt = type { i32 }
%struct.ecore_mcp_link_state = type { i32, i32 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@ECORE_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Configured MAX bandwidth to be %08x Mb/sec\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__ecore_configure_pf_max_bandwidth(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, %struct.ecore_mcp_link_state* %2, i32 %3) #0 {
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
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  store i32 %12, i32* %17, align 4
  %18 = load %struct.ecore_mcp_link_state*, %struct.ecore_mcp_link_state** %8, align 8
  %19 = getelementptr inbounds %struct.ecore_mcp_link_state, %struct.ecore_mcp_link_state* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 100
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %5, align 4
  br label %66

27:                                               ; preds = %22, %4
  %28 = load %struct.ecore_mcp_link_state*, %struct.ecore_mcp_link_state** %8, align 8
  %29 = getelementptr inbounds %struct.ecore_mcp_link_state, %struct.ecore_mcp_link_state* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %9, align 4
  %32 = mul nsw i32 %30, %31
  %33 = sdiv i32 %32, 100
  %34 = load %struct.ecore_mcp_link_state*, %struct.ecore_mcp_link_state** %8, align 8
  %35 = getelementptr inbounds %struct.ecore_mcp_link_state, %struct.ecore_mcp_link_state* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.ecore_mcp_link_state*, %struct.ecore_mcp_link_state** %8, align 8
  %37 = getelementptr inbounds %struct.ecore_mcp_link_state, %struct.ecore_mcp_link_state* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %40 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 8
  %42 = load i32, i32* %9, align 4
  %43 = icmp eq i32 %42, 100
  br i1 %43, label %44, label %48

44:                                               ; preds = %27
  %45 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %46 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  store i32 100000, i32* %47, align 8
  br label %48

48:                                               ; preds = %44, %27
  %49 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %50 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %51 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %52 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %55 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @ecore_init_pf_rl(%struct.ecore_hwfn* %49, %struct.ecore_ptt* %50, i32 %53, i32 %57)
  store i32 %58, i32* %10, align 4
  %59 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %60 = load i32, i32* @ECORE_MSG_LINK, align 4
  %61 = load %struct.ecore_mcp_link_state*, %struct.ecore_mcp_link_state** %8, align 8
  %62 = getelementptr inbounds %struct.ecore_mcp_link_state, %struct.ecore_mcp_link_state* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %59, i32 %60, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %48, %25
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32 @ecore_init_pf_rl(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
