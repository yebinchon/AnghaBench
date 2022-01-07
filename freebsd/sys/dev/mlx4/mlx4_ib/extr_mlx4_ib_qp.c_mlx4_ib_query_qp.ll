; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_qp.c_mlx4_ib_query_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_qp.c_mlx4_ib_query_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32, i32 }
%struct.ib_qp_attr = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_10__, %struct.TYPE_11__, i32, %struct.TYPE_11__, i32, i32 }
%struct.TYPE_10__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.ib_qp_init_attr = type { i32, i32, %struct.TYPE_10__ }
%struct.mlx4_ib_dev = type { i32 }
%struct.mlx4_ib_qp = type { i64, i32, i32, i64, i32, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.mlx4_qp_context = type { i32, %struct.TYPE_12__, i32, %struct.TYPE_12__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32 }

@IB_QPS_RESET = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IB_QPT_RC = common dso_local global i64 0, align 8
@IB_QPT_UC = common dso_local global i64 0, align 8
@IB_QPS_INIT = common dso_local global i64 0, align 8
@MLX4_QP_STATE_SQ_DRAINING = common dso_local global i32 0, align 4
@MLX4_IB_QP_BLOCK_MULTICAST_LOOPBACK = common dso_local global i32 0, align 4
@IB_QP_CREATE_BLOCK_MULTICAST_LOOPBACK = common dso_local global i32 0, align 4
@MLX4_IB_QP_LSO = common dso_local global i32 0, align 4
@IB_QP_CREATE_IPOIB_UD_LSO = common dso_local global i32 0, align 4
@MLX4_IB_QP_NETIF = common dso_local global i32 0, align 4
@IB_QP_CREATE_NETIF_QP = common dso_local global i32 0, align 4
@MLX4_WQE_CTRL_CQ_UPDATE = common dso_local global i32 0, align 4
@IB_SIGNAL_ALL_WR = common dso_local global i32 0, align 4
@IB_SIGNAL_REQ_WR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_ib_query_qp(%struct.ib_qp* %0, %struct.ib_qp_attr* %1, i32 %2, %struct.ib_qp_init_attr* %3) #0 {
  %5 = alloca %struct.ib_qp*, align 8
  %6 = alloca %struct.ib_qp_attr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_qp_init_attr*, align 8
  %9 = alloca %struct.mlx4_ib_dev*, align 8
  %10 = alloca %struct.mlx4_ib_qp*, align 8
  %11 = alloca %struct.mlx4_qp_context, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %5, align 8
  store %struct.ib_qp_attr* %1, %struct.ib_qp_attr** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ib_qp_init_attr* %3, %struct.ib_qp_init_attr** %8, align 8
  %14 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %15 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.mlx4_ib_dev* @to_mdev(i32 %16)
  store %struct.mlx4_ib_dev* %17, %struct.mlx4_ib_dev** %9, align 8
  %18 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %19 = call %struct.mlx4_ib_qp* @to_mqp(%struct.ib_qp* %18)
  store %struct.mlx4_ib_qp* %19, %struct.mlx4_ib_qp** %10, align 8
  store i32 0, i32* %13, align 4
  %20 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %21 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %20, i32 0, i32 4
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %24 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @IB_QPS_RESET, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %4
  %29 = load i64, i64* @IB_QPS_RESET, align 8
  %30 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %31 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  br label %220

32:                                               ; preds = %4
  %33 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %9, align 8
  %34 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %37 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %36, i32 0, i32 8
  %38 = call i32 @mlx4_qp_query(i32 %35, i32* %37, %struct.mlx4_qp_context* %11)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %32
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %13, align 4
  br label %331

44:                                               ; preds = %32
  %45 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %11, i32 0, i32 9
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @be32_to_cpu(i32 %46)
  %48 = ashr i32 %47, 28
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = call i64 @to_ib_qp_state(i32 %49)
  %51 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %52 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %54 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %57 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %11, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = ashr i32 %59, 5
  %61 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %62 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 8
  %63 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %11, i32 0, i32 9
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @be32_to_cpu(i32 %64)
  %66 = ashr i32 %65, 11
  %67 = and i32 %66, 3
  %68 = call i32 @to_ib_mig_state(i32 %67)
  %69 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %70 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %69, i32 0, i32 23
  store i32 %68, i32* %70, align 8
  %71 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %11, i32 0, i32 8
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @be32_to_cpu(i32 %72)
  %74 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %75 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 4
  %76 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %11, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @be32_to_cpu(i32 %77)
  %79 = and i32 %78, 16777215
  %80 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %81 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 8
  %82 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %11, i32 0, i32 7
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @be32_to_cpu(i32 %83)
  %85 = and i32 %84, 16777215
  %86 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %87 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %86, i32 0, i32 4
  store i32 %85, i32* %87, align 4
  %88 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %11, i32 0, i32 6
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @be32_to_cpu(i32 %89)
  %91 = and i32 %90, 16777215
  %92 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %93 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %92, i32 0, i32 5
  store i32 %91, i32* %93, align 8
  %94 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %11, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @be32_to_cpu(i32 %95)
  %97 = call i32 @to_ib_qp_access_flags(i32 %96)
  %98 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %99 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %98, i32 0, i32 22
  store i32 %97, i32* %99, align 4
  %100 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %101 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %100, i32 0, i32 7
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @IB_QPT_RC, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %113, label %106

106:                                              ; preds = %44
  %107 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %108 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %107, i32 0, i32 7
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @IB_QPT_UC, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %136

113:                                              ; preds = %106, %44
  %114 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %9, align 8
  %115 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %116 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %115, i32 0, i32 21
  %117 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %11, i32 0, i32 3
  %118 = call i32 @to_ib_ah_attr(%struct.mlx4_ib_dev* %114, %struct.TYPE_11__* %116, %struct.TYPE_12__* %117)
  %119 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %9, align 8
  %120 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %121 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %120, i32 0, i32 19
  %122 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %11, i32 0, i32 1
  %123 = call i32 @to_ib_ah_attr(%struct.mlx4_ib_dev* %119, %struct.TYPE_11__* %121, %struct.TYPE_12__* %122)
  %124 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %11, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = and i32 %126, 127
  %128 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %129 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %128, i32 0, i32 6
  store i32 %127, i32* %129, align 4
  %130 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %131 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %130, i32 0, i32 19
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %135 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %134, i32 0, i32 20
  store i32 %133, i32* %135, align 4
  br label %136

136:                                              ; preds = %113, %106
  %137 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %11, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = and i32 %139, 127
  %141 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %142 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %141, i32 0, i32 7
  store i32 %140, i32* %142, align 8
  %143 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %144 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @IB_QPS_INIT, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %154

148:                                              ; preds = %136
  %149 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %150 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %153 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %152, i32 0, i32 8
  store i32 %151, i32* %153, align 4
  br label %164

154:                                              ; preds = %136
  %155 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %11, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = and i32 %157, 64
  %159 = icmp ne i32 %158, 0
  %160 = zext i1 %159 to i64
  %161 = select i1 %159, i32 2, i32 1
  %162 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %163 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %162, i32 0, i32 8
  store i32 %161, i32* %163, align 4
  br label %164

164:                                              ; preds = %154, %148
  %165 = load i32, i32* %12, align 4
  %166 = load i32, i32* @MLX4_QP_STATE_SQ_DRAINING, align 4
  %167 = icmp eq i32 %165, %166
  %168 = zext i1 %167 to i32
  %169 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %170 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %169, i32 0, i32 9
  store i32 %168, i32* %170, align 8
  %171 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %11, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @be32_to_cpu(i32 %172)
  %174 = ashr i32 %173, 21
  %175 = and i32 %174, 7
  %176 = shl i32 1, %175
  %177 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %178 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %177, i32 0, i32 10
  store i32 %176, i32* %178, align 4
  %179 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %11, i32 0, i32 5
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @be32_to_cpu(i32 %180)
  %182 = ashr i32 %181, 21
  %183 = and i32 %182, 7
  %184 = shl i32 1, %183
  %185 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %186 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %185, i32 0, i32 11
  store i32 %184, i32* %186, align 8
  %187 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %11, i32 0, i32 4
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @be32_to_cpu(i32 %188)
  %190 = ashr i32 %189, 24
  %191 = and i32 %190, 31
  %192 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %193 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %192, i32 0, i32 12
  store i32 %191, i32* %193, align 4
  %194 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %11, i32 0, i32 3
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 4
  %197 = ashr i32 %196, 3
  %198 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %199 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %198, i32 0, i32 13
  store i32 %197, i32* %199, align 8
  %200 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %11, i32 0, i32 2
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @be32_to_cpu(i32 %201)
  %203 = ashr i32 %202, 16
  %204 = and i32 %203, 7
  %205 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %206 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %205, i32 0, i32 14
  store i32 %204, i32* %206, align 4
  %207 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %11, i32 0, i32 2
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @be32_to_cpu(i32 %208)
  %210 = ashr i32 %209, 13
  %211 = and i32 %210, 7
  %212 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %213 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %212, i32 0, i32 15
  store i32 %211, i32* %213, align 8
  %214 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %11, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 4
  %217 = ashr i32 %216, 3
  %218 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %219 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %218, i32 0, i32 16
  store i32 %217, i32* %219, align 4
  br label %220

220:                                              ; preds = %164, %28
  %221 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %222 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %225 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %224, i32 0, i32 17
  store i64 %223, i64* %225, align 8
  %226 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %227 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %226, i32 0, i32 6
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %231 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %230, i32 0, i32 18
  %232 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %231, i32 0, i32 4
  store i32 %229, i32* %232, align 4
  %233 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %234 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %233, i32 0, i32 6
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %238 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %237, i32 0, i32 18
  %239 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %238, i32 0, i32 3
  store i32 %236, i32* %239, align 8
  %240 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %241 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %259, label %244

244:                                              ; preds = %220
  %245 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %246 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %245, i32 0, i32 5
  %247 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %250 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %249, i32 0, i32 18
  %251 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %250, i32 0, i32 2
  store i32 %248, i32* %251, align 4
  %252 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %253 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %252, i32 0, i32 5
  %254 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %257 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %256, i32 0, i32 18
  %258 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %257, i32 0, i32 1
  store i32 %255, i32* %258, align 8
  br label %266

259:                                              ; preds = %220
  %260 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %261 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %260, i32 0, i32 18
  %262 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %261, i32 0, i32 2
  store i32 0, i32* %262, align 4
  %263 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %264 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %263, i32 0, i32 18
  %265 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %264, i32 0, i32 1
  store i32 0, i32* %265, align 8
  br label %266

266:                                              ; preds = %259, %244
  %267 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %268 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %267, i32 0, i32 18
  %269 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %268, i32 0, i32 0
  store i64 0, i64* %269, align 8
  %270 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %271 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %270, i32 0, i32 2
  %272 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %273 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %272, i32 0, i32 18
  %274 = bitcast %struct.TYPE_10__* %271 to i8*
  %275 = bitcast %struct.TYPE_10__* %273 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %274, i8* align 8 %275, i64 24, i1 false)
  %276 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %277 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %276, i32 0, i32 1
  store i32 0, i32* %277, align 4
  %278 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %279 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %278, i32 0, i32 2
  %280 = load i32, i32* %279, align 4
  %281 = load i32, i32* @MLX4_IB_QP_BLOCK_MULTICAST_LOOPBACK, align 4
  %282 = and i32 %280, %281
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %290

