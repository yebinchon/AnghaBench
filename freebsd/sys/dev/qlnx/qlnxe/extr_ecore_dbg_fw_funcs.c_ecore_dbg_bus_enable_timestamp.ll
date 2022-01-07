; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_dbg_bus_enable_timestamp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_dbg_bus_enable_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.dbg_tools_data }
%struct.dbg_tools_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ecore_ptt = type { i32 }

@ECORE_MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"dbg_bus_enable_timestamp: valid_mask = 0x%x, frame_mask = 0x%x, tick_len = %d\0A\00", align 1
@DBG_BUS_STATE_READY = common dso_local global i64 0, align 8
@DBG_STATUS_DBG_BLOCK_NOT_RESET = common dso_local global i32 0, align 4
@DBG_STATUS_INVALID_ARGS = common dso_local global i32 0, align 4
@DBG_STATUS_INPUT_OVERLAP = common dso_local global i32 0, align 4
@BLOCK_DBG = common dso_local global i64 0, align 8
@DBG_BUS_BLOCK_DATA_ENABLE_MASK = common dso_local global i32 0, align 4
@DBG_REG_TIMESTAMP_VALID_EN = common dso_local global i32 0, align 4
@DBG_REG_TIMESTAMP_FRAME_EN = common dso_local global i32 0, align 4
@DBG_REG_TIMESTAMP_TICK = common dso_local global i32 0, align 4
@DBG_STATUS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_dbg_bus_enable_timestamp(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ecore_hwfn*, align 8
  %8 = alloca %struct.ecore_ptt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.dbg_tools_data*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %7, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %14 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %13, i32 0, i32 0
  store %struct.dbg_tools_data* %14, %struct.dbg_tools_data** %12, align 8
  %15 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %16 = load i32, i32* @ECORE_MSG_DEBUG, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %11, align 4
  %20 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %15, i32 %16, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18, i32 %19)
  %21 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %12, align 8
  %22 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @DBG_BUS_STATE_READY, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = load i32, i32* @DBG_STATUS_DBG_BLOCK_NOT_RESET, align 4
  store i32 %28, i32* %6, align 4
  br label %84

29:                                               ; preds = %5
  %30 = load i32, i32* %9, align 4
  %31 = icmp sgt i32 %30, 7
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %10, align 4
  %34 = icmp sgt i32 %33, 7
  br i1 %34, label %35, label %37

35:                                               ; preds = %32, %29
  %36 = load i32, i32* @DBG_STATUS_INVALID_ARGS, align 4
  store i32 %36, i32* %6, align 4
  br label %84

37:                                               ; preds = %32
  %38 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %12, align 8
  %39 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %45 = call i64 @ecore_is_overlapping_enable_mask(%struct.ecore_hwfn* %44, i32 1, i32 0)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i32, i32* @DBG_STATUS_INPUT_OVERLAP, align 4
  store i32 %48, i32* %6, align 4
  br label %84

49:                                               ; preds = %43, %37
  %50 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %12, align 8
  %51 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  store i32 1, i32* %52, align 8
  %53 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %12, align 8
  %54 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 8
  %58 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %12, align 8
  %59 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = load i64, i64* @BLOCK_DBG, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @DBG_BUS_BLOCK_DATA_ENABLE_MASK, align 4
  %67 = call i32 @SET_FIELD(i32 %65, i32 %66, i32 1)
  %68 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %69 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %70 = load i32, i32* @DBG_REG_TIMESTAMP_VALID_EN, align 4
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @ecore_wr(%struct.ecore_hwfn* %68, %struct.ecore_ptt* %69, i32 %70, i32 %71)
  %73 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %74 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %75 = load i32, i32* @DBG_REG_TIMESTAMP_FRAME_EN, align 4
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @ecore_wr(%struct.ecore_hwfn* %73, %struct.ecore_ptt* %74, i32 %75, i32 %76)
  %78 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %79 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %80 = load i32, i32* @DBG_REG_TIMESTAMP_TICK, align 4
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @ecore_wr(%struct.ecore_hwfn* %78, %struct.ecore_ptt* %79, i32 %80, i32 %81)
  %83 = load i32, i32* @DBG_STATUS_OK, align 4
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %49, %47, %35, %27
  %85 = load i32, i32* %6, align 4
  ret i32 %85
}

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32, i32, i32) #1

declare dso_local i64 @ecore_is_overlapping_enable_mask(%struct.ecore_hwfn*, i32, i32) #1

declare dso_local i32 @SET_FIELD(i32, i32, i32) #1

declare dso_local i32 @ecore_wr(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
