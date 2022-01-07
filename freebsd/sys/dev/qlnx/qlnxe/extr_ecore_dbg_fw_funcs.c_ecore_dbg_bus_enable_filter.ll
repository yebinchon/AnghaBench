; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_dbg_bus_enable_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_dbg_bus_enable_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.dbg_tools_data }
%struct.dbg_tools_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i32, i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ecore_ptt = type { i32 }

@ECORE_MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"dbg_bus_enable_filter: block = %d, const_msg_len = %d\0A\00", align 1
@DBG_BUS_STATE_READY = common dso_local global i64 0, align 8
@DBG_STATUS_DBG_BLOCK_NOT_RESET = common dso_local global i32 0, align 4
@DBG_STATUS_FILTER_ALREADY_ENABLED = common dso_local global i32 0, align 4
@MAX_BLOCK_ID = common dso_local global i32 0, align 4
@DBG_STATUS_INVALID_ARGS = common dso_local global i32 0, align 4
@DBG_BUS_BLOCK_DATA_ENABLE_MASK = common dso_local global i32 0, align 4
@DBG_STATUS_BLOCK_NOT_ENABLED = common dso_local global i32 0, align 4
@DBG_STATUS_FILTER_BUG = common dso_local global i32 0, align 4
@DBG_REG_FILTER_ID_NUM = common dso_local global i32 0, align 4
@DBG_REG_FILTER_MSG_LENGTH_ENABLE = common dso_local global i32 0, align 4
@DBG_REG_FILTER_MSG_LENGTH = common dso_local global i32 0, align 4
@DBG_STATUS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_dbg_bus_enable_filter(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ecore_hwfn*, align 8
  %7 = alloca %struct.ecore_ptt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dbg_tools_data*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %6, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %12 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %11, i32 0, i32 0
  store %struct.dbg_tools_data* %12, %struct.dbg_tools_data** %10, align 8
  %13 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %14 = load i32, i32* @ECORE_MSG_DEBUG, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %13, i32 %14, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16)
  %18 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %10, align 8
  %19 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @DBG_BUS_STATE_READY, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* @DBG_STATUS_DBG_BLOCK_NOT_RESET, align 4
  store i32 %25, i32* %5, align 4
  br label %96

26:                                               ; preds = %4
  %27 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %10, align 8
  %28 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @DBG_STATUS_FILTER_ALREADY_ENABLED, align 4
  store i32 %33, i32* %5, align 4
  br label %96

34:                                               ; preds = %26
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @MAX_BLOCK_ID, align 4
  %37 = icmp uge i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @DBG_STATUS_INVALID_ARGS, align 4
  store i32 %39, i32* %5, align 4
  br label %96

40:                                               ; preds = %34
  %41 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %10, align 8
  %42 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 5
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @DBG_BUS_BLOCK_DATA_ENABLE_MASK, align 4
  %51 = call i32 @GET_FIELD(i32 %49, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %40
  %54 = load i32, i32* @DBG_STATUS_BLOCK_NOT_ENABLED, align 4
  store i32 %54, i32* %5, align 4
  br label %96

55:                                               ; preds = %40
  %56 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %10, align 8
  %57 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %55
  %62 = load i32, i32* @DBG_STATUS_FILTER_BUG, align 4
  store i32 %62, i32* %5, align 4
  br label %96

63:                                               ; preds = %55
  %64 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %10, align 8
  %65 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  store i32 1, i32* %66, align 8
  %67 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %10, align 8
  %68 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 3
  store i64 0, i64* %69, align 8
  %70 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %10, align 8
  %71 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 2
  store i32 1, i32* %72, align 4
  %73 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %74 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %75 = load i32, i32* @DBG_REG_FILTER_ID_NUM, align 4
  %76 = call i32 @ecore_wr(%struct.ecore_hwfn* %73, %struct.ecore_ptt* %74, i32 %75, i32 0)
  %77 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %78 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %79 = load i32, i32* @DBG_REG_FILTER_MSG_LENGTH_ENABLE, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp sgt i32 %80, 0
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i32 1, i32 0
  %84 = call i32 @ecore_wr(%struct.ecore_hwfn* %77, %struct.ecore_ptt* %78, i32 %79, i32 %83)
  %85 = load i32, i32* %9, align 4
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %63
  %88 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %89 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %90 = load i32, i32* @DBG_REG_FILTER_MSG_LENGTH, align 4
  %91 = load i32, i32* %9, align 4
  %92 = sub nsw i32 %91, 1
  %93 = call i32 @ecore_wr(%struct.ecore_hwfn* %88, %struct.ecore_ptt* %89, i32 %90, i32 %92)
  br label %94

94:                                               ; preds = %87, %63
  %95 = load i32, i32* @DBG_STATUS_OK, align 4
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %94, %61, %53, %38, %32, %24
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32, i32) #1

declare dso_local i32 @GET_FIELD(i32, i32) #1

declare dso_local i32 @ecore_wr(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
