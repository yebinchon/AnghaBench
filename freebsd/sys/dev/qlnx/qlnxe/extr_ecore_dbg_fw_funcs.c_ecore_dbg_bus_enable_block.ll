; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_dbg_bus_enable_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_dbg_bus_enable_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_defs = type { i64* }
%struct.ecore_hwfn = type { %struct.dbg_tools_data }
%struct.dbg_tools_data = type { i64, %struct.TYPE_2__, i64* }
%struct.TYPE_2__ = type { i64, i32, %struct.dbg_bus_block_data*, i32 }
%struct.dbg_bus_block_data = type { i32, i64 }
%struct.dbg_bus_block = type { i32 }

@s_block_defs = common dso_local global %struct.block_defs** null, align 8
@ECORE_MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [137 x i8] c"dbg_bus_enable_block: block = %d, line_num = %d, enable_mask = 0x%x, right_shift = %d, force_valid_mask = 0x%x, force_frame_mask = 0x%x\0A\00", align 1
@DBG_BUS_STATE_READY = common dso_local global i64 0, align 8
@DBG_STATUS_DBG_BLOCK_NOT_RESET = common dso_local global i32 0, align 4
@MAX_BLOCK_ID = common dso_local global i32 0, align 4
@DBG_STATUS_INVALID_ARGS = common dso_local global i32 0, align 4
@DBG_BUS_BLOCK_DATA_ENABLE_MASK = common dso_local global i32 0, align 4
@DBG_STATUS_BLOCK_ALREADY_ENABLED = common dso_local global i32 0, align 4
@MAX_DBG_BUS_CLIENTS = common dso_local global i64 0, align 8
@MAX_CYCLE_VALUES_MASK = common dso_local global i64 0, align 8
@VALUES_PER_CYCLE = common dso_local global i32 0, align 4
@DBG_STATUS_BLOCK_IN_RESET = common dso_local global i32 0, align 4
@DBG_STATUS_INPUT_OVERLAP = common dso_local global i32 0, align 4
@DBG_BUS_BLOCK_DATA_RIGHT_SHIFT = common dso_local global i32 0, align 4
@DBG_BUS_BLOCK_DATA_FORCE_VALID_MASK = common dso_local global i32 0, align 4
@DBG_BUS_BLOCK_DATA_FORCE_FRAME_MASK = common dso_local global i32 0, align 4
@DBG_STATUS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_dbg_bus_enable_block(%struct.ecore_hwfn* %0, i32 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ecore_hwfn*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.dbg_tools_data*, align 8
  %17 = alloca %struct.block_defs*, align 8
  %18 = alloca %struct.dbg_bus_block_data*, align 8
  %19 = alloca %struct.dbg_bus_block*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %9, align 8
  store i32 %1, i32* %10, align 4
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  %20 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %21 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %20, i32 0, i32 0
  store %struct.dbg_tools_data* %21, %struct.dbg_tools_data** %16, align 8
  %22 = load %struct.block_defs**, %struct.block_defs*** @s_block_defs, align 8
  %23 = load i32, i32* %10, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.block_defs*, %struct.block_defs** %22, i64 %24
  %26 = load %struct.block_defs*, %struct.block_defs** %25, align 8
  store %struct.block_defs* %26, %struct.block_defs** %17, align 8
  %27 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %16, align 8
  %28 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load %struct.dbg_bus_block_data*, %struct.dbg_bus_block_data** %29, align 8
  %31 = load i32, i32* %10, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.dbg_bus_block_data, %struct.dbg_bus_block_data* %30, i64 %32
  store %struct.dbg_bus_block_data* %33, %struct.dbg_bus_block_data** %18, align 8
  %34 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call %struct.dbg_bus_block* @get_dbg_bus_block_desc(%struct.ecore_hwfn* %34, i32 %35)
  store %struct.dbg_bus_block* %36, %struct.dbg_bus_block** %19, align 8
  %37 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %38 = load i32, i32* @ECORE_MSG_DEBUG, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i64, i64* %11, align 8
  %41 = load i64, i64* %12, align 8
  %42 = load i64, i64* %13, align 8
  %43 = load i64, i64* %14, align 8
  %44 = load i64, i64* %15, align 8
  %45 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %37, i32 %38, i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str, i64 0, i64 0), i32 %39, i64 %40, i64 %41, i64 %42, i64 %43, i64 %44)
  %46 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %16, align 8
  %47 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @DBG_BUS_STATE_READY, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %7
  %53 = load i32, i32* @DBG_STATUS_DBG_BLOCK_NOT_RESET, align 4
  store i32 %53, i32* %8, align 4
  br label %173

