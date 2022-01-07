; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_mad.c_create_pv_sqp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_mad.c_create_pv_sqp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_demux_pv_ctx = type { i32, i64, i32, i32, i32, %struct.mlx4_ib_demux_pv_qp* }
%struct.mlx4_ib_demux_pv_qp = type { i32* }
%struct.mlx4_ib_qp_tunnel_init_attr = type { i32, i64, i32, i32, i64, i32, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32, %struct.mlx4_ib_demux_pv_ctx*, %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.ib_qp_attr = type { i32, i64, i32, i32, i64, i32, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32*** }

@IB_QPT_GSI = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IB_SIGNAL_ALL_WR = common dso_local global i32 0, align 4
@MLX4_NUM_TUNNEL_BUFS = common dso_local global i32 0, align 4
@IB_QPT_UD = common dso_local global i32 0, align 4
@MLX4_IB_SRIOV_TUNNEL_QP = common dso_local global i64 0, align 8
@IB_QP_STATE = common dso_local global i32 0, align 4
@IB_QP_PKEY_INDEX = common dso_local global i32 0, align 4
@IB_QP_QKEY = common dso_local global i32 0, align 4
@IB_QP_PORT = common dso_local global i32 0, align 4
@MLX4_IB_SRIOV_SQP = common dso_local global i64 0, align 8
@pv_qp_event_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Couldn't create %s QP (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"tunnel\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"special\00", align 1
@IB_QPS_INIT = common dso_local global i32 0, align 4
@IB_DEFAULT_PKEY_FULL = common dso_local global i32 0, align 4
@IB_QP1_QKEY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"Couldn't change %s qp state to INIT (%d)\0A\00", align 1
@IB_QPS_RTR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"Couldn't change %s qp state to RTR (%d)\0A\00", align 1
@IB_QPS_RTS = common dso_local global i32 0, align 4
@IB_QP_SQ_PSN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"Couldn't change %s qp state to RTS (%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c" mlx4_ib_post_pv_buf error (err = %d, i = %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_ib_demux_pv_ctx*, i32, i32)* @create_pv_sqp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_pv_sqp(%struct.mlx4_ib_demux_pv_ctx* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_ib_demux_pv_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx4_ib_demux_pv_qp*, align 8
  %11 = alloca %struct.mlx4_ib_qp_tunnel_init_attr, align 8
  %12 = alloca %struct.ib_qp_attr, align 8
  %13 = alloca i32, align 4
  store %struct.mlx4_ib_demux_pv_ctx* %0, %struct.mlx4_ib_demux_pv_ctx** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @IB_QPT_GSI, align 4
  %16 = icmp ugt i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %273

20:                                               ; preds = %3
  %21 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %5, align 8
  %22 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %21, i32 0, i32 5
  %23 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %23, i64 %25
  store %struct.mlx4_ib_demux_pv_qp* %26, %struct.mlx4_ib_demux_pv_qp** %10, align 8
  %27 = call i32 @memset(%struct.mlx4_ib_qp_tunnel_init_attr* %11, i32 0, i32 104)
  %28 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %5, align 8
  %29 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = getelementptr inbounds %struct.mlx4_ib_qp_tunnel_init_attr, %struct.mlx4_ib_qp_tunnel_init_attr* %11, i32 0, i32 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 8
  store i32 %30, i32* %32, align 8
  %33 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %5, align 8
  %34 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = getelementptr inbounds %struct.mlx4_ib_qp_tunnel_init_attr, %struct.mlx4_ib_qp_tunnel_init_attr* %11, i32 0, i32 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 7
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @IB_SIGNAL_ALL_WR, align 4
  %39 = getelementptr inbounds %struct.mlx4_ib_qp_tunnel_init_attr, %struct.mlx4_ib_qp_tunnel_init_attr* %11, i32 0, i32 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 6
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* @MLX4_NUM_TUNNEL_BUFS, align 4
  %42 = getelementptr inbounds %struct.mlx4_ib_qp_tunnel_init_attr, %struct.mlx4_ib_qp_tunnel_init_attr* %11, i32 0, i32 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 5
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 8
  %45 = load i32, i32* @MLX4_NUM_TUNNEL_BUFS, align 4
  %46 = getelementptr inbounds %struct.mlx4_ib_qp_tunnel_init_attr, %struct.mlx4_ib_qp_tunnel_init_attr* %11, i32 0, i32 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 5
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  store i32 %45, i32* %48, align 4
  %49 = getelementptr inbounds %struct.mlx4_ib_qp_tunnel_init_attr, %struct.mlx4_ib_qp_tunnel_init_attr* %11, i32 0, i32 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 5
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 2
  store i32 1, i32* %51, align 8
  %52 = getelementptr inbounds %struct.mlx4_ib_qp_tunnel_init_attr, %struct.mlx4_ib_qp_tunnel_init_attr* %11, i32 0, i32 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 5
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 3
  store i32 1, i32* %54, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %82

57:                                               ; preds = %20
  %58 = load i32, i32* @IB_QPT_UD, align 4
  %59 = getelementptr inbounds %struct.mlx4_ib_qp_tunnel_init_attr, %struct.mlx4_ib_qp_tunnel_init_attr* %11, i32 0, i32 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load i64, i64* @MLX4_IB_SRIOV_TUNNEL_QP, align 8
  %62 = trunc i64 %61 to i32
  %63 = getelementptr inbounds %struct.mlx4_ib_qp_tunnel_init_attr, %struct.mlx4_ib_qp_tunnel_init_attr* %11, i32 0, i32 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %5, align 8
  %66 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = getelementptr inbounds %struct.mlx4_ib_qp_tunnel_init_attr, %struct.mlx4_ib_qp_tunnel_init_attr* %11, i32 0, i32 0
  store i32 %67, i32* %68, align 8
  %69 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %5, align 8
  %70 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds %struct.mlx4_ib_qp_tunnel_init_attr, %struct.mlx4_ib_qp_tunnel_init_attr* %11, i32 0, i32 1
  store i64 %71, i64* %72, align 8
  %73 = load i32, i32* %6, align 4
  %74 = getelementptr inbounds %struct.mlx4_ib_qp_tunnel_init_attr, %struct.mlx4_ib_qp_tunnel_init_attr* %11, i32 0, i32 2
  store i32 %73, i32* %74, align 8
  %75 = load i32, i32* @IB_QP_STATE, align 4
  %76 = load i32, i32* @IB_QP_PKEY_INDEX, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @IB_QP_QKEY, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @IB_QP_PORT, align 4
  %81 = or i32 %79, %80
  store i32 %81, i32* %13, align 4
  br label %95

82:                                               ; preds = %20
  %83 = load i32, i32* %6, align 4
  %84 = getelementptr inbounds %struct.mlx4_ib_qp_tunnel_init_attr, %struct.mlx4_ib_qp_tunnel_init_attr* %11, i32 0, i32 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load i64, i64* @MLX4_IB_SRIOV_SQP, align 8
  %87 = trunc i64 %86 to i32
  %88 = getelementptr inbounds %struct.mlx4_ib_qp_tunnel_init_attr, %struct.mlx4_ib_qp_tunnel_init_attr* %11, i32 0, i32 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* @IB_QP_STATE, align 4
  %91 = load i32, i32* @IB_QP_PKEY_INDEX, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @IB_QP_QKEY, align 4
  %94 = or i32 %92, %93
  store i32 %94, i32* %13, align 4
  br label %95

95:                                               ; preds = %82, %57
  %96 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %5, align 8
  %97 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = getelementptr inbounds %struct.mlx4_ib_qp_tunnel_init_attr, %struct.mlx4_ib_qp_tunnel_init_attr* %11, i32 0, i32 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 8
  %101 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %5, align 8
  %102 = getelementptr inbounds %struct.mlx4_ib_qp_tunnel_init_attr, %struct.mlx4_ib_qp_tunnel_init_attr* %11, i32 0, i32 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 4
  store %struct.mlx4_ib_demux_pv_ctx* %101, %struct.mlx4_ib_demux_pv_ctx** %103, align 8
  %104 = load i32, i32* @pv_qp_event_handler, align 4
  %105 = getelementptr inbounds %struct.mlx4_ib_qp_tunnel_init_attr, %struct.mlx4_ib_qp_tunnel_init_attr* %11, i32 0, i32 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 3
  store i32 %104, i32* %106, align 4
  %107 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %5, align 8
  %108 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds %struct.mlx4_ib_qp_tunnel_init_attr, %struct.mlx4_ib_qp_tunnel_init_attr* %11, i32 0, i32 8
  %111 = call i32* @ib_create_qp(i32 %109, %struct.TYPE_9__* %110)
  %112 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %10, align 8
  %113 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %112, i32 0, i32 0
  store i32* %111, i32** %113, align 8
  %114 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %10, align 8
  %115 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = call i64 @IS_ERR(i32* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %133

119:                                              ; preds = %95
  %120 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %10, align 8
  %121 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = call i32 @PTR_ERR(i32* %122)
  store i32 %123, i32* %9, align 4
  %124 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %10, align 8
  %125 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %124, i32 0, i32 0
  store i32* null, i32** %125, align 8
  %126 = load i32, i32* %7, align 4
  %127 = icmp ne i32 %126, 0
  %128 = zext i1 %127 to i64
  %129 = select i1 %127, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %130 = load i32, i32* %9, align 4
  %131 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %129, i32 %130)
  %132 = load i32, i32* %9, align 4
  store i32 %132, i32* %4, align 4
  br label %273

133:                                              ; preds = %95
  %134 = bitcast %struct.ib_qp_attr* %12 to %struct.mlx4_ib_qp_tunnel_init_attr*
  %135 = call i32 @memset(%struct.mlx4_ib_qp_tunnel_init_attr* %134, i32 0, i32 104)
  %136 = load i32, i32* @IB_QPS_INIT, align 4
  %137 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %12, i32 0, i32 5
  store i32 %136, i32* %137, align 8
  store i32 0, i32* %9, align 4
  %138 = load i32, i32* %7, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %154

140:                                              ; preds = %133
  %141 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %5, align 8
  %142 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = call %struct.TYPE_8__* @to_mdev(i32 %143)
  %145 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %5, align 8
  %146 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %5, align 8
  %149 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @IB_DEFAULT_PKEY_FULL, align 4
  %152 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %12, i32 0, i32 7
  %153 = call i32 @find_slave_port_pkey_ix(%struct.TYPE_8__* %144, i64 %147, i32 %150, i32 %151, i32* %152)
  store i32 %153, i32* %9, align 4
  br label %154

154:                                              ; preds = %140, %133
  %155 = load i32, i32* %9, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %160, label %157

157:                                              ; preds = %154
  %158 = load i32, i32* %7, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %183, label %160

160:                                              ; preds = %157, %154
  %161 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %5, align 8
  %162 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = call %struct.TYPE_8__* @to_mdev(i32 %163)
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 0
  %167 = load i32***, i32**** %166, align 8
  %168 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %5, align 8
  %169 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = getelementptr inbounds i32**, i32*** %167, i64 %170
  %172 = load i32**, i32*** %171, align 8
  %173 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %5, align 8
  %174 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = sub nsw i32 %175, 1
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32*, i32** %172, i64 %177
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 0
  %181 = load i32, i32* %180, align 4
  %182 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %12, i32 0, i32 7
  store i32 %181, i32* %182, align 8
  br label %183

183:                                              ; preds = %160, %157
  %184 = load i32, i32* @IB_QP1_QKEY, align 4
  %185 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %12, i32 0, i32 6
  store i32 %184, i32* %185, align 4
  %186 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %5, align 8
  %187 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %12, i32 0, i32 3
  store i32 %188, i32* %189, align 4
  %190 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %10, align 8
  %191 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %190, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  %193 = bitcast %struct.ib_qp_attr* %12 to %struct.mlx4_ib_qp_tunnel_init_attr*
  %194 = load i32, i32* %13, align 4
  %195 = call i32 @ib_modify_qp(i32* %192, %struct.mlx4_ib_qp_tunnel_init_attr* %193, i32 %194)
  store i32 %195, i32* %9, align 4
  %196 = load i32, i32* %9, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %205

198:                                              ; preds = %183
  %199 = load i32, i32* %7, align 4
  %200 = icmp ne i32 %199, 0
  %201 = zext i1 %200 to i64
  %202 = select i1 %200, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %203 = load i32, i32* %9, align 4
  %204 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i8* %202, i32 %203)
  br label %265

205:                                              ; preds = %183
  %206 = load i32, i32* @IB_QPS_RTR, align 4
  %207 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %12, i32 0, i32 5
  store i32 %206, i32* %207, align 8
  %208 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %10, align 8
  %209 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %208, i32 0, i32 0
  %210 = load i32*, i32** %209, align 8
  %211 = bitcast %struct.ib_qp_attr* %12 to %struct.mlx4_ib_qp_tunnel_init_attr*
  %212 = load i32, i32* @IB_QP_STATE, align 4
  %213 = call i32 @ib_modify_qp(i32* %210, %struct.mlx4_ib_qp_tunnel_init_attr* %211, i32 %212)
  store i32 %213, i32* %9, align 4
  %214 = load i32, i32* %9, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %223

216:                                              ; preds = %205
  %217 = load i32, i32* %7, align 4
  %218 = icmp ne i32 %217, 0
  %219 = zext i1 %218 to i64
  %220 = select i1 %218, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %221 = load i32, i32* %9, align 4
  %222 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8* %220, i32 %221)
  br label %265

