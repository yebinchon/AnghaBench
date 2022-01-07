; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_bus_enable_storm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_bus_enable_storm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.storm_defs = type { i32, i32, i32, i32, i32 }
%struct.storm_mode_defs = type { i32, i64 }
%struct.ecore_hwfn = type { %struct.dbg_tools_data }
%struct.dbg_tools_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.dbg_bus_storm_data* }
%struct.dbg_bus_storm_data = type { i64, i32, i64, %union.dbg_bus_storm_eid_params, i64, i64 }
%union.dbg_bus_storm_eid_params = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.ecore_ptt = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@s_storm_defs = common dso_local global %struct.storm_defs* null, align 8
@s_storm_mode_defs = common dso_local global %struct.storm_mode_defs* null, align 8
@DBG_BUS_SEMI_FRAME_MODE_0SLOW_4FAST = common dso_local global i32 0, align 4
@SEM_FAST_REG_DEBUG_MODE = common dso_local global i32 0, align 4
@SEM_FAST_REG_DEBUG_ACTIVE = common dso_local global i32 0, align 4
@SEM_FAST_REG_DBG_MODE23_SRC_DISABLE = common dso_local global i32 0, align 4
@SEM_FAST_MODE23_SRC_ENABLE_VAL = common dso_local global i32 0, align 4
@SEM_FAST_REG_DBG_MODE4_SRC_DISABLE = common dso_local global i32 0, align 4
@SEM_FAST_MODE4_SRC_ENABLE_VAL = common dso_local global i32 0, align 4
@SEM_FAST_REG_DBG_MODE6_SRC_DISABLE = common dso_local global i32 0, align 4
@SEM_FAST_MODE6_SRC_ENABLE_VAL = common dso_local global i32 0, align 4
@DBG_BUS_SEMI_FRAME_MODE_4SLOW_0FAST = common dso_local global i32 0, align 4
@SEM_SLOW_MODE1_DATA_ENABLE = common dso_local global i32 0, align 4
@SEM_FAST_REG_FILTER_CID = common dso_local global i32 0, align 4
@SEM_FILTER_CID_EN_MASK = common dso_local global i32 0, align 4
@SEM_FAST_REG_EVENT_ID_RANGE_STRT = common dso_local global i32 0, align 4
@SEM_FAST_REG_EVENT_ID_RANGE_END = common dso_local global i32 0, align 4
@SEM_FILTER_EID_RANGE_EN_MASK = common dso_local global i32 0, align 4
@SEM_FAST_REG_FILTER_EVENT_ID = common dso_local global i32 0, align 4
@SEM_FAST_REG_EVENT_ID_MASK = common dso_local global i32 0, align 4
@SEM_FILTER_EID_MASK_EN_MASK = common dso_local global i32 0, align 4
@SEM_FAST_REG_RECORD_FILTER_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, %struct.ecore_ptt*, i32)* @ecore_bus_enable_storm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_bus_enable_storm(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32 %2) #0 {
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_ptt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dbg_tools_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dbg_bus_storm_data*, align 8
  %11 = alloca %struct.storm_mode_defs*, align 8
  %12 = alloca %struct.storm_defs*, align 8
  %13 = alloca %union.dbg_bus_storm_eid_params*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %15 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %14, i32 0, i32 0
  store %struct.dbg_tools_data* %15, %struct.dbg_tools_data** %7, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.storm_defs*, %struct.storm_defs** @s_storm_defs, align 8
  %17 = load i32, i32* %6, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.storm_defs, %struct.storm_defs* %16, i64 %18
  store %struct.storm_defs* %19, %struct.storm_defs** %12, align 8
  %20 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %7, align 8
  %21 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.dbg_bus_storm_data*, %struct.dbg_bus_storm_data** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.dbg_bus_storm_data, %struct.dbg_bus_storm_data* %23, i64 %25
  store %struct.dbg_bus_storm_data* %26, %struct.dbg_bus_storm_data** %10, align 8
  %27 = load %struct.storm_mode_defs*, %struct.storm_mode_defs** @s_storm_mode_defs, align 8
  %28 = load %struct.dbg_bus_storm_data*, %struct.dbg_bus_storm_data** %10, align 8
  %29 = getelementptr inbounds %struct.dbg_bus_storm_data, %struct.dbg_bus_storm_data* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.storm_mode_defs, %struct.storm_mode_defs* %27, i64 %30
  store %struct.storm_mode_defs* %31, %struct.storm_mode_defs** %11, align 8
  %32 = load %struct.storm_defs*, %struct.storm_defs** %12, align 8
  %33 = getelementptr inbounds %struct.storm_defs, %struct.storm_defs* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %8, align 4
  %35 = load %struct.storm_mode_defs*, %struct.storm_mode_defs** %11, align 8
  %36 = getelementptr inbounds %struct.storm_mode_defs, %struct.storm_mode_defs* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %83

