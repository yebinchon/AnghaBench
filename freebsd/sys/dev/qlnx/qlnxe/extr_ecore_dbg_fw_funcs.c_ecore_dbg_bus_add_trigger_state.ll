; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_dbg_bus_add_trigger_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_dbg_bus_add_trigger_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.dbg_tools_data }
%struct.dbg_tools_data = type { %struct.dbg_bus_data }
%struct.dbg_bus_data = type { i32, i32, %struct.TYPE_2__*, i64, i32, %struct.dbg_bus_block_data* }
%struct.TYPE_2__ = type { i32 }
%struct.dbg_bus_block_data = type { i32 }
%struct.ecore_ptt = type { i32 }

@ECORE_MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"dbg_bus_add_trigger_state: block = %d, const_msg_len = %d, count_to_next = %d\0A\00", align 1
@DBG_STATUS_TRIGGER_NOT_ENABLED = common dso_local global i32 0, align 4
@MAX_TRIGGER_STATES = common dso_local global i32 0, align 4
@DBG_STATUS_TOO_MANY_TRIGGER_STATES = common dso_local global i32 0, align 4
@MAX_BLOCK_ID = common dso_local global i32 0, align 4
@DBG_STATUS_INVALID_ARGS = common dso_local global i32 0, align 4
@DBG_BUS_BLOCK_DATA_ENABLE_MASK = common dso_local global i32 0, align 4
@DBG_STATUS_BLOCK_NOT_ENABLED = common dso_local global i32 0, align 4
@DBG_BUS_TRIGGER_STATE_DATA_BLOCK_SHIFTED_ENABLE_MASK = common dso_local global i32 0, align 4
@VALUES_PER_CYCLE = common dso_local global i32 0, align 4
@DBG_BUS_BLOCK_DATA_RIGHT_SHIFT = common dso_local global i32 0, align 4
@BYTES_IN_DWORD = common dso_local global i32 0, align 4
@DBG_REG_TRIGGER_STATE_MSG_LENGTH_ENABLE_0 = common dso_local global i64 0, align 8
@DBG_REG_TRIGGER_STATE_MSG_LENGTH_0 = common dso_local global i64 0, align 8
@TRIGGER_SETS_PER_STATE = common dso_local global i32 0, align 4
@DBG_REG_TRIGGER_STATE_SET_COUNT_0 = common dso_local global i64 0, align 8
@DBG_REG_TRIGGER_STATE_SET_NXT_STATE_0 = common dso_local global i64 0, align 8
@DBG_STATUS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_dbg_bus_add_trigger_state(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ecore_hwfn*, align 8
  %8 = alloca %struct.ecore_ptt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.dbg_tools_data*, align 8
  %13 = alloca %struct.dbg_bus_data*, align 8
  %14 = alloca %struct.dbg_bus_block_data*, align 8
  %15 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %7, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %17 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %16, i32 0, i32 0
  store %struct.dbg_tools_data* %17, %struct.dbg_tools_data** %12, align 8
  %18 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %12, align 8
  %19 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %18, i32 0, i32 0
  store %struct.dbg_bus_data* %19, %struct.dbg_bus_data** %13, align 8
  %20 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %21 = load i32, i32* @ECORE_MSG_DEBUG, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %20, i32 %21, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23, i32 %24)
  %26 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %13, align 8
  %27 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %26, i32 0, i32 5
  %28 = load %struct.dbg_bus_block_data*, %struct.dbg_bus_block_data** %27, align 8
  %29 = load i32, i32* %9, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.dbg_bus_block_data, %struct.dbg_bus_block_data* %28, i64 %30
  store %struct.dbg_bus_block_data* %31, %struct.dbg_bus_block_data** %14, align 8
  %32 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %13, align 8
  %33 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %5
  %37 = load i32, i32* @DBG_STATUS_TRIGGER_NOT_ENABLED, align 4
  store i32 %37, i32* %6, align 4
  br label %177

38:                                               ; preds = %5
  %39 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %13, align 8
  %40 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @MAX_TRIGGER_STATES, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* @DBG_STATUS_TOO_MANY_TRIGGER_STATES, align 4
  store i32 %45, i32* %6, align 4
  br label %177

46:                                               ; preds = %38
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @MAX_BLOCK_ID, align 4
  %49 = icmp uge i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* @DBG_STATUS_INVALID_ARGS, align 4
  store i32 %51, i32* %6, align 4
  br label %177