54:                                               ; preds = %7
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @MAX_BLOCK_ID, align 4
  %57 = icmp uge i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32, i32* @DBG_STATUS_INVALID_ARGS, align 4
  store i32 %59, i32* %8, align 4
  br label %173

60:                                               ; preds = %54
  %61 = load %struct.dbg_bus_block_data*, %struct.dbg_bus_block_data** %18, align 8
  %62 = getelementptr inbounds %struct.dbg_bus_block_data, %struct.dbg_bus_block_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @DBG_BUS_BLOCK_DATA_ENABLE_MASK, align 4
  %65 = call i64 @GET_FIELD(i32 %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = load i32, i32* @DBG_STATUS_BLOCK_ALREADY_ENABLED, align 4
  store i32 %68, i32* %8, align 4
  br label %173

69:                                               ; preds = %60
  %70 = load %struct.block_defs*, %struct.block_defs** %17, align 8
  %71 = getelementptr inbounds %struct.block_defs, %struct.block_defs* %70, i32 0, i32 0
  %72 = load i64*, i64** %71, align 8
  %73 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %16, align 8
  %74 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds i64, i64* %72, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @MAX_DBG_BUS_CLIENTS, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %106, label %80

80:                                               ; preds = %69
  %81 = load i64, i64* %11, align 8
  %82 = load %struct.dbg_bus_block*, %struct.dbg_bus_block** %19, align 8
  %83 = call i64 @NUM_DBG_LINES(%struct.dbg_bus_block* %82)
  %84 = icmp sge i64 %81, %83
  br i1 %84, label %106, label %85

85:                                               ; preds = %80
  %86 = load i64, i64* %12, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %106

88:                                               ; preds = %85
  %89 = load i64, i64* %12, align 8
  %90 = load i64, i64* @MAX_CYCLE_VALUES_MASK, align 8
  %91 = icmp sgt i64 %89, %90
  br i1 %91, label %106, label %92

92:                                               ; preds = %88
  %93 = load i64, i64* %14, align 8
  %94 = load i64, i64* @MAX_CYCLE_VALUES_MASK, align 8
  %95 = icmp sgt i64 %93, %94
  br i1 %95, label %106, label %96

96:                                               ; preds = %92
  %97 = load i64, i64* %15, align 8
  %98 = load i64, i64* @MAX_CYCLE_VALUES_MASK, align 8
  %99 = icmp sgt i64 %97, %98
  br i1 %99, label %106, label %100

100:                                              ; preds = %96
  %101 = load i64, i64* %13, align 8
  %102 = load i32, i32* @VALUES_PER_CYCLE, align 4
  %103 = sub nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = icmp sgt i64 %101, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %100, %96, %92, %88, %85, %80, %69
  %107 = load i32, i32* @DBG_STATUS_INVALID_ARGS, align 4
  store i32 %107, i32* %8, align 4
  br label %173

108:                                              ; preds = %100
  %109 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %16, align 8
  %110 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %109, i32 0, i32 2
  %111 = load i64*, i64** %110, align 8
  %112 = load i32, i32* %10, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds i64, i64* %111, i64 %113
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %108
  %118 = load i32, i32* @DBG_STATUS_BLOCK_IN_RESET, align 4
  store i32 %118, i32* %8, align 4
  br label %173

119:                                              ; preds = %108
  %120 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %16, align 8
  %121 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %133, label %125

125:                                              ; preds = %119
  %126 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %127 = load i64, i64* %12, align 8
  %128 = load i64, i64* %13, align 8
  %129 = call i64 @ecore_is_overlapping_enable_mask(%struct.ecore_hwfn* %126, i64 %127, i64 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %125
  %132 = load i32, i32* @DBG_STATUS_INPUT_OVERLAP, align 4
  store i32 %132, i32* %8, align 4
  br label %173

133:                                              ; preds = %125, %119
  %134 = load i64, i64* %11, align 8
  %135 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %16, align 8
  %136 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 2
  %138 = load %struct.dbg_bus_block_data*, %struct.dbg_bus_block_data** %137, align 8
  %139 = load i32, i32* %10, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds %struct.dbg_bus_block_data, %struct.dbg_bus_block_data* %138, i64 %140
  %142 = getelementptr inbounds %struct.dbg_bus_block_data, %struct.dbg_bus_block_data* %141, i32 0, i32 1
  store i64 %134, i64* %142, align 8
  %143 = load %struct.dbg_bus_block_data*, %struct.dbg_bus_block_data** %18, align 8
  %144 = getelementptr inbounds %struct.dbg_bus_block_data, %struct.dbg_bus_block_data* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @DBG_BUS_BLOCK_DATA_ENABLE_MASK, align 4
  %147 = load i64, i64* %12, align 8
  %148 = call i32 @SET_FIELD(i32 %145, i32 %146, i64 %147)
  %149 = load %struct.dbg_bus_block_data*, %struct.dbg_bus_block_data** %18, align 8
  %150 = getelementptr inbounds %struct.dbg_bus_block_data, %struct.dbg_bus_block_data* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @DBG_BUS_BLOCK_DATA_RIGHT_SHIFT, align 4
  %153 = load i64, i64* %13, align 8
  %154 = call i32 @SET_FIELD(i32 %151, i32 %152, i64 %153)
  %155 = load %struct.dbg_bus_block_data*, %struct.dbg_bus_block_data** %18, align 8
  %156 = getelementptr inbounds %struct.dbg_bus_block_data, %struct.dbg_bus_block_data* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @DBG_BUS_BLOCK_DATA_FORCE_VALID_MASK, align 4
  %159 = load i64, i64* %14, align 8
  %160 = call i32 @SET_FIELD(i32 %157, i32 %158, i64 %159)
  %161 = load %struct.dbg_bus_block_data*, %struct.dbg_bus_block_data** %18, align 8
  %162 = getelementptr inbounds %struct.dbg_bus_block_data, %struct.dbg_bus_block_data* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @DBG_BUS_BLOCK_DATA_FORCE_FRAME_MASK, align 4
  %165 = load i64, i64* %15, align 8
  %166 = call i32 @SET_FIELD(i32 %163, i32 %164, i64 %165)
  %167 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %16, align 8
  %168 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %169, align 8
  %172 = load i32, i32* @DBG_STATUS_OK, align 4
  store i32 %172, i32* %8, align 4
  br label %173

173:                                              ; preds = %133, %131, %117, %106, %67, %58, %52
  %174 = load i32, i32* %8, align 4
  ret i32 %174
}

declare dso_local %struct.dbg_bus_block* @get_dbg_bus_block_desc(%struct.ecore_hwfn*, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32, i64, i64, i64, i64, i64) #1

declare dso_local i64 @GET_FIELD(i32, i32) #1

declare dso_local i64 @NUM_DBG_LINES(%struct.dbg_bus_block*) #1

declare dso_local i64 @ecore_is_overlapping_enable_mask(%struct.ecore_hwfn*, i64, i64) #1

declare dso_local i32 @SET_FIELD(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
