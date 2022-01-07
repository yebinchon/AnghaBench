; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_check_qp_attrs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_check_qp_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pd = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.qlnxr_dev = type { i64, i32*, i32 }
%struct.ib_qp_init_attr = type { i32, i32, i32, %struct.TYPE_4__, i64, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }
%struct.ib_udata = type { i32 }
%struct.ecore_rdma_device = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32 }
%struct.qlnxr_cq = type { i64 }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"attrs->sq_sig_type = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"attrs->qp_type = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"attrs->create_flags = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"attrs->qpg_type = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"attrs->port_num = %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"attrs->cap.max_send_wr = 0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"attrs->cap.max_recv_wr = 0x%x\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"attrs->cap.max_send_sge = 0x%x\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"attrs->cap.max_recv_sge = 0x%x\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"attrs->cap.max_inline_data = 0x%x\0A\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"attrs->cap.qpg_tss_mask_sz = 0x%x\0A\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"\0A\0Aqattr->vendor_id = 0x%x\0A\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"qattr->vendor_part_id = 0x%x\0A\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"qattr->hw_ver = 0x%x\0A\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"qattr->fw_ver = %p\0A\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"qattr->node_guid = %p\0A\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"qattr->sys_image_guid = %p\0A\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"qattr->max_cnq = 0x%x\0A\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"qattr->max_sge = 0x%x\0A\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"qattr->max_srq_sge = 0x%x\0A\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"qattr->max_inline = 0x%x\0A\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"qattr->max_wqe = 0x%x\0A\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"qattr->max_srq_wqe = 0x%x\0A\00", align 1
@.str.24 = private unnamed_addr constant [42 x i8] c"qattr->max_qp_resp_rd_atomic_resc = 0x%x\0A\00", align 1
@.str.25 = private unnamed_addr constant [41 x i8] c"qattr->max_qp_req_rd_atomic_resc = 0x%x\0A\00", align 1
@.str.26 = private unnamed_addr constant [43 x i8] c"qattr->max_dev_resp_rd_atomic_resc = 0x%x\0A\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"qattr->max_cq = 0x%x\0A\00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c"qattr->max_qp = 0x%x\0A\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"qattr->max_srq = 0x%x\0A\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"qattr->max_mr = 0x%x\0A\00", align 1
@.str.31 = private unnamed_addr constant [25 x i8] c"qattr->max_mr_size = %p\0A\00", align 1
@.str.32 = private unnamed_addr constant [23 x i8] c"qattr->max_cqe = 0x%x\0A\00", align 1
@.str.33 = private unnamed_addr constant [22 x i8] c"qattr->max_mw = 0x%x\0A\00", align 1
@.str.34 = private unnamed_addr constant [23 x i8] c"qattr->max_fmr = 0x%x\0A\00", align 1
@.str.35 = private unnamed_addr constant [33 x i8] c"qattr->max_mr_mw_fmr_pbl = 0x%x\0A\00", align 1
@.str.36 = private unnamed_addr constant [32 x i8] c"qattr->max_mr_mw_fmr_size = %p\0A\00", align 1
@.str.37 = private unnamed_addr constant [22 x i8] c"qattr->max_pd = 0x%x\0A\00", align 1
@.str.38 = private unnamed_addr constant [22 x i8] c"qattr->max_ah = 0x%x\0A\00", align 1
@.str.39 = private unnamed_addr constant [24 x i8] c"qattr->max_pkey = 0x%x\0A\00", align 1
@.str.40 = private unnamed_addr constant [26 x i8] c"qattr->max_srq_wr = 0x%x\0A\00", align 1
@.str.41 = private unnamed_addr constant [32 x i8] c"qattr->max_stats_queues = 0x%x\0A\00", align 1
@.str.42 = private unnamed_addr constant [28 x i8] c"qattr->page_size_caps = %p\0A\00", align 1
@.str.43 = private unnamed_addr constant [29 x i8] c"qattr->dev_ack_delay = 0x%x\0A\00", align 1
@.str.44 = private unnamed_addr constant [29 x i8] c"qattr->reserved_lkey = 0x%x\0A\00", align 1
@.str.45 = private unnamed_addr constant [32 x i8] c"qattr->bad_pkey_counter = 0x%x\0A\00", align 1
@IB_QPT_GSI = common dso_local global i32 0, align 4
@.str.46 = private unnamed_addr constant [39 x i8] c"unexpected udata when creating GSI QP\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.47 = private unnamed_addr constant [34 x i8] c"called from user without context\0A\00", align 1
@IB_QPT_RC = common dso_local global i32 0, align 4
@.str.48 = private unnamed_addr constant [36 x i8] c"unsupported qp type=0x%x requested\0A\00", align 1
@.str.49 = private unnamed_addr constant [31 x i8] c"cannot create GSI qp with SRQ\0A\00", align 1
@.str.50 = private unnamed_addr constant [57 x i8] c"cannot create a SQ with %d elements  (max_send_wr=0x%x)\0A\00", align 1
@.str.51 = private unnamed_addr constant [56 x i8] c"cannot create a RQ with %d elements (max_recv_wr=0x%x)\0A\00", align 1
@.str.52 = private unnamed_addr constant [63 x i8] c"unsupported inline data size=0x%x requested (max_inline=0x%x)\0A\00", align 1
@.str.53 = private unnamed_addr constant [57 x i8] c"unsupported send_sge=0x%x requested (max_send_sge=0x%x)\0A\00", align 1
@.str.54 = private unnamed_addr constant [58 x i8] c"unsupported recv_sge=0x%x requested  (max_recv_sge=0x%x)\0A\00", align 1
@.str.55 = private unnamed_addr constant [49 x i8] c"userspace can't create special QPs of type=0x%x\0A\00", align 1
@.str.56 = private unnamed_addr constant [45 x i8] c"create qp: GSI special QPs already created.\0A\00", align 1
@QLNXR_CQ_TYPE_GSI = common dso_local global i64 0, align 8
@.str.57 = private unnamed_addr constant [33 x i8] c"consumer QP cannot use GSI CQs.\0A\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_pd*, %struct.qlnxr_dev*, %struct.ib_qp_init_attr*, %struct.ib_udata*)* @qlnxr_check_qp_attrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlnxr_check_qp_attrs(%struct.ib_pd* %0, %struct.qlnxr_dev* %1, %struct.ib_qp_init_attr* %2, %struct.ib_udata* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_pd*, align 8
  %7 = alloca %struct.qlnxr_dev*, align 8
  %8 = alloca %struct.ib_qp_init_attr*, align 8
  %9 = alloca %struct.ib_udata*, align 8
  %10 = alloca %struct.ecore_rdma_device*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.qlnxr_cq*, align 8
  %13 = alloca %struct.qlnxr_cq*, align 8
  store %struct.ib_pd* %0, %struct.ib_pd** %6, align 8
  store %struct.qlnxr_dev* %1, %struct.qlnxr_dev** %7, align 8
  store %struct.ib_qp_init_attr* %2, %struct.ib_qp_init_attr** %8, align 8
  store %struct.ib_udata* %3, %struct.ib_udata** %9, align 8
  %14 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %7, align 8
  %15 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.ecore_rdma_device* @ecore_rdma_query_device(i32 %16)
  store %struct.ecore_rdma_device* %17, %struct.ecore_rdma_device** %10, align 8
  %18 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %7, align 8
  %19 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %11, align 8
  %21 = load i32*, i32** %11, align 8
  %22 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %23 = load i32*, i32** %11, align 8
  %24 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %25 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %24, i32 0, i32 8
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %23, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load i32*, i32** %11, align 8
  %29 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %30 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  %33 = load i32*, i32** %11, align 8
  %34 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %35 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %34, i32 0, i32 7
  %36 = load i32, i32* %35, align 8
  %37 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %36)
  %38 = load i32*, i32** %11, align 8
  %39 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %40 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %38, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %41)
  %43 = load i32*, i32** %11, align 8
  %44 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %45 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %43, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %46)
  %48 = load i32*, i32** %11, align 8
  %49 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %50 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %48, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %52)
  %54 = load i32*, i32** %11, align 8
  %55 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %56 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %54, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %58)
  %60 = load i32*, i32** %11, align 8
  %61 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %62 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %60, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 %64)
  %66 = load i32*, i32** %11, align 8
  %67 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %68 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %66, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i32 %70)
  %72 = load i32*, i32** %11, align 8
  %73 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %74 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %72, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0), i32 %76)
  %78 = load i32*, i32** %11, align 8
  %79 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %80 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %78, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0), i32 %82)
  %84 = load i32*, i32** %11, align 8
  %85 = load %struct.ecore_rdma_device*, %struct.ecore_rdma_device** %10, align 8
  %86 = getelementptr inbounds %struct.ecore_rdma_device, %struct.ecore_rdma_device* %85, i32 0, i32 33
  %87 = load i32, i32* %86, align 8
  %88 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %84, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i32 %87)
  %89 = load i32*, i32** %11, align 8
  %90 = load %struct.ecore_rdma_device*, %struct.ecore_rdma_device** %10, align 8
  %91 = getelementptr inbounds %struct.ecore_rdma_device, %struct.ecore_rdma_device* %90, i32 0, i32 32
  %92 = load i32, i32* %91, align 4
  %93 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %89, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0), i32 %92)
  %94 = load i32*, i32** %11, align 8
  %95 = load %struct.ecore_rdma_device*, %struct.ecore_rdma_device** %10, align 8
  %96 = getelementptr inbounds %struct.ecore_rdma_device, %struct.ecore_rdma_device* %95, i32 0, i32 31
  %97 = load i32, i32* %96, align 8
  %98 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %94, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i32 %97)
  %99 = load i32*, i32** %11, align 8
  %100 = load %struct.ecore_rdma_device*, %struct.ecore_rdma_device** %10, align 8
  %101 = getelementptr inbounds %struct.ecore_rdma_device, %struct.ecore_rdma_device* %100, i32 0, i32 30
  %102 = load i64, i64* %101, align 8
  %103 = inttoptr i64 %102 to i8*
  %104 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %99, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), i8* %103)
  %105 = load i32*, i32** %11, align 8
  %106 = load %struct.ecore_rdma_device*, %struct.ecore_rdma_device** %10, align 8
  %107 = getelementptr inbounds %struct.ecore_rdma_device, %struct.ecore_rdma_device* %106, i32 0, i32 29
  %108 = load i64, i64* %107, align 8
  %109 = inttoptr i64 %108 to i8*
  %110 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %105, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i8* %109)
  %111 = load i32*, i32** %11, align 8
  %112 = load %struct.ecore_rdma_device*, %struct.ecore_rdma_device** %10, align 8
  %113 = getelementptr inbounds %struct.ecore_rdma_device, %struct.ecore_rdma_device* %112, i32 0, i32 28
  %114 = load i64, i64* %113, align 8
  %115 = inttoptr i64 %114 to i8*
  %116 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %111, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0), i8* %115)
  %117 = load i32*, i32** %11, align 8
  %118 = load %struct.ecore_rdma_device*, %struct.ecore_rdma_device** %10, align 8
  %119 = getelementptr inbounds %struct.ecore_rdma_device, %struct.ecore_rdma_device* %118, i32 0, i32 27
  %120 = load i32, i32* %119, align 4
  %121 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %117, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0), i32 %120)
  %122 = load i32*, i32** %11, align 8
  %123 = load %struct.ecore_rdma_device*, %struct.ecore_rdma_device** %10, align 8
  %124 = getelementptr inbounds %struct.ecore_rdma_device, %struct.ecore_rdma_device* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %122, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0), i32 %125)
  %127 = load i32*, i32** %11, align 8
  %128 = load %struct.ecore_rdma_device*, %struct.ecore_rdma_device** %10, align 8
  %129 = getelementptr inbounds %struct.ecore_rdma_device, %struct.ecore_rdma_device* %128, i32 0, i32 26
  %130 = load i32, i32* %129, align 8
  %131 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %127, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i64 0, i64 0), i32 %130)
  %132 = load i32*, i32** %11, align 8
  %133 = load %struct.ecore_rdma_device*, %struct.ecore_rdma_device** %10, align 8
  %134 = getelementptr inbounds %struct.ecore_rdma_device, %struct.ecore_rdma_device* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %132, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i64 0, i64 0), i32 %135)
  %137 = load i32*, i32** %11, align 8
  %138 = load %struct.ecore_rdma_device*, %struct.ecore_rdma_device** %10, align 8
  %139 = getelementptr inbounds %struct.ecore_rdma_device, %struct.ecore_rdma_device* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %137, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 %140)
  %142 = load i32*, i32** %11, align 8
  %143 = load %struct.ecore_rdma_device*, %struct.ecore_rdma_device** %10, align 8
  %144 = getelementptr inbounds %struct.ecore_rdma_device, %struct.ecore_rdma_device* %143, i32 0, i32 25
  %145 = load i32, i32* %144, align 4
  %146 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %142, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i64 0, i64 0), i32 %145)
  %147 = load i32*, i32** %11, align 8
  %148 = load %struct.ecore_rdma_device*, %struct.ecore_rdma_device** %10, align 8
  %149 = getelementptr inbounds %struct.ecore_rdma_device, %struct.ecore_rdma_device* %148, i32 0, i32 24
  %150 = load i32, i32* %149, align 8
  %151 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %147, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.24, i64 0, i64 0), i32 %150)
  %152 = load i32*, i32** %11, align 8
  %153 = load %struct.ecore_rdma_device*, %struct.ecore_rdma_device** %10, align 8
  %154 = getelementptr inbounds %struct.ecore_rdma_device, %struct.ecore_rdma_device* %153, i32 0, i32 23
  %155 = load i32, i32* %154, align 4
  %156 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %152, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.25, i64 0, i64 0), i32 %155)
  %157 = load i32*, i32** %11, align 8
  %158 = load %struct.ecore_rdma_device*, %struct.ecore_rdma_device** %10, align 8
  %159 = getelementptr inbounds %struct.ecore_rdma_device, %struct.ecore_rdma_device* %158, i32 0, i32 22
  %160 = load i32, i32* %159, align 8
  %161 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %157, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.26, i64 0, i64 0), i32 %160)
  %162 = load i32*, i32** %11, align 8
  %163 = load %struct.ecore_rdma_device*, %struct.ecore_rdma_device** %10, align 8
  %164 = getelementptr inbounds %struct.ecore_rdma_device, %struct.ecore_rdma_device* %163, i32 0, i32 21
  %165 = load i32, i32* %164, align 4
  %166 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %162, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i64 0, i64 0), i32 %165)
  %167 = load i32*, i32** %11, align 8
  %168 = load %struct.ecore_rdma_device*, %struct.ecore_rdma_device** %10, align 8
  %169 = getelementptr inbounds %struct.ecore_rdma_device, %struct.ecore_rdma_device* %168, i32 0, i32 20
  %170 = load i32, i32* %169, align 8
  %171 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %167, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.28, i64 0, i64 0), i32 %170)
  %172 = load i32*, i32** %11, align 8
  %173 = load %struct.ecore_rdma_device*, %struct.ecore_rdma_device** %10, align 8
  %174 = getelementptr inbounds %struct.ecore_rdma_device, %struct.ecore_rdma_device* %173, i32 0, i32 19
  %175 = load i32, i32* %174, align 4
  %176 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %172, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0), i32 %175)
  %177 = load i32*, i32** %11, align 8
  %178 = load %struct.ecore_rdma_device*, %struct.ecore_rdma_device** %10, align 8
  %179 = getelementptr inbounds %struct.ecore_rdma_device, %struct.ecore_rdma_device* %178, i32 0, i32 18
  %180 = load i32, i32* %179, align 8
  %181 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %177, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.30, i64 0, i64 0), i32 %180)
  %182 = load i32*, i32** %11, align 8
  %183 = load %struct.ecore_rdma_device*, %struct.ecore_rdma_device** %10, align 8
  %184 = getelementptr inbounds %struct.ecore_rdma_device, %struct.ecore_rdma_device* %183, i32 0, i32 17
  %185 = load i64, i64* %184, align 8
  %186 = inttoptr i64 %185 to i8*
  %187 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %182, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.31, i64 0, i64 0), i8* %186)
  %188 = load i32*, i32** %11, align 8
  %189 = load %struct.ecore_rdma_device*, %struct.ecore_rdma_device** %10, align 8
  %190 = getelementptr inbounds %struct.ecore_rdma_device, %struct.ecore_rdma_device* %189, i32 0, i32 16
  %191 = load i32, i32* %190, align 4
  %192 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %188, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.32, i64 0, i64 0), i32 %191)
  %193 = load i32*, i32** %11, align 8
  %194 = load %struct.ecore_rdma_device*, %struct.ecore_rdma_device** %10, align 8
  %195 = getelementptr inbounds %struct.ecore_rdma_device, %struct.ecore_rdma_device* %194, i32 0, i32 15
  %196 = load i32, i32* %195, align 8
  %197 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %193, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.33, i64 0, i64 0), i32 %196)
  %198 = load i32*, i32** %11, align 8
  %199 = load %struct.ecore_rdma_device*, %struct.ecore_rdma_device** %10, align 8
  %200 = getelementptr inbounds %struct.ecore_rdma_device, %struct.ecore_rdma_device* %199, i32 0, i32 14
  %201 = load i32, i32* %200, align 4
  %202 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %198, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.34, i64 0, i64 0), i32 %201)
  %203 = load i32*, i32** %11, align 8
  %204 = load %struct.ecore_rdma_device*, %struct.ecore_rdma_device** %10, align 8
  %205 = getelementptr inbounds %struct.ecore_rdma_device, %struct.ecore_rdma_device* %204, i32 0, i32 13
  %206 = load i32, i32* %205, align 8
  %207 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %203, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.35, i64 0, i64 0), i32 %206)
  %208 = load i32*, i32** %11, align 8
  %209 = load %struct.ecore_rdma_device*, %struct.ecore_rdma_device** %10, align 8
  %210 = getelementptr inbounds %struct.ecore_rdma_device, %struct.ecore_rdma_device* %209, i32 0, i32 12
  %211 = load i64, i64* %210, align 8
  %212 = inttoptr i64 %211 to i8*
  %213 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %208, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.36, i64 0, i64 0), i8* %212)
  %214 = load i32*, i32** %11, align 8
  %215 = load %struct.ecore_rdma_device*, %struct.ecore_rdma_device** %10, align 8
  %216 = getelementptr inbounds %struct.ecore_rdma_device, %struct.ecore_rdma_device* %215, i32 0, i32 11
  %217 = load i32, i32* %216, align 8
  %218 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %214, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.37, i64 0, i64 0), i32 %217)
  %219 = load i32*, i32** %11, align 8
  %220 = load %struct.ecore_rdma_device*, %struct.ecore_rdma_device** %10, align 8
  %221 = getelementptr inbounds %struct.ecore_rdma_device, %struct.ecore_rdma_device* %220, i32 0, i32 10
  %222 = load i32, i32* %221, align 4
  %223 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %219, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.38, i64 0, i64 0), i32 %222)
  %224 = load i32*, i32** %11, align 8
  %225 = load %struct.ecore_rdma_device*, %struct.ecore_rdma_device** %10, align 8
  %226 = getelementptr inbounds %struct.ecore_rdma_device, %struct.ecore_rdma_device* %225, i32 0, i32 9
  %227 = load i32, i32* %226, align 8
  %228 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %224, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.39, i64 0, i64 0), i32 %227)
  %229 = load i32*, i32** %11, align 8
  %230 = load %struct.ecore_rdma_device*, %struct.ecore_rdma_device** %10, align 8
  %231 = getelementptr inbounds %struct.ecore_rdma_device, %struct.ecore_rdma_device* %230, i32 0, i32 8
  %232 = load i32, i32* %231, align 4
  %233 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %229, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.40, i64 0, i64 0), i32 %232)
  %234 = load i32*, i32** %11, align 8
  %235 = load %struct.ecore_rdma_device*, %struct.ecore_rdma_device** %10, align 8
  %236 = getelementptr inbounds %struct.ecore_rdma_device, %struct.ecore_rdma_device* %235, i32 0, i32 7
  %237 = load i32, i32* %236, align 8
  %238 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %234, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.41, i64 0, i64 0), i32 %237)
  %239 = load i32*, i32** %11, align 8
  %240 = load %struct.ecore_rdma_device*, %struct.ecore_rdma_device** %10, align 8
  %241 = getelementptr inbounds %struct.ecore_rdma_device, %struct.ecore_rdma_device* %240, i32 0, i32 6
  %242 = load i64, i64* %241, align 8
  %243 = inttoptr i64 %242 to i8*
  %244 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %239, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.42, i64 0, i64 0), i8* %243)
  %245 = load i32*, i32** %11, align 8
  %246 = load %struct.ecore_rdma_device*, %struct.ecore_rdma_device** %10, align 8
  %247 = getelementptr inbounds %struct.ecore_rdma_device, %struct.ecore_rdma_device* %246, i32 0, i32 5
  %248 = load i32, i32* %247, align 4
  %249 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %245, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.43, i64 0, i64 0), i32 %248)
  %250 = load i32*, i32** %11, align 8
  %251 = load %struct.ecore_rdma_device*, %struct.ecore_rdma_device** %10, align 8
  %252 = getelementptr inbounds %struct.ecore_rdma_device, %struct.ecore_rdma_device* %251, i32 0, i32 4
  %253 = load i32, i32* %252, align 8
  %254 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %250, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.44, i64 0, i64 0), i32 %253)
  %255 = load i32*, i32** %11, align 8
  %256 = load %struct.ecore_rdma_device*, %struct.ecore_rdma_device** %10, align 8
  %257 = getelementptr inbounds %struct.ecore_rdma_device, %struct.ecore_rdma_device* %256, i32 0, i32 3
  %258 = load i32, i32* %257, align 4
  %259 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %255, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.45, i64 0, i64 0), i32 %258)
  %260 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %261 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 8
  %263 = load i32, i32* @IB_QPT_GSI, align 4
  %264 = icmp eq i32 %262, %263
  br i1 %264, label %265, label %273

