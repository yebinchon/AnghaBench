; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_read_pf_bandwidth.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_read_pf_bandwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ecore_mcp_function_info }
%struct.ecore_mcp_function_info = type { i32, i32 }
%struct.public_func = type { i32 }

@FUNC_MF_CFG_MIN_BW_MASK = common dso_local global i32 0, align 4
@FUNC_MF_CFG_MIN_BW_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"bandwidth minimum out of bounds [%02x]. Set to 1\0A\00", align 1
@FUNC_MF_CFG_MAX_BW_MASK = common dso_local global i32 0, align 4
@FUNC_MF_CFG_MAX_BW_OFFSET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"bandwidth maximum out of bounds [%02x]. Set to 100\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, %struct.public_func*)* @ecore_read_pf_bandwidth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_read_pf_bandwidth(%struct.ecore_hwfn* %0, %struct.public_func* %1) #0 {
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca %struct.public_func*, align 8
  %5 = alloca %struct.ecore_mcp_function_info*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  store %struct.public_func* %1, %struct.public_func** %4, align 8
  %6 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %7 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.ecore_mcp_function_info* %9, %struct.ecore_mcp_function_info** %5, align 8
  %10 = load %struct.public_func*, %struct.public_func** %4, align 8
  %11 = getelementptr inbounds %struct.public_func, %struct.public_func* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @FUNC_MF_CFG_MIN_BW_MASK, align 4
  %14 = and i32 %12, %13
  %15 = load i32, i32* @FUNC_MF_CFG_MIN_BW_OFFSET, align 4
  %16 = ashr i32 %14, %15
  %17 = load %struct.ecore_mcp_function_info*, %struct.ecore_mcp_function_info** %5, align 8
  %18 = getelementptr inbounds %struct.ecore_mcp_function_info, %struct.ecore_mcp_function_info* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.ecore_mcp_function_info*, %struct.ecore_mcp_function_info** %5, align 8
  %20 = getelementptr inbounds %struct.ecore_mcp_function_info, %struct.ecore_mcp_function_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %21, 1
  br i1 %22, label %28, label %23

23:                                               ; preds = %2
  %24 = load %struct.ecore_mcp_function_info*, %struct.ecore_mcp_function_info** %5, align 8
  %25 = getelementptr inbounds %struct.ecore_mcp_function_info, %struct.ecore_mcp_function_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp sgt i32 %26, 100
  br i1 %27, label %28, label %36

28:                                               ; preds = %23, %2
  %29 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %30 = load %struct.ecore_mcp_function_info*, %struct.ecore_mcp_function_info** %5, align 8
  %31 = getelementptr inbounds %struct.ecore_mcp_function_info, %struct.ecore_mcp_function_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @DP_INFO(%struct.ecore_hwfn* %29, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load %struct.ecore_mcp_function_info*, %struct.ecore_mcp_function_info** %5, align 8
  %35 = getelementptr inbounds %struct.ecore_mcp_function_info, %struct.ecore_mcp_function_info* %34, i32 0, i32 0
  store i32 1, i32* %35, align 4
  br label %36

36:                                               ; preds = %28, %23
  %37 = load %struct.public_func*, %struct.public_func** %4, align 8
  %38 = getelementptr inbounds %struct.public_func, %struct.public_func* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @FUNC_MF_CFG_MAX_BW_MASK, align 4
  %41 = and i32 %39, %40
  %42 = load i32, i32* @FUNC_MF_CFG_MAX_BW_OFFSET, align 4
  %43 = ashr i32 %41, %42
  %44 = load %struct.ecore_mcp_function_info*, %struct.ecore_mcp_function_info** %5, align 8
  %45 = getelementptr inbounds %struct.ecore_mcp_function_info, %struct.ecore_mcp_function_info* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.ecore_mcp_function_info*, %struct.ecore_mcp_function_info** %5, align 8
  %47 = getelementptr inbounds %struct.ecore_mcp_function_info, %struct.ecore_mcp_function_info* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %48, 1
  br i1 %49, label %55, label %50

50:                                               ; preds = %36
  %51 = load %struct.ecore_mcp_function_info*, %struct.ecore_mcp_function_info** %5, align 8
  %52 = getelementptr inbounds %struct.ecore_mcp_function_info, %struct.ecore_mcp_function_info* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp sgt i32 %53, 100
  br i1 %54, label %55, label %63

55:                                               ; preds = %50, %36
  %56 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %57 = load %struct.ecore_mcp_function_info*, %struct.ecore_mcp_function_info** %5, align 8
  %58 = getelementptr inbounds %struct.ecore_mcp_function_info, %struct.ecore_mcp_function_info* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @DP_INFO(%struct.ecore_hwfn* %56, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = load %struct.ecore_mcp_function_info*, %struct.ecore_mcp_function_info** %5, align 8
  %62 = getelementptr inbounds %struct.ecore_mcp_function_info, %struct.ecore_mcp_function_info* %61, i32 0, i32 1
  store i32 100, i32* %62, align 4
  br label %63

63:                                               ; preds = %55, %50
  ret void
}

declare dso_local i32 @DP_INFO(%struct.ecore_hwfn*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
