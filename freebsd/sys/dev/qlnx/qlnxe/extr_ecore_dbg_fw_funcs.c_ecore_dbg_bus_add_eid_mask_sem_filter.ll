; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_dbg_bus_add_eid_mask_sem_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_dbg_bus_add_eid_mask_sem_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.dbg_tools_data }
%struct.dbg_tools_data = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.dbg_bus_storm_data* }
%struct.dbg_bus_storm_data = type { i32, %struct.TYPE_5__, i64, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i8* }

@ECORE_MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"dbg_bus_add_eid_mask_sem_filter: storm = %d, eid_val = 0x%x, eid_mask = 0x%x\0A\00", align 1
@MAX_DBG_STORMS = common dso_local global i32 0, align 4
@DBG_STATUS_INVALID_ARGS = common dso_local global i32 0, align 4
@DBG_STATUS_STORM_NOT_ENABLED = common dso_local global i32 0, align 4
@DBG_STATUS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_dbg_bus_add_eid_mask_sem_filter(%struct.ecore_hwfn* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ecore_hwfn*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.dbg_tools_data*, align 8
  %11 = alloca %struct.dbg_bus_storm_data*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %13 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %12, i32 0, i32 0
  store %struct.dbg_tools_data* %13, %struct.dbg_tools_data** %10, align 8
  %14 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %10, align 8
  %15 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.dbg_bus_storm_data*, %struct.dbg_bus_storm_data** %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.dbg_bus_storm_data, %struct.dbg_bus_storm_data* %17, i64 %19
  store %struct.dbg_bus_storm_data* %20, %struct.dbg_bus_storm_data** %11, align 8
  %21 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %22 = load i32, i32* @ECORE_MSG_DEBUG, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i8*, i8** %8, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %21, i32 %22, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i32 %23, i8* %24, i8* %25)
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @MAX_DBG_STORMS, align 4
  %29 = icmp uge i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = load i32, i32* @DBG_STATUS_INVALID_ARGS, align 4
  store i32 %31, i32* %5, align 4
  br label %55

32:                                               ; preds = %4
  %33 = load %struct.dbg_bus_storm_data*, %struct.dbg_bus_storm_data** %11, align 8
  %34 = getelementptr inbounds %struct.dbg_bus_storm_data, %struct.dbg_bus_storm_data* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @DBG_STATUS_STORM_NOT_ENABLED, align 4
  store i32 %38, i32* %5, align 4
  br label %55

39:                                               ; preds = %32
  %40 = load %struct.dbg_bus_storm_data*, %struct.dbg_bus_storm_data** %11, align 8
  %41 = getelementptr inbounds %struct.dbg_bus_storm_data, %struct.dbg_bus_storm_data* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = load %struct.dbg_bus_storm_data*, %struct.dbg_bus_storm_data** %11, align 8
  %43 = getelementptr inbounds %struct.dbg_bus_storm_data, %struct.dbg_bus_storm_data* %42, i32 0, i32 2
  store i64 0, i64* %43, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = load %struct.dbg_bus_storm_data*, %struct.dbg_bus_storm_data** %11, align 8
  %46 = getelementptr inbounds %struct.dbg_bus_storm_data, %struct.dbg_bus_storm_data* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  store i8* %44, i8** %48, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = load %struct.dbg_bus_storm_data*, %struct.dbg_bus_storm_data** %11, align 8
  %51 = getelementptr inbounds %struct.dbg_bus_storm_data, %struct.dbg_bus_storm_data* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store i8* %49, i8** %53, align 8
  %54 = load i32, i32* @DBG_STATUS_OK, align 4
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %39, %37, %30
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