223:                                              ; preds = %205
  %224 = load i32, i32* @IB_QPS_RTS, align 4
  %225 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %12, i32 0, i32 5
  store i32 %224, i32* %225, align 8
  %226 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %12, i32 0, i32 4
  store i64 0, i64* %226, align 8
  %227 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %10, align 8
  %228 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %227, i32 0, i32 0
  %229 = load i32*, i32** %228, align 8
  %230 = bitcast %struct.ib_qp_attr* %12 to %struct.mlx4_ib_qp_tunnel_init_attr*
  %231 = load i32, i32* @IB_QP_STATE, align 4
  %232 = load i32, i32* @IB_QP_SQ_PSN, align 4
  %233 = or i32 %231, %232
  %234 = call i32 @ib_modify_qp(i32* %229, %struct.mlx4_ib_qp_tunnel_init_attr* %230, i32 %233)
  store i32 %234, i32* %9, align 4
  %235 = load i32, i32* %9, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %244

237:                                              ; preds = %223
  %238 = load i32, i32* %7, align 4
  %239 = icmp ne i32 %238, 0
  %240 = zext i1 %239 to i64
  %241 = select i1 %239, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %242 = load i32, i32* %9, align 4
  %243 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8* %241, i32 %242)
  br label %265

244:                                              ; preds = %223
  store i32 0, i32* %8, align 4
  br label %245

