; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_wr_mbox_meat_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_wr_mbox_meat_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.port_tx_state = type { i32 }
%struct.fw_debug_cmd = type { i32 }

@t4_wr_mbox_meat_timeout.delay = internal constant [9 x i32] [i32 1, i32 1, i32 3, i32 5, i32 10, i32 10, i32 20, i32 50, i32 100], align 16
@A_CIM_PF_MAILBOX_DATA = common dso_local global i32 0, align 4
@A_CIM_PF_MAILBOX_CTRL = common dso_local global i32 0, align 4
@MBOX_LEN = common dso_local global i32 0, align 4
@MAX_NPORTS = common dso_local global i32 0, align 4
@CHK_MBOX_ACCESS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IS_VF = common dso_local global i32 0, align 4
@FW_T6VF_MBDATA_BASE_ADDR = common dso_local global i32 0, align 4
@FW_T4VF_MBDATA_BASE_ADDR = common dso_local global i32 0, align 4
@A_CIM_VF_EXT_MAILBOX_CTRL = common dso_local global i32 0, align 4
@X_MBOWNER_NONE = common dso_local global i32 0, align 4
@X_MBOWNER_PL = common dso_local global i32 0, align 4
@X_MBOWNER_FW = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@F_MBMSGVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"VLD\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"cmd\00", align 1
@A_PCIE_FW = common dso_local global i32 0, align 4
@F_PCIE_FW_ERR = common dso_local global i32 0, align 4
@X_CIM_PF_NOACCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"rpl\00", align 1
@FW_DEBUG_CMD = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"command %#x in mbox %d timed out (0x%08x).\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"cmdsent\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"current\00", align 1
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_wr_mbox_meat_timeout(%struct.adapter* %0, i32 %1, i8* %2, i32 %3, i8* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.adapter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i64, align 8
  %30 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @A_CIM_PF_MAILBOX_DATA, align 4
  %33 = call i32 @PF_REG(i32 %31, i32 %32)
  store i32 %33, i32* %23, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @A_CIM_PF_MAILBOX_CTRL, align 4
  %36 = call i32 @PF_REG(i32 %34, i32 %35)
  store i32 %36, i32* %24, align 4
  %37 = load i32, i32* @MBOX_LEN, align 4
  %38 = sdiv i32 %37, 8
  %39 = zext i32 %38 to i64
  %40 = call i8* @llvm.stacksave()
  store i8* %40, i8** %26, align 8
  %41 = alloca i32, i64 %39, align 16
  store i64 %39, i64* %27, align 8
  %42 = load i32, i32* @MAX_NPORTS, align 4
  %43 = zext i32 %42 to i64
  %44 = alloca %struct.port_tx_state, i64 %43, align 16
  store i64 %43, i64* %29, align 8
  %45 = load %struct.adapter*, %struct.adapter** %9, align 8
  %46 = getelementptr inbounds %struct.adapter, %struct.adapter* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @CHK_MBOX_ACCESS, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %7
  %52 = load %struct.adapter*, %struct.adapter** %9, align 8
  %53 = call i32 @ASSERT_SYNCHRONIZED_OP(%struct.adapter* %52)
  br label %54

54:                                               ; preds = %51, %7
  %55 = load i32, i32* %12, align 4
  %56 = icmp sle i32 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %12, align 4
  %59 = and i32 %58, 15
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* @MBOX_LEN, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %61, %57, %54
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %8, align 4
  store i32 1, i32* %30, align 4
  br label %347

68:                                               ; preds = %61
  %69 = load %struct.adapter*, %struct.adapter** %9, align 8
  %70 = getelementptr inbounds %struct.adapter, %struct.adapter* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @IS_VF, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %68
  %76 = load %struct.adapter*, %struct.adapter** %9, align 8
  %77 = call i64 @is_t6(%struct.adapter* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = load i32, i32* @FW_T6VF_MBDATA_BASE_ADDR, align 4
  store i32 %80, i32* %23, align 4
  br label %83

81:                                               ; preds = %75
  %82 = load i32, i32* @FW_T4VF_MBDATA_BASE_ADDR, align 4
  store i32 %82, i32* %23, align 4
  br label %83

83:                                               ; preds = %81, %79
  %84 = load i32, i32* @A_CIM_VF_EXT_MAILBOX_CTRL, align 4
  %85 = call i32 @VF_CIM_REG(i32 %84)
  store i32 %85, i32* %24, align 4
  br label %86

86:                                               ; preds = %83, %68
  %87 = load i32, i32* %15, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  store i32 0, i32* %14, align 4
  %90 = load i32, i32* %15, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %15, align 4
  br label %92

92:                                               ; preds = %89, %86
  store i32 0, i32* %18, align 4
  br label %93

93:                                               ; preds = %107, %92
  %94 = load i32, i32* %18, align 4
  %95 = icmp slt i32 %94, 4
  br i1 %95, label %96, label %110

96:                                               ; preds = %93
  %97 = load %struct.adapter*, %struct.adapter** %9, align 8
  %98 = load i32, i32* %24, align 4
  %99 = call i32 @t4_read_reg(%struct.adapter* %97, i32 %98)
  store i32 %99, i32* %25, align 4
  %100 = load i32, i32* %25, align 4
  %101 = call i32 @G_MBOWNER(i32 %100)
  store i32 %101, i32* %16, align 4
  %102 = load i32, i32* %16, align 4
  %103 = load i32, i32* @X_MBOWNER_NONE, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %96
  br label %110

106:                                              ; preds = %96
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %18, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %18, align 4
  br label %93

110:                                              ; preds = %105, %93
  %111 = load i32, i32* %16, align 4
  %112 = load i32, i32* @X_MBOWNER_PL, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %114, label %129

114:                                              ; preds = %110
  %115 = load %struct.adapter*, %struct.adapter** %9, align 8
  %116 = call i32 @t4_report_fw_error(%struct.adapter* %115)
  %117 = load i32, i32* %16, align 4
  %118 = load i32, i32* @X_MBOWNER_FW, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %114
  %121 = load i32, i32* @EBUSY, align 4
  %122 = sub nsw i32 0, %121
  br label %126

123:                                              ; preds = %114
  %124 = load i32, i32* @ETIMEDOUT, align 4
  %125 = sub nsw i32 0, %124
  br label %126

126:                                              ; preds = %123, %120
  %127 = phi i32 [ %122, %120 ], [ %125, %123 ]
  store i32 %127, i32* %21, align 4
  %128 = load i32, i32* %21, align 4
  store i32 %128, i32* %8, align 4
  store i32 1, i32* %30, align 4
  br label %347

129:                                              ; preds = %110
  %130 = load i32, i32* %25, align 4
  %131 = load i32, i32* @F_MBMSGVALID, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %129
  %135 = load %struct.adapter*, %struct.adapter** %9, align 8
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* %23, align 4
  %138 = call i32 @CH_DUMP_MBOX(%struct.adapter* %135, i32 %136, i32 %137, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* null, i32 1)
  br label %139

139:                                              ; preds = %134, %129
  %140 = mul nuw i64 4, %39
  %141 = trunc i64 %140 to i32
  %142 = call i32 @memset(i32* %41, i32 0, i32 %141)
  %143 = bitcast i32* %41 to i8*
  %144 = load i8*, i8** %11, align 8
  %145 = bitcast i8* %144 to i32*
  %146 = load i32, i32* %12, align 4
  %147 = call i32 @memcpy(i8* %143, i32* %145, i32 %146)
  %148 = load %struct.adapter*, %struct.adapter** %9, align 8
  %149 = load i32, i32* %10, align 4
  %150 = call i32 @CH_DUMP_MBOX(%struct.adapter* %148, i32 %149, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %41, i32 0)
  store i32 0, i32* %18, align 4
  br label %151

151:                                              ; preds = %167, %139
  %152 = load i32, i32* %18, align 4
  %153 = call i32 @ARRAY_SIZE(i32* %41)
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %155, label %170

155:                                              ; preds = %151
  %156 = load %struct.adapter*, %struct.adapter** %9, align 8
  %157 = load i32, i32* %23, align 4
  %158 = load i32, i32* %18, align 4
  %159 = mul nsw i32 %158, 8
  %160 = add nsw i32 %157, %159
  %161 = load i32, i32* %18, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %41, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @be64_to_cpu(i32 %164)
  %166 = call i32 @t4_write_reg64(%struct.adapter* %156, i32 %160, i32 %165)
  br label %167

167:                                              ; preds = %155
  %168 = load i32, i32* %18, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %18, align 4
  br label %151

170:                                              ; preds = %151
  %171 = load %struct.adapter*, %struct.adapter** %9, align 8
  %172 = getelementptr inbounds %struct.adapter, %struct.adapter* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @IS_VF, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %170
  %178 = load %struct.adapter*, %struct.adapter** %9, align 8
  %179 = load i32, i32* %23, align 4
  %180 = call i32 @t4_read_reg(%struct.adapter* %178, i32 %179)
  br label %181

181:                                              ; preds = %177, %170
  %182 = load %struct.adapter*, %struct.adapter** %9, align 8
  %183 = load i32, i32* %24, align 4
  %184 = load i32, i32* @F_MBMSGVALID, align 4
  %185 = load i32, i32* @X_MBOWNER_FW, align 4
  %186 = call i32 @V_MBOWNER(i32 %185)
  %187 = or i32 %184, %186
  %188 = call i32 @t4_write_reg(%struct.adapter* %182, i32 %183, i32 %187)
  %189 = load %struct.adapter*, %struct.adapter** %9, align 8
  %190 = getelementptr inbounds %struct.port_tx_state, %struct.port_tx_state* %44, i64 0
  %191 = call i32 @read_tx_state(%struct.adapter* %189, %struct.port_tx_state* %190)
  store i32 1000, i32* %22, align 4
  store i32 0, i32* %20, align 4
  %192 = load i32, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @t4_wr_mbox_meat_timeout.delay, i64 0, i64 0), align 16
  store i32 %192, i32* %19, align 4
  store i32 0, i32* %28, align 4
  store i32 0, i32* %18, align 4
  br label %193

193:                                              ; preds = %310, %181
  %194 = load i32, i32* %18, align 4
  %195 = load i32, i32* %15, align 4
  %196 = icmp slt i32 %194, %195
  br i1 %196, label %197, label %314

197:                                              ; preds = %193
  %198 = load %struct.adapter*, %struct.adapter** %9, align 8
  %199 = getelementptr inbounds %struct.adapter, %struct.adapter* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @IS_VF, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %214, label %204

204:                                              ; preds = %197
  %205 = load %struct.adapter*, %struct.adapter** %9, align 8
  %206 = load i32, i32* @A_PCIE_FW, align 4
  %207 = call i32 @t4_read_reg(%struct.adapter* %205, i32 %206)
  store i32 %207, i32* %28, align 4
  %208 = load i32, i32* %28, align 4
  %209 = load i32, i32* @F_PCIE_FW_ERR, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %204
  br label %314

213:                                              ; preds = %204
  br label %214

214:                                              ; preds = %213, %197
  %215 = load i32, i32* %18, align 4
  %216 = load i32, i32* %22, align 4
  %217 = icmp sge i32 %215, %216
  br i1 %217, label %218, label %224

218:                                              ; preds = %214
  %219 = load %struct.adapter*, %struct.adapter** %9, align 8
  %220 = getelementptr inbounds %struct.port_tx_state, %struct.port_tx_state* %44, i64 0
  %221 = call i32 @check_tx_state(%struct.adapter* %219, %struct.port_tx_state* %220)
  %222 = load i32, i32* %18, align 4
  %223 = add nsw i32 %222, 1000
  store i32 %223, i32* %22, align 4
  br label %224

224:                                              ; preds = %218, %214
  %225 = load i32, i32* %14, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %242

227:                                              ; preds = %224
  %228 = load i32, i32* %20, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds [9 x i32], [9 x i32]* @t4_wr_mbox_meat_timeout.delay, i64 0, i64 %229
  %231 = load i32, i32* %230, align 4
  store i32 %231, i32* %19, align 4
  %232 = load i32, i32* %20, align 4
  %233 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([9 x i32], [9 x i32]* @t4_wr_mbox_meat_timeout.delay, i64 0, i64 0))
  %234 = sub nsw i32 %233, 1
  %235 = icmp slt i32 %232, %234
  br i1 %235, label %236, label %239

