; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_provider.c_mthca_register_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_provider.c_mthca_register_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { i32, %struct.TYPE_7__, i32, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"mthca%d\00", align 1
@IB_DEVICE_NAME_MAX = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@MTHCA_UVERBS_ABI_VERSION = common dso_local global i32 0, align 4
@IB_USER_VERBS_CMD_GET_CONTEXT = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_QUERY_DEVICE = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_QUERY_PORT = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_ALLOC_PD = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_DEALLOC_PD = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_REG_MR = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_DEREG_MR = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_CREATE_COMP_CHANNEL = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_CREATE_CQ = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_RESIZE_CQ = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_DESTROY_CQ = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_CREATE_QP = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_QUERY_QP = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_MODIFY_QP = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_DESTROY_QP = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_ATTACH_MCAST = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_DETACH_MCAST = common dso_local global i64 0, align 8
@RDMA_NODE_IB_CA = common dso_local global i32 0, align 4
@mthca_query_device = common dso_local global i32 0, align 4
@mthca_query_port = common dso_local global i32 0, align 4
@mthca_modify_device = common dso_local global i32 0, align 4
@mthca_modify_port = common dso_local global i32 0, align 4
@mthca_query_pkey = common dso_local global i32 0, align 4
@mthca_query_gid = common dso_local global i32 0, align 4
@mthca_alloc_ucontext = common dso_local global i32 0, align 4
@mthca_dealloc_ucontext = common dso_local global i32 0, align 4
@mthca_mmap_uar = common dso_local global i32 0, align 4
@mthca_alloc_pd = common dso_local global i32 0, align 4
@mthca_dealloc_pd = common dso_local global i32 0, align 4
@mthca_ah_create = common dso_local global i32 0, align 4
@mthca_ah_query = common dso_local global i32 0, align 4
@mthca_ah_destroy = common dso_local global i32 0, align 4
@MTHCA_FLAG_SRQ = common dso_local global i32 0, align 4
@mthca_create_srq = common dso_local global i32 0, align 4
@mthca_modify_srq = common dso_local global i32 0, align 4
@mthca_query_srq = common dso_local global i32 0, align 4
@mthca_destroy_srq = common dso_local global i32 0, align 4
@IB_USER_VERBS_CMD_CREATE_SRQ = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_MODIFY_SRQ = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_QUERY_SRQ = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_DESTROY_SRQ = common dso_local global i64 0, align 8
@mthca_arbel_post_srq_recv = common dso_local global i32 0, align 4
@mthca_tavor_post_srq_recv = common dso_local global i32 0, align 4
@mthca_create_qp = common dso_local global i32 0, align 4
@mthca_modify_qp = common dso_local global i32 0, align 4
@mthca_query_qp = common dso_local global i32 0, align 4
@mthca_destroy_qp = common dso_local global i32 0, align 4
@mthca_create_cq = common dso_local global i32 0, align 4
@mthca_resize_cq = common dso_local global i32 0, align 4
@mthca_destroy_cq = common dso_local global i32 0, align 4
@mthca_poll_cq = common dso_local global i32 0, align 4
@mthca_get_dma_mr = common dso_local global i32 0, align 4
@mthca_reg_user_mr = common dso_local global i32 0, align 4
@mthca_dereg_mr = common dso_local global i32 0, align 4
@mthca_port_immutable = common dso_local global i32 0, align 4
@get_dev_fw_str = common dso_local global i32 0, align 4
@MTHCA_FLAG_FMR = common dso_local global i32 0, align 4
@mthca_alloc_fmr = common dso_local global i32 0, align 4
@mthca_unmap_fmr = common dso_local global i32 0, align 4
@mthca_dealloc_fmr = common dso_local global i32 0, align 4
@mthca_arbel_map_phys_fmr = common dso_local global i32 0, align 4
@mthca_tavor_map_phys_fmr = common dso_local global i32 0, align 4
@mthca_multicast_attach = common dso_local global i32 0, align 4
@mthca_multicast_detach = common dso_local global i32 0, align 4
@mthca_process_mad = common dso_local global i32 0, align 4
@mthca_arbel_arm_cq = common dso_local global i32 0, align 4
@mthca_arbel_post_send = common dso_local global i32 0, align 4
@mthca_arbel_post_receive = common dso_local global i32 0, align 4
@mthca_tavor_arm_cq = common dso_local global i32 0, align 4
@mthca_tavor_post_send = common dso_local global i32 0, align 4
@mthca_tavor_post_receive = common dso_local global i32 0, align 4
@mthca_dev_attributes = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mthca_register_device(%struct.mthca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mthca_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %3, align 8
  %6 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %7 = call i32 @mthca_init_node_data(%struct.mthca_dev* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %379

12:                                               ; preds = %1
  %13 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %14 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 50
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @IB_DEVICE_NAME_MAX, align 4
  %18 = call i32 @strlcpy(i32 %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @THIS_MODULE, align 4
  %20 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %21 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 49
  store i32 %19, i32* %22, align 4
  %23 = load i32, i32* @MTHCA_UVERBS_ABI_VERSION, align 4
  %24 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %25 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 48
  store i32 %23, i32* %26, align 8
  %27 = load i64, i64* @IB_USER_VERBS_CMD_GET_CONTEXT, align 8
  %28 = shl i64 1, %27
  %29 = load i64, i64* @IB_USER_VERBS_CMD_QUERY_DEVICE, align 8
  %30 = shl i64 1, %29
  %31 = or i64 %28, %30
  %32 = load i64, i64* @IB_USER_VERBS_CMD_QUERY_PORT, align 8
  %33 = shl i64 1, %32
  %34 = or i64 %31, %33
  %35 = load i64, i64* @IB_USER_VERBS_CMD_ALLOC_PD, align 8
  %36 = shl i64 1, %35
  %37 = or i64 %34, %36
  %38 = load i64, i64* @IB_USER_VERBS_CMD_DEALLOC_PD, align 8
  %39 = shl i64 1, %38
  %40 = or i64 %37, %39
  %41 = load i64, i64* @IB_USER_VERBS_CMD_REG_MR, align 8
  %42 = shl i64 1, %41
  %43 = or i64 %40, %42
  %44 = load i64, i64* @IB_USER_VERBS_CMD_DEREG_MR, align 8
  %45 = shl i64 1, %44
  %46 = or i64 %43, %45
  %47 = load i64, i64* @IB_USER_VERBS_CMD_CREATE_COMP_CHANNEL, align 8
  %48 = shl i64 1, %47
  %49 = or i64 %46, %48
  %50 = load i64, i64* @IB_USER_VERBS_CMD_CREATE_CQ, align 8
  %51 = shl i64 1, %50
  %52 = or i64 %49, %51
  %53 = load i64, i64* @IB_USER_VERBS_CMD_RESIZE_CQ, align 8
  %54 = shl i64 1, %53
  %55 = or i64 %52, %54
  %56 = load i64, i64* @IB_USER_VERBS_CMD_DESTROY_CQ, align 8
  %57 = shl i64 1, %56
  %58 = or i64 %55, %57
  %59 = load i64, i64* @IB_USER_VERBS_CMD_CREATE_QP, align 8
  %60 = shl i64 1, %59
  %61 = or i64 %58, %60
  %62 = load i64, i64* @IB_USER_VERBS_CMD_QUERY_QP, align 8
  %63 = shl i64 1, %62
  %64 = or i64 %61, %63
  %65 = load i64, i64* @IB_USER_VERBS_CMD_MODIFY_QP, align 8
  %66 = shl i64 1, %65
  %67 = or i64 %64, %66
  %68 = load i64, i64* @IB_USER_VERBS_CMD_DESTROY_QP, align 8
  %69 = shl i64 1, %68
  %70 = or i64 %67, %69
  %71 = load i64, i64* @IB_USER_VERBS_CMD_ATTACH_MCAST, align 8
  %72 = shl i64 1, %71
  %73 = or i64 %70, %72
  %74 = load i64, i64* @IB_USER_VERBS_CMD_DETACH_MCAST, align 8
  %75 = shl i64 1, %74
  %76 = or i64 %73, %75
  %77 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %78 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  store i64 %76, i64* %79, align 8
  %80 = load i32, i32* @RDMA_NODE_IB_CA, align 4
  %81 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %82 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 47
  store i32 %80, i32* %83, align 4
  %84 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %85 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %89 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 46
  store i32 %87, i32* %90, align 8
  %91 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %92 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  store i32 1, i32* %93, align 8
  %94 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %95 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %94, i32 0, i32 3
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %99 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 45
  store i32* %97, i32** %100, align 8
  %101 = load i32, i32* @mthca_query_device, align 4
  %102 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %103 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 44
  store i32 %101, i32* %104, align 4
  %105 = load i32, i32* @mthca_query_port, align 4
  %106 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %107 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 43
  store i32 %105, i32* %108, align 8
  %109 = load i32, i32* @mthca_modify_device, align 4
  %110 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %111 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 42
  store i32 %109, i32* %112, align 4
  %113 = load i32, i32* @mthca_modify_port, align 4
  %114 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %115 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 41
  store i32 %113, i32* %116, align 8
  %117 = load i32, i32* @mthca_query_pkey, align 4
  %118 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %119 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 40
  store i32 %117, i32* %120, align 4
  %121 = load i32, i32* @mthca_query_gid, align 4
  %122 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %123 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 39
  store i32 %121, i32* %124, align 8
  %125 = load i32, i32* @mthca_alloc_ucontext, align 4
  %126 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %127 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 38
  store i32 %125, i32* %128, align 4
  %129 = load i32, i32* @mthca_dealloc_ucontext, align 4
  %130 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %131 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 37
  store i32 %129, i32* %132, align 8
  %133 = load i32, i32* @mthca_mmap_uar, align 4
  %134 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %135 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 36
  store i32 %133, i32* %136, align 4
  %137 = load i32, i32* @mthca_alloc_pd, align 4
  %138 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %139 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 35
  store i32 %137, i32* %140, align 8
  %141 = load i32, i32* @mthca_dealloc_pd, align 4
  %142 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %143 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 34
  store i32 %141, i32* %144, align 4
  %145 = load i32, i32* @mthca_ah_create, align 4
  %146 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %147 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 33
  store i32 %145, i32* %148, align 8
  %149 = load i32, i32* @mthca_ah_query, align 4
  %150 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %151 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 32
  store i32 %149, i32* %152, align 4
  %153 = load i32, i32* @mthca_ah_destroy, align 4
  %154 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %155 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 31
  store i32 %153, i32* %156, align 8
  %157 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %158 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @MTHCA_FLAG_SRQ, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %210

163:                                              ; preds = %12
  %164 = load i32, i32* @mthca_create_srq, align 4
  %165 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %166 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 30
  store i32 %164, i32* %167, align 4
  %168 = load i32, i32* @mthca_modify_srq, align 4
  %169 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %170 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 29
  store i32 %168, i32* %171, align 8
  %172 = load i32, i32* @mthca_query_srq, align 4
  %173 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %174 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 28
  store i32 %172, i32* %175, align 4
  %176 = load i32, i32* @mthca_destroy_srq, align 4
  %177 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %178 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 27
  store i32 %176, i32* %179, align 8
  %180 = load i64, i64* @IB_USER_VERBS_CMD_CREATE_SRQ, align 8
  %181 = shl i64 1, %180
  %182 = load i64, i64* @IB_USER_VERBS_CMD_MODIFY_SRQ, align 8
  %183 = shl i64 1, %182
  %184 = or i64 %181, %183
  %185 = load i64, i64* @IB_USER_VERBS_CMD_QUERY_SRQ, align 8
  %186 = shl i64 1, %185
  %187 = or i64 %184, %186
  %188 = load i64, i64* @IB_USER_VERBS_CMD_DESTROY_SRQ, align 8
  %189 = shl i64 1, %188
  %190 = or i64 %187, %189
  %191 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %192 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = or i64 %194, %190
  store i64 %195, i64* %193, align 8
  %196 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %197 = call i64 @mthca_is_memfree(%struct.mthca_dev* %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %204

199:                                              ; preds = %163
  %200 = load i32, i32* @mthca_arbel_post_srq_recv, align 4
  %201 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %202 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 26
  store i32 %200, i32* %203, align 4
  br label %209

204:                                              ; preds = %163
  %205 = load i32, i32* @mthca_tavor_post_srq_recv, align 4
  %206 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %207 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 26
  store i32 %205, i32* %208, align 4
  br label %209

209:                                              ; preds = %204, %199
  br label %210

210:                                              ; preds = %209, %12
  %211 = load i32, i32* @mthca_create_qp, align 4
  %212 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %213 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 25
  store i32 %211, i32* %214, align 8
  %215 = load i32, i32* @mthca_modify_qp, align 4
  %216 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %217 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 24
  store i32 %215, i32* %218, align 4
  %219 = load i32, i32* @mthca_query_qp, align 4
  %220 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %221 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 23
  store i32 %219, i32* %222, align 8
  %223 = load i32, i32* @mthca_destroy_qp, align 4
  %224 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %225 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i32 0, i32 22
  store i32 %223, i32* %226, align 4
  %227 = load i32, i32* @mthca_create_cq, align 4
  %228 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %229 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i32 0, i32 21
  store i32 %227, i32* %230, align 8
  %231 = load i32, i32* @mthca_resize_cq, align 4
  %232 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %233 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %233, i32 0, i32 20
  store i32 %231, i32* %234, align 4
  %235 = load i32, i32* @mthca_destroy_cq, align 4
  %236 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %237 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i32 0, i32 19
  store i32 %235, i32* %238, align 8
  %239 = load i32, i32* @mthca_poll_cq, align 4
  %240 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %241 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %241, i32 0, i32 18
  store i32 %239, i32* %242, align 4
  %243 = load i32, i32* @mthca_get_dma_mr, align 4
  %244 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %245 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i32 0, i32 17
  store i32 %243, i32* %246, align 8
  %247 = load i32, i32* @mthca_reg_user_mr, align 4
  %248 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %249 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %249, i32 0, i32 16
  store i32 %247, i32* %250, align 4
  %251 = load i32, i32* @mthca_dereg_mr, align 4
  %252 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %253 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %252, i32 0, i32 1
  %254 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %253, i32 0, i32 15
  store i32 %251, i32* %254, align 8
  %255 = load i32, i32* @mthca_port_immutable, align 4
  %256 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %257 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %257, i32 0, i32 14
  store i32 %255, i32* %258, align 4
  %259 = load i32, i32* @get_dev_fw_str, align 4
  %260 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %261 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %261, i32 0, i32 13
  store i32 %259, i32* %262, align 8
  %263 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %264 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = load i32, i32* @MTHCA_FLAG_FMR, align 4
  %267 = and i32 %265, %266
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %296

269:                                              ; preds = %210
  %270 = load i32, i32* @mthca_alloc_fmr, align 4
  %271 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %272 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %271, i32 0, i32 1
  %273 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %272, i32 0, i32 12
  store i32 %270, i32* %273, align 4
  %274 = load i32, i32* @mthca_unmap_fmr, align 4
  %275 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %276 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %275, i32 0, i32 1
  %277 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %276, i32 0, i32 11
  store i32 %274, i32* %277, align 8
  %278 = load i32, i32* @mthca_dealloc_fmr, align 4
  %279 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %280 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %279, i32 0, i32 1
  %281 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %280, i32 0, i32 10
  store i32 %278, i32* %281, align 4
  %282 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %283 = call i64 @mthca_is_memfree(%struct.mthca_dev* %282)
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %290

285:                                              ; preds = %269
  %286 = load i32, i32* @mthca_arbel_map_phys_fmr, align 4
  %287 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %288 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %287, i32 0, i32 1
  %289 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %288, i32 0, i32 9
  store i32 %286, i32* %289, align 8
  br label %295

290:                                              ; preds = %269
  %291 = load i32, i32* @mthca_tavor_map_phys_fmr, align 4
  %292 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %293 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %292, i32 0, i32 1
  %294 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %293, i32 0, i32 9
  store i32 %291, i32* %294, align 8
  br label %295

295:                                              ; preds = %290, %285
  br label %296

296:                                              ; preds = %295, %210
  %297 = load i32, i32* @mthca_multicast_attach, align 4
  %298 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %299 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %298, i32 0, i32 1
  %300 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %299, i32 0, i32 8
  store i32 %297, i32* %300, align 4
  %301 = load i32, i32* @mthca_multicast_detach, align 4
  %302 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %303 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %302, i32 0, i32 1
  %304 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %303, i32 0, i32 7
  store i32 %301, i32* %304, align 8
  %305 = load i32, i32* @mthca_process_mad, align 4
  %306 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %307 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %306, i32 0, i32 1
  %308 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %307, i32 0, i32 6
  store i32 %305, i32* %308, align 4
  %309 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %310 = call i64 @mthca_is_memfree(%struct.mthca_dev* %309)
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %325

312:                                              ; preds = %296
  %313 = load i32, i32* @mthca_arbel_arm_cq, align 4
  %314 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %315 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %314, i32 0, i32 1
  %316 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %315, i32 0, i32 5
  store i32 %313, i32* %316, align 8
  %317 = load i32, i32* @mthca_arbel_post_send, align 4
  %318 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %319 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %318, i32 0, i32 1
  %320 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %319, i32 0, i32 4
  store i32 %317, i32* %320, align 4
  %321 = load i32, i32* @mthca_arbel_post_receive, align 4
  %322 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %323 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %322, i32 0, i32 1
  %324 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %323, i32 0, i32 3
  store i32 %321, i32* %324, align 8
  br label %338

325:                                              ; preds = %296
  %326 = load i32, i32* @mthca_tavor_arm_cq, align 4
  %327 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %328 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %327, i32 0, i32 1
  %329 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %328, i32 0, i32 5
  store i32 %326, i32* %329, align 8
  %330 = load i32, i32* @mthca_tavor_post_send, align 4
  %331 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %332 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %331, i32 0, i32 1
  %333 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %332, i32 0, i32 4
  store i32 %330, i32* %333, align 4
  %334 = load i32, i32* @mthca_tavor_post_receive, align 4
  %335 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %336 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %335, i32 0, i32 1
  %337 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %336, i32 0, i32 3
  store i32 %334, i32* %337, align 8
  br label %338

338:                                              ; preds = %325, %312
  %339 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %340 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %339, i32 0, i32 2
  %341 = call i32 @mutex_init(i32* %340)
  %342 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %343 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %342, i32 0, i32 1
  %344 = call i32 @ib_register_device(%struct.TYPE_7__* %343, i32* null)
  store i32 %344, i32* %4, align 4
  %345 = load i32, i32* %4, align 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %349

347:                                              ; preds = %338
  %348 = load i32, i32* %4, align 4
  store i32 %348, i32* %2, align 4
  br label %379

349:                                              ; preds = %338
  store i32 0, i32* %5, align 4
  br label %350

350:                                              ; preds = %373, %349
  %351 = load i32, i32* %5, align 4
  %352 = load i32*, i32** @mthca_dev_attributes, align 8
  %353 = call i32 @ARRAY_SIZE(i32* %352)
  %354 = icmp slt i32 %351, %353
  br i1 %354, label %355, label %376

355:                                              ; preds = %350
  %356 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %357 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %356, i32 0, i32 1
  %358 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %357, i32 0, i32 2
  %359 = load i32*, i32** @mthca_dev_attributes, align 8
  %360 = load i32, i32* %5, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i32, i32* %359, i64 %361
  %363 = load i32, i32* %362, align 4
  %364 = call i32 @device_create_file(i32* %358, i32 %363)
  store i32 %364, i32* %4, align 4
  %365 = load i32, i32* %4, align 4
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %372

367:                                              ; preds = %355
  %368 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %369 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %368, i32 0, i32 1
  %370 = call i32 @ib_unregister_device(%struct.TYPE_7__* %369)
  %371 = load i32, i32* %4, align 4
  store i32 %371, i32* %2, align 4
  br label %379

372:                                              ; preds = %355
  br label %373

373:                                              ; preds = %372
  %374 = load i32, i32* %5, align 4
  %375 = add nsw i32 %374, 1
  store i32 %375, i32* %5, align 4
  br label %350

376:                                              ; preds = %350
  %377 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %378 = call i32 @mthca_start_catas_poll(%struct.mthca_dev* %377)
  store i32 0, i32* %2, align 4
  br label %379

379:                                              ; preds = %376, %367, %347, %10
  %380 = load i32, i32* %2, align 4
  ret i32 %380
}

declare dso_local i32 @mthca_init_node_data(%struct.mthca_dev*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i64 @mthca_is_memfree(%struct.mthca_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @ib_register_device(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @device_create_file(i32*, i32) #1

declare dso_local i32 @ib_unregister_device(%struct.TYPE_7__*) #1

declare dso_local i32 @mthca_start_catas_poll(%struct.mthca_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