284:                                              ; preds = %266
  %285 = load i32, i32* @IB_QP_CREATE_BLOCK_MULTICAST_LOOPBACK, align 4
  %286 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %287 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = or i32 %288, %285
  store i32 %289, i32* %287, align 4
  br label %290

290:                                              ; preds = %284, %266
  %291 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %292 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %291, i32 0, i32 2
  %293 = load i32, i32* %292, align 4
  %294 = load i32, i32* @MLX4_IB_QP_LSO, align 4
  %295 = and i32 %293, %294
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %303

297:                                              ; preds = %290
  %298 = load i32, i32* @IB_QP_CREATE_IPOIB_UD_LSO, align 4
  %299 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %300 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = or i32 %301, %298
  store i32 %302, i32* %300, align 4
  br label %303

303:                                              ; preds = %297, %290
  %304 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %305 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %304, i32 0, i32 2
  %306 = load i32, i32* %305, align 4
  %307 = load i32, i32* @MLX4_IB_QP_NETIF, align 4
  %308 = and i32 %306, %307
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %316

310:                                              ; preds = %303
  %311 = load i32, i32* @IB_QP_CREATE_NETIF_QP, align 4
  %312 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %313 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %312, i32 0, i32 1
  %314 = load i32, i32* %313, align 4
  %315 = or i32 %314, %311
  store i32 %315, i32* %313, align 4
  br label %316