236:                                              ; preds = %227
  %237 = load i32, i32* %20, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %20, align 4
  br label %239

239:                                              ; preds = %236, %227
  %240 = load i32, i32* %19, align 4
  %241 = call i32 @msleep(i32 %240)
  br label %245

242:                                              ; preds = %224
  %243 = load i32, i32* %19, align 4
  %244 = call i32 @mdelay(i32 %243)
  br label %245

245:                                              ; preds = %242, %239
  %246 = load %struct.adapter*, %struct.adapter** %9, align 8
  %247 = load i32, i32* %24, align 4
  %248 = call i32 @t4_read_reg(%struct.adapter* %246, i32 %247)
  store i32 %248, i32* %16, align 4
  %249 = load i32, i32* %16, align 4
  %250 = load i32, i32* @X_CIM_PF_NOACCESS, align 4
  %251 = icmp eq i32 %249, %250
  br i1 %251, label %252, label %253

252:                                              ; preds = %245
  br label %310

253:                                              ; preds = %245
  %254 = load i32, i32* %16, align 4
  %255 = call i32 @G_MBOWNER(i32 %254)
  %256 = load i32, i32* @X_MBOWNER_PL, align 4
  %257 = icmp eq i32 %255, %256
  br i1 %257, label %258, label %309

258:                                              ; preds = %253
  %259 = load i32, i32* %16, align 4
  %260 = load i32, i32* @F_MBMSGVALID, align 4
  %261 = and i32 %259, %260
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %269, label %263