39:                                               ; preds = %3
  %40 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %41 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %42 = load %struct.storm_defs*, %struct.storm_defs** %12, align 8
  %43 = getelementptr inbounds %struct.storm_defs, %struct.storm_defs* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @DBG_BUS_SEMI_FRAME_MODE_0SLOW_4FAST, align 4
  %46 = call i32 @ecore_wr(%struct.ecore_hwfn* %40, %struct.ecore_ptt* %41, i32 %44, i32 %45)
  %47 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %48 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @SEM_FAST_REG_DEBUG_MODE, align 4
  %51 = add nsw i32 %49, %50
  %52 = load %struct.storm_mode_defs*, %struct.storm_mode_defs** %11, align 8
  %53 = getelementptr inbounds %struct.storm_mode_defs, %struct.storm_mode_defs* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @ecore_wr(%struct.ecore_hwfn* %47, %struct.ecore_ptt* %48, i32 %51, i32 %54)
  %56 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %57 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @SEM_FAST_REG_DEBUG_ACTIVE, align 4
  %60 = add nsw i32 %58, %59
  %61 = call i32 @ecore_wr(%struct.ecore_hwfn* %56, %struct.ecore_ptt* %57, i32 %60, i32 1)
  %62 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %63 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @SEM_FAST_REG_DBG_MODE23_SRC_DISABLE, align 4
  %66 = add nsw i32 %64, %65
  %67 = load i32, i32* @SEM_FAST_MODE23_SRC_ENABLE_VAL, align 4
  %68 = call i32 @ecore_wr(%struct.ecore_hwfn* %62, %struct.ecore_ptt* %63, i32 %66, i32 %67)
  %69 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %70 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @SEM_FAST_REG_DBG_MODE4_SRC_DISABLE, align 4
  %73 = add nsw i32 %71, %72
  %74 = load i32, i32* @SEM_FAST_MODE4_SRC_ENABLE_VAL, align 4
  %75 = call i32 @ecore_wr(%struct.ecore_hwfn* %69, %struct.ecore_ptt* %70, i32 %73, i32 %74)
  %76 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %77 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @SEM_FAST_REG_DBG_MODE6_SRC_DISABLE, align 4
  %80 = add nsw i32 %78, %79
  %81 = load i32, i32* @SEM_FAST_MODE6_SRC_ENABLE_VAL, align 4
  %82 = call i32 @ecore_wr(%struct.ecore_hwfn* %76, %struct.ecore_ptt* %77, i32 %80, i32 %81)
  br label %113

83:                                               ; preds = %3
  %84 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %85 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %86 = load %struct.storm_defs*, %struct.storm_defs** %12, align 8
  %87 = getelementptr inbounds %struct.storm_defs, %struct.storm_defs* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @DBG_BUS_SEMI_FRAME_MODE_4SLOW_0FAST, align 4
  %90 = call i32 @ecore_wr(%struct.ecore_hwfn* %84, %struct.ecore_ptt* %85, i32 %88, i32 %89)
  %91 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %92 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %93 = load %struct.storm_defs*, %struct.storm_defs** %12, align 8
  %94 = getelementptr inbounds %struct.storm_defs, %struct.storm_defs* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @ecore_wr(%struct.ecore_hwfn* %91, %struct.ecore_ptt* %92, i32 %95, i32 1)
  %97 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %98 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %99 = load %struct.storm_defs*, %struct.storm_defs** %12, align 8
  %100 = getelementptr inbounds %struct.storm_defs, %struct.storm_defs* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.storm_mode_defs*, %struct.storm_mode_defs** %11, align 8
  %103 = getelementptr inbounds %struct.storm_mode_defs, %struct.storm_mode_defs* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @ecore_wr(%struct.ecore_hwfn* %97, %struct.ecore_ptt* %98, i32 %101, i32 %104)
  %106 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %107 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %108 = load %struct.storm_defs*, %struct.storm_defs** %12, align 8
  %109 = getelementptr inbounds %struct.storm_defs, %struct.storm_defs* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @SEM_SLOW_MODE1_DATA_ENABLE, align 4
  %112 = call i32 @ecore_wr(%struct.ecore_hwfn* %106, %struct.ecore_ptt* %107, i32 %110, i32 %111)
  br label %113

113:                                              ; preds = %83, %39
  %114 = load %struct.dbg_bus_storm_data*, %struct.dbg_bus_storm_data** %10, align 8
  %115 = getelementptr inbounds %struct.dbg_bus_storm_data, %struct.dbg_bus_storm_data* %114, i32 0, i32 5
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %131

118:                                              ; preds = %113
  %119 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %120 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* @SEM_FAST_REG_FILTER_CID, align 4
  %123 = add nsw i32 %121, %122
  %124 = load %struct.dbg_bus_storm_data*, %struct.dbg_bus_storm_data** %10, align 8
  %125 = getelementptr inbounds %struct.dbg_bus_storm_data, %struct.dbg_bus_storm_data* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @ecore_wr(%struct.ecore_hwfn* %119, %struct.ecore_ptt* %120, i32 %123, i32 %126)
  %128 = load i32, i32* @SEM_FILTER_CID_EN_MASK, align 4
  %129 = load i32, i32* %9, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %9, align 4
  br label %131

