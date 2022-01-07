; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c___ecore_configure_vport_wfq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c___ecore_configure_vport_wfq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_10__, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.ecore_mcp_link_state }
%struct.ecore_mcp_link_state = type { i32 }
%struct.ecore_ptt = type { i32 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Validation failed while configuring min rate\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_ptt*, i64, i32)* @__ecore_configure_vport_wfq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ecore_configure_vport_wfq(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ecore_hwfn*, align 8
  %7 = alloca %struct.ecore_ptt*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ecore_mcp_link_state*, align 8
  %11 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %6, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %12, i32* %11, align 4
  %13 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %14 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %13, i32 0, i32 1
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i64 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  store %struct.ecore_mcp_link_state* %21, %struct.ecore_mcp_link_state** %10, align 8
  %22 = load %struct.ecore_mcp_link_state*, %struct.ecore_mcp_link_state** %10, align 8
  %23 = getelementptr inbounds %struct.ecore_mcp_link_state, %struct.ecore_mcp_link_state* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %43, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %29 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = load i64, i64* %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  store i32 %27, i32* %34, align 4
  %35 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %36 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = load i64, i64* %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  store i32 1, i32* %41, align 4
  %42 = load i32, i32* %11, align 4
  store i32 %42, i32* %5, align 4
  br label %66

43:                                               ; preds = %4
  %44 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.ecore_mcp_link_state*, %struct.ecore_mcp_link_state** %10, align 8
  %48 = getelementptr inbounds %struct.ecore_mcp_link_state, %struct.ecore_mcp_link_state* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ecore_init_wfq_param(%struct.ecore_hwfn* %44, i64 %45, i32 %46, i32 %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @ECORE_SUCCESS, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %43
  %55 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %56 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %57 = load %struct.ecore_mcp_link_state*, %struct.ecore_mcp_link_state** %10, align 8
  %58 = getelementptr inbounds %struct.ecore_mcp_link_state, %struct.ecore_mcp_link_state* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ecore_configure_wfq_for_all_vports(%struct.ecore_hwfn* %55, %struct.ecore_ptt* %56, i32 %59)
  br label %64

61:                                               ; preds = %43
  %62 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %63 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %62, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %64

64:                                               ; preds = %61, %54
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %64, %26
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32 @ecore_init_wfq_param(%struct.ecore_hwfn*, i64, i32, i32) #1

declare dso_local i32 @ecore_configure_wfq_for_all_vports(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
