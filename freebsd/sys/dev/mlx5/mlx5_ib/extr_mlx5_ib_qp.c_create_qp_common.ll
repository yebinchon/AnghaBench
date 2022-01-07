; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_create_qp_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_create_qp_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pd = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32 }
%struct.mlx5_ib_dev = type { i32, i32, %struct.mlx5_core_dev*, %struct.mlx5_ib_resources }
%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_ib_resources = type { i32, i32, i32, i32, i32, %struct.ib_pd* }
%struct.ib_qp_init_attr = type { i32, i32, i64, i32, i32, i32, i32, i32, i32, i64 }
%struct.ib_udata = type { i32 }
%struct.mlx5_ib_qp = type { i32, i32, i32, i64, i32, i32, i32, %struct.TYPE_22__, %struct.TYPE_31__, %struct.TYPE_28__, %struct.TYPE_27__, i32, i32, i32, i32, %struct.TYPE_25__ }
%struct.TYPE_22__ = type { %struct.TYPE_17__, %struct.TYPE_24__ }
%struct.TYPE_17__ = type { %struct.TYPE_32__ }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_24__ = type { %struct.mlx5_ib_qp_base }
%struct.mlx5_ib_qp_base = type { %struct.TYPE_23__, %struct.mlx5_ib_qp* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_28__ = type { i64, i32 }
%struct.TYPE_27__ = type { i32, i64, i32 }
%struct.TYPE_25__ = type { %struct.mlx5_ib_qp_base }
%struct.mlx5_ib_create_qp_resp = type { i32 }
%struct.mlx5_ib_cq = type { i32, i32 }
%struct.mlx5_ib_create_qp = type { i32, i64, i32, i64, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_18__ = type { i32 }

@create_qp_in = common dso_local global i32 0, align 4
@MLX5_IB_DEFAULT_UIDX = common dso_local global i32 0, align 4
@IB_QPT_RAW_PACKET = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@IB_QP_CREATE_BLOCK_MULTICAST_LOOPBACK = common dso_local global i32 0, align 4
@block_lb_mc = common dso_local global %struct.ib_pd* null, align 8
@.str = private unnamed_addr constant [42 x i8] c"block multicast loopback isn't supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MLX5_IB_QP_BLOCK_MULTICAST_LOOPBACK = common dso_local global i32 0, align 4
@IB_QP_CREATE_CROSS_CHANNEL = common dso_local global i32 0, align 4
@IB_QP_CREATE_MANAGED_SEND = common dso_local global i32 0, align 4
@IB_QP_CREATE_MANAGED_RECV = common dso_local global i32 0, align 4
@cd = common dso_local global %struct.ib_pd* null, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"cross-channel isn't supported\0A\00", align 1
@MLX5_IB_QP_CROSS_CHANNEL = common dso_local global i32 0, align 4
@MLX5_IB_QP_MANAGED_SEND = common dso_local global i32 0, align 4
@MLX5_IB_QP_MANAGED_RECV = common dso_local global i32 0, align 4
@IB_QPT_UD = common dso_local global i32 0, align 4
@IB_QP_CREATE_IPOIB_UD_LSO = common dso_local global i32 0, align 4
@ipoib_ipoib_offloads = common dso_local global %struct.ib_pd* null, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"ipoib UD lso qp isn't supported\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@IB_QP_CREATE_SCATTER_FCS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"Scatter FCS is supported only for Raw Packet QPs\00", align 1
@eth_net_offloads = common dso_local global %struct.ib_pd* null, align 8
@scatter_fcs = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"Scatter FCS isn't supported\0A\00", align 1
@MLX5_IB_QP_CAP_SCATTER_FCS = common dso_local global i32 0, align 4
@IB_SIGNAL_ALL_WR = common dso_local global i64 0, align 8
@MLX5_WQE_CTRL_CQ_UPDATE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"copy failed\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@MLX5_QP_FLAG_SIGNATURE = common dso_local global i32 0, align 4
@MLX5_QP_FLAG_SCATTER_CQE = common dso_local global i32 0, align 4
@wq_signature = common dso_local global %struct.ib_pd* null, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c"err %d\0A\00", align 1
@log_max_qp_sz = common dso_local global %struct.ib_pd* null, align 8
@.str.7 = private unnamed_addr constant [29 x i8] c"requested sq_wqe_count (%d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"invalid rq params\0A\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"requested sq_wqe_count (%d) > max allowed (%d)\0A\00", align 1
@.str.10 = private unnamed_addr constant [60 x i8] c"user-space is not allowed to create UD QPs spoofing as QP1\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MLX5_QP_EMPTY = common dso_local global i64 0, align 8
@st = common dso_local global %struct.ib_pd* null, align 8
@pm_state = common dso_local global %struct.ib_pd* null, align 8
@MLX5_QP_PM_MIGRATED = common dso_local global i32 0, align 4
@MLX5_IB_QPT_REG_UMR = common dso_local global i32 0, align 4
@latency_sensitive = common dso_local global %struct.ib_pd* null, align 8
@cd_master = common dso_local global %struct.ib_pd* null, align 8
@cd_slave_send = common dso_local global %struct.ib_pd* null, align 8
@cd_slave_receive = common dso_local global %struct.ib_pd* null, align 8
@cs_res = common dso_local global %struct.ib_pd* null, align 8
@MLX5_RES_SCAT_DATA64_CQE = common dso_local global i32 0, align 4
@MLX5_RES_SCAT_DATA32_CQE = common dso_local global i32 0, align 4
@cs_req = common dso_local global %struct.ib_pd* null, align 8
@MLX5_REQ_SCAT_DATA64_CQE = common dso_local global i32 0, align 4
@MLX5_REQ_SCAT_DATA32_CQE = common dso_local global i32 0, align 4
@log_rq_stride = common dso_local global %struct.ib_pd* null, align 8
@log_rq_size = common dso_local global %struct.ib_pd* null, align 8
@rq_type = common dso_local global %struct.ib_pd* null, align 8
@log_sq_size = common dso_local global %struct.ib_pd* null, align 8
@no_sq = common dso_local global %struct.ib_pd* null, align 8
@cqn_rcv = common dso_local global %struct.ib_pd* null, align 8
@cqn_snd = common dso_local global %struct.ib_pd* null, align 8
@srqn_rmpn = common dso_local global %struct.ib_pd* null, align 8
@xrcd = common dso_local global %struct.ib_pd* null, align 8
@dbr_addr = common dso_local global i32 0, align 4
@cqe_version = common dso_local global %struct.ib_pd* null, align 8
@MLX5_CQE_VERSION_V1 = common dso_local global i32 0, align 4
@user_index = common dso_local global %struct.ib_pd* null, align 8
@ulp_stateless_offload_mode = common dso_local global %struct.ib_pd* null, align 8
@MLX5_IB_QP_LSO = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [18 x i8] c"create qp failed\0A\00", align 1
@mlx5_ib_qp_event = common dso_local global i32 0, align 4
@MLX5_QP_USER = common dso_local global i64 0, align 8
@MLX5_QP_KERNEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*, %struct.ib_pd*, %struct.ib_qp_init_attr*, %struct.ib_udata*, %struct.mlx5_ib_qp*)* @create_qp_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_qp_common(%struct.mlx5_ib_dev* %0, %struct.ib_pd* %1, %struct.ib_qp_init_attr* %2, %struct.ib_udata* %3, %struct.mlx5_ib_qp* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5_ib_dev*, align 8
  %8 = alloca %struct.ib_pd*, align 8
  %9 = alloca %struct.ib_qp_init_attr*, align 8
  %10 = alloca %struct.ib_udata*, align 8
  %11 = alloca %struct.mlx5_ib_qp*, align 8
  %12 = alloca %struct.mlx5_ib_resources*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.mlx5_core_dev*, align 8
  %15 = alloca %struct.mlx5_ib_create_qp_resp, align 4
  %16 = alloca %struct.mlx5_ib_cq*, align 8
  %17 = alloca %struct.mlx5_ib_cq*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.mlx5_ib_create_qp, align 8
  %21 = alloca %struct.mlx5_ib_qp_base*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %7, align 8
  store %struct.ib_pd* %1, %struct.ib_pd** %8, align 8
  store %struct.ib_qp_init_attr* %2, %struct.ib_qp_init_attr** %9, align 8
  store %struct.ib_udata* %3, %struct.ib_udata** %10, align 8
  store %struct.mlx5_ib_qp* %4, %struct.mlx5_ib_qp** %11, align 8
  %28 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %7, align 8
  %29 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %28, i32 0, i32 3
  store %struct.mlx5_ib_resources* %29, %struct.mlx5_ib_resources** %12, align 8
  %30 = load i32, i32* @create_qp_in, align 4
  %31 = call i32 @MLX5_ST_SZ_BYTES(i32 %30)
  store i32 %31, i32* %13, align 4
  %32 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %7, align 8
  %33 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %32, i32 0, i32 2
  %34 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %33, align 8
  store %struct.mlx5_core_dev* %34, %struct.mlx5_core_dev** %14, align 8
  %35 = load i32, i32* @MLX5_IB_DEFAULT_UIDX, align 4
  store i32 %35, i32* %19, align 4
  %36 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %37 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @IB_QPT_RAW_PACKET, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %5
  %42 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %43 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %42, i32 0, i32 7
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %44, i32 0, i32 0
  br label %50

46:                                               ; preds = %5
  %47 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %48 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %47, i32 0, i32 15
  %49 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %48, i32 0, i32 0
  br label %50

50:                                               ; preds = %46, %41
  %51 = phi %struct.mlx5_ib_qp_base* [ %45, %41 ], [ %49, %46 ]
  store %struct.mlx5_ib_qp_base* %51, %struct.mlx5_ib_qp_base** %21, align 8
  %52 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %53 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @IB_QPT_RAW_PACKET, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %59 = call i32 @mlx5_ib_odp_create_qp(%struct.mlx5_ib_qp* %58)
  br label %60

60:                                               ; preds = %57, %50
  %61 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %62 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %61, i32 0, i32 14
  %63 = call i32 @mutex_init(i32* %62)
  %64 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %65 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %64, i32 0, i32 9
  %66 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %65, i32 0, i32 1
  %67 = call i32 @spin_lock_init(i32* %66)
  %68 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %69 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %68, i32 0, i32 10
  %70 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %69, i32 0, i32 2
  %71 = call i32 @spin_lock_init(i32* %70)
  %72 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %73 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %72, i32 0, i32 9
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %90

76:                                               ; preds = %60
  %77 = load %struct.ib_udata*, %struct.ib_udata** %10, align 8
  %78 = icmp ne %struct.ib_udata* %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* @ENOSYS, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %6, align 4
  br label %1010

82:                                               ; preds = %76
  %83 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %7, align 8
  %84 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %85 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %86 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %87 = load %struct.ib_udata*, %struct.ib_udata** %10, align 8
  %88 = call i32 @create_rss_raw_qp_tir(%struct.mlx5_ib_dev* %83, %struct.mlx5_ib_qp* %84, %struct.ib_pd* %85, %struct.ib_qp_init_attr* %86, %struct.ib_udata* %87)
  store i32 %88, i32* %24, align 4
  %89 = load i32, i32* %24, align 4
  store i32 %89, i32* %6, align 4
  br label %1010

90:                                               ; preds = %60
  %91 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %92 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @IB_QP_CREATE_BLOCK_MULTICAST_LOOPBACK, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %114

97:                                               ; preds = %90
  %98 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %14, align 8
  %99 = load %struct.ib_pd*, %struct.ib_pd** @block_lb_mc, align 8
  %100 = call i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %98, %struct.ib_pd* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %107, label %102

102:                                              ; preds = %97
  %103 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %7, align 8
  %104 = call i32 (%struct.mlx5_ib_dev*, i8*, ...) @mlx5_ib_dbg(%struct.mlx5_ib_dev* %103, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %6, align 4
  br label %1010

107:                                              ; preds = %97
  %108 = load i32, i32* @MLX5_IB_QP_BLOCK_MULTICAST_LOOPBACK, align 4
  %109 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %110 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 8
  br label %113

113:                                              ; preds = %107
  br label %114

114:                                              ; preds = %113, %90
  %115 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %116 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @IB_QP_CREATE_CROSS_CHANNEL, align 4
  %119 = load i32, i32* @IB_QP_CREATE_MANAGED_SEND, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* @IB_QP_CREATE_MANAGED_RECV, align 4
  %122 = or i32 %120, %121
  %123 = and i32 %117, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %175

125:                                              ; preds = %114
  %126 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %14, align 8
  %127 = load %struct.ib_pd*, %struct.ib_pd** @cd, align 8
  %128 = call i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %126, %struct.ib_pd* %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %135, label %130

130:                                              ; preds = %125
  %131 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %7, align 8
  %132 = call i32 (%struct.mlx5_ib_dev*, i8*, ...) @mlx5_ib_dbg(%struct.mlx5_ib_dev* %131, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %133 = load i32, i32* @EINVAL, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %6, align 4
  br label %1010

135:                                              ; preds = %125
  %136 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %137 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @IB_QP_CREATE_CROSS_CHANNEL, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %135
  %143 = load i32, i32* @MLX5_IB_QP_CROSS_CHANNEL, align 4
  %144 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %145 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = or i32 %146, %143
  store i32 %147, i32* %145, align 8
  br label %148

148:                                              ; preds = %142, %135
  %149 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %150 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @IB_QP_CREATE_MANAGED_SEND, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %148
  %156 = load i32, i32* @MLX5_IB_QP_MANAGED_SEND, align 4
  %157 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %158 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = or i32 %159, %156
  store i32 %160, i32* %158, align 8
  br label %161

161:                                              ; preds = %155, %148
  %162 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %163 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @IB_QP_CREATE_MANAGED_RECV, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %161
  %169 = load i32, i32* @MLX5_IB_QP_MANAGED_RECV, align 4
  %170 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %171 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = or i32 %172, %169
  store i32 %173, i32* %171, align 8
  br label %174

174:                                              ; preds = %168, %161
  br label %175

175:                                              ; preds = %174, %114
  %176 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %177 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @IB_QPT_UD, align 4
  %180 = icmp eq i32 %178, %179
  br i1 %180, label %181, label %199

181:                                              ; preds = %175
  %182 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %183 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @IB_QP_CREATE_IPOIB_UD_LSO, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %199

188:                                              ; preds = %181
  %189 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %14, align 8
  %190 = load %struct.ib_pd*, %struct.ib_pd** @ipoib_ipoib_offloads, align 8
  %191 = call i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %189, %struct.ib_pd* %190)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %198, label %193

193:                                              ; preds = %188
  %194 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %7, align 8
  %195 = call i32 (%struct.mlx5_ib_dev*, i8*, ...) @mlx5_ib_dbg(%struct.mlx5_ib_dev* %194, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %196 = load i32, i32* @EOPNOTSUPP, align 4
  %197 = sub nsw i32 0, %196
  store i32 %197, i32* %6, align 4
  br label %1010

198:                                              ; preds = %188
  br label %199

199:                                              ; preds = %198, %181, %175
  %200 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %201 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @IB_QP_CREATE_SCATTER_FCS, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %242

206:                                              ; preds = %199
  %207 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %208 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @IB_QPT_RAW_PACKET, align 4
  %211 = icmp ne i32 %209, %210
  br i1 %211, label %212, label %217

212:                                              ; preds = %206
  %213 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %7, align 8
  %214 = call i32 (%struct.mlx5_ib_dev*, i8*, ...) @mlx5_ib_dbg(%struct.mlx5_ib_dev* %213, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  %215 = load i32, i32* @EOPNOTSUPP, align 4
  %216 = sub nsw i32 0, %215
  store i32 %216, i32* %6, align 4
  br label %1010

217:                                              ; preds = %206
  %218 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %7, align 8
  %219 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %218, i32 0, i32 2
  %220 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %219, align 8
  %221 = load %struct.ib_pd*, %struct.ib_pd** @eth_net_offloads, align 8
  %222 = call i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %220, %struct.ib_pd* %221)
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %231

224:                                              ; preds = %217
  %225 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %7, align 8
  %226 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %225, i32 0, i32 2
  %227 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %226, align 8
  %228 = load i32, i32* @scatter_fcs, align 4
  %229 = call i32 @MLX5_CAP_ETH(%struct.mlx5_core_dev* %227, i32 %228)
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %236, label %231

231:                                              ; preds = %224, %217
  %232 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %7, align 8
  %233 = call i32 (%struct.mlx5_ib_dev*, i8*, ...) @mlx5_ib_dbg(%struct.mlx5_ib_dev* %232, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %234 = load i32, i32* @EOPNOTSUPP, align 4
  %235 = sub nsw i32 0, %234
  store i32 %235, i32* %6, align 4
  br label %1010

236:                                              ; preds = %224
  %237 = load i32, i32* @MLX5_IB_QP_CAP_SCATTER_FCS, align 4
  %238 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %239 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = or i32 %240, %237
  store i32 %241, i32* %239, align 8
  br label %242

242:                                              ; preds = %236, %199
  %243 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %244 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %243, i32 0, i32 2
  %245 = load i64, i64* %244, align 8
  %246 = load i64, i64* @IB_SIGNAL_ALL_WR, align 8
  %247 = icmp eq i64 %245, %246
  br i1 %247, label %248, label %252

248:                                              ; preds = %242
  %249 = load i32, i32* @MLX5_WQE_CTRL_CQ_UPDATE, align 4
  %250 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %251 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %250, i32 0, i32 13
  store i32 %249, i32* %251, align 8
  br label %252

252:                                              ; preds = %248, %242
  %253 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %254 = icmp ne %struct.ib_pd* %253, null
  br i1 %254, label %255, label %305

255:                                              ; preds = %252
  %256 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %257 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %256, i32 0, i32 0
  %258 = load %struct.TYPE_26__*, %struct.TYPE_26__** %257, align 8
  %259 = icmp ne %struct.TYPE_26__* %258, null
  br i1 %259, label %260, label %305

260:                                              ; preds = %255
  %261 = load %struct.ib_udata*, %struct.ib_udata** %10, align 8
  %262 = call i64 @ib_copy_from_udata(%struct.mlx5_ib_create_qp* %20, %struct.ib_udata* %261, i32 40)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %269

264:                                              ; preds = %260
  %265 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %7, align 8
  %266 = call i32 (%struct.mlx5_ib_dev*, i8*, ...) @mlx5_ib_dbg(%struct.mlx5_ib_dev* %265, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %267 = load i32, i32* @EFAULT, align 4
  %268 = sub nsw i32 0, %267
  store i32 %268, i32* %6, align 4
  br label %1010

269:                                              ; preds = %260
  %270 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %271 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %270, i32 0, i32 0
  %272 = load %struct.TYPE_26__*, %struct.TYPE_26__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = call i32 @to_mucontext(i32 %274)
  %276 = load %struct.ib_udata*, %struct.ib_udata** %10, align 8
  %277 = getelementptr inbounds %struct.ib_udata, %struct.ib_udata* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = call i32 @get_qp_user_index(i32 %275, %struct.mlx5_ib_create_qp* %20, i32 %278, i32* %19)
  store i32 %279, i32* %24, align 4
  %280 = load i32, i32* %24, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %284

282:                                              ; preds = %269
  %283 = load i32, i32* %24, align 4
  store i32 %283, i32* %6, align 4
  br label %1010

284:                                              ; preds = %269
  %285 = getelementptr inbounds %struct.mlx5_ib_create_qp, %struct.mlx5_ib_create_qp* %20, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = load i32, i32* @MLX5_QP_FLAG_SIGNATURE, align 4
  %288 = and i32 %286, %287
  %289 = icmp ne i32 %288, 0
  %290 = xor i1 %289, true
  %291 = xor i1 %290, true
  %292 = zext i1 %291 to i32
  %293 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %294 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %293, i32 0, i32 1
  store i32 %292, i32* %294, align 4
  %295 = getelementptr inbounds %struct.mlx5_ib_create_qp, %struct.mlx5_ib_create_qp* %20, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = load i32, i32* @MLX5_QP_FLAG_SCATTER_CQE, align 4
  %298 = and i32 %296, %297
  %299 = icmp ne i32 %298, 0
  %300 = xor i1 %299, true
  %301 = xor i1 %300, true
  %302 = zext i1 %301 to i32
  %303 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %304 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %303, i32 0, i32 2
  store i32 %302, i32* %304, align 8
  br label %313

305:                                              ; preds = %255, %252
  %306 = load %struct.ib_pd*, %struct.ib_pd** @wq_signature, align 8
  %307 = icmp ne %struct.ib_pd* %306, null
  %308 = xor i1 %307, true
  %309 = xor i1 %308, true
  %310 = zext i1 %309 to i32
  %311 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %312 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %311, i32 0, i32 1
  store i32 %310, i32* %312, align 4
  br label %313

313:                                              ; preds = %305, %284
  %314 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %315 = call i32 @qp_has_rq(%struct.ib_qp_init_attr* %314)
  %316 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %317 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %316, i32 0, i32 12
  store i32 %315, i32* %317, align 4
  %318 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %7, align 8
  %319 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %320 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %319, i32 0, i32 8
  %321 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %322 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %321, i32 0, i32 12
  %323 = load i32, i32* %322, align 4
  %324 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %325 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %326 = icmp ne %struct.ib_pd* %325, null
  br i1 %326, label %327, label %333

327:                                              ; preds = %313
  %328 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %329 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %328, i32 0, i32 0
  %330 = load %struct.TYPE_26__*, %struct.TYPE_26__** %329, align 8
  %331 = icmp ne %struct.TYPE_26__* %330, null
  br i1 %331, label %332, label %333

332:                                              ; preds = %327
  br label %334

333:                                              ; preds = %327, %313
  br label %334

334:                                              ; preds = %333, %332
  %335 = phi %struct.mlx5_ib_create_qp* [ %20, %332 ], [ null, %333 ]
  %336 = call i32 @set_rq_size(%struct.mlx5_ib_dev* %318, i32* %320, i32 %323, %struct.mlx5_ib_qp* %324, %struct.mlx5_ib_create_qp* %335)
  store i32 %336, i32* %24, align 4
  %337 = load i32, i32* %24, align 4
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %344

339:                                              ; preds = %334
  %340 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %7, align 8
  %341 = load i32, i32* %24, align 4
  %342 = call i32 (%struct.mlx5_ib_dev*, i8*, ...) @mlx5_ib_dbg(%struct.mlx5_ib_dev* %340, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %341)
  %343 = load i32, i32* %24, align 4
  store i32 %343, i32* %6, align 4
  br label %1010

344:                                              ; preds = %334
  %345 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %346 = icmp ne %struct.ib_pd* %345, null
  br i1 %346, label %347, label %441

347:                                              ; preds = %344
  %348 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %349 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %348, i32 0, i32 0
  %350 = load %struct.TYPE_26__*, %struct.TYPE_26__** %349, align 8
  %351 = icmp ne %struct.TYPE_26__* %350, null
  br i1 %351, label %352, label %422

352:                                              ; preds = %347
  %353 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %14, align 8
  %354 = load %struct.ib_pd*, %struct.ib_pd** @log_max_qp_sz, align 8
  %355 = call i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %353, %struct.ib_pd* %354)
  %356 = shl i32 1, %355
  %357 = sext i32 %356 to i64
  store i64 %357, i64* %25, align 8
  %358 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %7, align 8
  %359 = getelementptr inbounds %struct.mlx5_ib_create_qp, %struct.mlx5_ib_create_qp* %20, i32 0, i32 1
  %360 = load i64, i64* %359, align 8
  %361 = call i32 (%struct.mlx5_ib_dev*, i8*, ...) @mlx5_ib_dbg(%struct.mlx5_ib_dev* %358, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i64 %360)
  %362 = getelementptr inbounds %struct.mlx5_ib_create_qp, %struct.mlx5_ib_create_qp* %20, i32 0, i32 2
  %363 = load i32, i32* %362, align 8
  %364 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %365 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %364, i32 0, i32 10
  %366 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 8
  %368 = icmp ne i32 %363, %367
  br i1 %368, label %377, label %369

369:                                              ; preds = %352
  %370 = getelementptr inbounds %struct.mlx5_ib_create_qp, %struct.mlx5_ib_create_qp* %20, i32 0, i32 3
  %371 = load i64, i64* %370, align 8
  %372 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %373 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %372, i32 0, i32 10
  %374 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %373, i32 0, i32 1
  %375 = load i64, i64* %374, align 8
  %376 = icmp ne i64 %371, %375
  br i1 %376, label %377, label %382

377:                                              ; preds = %369, %352
  %378 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %7, align 8
  %379 = call i32 (%struct.mlx5_ib_dev*, i8*, ...) @mlx5_ib_dbg(%struct.mlx5_ib_dev* %378, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  %380 = load i32, i32* @EINVAL, align 4
  %381 = sub nsw i32 0, %380
  store i32 %381, i32* %6, align 4
  br label %1010

382:                                              ; preds = %369
  %383 = getelementptr inbounds %struct.mlx5_ib_create_qp, %struct.mlx5_ib_create_qp* %20, i32 0, i32 1
  %384 = load i64, i64* %383, align 8
  %385 = load i64, i64* %25, align 8
  %386 = icmp sgt i64 %384, %385
  br i1 %386, label %387, label %395

387:                                              ; preds = %382
  %388 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %7, align 8
  %389 = getelementptr inbounds %struct.mlx5_ib_create_qp, %struct.mlx5_ib_create_qp* %20, i32 0, i32 1
  %390 = load i64, i64* %389, align 8
  %391 = load i64, i64* %25, align 8
  %392 = call i32 (%struct.mlx5_ib_dev*, i8*, ...) @mlx5_ib_dbg(%struct.mlx5_ib_dev* %388, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i64 0, i64 0), i64 %390, i64 %391)
  %393 = load i32, i32* @EINVAL, align 4
  %394 = sub nsw i32 0, %393
  store i32 %394, i32* %6, align 4
  br label %1010

395:                                              ; preds = %382
  %396 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %397 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %396, i32 0, i32 1
  %398 = load i32, i32* %397, align 4
  %399 = call i32 (...) @mlx5_ib_create_qp_sqpn_qp1()
  %400 = and i32 %398, %399
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %402, label %407

402:                                              ; preds = %395
  %403 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %7, align 8
  %404 = call i32 (%struct.mlx5_ib_dev*, i8*, ...) @mlx5_ib_dbg(%struct.mlx5_ib_dev* %403, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.10, i64 0, i64 0))
  %405 = load i32, i32* @EINVAL, align 4
  %406 = sub nsw i32 0, %405
  store i32 %406, i32* %6, align 4
  br label %1010

407:                                              ; preds = %395
  %408 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %7, align 8
  %409 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %410 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %411 = load %struct.ib_udata*, %struct.ib_udata** %10, align 8
  %412 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %413 = load %struct.mlx5_ib_qp_base*, %struct.mlx5_ib_qp_base** %21, align 8
  %414 = call i32 @create_user_qp(%struct.mlx5_ib_dev* %408, %struct.ib_pd* %409, %struct.mlx5_ib_qp* %410, %struct.ib_udata* %411, %struct.ib_qp_init_attr* %412, i32** %23, %struct.mlx5_ib_create_qp_resp* %15, i32* %13, %struct.mlx5_ib_qp_base* %413)
  store i32 %414, i32* %24, align 4
  %415 = load i32, i32* %24, align 4
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %421

417:                                              ; preds = %407
  %418 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %7, align 8
  %419 = load i32, i32* %24, align 4
  %420 = call i32 (%struct.mlx5_ib_dev*, i8*, ...) @mlx5_ib_dbg(%struct.mlx5_ib_dev* %418, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %419)
  br label %421

421:                                              ; preds = %417, %407
  br label %435

422:                                              ; preds = %347
  %423 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %7, align 8
  %424 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %425 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %426 = load %struct.mlx5_ib_qp_base*, %struct.mlx5_ib_qp_base** %21, align 8
  %427 = call i32 @create_kernel_qp(%struct.mlx5_ib_dev* %423, %struct.ib_qp_init_attr* %424, %struct.mlx5_ib_qp* %425, i32** %23, i32* %13, %struct.mlx5_ib_qp_base* %426)
  store i32 %427, i32* %24, align 4
  %428 = load i32, i32* %24, align 4
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %430, label %434

430:                                              ; preds = %422
  %431 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %7, align 8
  %432 = load i32, i32* %24, align 4
  %433 = call i32 (%struct.mlx5_ib_dev*, i8*, ...) @mlx5_ib_dbg(%struct.mlx5_ib_dev* %431, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %432)
  br label %434

434:                                              ; preds = %430, %422
  br label %435

435:                                              ; preds = %434, %421
  %436 = load i32, i32* %24, align 4
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %438, label %440

438:                                              ; preds = %435
  %439 = load i32, i32* %24, align 4
  store i32 %439, i32* %6, align 4
  br label %1010

440:                                              ; preds = %435
  br label %453

441:                                              ; preds = %344
  %442 = load i32, i32* %13, align 4
  %443 = call i32* @mlx5_vzalloc(i32 %442)
  store i32* %443, i32** %23, align 8
  %444 = load i32*, i32** %23, align 8
  %445 = icmp ne i32* %444, null
  br i1 %445, label %449, label %446

446:                                              ; preds = %441
  %447 = load i32, i32* @ENOMEM, align 4
  %448 = sub nsw i32 0, %447
  store i32 %448, i32* %6, align 4
  br label %1010

449:                                              ; preds = %441
  %450 = load i64, i64* @MLX5_QP_EMPTY, align 8
  %451 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %452 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %451, i32 0, i32 3
  store i64 %450, i64* %452, align 8
  br label %453

453:                                              ; preds = %449, %440
  %454 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %455 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %454, i32 0, i32 0
  %456 = load i32, i32* %455, align 8
  %457 = call i64 @is_sqp(i32 %456)
  %458 = icmp ne i64 %457, 0
  br i1 %458, label %459, label %465

459:                                              ; preds = %453
  %460 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %461 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %460, i32 0, i32 7
  %462 = load i32, i32* %461, align 8
  %463 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %464 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %463, i32 0, i32 11
  store i32 %462, i32* %464, align 8
  br label %465

465:                                              ; preds = %459, %453
  %466 = load i32, i32* @create_qp_in, align 4
  %467 = load i32*, i32** %23, align 8
  %468 = load i8*, i8** %22, align 8
  %469 = call i8* @MLX5_ADDR_OF(i32 %466, i32* %467, i8* %468)
  store i8* %469, i8** %22, align 8
  %470 = load i8*, i8** %22, align 8
  %471 = load i8*, i8** %22, align 8
  %472 = load %struct.ib_pd*, %struct.ib_pd** @st, align 8
  %473 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %474 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %473, i32 0, i32 0
  %475 = load i32, i32* %474, align 8
  %476 = call i32 @to_mlx5_st(i32 %475)
  %477 = call i32 @MLX5_SET(i8* %470, i8* %471, %struct.ib_pd* %472, i32 %476)
  %478 = load i8*, i8** %22, align 8
  %479 = load i8*, i8** %22, align 8
  %480 = load %struct.ib_pd*, %struct.ib_pd** @pm_state, align 8
  %481 = load i32, i32* @MLX5_QP_PM_MIGRATED, align 4
  %482 = call i32 @MLX5_SET(i8* %478, i8* %479, %struct.ib_pd* %480, i32 %481)
  %483 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %484 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %483, i32 0, i32 0
  %485 = load i32, i32* %484, align 8
  %486 = load i32, i32* @MLX5_IB_QPT_REG_UMR, align 4
  %487 = icmp ne i32 %485, %486
  br i1 %487, label %488, label %506

488:                                              ; preds = %465
  %489 = load i8*, i8** %22, align 8
  %490 = load i8*, i8** %22, align 8
  %491 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %492 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %493 = icmp ne %struct.ib_pd* %492, null
  br i1 %493, label %494, label %496

494:                                              ; preds = %488
  %495 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  br label %500

496:                                              ; preds = %488
  %497 = load %struct.mlx5_ib_resources*, %struct.mlx5_ib_resources** %12, align 8
  %498 = getelementptr inbounds %struct.mlx5_ib_resources, %struct.mlx5_ib_resources* %497, i32 0, i32 5
  %499 = load %struct.ib_pd*, %struct.ib_pd** %498, align 8
  br label %500

500:                                              ; preds = %496, %494
  %501 = phi %struct.ib_pd* [ %495, %494 ], [ %499, %496 ]
  %502 = call %struct.TYPE_20__* @to_mpd(%struct.ib_pd* %501)
  %503 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %502, i32 0, i32 0
  %504 = load i32, i32* %503, align 4
  %505 = call i32 @MLX5_SET(i8* %489, i8* %490, %struct.ib_pd* %491, i32 %504)
  br label %511

506:                                              ; preds = %465
  %507 = load i8*, i8** %22, align 8
  %508 = load i8*, i8** %22, align 8
  %509 = load %struct.ib_pd*, %struct.ib_pd** @latency_sensitive, align 8
  %510 = call i32 @MLX5_SET(i8* %507, i8* %508, %struct.ib_pd* %509, i32 1)
  br label %511

511:                                              ; preds = %506, %500
  %512 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %513 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %512, i32 0, i32 1
  %514 = load i32, i32* %513, align 4
  %515 = icmp ne i32 %514, 0
  br i1 %515, label %516, label %521

516:                                              ; preds = %511
  %517 = load i8*, i8** %22, align 8
  %518 = load i8*, i8** %22, align 8
  %519 = load %struct.ib_pd*, %struct.ib_pd** @wq_signature, align 8
  %520 = call i32 @MLX5_SET(i8* %517, i8* %518, %struct.ib_pd* %519, i32 1)
  br label %521

521:                                              ; preds = %516, %511
  %522 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %523 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %522, i32 0, i32 0
  %524 = load i32, i32* %523, align 8
  %525 = load i32, i32* @MLX5_IB_QP_BLOCK_MULTICAST_LOOPBACK, align 4
  %526 = and i32 %524, %525
  %527 = icmp ne i32 %526, 0
  br i1 %527, label %528, label %533

528:                                              ; preds = %521
  %529 = load i8*, i8** %22, align 8
  %530 = load i8*, i8** %22, align 8
  %531 = load %struct.ib_pd*, %struct.ib_pd** @block_lb_mc, align 8
  %532 = call i32 @MLX5_SET(i8* %529, i8* %530, %struct.ib_pd* %531, i32 1)
  br label %533

533:                                              ; preds = %528, %521
  %534 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %535 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %534, i32 0, i32 0
  %536 = load i32, i32* %535, align 8
  %537 = load i32, i32* @MLX5_IB_QP_CROSS_CHANNEL, align 4
  %538 = and i32 %536, %537
  %539 = icmp ne i32 %538, 0
  br i1 %539, label %540, label %545

540:                                              ; preds = %533
  %541 = load i8*, i8** %22, align 8
  %542 = load i8*, i8** %22, align 8
  %543 = load %struct.ib_pd*, %struct.ib_pd** @cd_master, align 8
  %544 = call i32 @MLX5_SET(i8* %541, i8* %542, %struct.ib_pd* %543, i32 1)
  br label %545

545:                                              ; preds = %540, %533
  %546 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %547 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %546, i32 0, i32 0
  %548 = load i32, i32* %547, align 8
  %549 = load i32, i32* @MLX5_IB_QP_MANAGED_SEND, align 4
  %550 = and i32 %548, %549
  %551 = icmp ne i32 %550, 0
  br i1 %551, label %552, label %557

552:                                              ; preds = %545
  %553 = load i8*, i8** %22, align 8
  %554 = load i8*, i8** %22, align 8
  %555 = load %struct.ib_pd*, %struct.ib_pd** @cd_slave_send, align 8
  %556 = call i32 @MLX5_SET(i8* %553, i8* %554, %struct.ib_pd* %555, i32 1)
  br label %557

557:                                              ; preds = %552, %545
  %558 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %559 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %558, i32 0, i32 0
  %560 = load i32, i32* %559, align 8
  %561 = load i32, i32* @MLX5_IB_QP_MANAGED_RECV, align 4
  %562 = and i32 %560, %561
  %563 = icmp ne i32 %562, 0
  br i1 %563, label %564, label %569

564:                                              ; preds = %557
  %565 = load i8*, i8** %22, align 8
  %566 = load i8*, i8** %22, align 8
  %567 = load %struct.ib_pd*, %struct.ib_pd** @cd_slave_receive, align 8
  %568 = call i32 @MLX5_SET(i8* %565, i8* %566, %struct.ib_pd* %567, i32 1)
  br label %569

569:                                              ; preds = %564, %557
  %570 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %571 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %570, i32 0, i32 2
  %572 = load i32, i32* %571, align 8
  %573 = icmp ne i32 %572, 0
  br i1 %573, label %574, label %628

574:                                              ; preds = %569
  %575 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %576 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %575, i32 0, i32 0
  %577 = load i32, i32* %576, align 8
  %578 = call i64 @is_connected(i32 %577)
  %579 = icmp ne i64 %578, 0
  br i1 %579, label %580, label %628

580:                                              ; preds = %574
  %581 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %7, align 8
  %582 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %583 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %582, i32 0, i32 3
  %584 = load i32, i32* %583, align 8
  %585 = call i32 @mlx5_ib_get_cqe_size(%struct.mlx5_ib_dev* %581, i32 %584)
  store i32 %585, i32* %26, align 4
  %586 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %7, align 8
  %587 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %588 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %587, i32 0, i32 4
  %589 = load i32, i32* %588, align 4
  %590 = call i32 @mlx5_ib_get_cqe_size(%struct.mlx5_ib_dev* %586, i32 %589)
  store i32 %590, i32* %27, align 4
  %591 = load i32, i32* %26, align 4
  %592 = icmp eq i32 %591, 128
  br i1 %592, label %593, label %599

593:                                              ; preds = %580
  %594 = load i8*, i8** %22, align 8
  %595 = load i8*, i8** %22, align 8
  %596 = load %struct.ib_pd*, %struct.ib_pd** @cs_res, align 8
  %597 = load i32, i32* @MLX5_RES_SCAT_DATA64_CQE, align 4
  %598 = call i32 @MLX5_SET(i8* %594, i8* %595, %struct.ib_pd* %596, i32 %597)
  br label %605

599:                                              ; preds = %580
  %600 = load i8*, i8** %22, align 8
  %601 = load i8*, i8** %22, align 8
  %602 = load %struct.ib_pd*, %struct.ib_pd** @cs_res, align 8
  %603 = load i32, i32* @MLX5_RES_SCAT_DATA32_CQE, align 4
  %604 = call i32 @MLX5_SET(i8* %600, i8* %601, %struct.ib_pd* %602, i32 %603)
  br label %605

605:                                              ; preds = %599, %593
  %606 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %607 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %606, i32 0, i32 2
  %608 = load i64, i64* %607, align 8
  %609 = load i64, i64* @IB_SIGNAL_ALL_WR, align 8
  %610 = icmp eq i64 %608, %609
  br i1 %610, label %611, label %627

611:                                              ; preds = %605
  %612 = load i32, i32* %27, align 4
  %613 = icmp eq i32 %612, 128
  br i1 %613, label %614, label %620

614:                                              ; preds = %611
  %615 = load i8*, i8** %22, align 8
  %616 = load i8*, i8** %22, align 8
  %617 = load %struct.ib_pd*, %struct.ib_pd** @cs_req, align 8
  %618 = load i32, i32* @MLX5_REQ_SCAT_DATA64_CQE, align 4
  %619 = call i32 @MLX5_SET(i8* %615, i8* %616, %struct.ib_pd* %617, i32 %618)
  br label %626

620:                                              ; preds = %611
  %621 = load i8*, i8** %22, align 8
  %622 = load i8*, i8** %22, align 8
  %623 = load %struct.ib_pd*, %struct.ib_pd** @cs_req, align 8
  %624 = load i32, i32* @MLX5_REQ_SCAT_DATA32_CQE, align 4
  %625 = call i32 @MLX5_SET(i8* %621, i8* %622, %struct.ib_pd* %623, i32 %624)
  br label %626

626:                                              ; preds = %620, %614
  br label %627

627:                                              ; preds = %626, %605
  br label %628

628:                                              ; preds = %627, %574, %569
  %629 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %630 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %629, i32 0, i32 10
  %631 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %630, i32 0, i32 1
  %632 = load i64, i64* %631, align 8
  %633 = icmp ne i64 %632, 0
  br i1 %633, label %634, label %653

634:                                              ; preds = %628
  %635 = load i8*, i8** %22, align 8
  %636 = load i8*, i8** %22, align 8
  %637 = load %struct.ib_pd*, %struct.ib_pd** @log_rq_stride, align 8
  %638 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %639 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %638, i32 0, i32 10
  %640 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %639, i32 0, i32 0
  %641 = load i32, i32* %640, align 8
  %642 = sub nsw i32 %641, 4
  %643 = call i32 @MLX5_SET(i8* %635, i8* %636, %struct.ib_pd* %637, i32 %642)
  %644 = load i8*, i8** %22, align 8
  %645 = load i8*, i8** %22, align 8
  %646 = load %struct.ib_pd*, %struct.ib_pd** @log_rq_size, align 8
  %647 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %648 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %647, i32 0, i32 10
  %649 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %648, i32 0, i32 1
  %650 = load i64, i64* %649, align 8
  %651 = call i32 @ilog2(i64 %650)
  %652 = call i32 @MLX5_SET(i8* %644, i8* %645, %struct.ib_pd* %646, i32 %651)
  br label %653

653:                                              ; preds = %634, %628
  %654 = load i8*, i8** %22, align 8
  %655 = load i8*, i8** %22, align 8
  %656 = load %struct.ib_pd*, %struct.ib_pd** @rq_type, align 8
  %657 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %658 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %659 = call i32 @get_rx_type(%struct.mlx5_ib_qp* %657, %struct.ib_qp_init_attr* %658)
  %660 = call i32 @MLX5_SET(i8* %654, i8* %655, %struct.ib_pd* %656, i32 %659)
  %661 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %662 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %661, i32 0, i32 9
  %663 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %662, i32 0, i32 0
  %664 = load i64, i64* %663, align 8
  %665 = icmp ne i64 %664, 0
  br i1 %665, label %666, label %676

666:                                              ; preds = %653
  %667 = load i8*, i8** %22, align 8
  %668 = load i8*, i8** %22, align 8
  %669 = load %struct.ib_pd*, %struct.ib_pd** @log_sq_size, align 8
  %670 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %671 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %670, i32 0, i32 9
  %672 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %671, i32 0, i32 0
  %673 = load i64, i64* %672, align 8
  %674 = call i32 @ilog2(i64 %673)
  %675 = call i32 @MLX5_SET(i8* %667, i8* %668, %struct.ib_pd* %669, i32 %674)
  br label %681

676:                                              ; preds = %653
  %677 = load i8*, i8** %22, align 8
  %678 = load i8*, i8** %22, align 8
  %679 = load %struct.ib_pd*, %struct.ib_pd** @no_sq, align 8
  %680 = call i32 @MLX5_SET(i8* %677, i8* %678, %struct.ib_pd* %679, i32 1)
  br label %681

681:                                              ; preds = %676, %666
  %682 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %683 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %682, i32 0, i32 0
  %684 = load i32, i32* %683, align 8
  switch i32 %684, label %762 [
    i32 128, label %685
    i32 129, label %729
  ]

685:                                              ; preds = %681
  %686 = load i8*, i8** %22, align 8
  %687 = load i8*, i8** %22, align 8
  %688 = load %struct.ib_pd*, %struct.ib_pd** @cqn_rcv, align 8
  %689 = load %struct.mlx5_ib_resources*, %struct.mlx5_ib_resources** %12, align 8
  %690 = getelementptr inbounds %struct.mlx5_ib_resources, %struct.mlx5_ib_resources* %689, i32 0, i32 4
  %691 = load i32, i32* %690, align 8
  %692 = call %struct.TYPE_21__* @to_mcq(i32 %691)
  %693 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %692, i32 0, i32 0
  %694 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %693, i32 0, i32 0
  %695 = load i32, i32* %694, align 4
  %696 = call i32 @MLX5_SET(i8* %686, i8* %687, %struct.ib_pd* %688, i32 %695)
  %697 = load i8*, i8** %22, align 8
  %698 = load i8*, i8** %22, align 8
  %699 = load %struct.ib_pd*, %struct.ib_pd** @cqn_snd, align 8
  %700 = load %struct.mlx5_ib_resources*, %struct.mlx5_ib_resources** %12, align 8
  %701 = getelementptr inbounds %struct.mlx5_ib_resources, %struct.mlx5_ib_resources* %700, i32 0, i32 4
  %702 = load i32, i32* %701, align 8
  %703 = call %struct.TYPE_21__* @to_mcq(i32 %702)
  %704 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %703, i32 0, i32 0
  %705 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %704, i32 0, i32 0
  %706 = load i32, i32* %705, align 4
  %707 = call i32 @MLX5_SET(i8* %697, i8* %698, %struct.ib_pd* %699, i32 %706)
  %708 = load i8*, i8** %22, align 8
  %709 = load i8*, i8** %22, align 8
  %710 = load %struct.ib_pd*, %struct.ib_pd** @srqn_rmpn, align 8
  %711 = load %struct.mlx5_ib_resources*, %struct.mlx5_ib_resources** %12, align 8
  %712 = getelementptr inbounds %struct.mlx5_ib_resources, %struct.mlx5_ib_resources* %711, i32 0, i32 3
  %713 = load i32, i32* %712, align 4
  %714 = call %struct.TYPE_19__* @to_msrq(i32 %713)
  %715 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %714, i32 0, i32 0
  %716 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %715, i32 0, i32 0
  %717 = load i32, i32* %716, align 4
  %718 = call i32 @MLX5_SET(i8* %708, i8* %709, %struct.ib_pd* %710, i32 %717)
  %719 = load i8*, i8** %22, align 8
  %720 = load i8*, i8** %22, align 8
  %721 = load %struct.ib_pd*, %struct.ib_pd** @xrcd, align 8
  %722 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %723 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %722, i32 0, i32 6
  %724 = load i32, i32* %723, align 4
  %725 = call %struct.TYPE_18__* @to_mxrcd(i32 %724)
  %726 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %725, i32 0, i32 0
  %727 = load i32, i32* %726, align 4
  %728 = call i32 @MLX5_SET(i8* %719, i8* %720, %struct.ib_pd* %721, i32 %727)
  br label %812

729:                                              ; preds = %681
  %730 = load i8*, i8** %22, align 8
  %731 = load i8*, i8** %22, align 8
  %732 = load %struct.ib_pd*, %struct.ib_pd** @cqn_rcv, align 8
  %733 = load %struct.mlx5_ib_resources*, %struct.mlx5_ib_resources** %12, align 8
  %734 = getelementptr inbounds %struct.mlx5_ib_resources, %struct.mlx5_ib_resources* %733, i32 0, i32 4
  %735 = load i32, i32* %734, align 8
  %736 = call %struct.TYPE_21__* @to_mcq(i32 %735)
  %737 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %736, i32 0, i32 0
  %738 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %737, i32 0, i32 0
  %739 = load i32, i32* %738, align 4
  %740 = call i32 @MLX5_SET(i8* %730, i8* %731, %struct.ib_pd* %732, i32 %739)
  %741 = load i8*, i8** %22, align 8
  %742 = load i8*, i8** %22, align 8
  %743 = load %struct.ib_pd*, %struct.ib_pd** @xrcd, align 8
  %744 = load %struct.mlx5_ib_resources*, %struct.mlx5_ib_resources** %12, align 8
  %745 = getelementptr inbounds %struct.mlx5_ib_resources, %struct.mlx5_ib_resources* %744, i32 0, i32 1
  %746 = load i32, i32* %745, align 4
  %747 = call %struct.TYPE_18__* @to_mxrcd(i32 %746)
  %748 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %747, i32 0, i32 0
  %749 = load i32, i32* %748, align 4
  %750 = call i32 @MLX5_SET(i8* %741, i8* %742, %struct.ib_pd* %743, i32 %749)
  %751 = load i8*, i8** %22, align 8
  %752 = load i8*, i8** %22, align 8
  %753 = load %struct.ib_pd*, %struct.ib_pd** @srqn_rmpn, align 8
  %754 = load %struct.mlx5_ib_resources*, %struct.mlx5_ib_resources** %12, align 8
  %755 = getelementptr inbounds %struct.mlx5_ib_resources, %struct.mlx5_ib_resources* %754, i32 0, i32 3
  %756 = load i32, i32* %755, align 4
  %757 = call %struct.TYPE_19__* @to_msrq(i32 %756)
  %758 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %757, i32 0, i32 0
  %759 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %758, i32 0, i32 0
  %760 = load i32, i32* %759, align 4
  %761 = call i32 @MLX5_SET(i8* %751, i8* %752, %struct.ib_pd* %753, i32 %760)
  br label %812

762:                                              ; preds = %681
  %763 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %764 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %763, i32 0, i32 5
  %765 = load i32, i32* %764, align 8
  %766 = icmp ne i32 %765, 0
  br i1 %766, label %767, label %789

767:                                              ; preds = %762
  %768 = load i8*, i8** %22, align 8
  %769 = load i8*, i8** %22, align 8
  %770 = load %struct.ib_pd*, %struct.ib_pd** @xrcd, align 8
  %771 = load %struct.mlx5_ib_resources*, %struct.mlx5_ib_resources** %12, align 8
  %772 = getelementptr inbounds %struct.mlx5_ib_resources, %struct.mlx5_ib_resources* %771, i32 0, i32 2
  %773 = load i32, i32* %772, align 8
  %774 = call %struct.TYPE_18__* @to_mxrcd(i32 %773)
  %775 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %774, i32 0, i32 0
  %776 = load i32, i32* %775, align 4
  %777 = call i32 @MLX5_SET(i8* %768, i8* %769, %struct.ib_pd* %770, i32 %776)
  %778 = load i8*, i8** %22, align 8
  %779 = load i8*, i8** %22, align 8
  %780 = load %struct.ib_pd*, %struct.ib_pd** @srqn_rmpn, align 8
  %781 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %782 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %781, i32 0, i32 5
  %783 = load i32, i32* %782, align 8
  %784 = call %struct.TYPE_19__* @to_msrq(i32 %783)
  %785 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %784, i32 0, i32 0
  %786 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %785, i32 0, i32 0
  %787 = load i32, i32* %786, align 4
  %788 = call i32 @MLX5_SET(i8* %778, i8* %779, %struct.ib_pd* %780, i32 %787)
  br label %811

789:                                              ; preds = %762
  %790 = load i8*, i8** %22, align 8
  %791 = load i8*, i8** %22, align 8
  %792 = load %struct.ib_pd*, %struct.ib_pd** @xrcd, align 8
  %793 = load %struct.mlx5_ib_resources*, %struct.mlx5_ib_resources** %12, align 8
  %794 = getelementptr inbounds %struct.mlx5_ib_resources, %struct.mlx5_ib_resources* %793, i32 0, i32 1
  %795 = load i32, i32* %794, align 4
  %796 = call %struct.TYPE_18__* @to_mxrcd(i32 %795)
  %797 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %796, i32 0, i32 0
  %798 = load i32, i32* %797, align 4
  %799 = call i32 @MLX5_SET(i8* %790, i8* %791, %struct.ib_pd* %792, i32 %798)
  %800 = load i8*, i8** %22, align 8
  %801 = load i8*, i8** %22, align 8
  %802 = load %struct.ib_pd*, %struct.ib_pd** @srqn_rmpn, align 8
  %803 = load %struct.mlx5_ib_resources*, %struct.mlx5_ib_resources** %12, align 8
  %804 = getelementptr inbounds %struct.mlx5_ib_resources, %struct.mlx5_ib_resources* %803, i32 0, i32 0
  %805 = load i32, i32* %804, align 8
  %806 = call %struct.TYPE_19__* @to_msrq(i32 %805)
  %807 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %806, i32 0, i32 0
  %808 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %807, i32 0, i32 0
  %809 = load i32, i32* %808, align 4
  %810 = call i32 @MLX5_SET(i8* %800, i8* %801, %struct.ib_pd* %802, i32 %809)
  br label %811

811:                                              ; preds = %789, %767
  br label %812

812:                                              ; preds = %811, %729, %685
  %813 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %814 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %813, i32 0, i32 4
  %815 = load i32, i32* %814, align 4
  %816 = icmp ne i32 %815, 0
  br i1 %816, label %817, label %829

817:                                              ; preds = %812
  %818 = load i8*, i8** %22, align 8
  %819 = load i8*, i8** %22, align 8
  %820 = load %struct.ib_pd*, %struct.ib_pd** @cqn_snd, align 8
  %821 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %822 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %821, i32 0, i32 4
  %823 = load i32, i32* %822, align 4
  %824 = call %struct.TYPE_21__* @to_mcq(i32 %823)
  %825 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %824, i32 0, i32 0
  %826 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %825, i32 0, i32 0
  %827 = load i32, i32* %826, align 4
  %828 = call i32 @MLX5_SET(i8* %818, i8* %819, %struct.ib_pd* %820, i32 %827)
  br label %829

829:                                              ; preds = %817, %812
  %830 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %831 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %830, i32 0, i32 3
  %832 = load i32, i32* %831, align 8
  %833 = icmp ne i32 %832, 0
  br i1 %833, label %834, label %846

834:                                              ; preds = %829
  %835 = load i8*, i8** %22, align 8
  %836 = load i8*, i8** %22, align 8
  %837 = load %struct.ib_pd*, %struct.ib_pd** @cqn_rcv, align 8
  %838 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %839 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %838, i32 0, i32 3
  %840 = load i32, i32* %839, align 8
  %841 = call %struct.TYPE_21__* @to_mcq(i32 %840)
  %842 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %841, i32 0, i32 0
  %843 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %842, i32 0, i32 0
  %844 = load i32, i32* %843, align 4
  %845 = call i32 @MLX5_SET(i8* %835, i8* %836, %struct.ib_pd* %837, i32 %844)
  br label %846

846:                                              ; preds = %834, %829
  %847 = load i8*, i8** %22, align 8
  %848 = load i8*, i8** %22, align 8
  %849 = load i32, i32* @dbr_addr, align 4
  %850 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %851 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %850, i32 0, i32 8
  %852 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %851, i32 0, i32 0
  %853 = load i32, i32* %852, align 8
  %854 = call i32 @MLX5_SET64(i8* %847, i8* %848, i32 %849, i32 %853)
  %855 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %14, align 8
  %856 = load %struct.ib_pd*, %struct.ib_pd** @cqe_version, align 8
  %857 = call i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %855, %struct.ib_pd* %856)
  %858 = load i32, i32* @MLX5_CQE_VERSION_V1, align 4
  %859 = icmp eq i32 %857, %858
  br i1 %859, label %860, label %866

860:                                              ; preds = %846
  %861 = load i8*, i8** %22, align 8
  %862 = load i8*, i8** %22, align 8
  %863 = load %struct.ib_pd*, %struct.ib_pd** @user_index, align 8
  %864 = load i32, i32* %19, align 4
  %865 = call i32 @MLX5_SET(i8* %861, i8* %862, %struct.ib_pd* %863, i32 %864)
  br label %866

866:                                              ; preds = %860, %846
  %867 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %868 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %867, i32 0, i32 0
  %869 = load i32, i32* %868, align 8
  %870 = load i32, i32* @IB_QPT_UD, align 4
  %871 = icmp eq i32 %869, %870
  br i1 %871, label %872, label %889

872:                                              ; preds = %866
  %873 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %874 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %873, i32 0, i32 1
  %875 = load i32, i32* %874, align 4
  %876 = load i32, i32* @IB_QP_CREATE_IPOIB_UD_LSO, align 4
  %877 = and i32 %875, %876
  %878 = icmp ne i32 %877, 0
  br i1 %878, label %879, label %889

879:                                              ; preds = %872
  %880 = load i8*, i8** %22, align 8
  %881 = load i8*, i8** %22, align 8
  %882 = load %struct.ib_pd*, %struct.ib_pd** @ulp_stateless_offload_mode, align 8
  %883 = call i32 @MLX5_SET(i8* %880, i8* %881, %struct.ib_pd* %882, i32 1)
  %884 = load i32, i32* @MLX5_IB_QP_LSO, align 4
  %885 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %886 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %885, i32 0, i32 0
  %887 = load i32, i32* %886, align 8
  %888 = or i32 %887, %884
  store i32 %888, i32* %886, align 8
  br label %889

889:                                              ; preds = %879, %872, %866
  %890 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %891 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %890, i32 0, i32 0
  %892 = load i32, i32* %891, align 8
  %893 = load i32, i32* @IB_QPT_RAW_PACKET, align 4
  %894 = icmp eq i32 %892, %893
  br i1 %894, label %895, label %912

895:                                              ; preds = %889
  %896 = getelementptr inbounds %struct.mlx5_ib_create_qp, %struct.mlx5_ib_create_qp* %20, i32 0, i32 4
  %897 = load i32, i32* %896, align 8
  %898 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %899 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %898, i32 0, i32 7
  %900 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %899, i32 0, i32 0
  %901 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %900, i32 0, i32 0
  %902 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %901, i32 0, i32 0
  store i32 %897, i32* %902, align 8
  %903 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %904 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %905 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %904, i32 0, i32 7
  %906 = call i32 @raw_packet_qp_copy_info(%struct.mlx5_ib_qp* %903, %struct.TYPE_22__* %905)
  %907 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %7, align 8
  %908 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %909 = load i32*, i32** %23, align 8
  %910 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %911 = call i32 @create_raw_packet_qp(%struct.mlx5_ib_dev* %907, %struct.mlx5_ib_qp* %908, i32* %909, %struct.ib_pd* %910)
  store i32 %911, i32* %24, align 4
  br label %921

912:                                              ; preds = %889
  %913 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %7, align 8
  %914 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %913, i32 0, i32 2
  %915 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %914, align 8
  %916 = load %struct.mlx5_ib_qp_base*, %struct.mlx5_ib_qp_base** %21, align 8
  %917 = getelementptr inbounds %struct.mlx5_ib_qp_base, %struct.mlx5_ib_qp_base* %916, i32 0, i32 0
  %918 = load i32*, i32** %23, align 8
  %919 = load i32, i32* %13, align 4
  %920 = call i32 @mlx5_core_create_qp(%struct.mlx5_core_dev* %915, %struct.TYPE_23__* %917, i32* %918, i32 %919)
  store i32 %920, i32* %24, align 4
  br label %921

921:                                              ; preds = %912, %895
  %922 = load i32, i32* %24, align 4
  %923 = icmp ne i32 %922, 0
  br i1 %923, label %924, label %927

924:                                              ; preds = %921
  %925 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %7, align 8
  %926 = call i32 (%struct.mlx5_ib_dev*, i8*, ...) @mlx5_ib_dbg(%struct.mlx5_ib_dev* %925, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0))
  br label %984

927:                                              ; preds = %921
  %928 = load i32*, i32** %23, align 8
  %929 = call i32 @kvfree(i32* %928)
  %930 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %931 = load %struct.mlx5_ib_qp_base*, %struct.mlx5_ib_qp_base** %21, align 8
  %932 = getelementptr inbounds %struct.mlx5_ib_qp_base, %struct.mlx5_ib_qp_base* %931, i32 0, i32 1
  store %struct.mlx5_ib_qp* %930, %struct.mlx5_ib_qp** %932, align 8
  %933 = load i32, i32* @mlx5_ib_qp_event, align 4
  %934 = load %struct.mlx5_ib_qp_base*, %struct.mlx5_ib_qp_base** %21, align 8
  %935 = getelementptr inbounds %struct.mlx5_ib_qp_base, %struct.mlx5_ib_qp_base* %934, i32 0, i32 0
  %936 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %935, i32 0, i32 0
  store i32 %933, i32* %936, align 8
  %937 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %938 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %937, i32 0, i32 0
  %939 = load i32, i32* %938, align 8
  %940 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %941 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %940, i32 0, i32 4
  %942 = load i32, i32* %941, align 4
  %943 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %944 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %943, i32 0, i32 3
  %945 = load i32, i32* %944, align 8
  %946 = call i32 @get_cqs(i32 %939, i32 %942, i32 %945, %struct.mlx5_ib_cq** %16, %struct.mlx5_ib_cq** %17)
  %947 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %7, align 8
  %948 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %947, i32 0, i32 0
  %949 = load i64, i64* %18, align 8
  %950 = call i32 @spin_lock_irqsave(i32* %948, i64 %949)
  %951 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %16, align 8
  %952 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %17, align 8
  %953 = call i32 @mlx5_ib_lock_cqs(%struct.mlx5_ib_cq* %951, %struct.mlx5_ib_cq* %952)
  %954 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %955 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %954, i32 0, i32 6
  %956 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %7, align 8
  %957 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %956, i32 0, i32 1
  %958 = call i32 @list_add_tail(i32* %955, i32* %957)
  %959 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %16, align 8
  %960 = icmp ne %struct.mlx5_ib_cq* %959, null
  br i1 %960, label %961, label %967

961:                                              ; preds = %927
  %962 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %963 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %962, i32 0, i32 5
  %964 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %16, align 8
  %965 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %964, i32 0, i32 1
  %966 = call i32 @list_add_tail(i32* %963, i32* %965)
  br label %967

967:                                              ; preds = %961, %927
  %968 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %17, align 8
  %969 = icmp ne %struct.mlx5_ib_cq* %968, null
  br i1 %969, label %970, label %976

970:                                              ; preds = %967
  %971 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %972 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %971, i32 0, i32 4
  %973 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %17, align 8
  %974 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %973, i32 0, i32 0
  %975 = call i32 @list_add_tail(i32* %972, i32* %974)
  br label %976

976:                                              ; preds = %970, %967
  %977 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %16, align 8
  %978 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %17, align 8
  %979 = call i32 @mlx5_ib_unlock_cqs(%struct.mlx5_ib_cq* %977, %struct.mlx5_ib_cq* %978)
  %980 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %7, align 8
  %981 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %980, i32 0, i32 0
  %982 = load i64, i64* %18, align 8
  %983 = call i32 @spin_unlock_irqrestore(i32* %981, i64 %982)
  store i32 0, i32* %6, align 4
  br label %1010

984:                                              ; preds = %924
  %985 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %986 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %985, i32 0, i32 3
  %987 = load i64, i64* %986, align 8
  %988 = load i64, i64* @MLX5_QP_USER, align 8
  %989 = icmp eq i64 %987, %988
  br i1 %989, label %990, label %995

990:                                              ; preds = %984
  %991 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %992 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %993 = load %struct.mlx5_ib_qp_base*, %struct.mlx5_ib_qp_base** %21, align 8
  %994 = call i32 @destroy_qp_user(%struct.ib_pd* %991, %struct.mlx5_ib_qp* %992, %struct.mlx5_ib_qp_base* %993)
  br label %1006

995:                                              ; preds = %984
  %996 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %997 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %996, i32 0, i32 3
  %998 = load i64, i64* %997, align 8
  %999 = load i64, i64* @MLX5_QP_KERNEL, align 8
  %1000 = icmp eq i64 %998, %999
  br i1 %1000, label %1001, label %1005

1001:                                             ; preds = %995
  %1002 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %7, align 8
  %1003 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %1004 = call i32 @destroy_qp_kernel(%struct.mlx5_ib_dev* %1002, %struct.mlx5_ib_qp* %1003)
  br label %1005

1005:                                             ; preds = %1001, %995
  br label %1006

1006:                                             ; preds = %1005, %990
  %1007 = load i32*, i32** %23, align 8
  %1008 = call i32 @kvfree(i32* %1007)
  %1009 = load i32, i32* %24, align 4
  store i32 %1009, i32* %6, align 4
  br label %1010

1010:                                             ; preds = %1006, %976, %446, %438, %402, %387, %377, %339, %282, %264, %231, %212, %193, %130, %102, %82, %79
  %1011 = load i32, i32* %6, align 4
  ret i32 %1011
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local i32 @mlx5_ib_odp_create_qp(%struct.mlx5_ib_qp*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @create_rss_raw_qp_tir(%struct.mlx5_ib_dev*, %struct.mlx5_ib_qp*, %struct.ib_pd*, %struct.ib_qp_init_attr*, %struct.ib_udata*) #1

declare dso_local i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev*, %struct.ib_pd*) #1

declare dso_local i32 @mlx5_ib_dbg(%struct.mlx5_ib_dev*, i8*, ...) #1

declare dso_local i32 @MLX5_CAP_ETH(%struct.mlx5_core_dev*, i32) #1

declare dso_local i64 @ib_copy_from_udata(%struct.mlx5_ib_create_qp*, %struct.ib_udata*, i32) #1

declare dso_local i32 @get_qp_user_index(i32, %struct.mlx5_ib_create_qp*, i32, i32*) #1

declare dso_local i32 @to_mucontext(i32) #1

declare dso_local i32 @qp_has_rq(%struct.ib_qp_init_attr*) #1

declare dso_local i32 @set_rq_size(%struct.mlx5_ib_dev*, i32*, i32, %struct.mlx5_ib_qp*, %struct.mlx5_ib_create_qp*) #1

declare dso_local i32 @mlx5_ib_create_qp_sqpn_qp1(...) #1

declare dso_local i32 @create_user_qp(%struct.mlx5_ib_dev*, %struct.ib_pd*, %struct.mlx5_ib_qp*, %struct.ib_udata*, %struct.ib_qp_init_attr*, i32**, %struct.mlx5_ib_create_qp_resp*, i32*, %struct.mlx5_ib_qp_base*) #1

declare dso_local i32 @create_kernel_qp(%struct.mlx5_ib_dev*, %struct.ib_qp_init_attr*, %struct.mlx5_ib_qp*, i32**, i32*, %struct.mlx5_ib_qp_base*) #1

declare dso_local i32* @mlx5_vzalloc(i32) #1

declare dso_local i64 @is_sqp(i32) #1

declare dso_local i8* @MLX5_ADDR_OF(i32, i32*, i8*) #1

declare dso_local i32 @MLX5_SET(i8*, i8*, %struct.ib_pd*, i32) #1

declare dso_local i32 @to_mlx5_st(i32) #1

declare dso_local %struct.TYPE_20__* @to_mpd(%struct.ib_pd*) #1

declare dso_local i64 @is_connected(i32) #1

declare dso_local i32 @mlx5_ib_get_cqe_size(%struct.mlx5_ib_dev*, i32) #1

declare dso_local i32 @ilog2(i64) #1

declare dso_local i32 @get_rx_type(%struct.mlx5_ib_qp*, %struct.ib_qp_init_attr*) #1

declare dso_local %struct.TYPE_21__* @to_mcq(i32) #1

declare dso_local %struct.TYPE_19__* @to_msrq(i32) #1

declare dso_local %struct.TYPE_18__* @to_mxrcd(i32) #1

declare dso_local i32 @MLX5_SET64(i8*, i8*, i32, i32) #1

declare dso_local i32 @raw_packet_qp_copy_info(%struct.mlx5_ib_qp*, %struct.TYPE_22__*) #1

declare dso_local i32 @create_raw_packet_qp(%struct.mlx5_ib_dev*, %struct.mlx5_ib_qp*, i32*, %struct.ib_pd*) #1

declare dso_local i32 @mlx5_core_create_qp(%struct.mlx5_core_dev*, %struct.TYPE_23__*, i32*, i32) #1

declare dso_local i32 @kvfree(i32*) #1

declare dso_local i32 @get_cqs(i32, i32, i32, %struct.mlx5_ib_cq**, %struct.mlx5_ib_cq**) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mlx5_ib_lock_cqs(%struct.mlx5_ib_cq*, %struct.mlx5_ib_cq*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mlx5_ib_unlock_cqs(%struct.mlx5_ib_cq*, %struct.mlx5_ib_cq*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @destroy_qp_user(%struct.ib_pd*, %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp_base*) #1

declare dso_local i32 @destroy_qp_kernel(%struct.mlx5_ib_dev*, %struct.mlx5_ib_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
