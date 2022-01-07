; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_dbg_bus_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_dbg_bus_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.dbg_tools_data }
%struct.dbg_tools_data = type { %struct.dbg_bus_data }
%struct.dbg_bus_data = type { i64, i64 }
%struct.ecore_ptt = type { i32 }

@DBG_STATUS_OK = common dso_local global i32 0, align 4
@ECORE_MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"dbg_bus_stop\0A\00", align 1
@DBG_BUS_STATE_RECORDING = common dso_local global i64 0, align 8
@DBG_STATUS_RECORDING_NOT_STARTED = common dso_local global i32 0, align 4
@DBG_REG_CPU_TIMEOUT = common dso_local global i32 0, align 4
@FLUSH_DELAY_MS = common dso_local global i32 0, align 4
@DBG_REG_TRIGGER_STATUS_CUR_STATE = common dso_local global i32 0, align 4
@MAX_TRIGGER_STATES = common dso_local global i64 0, align 8
@DBG_STATUS_DATA_DIDNT_TRIGGER = common dso_local global i32 0, align 4
@DBG_BUS_STATE_STOPPED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_dbg_bus_stop(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_ptt*, align 8
  %6 = alloca %struct.dbg_tools_data*, align 8
  %7 = alloca %struct.dbg_bus_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %5, align 8
  %10 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %11 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %10, i32 0, i32 0
  store %struct.dbg_tools_data* %11, %struct.dbg_tools_data** %6, align 8
  %12 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %6, align 8
  %13 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %12, i32 0, i32 0
  store %struct.dbg_bus_data* %13, %struct.dbg_bus_data** %7, align 8
  %14 = load i32, i32* @DBG_STATUS_OK, align 4
  store i32 %14, i32* %8, align 4
  %15 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %16 = load i32, i32* @ECORE_MSG_DEBUG, align 4
  %17 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %15, i32 %16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %7, align 8
  %19 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @DBG_BUS_STATE_RECORDING, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @DBG_STATUS_RECORDING_NOT_STARTED, align 4
  store i32 %24, i32* %3, align 4
  br label %64

25:                                               ; preds = %2
  %26 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %27 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %28 = call i32 @ecore_bus_disable_inputs(%struct.ecore_hwfn* %26, %struct.ecore_ptt* %27, i32 1)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @DBG_STATUS_OK, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %3, align 4
  br label %64

34:                                               ; preds = %25
  %35 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %36 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %37 = load i32, i32* @DBG_REG_CPU_TIMEOUT, align 4
  %38 = call i32 @ecore_wr(%struct.ecore_hwfn* %35, %struct.ecore_ptt* %36, i32 %37, i32 1)
  %39 = load i32, i32* @FLUSH_DELAY_MS, align 4
  %40 = call i32 @OSAL_MSLEEP(i32 %39)
  %41 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %42 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %43 = call i32 @ecore_bus_enable_dbg_block(%struct.ecore_hwfn* %41, %struct.ecore_ptt* %42, i32 0)
  %44 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %7, align 8
  %45 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %34
  %49 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %50 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %51 = load i32, i32* @DBG_REG_TRIGGER_STATUS_CUR_STATE, align 4
  %52 = call i64 @ecore_rd(%struct.ecore_hwfn* %49, %struct.ecore_ptt* %50, i32 %51)
  store i64 %52, i64* %9, align 8
  %53 = load i64, i64* %9, align 8
  %54 = load i64, i64* @MAX_TRIGGER_STATES, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = load i32, i32* @DBG_STATUS_DATA_DIDNT_TRIGGER, align 4
  store i32 %57, i32* %3, align 4
  br label %64

58:                                               ; preds = %48
  br label %59

59:                                               ; preds = %58, %34
  %60 = load i64, i64* @DBG_BUS_STATE_STOPPED, align 8
  %61 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %7, align 8
  %62 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %59, %56, %32, %23
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*) #1

declare dso_local i32 @ecore_bus_disable_inputs(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

declare dso_local i32 @ecore_wr(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32) #1

declare dso_local i32 @OSAL_MSLEEP(i32) #1

declare dso_local i32 @ecore_bus_enable_dbg_block(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

declare dso_local i64 @ecore_rd(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