265:                                              ; preds = %4
  %266 = load %struct.ib_udata*, %struct.ib_udata** %9, align 8
  %267 = icmp ne %struct.ib_udata* %266, null
  br i1 %267, label %268, label %273

268:                                              ; preds = %265
  %269 = load i32*, i32** %11, align 8
  %270 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %269, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.46, i64 0, i64 0))
  %271 = load i32, i32* @EINVAL, align 4
  %272 = sub nsw i32 0, %271
  store i32 %272, i32* %5, align 4
  br label %514

273:                                              ; preds = %265, %4
  %274 = load %struct.ib_udata*, %struct.ib_udata** %9, align 8
  %275 = icmp ne %struct.ib_udata* %274, null
  br i1 %275, label %276, label %293

276:                                              ; preds = %273
  %277 = load %struct.ib_pd*, %struct.ib_pd** %6, align 8
  %278 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %277, i32 0, i32 0
  %279 = load %struct.TYPE_3__*, %struct.TYPE_3__** %278, align 8
  %280 = icmp ne %struct.TYPE_3__* %279, null
  br i1 %280, label %281, label %288

281:                                              ; preds = %276
  %282 = load %struct.ib_pd*, %struct.ib_pd** %6, align 8
  %283 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %282, i32 0, i32 0
  %284 = load %struct.TYPE_3__*, %struct.TYPE_3__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %284, i32 0, i32 0
  %286 = load i64, i64* %285, align 8
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %293, label %288

