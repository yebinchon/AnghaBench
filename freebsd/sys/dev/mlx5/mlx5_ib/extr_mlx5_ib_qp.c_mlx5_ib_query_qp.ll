; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_mlx5_ib_query_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_mlx5_ib_query_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i64, i32, i32, i32, i32, i32, i64, i32 }
%struct.ib_qp_attr = type { i32, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.ib_qp_init_attr = type { i64, i32, i32, %struct.TYPE_8__, i32, i32, i32, i32 }
%struct.mlx5_ib_dev = type { i32 }
%struct.mlx5_ib_qp = type { i32, i32, i32, i32, %struct.TYPE_7__, %struct.TYPE_6__, i32, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64 }

@ENOSYS = common dso_local global i32 0, align 4
@IB_QPT_GSI = common dso_local global i64 0, align 8
@IB_QPT_RAW_PACKET = common dso_local global i64 0, align 8
@MLX5_IB_QP_BLOCK_MULTICAST_LOOPBACK = common dso_local global i32 0, align 4
@IB_QP_CREATE_BLOCK_MULTICAST_LOOPBACK = common dso_local global i32 0, align 4
@MLX5_IB_QP_CROSS_CHANNEL = common dso_local global i32 0, align 4
@IB_QP_CREATE_CROSS_CHANNEL = common dso_local global i32 0, align 4
@MLX5_IB_QP_MANAGED_SEND = common dso_local global i32 0, align 4
@IB_QP_CREATE_MANAGED_SEND = common dso_local global i32 0, align 4
@MLX5_IB_QP_MANAGED_RECV = common dso_local global i32 0, align 4
@IB_QP_CREATE_MANAGED_RECV = common dso_local global i32 0, align 4
@MLX5_IB_QP_SQPN_QP1 = common dso_local global i32 0, align 4
@MLX5_WQE_CTRL_CQ_UPDATE = common dso_local global i32 0, align 4
@IB_SIGNAL_ALL_WR = common dso_local global i32 0, align 4
@IB_SIGNAL_REQ_WR = common dso_local global i32 0, align 4
@mlx5_ib_page_fault_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_ib_query_qp(%struct.ib_qp* %0, %struct.ib_qp_attr* %1, i32 %2, %struct.ib_qp_init_attr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_qp*, align 8
  %7 = alloca %struct.ib_qp_attr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_qp_init_attr*, align 8
  %10 = alloca %struct.mlx5_ib_dev*, align 8
  %11 = alloca %struct.mlx5_ib_qp*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %6, align 8
  store %struct.ib_qp_attr* %1, %struct.ib_qp_attr** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ib_qp_init_attr* %3, %struct.ib_qp_init_attr** %9, align 8
  %14 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %15 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %14, i32 0, i32 7
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.mlx5_ib_dev* @to_mdev(i32 %16)
  store %struct.mlx5_ib_dev* %17, %struct.mlx5_ib_dev** %10, align 8
  %18 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %19 = call %struct.mlx5_ib_qp* @to_mqp(%struct.ib_qp* %18)
  store %struct.mlx5_ib_qp* %19, %struct.mlx5_ib_qp** %11, align 8
  store i32 0, i32* %12, align 4
  %20 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %21 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %20, i32 0, i32 6
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i32, i32* @ENOSYS, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %249

27:                                               ; preds = %4
  %28 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %29 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @IB_QPT_GSI, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %27
  %37 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %38 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %41 = call i32 @mlx5_ib_gsi_query_qp(%struct.ib_qp* %37, %struct.ib_qp_attr* %38, i32 %39, %struct.ib_qp_init_attr* %40)
  store i32 %41, i32* %5, align 4
  br label %249

42:                                               ; preds = %27
  %43 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %44 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %43, i32 0, i32 2
  %45 = call i32 @mutex_lock(i32* %44)
  %46 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %47 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %46, i32 0, i32 7
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @IB_QPT_RAW_PACKET, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %65

52:                                               ; preds = %42
  %53 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %10, align 8
  %54 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %55 = call i32 @query_raw_packet_qp_state(%struct.mlx5_ib_dev* %53, %struct.mlx5_ib_qp* %54, i32* %13)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %244

59:                                               ; preds = %52
  %60 = load i32, i32* %13, align 4
  %61 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %62 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %61, i32 0, i32 6
  store i32 %60, i32* %62, align 8
  %63 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %64 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %63, i32 0, i32 0
  store i32 1, i32* %64, align 4
  br label %74

65:                                               ; preds = %42
  %66 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %10, align 8
  %67 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %68 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %69 = call i32 @query_qp_attr(%struct.mlx5_ib_dev* %66, %struct.mlx5_ib_qp* %67, %struct.ib_qp_attr* %68)
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  br label %244

73:                                               ; preds = %65
  br label %74

74:                                               ; preds = %73, %59
  %75 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %76 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %79 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 4
  %80 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %81 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %84 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 4
  %85 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %86 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %85, i32 0, i32 5
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %90 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 4
  store i32 %88, i32* %91, align 4
  %92 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %93 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %92, i32 0, i32 5
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %97 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 3
  store i32 %95, i32* %98, align 4
  %99 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %100 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %123, label %103

103:                                              ; preds = %74
  %104 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %105 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %109 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 2
  store i32 %107, i32* %110, align 4
  %111 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %112 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %111, i32 0, i32 4
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %116 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 1
  store i32 %114, i32* %117, align 4
  %118 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %119 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %122 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %121, i32 0, i32 7
  store i32 %120, i32* %122, align 8
  br label %130

123:                                              ; preds = %74
  %124 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %125 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 2
  store i32 0, i32* %126, align 4
  %127 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %128 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 1
  store i32 0, i32* %129, align 4
  br label %130

130:                                              ; preds = %123, %103
  %131 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %132 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %135 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %134, i32 0, i32 0
  store i64 %133, i64* %135, align 8
  %136 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %137 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %140 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %139, i32 0, i32 6
  store i32 %138, i32* %140, align 4
  %141 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %142 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %145 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %144, i32 0, i32 5
  store i32 %143, i32* %145, align 8
  %146 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %147 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %150 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %149, i32 0, i32 4
  store i32 %148, i32* %150, align 4
  %151 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %152 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %155 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  store i32 %153, i32* %156, align 4
  %157 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %158 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %157, i32 0, i32 3
  %159 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %160 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %159, i32 0, i32 1
  %161 = bitcast %struct.TYPE_8__* %158 to i8*
  %162 = bitcast %struct.TYPE_8__* %160 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %161, i8* align 4 %162, i64 20, i1 false)
  %163 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %164 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %163, i32 0, i32 2
  store i32 0, i32* %164, align 4
  %165 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %166 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @MLX5_IB_QP_BLOCK_MULTICAST_LOOPBACK, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %177

171:                                              ; preds = %130
  %172 = load i32, i32* @IB_QP_CREATE_BLOCK_MULTICAST_LOOPBACK, align 4
  %173 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %174 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = or i32 %175, %172
  store i32 %176, i32* %174, align 4
  br label %177

177:                                              ; preds = %171, %130
  %178 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %179 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @MLX5_IB_QP_CROSS_CHANNEL, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %177
  %185 = load i32, i32* @IB_QP_CREATE_CROSS_CHANNEL, align 4
  %186 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %187 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = or i32 %188, %185
  store i32 %189, i32* %187, align 4
  br label %190

190:                                              ; preds = %184, %177
  %191 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %192 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @MLX5_IB_QP_MANAGED_SEND, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %203

197:                                              ; preds = %190
  %198 = load i32, i32* @IB_QP_CREATE_MANAGED_SEND, align 4
  %199 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %200 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 4
  %202 = or i32 %201, %198
  store i32 %202, i32* %200, align 4
  br label %203

203:                                              ; preds = %197, %190
  %204 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %205 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* @MLX5_IB_QP_MANAGED_RECV, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %216

210:                                              ; preds = %203
  %211 = load i32, i32* @IB_QP_CREATE_MANAGED_RECV, align 4
  %212 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %213 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 4
  %215 = or i32 %214, %211
  store i32 %215, i32* %213, align 4
  br label %216

216:                                              ; preds = %210, %203
  %217 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %218 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* @MLX5_IB_QP_SQPN_QP1, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %229

223:                                              ; preds = %216
  %224 = call i32 (...) @mlx5_ib_create_qp_sqpn_qp1()
  %225 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %226 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 4
  %228 = or i32 %227, %224
  store i32 %228, i32* %226, align 4
  br label %229

229:                                              ; preds = %223, %216
  %230 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %231 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* @MLX5_WQE_CTRL_CQ_UPDATE, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %238

236:                                              ; preds = %229
  %237 = load i32, i32* @IB_SIGNAL_ALL_WR, align 4
  br label %240

238:                                              ; preds = %229
  %239 = load i32, i32* @IB_SIGNAL_REQ_WR, align 4
  br label %240

240:                                              ; preds = %238, %236
  %241 = phi i32 [ %237, %236 ], [ %239, %238 ]
  %242 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %243 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %242, i32 0, i32 1
  store i32 %241, i32* %243, align 8
  br label %244

244:                                              ; preds = %240, %72, %58
  %245 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %246 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %245, i32 0, i32 2
  %247 = call i32 @mutex_unlock(i32* %246)
  %248 = load i32, i32* %12, align 4
  store i32 %248, i32* %5, align 4
  br label %249

249:                                              ; preds = %244, %36, %24
  %250 = load i32, i32* %5, align 4
  ret i32 %250
}

declare dso_local %struct.mlx5_ib_dev* @to_mdev(i32) #1

declare dso_local %struct.mlx5_ib_qp* @to_mqp(%struct.ib_qp*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mlx5_ib_gsi_query_qp(%struct.ib_qp*, %struct.ib_qp_attr*, i32, %struct.ib_qp_init_attr*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @query_raw_packet_qp_state(%struct.mlx5_ib_dev*, %struct.mlx5_ib_qp*, i32*) #1

declare dso_local i32 @query_qp_attr(%struct.mlx5_ib_dev*, %struct.mlx5_ib_qp*, %struct.ib_qp_attr*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mlx5_ib_create_qp_sqpn_qp1(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
