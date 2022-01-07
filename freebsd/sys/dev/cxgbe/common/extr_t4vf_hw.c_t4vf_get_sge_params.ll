; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4vf_hw.c_t4vf_get_sge_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4vf_hw.c_t4vf_get_sge_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.sge_params }
%struct.sge_params = type { i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i8**, i32* }

@FW_PARAMS_MNEM_REG = common dso_local global i32 0, align 4
@A_SGE_CONTROL = common dso_local global i64 0, align 8
@A_SGE_HOST_PAGE_SIZE = common dso_local global i64 0, align 8
@A_SGE_TIMER_VALUE_0_AND_1 = common dso_local global i64 0, align 8
@A_SGE_TIMER_VALUE_2_AND_3 = common dso_local global i64 0, align 8
@A_SGE_TIMER_VALUE_4_AND_5 = common dso_local global i64 0, align 8
@A_SGE_CONM_CTRL = common dso_local global i64 0, align 8
@A_SGE_INGRESS_RX_THRESHOLD = common dso_local global i64 0, align 8
@FW_SUCCESS = common dso_local global i32 0, align 4
@A_PL_VF_WHOAMI = common dso_local global i32 0, align 4
@S_HOSTPAGESIZEPF0 = common dso_local global i32 0, align 4
@S_HOSTPAGESIZEPF1 = common dso_local global i32 0, align 4
@M_HOSTPAGESIZEPF0 = common dso_local global i32 0, align 4
@SGE_FLBUF_SIZES = common dso_local global i32 0, align 4
@A_SGE_FL_BUFFER_SIZE0 = common dso_local global i64 0, align 8
@F_EGRSTATUSPAGESIZE = common dso_local global i32 0, align 4
@CHELSIO_T5 = common dso_local global i64 0, align 8
@X_INGPADBOUNDARY_SHIFT = common dso_local global i32 0, align 4
@X_T6_INGPADBOUNDARY_SHIFT = common dso_local global i32 0, align 4
@A_SGE_CONTROL2 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"Unable to get SGE Control2; probably old firmware.\0A\00", align 1
@A_SGE_EGRESS_QUEUES_PER_PAGE_VF = common dso_local global i64 0, align 8
@A_SGE_INGRESS_QUEUES_PER_PAGE_VF = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [58 x i8] c"Unable to get VF SGE Queues/Page; probably old firmware.\0A\00", align 1
@S_QUEUESPERPAGEPF0 = common dso_local global i32 0, align 4
@S_QUEUESPERPAGEPF1 = common dso_local global i32 0, align 4
@M_QUEUESPERPAGEPF0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4vf_get_sge_params(%struct.adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.sge_params*, align 8
  %5 = alloca [7 x i32], align 16
  %6 = alloca [7 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  %13 = load %struct.adapter*, %struct.adapter** %3, align 8
  %14 = getelementptr inbounds %struct.adapter, %struct.adapter* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.sge_params* %15, %struct.sge_params** %4, align 8
  %16 = load i32, i32* @FW_PARAMS_MNEM_REG, align 4
  %17 = call i32 @V_FW_PARAMS_MNEM(i32 %16)
  %18 = load i64, i64* @A_SGE_CONTROL, align 8
  %19 = call i32 @V_FW_PARAMS_PARAM_XYZ(i64 %18)
  %20 = or i32 %17, %19
  %21 = getelementptr inbounds [7 x i32], [7 x i32]* %5, i64 0, i64 0
  store i32 %20, i32* %21, align 16
  %22 = load i32, i32* @FW_PARAMS_MNEM_REG, align 4
  %23 = call i32 @V_FW_PARAMS_MNEM(i32 %22)
  %24 = load i64, i64* @A_SGE_HOST_PAGE_SIZE, align 8
  %25 = call i32 @V_FW_PARAMS_PARAM_XYZ(i64 %24)
  %26 = or i32 %23, %25
  %27 = getelementptr inbounds [7 x i32], [7 x i32]* %5, i64 0, i64 1
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @FW_PARAMS_MNEM_REG, align 4
  %29 = call i32 @V_FW_PARAMS_MNEM(i32 %28)
  %30 = load i64, i64* @A_SGE_TIMER_VALUE_0_AND_1, align 8
  %31 = call i32 @V_FW_PARAMS_PARAM_XYZ(i64 %30)
  %32 = or i32 %29, %31
  %33 = getelementptr inbounds [7 x i32], [7 x i32]* %5, i64 0, i64 2
  store i32 %32, i32* %33, align 8
  %34 = load i32, i32* @FW_PARAMS_MNEM_REG, align 4
  %35 = call i32 @V_FW_PARAMS_MNEM(i32 %34)
  %36 = load i64, i64* @A_SGE_TIMER_VALUE_2_AND_3, align 8
  %37 = call i32 @V_FW_PARAMS_PARAM_XYZ(i64 %36)
  %38 = or i32 %35, %37
  %39 = getelementptr inbounds [7 x i32], [7 x i32]* %5, i64 0, i64 3
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* @FW_PARAMS_MNEM_REG, align 4
  %41 = call i32 @V_FW_PARAMS_MNEM(i32 %40)
  %42 = load i64, i64* @A_SGE_TIMER_VALUE_4_AND_5, align 8
  %43 = call i32 @V_FW_PARAMS_PARAM_XYZ(i64 %42)
  %44 = or i32 %41, %43
  %45 = getelementptr inbounds [7 x i32], [7 x i32]* %5, i64 0, i64 4
  store i32 %44, i32* %45, align 16
  %46 = load i32, i32* @FW_PARAMS_MNEM_REG, align 4
  %47 = call i32 @V_FW_PARAMS_MNEM(i32 %46)
  %48 = load i64, i64* @A_SGE_CONM_CTRL, align 8
  %49 = call i32 @V_FW_PARAMS_PARAM_XYZ(i64 %48)
  %50 = or i32 %47, %49
  %51 = getelementptr inbounds [7 x i32], [7 x i32]* %5, i64 0, i64 5
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* @FW_PARAMS_MNEM_REG, align 4
  %53 = call i32 @V_FW_PARAMS_MNEM(i32 %52)
  %54 = load i64, i64* @A_SGE_INGRESS_RX_THRESHOLD, align 8
  %55 = call i32 @V_FW_PARAMS_PARAM_XYZ(i64 %54)
  %56 = or i32 %53, %55
  %57 = getelementptr inbounds [7 x i32], [7 x i32]* %5, i64 0, i64 6
  store i32 %56, i32* %57, align 8
  %58 = load %struct.adapter*, %struct.adapter** %3, align 8
  %59 = getelementptr inbounds [7 x i32], [7 x i32]* %5, i64 0, i64 0
  %60 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 0
  %61 = call i32 @t4vf_query_params(%struct.adapter* %58, i32 7, i32* %59, i32* %60)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @FW_SUCCESS, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %1
  %66 = load i32, i32* %11, align 4
  store i32 %66, i32* %2, align 4
  br label %389

67:                                               ; preds = %1
  %68 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 0
  %69 = load i32, i32* %68, align 16
  %70 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %71 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 6
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @G_THRESHOLD_0(i32 %73)
  %75 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %76 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %75, i32 0, i32 12
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  store i32 %74, i32* %78, align 4
  %79 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 6
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @G_THRESHOLD_1(i32 %80)
  %82 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %83 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %82, i32 0, i32 12
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  store i32 %81, i32* %85, align 4
  %86 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 6
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @G_THRESHOLD_2(i32 %87)
  %89 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %90 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %89, i32 0, i32 12
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 2
  store i32 %88, i32* %92, align 4
  %93 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 6
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @G_THRESHOLD_3(i32 %94)
  %96 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %97 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %96, i32 0, i32 12
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 3
  store i32 %95, i32* %99, align 4
  %100 = load %struct.adapter*, %struct.adapter** %3, align 8
  %101 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 2
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @G_TIMERVALUE0(i32 %102)
  %104 = call i8* @core_ticks_to_us(%struct.adapter* %100, i32 %103)
  %105 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %106 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %105, i32 0, i32 11
  %107 = load i8**, i8*** %106, align 8
  %108 = getelementptr inbounds i8*, i8** %107, i64 0
  store i8* %104, i8** %108, align 8
  %109 = load %struct.adapter*, %struct.adapter** %3, align 8
  %110 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 2
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @G_TIMERVALUE1(i32 %111)
  %113 = call i8* @core_ticks_to_us(%struct.adapter* %109, i32 %112)
  %114 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %115 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %114, i32 0, i32 11
  %116 = load i8**, i8*** %115, align 8
  %117 = getelementptr inbounds i8*, i8** %116, i64 1
  store i8* %113, i8** %117, align 8
  %118 = load %struct.adapter*, %struct.adapter** %3, align 8
  %119 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 3
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @G_TIMERVALUE2(i32 %120)
  %122 = call i8* @core_ticks_to_us(%struct.adapter* %118, i32 %121)
  %123 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %124 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %123, i32 0, i32 11
  %125 = load i8**, i8*** %124, align 8
  %126 = getelementptr inbounds i8*, i8** %125, i64 2
  store i8* %122, i8** %126, align 8
  %127 = load %struct.adapter*, %struct.adapter** %3, align 8
  %128 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 3
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @G_TIMERVALUE3(i32 %129)
  %131 = call i8* @core_ticks_to_us(%struct.adapter* %127, i32 %130)
  %132 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %133 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %132, i32 0, i32 11
  %134 = load i8**, i8*** %133, align 8
  %135 = getelementptr inbounds i8*, i8** %134, i64 3
  store i8* %131, i8** %135, align 8
  %136 = load %struct.adapter*, %struct.adapter** %3, align 8
  %137 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 4
  %138 = load i32, i32* %137, align 16
  %139 = call i32 @G_TIMERVALUE4(i32 %138)
  %140 = call i8* @core_ticks_to_us(%struct.adapter* %136, i32 %139)
  %141 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %142 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %141, i32 0, i32 11
  %143 = load i8**, i8*** %142, align 8
  %144 = getelementptr inbounds i8*, i8** %143, i64 4
  store i8* %140, i8** %144, align 8
  %145 = load %struct.adapter*, %struct.adapter** %3, align 8
  %146 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 4
  %147 = load i32, i32* %146, align 16
  %148 = call i32 @G_TIMERVALUE5(i32 %147)
  %149 = call i8* @core_ticks_to_us(%struct.adapter* %145, i32 %148)
  %150 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %151 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %150, i32 0, i32 11
  %152 = load i8**, i8*** %151, align 8
  %153 = getelementptr inbounds i8*, i8** %152, i64 5
  store i8* %149, i8** %153, align 8
  %154 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 5
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @G_EGRTHRESHOLD(i32 %155)
  %157 = mul nsw i32 %156, 2
  %158 = add nsw i32 %157, 1
  %159 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %160 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %159, i32 0, i32 1
  store i32 %158, i32* %160, align 4
  %161 = load %struct.adapter*, %struct.adapter** %3, align 8
  %162 = call i64 @is_t4(%struct.adapter* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %67
  %165 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %166 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %169 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %168, i32 0, i32 2
  store i32 %167, i32* %169, align 8
  br label %191

170:                                              ; preds = %67
  %171 = load %struct.adapter*, %struct.adapter** %3, align 8
  %172 = call i64 @is_t5(%struct.adapter* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %182

174:                                              ; preds = %170
  %175 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 5
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @G_EGRTHRESHOLDPACKING(i32 %176)
  %178 = mul nsw i32 %177, 2
  %179 = add nsw i32 %178, 1
  %180 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %181 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %180, i32 0, i32 2
  store i32 %179, i32* %181, align 8
  br label %190

182:                                              ; preds = %170
  %183 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 5
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @G_T6_EGRTHRESHOLDPACKING(i32 %184)
  %186 = mul nsw i32 %185, 2
  %187 = add nsw i32 %186, 1
  %188 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %189 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %188, i32 0, i32 2
  store i32 %187, i32* %189, align 8
  br label %190

190:                                              ; preds = %182, %174
  br label %191

191:                                              ; preds = %190, %164
  %192 = load %struct.adapter*, %struct.adapter** %3, align 8
  %193 = load i32, i32* @A_PL_VF_WHOAMI, align 4
  %194 = call i32 @VF_PL_REG(i32 %193)
  %195 = call i32 @t4_read_reg(%struct.adapter* %192, i32 %194)
  store i32 %195, i32* %7, align 4
  %196 = load i32, i32* %7, align 4
  %197 = call i32 @G_SOURCEPF(i32 %196)
  store i32 %197, i32* %8, align 4
  %198 = load i32, i32* @S_HOSTPAGESIZEPF0, align 4
  %199 = load i32, i32* @S_HOSTPAGESIZEPF1, align 4
  %200 = load i32, i32* @S_HOSTPAGESIZEPF0, align 4
  %201 = sub i32 %199, %200
  %202 = load i32, i32* %8, align 4
  %203 = mul i32 %201, %202
  %204 = add i32 %198, %203
  store i32 %204, i32* %9, align 4
  %205 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 1
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* %9, align 4
  %208 = lshr i32 %206, %207
  %209 = load i32, i32* @M_HOSTPAGESIZEPF0, align 4
  %210 = and i32 %208, %209
  %211 = add i32 %210, 10
  %212 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %213 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %212, i32 0, i32 3
  store i32 %211, i32* %213, align 4
  store i32 0, i32* %10, align 4
  br label %214

214:                                              ; preds = %247, %191
  %215 = load i32, i32* %10, align 4
  %216 = load i32, i32* @SGE_FLBUF_SIZES, align 4
  %217 = icmp slt i32 %215, %216
  br i1 %217, label %218, label %250

218:                                              ; preds = %214
  %219 = load i32, i32* @FW_PARAMS_MNEM_REG, align 4
  %220 = call i32 @V_FW_PARAMS_MNEM(i32 %219)
  %221 = load i64, i64* @A_SGE_FL_BUFFER_SIZE0, align 8
  %222 = load i32, i32* %10, align 4
  %223 = mul nsw i32 4, %222
  %224 = sext i32 %223 to i64
  %225 = add nsw i64 %221, %224
  %226 = call i32 @V_FW_PARAMS_PARAM_XYZ(i64 %225)
  %227 = or i32 %220, %226
  %228 = getelementptr inbounds [7 x i32], [7 x i32]* %5, i64 0, i64 0
  store i32 %227, i32* %228, align 16
  %229 = load %struct.adapter*, %struct.adapter** %3, align 8
  %230 = getelementptr inbounds [7 x i32], [7 x i32]* %5, i64 0, i64 0
  %231 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 0
  %232 = call i32 @t4vf_query_params(%struct.adapter* %229, i32 1, i32* %230, i32* %231)
  store i32 %232, i32* %11, align 4
  %233 = load i32, i32* %11, align 4
  %234 = load i32, i32* @FW_SUCCESS, align 4
  %235 = icmp ne i32 %233, %234
  br i1 %235, label %236, label %238

236:                                              ; preds = %218
  %237 = load i32, i32* %11, align 4
  store i32 %237, i32* %2, align 4
  br label %389

238:                                              ; preds = %218
  %239 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 0
  %240 = load i32, i32* %239, align 16
  %241 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %242 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %241, i32 0, i32 4
  %243 = load i32*, i32** %242, align 8
  %244 = load i32, i32* %10, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %243, i64 %245
  store i32 %240, i32* %246, align 4
  br label %247

247:                                              ; preds = %238
  %248 = load i32, i32* %10, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %10, align 4
  br label %214

250:                                              ; preds = %214
  %251 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %252 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* @F_EGRSTATUSPAGESIZE, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  %257 = zext i1 %256 to i64
  %258 = select i1 %256, i32 128, i32 64
  %259 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %260 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %259, i32 0, i32 5
  store i32 %258, i32* %260, align 8
  %261 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %262 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = call i32 @G_PKTSHIFT(i32 %263)
  %265 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %266 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %265, i32 0, i32 10
  store i32 %264, i32* %266, align 4
  %267 = load %struct.adapter*, %struct.adapter** %3, align 8
  %268 = call i64 @chip_id(%struct.adapter* %267)
  %269 = load i64, i64* @CHELSIO_T5, align 8
  %270 = icmp sle i64 %268, %269
  br i1 %270, label %271, label %281

271:                                              ; preds = %250
  %272 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %273 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = call i32 @G_INGPADBOUNDARY(i32 %274)
  %276 = load i32, i32* @X_INGPADBOUNDARY_SHIFT, align 4
  %277 = add nsw i32 %275, %276
  %278 = shl i32 1, %277
  %279 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %280 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %279, i32 0, i32 6
  store i32 %278, i32* %280, align 4
  br label %291

281:                                              ; preds = %250
  %282 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %283 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = call i32 @G_INGPADBOUNDARY(i32 %284)
  %286 = load i32, i32* @X_T6_INGPADBOUNDARY_SHIFT, align 4
  %287 = add nsw i32 %285, %286
  %288 = shl i32 1, %287
  %289 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %290 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %289, i32 0, i32 6
  store i32 %288, i32* %290, align 4
  br label %291

291:                                              ; preds = %281, %271
  %292 = load %struct.adapter*, %struct.adapter** %3, align 8
  %293 = call i64 @is_t4(%struct.adapter* %292)
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %301

295:                                              ; preds = %291
  %296 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %297 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %296, i32 0, i32 6
  %298 = load i32, i32* %297, align 4
  %299 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %300 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %299, i32 0, i32 7
  store i32 %298, i32* %300, align 8
  br label %336

301:                                              ; preds = %291
  %302 = load i32, i32* @FW_PARAMS_MNEM_REG, align 4
  %303 = call i32 @V_FW_PARAMS_MNEM(i32 %302)
  %304 = load i64, i64* @A_SGE_CONTROL2, align 8
  %305 = call i32 @V_FW_PARAMS_PARAM_XYZ(i64 %304)
  %306 = or i32 %303, %305
  %307 = getelementptr inbounds [7 x i32], [7 x i32]* %5, i64 0, i64 0
  store i32 %306, i32* %307, align 16
  %308 = load %struct.adapter*, %struct.adapter** %3, align 8
  %309 = getelementptr inbounds [7 x i32], [7 x i32]* %5, i64 0, i64 0
  %310 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 0
  %311 = call i32 @t4vf_query_params(%struct.adapter* %308, i32 1, i32* %309, i32* %310)
  store i32 %311, i32* %11, align 4
  %312 = load i32, i32* %11, align 4
  %313 = load i32, i32* @FW_SUCCESS, align 4
  %314 = icmp ne i32 %312, %313
  br i1 %314, label %315, label %319

315:                                              ; preds = %301
  %316 = load %struct.adapter*, %struct.adapter** %3, align 8
  %317 = call i32 @CH_ERR(%struct.adapter* %316, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %318 = load i32, i32* %11, align 4
  store i32 %318, i32* %2, align 4
  br label %389

319:                                              ; preds = %301
  %320 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 0
  %321 = load i32, i32* %320, align 16
  %322 = call i32 @G_INGPACKBOUNDARY(i32 %321)
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %324, label %327

324:                                              ; preds = %319
  %325 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %326 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %325, i32 0, i32 7
  store i32 16, i32* %326, align 8
  br label %335

327:                                              ; preds = %319
  %328 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 0
  %329 = load i32, i32* %328, align 16
  %330 = call i32 @G_INGPACKBOUNDARY(i32 %329)
  %331 = add nsw i32 %330, 5
  %332 = shl i32 1, %331
  %333 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %334 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %333, i32 0, i32 7
  store i32 %332, i32* %334, align 8
  br label %335

335:                                              ; preds = %327, %324
  br label %336

336:                                              ; preds = %335, %295
  %337 = load %struct.adapter*, %struct.adapter** %3, align 8
  %338 = call i64 @is_t4(%struct.adapter* %337)
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %388, label %340

340:                                              ; preds = %336
  %341 = load i32, i32* @FW_PARAMS_MNEM_REG, align 4
  %342 = call i32 @V_FW_PARAMS_MNEM(i32 %341)
  %343 = load i64, i64* @A_SGE_EGRESS_QUEUES_PER_PAGE_VF, align 8
  %344 = call i32 @V_FW_PARAMS_PARAM_XYZ(i64 %343)
  %345 = or i32 %342, %344
  %346 = getelementptr inbounds [7 x i32], [7 x i32]* %5, i64 0, i64 0
  store i32 %345, i32* %346, align 16
  %347 = load i32, i32* @FW_PARAMS_MNEM_REG, align 4
  %348 = call i32 @V_FW_PARAMS_MNEM(i32 %347)
  %349 = load i64, i64* @A_SGE_INGRESS_QUEUES_PER_PAGE_VF, align 8
  %350 = call i32 @V_FW_PARAMS_PARAM_XYZ(i64 %349)
  %351 = or i32 %348, %350
  %352 = getelementptr inbounds [7 x i32], [7 x i32]* %5, i64 0, i64 1
  store i32 %351, i32* %352, align 4
  %353 = load %struct.adapter*, %struct.adapter** %3, align 8
  %354 = getelementptr inbounds [7 x i32], [7 x i32]* %5, i64 0, i64 0
  %355 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 0
  %356 = call i32 @t4vf_query_params(%struct.adapter* %353, i32 2, i32* %354, i32* %355)
  store i32 %356, i32* %11, align 4
  %357 = load i32, i32* %11, align 4
  %358 = load i32, i32* @FW_SUCCESS, align 4
  %359 = icmp ne i32 %357, %358
  br i1 %359, label %360, label %364

360:                                              ; preds = %340
  %361 = load %struct.adapter*, %struct.adapter** %3, align 8
  %362 = call i32 @CH_WARN(%struct.adapter* %361, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  %363 = load i32, i32* %11, align 4
  store i32 %363, i32* %2, align 4
  br label %389

364:                                              ; preds = %340
  %365 = load i32, i32* @S_QUEUESPERPAGEPF0, align 4
  %366 = load i32, i32* @S_QUEUESPERPAGEPF1, align 4
  %367 = load i32, i32* @S_QUEUESPERPAGEPF0, align 4
  %368 = sub i32 %366, %367
  %369 = load i32, i32* %8, align 4
  %370 = mul i32 %368, %369
  %371 = add i32 %365, %370
  store i32 %371, i32* %12, align 4
  %372 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 0
  %373 = load i32, i32* %372, align 16
  %374 = load i32, i32* %12, align 4
  %375 = lshr i32 %373, %374
  %376 = load i32, i32* @M_QUEUESPERPAGEPF0, align 4
  %377 = and i32 %375, %376
  %378 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %379 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %378, i32 0, i32 8
  store i32 %377, i32* %379, align 4
  %380 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 1
  %381 = load i32, i32* %380, align 4
  %382 = load i32, i32* %12, align 4
  %383 = lshr i32 %381, %382
  %384 = load i32, i32* @M_QUEUESPERPAGEPF0, align 4
  %385 = and i32 %383, %384
  %386 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %387 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %386, i32 0, i32 9
  store i32 %385, i32* %387, align 8
  br label %388

388:                                              ; preds = %364, %336
  store i32 0, i32* %2, align 4
  br label %389

389:                                              ; preds = %388, %360, %315, %236, %65
  %390 = load i32, i32* %2, align 4
  ret i32 %390
}

declare dso_local i32 @V_FW_PARAMS_MNEM(i32) #1

declare dso_local i32 @V_FW_PARAMS_PARAM_XYZ(i64) #1

declare dso_local i32 @t4vf_query_params(%struct.adapter*, i32, i32*, i32*) #1

declare dso_local i32 @G_THRESHOLD_0(i32) #1

declare dso_local i32 @G_THRESHOLD_1(i32) #1

declare dso_local i32 @G_THRESHOLD_2(i32) #1

declare dso_local i32 @G_THRESHOLD_3(i32) #1

declare dso_local i8* @core_ticks_to_us(%struct.adapter*, i32) #1

declare dso_local i32 @G_TIMERVALUE0(i32) #1

declare dso_local i32 @G_TIMERVALUE1(i32) #1

declare dso_local i32 @G_TIMERVALUE2(i32) #1

declare dso_local i32 @G_TIMERVALUE3(i32) #1

declare dso_local i32 @G_TIMERVALUE4(i32) #1

declare dso_local i32 @G_TIMERVALUE5(i32) #1

declare dso_local i32 @G_EGRTHRESHOLD(i32) #1

declare dso_local i64 @is_t4(%struct.adapter*) #1

declare dso_local i64 @is_t5(%struct.adapter*) #1

declare dso_local i32 @G_EGRTHRESHOLDPACKING(i32) #1

declare dso_local i32 @G_T6_EGRTHRESHOLDPACKING(i32) #1

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @VF_PL_REG(i32) #1

declare dso_local i32 @G_SOURCEPF(i32) #1

declare dso_local i32 @G_PKTSHIFT(i32) #1

declare dso_local i64 @chip_id(%struct.adapter*) #1

declare dso_local i32 @G_INGPADBOUNDARY(i32) #1

declare dso_local i32 @CH_ERR(%struct.adapter*, i8*) #1

declare dso_local i32 @G_INGPACKBOUNDARY(i32) #1

declare dso_local i32 @CH_WARN(%struct.adapter*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
