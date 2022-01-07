; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_fw.c_mlx4_QUERY_DEV_CAP.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_fw.c_mlx4_QUERY_DEV_CAP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_dev_cap = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.mlx4_cmd_mailbox = type { i32*, i32 }

@MLX4_CMD_QUERY_DEV_CAP = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_A = common dso_local global i32 0, align 4
@MLX4_CMD_NATIVE = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_RSS_XOR = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_RSS_TOP = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_RSS = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_FLOWSTATS_EN = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_FS_EN = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_DMFS_UC_MC_SNIFFER = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_PORT_BEACON = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_DMFS_IPOIB = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_SL_TO_VL_CHANGE_EVENT = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_QCN = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_TS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_SVLAN_BY_QP = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_QOS_VPP = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_ETH_PROT_CTRL = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_CQE_STRIDE = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_EQE_STRIDE = common dso_local global i32 0, align 4
@MLX4_FLAG_ROCE_V1_V2 = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_ROCE_V1_V2 = common dso_local global i32 0, align 4
@MLX4_FLAG_PORT_REMAP = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_PORT_REMAP = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_CONFIG_DEV = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_IGNORE_FCS = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_PHV_EN = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_SKIP_OUTER_VLAN = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_ETH_BACKPL_AN_REP = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_RECOVERABLE_ERROR_EVENT = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_DIAG_PER_PORT = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_REASSIGN_MAC_EN = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_VXLAN_OFFLOADS = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_ETS_CFG = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG_COUNTERS = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_MAD_DEMUX = common dso_local global i32 0, align 4
@MGM_QPN_MASK = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_QP_RATE_LIMIT = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_UPDATE_QP = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_UPDATE_QP_SRC_CHECK_LB = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_LB_SRC_CHK = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_VLAN_CONTROL = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_FSM = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_80_VFS = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_SYS_EQS = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_ACK_DELAY_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_ALTC_ENTRY_SZ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_AUX_ENTRY_SZ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_BF_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_BMME_FLAGS_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_CONFIG_DEV_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_CQC_ENTRY_SZ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_CQ_EQ_CACHE_LINE_STRIDE = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_CQ_TS_SUPPORT_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_C_MPT_ENTRY_SZ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_DIAG_RPRT_PER_PORT = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_DMFS_HIGH_RATE_QPN_BASE_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_DMFS_HIGH_RATE_QPN_RANGE_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_D_MPT_ENTRY_SZ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_ECN_QCN_VER_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_EQC_ENTRY_SZ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_ETH_BACKPL_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_EXT_2_FLAGS_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_EXT_FLAGS_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_FLAGS_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_FLOW_STEERING_IPOIB_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_FLOW_STEERING_MAX_QP_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_FLOW_STEERING_RANGE_EN_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_FW_REASSIGN_MAC = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_LOG_BF_REG_SZ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_LOG_MAX_BF_REGS_PER_PAGE_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MAD_DEMUX_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MAX_COUNTERS_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MAX_CQ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MAX_CQ_SZ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MAX_DESC_SZ_RQ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MAX_DESC_SZ_SQ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MAX_EQ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MAX_GSO_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MAX_ICM_SZ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MAX_MCG_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MAX_MPT_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MAX_MSG_SZ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MAX_PD_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MAX_QP_MCG_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MAX_QP_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MAX_QP_SZ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MAX_RDMA_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MAX_REQ_QP_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MAX_RES_QP_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MAX_SG_RQ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MAX_SG_SQ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MAX_SRQ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MAX_SRQ_SZ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MAX_XRC_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_MTT_ENTRY_SZ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_NUM_SYS_EQ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_PAGE_SZ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_PHV_EN_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_PORT_BEACON_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_PORT_FLOWSTATS_COUNTERS_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_QPC_ENTRY_SZ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_QP_RATE_LIMIT_MAX_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_QP_RATE_LIMIT_MIN_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_QP_RATE_LIMIT_NUM_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_RATE_SUPPORT_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_RDMARC_ENTRY_SZ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_RSS_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_RSVD_CQ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_RSVD_EQ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_RSVD_LKEY_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_RSVD_MCG_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_RSVD_MRW_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_RSVD_MTT_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_RSVD_PD_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_RSVD_QP_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_RSVD_SRQ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_RSVD_UAR_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_RSVD_XRC_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_RSZ_SRQ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_SL2VL_EVENT_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_SRQ_ENTRY_SZ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_SVLAN_BY_QP_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_UAR_SZ_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_VL_PORT_OFFSET = common dso_local global i32 0, align 4
@QUERY_DEV_CAP_VXLAN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_QUERY_DEV_CAP(%struct.mlx4_dev* %0, %struct.mlx4_dev_cap* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx4_dev*, align 8
  %5 = alloca %struct.mlx4_dev_cap*, align 8
  %6 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %4, align 8
  store %struct.mlx4_dev_cap* %1, %struct.mlx4_dev_cap** %5, align 8
  %16 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %17 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %16, i32 0, i32 60
  store i32 0, i32* %17, align 8
  %18 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %19 = call %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev* %18)
  store %struct.mlx4_cmd_mailbox* %19, %struct.mlx4_cmd_mailbox** %6, align 8
  %20 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %6, align 8
  %21 = call i64 @IS_ERR(%struct.mlx4_cmd_mailbox* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %6, align 8
  %25 = call i32 @PTR_ERR(%struct.mlx4_cmd_mailbox* %24)
  store i32 %25, i32* %3, align 4
  br label %1020

26:                                               ; preds = %2
  %27 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %6, align 8
  %28 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %7, align 8
  %30 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %31 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %6, align 8
  %32 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @MLX4_CMD_QUERY_DEV_CAP, align 4
  %35 = load i32, i32* @MLX4_CMD_TIME_CLASS_A, align 4
  %36 = load i32, i32* @MLX4_CMD_NATIVE, align 4
  %37 = call i32 @mlx4_cmd_box(%struct.mlx4_dev* %30, i32 0, i32 %33, i32 0, i32 0, i32 %34, i32 %35, i32 %36)
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %26
  br label %1015

41:                                               ; preds = %26
  %42 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %43 = call i64 @mlx4_is_mfunc(%struct.mlx4_dev* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 @disable_unsupported_roce_caps(i32* %46)
  br label %48

48:                                               ; preds = %45, %41
  %49 = load i32, i32* %8, align 4
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @MLX4_GET(i32 %49, i32* %50, i32 18)
  %52 = load i32, i32* %8, align 4
  %53 = and i32 %52, 15
  %54 = shl i32 1, %53
  %55 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %56 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load i32*, i32** %7, align 8
  %59 = call i32 @MLX4_GET(i32 %57, i32* %58, i32 19)
  %60 = load i32, i32* %8, align 4
  %61 = and i32 %60, 31
  %62 = shl i32 1, %61
  %63 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %64 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i32*, i32** %7, align 8
  %67 = call i32 @MLX4_GET(i32 %65, i32* %66, i32 20)
  %68 = load i32, i32* %8, align 4
  %69 = ashr i32 %68, 4
  %70 = shl i32 1, %69
  %71 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %72 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* %8, align 4
  %74 = load i32*, i32** %7, align 8
  %75 = call i32 @MLX4_GET(i32 %73, i32* %74, i32 21)
  %76 = load i32, i32* %8, align 4
  %77 = and i32 %76, 31
  %78 = shl i32 1, %77
  %79 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %80 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* %8, align 4
  %82 = load i32*, i32** %7, align 8
  %83 = call i32 @MLX4_GET(i32 %81, i32* %82, i32 25)
  %84 = load i32, i32* %8, align 4
  %85 = shl i32 1, %84
  %86 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %87 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %86, i32 0, i32 4
  store i32 %85, i32* %87, align 8
  %88 = load i32, i32* %8, align 4
  %89 = load i32*, i32** %7, align 8
  %90 = call i32 @MLX4_GET(i32 %88, i32* %89, i32 26)
  %91 = load i32, i32* %8, align 4
  %92 = and i32 %91, 15
  %93 = shl i32 1, %92
  %94 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %95 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %94, i32 0, i32 5
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* %8, align 4
  %97 = load i32*, i32** %7, align 8
  %98 = call i32 @MLX4_GET(i32 %96, i32* %97, i32 27)
  %99 = load i32, i32* %8, align 4
  %100 = and i32 %99, 31
  %101 = shl i32 1, %100
  %102 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %103 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %102, i32 0, i32 6
  store i32 %101, i32* %103, align 8
  %104 = load i32, i32* %8, align 4
  %105 = load i32*, i32** %7, align 8
  %106 = call i32 @MLX4_GET(i32 %104, i32* %105, i32 29)
  %107 = load i32, i32* %8, align 4
  %108 = and i32 %107, 63
  %109 = shl i32 1, %108
  %110 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %111 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %110, i32 0, i32 7
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* %8, align 4
  %113 = load i32*, i32** %7, align 8
  %114 = call i32 @MLX4_GET(i32 %112, i32* %113, i32 30)
  %115 = load i32, i32* %8, align 4
  %116 = and i32 %115, 15
  %117 = shl i32 1, %116
  %118 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %119 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %118, i32 0, i32 8
  store i32 %117, i32* %119, align 8
  %120 = load i32, i32* %8, align 4
  %121 = load i32*, i32** %7, align 8
  %122 = call i32 @MLX4_GET(i32 %120, i32* %121, i32 31)
  %123 = load i32, i32* %8, align 4
  %124 = and i32 %123, 15
  %125 = shl i32 1, %124
  %126 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %127 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %126, i32 0, i32 9
  store i32 %125, i32* %127, align 4
  %128 = load i32, i32* %8, align 4
  %129 = load i32*, i32** %7, align 8
  %130 = call i32 @MLX4_GET(i32 %128, i32* %129, i32 32)
  %131 = load i32, i32* %8, align 4
  %132 = ashr i32 %131, 4
  %133 = shl i32 1, %132
  %134 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %135 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %134, i32 0, i32 10
  store i32 %133, i32* %135, align 8
  %136 = load i32, i32* %8, align 4
  %137 = load i32*, i32** %7, align 8
  %138 = call i32 @MLX4_GET(i32 %136, i32* %137, i32 34)
  %139 = load i32, i32* %8, align 4
  %140 = and i32 %139, 15
  %141 = shl i32 1, %140
  %142 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %143 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %142, i32 0, i32 11
  store i32 %141, i32* %143, align 4
  %144 = load i32, i32* %12, align 4
  %145 = load i32*, i32** %7, align 8
  %146 = call i32 @MLX4_GET(i32 %144, i32* %145, i32 38)
  %147 = load i32, i32* %12, align 4
  %148 = and i32 %147, 4095
  %149 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %150 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %149, i32 0, i32 12
  store i32 %148, i32* %150, align 8
  %151 = load i32, i32* %8, align 4
  %152 = load i32*, i32** %7, align 8
  %153 = call i32 @MLX4_GET(i32 %151, i32* %152, i32 41)
  %154 = load i32, i32* %8, align 4
  %155 = and i32 %154, 63
  %156 = shl i32 1, %155
  %157 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %158 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %157, i32 0, i32 13
  store i32 %156, i32* %158, align 4
  %159 = load i32, i32* %8, align 4
  %160 = load i32*, i32** %7, align 8
  %161 = call i32 @MLX4_GET(i32 %159, i32* %160, i32 43)
  %162 = load i32, i32* %8, align 4
  %163 = and i32 %162, 63
  %164 = shl i32 1, %163
  %165 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %166 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %165, i32 0, i32 14
  store i32 %164, i32* %166, align 8
  %167 = load i32, i32* %8, align 4
  %168 = load i32*, i32** %7, align 8
  %169 = call i32 @MLX4_GET(i32 %167, i32* %168, i32 45)
  %170 = load i32, i32* %8, align 4
  %171 = and i32 %170, 31
  store i32 %171, i32* %8, align 4
  %172 = load i32, i32* %8, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %177, label %174

174:                                              ; preds = %48
  %175 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %176 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %175, i32 0, i32 15
  store i32 0, i32* %176, align 4
  br label %182

177:                                              ; preds = %48
  %178 = load i32, i32* %8, align 4
  %179 = shl i32 1, %178
  %180 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %181 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %180, i32 0, i32 15
  store i32 %179, i32* %181, align 4
  br label %182

182:                                              ; preds = %177, %174
  %183 = load i32, i32* %8, align 4
  %184 = load i32*, i32** %7, align 8
  %185 = call i32 @MLX4_GET(i32 %183, i32* %184, i32 46)
  %186 = load i32, i32* %8, align 4
  %187 = and i32 %186, 32
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %195

189:                                              ; preds = %182
  %190 = load i32, i32* @MLX4_DEV_CAP_FLAG2_RSS_XOR, align 4
  %191 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %192 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %191, i32 0, i32 60
  %193 = load i32, i32* %192, align 8
  %194 = or i32 %193, %190
  store i32 %194, i32* %192, align 8
  br label %195

195:                                              ; preds = %189, %182
  %196 = load i32, i32* %8, align 4
  %197 = and i32 %196, 16
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %205

199:                                              ; preds = %195
  %200 = load i32, i32* @MLX4_DEV_CAP_FLAG2_RSS_TOP, align 4
  %201 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %202 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %201, i32 0, i32 60
  %203 = load i32, i32* %202, align 8
  %204 = or i32 %203, %200
  store i32 %204, i32* %202, align 8
  br label %205

205:                                              ; preds = %199, %195
  %206 = load i32, i32* %8, align 4
  %207 = and i32 %206, 15
  store i32 %207, i32* %8, align 4
  %208 = load i32, i32* %8, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %220

210:                                              ; preds = %205
  %211 = load i32, i32* @MLX4_DEV_CAP_FLAG2_RSS, align 4
  %212 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %213 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %212, i32 0, i32 60
  %214 = load i32, i32* %213, align 8
  %215 = or i32 %214, %211
  store i32 %215, i32* %213, align 8
  %216 = load i32, i32* %8, align 4
  %217 = shl i32 1, %216
  %218 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %219 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %218, i32 0, i32 16
  store i32 %217, i32* %219, align 8
  br label %223

220:                                              ; preds = %205
  %221 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %222 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %221, i32 0, i32 16
  store i32 0, i32* %222, align 8
  br label %223

223:                                              ; preds = %220, %210
  %224 = load i32, i32* %8, align 4
  %225 = load i32*, i32** %7, align 8
  %226 = call i32 @MLX4_GET(i32 %224, i32* %225, i32 47)
  %227 = load i32, i32* %8, align 4
  %228 = and i32 %227, 63
  %229 = shl i32 1, %228
  %230 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %231 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %230, i32 0, i32 17
  store i32 %229, i32* %231, align 4
  %232 = load i32, i32* %8, align 4
  %233 = load i32*, i32** %7, align 8
  %234 = call i32 @MLX4_GET(i32 %232, i32* %233, i32 53)
  %235 = load i32, i32* %8, align 4
  %236 = and i32 %235, 31
  %237 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %238 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %237, i32 0, i32 18
  store i32 %236, i32* %238, align 8
  %239 = load i32, i32* %8, align 4
  %240 = load i32*, i32** %7, align 8
  %241 = call i32 @MLX4_GET(i32 %239, i32* %240, i32 55)
  %242 = load i32, i32* %8, align 4
  %243 = and i32 %242, 15
  %244 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %245 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %244, i32 0, i32 19
  store i32 %243, i32* %245, align 4
  %246 = load i32, i32* %8, align 4
  %247 = load i32*, i32** %7, align 8
  %248 = call i32 @MLX4_GET(i32 %246, i32* %247, i32 56)
  %249 = load i32, i32* %8, align 4
  %250 = and i32 %249, 31
  %251 = shl i32 1, %250
  %252 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %253 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %252, i32 0, i32 20
  store i32 %251, i32* %253, align 8
  %254 = load i32, i32* %8, align 4
  %255 = load i32*, i32** %7, align 8
  %256 = call i32 @MLX4_GET(i32 %254, i32* %255, i32 112)
  %257 = load i32, i32* %8, align 4
  %258 = and i32 %257, 16
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %266

260:                                              ; preds = %223
  %261 = load i32, i32* @MLX4_DEV_CAP_FLAG2_FLOWSTATS_EN, align 4
  %262 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %263 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %262, i32 0, i32 60
  %264 = load i32, i32* %263, align 8
  %265 = or i32 %264, %261
  store i32 %265, i32* %263, align 8
  br label %266

266:                                              ; preds = %260, %223
  %267 = load i32, i32* %8, align 4
  %268 = load i32*, i32** %7, align 8
  %269 = call i32 @MLX4_GET(i32 %267, i32* %268, i32 118)
  %270 = load i32, i32* %8, align 4
  %271 = and i32 %270, 128
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %279

273:                                              ; preds = %266
  %274 = load i32, i32* @MLX4_DEV_CAP_FLAG2_FS_EN, align 4
  %275 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %276 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %275, i32 0, i32 60
  %277 = load i32, i32* %276, align 8
  %278 = or i32 %277, %274
  store i32 %278, i32* %276, align 8
  br label %279

279:                                              ; preds = %273, %266
  %280 = load i32, i32* %8, align 4
  %281 = and i32 %280, 31
  %282 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %283 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %282, i32 0, i32 21
  store i32 %281, i32* %283, align 4
  %284 = load i32, i32* %8, align 4
  %285 = and i32 %284, 32
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %293

287:                                              ; preds = %279
  %288 = load i32, i32* @MLX4_DEV_CAP_FLAG2_DMFS_UC_MC_SNIFFER, align 4
  %289 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %290 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %289, i32 0, i32 60
  %291 = load i32, i32* %290, align 8
  %292 = or i32 %291, %288
  store i32 %292, i32* %290, align 8
  br label %293

293:                                              ; preds = %287, %279
  %294 = load i32, i32* %8, align 4
  %295 = load i32*, i32** %7, align 8
  %296 = call i32 @MLX4_GET(i32 %294, i32* %295, i32 52)
  %297 = load i32, i32* %8, align 4
  %298 = and i32 %297, 128
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %306

300:                                              ; preds = %293
  %301 = load i32, i32* @MLX4_DEV_CAP_FLAG2_PORT_BEACON, align 4
  %302 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %303 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %302, i32 0, i32 60
  %304 = load i32, i32* %303, align 8
  %305 = or i32 %304, %301
  store i32 %305, i32* %303, align 8
  br label %306

306:                                              ; preds = %300, %293
  %307 = load i32, i32* %8, align 4
  %308 = load i32*, i32** %7, align 8
  %309 = call i32 @MLX4_GET(i32 %307, i32* %308, i32 116)
  %310 = load i32, i32* %8, align 4
  %311 = and i32 %310, 128
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %319

313:                                              ; preds = %306
  %314 = load i32, i32* @MLX4_DEV_CAP_FLAG2_DMFS_IPOIB, align 4
  %315 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %316 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %315, i32 0, i32 60
  %317 = load i32, i32* %316, align 8
  %318 = or i32 %317, %314
  store i32 %318, i32* %316, align 8
  br label %319

319:                                              ; preds = %313, %306
  %320 = load i32, i32* %8, align 4
  %321 = load i32*, i32** %7, align 8
  %322 = call i32 @MLX4_GET(i32 %320, i32* %321, i32 119)
  %323 = load i32, i32* %8, align 4
  %324 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %325 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %324, i32 0, i32 22
  store i32 %323, i32* %325, align 8
  %326 = load i32, i32* %8, align 4
  %327 = load i32*, i32** %7, align 8
  %328 = call i32 @MLX4_GET(i32 %326, i32* %327, i32 120)
  %329 = load i32, i32* %8, align 4
  %330 = and i32 %329, 32
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %338

332:                                              ; preds = %319
  %333 = load i32, i32* @MLX4_DEV_CAP_FLAG2_SL_TO_VL_CHANGE_EVENT, align 4
  %334 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %335 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %334, i32 0, i32 60
  %336 = load i32, i32* %335, align 8
  %337 = or i32 %336, %333
  store i32 %337, i32* %335, align 8
  br label %338

338:                                              ; preds = %332, %319
  %339 = load i32, i32* %8, align 4
  %340 = load i32*, i32** %7, align 8
  %341 = call i32 @MLX4_GET(i32 %339, i32* %340, i32 123)
  %342 = load i32, i32* %8, align 4
  %343 = and i32 %342, 1
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %351

345:                                              ; preds = %338
  %346 = load i32, i32* @MLX4_DEV_CAP_FLAG2_QCN, align 4
  %347 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %348 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %347, i32 0, i32 60
  %349 = load i32, i32* %348, align 8
  %350 = or i32 %349, %346
  store i32 %350, i32* %348, align 8
  br label %351

351:                                              ; preds = %345, %338
  %352 = load i32, i32* %13, align 4
  %353 = load i32*, i32** %7, align 8
  %354 = call i32 @MLX4_GET(i32 %352, i32* %353, i32 60)
  %355 = load i32, i32* %13, align 4
  %356 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %357 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %356, i32 0, i32 23
  store i32 %355, i32* %357, align 4
  %358 = load i32, i32* %8, align 4
  %359 = load i32*, i32** %7, align 8
  %360 = call i32 @MLX4_GET(i32 %358, i32* %359, i32 62)
  %361 = load i32, i32* %8, align 4
  %362 = and i32 %361, 128
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %370

364:                                              ; preds = %351
  %365 = load i32, i32* @MLX4_DEV_CAP_FLAG2_TS, align 4
  %366 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %367 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %366, i32 0, i32 60
  %368 = load i32, i32* %367, align 8
  %369 = or i32 %368, %365
  store i32 %369, i32* %367, align 8
  br label %370

370:                                              ; preds = %364, %351
  %371 = load i32, i32* %11, align 4
  %372 = load i32*, i32** %7, align 8
  %373 = call i32 @MLX4_GET(i32 %371, i32* %372, i32 64)
  %374 = load i32, i32* %10, align 4
  %375 = load i32*, i32** %7, align 8
  %376 = call i32 @MLX4_GET(i32 %374, i32* %375, i32 68)
  %377 = load i32, i32* %10, align 4
  %378 = load i32, i32* %11, align 4
  %379 = shl i32 %378, 32
  %380 = or i32 %377, %379
  %381 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %382 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %381, i32 0, i32 24
  store i32 %380, i32* %382, align 8
  %383 = load i32, i32* %8, align 4
  %384 = load i32*, i32** %7, align 8
  %385 = call i32 @MLX4_GET(i32 %383, i32* %384, i32 72)
  %386 = load i32, i32* %8, align 4
  %387 = ashr i32 %386, 4
  %388 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %389 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %388, i32 0, i32 25
  store i32 %387, i32* %389, align 4
  %390 = load i32, i32* %8, align 4
  %391 = load i32*, i32** %7, align 8
  %392 = call i32 @MLX4_GET(i32 %390, i32* %391, i32 73)
  %393 = load i32, i32* %8, align 4
  %394 = and i32 %393, 63
  %395 = add nsw i32 %394, 20
  %396 = shl i32 1, %395
  %397 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %398 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %397, i32 0, i32 26
  store i32 %396, i32* %398, align 8
  %399 = load i32, i32* %8, align 4
  %400 = load i32*, i32** %7, align 8
  %401 = call i32 @MLX4_GET(i32 %399, i32* %400, i32 75)
  %402 = load i32, i32* %8, align 4
  %403 = shl i32 1, %402
  %404 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %405 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %404, i32 0, i32 27
  store i32 %403, i32* %405, align 4
  %406 = load i32, i32* %8, align 4
  %407 = load i32*, i32** %7, align 8
  %408 = call i32 @MLX4_GET(i32 %406, i32* %407, i32 76)
  %409 = load i32, i32* %8, align 4
  %410 = and i32 %409, 128
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %412, label %440

412:                                              ; preds = %370
  %413 = load i32, i32* %8, align 4
  %414 = load i32*, i32** %7, align 8
  %415 = call i32 @MLX4_GET(i32 %413, i32* %414, i32 77)
  %416 = load i32, i32* %8, align 4
  %417 = and i32 %416, 31
  %418 = shl i32 1, %417
  %419 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %420 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %419, i32 0, i32 28
  store i32 %418, i32* %420, align 8
  %421 = load i32, i32* %8, align 4
  %422 = load i32*, i32** %7, align 8
  %423 = call i32 @MLX4_GET(i32 %421, i32* %422, i32 78)
  %424 = load i32, i32* %8, align 4
  %425 = and i32 %424, 63
  %426 = shl i32 1, %425
  %427 = load i32, i32* @PAGE_SIZE, align 4
  %428 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %429 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %428, i32 0, i32 28
  %430 = load i32, i32* %429, align 8
  %431 = sdiv i32 %427, %430
  %432 = icmp sgt i32 %426, %431
  br i1 %432, label %433, label %434

433:                                              ; preds = %412
  store i32 3, i32* %8, align 4
  br label %434

434:                                              ; preds = %433, %412
  %435 = load i32, i32* %8, align 4
  %436 = and i32 %435, 63
  %437 = shl i32 1, %436
  %438 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %439 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %438, i32 0, i32 29
  store i32 %437, i32* %439, align 4
  br label %443

440:                                              ; preds = %370
  %441 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %442 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %441, i32 0, i32 28
  store i32 0, i32* %442, align 8
  br label %443

443:                                              ; preds = %440, %434
  %444 = load i32, i32* %8, align 4
  %445 = load i32*, i32** %7, align 8
  %446 = call i32 @MLX4_GET(i32 %444, i32* %445, i32 81)
  %447 = load i32, i32* %8, align 4
  %448 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %449 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %448, i32 0, i32 30
  store i32 %447, i32* %449, align 8
  %450 = load i32, i32* %12, align 4
  %451 = load i32*, i32** %7, align 8
  %452 = call i32 @MLX4_GET(i32 %450, i32* %451, i32 82)
  %453 = load i32, i32* %12, align 4
  %454 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %455 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %454, i32 0, i32 31
  store i32 %453, i32* %455, align 4
  %456 = load i32, i32* %8, align 4
  %457 = load i32*, i32** %7, align 8
  %458 = call i32 @MLX4_GET(i32 %456, i32* %457, i32 93)
  %459 = load i32, i32* %8, align 4
  %460 = and i32 %459, 1
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %462, label %468

462:                                              ; preds = %443
  %463 = load i32, i32* @MLX4_DEV_CAP_FLAG2_SVLAN_BY_QP, align 4
  %464 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %465 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %464, i32 0, i32 60
  %466 = load i32, i32* %465, align 8
  %467 = or i32 %466, %463
  store i32 %467, i32* %465, align 8
  br label %468

468:                                              ; preds = %462, %443
  %469 = load i32, i32* %8, align 4
  %470 = load i32*, i32** %7, align 8
  %471 = call i32 @MLX4_GET(i32 %469, i32* %470, i32 97)
  %472 = load i32, i32* %8, align 4
  %473 = shl i32 1, %472
  %474 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %475 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %474, i32 0, i32 32
  store i32 %473, i32* %475, align 8
  %476 = load i32, i32* %8, align 4
  %477 = load i32*, i32** %7, align 8
  %478 = call i32 @MLX4_GET(i32 %476, i32* %477, i32 98)
  %479 = load i32, i32* %8, align 4
  %480 = and i32 %479, 15
  %481 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %482 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %481, i32 0, i32 33
  store i32 %480, i32* %482, align 4
  %483 = load i32, i32* %8, align 4
  %484 = load i32*, i32** %7, align 8
  %485 = call i32 @MLX4_GET(i32 %483, i32* %484, i32 99)
  %486 = load i32, i32* %8, align 4
  %487 = shl i32 1, %486
  %488 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %489 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %488, i32 0, i32 34
  store i32 %487, i32* %489, align 8
  %490 = load i32, i32* %8, align 4
  %491 = load i32*, i32** %7, align 8
  %492 = call i32 @MLX4_GET(i32 %490, i32* %491, i32 100)
  %493 = load i32, i32* %8, align 4
  %494 = ashr i32 %493, 4
  %495 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %496 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %495, i32 0, i32 35
  store i32 %494, i32* %496, align 4
  %497 = load i32, i32* %8, align 4
  %498 = load i32*, i32** %7, align 8
  %499 = call i32 @MLX4_GET(i32 %497, i32* %498, i32 101)
  %500 = load i32, i32* %8, align 4
  %501 = and i32 %500, 63
  %502 = shl i32 1, %501
  %503 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %504 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %503, i32 0, i32 36
  store i32 %502, i32* %504, align 8
  %505 = load i32, i32* %8, align 4
  %506 = load i32*, i32** %7, align 8
  %507 = call i32 @MLX4_GET(i32 %505, i32* %506, i32 102)
  %508 = load i32, i32* %8, align 4
  %509 = ashr i32 %508, 4
  %510 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %511 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %510, i32 0, i32 37
  store i32 %509, i32* %511, align 4
  %512 = load i32, i32* %8, align 4
  %513 = load i32*, i32** %7, align 8
  %514 = call i32 @MLX4_GET(i32 %512, i32* %513, i32 103)
  %515 = load i32, i32* %8, align 4
  %516 = and i32 %515, 31
  %517 = shl i32 1, %516
  %518 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %519 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %518, i32 0, i32 38
  store i32 %517, i32* %519, align 8
  %520 = load i32, i32* %12, align 4
  %521 = load i32*, i32** %7, align 8
  %522 = call i32 @MLX4_GET(i32 %520, i32* %521, i32 128)
  %523 = load i32, i32* %12, align 4
  %524 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %525 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %524, i32 0, i32 39
  store i32 %523, i32* %525, align 4
  %526 = load i32, i32* %12, align 4
  %527 = load i32*, i32** %7, align 8
  %528 = call i32 @MLX4_GET(i32 %526, i32* %527, i32 130)
  %529 = load i32, i32* %12, align 4
  %530 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %531 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %530, i32 0, i32 40
  store i32 %529, i32* %531, align 8
  %532 = load i32, i32* %12, align 4
  %533 = load i32*, i32** %7, align 8
  %534 = call i32 @MLX4_GET(i32 %532, i32* %533, i32 132)
  %535 = load i32, i32* %12, align 4
  %536 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %537 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %536, i32 0, i32 41
  store i32 %535, i32* %537, align 4
  %538 = load i32, i32* %12, align 4
  %539 = load i32*, i32** %7, align 8
  %540 = call i32 @MLX4_GET(i32 %538, i32* %539, i32 134)
  %541 = load i32, i32* %12, align 4
  %542 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %543 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %542, i32 0, i32 42
  store i32 %541, i32* %543, align 8
  %544 = load i32, i32* %12, align 4
  %545 = load i32*, i32** %7, align 8
  %546 = call i32 @MLX4_GET(i32 %544, i32* %545, i32 136)
  %547 = load i32, i32* %12, align 4
  %548 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %549 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %548, i32 0, i32 43
  store i32 %547, i32* %549, align 4
  %550 = load i32, i32* %12, align 4
  %551 = load i32*, i32** %7, align 8
  %552 = call i32 @MLX4_GET(i32 %550, i32* %551, i32 138)
  %553 = load i32, i32* %12, align 4
  %554 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %555 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %554, i32 0, i32 44
  store i32 %553, i32* %555, align 8
  %556 = load i32, i32* %12, align 4
  %557 = load i32*, i32** %7, align 8
  %558 = call i32 @MLX4_GET(i32 %556, i32* %557, i32 140)
  %559 = load i32, i32* %12, align 4
  %560 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %561 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %560, i32 0, i32 45
  store i32 %559, i32* %561, align 4
  %562 = load i32, i32* %12, align 4
  %563 = load i32*, i32** %7, align 8
  %564 = call i32 @MLX4_GET(i32 %562, i32* %563, i32 142)
  %565 = load i32, i32* %12, align 4
  %566 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %567 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %566, i32 0, i32 46
  store i32 %565, i32* %567, align 8
  %568 = load i32, i32* %12, align 4
  %569 = load i32*, i32** %7, align 8
  %570 = call i32 @MLX4_GET(i32 %568, i32* %569, i32 144)
  %571 = load i32, i32* %12, align 4
  %572 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %573 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %572, i32 0, i32 47
  store i32 %571, i32* %573, align 4
  %574 = load i32, i32* %12, align 4
  %575 = load i32*, i32** %7, align 8
  %576 = call i32 @MLX4_GET(i32 %574, i32* %575, i32 146)
  %577 = load i32, i32* %12, align 4
  %578 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %579 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %578, i32 0, i32 48
  store i32 %577, i32* %579, align 8
  %580 = load i32, i32* %8, align 4
  %581 = load i32*, i32** %7, align 8
  %582 = call i32 @MLX4_GET(i32 %580, i32* %581, i32 16)
  %583 = load i32, i32* %8, align 4
  %584 = shl i32 1, %583
  %585 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %586 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %585, i32 0, i32 49
  store i32 %584, i32* %586, align 4
  %587 = load i32, i32* %8, align 4
  %588 = load i32*, i32** %7, align 8
  %589 = call i32 @MLX4_GET(i32 %587, i32* %588, i32 17)
  %590 = load i32, i32* %8, align 4
  %591 = shl i32 1, %590
  %592 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %593 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %592, i32 0, i32 50
  store i32 %591, i32* %593, align 8
  %594 = load i32, i32* %8, align 4
  %595 = load i32*, i32** %7, align 8
  %596 = call i32 @MLX4_GET(i32 %594, i32* %595, i32 51)
  %597 = load i32, i32* %8, align 4
  %598 = and i32 %597, 1
  %599 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %600 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %599, i32 0, i32 51
  store i32 %598, i32* %600, align 4
  %601 = load i32, i32* %8, align 4
  %602 = load i32*, i32** %7, align 8
  %603 = call i32 @MLX4_GET(i32 %601, i32* %602, i32 85)
  %604 = load i32, i32* %8, align 4
  %605 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %606 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %605, i32 0, i32 52
  store i32 %604, i32* %606, align 8
  %607 = load i32, i32* %12, align 4
  %608 = load i32*, i32** %7, align 8
  %609 = call i32 @MLX4_GET(i32 %607, i32* %608, i32 86)
  %610 = load i32, i32* %12, align 4
  %611 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %612 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %611, i32 0, i32 53
  store i32 %610, i32* %612, align 4
  %613 = load i32, i32* %8, align 4
  %614 = load i32*, i32** %7, align 8
  %615 = call i32 @MLX4_GET(i32 %613, i32* %614, i32 122)
  %616 = load i32, i32* %8, align 4
  %617 = and i32 %616, 16
  %618 = icmp ne i32 %617, 0
  br i1 %618, label %619, label %625

619:                                              ; preds = %468
  %620 = load i32, i32* @MLX4_DEV_CAP_FLAG2_QOS_VPP, align 4
  %621 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %622 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %621, i32 0, i32 60
  %623 = load i32, i32* %622, align 8
  %624 = or i32 %623, %620
  store i32 %624, i32* %622, align 8
  br label %625

625:                                              ; preds = %619, %468
  %626 = load i32, i32* %8, align 4
  %627 = and i32 %626, 32
  %628 = icmp ne i32 %627, 0
  br i1 %628, label %629, label %635

629:                                              ; preds = %625
  %630 = load i32, i32* @MLX4_DEV_CAP_FLAG2_ETH_PROT_CTRL, align 4
  %631 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %632 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %631, i32 0, i32 60
  %633 = load i32, i32* %632, align 8
  %634 = or i32 %633, %630
  store i32 %634, i32* %632, align 8
  br label %635

635:                                              ; preds = %629, %625
  %636 = load i32, i32* %8, align 4
  %637 = and i32 %636, 64
  %638 = icmp ne i32 %637, 0
  br i1 %638, label %639, label %645

639:                                              ; preds = %635
  %640 = load i32, i32* @MLX4_DEV_CAP_FLAG2_CQE_STRIDE, align 4
  %641 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %642 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %641, i32 0, i32 60
  %643 = load i32, i32* %642, align 8
  %644 = or i32 %643, %640
  store i32 %644, i32* %642, align 8
  br label %645

645:                                              ; preds = %639, %635
  %646 = load i32, i32* %8, align 4
  %647 = and i32 %646, 128
  %648 = icmp ne i32 %647, 0
  br i1 %648, label %649, label %655

649:                                              ; preds = %645
  %650 = load i32, i32* @MLX4_DEV_CAP_FLAG2_EQE_STRIDE, align 4
  %651 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %652 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %651, i32 0, i32 60
  %653 = load i32, i32* %652, align 8
  %654 = or i32 %653, %650
  store i32 %654, i32* %652, align 8
  br label %655

655:                                              ; preds = %649, %645
  %656 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %657 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %656, i32 0, i32 54
  %658 = load i32, i32* %657, align 8
  %659 = load i32*, i32** %7, align 8
  %660 = call i32 @MLX4_GET(i32 %658, i32* %659, i32 148)
  %661 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %662 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %661, i32 0, i32 54
  %663 = load i32, i32* %662, align 8
  %664 = load i32, i32* @MLX4_FLAG_ROCE_V1_V2, align 4
  %665 = and i32 %663, %664
  %666 = icmp ne i32 %665, 0
  br i1 %666, label %667, label %673

667:                                              ; preds = %655
  %668 = load i32, i32* @MLX4_DEV_CAP_FLAG2_ROCE_V1_V2, align 4
  %669 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %670 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %669, i32 0, i32 60
  %671 = load i32, i32* %670, align 8
  %672 = or i32 %671, %668
  store i32 %672, i32* %670, align 8
  br label %673

673:                                              ; preds = %667, %655
  %674 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %675 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %674, i32 0, i32 54
  %676 = load i32, i32* %675, align 8
  %677 = load i32, i32* @MLX4_FLAG_PORT_REMAP, align 4
  %678 = and i32 %676, %677
  %679 = icmp ne i32 %678, 0
  br i1 %679, label %680, label %686

680:                                              ; preds = %673
  %681 = load i32, i32* @MLX4_DEV_CAP_FLAG2_PORT_REMAP, align 4
  %682 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %683 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %682, i32 0, i32 60
  %684 = load i32, i32* %683, align 8
  %685 = or i32 %684, %681
  store i32 %685, i32* %683, align 8
  br label %686

686:                                              ; preds = %680, %673
  %687 = load i32, i32* %8, align 4
  %688 = load i32*, i32** %7, align 8
  %689 = call i32 @MLX4_GET(i32 %687, i32* %688, i32 148)
  %690 = load i32, i32* %8, align 4
  %691 = and i32 %690, 32
  %692 = icmp ne i32 %691, 0
  br i1 %692, label %693, label %699

693:                                              ; preds = %686
  %694 = load i32, i32* @MLX4_DEV_CAP_FLAG2_CONFIG_DEV, align 4
  %695 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %696 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %695, i32 0, i32 60
  %697 = load i32, i32* %696, align 8
  %698 = or i32 %697, %694
  store i32 %698, i32* %696, align 8
  br label %699

699:                                              ; preds = %693, %686
  %700 = load i32, i32* %8, align 4
  %701 = and i32 %700, 4
  %702 = icmp ne i32 %701, 0
  br i1 %702, label %703, label %709

703:                                              ; preds = %699
  %704 = load i32, i32* @MLX4_DEV_CAP_FLAG2_IGNORE_FCS, align 4
  %705 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %706 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %705, i32 0, i32 60
  %707 = load i32, i32* %706, align 8
  %708 = or i32 %707, %704
  store i32 %708, i32* %706, align 8
  br label %709

709:                                              ; preds = %703, %699
  %710 = load i32, i32* %8, align 4
  %711 = load i32*, i32** %7, align 8
  %712 = call i32 @MLX4_GET(i32 %710, i32* %711, i32 150)
  %713 = load i32, i32* %8, align 4
  %714 = and i32 %713, 128
  %715 = icmp ne i32 %714, 0
  br i1 %715, label %716, label %722

716:                                              ; preds = %709
  %717 = load i32, i32* @MLX4_DEV_CAP_FLAG2_PHV_EN, align 4
  %718 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %719 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %718, i32 0, i32 60
  %720 = load i32, i32* %719, align 8
  %721 = or i32 %720, %717
  store i32 %721, i32* %719, align 8
  br label %722

722:                                              ; preds = %716, %709
  %723 = load i32, i32* %8, align 4
  %724 = and i32 %723, 64
  %725 = icmp ne i32 %724, 0
  br i1 %725, label %726, label %732

726:                                              ; preds = %722
  %727 = load i32, i32* @MLX4_DEV_CAP_FLAG2_SKIP_OUTER_VLAN, align 4
  %728 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %729 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %728, i32 0, i32 60
  %730 = load i32, i32* %729, align 8
  %731 = or i32 %730, %727
  store i32 %731, i32* %729, align 8
  br label %732

732:                                              ; preds = %726, %722
  %733 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %734 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %733, i32 0, i32 55
  %735 = load i32, i32* %734, align 4
  %736 = load i32*, i32** %7, align 8
  %737 = call i32 @MLX4_GET(i32 %735, i32* %736, i32 152)
  %738 = load i32, i32* %9, align 4
  %739 = load i32*, i32** %7, align 8
  %740 = call i32 @MLX4_GET(i32 %738, i32* %739, i32 156)
  %741 = load i32, i32* %9, align 4
  %742 = and i32 %741, 1
  %743 = icmp ne i32 %742, 0
  br i1 %743, label %744, label %750

744:                                              ; preds = %732
  %745 = load i32, i32* @MLX4_DEV_CAP_FLAG2_ETH_BACKPL_AN_REP, align 4
  %746 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %747 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %746, i32 0, i32 60
  %748 = load i32, i32* %747, align 8
  %749 = or i32 %748, %745
  store i32 %749, i32* %747, align 8
  br label %750

750:                                              ; preds = %744, %732
  %751 = load i32, i32* %9, align 4
  %752 = and i32 %751, 128
  %753 = icmp ne i32 %752, 0
  br i1 %753, label %754, label %760

754:                                              ; preds = %750
  %755 = load i32, i32* @MLX4_DEV_CAP_FLAG2_RECOVERABLE_ERROR_EVENT, align 4
  %756 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %757 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %756, i32 0, i32 60
  %758 = load i32, i32* %757, align 8
  %759 = or i32 %758, %755
  store i32 %759, i32* %757, align 8
  br label %760

760:                                              ; preds = %754, %750
  %761 = load i32, i32* %9, align 4
  %762 = load i32*, i32** %7, align 8
  %763 = call i32 @MLX4_GET(i32 %761, i32* %762, i32 156)
  %764 = load i32, i32* %9, align 4
  %765 = and i32 %764, 131072
  %766 = icmp ne i32 %765, 0
  br i1 %766, label %767, label %773

767:                                              ; preds = %760
  %768 = load i32, i32* @MLX4_DEV_CAP_FLAG2_DIAG_PER_PORT, align 4
  %769 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %770 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %769, i32 0, i32 60
  %771 = load i32, i32* %770, align 8
  %772 = or i32 %771, %768
  store i32 %772, i32* %770, align 8
  br label %773

773:                                              ; preds = %767, %760
  %774 = load i32, i32* %8, align 4
  %775 = load i32*, i32** %7, align 8
  %776 = call i32 @MLX4_GET(i32 %774, i32* %775, i32 157)
  %777 = load i32, i32* %8, align 4
  %778 = and i32 %777, 64
  %779 = icmp ne i32 %778, 0
  br i1 %779, label %780, label %786

780:                                              ; preds = %773
  %781 = load i32, i32* @MLX4_DEV_CAP_FLAG2_REASSIGN_MAC_EN, align 4
  %782 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %783 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %782, i32 0, i32 60
  %784 = load i32, i32* %783, align 8
  %785 = or i32 %784, %781
  store i32 %785, i32* %783, align 8
  br label %786

786:                                              ; preds = %780, %773
  %787 = load i32, i32* %8, align 4
  %788 = load i32*, i32** %7, align 8
  %789 = call i32 @MLX4_GET(i32 %787, i32* %788, i32 158)
  %790 = load i32, i32* %8, align 4
  %791 = and i32 %790, 8
  %792 = icmp ne i32 %791, 0
  br i1 %792, label %793, label %799

793:                                              ; preds = %786
  %794 = load i32, i32* @MLX4_DEV_CAP_FLAG2_VXLAN_OFFLOADS, align 4
  %795 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %796 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %795, i32 0, i32 60
  %797 = load i32, i32* %796, align 8
  %798 = or i32 %797, %794
  store i32 %798, i32* %796, align 8
  br label %799

799:                                              ; preds = %793, %786
  %800 = load i32, i32* %8, align 4
  %801 = and i32 %800, 32
  %802 = icmp ne i32 %801, 0
  br i1 %802, label %803, label %809

803:                                              ; preds = %799
  %804 = load i32, i32* @MLX4_DEV_CAP_FLAG2_ETS_CFG, align 4
  %805 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %806 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %805, i32 0, i32 60
  %807 = load i32, i32* %806, align 8
  %808 = or i32 %807, %804
  store i32 %808, i32* %806, align 8
  br label %809

809:                                              ; preds = %803, %799
  %810 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %811 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %810, i32 0, i32 56
  %812 = load i32, i32* %811, align 8
  %813 = load i32*, i32** %7, align 8
  %814 = call i32 @MLX4_GET(i32 %812, i32* %813, i32 160)
  %815 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %816 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %815, i32 0, i32 24
  %817 = load i32, i32* %816, align 8
  %818 = load i32, i32* @MLX4_DEV_CAP_FLAG_COUNTERS, align 4
  %819 = and i32 %817, %818
  %820 = icmp ne i32 %819, 0
  br i1 %820, label %821, label %827

821:                                              ; preds = %809
  %822 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %823 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %822, i32 0, i32 57
  %824 = load i32, i32* %823, align 4
  %825 = load i32*, i32** %7, align 8
  %826 = call i32 @MLX4_GET(i32 %824, i32* %825, i32 104)
  br label %827

827:                                              ; preds = %821, %809
  %828 = load i32, i32* %9, align 4
  %829 = load i32*, i32** %7, align 8
  %830 = call i32 @MLX4_GET(i32 %828, i32* %829, i32 176)
  %831 = load i32, i32* %9, align 4
  %832 = and i32 %831, 1
  %833 = icmp ne i32 %832, 0
  br i1 %833, label %834, label %840

834:                                              ; preds = %827
  %835 = load i32, i32* @MLX4_DEV_CAP_FLAG2_MAD_DEMUX, align 4
  %836 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %837 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %836, i32 0, i32 60
  %838 = load i32, i32* %837, align 8
  %839 = or i32 %838, %835
  store i32 %839, i32* %837, align 8
  br label %840

840:                                              ; preds = %834, %827
  %841 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %842 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %841, i32 0, i32 58
  %843 = load i32, i32* %842, align 8
  %844 = load i32*, i32** %7, align 8
  %845 = call i32 @MLX4_GET(i32 %843, i32* %844, i32 168)
  %846 = load i32, i32* @MGM_QPN_MASK, align 4
  %847 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %848 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %847, i32 0, i32 58
  %849 = load i32, i32* %848, align 8
  %850 = and i32 %849, %846
  store i32 %850, i32* %848, align 8
  %851 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %852 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %851, i32 0, i32 59
  %853 = load i32, i32* %852, align 4
  %854 = load i32*, i32** %7, align 8
  %855 = call i32 @MLX4_GET(i32 %853, i32* %854, i32 172)
  %856 = load i32, i32* @MGM_QPN_MASK, align 4
  %857 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %858 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %857, i32 0, i32 59
  %859 = load i32, i32* %858, align 4
  %860 = and i32 %859, %856
  store i32 %860, i32* %858, align 4
  %861 = load i32, i32* %12, align 4
  %862 = load i32*, i32** %7, align 8
  %863 = call i32 @MLX4_GET(i32 %861, i32* %862, i32 204)
  %864 = load i32, i32* %12, align 4
  %865 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %866 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %865, i32 0, i32 62
  %867 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %866, i32 0, i32 0
  store i32 %864, i32* %867, align 8
  %868 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %869 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %868, i32 0, i32 62
  %870 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %869, i32 0, i32 0
  %871 = load i32, i32* %870, align 8
  %872 = icmp ne i32 %871, 0
  br i1 %872, label %873, label %905

873:                                              ; preds = %840
  %874 = load i32, i32* @MLX4_DEV_CAP_FLAG2_QP_RATE_LIMIT, align 4
  %875 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %876 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %875, i32 0, i32 60
  %877 = load i32, i32* %876, align 8
  %878 = or i32 %877, %874
  store i32 %878, i32* %876, align 8
  %879 = load i32, i32* %12, align 4
  %880 = load i32*, i32** %7, align 8
  %881 = call i32 @MLX4_GET(i32 %879, i32* %880, i32 208)
  %882 = load i32, i32* %12, align 4
  %883 = and i32 %882, 4095
  %884 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %885 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %884, i32 0, i32 62
  %886 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %885, i32 0, i32 1
  store i32 %883, i32* %886, align 4
  %887 = load i32, i32* %12, align 4
  %888 = ashr i32 %887, 14
  %889 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %890 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %889, i32 0, i32 62
  %891 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %890, i32 0, i32 2
  store i32 %888, i32* %891, align 8
  %892 = load i32, i32* %12, align 4
  %893 = load i32*, i32** %7, align 8
  %894 = call i32 @MLX4_GET(i32 %892, i32* %893, i32 210)
  %895 = load i32, i32* %12, align 4
  %896 = and i32 %895, 4095
  %897 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %898 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %897, i32 0, i32 62
  %899 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %898, i32 0, i32 3
  store i32 %896, i32* %899, align 4
  %900 = load i32, i32* %12, align 4
  %901 = ashr i32 %900, 14
  %902 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %903 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %902, i32 0, i32 62
  %904 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %903, i32 0, i32 4
  store i32 %901, i32* %904, align 8
  br label %905

905:                                              ; preds = %873, %840
  %906 = load i32, i32* %9, align 4
  %907 = load i32*, i32** %7, align 8
  %908 = call i32 @MLX4_GET(i32 %906, i32* %907, i32 112)
  %909 = load i32, i32* %9, align 4
  %910 = and i32 %909, 65536
  %911 = icmp ne i32 %910, 0
  br i1 %911, label %912, label %918

912:                                              ; preds = %905
  %913 = load i32, i32* @MLX4_DEV_CAP_FLAG2_UPDATE_QP, align 4
  %914 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %915 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %914, i32 0, i32 60
  %916 = load i32, i32* %915, align 8
  %917 = or i32 %916, %913
  store i32 %917, i32* %915, align 8
  br label %918

918:                                              ; preds = %912, %905
  %919 = load i32, i32* %9, align 4
  %920 = and i32 %919, 262144
  %921 = icmp ne i32 %920, 0
  br i1 %921, label %922, label %928

922:                                              ; preds = %918
  %923 = load i32, i32* @MLX4_DEV_CAP_FLAG2_UPDATE_QP_SRC_CHECK_LB, align 4
  %924 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %925 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %924, i32 0, i32 60
  %926 = load i32, i32* %925, align 8
  %927 = or i32 %926, %923
  store i32 %927, i32* %925, align 8
  br label %928

928:                                              ; preds = %922, %918
  %929 = load i32, i32* %9, align 4
  %930 = and i32 %929, 524288
  %931 = icmp ne i32 %930, 0
  br i1 %931, label %932, label %938

932:                                              ; preds = %928
  %933 = load i32, i32* @MLX4_DEV_CAP_FLAG2_LB_SRC_CHK, align 4
  %934 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %935 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %934, i32 0, i32 60
  %936 = load i32, i32* %935, align 8
  %937 = or i32 %936, %933
  store i32 %937, i32* %935, align 8
  br label %938

938:                                              ; preds = %932, %928
  %939 = load i32, i32* %9, align 4
  %940 = and i32 %939, 67108864
  %941 = icmp ne i32 %940, 0
  br i1 %941, label %942, label %948

942:                                              ; preds = %938
  %943 = load i32, i32* @MLX4_DEV_CAP_FLAG2_VLAN_CONTROL, align 4
  %944 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %945 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %944, i32 0, i32 60
  %946 = load i32, i32* %945, align 8
  %947 = or i32 %946, %943
  store i32 %947, i32* %945, align 8
  br label %948

948:                                              ; preds = %942, %938
  %949 = load i32, i32* %9, align 4
  %950 = and i32 %949, 1048576
  %951 = icmp ne i32 %950, 0
  br i1 %951, label %952, label %958

952:                                              ; preds = %948
  %953 = load i32, i32* @MLX4_DEV_CAP_FLAG2_FSM, align 4
  %954 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %955 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %954, i32 0, i32 60
  %956 = load i32, i32* %955, align 8
  %957 = or i32 %956, %953
  store i32 %957, i32* %955, align 8
  br label %958

958:                                              ; preds = %952, %948
  %959 = load i32, i32* %9, align 4
  %960 = and i32 %959, 2097152
  %961 = icmp ne i32 %960, 0
  br i1 %961, label %962, label %968

962:                                              ; preds = %958
  %963 = load i32, i32* @MLX4_DEV_CAP_FLAG2_80_VFS, align 4
  %964 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %965 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %964, i32 0, i32 60
  %966 = load i32, i32* %965, align 8
  %967 = or i32 %966, %963
  store i32 %967, i32* %965, align 8
  br label %968

968:                                              ; preds = %962, %958
  store i32 1, i32* %15, align 4
  br label %969

969:                                              ; preds = %989, %968
  %970 = load i32, i32* %15, align 4
  %971 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %972 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %971, i32 0, i32 19
  %973 = load i32, i32* %972, align 4
  %974 = icmp sle i32 %970, %973
  br i1 %974, label %975, label %992

975:                                              ; preds = %969
  %976 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %977 = load i32, i32* %15, align 4
  %978 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %979 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %978, i32 0, i32 61
  %980 = load i64, i64* %979, align 8
  %981 = load i32, i32* %15, align 4
  %982 = sext i32 %981 to i64
  %983 = add nsw i64 %980, %982
  %984 = call i32 @mlx4_QUERY_PORT(%struct.mlx4_dev* %976, i32 %977, i64 %983)
  store i32 %984, i32* %14, align 4
  %985 = load i32, i32* %14, align 4
  %986 = icmp ne i32 %985, 0
  br i1 %986, label %987, label %988

987:                                              ; preds = %975
  br label %1015

988:                                              ; preds = %975
  br label %989

989:                                              ; preds = %988
  %990 = load i32, i32* %15, align 4
  %991 = add nsw i32 %990, 1
  store i32 %991, i32* %15, align 4
  br label %969

992:                                              ; preds = %969
  %993 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %994 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %993, i32 0, i32 12
  %995 = load i32, i32* %994, align 8
  %996 = icmp eq i32 %995, 0
  br i1 %996, label %997, label %1008

997:                                              ; preds = %992
  %998 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %999 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %998, i32 0, i32 25
  %1000 = load i32, i32* %999, align 4
  %1001 = mul nsw i32 %1000, 4
  %1002 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %1003 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %1002, i32 0, i32 8
  %1004 = load i32, i32* %1003, align 8
  %1005 = call i32 @max(i32 %1001, i32 %1004)
  %1006 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %1007 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %1006, i32 0, i32 8
  store i32 %1005, i32* %1007, align 8
  br label %1014

1008:                                             ; preds = %992
  %1009 = load i32, i32* @MLX4_DEV_CAP_FLAG2_SYS_EQS, align 4
  %1010 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %5, align 8
  %1011 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %1010, i32 0, i32 60
  %1012 = load i32, i32* %1011, align 8
  %1013 = or i32 %1012, %1009
  store i32 %1013, i32* %1011, align 8
  br label %1014

1014:                                             ; preds = %1008, %997
  br label %1015

1015:                                             ; preds = %1014, %987, %40
  %1016 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %1017 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %6, align 8
  %1018 = call i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev* %1016, %struct.mlx4_cmd_mailbox* %1017)
  %1019 = load i32, i32* %14, align 4
  store i32 %1019, i32* %3, align 4
  br label %1020

1020:                                             ; preds = %1015, %23
  %1021 = load i32, i32* %3, align 4
  ret i32 %1021
}

declare dso_local %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev*) #1

declare dso_local i64 @IS_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @mlx4_cmd_box(%struct.mlx4_dev*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @mlx4_is_mfunc(%struct.mlx4_dev*) #1

declare dso_local i32 @disable_unsupported_roce_caps(i32*) #1

declare dso_local i32 @MLX4_GET(i32, i32*, i32) #1

declare dso_local i32 @mlx4_QUERY_PORT(%struct.mlx4_dev*, i32, i64) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev*, %struct.mlx4_cmd_mailbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
