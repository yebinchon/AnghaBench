; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_destroy_qp_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_destroy_qp_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32, i32 }
%struct.mlx5_ib_qp = type { i64, i64, %struct.TYPE_11__, i32, i32, i32, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i64, i64, i32, i32, i64 }
%struct.TYPE_10__ = type { %struct.mlx5_ib_qp_base }
%struct.mlx5_ib_qp_base = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.mlx5_ib_qp_base }
%struct.mlx5_ib_cq = type { i32 }
%struct.mlx5_modify_raw_qp_param = type { i32 }
%struct.TYPE_13__ = type { i32 }

@IB_QPT_RAW_PACKET = common dso_local global i64 0, align 8
@IB_QPS_RESET = common dso_local global i64 0, align 8
@MLX5_CMD_OP_2RST_QP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"mlx5_ib: modify QP 0x%06x to RESET failed\0A\00", align 1
@MLX5_QP_KERNEL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to destroy QP 0x%x\0A\00", align 1
@MLX5_QP_USER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_ib_dev*, %struct.mlx5_ib_qp*)* @destroy_qp_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_qp_common(%struct.mlx5_ib_dev* %0, %struct.mlx5_ib_qp* %1) #0 {
  %3 = alloca %struct.mlx5_ib_dev*, align 8
  %4 = alloca %struct.mlx5_ib_qp*, align 8
  %5 = alloca %struct.mlx5_ib_cq*, align 8
  %6 = alloca %struct.mlx5_ib_cq*, align 8
  %7 = alloca %struct.mlx5_ib_qp_base*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx5_modify_raw_qp_param, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %3, align 8
  store %struct.mlx5_ib_qp* %1, %struct.mlx5_ib_qp** %4, align 8
  %11 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %4, align 8
  %12 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %11, i32 0, i32 6
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  store %struct.mlx5_ib_qp_base* %13, %struct.mlx5_ib_qp_base** %7, align 8
  %14 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %4, align 8
  %15 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %21 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %4, align 8
  %22 = call i32 @destroy_rss_raw_qp_tir(%struct.mlx5_ib_dev* %20, %struct.mlx5_ib_qp* %21)
  br label %214

23:                                               ; preds = %2
  %24 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %4, align 8
  %25 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @IB_QPT_RAW_PACKET, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %23
  %31 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %4, align 8
  %32 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %31, i32 0, i32 7
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  br label %39

35:                                               ; preds = %23
  %36 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %4, align 8
  %37 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %36, i32 0, i32 6
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  br label %39

39:                                               ; preds = %35, %30
  %40 = phi %struct.mlx5_ib_qp_base* [ %34, %30 ], [ %38, %35 ]
  store %struct.mlx5_ib_qp_base* %40, %struct.mlx5_ib_qp_base** %7, align 8
  %41 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %4, align 8
  %42 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @IB_QPS_RESET, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %80

46:                                               ; preds = %39
  %47 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %4, align 8
  %48 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @IB_QPT_RAW_PACKET, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %46
  %54 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %4, align 8
  %55 = call i32 @mlx5_ib_qp_disable_pagefaults(%struct.mlx5_ib_qp* %54)
  %56 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %57 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @MLX5_CMD_OP_2RST_QP, align 4
  %60 = load %struct.mlx5_ib_qp_base*, %struct.mlx5_ib_qp_base** %7, align 8
  %61 = getelementptr inbounds %struct.mlx5_ib_qp_base, %struct.mlx5_ib_qp_base* %60, i32 0, i32 0
  %62 = call i32 @mlx5_core_qp_modify(i32 %58, i32 %59, i32 0, i32* null, %struct.TYPE_12__* %61)
  store i32 %62, i32* %9, align 4
  br label %69

63:                                               ; preds = %46
  %64 = getelementptr inbounds %struct.mlx5_modify_raw_qp_param, %struct.mlx5_modify_raw_qp_param* %10, i32 0, i32 0
  %65 = load i32, i32* @MLX5_CMD_OP_2RST_QP, align 4
  store i32 %65, i32* %64, align 4
  %66 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %67 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %4, align 8
  %68 = call i32 @modify_raw_packet_qp(%struct.mlx5_ib_dev* %66, %struct.mlx5_ib_qp* %67, %struct.mlx5_modify_raw_qp_param* %10, i32 0)
  store i32 %68, i32* %9, align 4
  br label %69

