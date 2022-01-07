; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_init_sge_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_init_sge_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.sge_params }
%struct.sge_params = type { i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8**, i32, i32* }

@A_SGE_INGRESS_RX_THRESHOLD = common dso_local global i64 0, align 8
@CHELSIO_T6 = common dso_local global i64 0, align 8
@A_SGE_ITP_CONTROL = common dso_local global i64 0, align 8
@A_SGE_TIMER_VALUE_0_AND_1 = common dso_local global i64 0, align 8
@A_SGE_TIMER_VALUE_2_AND_3 = common dso_local global i64 0, align 8
@A_SGE_TIMER_VALUE_4_AND_5 = common dso_local global i64 0, align 8
@A_SGE_CONM_CTRL = common dso_local global i64 0, align 8
@A_SGE_EGRESS_QUEUES_PER_PAGE_PF = common dso_local global i64 0, align 8
@S_QUEUESPERPAGEPF0 = common dso_local global i32 0, align 4
@S_QUEUESPERPAGEPF1 = common dso_local global i32 0, align 4
@M_QUEUESPERPAGEPF0 = common dso_local global i32 0, align 4
@A_SGE_INGRESS_QUEUES_PER_PAGE_PF = common dso_local global i64 0, align 8
@A_SGE_HOST_PAGE_SIZE = common dso_local global i64 0, align 8
@S_HOSTPAGESIZEPF0 = common dso_local global i32 0, align 4
@S_HOSTPAGESIZEPF1 = common dso_local global i32 0, align 4
@M_HOSTPAGESIZEPF0 = common dso_local global i32 0, align 4
@A_SGE_CONTROL = common dso_local global i64 0, align 8
@F_EGRSTATUSPAGESIZE = common dso_local global i32 0, align 4
@CHELSIO_T5 = common dso_local global i64 0, align 8
@X_INGPADBOUNDARY_SHIFT = common dso_local global i32 0, align 4
@X_T6_INGPADBOUNDARY_SHIFT = common dso_local global i32 0, align 4
@A_SGE_CONTROL2 = common dso_local global i64 0, align 8
@SGE_FLBUF_SIZES = common dso_local global i32 0, align 4
@A_SGE_FL_BUFFER_SIZE0 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_init_sge_params(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sge_params*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %7 = load %struct.adapter*, %struct.adapter** %2, align 8
  %8 = getelementptr inbounds %struct.adapter, %struct.adapter* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.sge_params* %9, %struct.sge_params** %4, align 8
  store i32 1, i32* %6, align 4
  %10 = load %struct.adapter*, %struct.adapter** %2, align 8
  %11 = load i64, i64* @A_SGE_INGRESS_RX_THRESHOLD, align 8
  %12 = call i8* @t4_read_reg(%struct.adapter* %10, i64 %11)
  %13 = ptrtoint i8* %12 to i32
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @G_THRESHOLD_0(i32 %14)
  %16 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %17 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %16, i32 0, i32 12
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 %15, i32* %19, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @G_THRESHOLD_1(i32 %20)
  %22 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %23 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %22, i32 0, i32 12
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  store i32 %21, i32* %25, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @G_THRESHOLD_2(i32 %26)
  %28 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %29 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %28, i32 0, i32 12
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  store i32 %27, i32* %31, align 4
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @G_THRESHOLD_3(i32 %32)
  %34 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %35 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %34, i32 0, i32 12
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 3
  store i32 %33, i32* %37, align 4
  %38 = load %struct.adapter*, %struct.adapter** %2, align 8
  %39 = call i64 @chip_id(%struct.adapter* %38)
  %40 = load i64, i64* @CHELSIO_T6, align 8
  %41 = icmp sge i64 %39, %40
  br i1 %41, label %42, label %56

42:                                               ; preds = %1
  %43 = load %struct.adapter*, %struct.adapter** %2, align 8
  %44 = load i64, i64* @A_SGE_ITP_CONTROL, align 8
  %45 = call i8* @t4_read_reg(%struct.adapter* %43, i64 %44)
  %46 = ptrtoint i8* %45 to i32
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @G_TSCALE(i32 %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  store i32 1, i32* %6, align 4
  br label %55

52:                                               ; preds = %42
  %53 = load i32, i32* %6, align 4
  %54 = add i32 %53, 2
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %52, %51
  br label %56

56:                                               ; preds = %55, %1
  %57 = load %struct.adapter*, %struct.adapter** %2, align 8
  %58 = load i64, i64* @A_SGE_TIMER_VALUE_0_AND_1, align 8
  %59 = call i8* @t4_read_reg(%struct.adapter* %57, i64 %58)
  %60 = ptrtoint i8* %59 to i32
  store i32 %60, i32* %3, align 4
  %61 = load %struct.adapter*, %struct.adapter** %2, align 8
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @G_TIMERVALUE0(i32 %62)
  %64 = call i32 @core_ticks_to_us(%struct.adapter* %61, i32 %63)
  %65 = load i32, i32* %6, align 4
  %66 = mul i32 %64, %65
  %67 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %68 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  store i32 %66, i32* %70, align 4
  %71 = load %struct.adapter*, %struct.adapter** %2, align 8
  %72 = load i32, i32* %3, align 4
  %73 = call i32 @G_TIMERVALUE1(i32 %72)
  %74 = call i32 @core_ticks_to_us(%struct.adapter* %71, i32 %73)
  %75 = load i32, i32* %6, align 4
  %76 = mul i32 %74, %75
  %77 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %78 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  store i32 %76, i32* %80, align 4
  %81 = load %struct.adapter*, %struct.adapter** %2, align 8
  %82 = load i64, i64* @A_SGE_TIMER_VALUE_2_AND_3, align 8
  %83 = call i8* @t4_read_reg(%struct.adapter* %81, i64 %82)
  %84 = ptrtoint i8* %83 to i32
  store i32 %84, i32* %3, align 4
  %85 = load %struct.adapter*, %struct.adapter** %2, align 8
  %86 = load i32, i32* %3, align 4
  %87 = call i32 @G_TIMERVALUE2(i32 %86)
  %88 = call i32 @core_ticks_to_us(%struct.adapter* %85, i32 %87)
  %89 = load i32, i32* %6, align 4
  %90 = mul i32 %88, %89
  %91 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %92 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 2
  store i32 %90, i32* %94, align 4
  %95 = load %struct.adapter*, %struct.adapter** %2, align 8
  %96 = load i32, i32* %3, align 4
  %97 = call i32 @G_TIMERVALUE3(i32 %96)
  %98 = call i32 @core_ticks_to_us(%struct.adapter* %95, i32 %97)
  %99 = load i32, i32* %6, align 4
  %100 = mul i32 %98, %99
  %101 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %102 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 3
  store i32 %100, i32* %104, align 4
  %105 = load %struct.adapter*, %struct.adapter** %2, align 8
  %106 = load i64, i64* @A_SGE_TIMER_VALUE_4_AND_5, align 8
  %107 = call i8* @t4_read_reg(%struct.adapter* %105, i64 %106)
  %108 = ptrtoint i8* %107 to i32
  store i32 %108, i32* %3, align 4
  %109 = load %struct.adapter*, %struct.adapter** %2, align 8
  %110 = load i32, i32* %3, align 4
  %111 = call i32 @G_TIMERVALUE4(i32 %110)
  %112 = call i32 @core_ticks_to_us(%struct.adapter* %109, i32 %111)
  %113 = load i32, i32* %6, align 4
  %114 = mul i32 %112, %113
  %115 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %116 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 4
  store i32 %114, i32* %118, align 4
  %119 = load %struct.adapter*, %struct.adapter** %2, align 8
  %120 = load i32, i32* %3, align 4
  %121 = call i32 @G_TIMERVALUE5(i32 %120)
  %122 = call i32 @core_ticks_to_us(%struct.adapter* %119, i32 %121)
  %123 = load i32, i32* %6, align 4
  %124 = mul i32 %122, %123
  %125 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %126 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 5
  store i32 %124, i32* %128, align 4
  %129 = load %struct.adapter*, %struct.adapter** %2, align 8
  %130 = load i64, i64* @A_SGE_CONM_CTRL, align 8
  %131 = call i8* @t4_read_reg(%struct.adapter* %129, i64 %130)
  %132 = ptrtoint i8* %131 to i32
  store i32 %132, i32* %3, align 4
  %133 = load i32, i32* %3, align 4
  %134 = call i32 @G_EGRTHRESHOLD(i32 %133)
  %135 = mul nsw i32 %134, 2
  %136 = add nsw i32 %135, 1
  %137 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %138 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 8
  %139 = load %struct.adapter*, %struct.adapter** %2, align 8
  %140 = call i64 @is_t4(%struct.adapter* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %56
  %143 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %144 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %147 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %146, i32 0, i32 2
  store i32 %145, i32* %147, align 4
  br label %167

148:                                              ; preds = %56
  %149 = load %struct.adapter*, %struct.adapter** %2, align 8
  %150 = call i64 @is_t5(%struct.adapter* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %159

152:                                              ; preds = %148
  %153 = load i32, i32* %3, align 4
  %154 = call i32 @G_EGRTHRESHOLDPACKING(i32 %153)
  %155 = mul nsw i32 %154, 2
  %156 = add nsw i32 %155, 1
  %157 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %158 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %157, i32 0, i32 2
  store i32 %156, i32* %158, align 4
  br label %166

159:                                              ; preds = %148
  %160 = load i32, i32* %3, align 4
  %161 = call i32 @G_T6_EGRTHRESHOLDPACKING(i32 %160)
  %162 = mul nsw i32 %161, 2
  %163 = add nsw i32 %162, 1
  %164 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %165 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %164, i32 0, i32 2
  store i32 %163, i32* %165, align 4
  br label %166

166:                                              ; preds = %159, %152
  br label %167

167:                                              ; preds = %166, %142
  %168 = load %struct.adapter*, %struct.adapter** %2, align 8
  %169 = load i64, i64* @A_SGE_EGRESS_QUEUES_PER_PAGE_PF, align 8
  %170 = call i8* @t4_read_reg(%struct.adapter* %168, i64 %169)
  %171 = ptrtoint i8* %170 to i32
  store i32 %171, i32* %3, align 4
  %172 = load i32, i32* @S_QUEUESPERPAGEPF0, align 4
  %173 = load i32, i32* @S_QUEUESPERPAGEPF1, align 4
  %174 = load i32, i32* @S_QUEUESPERPAGEPF0, align 4
  %175 = sub nsw i32 %173, %174
  %176 = load %struct.adapter*, %struct.adapter** %2, align 8
  %177 = getelementptr inbounds %struct.adapter, %struct.adapter* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = mul nsw i32 %175, %178
  %180 = add nsw i32 %172, %179
  %181 = load i32, i32* %3, align 4
  %182 = ashr i32 %181, %180
  store i32 %182, i32* %3, align 4
  %183 = load i32, i32* %3, align 4
  %184 = load i32, i32* @M_QUEUESPERPAGEPF0, align 4
  %185 = and i32 %183, %184
  %186 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %187 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %186, i32 0, i32 3
  store i32 %185, i32* %187, align 8
  %188 = load %struct.adapter*, %struct.adapter** %2, align 8
  %189 = load i64, i64* @A_SGE_INGRESS_QUEUES_PER_PAGE_PF, align 8
  %190 = call i8* @t4_read_reg(%struct.adapter* %188, i64 %189)
  %191 = ptrtoint i8* %190 to i32
  store i32 %191, i32* %3, align 4
  %192 = load i32, i32* @S_QUEUESPERPAGEPF0, align 4
  %193 = load i32, i32* @S_QUEUESPERPAGEPF1, align 4
  %194 = load i32, i32* @S_QUEUESPERPAGEPF0, align 4
  %195 = sub nsw i32 %193, %194
  %196 = load %struct.adapter*, %struct.adapter** %2, align 8
  %197 = getelementptr inbounds %struct.adapter, %struct.adapter* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = mul nsw i32 %195, %198
  %200 = add nsw i32 %192, %199
  %201 = load i32, i32* %3, align 4
  %202 = ashr i32 %201, %200
  store i32 %202, i32* %3, align 4
  %203 = load i32, i32* %3, align 4
  %204 = load i32, i32* @M_QUEUESPERPAGEPF0, align 4
  %205 = and i32 %203, %204
  %206 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %207 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %206, i32 0, i32 4
  store i32 %205, i32* %207, align 4
  %208 = load %struct.adapter*, %struct.adapter** %2, align 8
  %209 = load i64, i64* @A_SGE_HOST_PAGE_SIZE, align 8
  %210 = call i8* @t4_read_reg(%struct.adapter* %208, i64 %209)
  %211 = ptrtoint i8* %210 to i32
  store i32 %211, i32* %3, align 4
  %212 = load i32, i32* @S_HOSTPAGESIZEPF0, align 4
  %213 = load i32, i32* @S_HOSTPAGESIZEPF1, align 4
  %214 = load i32, i32* @S_HOSTPAGESIZEPF0, align 4
  %215 = sub nsw i32 %213, %214
  %216 = load %struct.adapter*, %struct.adapter** %2, align 8
  %217 = getelementptr inbounds %struct.adapter, %struct.adapter* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = mul nsw i32 %215, %218
  %220 = add nsw i32 %212, %219
  %221 = load i32, i32* %3, align 4
  %222 = ashr i32 %221, %220
  store i32 %222, i32* %3, align 4
  %223 = load i32, i32* %3, align 4
  %224 = load i32, i32* @M_HOSTPAGESIZEPF0, align 4
  %225 = and i32 %223, %224
  %226 = add nsw i32 %225, 10
  %227 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %228 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %227, i32 0, i32 5
  store i32 %226, i32* %228, align 8
  %229 = load %struct.adapter*, %struct.adapter** %2, align 8
  %230 = load i64, i64* @A_SGE_CONTROL, align 8
  %231 = call i8* @t4_read_reg(%struct.adapter* %229, i64 %230)
  %232 = ptrtoint i8* %231 to i32
  store i32 %232, i32* %3, align 4
  %233 = load i32, i32* %3, align 4
  %234 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %235 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %234, i32 0, i32 6
  store i32 %233, i32* %235, align 4
  %236 = load i32, i32* %3, align 4
  %237 = load i32, i32* @F_EGRSTATUSPAGESIZE, align 4
  %238 = and i32 %236, %237
  %239 = icmp ne i32 %238, 0
  %240 = zext i1 %239 to i64
  %241 = select i1 %239, i32 128, i32 64
  %242 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %243 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %242, i32 0, i32 7
  store i32 %241, i32* %243, align 8
  %244 = load i32, i32* %3, align 4
  %245 = call i32 @G_PKTSHIFT(i32 %244)
  %246 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %247 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %246, i32 0, i32 11
  store i32 %245, i32* %247, align 8
  %248 = load %struct.adapter*, %struct.adapter** %2, align 8
  %249 = call i64 @chip_id(%struct.adapter* %248)
  %250 = load i64, i64* @CHELSIO_T5, align 8
  %251 = icmp sle i64 %249, %250
  br i1 %251, label %252, label %260

252:                                              ; preds = %167
  %253 = load i32, i32* %3, align 4
  %254 = call i32 @G_INGPADBOUNDARY(i32 %253)
  %255 = load i32, i32* @X_INGPADBOUNDARY_SHIFT, align 4
  %256 = add nsw i32 %254, %255
  %257 = shl i32 1, %256
  %258 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %259 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %258, i32 0, i32 8
  store i32 %257, i32* %259, align 4
  br label %268

260:                                              ; preds = %167
  %261 = load i32, i32* %3, align 4
  %262 = call i32 @G_INGPADBOUNDARY(i32 %261)
  %263 = load i32, i32* @X_T6_INGPADBOUNDARY_SHIFT, align 4
  %264 = add nsw i32 %262, %263
  %265 = shl i32 1, %264
  %266 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %267 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %266, i32 0, i32 8
  store i32 %265, i32* %267, align 4
  br label %268

268:                                              ; preds = %260, %252
  %269 = load %struct.adapter*, %struct.adapter** %2, align 8
  %270 = call i64 @is_t4(%struct.adapter* %269)
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %278

272:                                              ; preds = %268
  %273 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %274 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %273, i32 0, i32 8
  %275 = load i32, i32* %274, align 4
  %276 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %277 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %276, i32 0, i32 9
  store i32 %275, i32* %277, align 8
  br label %297

278:                                              ; preds = %268
  %279 = load %struct.adapter*, %struct.adapter** %2, align 8
  %280 = load i64, i64* @A_SGE_CONTROL2, align 8
  %281 = call i8* @t4_read_reg(%struct.adapter* %279, i64 %280)
  %282 = ptrtoint i8* %281 to i32
  store i32 %282, i32* %3, align 4
  %283 = load i32, i32* %3, align 4
  %284 = call i32 @G_INGPACKBOUNDARY(i32 %283)
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %286, label %289

286:                                              ; preds = %278
  %287 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %288 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %287, i32 0, i32 9
  store i32 16, i32* %288, align 8
  br label %296

289:                                              ; preds = %278
  %290 = load i32, i32* %3, align 4
  %291 = call i32 @G_INGPACKBOUNDARY(i32 %290)
  %292 = add nsw i32 %291, 5
  %293 = shl i32 1, %292
  %294 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %295 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %294, i32 0, i32 9
  store i32 %293, i32* %295, align 8
  br label %296

296:                                              ; preds = %289, %286
  br label %297

297:                                              ; preds = %296, %272
  store i32 0, i32* %5, align 4
  br label %298

298:                                              ; preds = %316, %297
  %299 = load i32, i32* %5, align 4
  %300 = load i32, i32* @SGE_FLBUF_SIZES, align 4
  %301 = icmp ult i32 %299, %300
  br i1 %301, label %302, label %319

302:                                              ; preds = %298
  %303 = load %struct.adapter*, %struct.adapter** %2, align 8
  %304 = load i64, i64* @A_SGE_FL_BUFFER_SIZE0, align 8
  %305 = load i32, i32* %5, align 4
  %306 = mul i32 4, %305
  %307 = zext i32 %306 to i64
  %308 = add nsw i64 %304, %307
  %309 = call i8* @t4_read_reg(%struct.adapter* %303, i64 %308)
  %310 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %311 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %310, i32 0, i32 10
  %312 = load i8**, i8*** %311, align 8
  %313 = load i32, i32* %5, align 4
  %314 = zext i32 %313 to i64
  %315 = getelementptr inbounds i8*, i8** %312, i64 %314
  store i8* %309, i8** %315, align 8
  br label %316

316:                                              ; preds = %302
  %317 = load i32, i32* %5, align 4
  %318 = add i32 %317, 1
  store i32 %318, i32* %5, align 4
  br label %298

319:                                              ; preds = %298
  ret i32 0
}

declare dso_local i8* @t4_read_reg(%struct.adapter*, i64) #1

declare dso_local i32 @G_THRESHOLD_0(i32) #1

declare dso_local i32 @G_THRESHOLD_1(i32) #1

declare dso_local i32 @G_THRESHOLD_2(i32) #1

declare dso_local i32 @G_THRESHOLD_3(i32) #1

declare dso_local i64 @chip_id(%struct.adapter*) #1

declare dso_local i32 @G_TSCALE(i32) #1

declare dso_local i32 @core_ticks_to_us(%struct.adapter*, i32) #1

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

declare dso_local i32 @G_PKTSHIFT(i32) #1

declare dso_local i32 @G_INGPADBOUNDARY(i32) #1

declare dso_local i32 @G_INGPACKBOUNDARY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
