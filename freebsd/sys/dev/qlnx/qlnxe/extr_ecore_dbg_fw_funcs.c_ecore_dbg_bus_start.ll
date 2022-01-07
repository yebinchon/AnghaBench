; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_dbg_bus_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_dbg_bus_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.dbg_tools_data }
%struct.dbg_tools_data = type { %struct.dbg_bus_data }
%struct.dbg_bus_data = type { i64, %struct.TYPE_4__*, i64, %struct.TYPE_3__*, i64, i64, i64, i64, i64, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ecore_ptt = type { i32 }

@ECORE_MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"dbg_bus_start\0A\00", align 1
@DBG_BUS_STATE_READY = common dso_local global i64 0, align 8
@DBG_STATUS_DBG_BLOCK_NOT_RESET = common dso_local global i32 0, align 4
@DBG_STATUS_NO_INPUT_ENABLED = common dso_local global i32 0, align 4
@DBG_STATUS_TOO_MANY_INPUTS = common dso_local global i32 0, align 4
@DBG_STATUS_OK = common dso_local global i32 0, align 4
@DBG_BUS_FILTER_TYPE_ON = common dso_local global i32 0, align 4
@DBG_BUS_FILTER_TYPE_PRE = common dso_local global i32 0, align 4
@DBG_BUS_FILTER_TYPE_POST = common dso_local global i32 0, align 4
@DBG_BUS_FILTER_TYPE_OFF = common dso_local global i32 0, align 4
@DBG_REG_FILTER_ENABLE = common dso_local global i32 0, align 4
@DBG_REG_TIMESTAMP = common dso_local global i32 0, align 4
@MAX_BLOCK_ID = common dso_local global i64 0, align 8
@DBG_BUS_BLOCK_DATA_ENABLE_MASK = common dso_local global i32 0, align 4
@BLOCK_DBG = common dso_local global i64 0, align 8
@DBG_BUS_BLOCK_DATA_RIGHT_SHIFT = common dso_local global i32 0, align 4
@DBG_BUS_BLOCK_DATA_FORCE_VALID_MASK = common dso_local global i32 0, align 4
@DBG_BUS_BLOCK_DATA_FORCE_FRAME_MASK = common dso_local global i32 0, align 4
@MAX_DBG_STORMS = common dso_local global i64 0, align 8
@DBG_BUS_STATE_RECORDING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_dbg_bus_start(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_ptt*, align 8
  %6 = alloca %struct.dbg_tools_data*, align 8
  %7 = alloca %struct.dbg_bus_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %5, align 8
  %12 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %13 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %12, i32 0, i32 0
  store %struct.dbg_tools_data* %13, %struct.dbg_tools_data** %6, align 8
  %14 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %6, align 8
  %15 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %14, i32 0, i32 0
  store %struct.dbg_bus_data* %15, %struct.dbg_bus_data** %7, align 8
  %16 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %17 = load i32, i32* @ECORE_MSG_DEBUG, align 4
  %18 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %16, i32 %17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %7, align 8
  %20 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @DBG_BUS_STATE_READY, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @DBG_STATUS_DBG_BLOCK_NOT_RESET, align 4
  store i32 %25, i32* %3, align 4
  br label %268

26:                                               ; preds = %2
  %27 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %7, align 8
  %28 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %43, label %31

31:                                               ; preds = %26
  %32 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %7, align 8
  %33 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %31
  %37 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %7, align 8
  %38 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %37, i32 0, i32 9
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* @DBG_STATUS_NO_INPUT_ENABLED, align 4
  store i32 %42, i32* %3, align 4
  br label %268

43:                                               ; preds = %36, %31, %26
  %44 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %7, align 8
  %45 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %7, align 8
  %50 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* @DBG_STATUS_TOO_MANY_INPUTS, align 4
  store i32 %54, i32* %3, align 4
  br label %268

55:                                               ; preds = %48, %43
  %56 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %57 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %58 = call i32 @ecore_config_dbg_block_framing_mode(%struct.ecore_hwfn* %56, %struct.ecore_ptt* %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* @DBG_STATUS_OK, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i32, i32* %9, align 4
  store i32 %62, i32* %3, align 4
  br label %268

63:                                               ; preds = %55
  %64 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %7, align 8
  %65 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %63
  %69 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %70 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %71 = call i32 @ecore_config_storm_inputs(%struct.ecore_hwfn* %69, %struct.ecore_ptt* %70)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* @DBG_STATUS_OK, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = load i32, i32* %9, align 4
  store i32 %75, i32* %3, align 4
  br label %268

76:                                               ; preds = %68
  br label %77

77:                                               ; preds = %76, %63
  %78 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %7, align 8
  %79 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %84 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %85 = call i32 @ecore_config_block_inputs(%struct.ecore_hwfn* %83, %struct.ecore_ptt* %84)
  br label %86

86:                                               ; preds = %82, %77
  %87 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %7, align 8
  %88 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %87, i32 0, i32 8
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %127

91:                                               ; preds = %86
  %92 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %7, align 8
  %93 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %92, i32 0, i32 7
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %124

96:                                               ; preds = %91
  %97 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %7, align 8
  %98 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %97, i32 0, i32 6
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %112

101:                                              ; preds = %96
  %102 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %7, align 8
  %103 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %102, i32 0, i32 5
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = load i32, i32* @DBG_BUS_FILTER_TYPE_ON, align 4
  br label %110

108:                                              ; preds = %101
  %109 = load i32, i32* @DBG_BUS_FILTER_TYPE_PRE, align 4
  br label %110

110:                                              ; preds = %108, %106
  %111 = phi i32 [ %107, %106 ], [ %109, %108 ]
  store i32 %111, i32* %8, align 4
  br label %123

112:                                              ; preds = %96
  %113 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %7, align 8
  %114 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %113, i32 0, i32 5
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %112
  %118 = load i32, i32* @DBG_BUS_FILTER_TYPE_POST, align 4
  br label %121

119:                                              ; preds = %112
  %120 = load i32, i32* @DBG_BUS_FILTER_TYPE_OFF, align 4
  br label %121

121:                                              ; preds = %119, %117
  %122 = phi i32 [ %118, %117 ], [ %120, %119 ]
  store i32 %122, i32* %8, align 4
  br label %123

123:                                              ; preds = %121, %110
  br label %126

124:                                              ; preds = %91
  %125 = load i32, i32* @DBG_BUS_FILTER_TYPE_ON, align 4
  store i32 %125, i32* %8, align 4
  br label %126

126:                                              ; preds = %124, %123
  br label %129

127:                                              ; preds = %86
  %128 = load i32, i32* @DBG_BUS_FILTER_TYPE_OFF, align 4
  store i32 %128, i32* %8, align 4
  br label %129

129:                                              ; preds = %127, %126
  %130 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %131 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %132 = load i32, i32* @DBG_REG_FILTER_ENABLE, align 4
  %133 = load i32, i32* %8, align 4
  %134 = call i32 @ecore_wr(%struct.ecore_hwfn* %130, %struct.ecore_ptt* %131, i32 %132, i32 %133)
  %135 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %136 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %137 = load i32, i32* @DBG_REG_TIMESTAMP, align 4
  %138 = call i32 @ecore_wr(%struct.ecore_hwfn* %135, %struct.ecore_ptt* %136, i32 %137, i32 0)
  %139 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %140 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %141 = call i32 @ecore_bus_enable_dbg_block(%struct.ecore_hwfn* %139, %struct.ecore_ptt* %140, i32 1)
  %142 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %6, align 8
  %143 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %143, i32 0, i32 4
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %227

147:                                              ; preds = %129
  store i64 0, i64* %10, align 8
  br label %148

148:                                              ; preds = %223, %147
  %149 = load i64, i64* %10, align 8
  %150 = load i64, i64* @MAX_BLOCK_ID, align 8
  %151 = icmp ult i64 %149, %150
  br i1 %151, label %152, label %226

152:                                              ; preds = %148
  %153 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %6, align 8
  %154 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %154, i32 0, i32 3
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %155, align 8
  %157 = load i64, i64* %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @DBG_BUS_BLOCK_DATA_ENABLE_MASK, align 4
  %162 = call i32 @GET_FIELD(i32 %160, i32 %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %152
  %165 = load i64, i64* %10, align 8
  %166 = load i64, i64* @BLOCK_DBG, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %164, %152
  br label %223

169:                                              ; preds = %164
  %170 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %171 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %172 = load i64, i64* %10, align 8
  %173 = trunc i64 %172 to i32
  %174 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %6, align 8
  %175 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %175, i32 0, i32 3
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** %176, align 8
  %178 = load i64, i64* %10, align 8
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %6, align 8
  %183 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %183, i32 0, i32 3
  %185 = load %struct.TYPE_3__*, %struct.TYPE_3__** %184, align 8
  %186 = load i64, i64* %10, align 8
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @DBG_BUS_BLOCK_DATA_ENABLE_MASK, align 4
  %191 = call i32 @GET_FIELD(i32 %189, i32 %190)
  %192 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %6, align 8
  %193 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %193, i32 0, i32 3
  %195 = load %struct.TYPE_3__*, %struct.TYPE_3__** %194, align 8
  %196 = load i64, i64* %10, align 8
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @DBG_BUS_BLOCK_DATA_RIGHT_SHIFT, align 4
  %201 = call i32 @GET_FIELD(i32 %199, i32 %200)
  %202 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %6, align 8
  %203 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %203, i32 0, i32 3
  %205 = load %struct.TYPE_3__*, %struct.TYPE_3__** %204, align 8
  %206 = load i64, i64* %10, align 8
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @DBG_BUS_BLOCK_DATA_FORCE_VALID_MASK, align 4
  %211 = call i32 @GET_FIELD(i32 %209, i32 %210)
  %212 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %6, align 8
  %213 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %213, i32 0, i32 3
  %215 = load %struct.TYPE_3__*, %struct.TYPE_3__** %214, align 8
  %216 = load i64, i64* %10, align 8
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %215, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @DBG_BUS_BLOCK_DATA_FORCE_FRAME_MASK, align 4
  %221 = call i32 @GET_FIELD(i32 %219, i32 %220)
  %222 = call i32 @ecore_config_dbg_line(%struct.ecore_hwfn* %170, %struct.ecore_ptt* %171, i32 %173, i32 %181, i32 %191, i32 %201, i32 %211, i32 %221)
  br label %223

223:                                              ; preds = %169, %168
  %224 = load i64, i64* %10, align 8
  %225 = add i64 %224, 1
  store i64 %225, i64* %10, align 8
  br label %148

226:                                              ; preds = %148
  br label %227

227:                                              ; preds = %226, %129
  %228 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %229 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %230 = call i32 @ecore_config_dbg_block_client_mask(%struct.ecore_hwfn* %228, %struct.ecore_ptt* %229)
  %231 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %6, align 8
  %232 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %232, i32 0, i32 2
  %234 = load i64, i64* %233, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %262

236:                                              ; preds = %227
  store i64 0, i64* %11, align 8
  br label %237

237:                                              ; preds = %258, %236
  %238 = load i64, i64* %11, align 8
  %239 = load i64, i64* @MAX_DBG_STORMS, align 8
  %240 = icmp ult i64 %238, %239
  br i1 %240, label %241, label %261

241:                                              ; preds = %237
  %242 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %6, align 8
  %243 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %243, i32 0, i32 1
  %245 = load %struct.TYPE_4__*, %struct.TYPE_4__** %244, align 8
  %246 = load i64, i64* %11, align 8
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %257

251:                                              ; preds = %241
  %252 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %253 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %254 = load i64, i64* %11, align 8
  %255 = trunc i64 %254 to i32
  %256 = call i32 @ecore_bus_enable_storm(%struct.ecore_hwfn* %252, %struct.ecore_ptt* %253, i32 %255)
  br label %257

257:                                              ; preds = %251, %241
  br label %258

258:                                              ; preds = %257
  %259 = load i64, i64* %11, align 8
  %260 = add i64 %259, 1
  store i64 %260, i64* %11, align 8
  br label %237

261:                                              ; preds = %237
  br label %262

262:                                              ; preds = %261, %227
  %263 = load i64, i64* @DBG_BUS_STATE_RECORDING, align 8
  %264 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %6, align 8
  %265 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %265, i32 0, i32 0
  store i64 %263, i64* %266, align 8
  %267 = load i32, i32* @DBG_STATUS_OK, align 4
  store i32 %267, i32* %3, align 4
  br label %268

268:                                              ; preds = %262, %74, %61, %53, %41, %24
  %269 = load i32, i32* %3, align 4
  ret i32 %269
}

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*) #1

declare dso_local i32 @ecore_config_dbg_block_framing_mode(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

declare dso_local i32 @ecore_config_storm_inputs(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

declare dso_local i32 @ecore_config_block_inputs(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

declare dso_local i32 @ecore_wr(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32) #1

declare dso_local i32 @ecore_bus_enable_dbg_block(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

declare dso_local i32 @GET_FIELD(i32, i32) #1

declare dso_local i32 @ecore_config_dbg_line(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ecore_config_dbg_block_client_mask(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

declare dso_local i32 @ecore_bus_enable_storm(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