69:                                               ; preds = %63, %53
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %69
  %73 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %74 = load %struct.mlx5_ib_qp_base*, %struct.mlx5_ib_qp_base** %7, align 8
  %75 = getelementptr inbounds %struct.mlx5_ib_qp_base, %struct.mlx5_ib_qp_base* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @mlx5_ib_warn(%struct.mlx5_ib_dev* %73, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %72, %69
  br label %80

80:                                               ; preds = %79, %39
  %81 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %4, align 8
  %82 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %4, align 8
  %86 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %4, align 8
  %90 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @get_cqs(i64 %84, i32 %88, i32 %92, %struct.mlx5_ib_cq** %5, %struct.mlx5_ib_cq** %6)
  %94 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %95 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %94, i32 0, i32 1
  %96 = load i64, i64* %8, align 8
  %97 = call i32 @spin_lock_irqsave(i32* %95, i64 %96)
  %98 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %5, align 8
  %99 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %6, align 8
  %100 = call i32 @mlx5_ib_lock_cqs(%struct.mlx5_ib_cq* %98, %struct.mlx5_ib_cq* %99)
  %101 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %4, align 8
  %102 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %101, i32 0, i32 5
  %103 = call i32 @list_del(i32* %102)
  %104 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %5, align 8
  %105 = icmp ne %struct.mlx5_ib_cq* %104, null
  br i1 %105, label %106, label %110

106:                                              ; preds = %80
  %107 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %4, align 8
  %108 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %107, i32 0, i32 4
  %109 = call i32 @list_del(i32* %108)
  br label %110

110:                                              ; preds = %106, %80
  %111 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %6, align 8
  %112 = icmp ne %struct.mlx5_ib_cq* %111, null
  br i1 %112, label %113, label %117

113:                                              ; preds = %110
  %114 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %4, align 8
  %115 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %114, i32 0, i32 3
  %116 = call i32 @list_del(i32* %115)
  br label %117

117:                                              ; preds = %113, %110
  %118 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %4, align 8
  %119 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @MLX5_QP_KERNEL, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %155

123:                                              ; preds = %117
  %124 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %6, align 8
  %125 = load %struct.mlx5_ib_qp_base*, %struct.mlx5_ib_qp_base** %7, align 8
  %126 = getelementptr inbounds %struct.mlx5_ib_qp_base, %struct.mlx5_ib_qp_base* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %4, align 8
  %130 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %123
  %135 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %4, align 8
  %136 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = call i32* @to_msrq(i64 %138)
  br label %141

140:                                              ; preds = %123
  br label %141

141:                                              ; preds = %140, %134
  %142 = phi i32* [ %139, %134 ], [ null, %140 ]
  %143 = call i32 @__mlx5_ib_cq_clean(%struct.mlx5_ib_cq* %124, i32 %128, i32* %142)
  %144 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %5, align 8
  %145 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %6, align 8
  %146 = icmp ne %struct.mlx5_ib_cq* %144, %145
  br i1 %146, label %147, label %154

147:                                              ; preds = %141
  %148 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %5, align 8
  %149 = load %struct.mlx5_ib_qp_base*, %struct.mlx5_ib_qp_base** %7, align 8
  %150 = getelementptr inbounds %struct.mlx5_ib_qp_base, %struct.mlx5_ib_qp_base* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @__mlx5_ib_cq_clean(%struct.mlx5_ib_cq* %148, i32 %152, i32* null)
  br label %154

154:                                              ; preds = %147, %141
  br label %155

155:                                              ; preds = %154, %117
  %156 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %5, align 8
  %157 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %6, align 8
  %158 = call i32 @mlx5_ib_unlock_cqs(%struct.mlx5_ib_cq* %156, %struct.mlx5_ib_cq* %157)
  %159 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %160 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %159, i32 0, i32 1
  %161 = load i64, i64* %8, align 8
  %162 = call i32 @spin_unlock_irqrestore(i32* %160, i64 %161)
  %163 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %4, align 8
  %164 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @IB_QPT_RAW_PACKET, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %173

169:                                              ; preds = %155
  %170 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %171 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %4, align 8
  %172 = call i32 @destroy_raw_packet_qp(%struct.mlx5_ib_dev* %170, %struct.mlx5_ib_qp* %171)
  br label %190

173:                                              ; preds = %155
  %174 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %175 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.mlx5_ib_qp_base*, %struct.mlx5_ib_qp_base** %7, align 8
  %178 = getelementptr inbounds %struct.mlx5_ib_qp_base, %struct.mlx5_ib_qp_base* %177, i32 0, i32 0
  %179 = call i32 @mlx5_core_destroy_qp(i32 %176, %struct.TYPE_12__* %178)
  store i32 %179, i32* %9, align 4
  %180 = load i32, i32* %9, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %189

182:                                              ; preds = %173
  %183 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %184 = load %struct.mlx5_ib_qp_base*, %struct.mlx5_ib_qp_base** %7, align 8
  %185 = getelementptr inbounds %struct.mlx5_ib_qp_base, %struct.mlx5_ib_qp_base* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @mlx5_ib_warn(%struct.mlx5_ib_dev* %183, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %187)
  br label %189

189:                                              ; preds = %182, %173
  br label %190

190:                                              ; preds = %189, %169
  %191 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %4, align 8
  %192 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @MLX5_QP_KERNEL, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %200

196:                                              ; preds = %190
  %197 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %198 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %4, align 8
  %199 = call i32 @destroy_qp_kernel(%struct.mlx5_ib_dev* %197, %struct.mlx5_ib_qp* %198)
  br label %214

200:                                              ; preds = %190
  %201 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %4, align 8
  %202 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @MLX5_QP_USER, align 8
  %205 = icmp eq i64 %203, %204
  br i1 %205, label %206, label %213

206:                                              ; preds = %200
  %207 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %4, align 8
  %208 = call %struct.TYPE_13__* @get_pd(%struct.mlx5_ib_qp* %207)
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i32 0, i32 0
  %210 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %4, align 8
  %211 = load %struct.mlx5_ib_qp_base*, %struct.mlx5_ib_qp_base** %7, align 8
  %212 = call i32 @destroy_qp_user(i32* %209, %struct.mlx5_ib_qp* %210, %struct.mlx5_ib_qp_base* %211)
  br label %213

213:                                              ; preds = %206, %200
  br label %214

214:                                              ; preds = %19, %213, %196
  ret void
}

