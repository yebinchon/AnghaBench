; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_dbg_bus_enable_storm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_dbg_bus_enable_storm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.storm_defs = type { i64 }
%struct.ecore_hwfn = type { %struct.dbg_tools_data }
%struct.dbg_tools_data = type { i64*, %struct.dbg_bus_data }
%struct.dbg_bus_data = type { i64, i32, i32, %struct.dbg_bus_storm_data*, i64 }
%struct.dbg_bus_storm_data = type { i32, i32, i64 }

@ECORE_MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"dbg_bus_enable_storm: storm = %d, storm_mode = %d\0A\00", align 1
@DBG_BUS_STATE_READY = common dso_local global i64 0, align 8
@DBG_STATUS_DBG_BLOCK_NOT_RESET = common dso_local global i32 0, align 4
@DBG_STATUS_HW_ONLY_RECORDING = common dso_local global i32 0, align 4
@MAX_DBG_STORMS = common dso_local global i32 0, align 4
@DBG_STATUS_INVALID_ARGS = common dso_local global i32 0, align 4
@MAX_DBG_BUS_STORM_MODES = common dso_local global i32 0, align 4
@DBG_STATUS_STORM_ALREADY_ENABLED = common dso_local global i32 0, align 4
@s_storm_defs = common dso_local global %struct.storm_defs* null, align 8
@DBG_STATUS_BLOCK_IN_RESET = common dso_local global i32 0, align 4
@DBG_STATUS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_dbg_bus_enable_storm(%struct.ecore_hwfn* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dbg_tools_data*, align 8
  %9 = alloca %struct.dbg_bus_data*, align 8
  %10 = alloca %struct.dbg_bus_storm_data*, align 8
  %11 = alloca %struct.storm_defs*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %13 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %12, i32 0, i32 0
  store %struct.dbg_tools_data* %13, %struct.dbg_tools_data** %8, align 8
  %14 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %8, align 8
  %15 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %14, i32 0, i32 1
  store %struct.dbg_bus_data* %15, %struct.dbg_bus_data** %9, align 8
  %16 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %17 = load i32, i32* @ECORE_MSG_DEBUG, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %16, i32 %17, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19)
  %21 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %9, align 8
  %22 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @DBG_BUS_STATE_READY, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* @DBG_STATUS_DBG_BLOCK_NOT_RESET, align 4
  store i32 %27, i32* %4, align 4
  br label %105

28:                                               ; preds = %3
  %29 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %9, align 8
  %30 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp sge i32 %31, 4
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @DBG_STATUS_HW_ONLY_RECORDING, align 4
  store i32 %34, i32* %4, align 4
  br label %105

35:                                               ; preds = %28
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @MAX_DBG_STORMS, align 4
  %38 = icmp uge i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* @DBG_STATUS_INVALID_ARGS, align 4
  store i32 %40, i32* %4, align 4
  br label %105

41:                                               ; preds = %35
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @MAX_DBG_BUS_STORM_MODES, align 4
  %44 = icmp uge i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* @DBG_STATUS_INVALID_ARGS, align 4
  store i32 %46, i32* %4, align 4
  br label %105

47:                                               ; preds = %41
  %48 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %9, align 8
  %49 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* @DBG_STATUS_INVALID_ARGS, align 4
  store i32 %53, i32* %4, align 4
  br label %105

54:                                               ; preds = %47
  %55 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %9, align 8
  %56 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %55, i32 0, i32 3
  %57 = load %struct.dbg_bus_storm_data*, %struct.dbg_bus_storm_data** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.dbg_bus_storm_data, %struct.dbg_bus_storm_data* %57, i64 %59
  %61 = getelementptr inbounds %struct.dbg_bus_storm_data, %struct.dbg_bus_storm_data* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %54
  %65 = load i32, i32* @DBG_STATUS_STORM_ALREADY_ENABLED, align 4
  store i32 %65, i32* %4, align 4
  br label %105

66:                                               ; preds = %54
  %67 = load %struct.storm_defs*, %struct.storm_defs** @s_storm_defs, align 8
  %68 = load i32, i32* %6, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.storm_defs, %struct.storm_defs* %67, i64 %69
  store %struct.storm_defs* %70, %struct.storm_defs** %11, align 8
  %71 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %9, align 8
  %72 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %71, i32 0, i32 3
  %73 = load %struct.dbg_bus_storm_data*, %struct.dbg_bus_storm_data** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.dbg_bus_storm_data, %struct.dbg_bus_storm_data* %73, i64 %75
  store %struct.dbg_bus_storm_data* %76, %struct.dbg_bus_storm_data** %10, align 8
  %77 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %8, align 8
  %78 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %77, i32 0, i32 0
  %79 = load i64*, i64** %78, align 8
  %80 = load %struct.storm_defs*, %struct.storm_defs** %11, align 8
  %81 = getelementptr inbounds %struct.storm_defs, %struct.storm_defs* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds i64, i64* %79, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %66
  %87 = load i32, i32* @DBG_STATUS_BLOCK_IN_RESET, align 4
  store i32 %87, i32* %4, align 4
  br label %105

88:                                               ; preds = %66
  %89 = load %struct.dbg_bus_storm_data*, %struct.dbg_bus_storm_data** %10, align 8
  %90 = getelementptr inbounds %struct.dbg_bus_storm_data, %struct.dbg_bus_storm_data* %89, i32 0, i32 0
  store i32 1, i32* %90, align 8
  %91 = load i32, i32* %7, align 4
  %92 = zext i32 %91 to i64
  %93 = load %struct.dbg_bus_storm_data*, %struct.dbg_bus_storm_data** %10, align 8
  %94 = getelementptr inbounds %struct.dbg_bus_storm_data, %struct.dbg_bus_storm_data* %93, i32 0, i32 2
  store i64 %92, i64* %94, align 8
  %95 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %9, align 8
  %96 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.dbg_bus_storm_data*, %struct.dbg_bus_storm_data** %10, align 8
  %99 = getelementptr inbounds %struct.dbg_bus_storm_data, %struct.dbg_bus_storm_data* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  %100 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %9, align 8
  %101 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 4
  %104 = load i32, i32* @DBG_STATUS_OK, align 4
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %88, %86, %64, %52, %45, %39, %33, %26
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