263:                                              ; preds = %258
  %264 = load %struct.adapter*, %struct.adapter** %9, align 8
  %265 = load i32, i32* %24, align 4
  %266 = load i32, i32* @X_MBOWNER_NONE, align 4
  %267 = call i32 @V_MBOWNER(i32 %266)
  %268 = call i32 @t4_write_reg(%struct.adapter* %264, i32 %265, i32 %267)
  br label %310

269:                                              ; preds = %258
  %270 = load %struct.adapter*, %struct.adapter** %9, align 8
  %271 = load i32, i32* @MBOX_LEN, align 4
  %272 = sdiv i32 %271, 8
  %273 = load i32, i32* %23, align 4
  %274 = call i32 @get_mbox_rpl(%struct.adapter* %270, i32* %41, i32 %272, i32 %273)
  %275 = load %struct.adapter*, %struct.adapter** %9, align 8
  %276 = load i32, i32* %10, align 4
  %277 = call i32 @CH_DUMP_MBOX(%struct.adapter* %275, i32 %276, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32* %41, i32 0)
  %278 = load %struct.adapter*, %struct.adapter** %9, align 8
  %279 = load i32, i32* %24, align 4
  %280 = load i32, i32* @X_MBOWNER_NONE, align 4
  %281 = call i32 @V_MBOWNER(i32 %280)
  %282 = call i32 @t4_write_reg(%struct.adapter* %278, i32 %279, i32 %281)
  %283 = getelementptr inbounds i32, i32* %41, i64 0
  %284 = load i32, i32* %283, align 16
  %285 = call i32 @be64_to_cpu(i32 %284)
  store i32 %285, i32* %17, align 4
  %286 = load i32, i32* %17, align 4
  %287 = ashr i32 %286, 32
  %288 = call i64 @G_FW_CMD_OP(i32 %287)
  %289 = load i64, i64* @FW_DEBUG_CMD, align 8
  %290 = icmp eq i64 %288, %289
  br i1 %290, label %291, label %297