288:                                              ; preds = %281, %276
  %289 = load i32*, i32** %11, align 8
  %290 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %289, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.47, i64 0, i64 0))
  %291 = load i32, i32* @EINVAL, align 4
  %292 = sub nsw i32 0, %291
  store i32 %292, i32* %5, align 4
  br label %514

293:                                              ; preds = %281, %273
  %294 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %295 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %294, i32 0, i32 2
  %296 = load i32, i32* %295, align 8
  %297 = load i32, i32* @IB_QPT_RC, align 4
  %298 = icmp ne i32 %296, %297
  br i1 %298, label %299, label %313

299:                                              ; preds = %293
  %300 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %301 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %300, i32 0, i32 2
  %302 = load i32, i32* %301, align 8
  %303 = load i32, i32* @IB_QPT_GSI, align 4
  %304 = icmp ne i32 %302, %303
  br i1 %304, label %305, label %313

305:                                              ; preds = %299
  %306 = load i32*, i32** %11, align 8
  %307 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %308 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %307, i32 0, i32 2
  %309 = load i32, i32* %308, align 8
  %310 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %306, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.48, i64 0, i64 0), i32 %309)
  %311 = load i32, i32* @EINVAL, align 4
  %312 = sub nsw i32 0, %311
  store i32 %312, i32* %5, align 4
  br label %514

