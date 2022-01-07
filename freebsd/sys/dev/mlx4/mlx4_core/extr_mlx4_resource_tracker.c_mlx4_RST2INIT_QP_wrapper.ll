; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_resource_tracker.c_mlx4_RST2INIT_QP_wrapper.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_resource_tracker.c_mlx4_RST2INIT_QP_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mlx4_vhcr = type { i32 }
%struct.mlx4_cmd_mailbox = type { %struct.mlx4_qp_context* }
%struct.mlx4_qp_context = type { i32, i32 }
%struct.mlx4_cmd_info = type { i32 }
%struct.res_mtt = type { i32 }
%struct.res_qp = type { i32, i32, %struct.res_srq*, %struct.res_srq*, %struct.res_srq*, %struct.res_srq*, i64, i64, i64, i64, i64, i64, i64 }
%struct.res_srq = type { i32 }
%struct.res_cq = type { i32 }

@RES_QP_HW = common dso_local global i32 0, align 4
@RES_MTT = common dso_local global i32 0, align 4
@RES_CQ = common dso_local global i32 0, align 4
@RES_SRQ = common dso_local global i32 0, align 4
@RES_QP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_RST2INIT_QP_wrapper(%struct.mlx4_dev* %0, i32 %1, %struct.mlx4_vhcr* %2, %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx4_vhcr*, align 8
  %11 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %12 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %13 = alloca %struct.mlx4_cmd_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.res_mtt*, align 8
  %17 = alloca %struct.res_qp*, align 8
  %18 = alloca %struct.mlx4_qp_context*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.res_cq*, align 8
  %22 = alloca %struct.res_cq*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.res_srq*, align 8
  %28 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.mlx4_vhcr* %2, %struct.mlx4_vhcr** %10, align 8
  store %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox** %11, align 8
  store %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_mailbox** %12, align 8
  store %struct.mlx4_cmd_info* %5, %struct.mlx4_cmd_info** %13, align 8
  %29 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %30 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 8388607
  store i32 %32, i32* %15, align 4
  %33 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %34 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %33, i32 0, i32 0
  %35 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %34, align 8
  %36 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %35, i64 8
  store %struct.mlx4_qp_context* %36, %struct.mlx4_qp_context** %18, align 8
  %37 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %18, align 8
  %38 = call i32 @qp_get_mtt_addr(%struct.mlx4_qp_context* %37)
  %39 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %40 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sdiv i32 %38, %42
  store i32 %43, i32* %19, align 4
  %44 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %18, align 8
  %45 = call i32 @qp_get_mtt_size(%struct.mlx4_qp_context* %44)
  store i32 %45, i32* %20, align 4
  %46 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %18, align 8
  %47 = call i32 @qp_get_rcqn(%struct.mlx4_qp_context* %46)
  store i32 %47, i32* %23, align 4
  %48 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %18, align 8
  %49 = call i32 @qp_get_scqn(%struct.mlx4_qp_context* %48)
  store i32 %49, i32* %24, align 4
  %50 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %18, align 8
  %51 = call i32 @qp_get_srqn(%struct.mlx4_qp_context* %50)
  %52 = and i32 %51, 16777215
  store i32 %52, i32* %25, align 4
  %53 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %18, align 8
  %54 = call i32 @qp_get_srqn(%struct.mlx4_qp_context* %53)
  %55 = ashr i32 %54, 24
  %56 = and i32 %55, 1
  store i32 %56, i32* %26, align 4
  %57 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %18, align 8
  %58 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @be32_to_cpu(i32 %59)
  %61 = and i32 %60, 16777215
  store i32 %61, i32* %28, align 4
  %62 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %18, align 8
  %65 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %66 = call i32 @adjust_qp_sched_queue(%struct.mlx4_dev* %62, i32 %63, %struct.mlx4_qp_context* %64, %struct.mlx4_cmd_mailbox* %65)
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* %14, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %6
  %70 = load i32, i32* %14, align 4
  store i32 %70, i32* %7, align 4
  br label %286

71:                                               ; preds = %6
  %72 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %15, align 4
  %75 = load i32, i32* @RES_QP_HW, align 4
  %76 = call i32 @qp_res_start_move_to(%struct.mlx4_dev* %72, i32 %73, i32 %74, i32 %75, %struct.res_qp** %17, i32 0)
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %14, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %71
  %80 = load i32, i32* %14, align 4
  store i32 %80, i32* %7, align 4
  br label %286

81:                                               ; preds = %71
  %82 = load i32, i32* %28, align 4
  %83 = load %struct.res_qp*, %struct.res_qp** %17, align 8
  %84 = getelementptr inbounds %struct.res_qp, %struct.res_qp* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load %struct.res_qp*, %struct.res_qp** %17, align 8
  %86 = getelementptr inbounds %struct.res_qp, %struct.res_qp* %85, i32 0, i32 12
  store i64 0, i64* %86, align 8
  %87 = load %struct.res_qp*, %struct.res_qp** %17, align 8
  %88 = getelementptr inbounds %struct.res_qp, %struct.res_qp* %87, i32 0, i32 11
  store i64 0, i64* %88, align 8
  %89 = load %struct.res_qp*, %struct.res_qp** %17, align 8
  %90 = getelementptr inbounds %struct.res_qp, %struct.res_qp* %89, i32 0, i32 10
  store i64 0, i64* %90, align 8
  %91 = load %struct.res_qp*, %struct.res_qp** %17, align 8
  %92 = getelementptr inbounds %struct.res_qp, %struct.res_qp* %91, i32 0, i32 9
  store i64 0, i64* %92, align 8
  %93 = load %struct.res_qp*, %struct.res_qp** %17, align 8
  %94 = getelementptr inbounds %struct.res_qp, %struct.res_qp* %93, i32 0, i32 8
  store i64 0, i64* %94, align 8
  %95 = load %struct.res_qp*, %struct.res_qp** %17, align 8
  %96 = getelementptr inbounds %struct.res_qp, %struct.res_qp* %95, i32 0, i32 7
  store i64 0, i64* %96, align 8
  %97 = load %struct.res_qp*, %struct.res_qp** %17, align 8
  %98 = getelementptr inbounds %struct.res_qp, %struct.res_qp* %97, i32 0, i32 6
  store i64 0, i64* %98, align 8
  %99 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %18, align 8
  %100 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @be32_to_cpu(i32 %101)
  %103 = load %struct.res_qp*, %struct.res_qp** %17, align 8
  %104 = getelementptr inbounds %struct.res_qp, %struct.res_qp* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  %105 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* %19, align 4
  %108 = load i32, i32* @RES_MTT, align 4
  %109 = bitcast %struct.res_mtt** %16 to %struct.res_srq**
  %110 = call i32 @get_res(%struct.mlx4_dev* %105, i32 %106, i32 %107, i32 %108, %struct.res_srq** %109)
  store i32 %110, i32* %14, align 4
  %111 = load i32, i32* %14, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %81
  br label %279

114:                                              ; preds = %81
  %115 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* %19, align 4
  %118 = load i32, i32* %20, align 4
  %119 = load %struct.res_mtt*, %struct.res_mtt** %16, align 8
  %120 = bitcast %struct.res_mtt* %119 to %struct.res_srq*
  %121 = call i32 @check_mtt_range(%struct.mlx4_dev* %115, i32 %116, i32 %117, i32 %118, %struct.res_srq* %120)
  store i32 %121, i32* %14, align 4
  %122 = load i32, i32* %14, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %114
  br label %273

125:                                              ; preds = %114
  %126 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* %23, align 4
  %129 = load i32, i32* @RES_CQ, align 4
  %130 = bitcast %struct.res_cq** %21 to %struct.res_srq**
  %131 = call i32 @get_res(%struct.mlx4_dev* %126, i32 %127, i32 %128, i32 %129, %struct.res_srq** %130)
  store i32 %131, i32* %14, align 4
  %132 = load i32, i32* %14, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %125
  br label %273

135:                                              ; preds = %125
  %136 = load i32, i32* %24, align 4
  %137 = load i32, i32* %23, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %139, label %150

139:                                              ; preds = %135
  %140 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %141 = load i32, i32* %9, align 4
  %142 = load i32, i32* %24, align 4
  %143 = load i32, i32* @RES_CQ, align 4
  %144 = bitcast %struct.res_cq** %22 to %struct.res_srq**
  %145 = call i32 @get_res(%struct.mlx4_dev* %140, i32 %141, i32 %142, i32 %143, %struct.res_srq** %144)
  store i32 %145, i32* %14, align 4
  %146 = load i32, i32* %14, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %139
  br label %267

149:                                              ; preds = %139
  br label %152

150:                                              ; preds = %135
  %151 = load %struct.res_cq*, %struct.res_cq** %21, align 8
  store %struct.res_cq* %151, %struct.res_cq** %22, align 8
  br label %152

152:                                              ; preds = %150, %149
  %153 = load i32, i32* %26, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %165

155:                                              ; preds = %152
  %156 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %157 = load i32, i32* %9, align 4
  %158 = load i32, i32* %25, align 4
  %159 = load i32, i32* @RES_SRQ, align 4
  %160 = call i32 @get_res(%struct.mlx4_dev* %156, i32 %157, i32 %158, i32 %159, %struct.res_srq** %27)
  store i32 %160, i32* %14, align 4
  %161 = load i32, i32* %14, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %155
  br label %256

164:                                              ; preds = %155
  br label %165

165:                                              ; preds = %164, %152
  %166 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %167 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %168 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %18, align 8
  %169 = call i32 @adjust_proxy_tun_qkey(%struct.mlx4_dev* %166, %struct.mlx4_vhcr* %167, %struct.mlx4_qp_context* %168)
  %170 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %171 = load i32, i32* %9, align 4
  %172 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %173 = call i32 @update_pkey_index(%struct.mlx4_dev* %170, i32 %171, %struct.mlx4_cmd_mailbox* %172)
  %174 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %175 = load i32, i32* %9, align 4
  %176 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %177 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %178 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %179 = load %struct.mlx4_cmd_info*, %struct.mlx4_cmd_info** %13, align 8
  %180 = call i32 @mlx4_DMA_wrapper(%struct.mlx4_dev* %174, i32 %175, %struct.mlx4_vhcr* %176, %struct.mlx4_cmd_mailbox* %177, %struct.mlx4_cmd_mailbox* %178, %struct.mlx4_cmd_info* %179)
  store i32 %180, i32* %14, align 4
  %181 = load i32, i32* %14, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %165
  br label %246

184:                                              ; preds = %165
  %185 = load %struct.res_mtt*, %struct.res_mtt** %16, align 8
  %186 = getelementptr inbounds %struct.res_mtt, %struct.res_mtt* %185, i32 0, i32 0
  %187 = call i32 @atomic_inc(i32* %186)
  %188 = load %struct.res_mtt*, %struct.res_mtt** %16, align 8
  %189 = bitcast %struct.res_mtt* %188 to %struct.res_srq*
  %190 = load %struct.res_qp*, %struct.res_qp** %17, align 8
  %191 = getelementptr inbounds %struct.res_qp, %struct.res_qp* %190, i32 0, i32 5
  store %struct.res_srq* %189, %struct.res_srq** %191, align 8
  %192 = load %struct.res_cq*, %struct.res_cq** %21, align 8
  %193 = getelementptr inbounds %struct.res_cq, %struct.res_cq* %192, i32 0, i32 0
  %194 = call i32 @atomic_inc(i32* %193)
  %195 = load %struct.res_cq*, %struct.res_cq** %21, align 8
  %196 = bitcast %struct.res_cq* %195 to %struct.res_srq*
  %197 = load %struct.res_qp*, %struct.res_qp** %17, align 8
  %198 = getelementptr inbounds %struct.res_qp, %struct.res_qp* %197, i32 0, i32 4
  store %struct.res_srq* %196, %struct.res_srq** %198, align 8
  %199 = load %struct.res_cq*, %struct.res_cq** %22, align 8
  %200 = getelementptr inbounds %struct.res_cq, %struct.res_cq* %199, i32 0, i32 0
  %201 = call i32 @atomic_inc(i32* %200)
  %202 = load %struct.res_cq*, %struct.res_cq** %22, align 8
  %203 = bitcast %struct.res_cq* %202 to %struct.res_srq*
  %204 = load %struct.res_qp*, %struct.res_qp** %17, align 8
  %205 = getelementptr inbounds %struct.res_qp, %struct.res_qp* %204, i32 0, i32 3
  store %struct.res_srq* %203, %struct.res_srq** %205, align 8
  %206 = load i32, i32* %24, align 4
  %207 = load i32, i32* %23, align 4
  %208 = icmp ne i32 %206, %207
  br i1 %208, label %209, label %215

209:                                              ; preds = %184
  %210 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %211 = load i32, i32* %9, align 4
  %212 = load i32, i32* %24, align 4
  %213 = load i32, i32* @RES_CQ, align 4
  %214 = call i32 @put_res(%struct.mlx4_dev* %210, i32 %211, i32 %212, i32 %213)
  br label %215

215:                                              ; preds = %209, %184
  %216 = load i32, i32* %26, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %230

218:                                              ; preds = %215
  %219 = load %struct.res_srq*, %struct.res_srq** %27, align 8
  %220 = getelementptr inbounds %struct.res_srq, %struct.res_srq* %219, i32 0, i32 0
  %221 = call i32 @atomic_inc(i32* %220)
  %222 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %223 = load i32, i32* %9, align 4
  %224 = load i32, i32* %25, align 4
  %225 = load i32, i32* @RES_SRQ, align 4
  %226 = call i32 @put_res(%struct.mlx4_dev* %222, i32 %223, i32 %224, i32 %225)
  %227 = load %struct.res_srq*, %struct.res_srq** %27, align 8
  %228 = load %struct.res_qp*, %struct.res_qp** %17, align 8
  %229 = getelementptr inbounds %struct.res_qp, %struct.res_qp* %228, i32 0, i32 2
  store %struct.res_srq* %227, %struct.res_srq** %229, align 8
  br label %230

230:                                              ; preds = %218, %215
  %231 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %232 = load i32, i32* %9, align 4
  %233 = load i32, i32* %23, align 4
  %234 = load i32, i32* @RES_CQ, align 4
  %235 = call i32 @put_res(%struct.mlx4_dev* %231, i32 %232, i32 %233, i32 %234)
  %236 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %237 = load i32, i32* %9, align 4
  %238 = load i32, i32* %19, align 4
  %239 = load i32, i32* @RES_MTT, align 4
  %240 = call i32 @put_res(%struct.mlx4_dev* %236, i32 %237, i32 %238, i32 %239)
  %241 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %242 = load i32, i32* %9, align 4
  %243 = load i32, i32* @RES_QP, align 4
  %244 = load i32, i32* %15, align 4
  %245 = call i32 @res_end_move(%struct.mlx4_dev* %241, i32 %242, i32 %243, i32 %244)
  store i32 0, i32* %7, align 4
  br label %286

246:                                              ; preds = %183
  %247 = load i32, i32* %26, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %255

249:                                              ; preds = %246
  %250 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %251 = load i32, i32* %9, align 4
  %252 = load i32, i32* %25, align 4
  %253 = load i32, i32* @RES_SRQ, align 4
  %254 = call i32 @put_res(%struct.mlx4_dev* %250, i32 %251, i32 %252, i32 %253)
  br label %255

255:                                              ; preds = %249, %246
  br label %256

256:                                              ; preds = %255, %163
  %257 = load i32, i32* %24, align 4
  %258 = load i32, i32* %23, align 4
  %259 = icmp ne i32 %257, %258
  br i1 %259, label %260, label %266

260:                                              ; preds = %256
  %261 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %262 = load i32, i32* %9, align 4
  %263 = load i32, i32* %24, align 4
  %264 = load i32, i32* @RES_CQ, align 4
  %265 = call i32 @put_res(%struct.mlx4_dev* %261, i32 %262, i32 %263, i32 %264)
  br label %266

266:                                              ; preds = %260, %256
  br label %267

267:                                              ; preds = %266, %148
  %268 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %269 = load i32, i32* %9, align 4
  %270 = load i32, i32* %23, align 4
  %271 = load i32, i32* @RES_CQ, align 4
  %272 = call i32 @put_res(%struct.mlx4_dev* %268, i32 %269, i32 %270, i32 %271)
  br label %273

273:                                              ; preds = %267, %134, %124
  %274 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %275 = load i32, i32* %9, align 4
  %276 = load i32, i32* %19, align 4
  %277 = load i32, i32* @RES_MTT, align 4
  %278 = call i32 @put_res(%struct.mlx4_dev* %274, i32 %275, i32 %276, i32 %277)
  br label %279

279:                                              ; preds = %273, %113
  %280 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %281 = load i32, i32* %9, align 4
  %282 = load i32, i32* @RES_QP, align 4
  %283 = load i32, i32* %15, align 4
  %284 = call i32 @res_abort_move(%struct.mlx4_dev* %280, i32 %281, i32 %282, i32 %283)
  %285 = load i32, i32* %14, align 4
  store i32 %285, i32* %7, align 4
  br label %286

286:                                              ; preds = %279, %230, %79, %69
  %287 = load i32, i32* %7, align 4
  ret i32 %287
}