316:                                              ; preds = %310, %303
  %317 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %318 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %317, i32 0, i32 3
  %319 = load i64, i64* %318, align 8
  %320 = load i32, i32* @MLX4_WQE_CTRL_CQ_UPDATE, align 4
  %321 = call i64 @cpu_to_be32(i32 %320)
  %322 = icmp eq i64 %319, %321
  br i1 %322, label %323, label %325

323:                                              ; preds = %316
  %324 = load i32, i32* @IB_SIGNAL_ALL_WR, align 4
  br label %327

325:                                              ; preds = %316
  %326 = load i32, i32* @IB_SIGNAL_REQ_WR, align 4
  br label %327

327:                                              ; preds = %325, %323
  %328 = phi i32 [ %324, %323 ], [ %326, %325 ]
  %329 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %330 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %329, i32 0, i32 0
  store i32 %328, i32* %330, align 8
  br label %331

331:                                              ; preds = %327, %41
  %332 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %333 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %332, i32 0, i32 4
  %334 = call i32 @mutex_unlock(i32* %333)
  %335 = load i32, i32* %13, align 4
  ret i32 %335
}

declare dso_local %struct.mlx4_ib_dev* @to_mdev(i32) #1

declare dso_local %struct.mlx4_ib_qp* @to_mqp(%struct.ib_qp*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mlx4_qp_query(i32, i32*, %struct.mlx4_qp_context*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i64 @to_ib_qp_state(i32) #1

declare dso_local i32 @to_ib_mig_state(i32) #1

declare dso_local i32 @to_ib_qp_access_flags(i32) #1

declare dso_local i32 @to_ib_ah_attr(%struct.mlx4_ib_dev*, %struct.TYPE_11__*, %struct.TYPE_12__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @cpu_to_be32(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