313:                                              ; preds = %299, %293
  %314 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %315 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %314, i32 0, i32 2
  %316 = load i32, i32* %315, align 8
  %317 = load i32, i32* @IB_QPT_GSI, align 4
  %318 = icmp eq i32 %316, %317
  br i1 %318, label %319, label %329

319:                                              ; preds = %313
  %320 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %321 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %320, i32 0, i32 4
  %322 = load i64, i64* %321, align 8
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %324, label %329

324:                                              ; preds = %319
  %325 = load i32*, i32** %11, align 8
  %326 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %325, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.49, i64 0, i64 0))
  %327 = load i32, i32* @EINVAL, align 4
  %328 = sub nsw i32 0, %327
  store i32 %328, i32* %5, align 4
  br label %514

329:                                              ; preds = %319, %313
  %330 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %331 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %330, i32 0, i32 3
  %332 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %331, i32 0, i32 4
  %333 = load i32, i32* %332, align 4
  %334 = load %struct.ecore_rdma_device*, %struct.ecore_rdma_device** %10, align 8
  %335 = getelementptr inbounds %struct.ecore_rdma_device, %struct.ecore_rdma_device* %334, i32 0, i32 2
  %336 = load i32, i32* %335, align 8
  %337 = icmp sgt i32 %333, %336
  br i1 %337, label %338, label %350