declare dso_local i32 @qp_get_mtt_addr(%struct.mlx4_qp_context*) #1

declare dso_local i32 @qp_get_mtt_size(%struct.mlx4_qp_context*) #1

declare dso_local i32 @qp_get_rcqn(%struct.mlx4_qp_context*) #1

declare dso_local i32 @qp_get_scqn(%struct.mlx4_qp_context*) #1

declare dso_local i32 @qp_get_srqn(%struct.mlx4_qp_context*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @adjust_qp_sched_queue(%struct.mlx4_dev*, i32, %struct.mlx4_qp_context*, %struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @qp_res_start_move_to(%struct.mlx4_dev*, i32, i32, i32, %struct.res_qp**, i32) #1

declare dso_local i32 @get_res(%struct.mlx4_dev*, i32, i32, i32, %struct.res_srq**) #1

declare dso_local i32 @check_mtt_range(%struct.mlx4_dev*, i32, i32, i32, %struct.res_srq*) #1

declare dso_local i32 @adjust_proxy_tun_qkey(%struct.mlx4_dev*, %struct.mlx4_vhcr*, %struct.mlx4_qp_context*) #1

declare dso_local i32 @update_pkey_index(%struct.mlx4_dev*, i32, %struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @mlx4_DMA_wrapper(%struct.mlx4_dev*, i32, %struct.mlx4_vhcr*, %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_info*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @put_res(%struct.mlx4_dev*, i32, i32, i32) #1

declare dso_local i32 @res_end_move(%struct.mlx4_dev*, i32, i32, i32) #1

declare dso_local i32 @res_abort_move(%struct.mlx4_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