52:                                               ; preds = %46
  %53 = load %struct.dbg_bus_block_data*, %struct.dbg_bus_block_data** %14, align 8
  %54 = getelementptr inbounds %struct.dbg_bus_block_data, %struct.dbg_bus_block_data* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @DBG_BUS_BLOCK_DATA_ENABLE_MASK, align 4
  %57 = call i32 @GET_FIELD(i32 %55, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %52
  %60 = load i32, i32* @DBG_STATUS_BLOCK_NOT_ENABLED, align 4
  store i32 %60, i32* %6, align 4
  br label %177

61:                                               ; preds = %52
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* @DBG_STATUS_INVALID_ARGS, align 4
  store i32 %65, i32* %6, align 4
  br label %177

66:                                               ; preds = %61
  %67 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %13, align 8
  %68 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %67, i32 0, i32 3
  store i64 0, i64* %68, align 8
  %69 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %13, align 8
  %70 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %69, i32 0, i32 1
  store i32 0, i32* %70, align 4
  %71 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %13, align 8
  %72 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %71, i32 0, i32 2
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %12, align 8
  %75 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @DBG_BUS_TRIGGER_STATE_DATA_BLOCK_SHIFTED_ENABLE_MASK, align 4
  %83 = load %struct.dbg_bus_block_data*, %struct.dbg_bus_block_data** %14, align 8
  %84 = getelementptr inbounds %struct.dbg_bus_block_data, %struct.dbg_bus_block_data* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @DBG_BUS_BLOCK_DATA_ENABLE_MASK, align 4
  %87 = call i32 @GET_FIELD(i32 %85, i32 %86)
  %88 = load i32, i32* @VALUES_PER_CYCLE, align 4
  %89 = load %struct.dbg_bus_block_data*, %struct.dbg_bus_block_data** %14, align 8
  %90 = getelementptr inbounds %struct.dbg_bus_block_data, %struct.dbg_bus_block_data* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @DBG_BUS_BLOCK_DATA_RIGHT_SHIFT, align 4
  %93 = call i32 @GET_FIELD(i32 %91, i32 %92)
  %94 = call i32 @SHR(i32 %87, i32 %88, i32 %93)
  %95 = call i32 @SET_FIELD(i32 %81, i32 %82, i32 %94)
  %96 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %13, align 8
  %97 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @BYTES_IN_DWORD, align 4
  %100 = mul nsw i32 %98, %99
  store i32 %100, i32* %15, align 4
  %101 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %102 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %103 = load i64, i64* @DBG_REG_TRIGGER_STATE_MSG_LENGTH_ENABLE_0, align 8
  %104 = load i32, i32* %15, align 4
  %105 = sext i32 %104 to i64
  %106 = add nsw i64 %103, %105
  %107 = load i32, i32* %10, align 4
  %108 = icmp sgt i32 %107, 0
  %109 = zext i1 %108 to i64
  %110 = select i1 %108, i32 1, i32 0
  %111 = call i32 @ecore_wr(%struct.ecore_hwfn* %101, %struct.ecore_ptt* %102, i64 %106, i32 %110)
  %112 = load i32, i32* %10, align 4
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %114, label %124

114:                                              ; preds = %66
  %115 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %116 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %117 = load i64, i64* @DBG_REG_TRIGGER_STATE_MSG_LENGTH_0, align 8
  %118 = load i32, i32* %15, align 4
  %119 = sext i32 %118 to i64
  %120 = add nsw i64 %117, %119
  %121 = load i32, i32* %10, align 4
  %122 = sub nsw i32 %121, 1
  %123 = call i32 @ecore_wr(%struct.ecore_hwfn* %115, %struct.ecore_ptt* %116, i64 %120, i32 %122)
  br label %124

124:                                              ; preds = %114, %66
  %125 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %13, align 8
  %126 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @TRIGGER_SETS_PER_STATE, align 4
  %129 = mul nsw i32 %127, %128
  %130 = load i32, i32* @BYTES_IN_DWORD, align 4
  %131 = mul nsw i32 %129, %130
  store i32 %131, i32* %15, align 4
  %132 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %133 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %134 = load i64, i64* @DBG_REG_TRIGGER_STATE_SET_COUNT_0, align 8
  %135 = load i32, i32* %15, align 4
  %136 = sext i32 %135 to i64
  %137 = add nsw i64 %134, %136
  %138 = load i32, i32* %11, align 4
  %139 = call i32 @ecore_wr(%struct.ecore_hwfn* %132, %struct.ecore_ptt* %133, i64 %137, i32 %138)
  %140 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %141 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %142 = load i64, i64* @DBG_REG_TRIGGER_STATE_SET_NXT_STATE_0, align 8
  %143 = load i32, i32* %15, align 4
  %144 = sext i32 %143 to i64
  %145 = add nsw i64 %142, %144
  %146 = load i32, i32* @MAX_TRIGGER_STATES, align 4
  %147 = call i32 @ecore_wr(%struct.ecore_hwfn* %140, %struct.ecore_ptt* %141, i64 %145, i32 %146)
  %148 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %13, align 8
  %149 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = icmp sgt i32 %150, 0
  br i1 %151, label %152, label %171

152:                                              ; preds = %124
  %153 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %13, align 8
  %154 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = sub nsw i32 %155, 1
  %157 = load i32, i32* @TRIGGER_SETS_PER_STATE, align 4
  %158 = mul nsw i32 %156, %157
  %159 = load i32, i32* @BYTES_IN_DWORD, align 4
  %160 = mul nsw i32 %158, %159
  store i32 %160, i32* %15, align 4
  %161 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %162 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %163 = load i64, i64* @DBG_REG_TRIGGER_STATE_SET_NXT_STATE_0, align 8
  %164 = load i32, i32* %15, align 4
  %165 = sext i32 %164 to i64
  %166 = add nsw i64 %163, %165
  %167 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %13, align 8
  %168 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @ecore_wr(%struct.ecore_hwfn* %161, %struct.ecore_ptt* %162, i64 %166, i32 %169)
  br label %171

171:                                              ; preds = %152, %124
  %172 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %13, align 8
  %173 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %173, align 8
  %176 = load i32, i32* @DBG_STATUS_OK, align 4
  store i32 %176, i32* %6, align 4
  br label %177

177:                                              ; preds = %171, %64, %59, %50, %44, %36
  %178 = load i32, i32* %6, align 4
  ret i32 %178
}

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @GET_FIELD(i32, i32) #1

declare dso_local i32 @SET_FIELD(i32, i32, i32) #1

declare dso_local i32 @SHR(i32, i32, i32) #1

declare dso_local i32 @ecore_wr(%struct.ecore_hwfn*, %struct.ecore_ptt*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