338:                                              ; preds = %329
  %339 = load i32*, i32** %11, align 8
  %340 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %341 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %340, i32 0, i32 3
  %342 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %341, i32 0, i32 4
  %343 = load i32, i32* %342, align 4
  %344 = load %struct.ecore_rdma_device*, %struct.ecore_rdma_device** %10, align 8
  %345 = getelementptr inbounds %struct.ecore_rdma_device, %struct.ecore_rdma_device* %344, i32 0, i32 2
  %346 = load i32, i32* %345, align 8
  %347 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %339, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.50, i64 0, i64 0), i32 %343, i32 %346)
  %348 = load i32, i32* @EINVAL, align 4
  %349 = sub nsw i32 0, %348
  store i32 %349, i32* %5, align 4
  br label %514

350:                                              ; preds = %329
  %351 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %352 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %351, i32 0, i32 4
  %353 = load i64, i64* %352, align 8
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %376, label %355

355:                                              ; preds = %350
  %356 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %357 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %356, i32 0, i32 3
  %358 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %357, i32 0, i32 3
  %359 = load i32, i32* %358, align 4
  %360 = load %struct.ecore_rdma_device*, %struct.ecore_rdma_device** %10, align 8
  %361 = getelementptr inbounds %struct.ecore_rdma_device, %struct.ecore_rdma_device* %360, i32 0, i32 2
  %362 = load i32, i32* %361, align 8
  %363 = icmp sgt i32 %359, %362
  br i1 %363, label %364, label %376