291:                                              ; preds = %269
  %292 = load %struct.adapter*, %struct.adapter** %9, align 8
  %293 = bitcast i32* %41 to %struct.fw_debug_cmd*
  %294 = call i32 @fw_asrt(%struct.adapter* %292, %struct.fw_debug_cmd* %293)
  %295 = load i32, i32* @EIO, align 4
  %296 = call i32 @V_FW_CMD_RETVAL(i32 %295)
  store i32 %296, i32* %17, align 4
  br label %305

297:                                              ; preds = %269
  %298 = load i8*, i8** %13, align 8
  %299 = icmp ne i8* %298, null
  br i1 %299, label %300, label %304

300:                                              ; preds = %297
  %301 = load i8*, i8** %13, align 8
  %302 = load i32, i32* %12, align 4
  %303 = call i32 @memcpy(i8* %301, i32* %41, i32 %302)
  br label %304

304:                                              ; preds = %300, %297
  br label %305

305:                                              ; preds = %304, %291
  %306 = load i32, i32* %17, align 4
  %307 = call i32 @G_FW_CMD_RETVAL(i32 %306)
  %308 = sub nsw i32 0, %307
  store i32 %308, i32* %8, align 4
  store i32 1, i32* %30, align 4
  br label %347

309:                                              ; preds = %253
  br label %310