131:                                              ; preds = %118, %113
  %132 = load %struct.dbg_bus_storm_data*, %struct.dbg_bus_storm_data** %10, align 8
  %133 = getelementptr inbounds %struct.dbg_bus_storm_data, %struct.dbg_bus_storm_data* %132, i32 0, i32 4
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %193

136:                                              ; preds = %131
  %137 = load %struct.dbg_bus_storm_data*, %struct.dbg_bus_storm_data** %10, align 8
  %138 = getelementptr inbounds %struct.dbg_bus_storm_data, %struct.dbg_bus_storm_data* %137, i32 0, i32 3
  store %union.dbg_bus_storm_eid_params* %138, %union.dbg_bus_storm_eid_params** %13, align 8
  %139 = load %struct.dbg_bus_storm_data*, %struct.dbg_bus_storm_data** %10, align 8
  %140 = getelementptr inbounds %struct.dbg_bus_storm_data, %struct.dbg_bus_storm_data* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %167

143:                                              ; preds = %136
  %144 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %145 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %146 = load i32, i32* %8, align 4
  %147 = load i32, i32* @SEM_FAST_REG_EVENT_ID_RANGE_STRT, align 4
  %148 = add nsw i32 %146, %147
  %149 = load %union.dbg_bus_storm_eid_params*, %union.dbg_bus_storm_eid_params** %13, align 8
  %150 = bitcast %union.dbg_bus_storm_eid_params* %149 to %struct.TYPE_5__*
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @ecore_wr(%struct.ecore_hwfn* %144, %struct.ecore_ptt* %145, i32 %148, i32 %152)
  %154 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %155 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %156 = load i32, i32* %8, align 4
  %157 = load i32, i32* @SEM_FAST_REG_EVENT_ID_RANGE_END, align 4
  %158 = add nsw i32 %156, %157
  %159 = load %union.dbg_bus_storm_eid_params*, %union.dbg_bus_storm_eid_params** %13, align 8
  %160 = bitcast %union.dbg_bus_storm_eid_params* %159 to %struct.TYPE_5__*
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @ecore_wr(%struct.ecore_hwfn* %154, %struct.ecore_ptt* %155, i32 %158, i32 %162)
  %164 = load i32, i32* @SEM_FILTER_EID_RANGE_EN_MASK, align 4
  %165 = load i32, i32* %9, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %9, align 4
  br label %192

167:                                              ; preds = %136
  %168 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %169 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %170 = load i32, i32* %8, align 4
  %171 = load i32, i32* @SEM_FAST_REG_FILTER_EVENT_ID, align 4
  %172 = add nsw i32 %170, %171
  %173 = load %union.dbg_bus_storm_eid_params*, %union.dbg_bus_storm_eid_params** %13, align 8
  %174 = bitcast %union.dbg_bus_storm_eid_params* %173 to %struct.TYPE_6__*
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @ecore_wr(%struct.ecore_hwfn* %168, %struct.ecore_ptt* %169, i32 %172, i32 %176)
  %178 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %179 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %180 = load i32, i32* %8, align 4
  %181 = load i32, i32* @SEM_FAST_REG_EVENT_ID_MASK, align 4
  %182 = add nsw i32 %180, %181
  %183 = load %union.dbg_bus_storm_eid_params*, %union.dbg_bus_storm_eid_params** %13, align 8
  %184 = bitcast %union.dbg_bus_storm_eid_params* %183 to %struct.TYPE_6__*
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = xor i32 %186, -1
  %188 = call i32 @ecore_wr(%struct.ecore_hwfn* %178, %struct.ecore_ptt* %179, i32 %182, i32 %187)
  %189 = load i32, i32* @SEM_FILTER_EID_MASK_EN_MASK, align 4
  %190 = load i32, i32* %9, align 4
  %191 = or i32 %190, %189
  store i32 %191, i32* %9, align 4
  br label %192

192:                                              ; preds = %167, %143
  br label %193

193:                                              ; preds = %192, %131
  %194 = load i32, i32* %9, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %204

196:                                              ; preds = %193
  %197 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %198 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %199 = load i32, i32* %8, align 4
  %200 = load i32, i32* @SEM_FAST_REG_RECORD_FILTER_ENABLE, align 4
  %201 = add nsw i32 %199, %200
  %202 = load i32, i32* %9, align 4
  %203 = call i32 @ecore_wr(%struct.ecore_hwfn* %197, %struct.ecore_ptt* %198, i32 %201, i32 %202)
  br label %204

204:                                              ; preds = %196, %193
  ret void
}

declare dso_local i32 @ecore_wr(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