364:                                              ; preds = %355
  %365 = load i32*, i32** %11, align 8
  %366 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %367 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %366, i32 0, i32 3
  %368 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %367, i32 0, i32 3
  %369 = load i32, i32* %368, align 4
  %370 = load %struct.ecore_rdma_device*, %struct.ecore_rdma_device** %10, align 8
  %371 = getelementptr inbounds %struct.ecore_rdma_device, %struct.ecore_rdma_device* %370, i32 0, i32 2
  %372 = load i32, i32* %371, align 8
  %373 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %365, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.51, i64 0, i64 0), i32 %369, i32 %372)
  %374 = load i32, i32* @EINVAL, align 4
  %375 = sub nsw i32 0, %374
  store i32 %375, i32* %5, align 4
  br label %514

376:                                              ; preds = %355, %350
  %377 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %378 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %377, i32 0, i32 3
  %379 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %378, i32 0, i32 2
  %380 = load i32, i32* %379, align 4
  %381 = load %struct.ecore_rdma_device*, %struct.ecore_rdma_device** %10, align 8
  %382 = getelementptr inbounds %struct.ecore_rdma_device, %struct.ecore_rdma_device* %381, i32 0, i32 1
  %383 = load i32, i32* %382, align 4
  %384 = icmp sgt i32 %380, %383
  br i1 %384, label %385, label %397

