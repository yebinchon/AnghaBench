; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_dbg_bus_add_eid_range_sem_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_dbg_bus_add_eid_range_sem_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.dbg_tools_data }
%struct.dbg_tools_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.dbg_bus_storm_data* }
%struct.dbg_bus_storm_data = type { i32, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 }

@ECORE_MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"dbg_bus_add_eid_range_sem_filter: storm = %d, min_eid = 0x%x, max_eid = 0x%x\0A\00", align 1
@MAX_DBG_STORMS = common dso_local global i32 0, align 4
@DBG_STATUS_INVALID_ARGS = common dso_local global i32 0, align 4
@DBG_STATUS_STORM_NOT_ENABLED = common dso_local global i32 0, align 4
@DBG_STATUS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_dbg_bus_add_eid_range_sem_filter(%struct.ecore_hwfn* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ecore_hwfn*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.dbg_tools_data*, align 8
  %11 = alloca %struct.dbg_bus_storm_data*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %13 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %12, i32 0, i32 0
  store %struct.dbg_tools_data* %13, %struct.dbg_tools_data** %10, align 8
  %14 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %10, align 8
  %15 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.dbg_bus_storm_data*, %struct.dbg_bus_storm_data** %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.dbg_bus_storm_data, %struct.dbg_bus_storm_data* %17, i64 %19
  store %struct.dbg_bus_storm_data* %20, %struct.dbg_bus_storm_data** %11, align 8
  %21 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %22 = load i32, i32* @ECORE_MSG_DEBUG, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* %9, align 8
  %26 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %21, i32 %22, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i32 %23, i64 %24, i64 %25)
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @MAX_DBG_STORMS, align 4
  %29 = icmp uge i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = load i32, i32* @DBG_STATUS_INVALID_ARGS, align 4
  store i32 %31, i32* %5, align 4
  br label %61

32:                                               ; preds = %4
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* %9, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* @DBG_STATUS_INVALID_ARGS, align 4
  store i32 %37, i32* %5, align 4
  br label %61

38:                                               ; preds = %32
  %39 = load %struct.dbg_bus_storm_data*, %struct.dbg_bus_storm_data** %11, align 8
  %40 = getelementptr inbounds %struct.dbg_bus_storm_data, %struct.dbg_bus_storm_data* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* @DBG_STATUS_STORM_NOT_ENABLED, align 4
  store i32 %44, i32* %5, align 4
  br label %61

45:                                               ; preds = %38
  %46 = load %struct.dbg_bus_storm_data*, %struct.dbg_bus_storm_data** %11, align 8
  %47 = getelementptr inbounds %struct.dbg_bus_storm_data, %struct.dbg_bus_storm_data* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  %48 = load %struct.dbg_bus_storm_data*, %struct.dbg_bus_storm_data** %11, align 8
  %49 = getelementptr inbounds %struct.dbg_bus_storm_data, %struct.dbg_bus_storm_data* %48, i32 0, i32 1
  store i32 1, i32* %49, align 4
  %50 = load i64, i64* %8, align 8
  %51 = load %struct.dbg_bus_storm_data*, %struct.dbg_bus_storm_data** %11, align 8
  %52 = getelementptr inbounds %struct.dbg_bus_storm_data, %struct.dbg_bus_storm_data* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  store i64 %50, i64* %54, align 8
  %55 = load i64, i64* %9, align 8
  %56 = load %struct.dbg_bus_storm_data*, %struct.dbg_bus_storm_data** %11, align 8
  %57 = getelementptr inbounds %struct.dbg_bus_storm_data, %struct.dbg_bus_storm_data* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  store i64 %55, i64* %59, align 8
  %60 = load i32, i32* @DBG_STATUS_OK, align 4
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %45, %43, %36, %30
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