declare dso_local i32 @destroy_rss_raw_qp_tir(%struct.mlx5_ib_dev*, %struct.mlx5_ib_qp*) #1

declare dso_local i32 @mlx5_ib_qp_disable_pagefaults(%struct.mlx5_ib_qp*) #1

declare dso_local i32 @mlx5_core_qp_modify(i32, i32, i32, i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @modify_raw_packet_qp(%struct.mlx5_ib_dev*, %struct.mlx5_ib_qp*, %struct.mlx5_modify_raw_qp_param*, i32) #1

declare dso_local i32 @mlx5_ib_warn(%struct.mlx5_ib_dev*, i8*, i32) #1

declare dso_local i32 @get_cqs(i64, i32, i32, %struct.mlx5_ib_cq**, %struct.mlx5_ib_cq**) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mlx5_ib_lock_cqs(%struct.mlx5_ib_cq*, %struct.mlx5_ib_cq*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @__mlx5_ib_cq_clean(%struct.mlx5_ib_cq*, i32, i32*) #1

declare dso_local i32* @to_msrq(i64) #1

declare dso_local i32 @mlx5_ib_unlock_cqs(%struct.mlx5_ib_cq*, %struct.mlx5_ib_cq*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @destroy_raw_packet_qp(%struct.mlx5_ib_dev*, %struct.mlx5_ib_qp*) #1

declare dso_local i32 @mlx5_core_destroy_qp(i32, %struct.TYPE_12__*) #1

declare dso_local i32 @destroy_qp_kernel(%struct.mlx5_ib_dev*, %struct.mlx5_ib_qp*) #1

declare dso_local i32 @destroy_qp_user(i32*, %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp_base*) #1

declare dso_local %struct.TYPE_13__* @get_pd(%struct.mlx5_ib_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