245:                                              ; preds = %261, %244
  %246 = load i32, i32* %8, align 4
  %247 = load i32, i32* @MLX4_NUM_TUNNEL_BUFS, align 4
  %248 = icmp slt i32 %246, %247
  br i1 %248, label %249, label %264

249:                                              ; preds = %245
  %250 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %5, align 8
  %251 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %10, align 8
  %252 = load i32, i32* %8, align 4
  %253 = call i32 @mlx4_ib_post_pv_qp_buf(%struct.mlx4_ib_demux_pv_ctx* %250, %struct.mlx4_ib_demux_pv_qp* %251, i32 %252)
  store i32 %253, i32* %9, align 4
  %254 = load i32, i32* %9, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %260

256:                                              ; preds = %249
  %257 = load i32, i32* %9, align 4
  %258 = load i32, i32* %8, align 4
  %259 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i32 %257, i32 %258)
  br label %265

260:                                              ; preds = %249
  br label %261

261:                                              ; preds = %260
  %262 = load i32, i32* %8, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %8, align 4
  br label %245

264:                                              ; preds = %245
  store i32 0, i32* %4, align 4
  br label %273

265:                                              ; preds = %256, %237, %216, %198
  %266 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %10, align 8
  %267 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %266, i32 0, i32 0
  %268 = load i32*, i32** %267, align 8
  %269 = call i32 @ib_destroy_qp(i32* %268)
  %270 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %10, align 8
  %271 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %270, i32 0, i32 0
  store i32* null, i32** %271, align 8
  %272 = load i32, i32* %9, align 4
  store i32 %272, i32* %4, align 4
  br label %273

273:                                              ; preds = %265, %264, %119, %17
  %274 = load i32, i32* %4, align 4
  ret i32 %274
}

declare dso_local i32 @memset(%struct.mlx4_ib_qp_tunnel_init_attr*, i32, i32) #1

declare dso_local i32* @ib_create_qp(i32, %struct.TYPE_9__*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @find_slave_port_pkey_ix(%struct.TYPE_8__*, i64, i32, i32, i32*) #1

declare dso_local %struct.TYPE_8__* @to_mdev(i32) #1

declare dso_local i32 @ib_modify_qp(i32*, %struct.mlx4_ib_qp_tunnel_init_attr*, i32) #1

declare dso_local i32 @mlx4_ib_post_pv_qp_buf(%struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_qp*, i32) #1

declare dso_local i32 @ib_destroy_qp(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
