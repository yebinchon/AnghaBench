; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_dbg_bus_enable_trigger.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_dbg_bus_enable_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.dbg_tools_data }
%struct.dbg_tools_data = type { %struct.dbg_bus_data }
%struct.dbg_bus_data = type { i64, i32, i32, i32 }
%struct.ecore_ptt = type { i32 }

@ECORE_MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [155 x i8] c"dbg_bus_enable_trigger: rec_pre_trigger = %d, pre_chunks = %d, rec_post_trigger = %d, post_cycles = %d, filter_pre_trigger = %d, filter_post_trigger = %d\0A\00", align 1
@DBG_BUS_STATE_READY = common dso_local global i64 0, align 8
@DBG_STATUS_DBG_BLOCK_NOT_RESET = common dso_local global i32 0, align 4
@DBG_STATUS_TRIGGER_ALREADY_ENABLED = common dso_local global i32 0, align 4
@INT_BUF_SIZE_IN_CHUNKS = common dso_local global i64 0, align 8
@DBG_STATUS_INVALID_ARGS = common dso_local global i32 0, align 4
@DBG_BUS_PRE_TRIGGER_NUM_CHUNKS = common dso_local global i32 0, align 4
@DBG_BUS_PRE_TRIGGER_START_FROM_ZERO = common dso_local global i32 0, align 4
@DBG_REG_RCRD_ON_WINDOW_PRE_NUM_CHUNKS = common dso_local global i32 0, align 4
@DBG_BUS_PRE_TRIGGER_DROP = common dso_local global i32 0, align 4
@DBG_BUS_POST_TRIGGER_RECORD = common dso_local global i32 0, align 4
@DBG_REG_RCRD_ON_WINDOW_POST_NUM_CYCLES = common dso_local global i32 0, align 4
@DBG_BUS_POST_TRIGGER_DROP = common dso_local global i32 0, align 4
@DBG_REG_RCRD_ON_WINDOW_PRE_TRGR_EVNT_MODE = common dso_local global i32 0, align 4
@DBG_REG_RCRD_ON_WINDOW_POST_TRGR_EVNT_MODE = common dso_local global i32 0, align 4
@DBG_REG_TRIGGER_ENABLE = common dso_local global i32 0, align 4
@DBG_STATUS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_dbg_bus_enable_trigger(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32 %2, i64 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.ecore_hwfn*, align 8
  %11 = alloca %struct.ecore_ptt*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.dbg_tools_data*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.dbg_bus_data*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %10, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %11, align 8
  store i32 %2, i32* %12, align 4
  store i64 %3, i64* %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %22 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %10, align 8
  %23 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %22, i32 0, i32 0
  store %struct.dbg_tools_data* %23, %struct.dbg_tools_data** %18, align 8
  %24 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %18, align 8
  %25 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %24, i32 0, i32 0
  store %struct.dbg_bus_data* %25, %struct.dbg_bus_data** %21, align 8
  %26 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %10, align 8
  %27 = load i32, i32* @ECORE_MSG_DEBUG, align 4
  %28 = load i32, i32* %12, align 4
  %29 = load i64, i64* %13, align 8
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* %15, align 4
  %32 = load i32, i32* %16, align 4
  %33 = load i32, i32* %17, align 4
  %34 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %26, i32 %27, i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str, i64 0, i64 0), i32 %28, i64 %29, i32 %30, i32 %31, i32 %32, i32 %33)
  %35 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %21, align 8
  %36 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @DBG_BUS_STATE_READY, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %8
  %41 = load i32, i32* @DBG_STATUS_DBG_BLOCK_NOT_RESET, align 4
  store i32 %41, i32* %9, align 4
  br label %120

42:                                               ; preds = %8
  %43 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %21, align 8
  %44 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* @DBG_STATUS_TRIGGER_ALREADY_ENABLED, align 4
  store i32 %48, i32* %9, align 4
  br label %120

49:                                               ; preds = %42
  %50 = load i32, i32* %12, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load i64, i64* %13, align 8
  %54 = load i64, i64* @INT_BUF_SIZE_IN_CHUNKS, align 8
  %55 = icmp sge i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i32, i32* @DBG_STATUS_INVALID_ARGS, align 4
  store i32 %57, i32* %9, align 4
  br label %120