385:                                              ; preds = %376
  %386 = load i32*, i32** %11, align 8
  %387 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %388 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %387, i32 0, i32 3
  %389 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %388, i32 0, i32 2
  %390 = load i32, i32* %389, align 4
  %391 = load %struct.ecore_rdma_device*, %struct.ecore_rdma_device** %10, align 8
  %392 = getelementptr inbounds %struct.ecore_rdma_device, %struct.ecore_rdma_device* %391, i32 0, i32 1
  %393 = load i32, i32* %392, align 4
  %394 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %386, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.52, i64 0, i64 0), i32 %390, i32 %393)
  %395 = load i32, i32* @EINVAL, align 4
  %396 = sub nsw i32 0, %395
  store i32 %396, i32* %5, align 4
  br label %514

397:                                              ; preds = %376
  %398 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %399 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %398, i32 0, i32 3
  %400 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %399, i32 0, i32 1
  %401 = load i32, i32* %400, align 4
  %402 = load %struct.ecore_rdma_device*, %struct.ecore_rdma_device** %10, align 8
  %403 = getelementptr inbounds %struct.ecore_rdma_device, %struct.ecore_rdma_device* %402, i32 0, i32 0
  %404 = load i32, i32* %403, align 8
  %405 = icmp sgt i32 %401, %404
  br i1 %405, label %406, label %418

406:                                              ; preds = %397
  %407 = load i32*, i32** %11, align 8
  %408 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %409 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %408, i32 0, i32 3
  %410 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %409, i32 0, i32 1
  %411 = load i32, i32* %410, align 4
  %412 = load %struct.ecore_rdma_device*, %struct.ecore_rdma_device** %10, align 8
  %413 = getelementptr inbounds %struct.ecore_rdma_device, %struct.ecore_rdma_device* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 8
  %415 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %407, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.53, i64 0, i64 0), i32 %411, i32 %414)
  %416 = load i32, i32* @EINVAL, align 4
  %417 = sub nsw i32 0, %416
  store i32 %417, i32* %5, align 4
  br label %514

418:                                              ; preds = %397
  %419 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %420 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %419, i32 0, i32 3
  %421 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %420, i32 0, i32 0
  %422 = load i32, i32* %421, align 4
  %423 = load %struct.ecore_rdma_device*, %struct.ecore_rdma_device** %10, align 8
  %424 = getelementptr inbounds %struct.ecore_rdma_device, %struct.ecore_rdma_device* %423, i32 0, i32 0
  %425 = load i32, i32* %424, align 8
  %426 = icmp sgt i32 %422, %425
  br i1 %426, label %427, label %439

427:                                              ; preds = %418
  %428 = load i32*, i32** %11, align 8
  %429 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %430 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %429, i32 0, i32 3
  %431 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %430, i32 0, i32 0
  %432 = load i32, i32* %431, align 4
  %433 = load %struct.ecore_rdma_device*, %struct.ecore_rdma_device** %10, align 8
  %434 = getelementptr inbounds %struct.ecore_rdma_device, %struct.ecore_rdma_device* %433, i32 0, i32 0
  %435 = load i32, i32* %434, align 8
  %436 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %428, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.54, i64 0, i64 0), i32 %432, i32 %435)
  %437 = load i32, i32* @EINVAL, align 4
  %438 = sub nsw i32 0, %437
  store i32 %438, i32* %5, align 4
  br label %514

439:                                              ; preds = %418
  %440 = load %struct.ib_pd*, %struct.ib_pd** %6, align 8
  %441 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %440, i32 0, i32 0
  %442 = load %struct.TYPE_3__*, %struct.TYPE_3__** %441, align 8
  %443 = icmp ne %struct.TYPE_3__* %442, null
  br i1 %443, label %444, label %458

