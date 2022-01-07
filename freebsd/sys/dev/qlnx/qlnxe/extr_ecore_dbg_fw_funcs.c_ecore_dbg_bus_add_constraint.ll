; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_dbg_bus_add_constraint.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_dbg_bus_add_constraint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }
%struct.ecore_hwfn = type { %struct.dbg_tools_data }
%struct.dbg_tools_data = type { %struct.dbg_bus_data }
%struct.dbg_bus_data = type { i32, i32, i64, %struct.dbg_bus_trigger_state_data*, i64, i32 }
%struct.dbg_bus_trigger_state_data = type { i32 }
%struct.ecore_ptt = type { i32 }

@ECORE_MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [170 x i8] c"dbg_bus_add_constraint: op = %d, data_val = 0x%x, data_mask = 0x%x, compare_frame = %d, frame_bit = %d, cycle_offset = %d, dword_offset_in_cycle = %d, is_mandatory = %d\0A\00", align 1
@DBG_STATUS_CANT_ADD_CONSTRAINT = common dso_local global i32 0, align 4
@MAX_CONSTRAINTS = common dso_local global i32 0, align 4
@DBG_STATUS_TOO_MANY_CONSTRAINTS = common dso_local global i32 0, align 4
@MAX_DBG_BUS_CONSTRAINT_OPS = common dso_local global i32 0, align 4
@DBG_STATUS_INVALID_ARGS = common dso_local global i32 0, align 4
@DBG_BUS_CONSTRAINT_OP_EQ = common dso_local global i32 0, align 4
@DBG_BUS_CONSTRAINT_OP_NE = common dso_local global i32 0, align 4
@VALUES_PER_CYCLE = common dso_local global i32 0, align 4
@DBG_BUS_TRIGGER_STATE_DATA_BLOCK_SHIFTED_ENABLE_MASK = common dso_local global i32 0, align 4
@DBG_STATUS_INVALID_TRIGGER_DWORD_OFFSET = common dso_local global i32 0, align 4
@DBG_BUS_TRIGGER_STATE_DATA_CONSTRAINT_DWORD_MASK = common dso_local global i32 0, align 4
@s_constraint_op_defs = common dso_local global %struct.TYPE_2__* null, align 8
@DBG_STATUS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_dbg_bus_add_constraint(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.ecore_hwfn*, align 8
  %13 = alloca %struct.ecore_ptt*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.dbg_tools_data*, align 8
  %23 = alloca %struct.dbg_bus_data*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.dbg_bus_trigger_state_data*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %12, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %13, align 8
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  %31 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %12, align 8
  %32 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %31, i32 0, i32 0
  store %struct.dbg_tools_data* %32, %struct.dbg_tools_data** %22, align 8
  %33 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %22, align 8
  %34 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %33, i32 0, i32 0
  store %struct.dbg_bus_data* %34, %struct.dbg_bus_data** %23, align 8
  store i32 0, i32* %25, align 4
  %35 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %12, align 8
  %36 = load i32, i32* @ECORE_MSG_DEBUG, align 4
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* %16, align 4
  %40 = load i32, i32* %17, align 4
  %41 = load i32, i32* %18, align 4
  %42 = load i32, i32* %19, align 4
  %43 = load i32, i32* %20, align 4
  %44 = load i32, i32* %21, align 4
  %45 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %35, i32 %36, i8* getelementptr inbounds ([170 x i8], [170 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38, i32 %39, i32 %40, i32 %41, i32 %42, i32 %43, i32 %44)
  %46 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %23, align 8
  %47 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %10
  %51 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %22, align 8
  %52 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %50
  %57 = load i32, i32* @DBG_STATUS_CANT_ADD_CONSTRAINT, align 4
  store i32 %57, i32* %11, align 4
  br label %300

58:                                               ; preds = %50, %10
  %59 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %23, align 8
  %60 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %58
  %64 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %23, align 8
  %65 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %63
  %69 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %23, align 8
  %70 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %68
  %74 = load i32, i32* @DBG_STATUS_CANT_ADD_CONSTRAINT, align 4
  store i32 %74, i32* %11, align 4
  br label %300

75:                                               ; preds = %68, %63, %58
  %76 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %23, align 8
  %77 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @MAX_CONSTRAINTS, align 4
  %80 = icmp sge i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = load i32, i32* @DBG_STATUS_TOO_MANY_CONSTRAINTS, align 4
  store i32 %82, i32* %11, align 4
  br label %300

83:                                               ; preds = %75
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* @MAX_DBG_BUS_CONSTRAINT_OPS, align 4
  %86 = icmp uge i32 %84, %85
  br i1 %86, label %101, label %87

87:                                               ; preds = %83
  %88 = load i32, i32* %18, align 4
  %89 = icmp sgt i32 %88, 1
  br i1 %89, label %101, label %90

90:                                               ; preds = %87
  %91 = load i32, i32* %20, align 4
  %92 = icmp sgt i32 %91, 3
  br i1 %92, label %101, label %93

93:                                               ; preds = %90
  %94 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %23, align 8
  %95 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load i32, i32* %19, align 4
  %100 = icmp sgt i32 %99, 3
  br i1 %100, label %101, label %103

101:                                              ; preds = %98, %90, %87, %83
  %102 = load i32, i32* @DBG_STATUS_INVALID_ARGS, align 4
  store i32 %102, i32* %11, align 4
  br label %300

103:                                              ; preds = %98, %93
  %104 = load i32, i32* %17, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %116

106:                                              ; preds = %103
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* @DBG_BUS_CONSTRAINT_OP_EQ, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %116

110:                                              ; preds = %106
  %111 = load i32, i32* %14, align 4
  %112 = load i32, i32* @DBG_BUS_CONSTRAINT_OP_NE, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %110
  %115 = load i32, i32* @DBG_STATUS_INVALID_ARGS, align 4
  store i32 %115, i32* %11, align 4
  br label %300

116:                                              ; preds = %110, %106, %103
  %117 = load i32, i32* %19, align 4
  %118 = load i32, i32* @VALUES_PER_CYCLE, align 4
  %119 = mul nsw i32 %117, %118
  %120 = load i32, i32* %20, align 4
  %121 = add nsw i32 %119, %120
  store i32 %121, i32* %24, align 4
  %122 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %23, align 8
  %123 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %162, label %126

126:                                              ; preds = %116
  %127 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %23, align 8
  %128 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = sub nsw i32 %129, 1
  store i32 %130, i32* %26, align 4
  %131 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %23, align 8
  %132 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %131, i32 0, i32 3
  %133 = load %struct.dbg_bus_trigger_state_data*, %struct.dbg_bus_trigger_state_data** %132, align 8
  %134 = load i32, i32* %26, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.dbg_bus_trigger_state_data, %struct.dbg_bus_trigger_state_data* %133, i64 %135
  store %struct.dbg_bus_trigger_state_data* %136, %struct.dbg_bus_trigger_state_data** %27, align 8
  %137 = load %struct.dbg_bus_trigger_state_data*, %struct.dbg_bus_trigger_state_data** %27, align 8
  %138 = getelementptr inbounds %struct.dbg_bus_trigger_state_data, %struct.dbg_bus_trigger_state_data* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @DBG_BUS_TRIGGER_STATE_DATA_BLOCK_SHIFTED_ENABLE_MASK, align 4
  %141 = call i32 @GET_FIELD(i32 %139, i32 %140)
  %142 = load i32, i32* %20, align 4
  %143 = shl i32 1, %142
  %144 = and i32 %141, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %148, label %146

146:                                              ; preds = %126
  %147 = load i32, i32* @DBG_STATUS_INVALID_TRIGGER_DWORD_OFFSET, align 4
  store i32 %147, i32* %11, align 4
  br label %300

148:                                              ; preds = %126
  %149 = load %struct.dbg_bus_trigger_state_data*, %struct.dbg_bus_trigger_state_data** %27, align 8
  %150 = getelementptr inbounds %struct.dbg_bus_trigger_state_data, %struct.dbg_bus_trigger_state_data* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @DBG_BUS_TRIGGER_STATE_DATA_CONSTRAINT_DWORD_MASK, align 4
  %153 = load %struct.dbg_bus_trigger_state_data*, %struct.dbg_bus_trigger_state_data** %27, align 8
  %154 = getelementptr inbounds %struct.dbg_bus_trigger_state_data, %struct.dbg_bus_trigger_state_data* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @DBG_BUS_TRIGGER_STATE_DATA_CONSTRAINT_DWORD_MASK, align 4
  %157 = call i32 @GET_FIELD(i32 %155, i32 %156)
  %158 = load i32, i32* %20, align 4
  %159 = shl i32 1, %158
  %160 = or i32 %157, %159
  %161 = call i32 @SET_FIELD(i32 %151, i32 %152, i32 %160)
  br label %162

162:                                              ; preds = %148, %116
  %163 = load i32, i32* %14, align 4
  %164 = load i32, i32* @DBG_BUS_CONSTRAINT_OP_EQ, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %170, label %166

166:                                              ; preds = %162
  %167 = load i32, i32* %14, align 4
  %168 = load i32, i32* @DBG_BUS_CONSTRAINT_OP_NE, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %173

170:                                              ; preds = %166, %162
  %171 = load i32, i32* %16, align 4
  %172 = xor i32 %171, -1
  store i32 %172, i32* %16, align 4
  br label %224

173:                                              ; preds = %166
  %174 = load i32, i32* %16, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %178, label %176

176:                                              ; preds = %173
  %177 = load i32, i32* @DBG_STATUS_INVALID_ARGS, align 4
  store i32 %177, i32* %11, align 4
  br label %300

178:                                              ; preds = %173
  store i32 0, i32* %28, align 4
  br label %179

179:                                              ; preds = %190, %178
  %180 = load i32, i32* %28, align 4
  %181 = icmp slt i32 %180, 32
  br i1 %181, label %182, label %187

182:                                              ; preds = %179
  %183 = load i32, i32* %16, align 4
  %184 = and i32 %183, 1
  %185 = icmp ne i32 %184, 0
  %186 = xor i1 %185, true
  br label %187

187:                                              ; preds = %182, %179
  %188 = phi i1 [ false, %179 ], [ %186, %182 ]
  br i1 %188, label %189, label %195

189:                                              ; preds = %187
  br label %190

190:                                              ; preds = %189
  %191 = load i32, i32* %28, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %28, align 4
  %193 = load i32, i32* %16, align 4
  %194 = ashr i32 %193, 1
  store i32 %194, i32* %16, align 4
  br label %179

195:                                              ; preds = %187
  store i32 0, i32* %29, align 4
  br label %196

196:                                              ; preds = %208, %195
  %197 = load i32, i32* %29, align 4
  %198 = load i32, i32* %28, align 4
  %199 = sub nsw i32 32, %198
  %200 = icmp slt i32 %197, %199
  br i1 %200, label %201, label %205

201:                                              ; preds = %196
  %202 = load i32, i32* %16, align 4
  %203 = and i32 %202, 1
  %204 = icmp ne i32 %203, 0
  br label %205

205:                                              ; preds = %201, %196
  %206 = phi i1 [ false, %196 ], [ %204, %201 ]
  br i1 %206, label %207, label %213

207:                                              ; preds = %205
  br label %208

208:                                              ; preds = %207
  %209 = load i32, i32* %29, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %29, align 4
  %211 = load i32, i32* %16, align 4
  %212 = ashr i32 %211, 1
  store i32 %212, i32* %16, align 4
  br label %196

213:                                              ; preds = %205
  %214 = load i32, i32* %16, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %213
  %217 = load i32, i32* @DBG_STATUS_INVALID_ARGS, align 4
  store i32 %217, i32* %11, align 4
  br label %300

218:                                              ; preds = %213
  %219 = load i32, i32* %28, align 4
  %220 = shl i32 %219, 5
  %221 = load i32, i32* %29, align 4
  %222 = sub nsw i32 %221, 1
  %223 = or i32 %220, %222
  store i32 %223, i32* %25, align 4
  br label %224

224:                                              ; preds = %218, %170
  %225 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %12, align 8
  %226 = load %struct.ecore_ptt*, %struct.ecore_ptt** %13, align 8
  %227 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %22, align 8
  %228 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %228, i32 0, i32 2
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  %232 = zext i1 %231 to i64
  %233 = select i1 %231, i32 1, i32 0
  %234 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %22, align 8
  %235 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_constraint_op_defs, align 8
  %239 = load i32, i32* %14, align 4
  %240 = zext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %238, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = load i32, i32* %15, align 4
  %245 = load i32, i32* %16, align 4
  %246 = load i32, i32* %18, align 4
  %247 = load i32, i32* %17, align 4
  %248 = icmp ne i32 %247, 0
  %249 = zext i1 %248 to i64
  %250 = select i1 %248, i32 0, i32 1
  %251 = load i32, i32* %24, align 4
  %252 = load i32, i32* %25, align 4
  %253 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_constraint_op_defs, align 8
  %254 = load i32, i32* %14, align 4
  %255 = zext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %253, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %256, i32 0, i32 1
  %258 = load i64, i64* %257, align 8
  %259 = icmp ne i64 %258, 0
  %260 = zext i1 %259 to i64
  %261 = select i1 %259, i32 1, i32 0
  %262 = load i32, i32* %21, align 4
  %263 = icmp ne i32 %262, 0
  %264 = zext i1 %263 to i64
  %265 = select i1 %263, i32 1, i32 0
  %266 = call i32 @ecore_bus_set_constraint(%struct.ecore_hwfn* %225, %struct.ecore_ptt* %226, i32 %233, i32 %237, i32 %243, i32 %244, i32 %245, i32 %246, i32 %250, i32 %251, i32 %252, i32 %261, i32 %265)
  %267 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %22, align 8
  %268 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %294, label %272

272:                                              ; preds = %224
  store i32 1, i32* %30, align 4
  br label %273

273:                                              ; preds = %290, %272
  %274 = load i32, i32* %30, align 4
  %275 = load i32, i32* @MAX_CONSTRAINTS, align 4
  %276 = icmp slt i32 %274, %275
  br i1 %276, label %277, label %293

277:                                              ; preds = %273
  %278 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %12, align 8
  %279 = load %struct.ecore_ptt*, %struct.ecore_ptt** %13, align 8
  %280 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %23, align 8
  %281 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %280, i32 0, i32 2
  %282 = load i64, i64* %281, align 8
  %283 = icmp ne i64 %282, 0
  %284 = zext i1 %283 to i64
  %285 = select i1 %283, i32 1, i32 0
  %286 = load i32, i32* %30, align 4
  %287 = load i32, i32* @DBG_BUS_CONSTRAINT_OP_EQ, align 4
  %288 = load i32, i32* %24, align 4
  %289 = call i32 @ecore_bus_set_constraint(%struct.ecore_hwfn* %278, %struct.ecore_ptt* %279, i32 %285, i32 %286, i32 %287, i32 0, i32 -1, i32 0, i32 1, i32 %288, i32 0, i32 0, i32 1)
  br label %290

290:                                              ; preds = %277
  %291 = load i32, i32* %30, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %30, align 4
  br label %273

293:                                              ; preds = %273
  br label %294

294:                                              ; preds = %293, %224
  %295 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %23, align 8
  %296 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %296, align 4
  %299 = load i32, i32* @DBG_STATUS_OK, align 4
  store i32 %299, i32* %11, align 4
  br label %300

300:                                              ; preds = %294, %216, %176, %146, %114, %101, %81, %73, %56
  %301 = load i32, i32* %11, align 4
  ret i32 %301
}

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @GET_FIELD(i32, i32) #1

declare dso_local i32 @SET_FIELD(i32, i32, i32) #1

declare dso_local i32 @ecore_bus_set_constraint(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