58:                                               ; preds = %52, %49
  %59 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %21, align 8
  %60 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %59, i32 0, i32 1
  store i32 1, i32* %60, align 8
  %61 = load i32, i32* %16, align 4
  %62 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %21, align 8
  %63 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* %17, align 4
  %65 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %21, align 8
  %66 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* %12, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %84

69:                                               ; preds = %58
  %70 = load i64, i64* %13, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load i32, i32* @DBG_BUS_PRE_TRIGGER_NUM_CHUNKS, align 4
  br label %76

74:                                               ; preds = %69
  %75 = load i32, i32* @DBG_BUS_PRE_TRIGGER_START_FROM_ZERO, align 4
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi i32 [ %73, %72 ], [ %75, %74 ]
  store i32 %77, i32* %20, align 4
  %78 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %10, align 8
  %79 = load %struct.ecore_ptt*, %struct.ecore_ptt** %11, align 8
  %80 = load i32, i32* @DBG_REG_RCRD_ON_WINDOW_PRE_NUM_CHUNKS, align 4
  %81 = load i64, i64* %13, align 8
  %82 = trunc i64 %81 to i32
  %83 = call i32 @ecore_wr(%struct.ecore_hwfn* %78, %struct.ecore_ptt* %79, i32 %80, i32 %82)
  br label %86

84:                                               ; preds = %58
  %85 = load i32, i32* @DBG_BUS_PRE_TRIGGER_DROP, align 4
  store i32 %85, i32* %20, align 4
  br label %86

86:                                               ; preds = %84, %76
  %87 = load i32, i32* %14, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %86
  %90 = load i32, i32* @DBG_BUS_POST_TRIGGER_RECORD, align 4
  store i32 %90, i32* %19, align 4
  %91 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %10, align 8
  %92 = load %struct.ecore_ptt*, %struct.ecore_ptt** %11, align 8
  %93 = load i32, i32* @DBG_REG_RCRD_ON_WINDOW_POST_NUM_CYCLES, align 4
  %94 = load i32, i32* %15, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %89
  %97 = load i32, i32* %15, align 4
  br label %99

98:                                               ; preds = %89
  br label %99

99:                                               ; preds = %98, %96
  %100 = phi i32 [ %97, %96 ], [ -1, %98 ]
  %101 = call i32 @ecore_wr(%struct.ecore_hwfn* %91, %struct.ecore_ptt* %92, i32 %93, i32 %100)
  br label %104

102:                                              ; preds = %86
  %103 = load i32, i32* @DBG_BUS_POST_TRIGGER_DROP, align 4
  store i32 %103, i32* %19, align 4
  br label %104

104:                                              ; preds = %102, %99
  %105 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %10, align 8
  %106 = load %struct.ecore_ptt*, %struct.ecore_ptt** %11, align 8
  %107 = load i32, i32* @DBG_REG_RCRD_ON_WINDOW_PRE_TRGR_EVNT_MODE, align 4
  %108 = load i32, i32* %20, align 4
  %109 = call i32 @ecore_wr(%struct.ecore_hwfn* %105, %struct.ecore_ptt* %106, i32 %107, i32 %108)
  %110 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %10, align 8
  %111 = load %struct.ecore_ptt*, %struct.ecore_ptt** %11, align 8
  %112 = load i32, i32* @DBG_REG_RCRD_ON_WINDOW_POST_TRGR_EVNT_MODE, align 4
  %113 = load i32, i32* %19, align 4
  %114 = call i32 @ecore_wr(%struct.ecore_hwfn* %110, %struct.ecore_ptt* %111, i32 %112, i32 %113)
  %115 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %10, align 8
  %116 = load %struct.ecore_ptt*, %struct.ecore_ptt** %11, align 8
  %117 = load i32, i32* @DBG_REG_TRIGGER_ENABLE, align 4
  %118 = call i32 @ecore_wr(%struct.ecore_hwfn* %115, %struct.ecore_ptt* %116, i32 %117, i32 1)
  %119 = load i32, i32* @DBG_STATUS_OK, align 4
  store i32 %119, i32* %9, align 4
  br label %120

120:                                              ; preds = %104, %56, %47, %40
  %121 = load i32, i32* %9, align 4
  ret i32 %121
}

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32, i64, i32, i32, i32, i32) #1

declare dso_local i32 @ecore_wr(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