444:                                              ; preds = %439
  %445 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %446 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %445, i32 0, i32 2
  %447 = load i32, i32* %446, align 8
  %448 = load i32, i32* @IB_QPT_GSI, align 4
  %449 = icmp eq i32 %447, %448
  br i1 %449, label %450, label %458

450:                                              ; preds = %444
  %451 = load i32*, i32** %11, align 8
  %452 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %453 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %452, i32 0, i32 2
  %454 = load i32, i32* %453, align 8
  %455 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %451, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.55, i64 0, i64 0), i32 %454)
  %456 = load i32, i32* @EINVAL, align 4
  %457 = sub nsw i32 0, %456
  store i32 %457, i32* %5, align 4
  br label %514

458:                                              ; preds = %444, %439
  %459 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %460 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %459, i32 0, i32 2
  %461 = load i32, i32* %460, align 8
  %462 = load i32, i32* @IB_QPT_GSI, align 4
  %463 = icmp eq i32 %461, %462
  br i1 %463, label %464, label %474

464:                                              ; preds = %458
  %465 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %7, align 8
  %466 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %465, i32 0, i32 0
  %467 = load i64, i64* %466, align 8
  %468 = icmp ne i64 %467, 0
  br i1 %468, label %469, label %474

469:                                              ; preds = %464
  %470 = load i32*, i32** %11, align 8
  %471 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %470, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.56, i64 0, i64 0))
  %472 = load i32, i32* @EINVAL, align 4
  %473 = sub nsw i32 0, %472
  store i32 %473, i32* %5, align 4
  br label %514

474:                                              ; preds = %464, %458
  %475 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %476 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %475, i32 0, i32 2
  %477 = load i32, i32* %476, align 8
  %478 = load i32, i32* @IB_QPT_GSI, align 4
  %479 = icmp ne i32 %477, %478
  br i1 %479, label %480, label %511

480:                                              ; preds = %474
  %481 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %7, align 8
  %482 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %481, i32 0, i32 0
  %483 = load i64, i64* %482, align 8
  %484 = icmp ne i64 %483, 0
  br i1 %484, label %485, label %511

485:                                              ; preds = %480
  %486 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %487 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %486, i32 0, i32 1
  %488 = load i32, i32* %487, align 4
  %489 = call %struct.qlnxr_cq* @get_qlnxr_cq(i32 %488)
  store %struct.qlnxr_cq* %489, %struct.qlnxr_cq** %12, align 8
  %490 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %491 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %490, i32 0, i32 0
  %492 = load i32, i32* %491, align 8
  %493 = call %struct.qlnxr_cq* @get_qlnxr_cq(i32 %492)
  store %struct.qlnxr_cq* %493, %struct.qlnxr_cq** %13, align 8
  %494 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %12, align 8
  %495 = getelementptr inbounds %struct.qlnxr_cq, %struct.qlnxr_cq* %494, i32 0, i32 0
  %496 = load i64, i64* %495, align 8
  %497 = load i64, i64* @QLNXR_CQ_TYPE_GSI, align 8
  %498 = icmp eq i64 %496, %497
  br i1 %498, label %505, label %499

499:                                              ; preds = %485
  %500 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %13, align 8
  %501 = getelementptr inbounds %struct.qlnxr_cq, %struct.qlnxr_cq* %500, i32 0, i32 0
  %502 = load i64, i64* %501, align 8
  %503 = load i64, i64* @QLNXR_CQ_TYPE_GSI, align 8
  %504 = icmp eq i64 %502, %503
  br i1 %504, label %505, label %510

505:                                              ; preds = %499, %485
  %506 = load i32*, i32** %11, align 8
  %507 = call i32 @QL_DPRINT11(i32* %506, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.57, i64 0, i64 0))
  %508 = load i32, i32* @EINVAL, align 4
  %509 = sub nsw i32 0, %508
  store i32 %509, i32* %5, align 4
  br label %514

510:                                              ; preds = %499
  br label %511

511:                                              ; preds = %510, %480, %474
  %512 = load i32*, i32** %11, align 8
  %513 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %512, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %514

514:                                              ; preds = %511, %505, %469, %450, %427, %406, %385, %364, %338, %324, %305, %288, %268
  %515 = load i32, i32* %5, align 4
  ret i32 %515
}

declare dso_local %struct.ecore_rdma_device* @ecore_rdma_query_device(i32) #1

declare dso_local i32 @QL_DPRINT12(i32*, i8*, ...) #1

declare dso_local %struct.qlnxr_cq* @get_qlnxr_cq(i32) #1

declare dso_local i32 @QL_DPRINT11(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