310:                                              ; preds = %309, %263, %252
  %311 = load i32, i32* %19, align 4
  %312 = load i32, i32* %18, align 4
  %313 = add nsw i32 %312, %311
  store i32 %313, i32* %18, align 4
  br label %193

314:                                              ; preds = %212, %193
  %315 = load %struct.adapter*, %struct.adapter** %9, align 8
  %316 = load i8*, i8** %11, align 8
  %317 = bitcast i8* %316 to i32*
  %318 = load i32, i32* %317, align 4
  %319 = load i32, i32* %10, align 4
  %320 = load i32, i32* %28, align 4
  %321 = call i32 @CH_ERR(%struct.adapter* %315, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %318, i32 %319, i32 %320)
  %322 = load %struct.adapter*, %struct.adapter** %9, align 8
  %323 = load i32, i32* %10, align 4
  %324 = call i32 @CH_DUMP_MBOX(%struct.adapter* %322, i32 %323, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32* %41, i32 1)
  %325 = load %struct.adapter*, %struct.adapter** %9, align 8
  %326 = load i32, i32* %10, align 4
  %327 = load i32, i32* %23, align 4
  %328 = call i32 @CH_DUMP_MBOX(%struct.adapter* %325, i32 %326, i32 %327, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32* null, i32 1)
  %329 = load i32, i32* %28, align 4
  %330 = load i32, i32* @F_PCIE_FW_ERR, align 4
  %331 = and i32 %329, %330
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %338

333:                                              ; preds = %314
  %334 = load i32, i32* @ENXIO, align 4
  %335 = sub nsw i32 0, %334
  store i32 %335, i32* %21, align 4
  %336 = load %struct.adapter*, %struct.adapter** %9, align 8
  %337 = call i32 @t4_report_fw_error(%struct.adapter* %336)
  br label %343

338:                                              ; preds = %314
  %339 = load i32, i32* @ETIMEDOUT, align 4
  %340 = sub nsw i32 0, %339
  store i32 %340, i32* %21, align 4
  %341 = load %struct.adapter*, %struct.adapter** %9, align 8
  %342 = call i32 @t4_os_dump_devlog(%struct.adapter* %341)
  br label %343

343:                                              ; preds = %338, %333
  %344 = load %struct.adapter*, %struct.adapter** %9, align 8
  %345 = call i32 @t4_fatal_err(%struct.adapter* %344, i32 1)
  %346 = load i32, i32* %21, align 4
  store i32 %346, i32* %8, align 4
  store i32 1, i32* %30, align 4
  br label %347

347:                                              ; preds = %343, %305, %126, %65
  %348 = load i8*, i8** %26, align 8
  call void @llvm.stackrestore(i8* %348)
  %349 = load i32, i32* %8, align 4
  ret i32 %349
}

declare dso_local i32 @PF_REG(i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @ASSERT_SYNCHRONIZED_OP(%struct.adapter*) #1

declare dso_local i64 @is_t6(%struct.adapter*) #1

declare dso_local i32 @VF_CIM_REG(i32) #1

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @G_MBOWNER(i32) #1

declare dso_local i32 @t4_report_fw_error(%struct.adapter*) #1

declare dso_local i32 @CH_DUMP_MBOX(%struct.adapter*, i32, i32, i8*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @t4_write_reg64(%struct.adapter*, i32, i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @t4_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @V_MBOWNER(i32) #1

declare dso_local i32 @read_tx_state(%struct.adapter*, %struct.port_tx_state*) #1

declare dso_local i32 @check_tx_state(%struct.adapter*, %struct.port_tx_state*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @get_mbox_rpl(%struct.adapter*, i32*, i32, i32) #1

declare dso_local i64 @G_FW_CMD_OP(i32) #1

declare dso_local i32 @fw_asrt(%struct.adapter*, %struct.fw_debug_cmd*) #1

declare dso_local i32 @V_FW_CMD_RETVAL(i32) #1

declare dso_local i32 @G_FW_CMD_RETVAL(i32) #1

declare dso_local i32 @CH_ERR(%struct.adapter*, i8*, i32, i32, i32) #1

declare dso_local i32 @t4_os_dump_devlog(%struct.adapter*) #1

declare dso_local i32 @t4_fatal_err(%struct.adapter*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
