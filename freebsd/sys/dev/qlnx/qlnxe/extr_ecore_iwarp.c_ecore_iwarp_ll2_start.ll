; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_iwarp.c_ecore_iwarp_ll2_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_iwarp.c_ecore_iwarp_ll2_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, %struct.ecore_iwarp_info }
%struct.ecore_iwarp_info = type { i32, i32, i32, i32, %struct.TYPE_5__*, i32, i8*, i8*, i8*, i8*, i8*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ecore_rdma_start_in_params = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ecore_ll2_acquire_data = type { %struct.TYPE_8__, %struct.ecore_ll2_cbs*, i8** }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i8*, i32, i32 }
%struct.ecore_ll2_cbs = type { i32, i32, %struct.ecore_hwfn*, i32, i32, i32 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@ECORE_IWARP_HANDLE_INVAL = common dso_local global i8* null, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@ecore_iwarp_ll2_comp_syn_pkt = common dso_local global i32 0, align 4
@ecore_iwarp_ll2_rel_rx_pkt = common dso_local global i32 0, align 4
@ecore_iwarp_ll2_comp_tx_pkt = common dso_local global i32 0, align 4
@ecore_iwarp_ll2_rel_tx_pkt = common dso_local global i32 0, align 4
@ECORE_LL2_TYPE_IWARP = common dso_local global i8* null, align 8
@ECORE_IWARP_MAX_SYN_PKT_SIZE = common dso_local global i32 0, align 4
@ECORE_IWARP_LL2_SYN_RX_SIZE = common dso_local global i32 0, align 4
@ECORE_IWARP_LL2_SYN_TX_SIZE = common dso_local global i32 0, align 4
@PKT_LB_TC = common dso_local global i32 0, align 4
@ECORE_LL2_TX_DEST_LB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to acquire LL2 connection\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to establish LL2 connection\0A\00", align 1
@ECORE_LL2_TYPE_OOO = common dso_local global i8* null, align 8
@ECORE_IWARP_LL2_OOO_MAX_RX_SIZE = common dso_local global i32 0, align 4
@ECORE_IWARP_LL2_OOO_DEF_TX_SIZE = common dso_local global i32 0, align 4
@ecore_iwarp_ll2_comp_mpa_pkt = common dso_local global i32 0, align 4
@ecore_iwarp_ll2_slowpath = common dso_local global i32 0, align 4
@ECORE_IWARP_MAX_BDS_PER_FPDU = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"Failed to allocate ecore_iwarp_info(partial_fpdus)\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"Failed to allocate mpa_bufs array mem_size=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"Failed to allocate mpa_intermediate_buf mem_size=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_rdma_start_in_params*)* @ecore_iwarp_ll2_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_iwarp_ll2_start(%struct.ecore_hwfn* %0, %struct.ecore_rdma_start_in_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_rdma_start_in_params*, align 8
  %6 = alloca %struct.ecore_iwarp_info*, align 8
  %7 = alloca %struct.ecore_ll2_acquire_data, align 8
  %8 = alloca %struct.ecore_ll2_cbs, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_rdma_start_in_params* %1, %struct.ecore_rdma_start_in_params** %5, align 8
  %13 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %13, i32* %10, align 4
  %14 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %15 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %14, i32 0, i32 1
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  store %struct.ecore_iwarp_info* %17, %struct.ecore_iwarp_info** %6, align 8
  %18 = load i8*, i8** @ECORE_IWARP_HANDLE_INVAL, align 8
  %19 = load %struct.ecore_iwarp_info*, %struct.ecore_iwarp_info** %6, align 8
  %20 = getelementptr inbounds %struct.ecore_iwarp_info, %struct.ecore_iwarp_info* %19, i32 0, i32 10
  store i8* %18, i8** %20, align 8
  %21 = load i8*, i8** @ECORE_IWARP_HANDLE_INVAL, align 8
  %22 = load %struct.ecore_iwarp_info*, %struct.ecore_iwarp_info** %6, align 8
  %23 = getelementptr inbounds %struct.ecore_iwarp_info, %struct.ecore_iwarp_info* %22, i32 0, i32 9
  store i8* %21, i8** %23, align 8
  %24 = load i8*, i8** @ECORE_IWARP_HANDLE_INVAL, align 8
  %25 = load %struct.ecore_iwarp_info*, %struct.ecore_iwarp_info** %6, align 8
  %26 = getelementptr inbounds %struct.ecore_iwarp_info, %struct.ecore_iwarp_info* %25, i32 0, i32 8
  store i8* %24, i8** %26, align 8
  %27 = load %struct.ecore_rdma_start_in_params*, %struct.ecore_rdma_start_in_params** %5, align 8
  %28 = getelementptr inbounds %struct.ecore_rdma_start_in_params, %struct.ecore_rdma_start_in_params* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ecore_iwarp_info*, %struct.ecore_iwarp_info** %6, align 8
  %31 = getelementptr inbounds %struct.ecore_iwarp_info, %struct.ecore_iwarp_info* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %33 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %32, i32 0, i32 1
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.ecore_iwarp_info, %struct.ecore_iwarp_info* %35, i32 0, i32 11
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.ecore_rdma_start_in_params*, %struct.ecore_rdma_start_in_params** %5, align 8
  %39 = getelementptr inbounds %struct.ecore_rdma_start_in_params, %struct.ecore_rdma_start_in_params* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @ETH_ALEN, align 4
  %42 = call i32 @OSAL_MEMCPY(i32 %37, i32 %40, i32 %41)
  %43 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %44 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.ecore_rdma_start_in_params*, %struct.ecore_rdma_start_in_params** %5, align 8
  %47 = getelementptr inbounds %struct.ecore_rdma_start_in_params, %struct.ecore_rdma_start_in_params* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ecore_llh_add_mac_filter(i32 %45, i32 0, i32 %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @ECORE_SUCCESS, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %2
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* %3, align 4
  br label %358

55:                                               ; preds = %2
  %56 = load i32, i32* @ecore_iwarp_ll2_comp_syn_pkt, align 4
  %57 = getelementptr inbounds %struct.ecore_ll2_cbs, %struct.ecore_ll2_cbs* %8, i32 0, i32 1
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* @ecore_iwarp_ll2_rel_rx_pkt, align 4
  %59 = getelementptr inbounds %struct.ecore_ll2_cbs, %struct.ecore_ll2_cbs* %8, i32 0, i32 5
  store i32 %58, i32* %59, align 8
  %60 = load i32, i32* @ecore_iwarp_ll2_comp_tx_pkt, align 4
  %61 = getelementptr inbounds %struct.ecore_ll2_cbs, %struct.ecore_ll2_cbs* %8, i32 0, i32 4
  store i32 %60, i32* %61, align 4
  %62 = load i32, i32* @ecore_iwarp_ll2_rel_tx_pkt, align 4
  %63 = getelementptr inbounds %struct.ecore_ll2_cbs, %struct.ecore_ll2_cbs* %8, i32 0, i32 3
  store i32 %62, i32* %63, align 8
  %64 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %65 = getelementptr inbounds %struct.ecore_ll2_cbs, %struct.ecore_ll2_cbs* %8, i32 0, i32 2
  store %struct.ecore_hwfn* %64, %struct.ecore_hwfn** %65, align 8
  %66 = call i32 @OSAL_MEMSET(%struct.ecore_ll2_acquire_data* %7, i32 0, i32 56)
  %67 = load i8*, i8** @ECORE_LL2_TYPE_IWARP, align 8
  %68 = getelementptr inbounds %struct.ecore_ll2_acquire_data, %struct.ecore_ll2_acquire_data* %7, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 6
  store i8* %67, i8** %69, align 8
  %70 = load i32, i32* @ECORE_IWARP_MAX_SYN_PKT_SIZE, align 4
  %71 = getelementptr inbounds %struct.ecore_ll2_acquire_data, %struct.ecore_ll2_acquire_data* %7, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* @ECORE_IWARP_LL2_SYN_RX_SIZE, align 4
  %74 = getelementptr inbounds %struct.ecore_ll2_acquire_data, %struct.ecore_ll2_acquire_data* %7, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* @ECORE_IWARP_LL2_SYN_TX_SIZE, align 4
  %77 = getelementptr inbounds %struct.ecore_ll2_acquire_data, %struct.ecore_ll2_acquire_data* %7, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  %79 = getelementptr inbounds %struct.ecore_ll2_acquire_data, %struct.ecore_ll2_acquire_data* %7, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 3
  store i32 1, i32* %80, align 4
  %81 = load i32, i32* @PKT_LB_TC, align 4
  %82 = getelementptr inbounds %struct.ecore_ll2_acquire_data, %struct.ecore_ll2_acquire_data* %7, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 8
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* @ECORE_LL2_TX_DEST_LB, align 4
  %85 = getelementptr inbounds %struct.ecore_ll2_acquire_data, %struct.ecore_ll2_acquire_data* %7, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 7
  store i32 %84, i32* %86, align 8
  %87 = load %struct.ecore_iwarp_info*, %struct.ecore_iwarp_info** %6, align 8
  %88 = getelementptr inbounds %struct.ecore_iwarp_info, %struct.ecore_iwarp_info* %87, i32 0, i32 10
  %89 = getelementptr inbounds %struct.ecore_ll2_acquire_data, %struct.ecore_ll2_acquire_data* %7, i32 0, i32 2
  store i8** %88, i8*** %89, align 8
  %90 = getelementptr inbounds %struct.ecore_ll2_acquire_data, %struct.ecore_ll2_acquire_data* %7, i32 0, i32 1
  store %struct.ecore_ll2_cbs* %8, %struct.ecore_ll2_cbs** %90, align 8
  %91 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %92 = call i32 @ecore_ll2_acquire_connection(%struct.ecore_hwfn* %91, %struct.ecore_ll2_acquire_data* %7)
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %106

95:                                               ; preds = %55
  %96 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %97 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_NOTICE(%struct.ecore_hwfn* %96, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %98 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %99 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.ecore_rdma_start_in_params*, %struct.ecore_rdma_start_in_params** %5, align 8
  %102 = getelementptr inbounds %struct.ecore_rdma_start_in_params, %struct.ecore_rdma_start_in_params* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @ecore_llh_remove_mac_filter(i32 %100, i32 0, i32 %103)
  %105 = load i32, i32* %10, align 4
  store i32 %105, i32* %3, align 4
  br label %358

106:                                              ; preds = %55
  %107 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %108 = load %struct.ecore_iwarp_info*, %struct.ecore_iwarp_info** %6, align 8
  %109 = getelementptr inbounds %struct.ecore_iwarp_info, %struct.ecore_iwarp_info* %108, i32 0, i32 10
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @ecore_ll2_establish_connection(%struct.ecore_hwfn* %107, i8* %110)
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %10, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %106
  %115 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %116 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_NOTICE(%struct.ecore_hwfn* %115, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %354

117:                                              ; preds = %106
  %118 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %119 = load i32, i32* @ECORE_IWARP_LL2_SYN_RX_SIZE, align 4
  %120 = load i32, i32* @ECORE_IWARP_MAX_SYN_PKT_SIZE, align 4
  %121 = load %struct.ecore_iwarp_info*, %struct.ecore_iwarp_info** %6, align 8
  %122 = getelementptr inbounds %struct.ecore_iwarp_info, %struct.ecore_iwarp_info* %121, i32 0, i32 10
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 @ecore_iwarp_ll2_alloc_buffers(%struct.ecore_hwfn* %118, i32 %119, i32 %120, i8* %123)
  store i32 %124, i32* %10, align 4
  %125 = load i32, i32* %10, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %117
  br label %354

128:                                              ; preds = %117
  %129 = load i8*, i8** @ECORE_LL2_TYPE_OOO, align 8
  %130 = getelementptr inbounds %struct.ecore_ll2_acquire_data, %struct.ecore_ll2_acquire_data* %7, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 6
  store i8* %129, i8** %131, align 8
  %132 = load %struct.ecore_rdma_start_in_params*, %struct.ecore_rdma_start_in_params** %5, align 8
  %133 = getelementptr inbounds %struct.ecore_rdma_start_in_params, %struct.ecore_rdma_start_in_params* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = getelementptr inbounds %struct.ecore_ll2_acquire_data, %struct.ecore_ll2_acquire_data* %7, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 8
  %137 = load %struct.ecore_rdma_start_in_params*, %struct.ecore_rdma_start_in_params** %5, align 8
  %138 = getelementptr inbounds %struct.ecore_rdma_start_in_params, %struct.ecore_rdma_start_in_params* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %11, align 4
  %141 = load i32, i32* %11, align 4
  %142 = load i32, i32* @ECORE_IWARP_LL2_OOO_MAX_RX_SIZE, align 4
  %143 = icmp sgt i32 %141, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %128
  %145 = load i32, i32* @ECORE_IWARP_LL2_OOO_MAX_RX_SIZE, align 4
  store i32 %145, i32* %11, align 4
  br label %146

146:                                              ; preds = %144, %128
  %147 = load i32, i32* %11, align 4
  %148 = getelementptr inbounds %struct.ecore_ll2_acquire_data, %struct.ecore_ll2_acquire_data* %7, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 1
  store i32 %147, i32* %149, align 4
  %150 = load i32, i32* %11, align 4
  %151 = getelementptr inbounds %struct.ecore_ll2_acquire_data, %struct.ecore_ll2_acquire_data* %7, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 4
  store i32 %150, i32* %152, align 8
  %153 = getelementptr inbounds %struct.ecore_ll2_acquire_data, %struct.ecore_ll2_acquire_data* %7, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %157 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %156, i32 0, i32 1
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.ecore_iwarp_info, %struct.ecore_iwarp_info* %159, i32 0, i32 1
  store i32 %155, i32* %160, align 4
  %161 = getelementptr inbounds %struct.ecore_ll2_acquire_data, %struct.ecore_ll2_acquire_data* %7, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 3
  store i32 1, i32* %162, align 4
  %163 = load i32, i32* @ECORE_IWARP_LL2_OOO_DEF_TX_SIZE, align 4
  %164 = getelementptr inbounds %struct.ecore_ll2_acquire_data, %struct.ecore_ll2_acquire_data* %7, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 2
  store i32 %163, i32* %165, align 8
  %166 = load %struct.ecore_iwarp_info*, %struct.ecore_iwarp_info** %6, align 8
  %167 = getelementptr inbounds %struct.ecore_iwarp_info, %struct.ecore_iwarp_info* %166, i32 0, i32 9
  %168 = getelementptr inbounds %struct.ecore_ll2_acquire_data, %struct.ecore_ll2_acquire_data* %7, i32 0, i32 2
  store i8** %167, i8*** %168, align 8
  %169 = getelementptr inbounds %struct.ecore_ll2_acquire_data, %struct.ecore_ll2_acquire_data* %7, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 5
  store i32 1, i32* %170, align 4
  %171 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %172 = call i32 @ecore_ll2_acquire_connection(%struct.ecore_hwfn* %171, %struct.ecore_ll2_acquire_data* %7)
  store i32 %172, i32* %10, align 4
  %173 = load i32, i32* %10, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %146
  br label %354

176:                                              ; preds = %146
  %177 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %178 = load %struct.ecore_iwarp_info*, %struct.ecore_iwarp_info** %6, align 8
  %179 = getelementptr inbounds %struct.ecore_iwarp_info, %struct.ecore_iwarp_info* %178, i32 0, i32 9
  %180 = load i8*, i8** %179, align 8
  %181 = call i32 @ecore_ll2_establish_connection(%struct.ecore_hwfn* %177, i8* %180)
  store i32 %181, i32* %10, align 4
  %182 = load i32, i32* %10, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %176
  br label %354

185:                                              ; preds = %176
  %186 = load i32, i32* @ecore_iwarp_ll2_comp_mpa_pkt, align 4
  %187 = getelementptr inbounds %struct.ecore_ll2_cbs, %struct.ecore_ll2_cbs* %8, i32 0, i32 1
  store i32 %186, i32* %187, align 4
  %188 = load i32, i32* @ecore_iwarp_ll2_slowpath, align 4
  %189 = getelementptr inbounds %struct.ecore_ll2_cbs, %struct.ecore_ll2_cbs* %8, i32 0, i32 0
  store i32 %188, i32* %189, align 8
  %190 = call i32 @OSAL_MEMSET(%struct.ecore_ll2_acquire_data* %7, i32 0, i32 56)
  %191 = load i8*, i8** @ECORE_LL2_TYPE_IWARP, align 8
  %192 = getelementptr inbounds %struct.ecore_ll2_acquire_data, %struct.ecore_ll2_acquire_data* %7, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 6
  store i8* %191, i8** %193, align 8
  %194 = load %struct.ecore_rdma_start_in_params*, %struct.ecore_rdma_start_in_params** %5, align 8
  %195 = getelementptr inbounds %struct.ecore_rdma_start_in_params, %struct.ecore_rdma_start_in_params* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = getelementptr inbounds %struct.ecore_ll2_acquire_data, %struct.ecore_ll2_acquire_data* %7, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 0
  store i32 %196, i32* %198, align 8
  %199 = load i32, i32* %11, align 4
  %200 = mul nsw i32 %199, 2
  %201 = getelementptr inbounds %struct.ecore_ll2_acquire_data, %struct.ecore_ll2_acquire_data* %7, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 1
  store i32 %200, i32* %202, align 4
  %203 = getelementptr inbounds %struct.ecore_ll2_acquire_data, %struct.ecore_ll2_acquire_data* %7, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = getelementptr inbounds %struct.ecore_ll2_acquire_data, %struct.ecore_ll2_acquire_data* %7, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 2
  store i32 %205, i32* %207, align 8
  %208 = load i32, i32* @ECORE_IWARP_MAX_BDS_PER_FPDU, align 4
  %209 = getelementptr inbounds %struct.ecore_ll2_acquire_data, %struct.ecore_ll2_acquire_data* %7, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 3
  store i32 %208, i32* %210, align 4
  %211 = load %struct.ecore_iwarp_info*, %struct.ecore_iwarp_info** %6, align 8
  %212 = getelementptr inbounds %struct.ecore_iwarp_info, %struct.ecore_iwarp_info* %211, i32 0, i32 8
  %213 = getelementptr inbounds %struct.ecore_ll2_acquire_data, %struct.ecore_ll2_acquire_data* %7, i32 0, i32 2
  store i8** %212, i8*** %213, align 8
  %214 = getelementptr inbounds %struct.ecore_ll2_acquire_data, %struct.ecore_ll2_acquire_data* %7, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 5
  store i32 1, i32* %215, align 4
  %216 = getelementptr inbounds %struct.ecore_ll2_acquire_data, %struct.ecore_ll2_acquire_data* %7, i32 0, i32 1
  store %struct.ecore_ll2_cbs* %8, %struct.ecore_ll2_cbs** %216, align 8
  %217 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %218 = call i32 @ecore_ll2_acquire_connection(%struct.ecore_hwfn* %217, %struct.ecore_ll2_acquire_data* %7)
  store i32 %218, i32* %10, align 4
  %219 = load i32, i32* %10, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %185
  br label %354

222:                                              ; preds = %185
  %223 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %224 = load %struct.ecore_iwarp_info*, %struct.ecore_iwarp_info** %6, align 8
  %225 = getelementptr inbounds %struct.ecore_iwarp_info, %struct.ecore_iwarp_info* %224, i32 0, i32 8
  %226 = load i8*, i8** %225, align 8
  %227 = call i32 @ecore_ll2_establish_connection(%struct.ecore_hwfn* %223, i8* %226)
  store i32 %227, i32* %10, align 4
  %228 = load i32, i32* %10, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %222
  br label %354

231:                                              ; preds = %222
  %232 = load %struct.ecore_rdma_start_in_params*, %struct.ecore_rdma_start_in_params** %5, align 8
  %233 = getelementptr inbounds %struct.ecore_rdma_start_in_params, %struct.ecore_rdma_start_in_params* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @ECORE_IWARP_MAX_BUF_SIZE(i32 %234)
  store i32 %235, i32* %9, align 4
  %236 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %237 = getelementptr inbounds %struct.ecore_ll2_acquire_data, %struct.ecore_ll2_acquire_data* %7, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* %9, align 4
  %241 = load %struct.ecore_iwarp_info*, %struct.ecore_iwarp_info** %6, align 8
  %242 = getelementptr inbounds %struct.ecore_iwarp_info, %struct.ecore_iwarp_info* %241, i32 0, i32 8
  %243 = load i8*, i8** %242, align 8
  %244 = call i32 @ecore_iwarp_ll2_alloc_buffers(%struct.ecore_hwfn* %236, i32 %239, i32 %240, i8* %243)
  store i32 %244, i32* %10, align 4
  %245 = load i32, i32* %10, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %248

247:                                              ; preds = %231
  br label %354

248:                                              ; preds = %231
  %249 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %250 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* @GFP_KERNEL, align 4
  %253 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %254 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %253, i32 0, i32 1
  %255 = load %struct.TYPE_7__*, %struct.TYPE_7__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = trunc i64 %257 to i32
  %259 = sext i32 %258 to i64
  %260 = mul i64 1, %259
  %261 = trunc i64 %260 to i32
  %262 = call i8* @OSAL_ZALLOC(i32 %251, i32 %252, i32 %261)
  %263 = load %struct.ecore_iwarp_info*, %struct.ecore_iwarp_info** %6, align 8
  %264 = getelementptr inbounds %struct.ecore_iwarp_info, %struct.ecore_iwarp_info* %263, i32 0, i32 7
  store i8* %262, i8** %264, align 8
  %265 = load %struct.ecore_iwarp_info*, %struct.ecore_iwarp_info** %6, align 8
  %266 = getelementptr inbounds %struct.ecore_iwarp_info, %struct.ecore_iwarp_info* %265, i32 0, i32 7
  %267 = load i8*, i8** %266, align 8
  %268 = icmp ne i8* %267, null
  br i1 %268, label %272, label %269

269:                                              ; preds = %248
  %270 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %271 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_NOTICE(%struct.ecore_hwfn* %270, i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  br label %354

272:                                              ; preds = %248
  %273 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %274 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %273, i32 0, i32 1
  %275 = load %struct.TYPE_7__*, %struct.TYPE_7__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = trunc i64 %277 to i32
  %279 = load %struct.ecore_iwarp_info*, %struct.ecore_iwarp_info** %6, align 8
  %280 = getelementptr inbounds %struct.ecore_iwarp_info, %struct.ecore_iwarp_info* %279, i32 0, i32 2
  store i32 %278, i32* %280, align 8
  %281 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %282 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = load i32, i32* @GFP_KERNEL, align 4
  %285 = getelementptr inbounds %struct.ecore_ll2_acquire_data, %struct.ecore_ll2_acquire_data* %7, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 4
  %288 = sext i32 %287 to i64
  %289 = mul i64 4, %288
  %290 = trunc i64 %289 to i32
  %291 = call i8* @OSAL_ZALLOC(i32 %283, i32 %284, i32 %290)
  %292 = bitcast i8* %291 to %struct.TYPE_5__*
  %293 = load %struct.ecore_iwarp_info*, %struct.ecore_iwarp_info** %6, align 8
  %294 = getelementptr inbounds %struct.ecore_iwarp_info, %struct.ecore_iwarp_info* %293, i32 0, i32 4
  store %struct.TYPE_5__* %292, %struct.TYPE_5__** %294, align 8
  %295 = load %struct.ecore_iwarp_info*, %struct.ecore_iwarp_info** %6, align 8
  %296 = getelementptr inbounds %struct.ecore_iwarp_info, %struct.ecore_iwarp_info* %295, i32 0, i32 4
  %297 = load %struct.TYPE_5__*, %struct.TYPE_5__** %296, align 8
  %298 = icmp ne %struct.TYPE_5__* %297, null
  br i1 %298, label %308, label %299

299:                                              ; preds = %272
  %300 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %301 = getelementptr inbounds %struct.ecore_ll2_acquire_data, %struct.ecore_ll2_acquire_data* %7, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 4
  %304 = sext i32 %303 to i64
  %305 = mul i64 4, %304
  %306 = trunc i64 %305 to i32
  %307 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_NOTICE(%struct.ecore_hwfn* %300, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %306)
  br label %354

308:                                              ; preds = %272
  %309 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %310 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = load i32, i32* @GFP_KERNEL, align 4
  %313 = load i32, i32* %9, align 4
  %314 = call i8* @OSAL_ZALLOC(i32 %311, i32 %312, i32 %313)
  %315 = load %struct.ecore_iwarp_info*, %struct.ecore_iwarp_info** %6, align 8
  %316 = getelementptr inbounds %struct.ecore_iwarp_info, %struct.ecore_iwarp_info* %315, i32 0, i32 6
  store i8* %314, i8** %316, align 8
  %317 = load %struct.ecore_iwarp_info*, %struct.ecore_iwarp_info** %6, align 8
  %318 = getelementptr inbounds %struct.ecore_iwarp_info, %struct.ecore_iwarp_info* %317, i32 0, i32 6
  %319 = load i8*, i8** %318, align 8
  %320 = icmp ne i8* %319, null
  br i1 %320, label %325, label %321

321:                                              ; preds = %308
  %322 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %323 = load i32, i32* %9, align 4
  %324 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_NOTICE(%struct.ecore_hwfn* %322, i32 0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i32 %323)
  br label %354

325:                                              ; preds = %308
  %326 = load %struct.ecore_iwarp_info*, %struct.ecore_iwarp_info** %6, align 8
  %327 = getelementptr inbounds %struct.ecore_iwarp_info, %struct.ecore_iwarp_info* %326, i32 0, i32 5
  %328 = call i32 @OSAL_LIST_INIT(i32* %327)
  %329 = load %struct.ecore_iwarp_info*, %struct.ecore_iwarp_info** %6, align 8
  %330 = getelementptr inbounds %struct.ecore_iwarp_info, %struct.ecore_iwarp_info* %329, i32 0, i32 3
  %331 = call i32 @OSAL_LIST_INIT(i32* %330)
  store i32 0, i32* %12, align 4
  br label %332

332:                                              ; preds = %349, %325
  %333 = load i32, i32* %12, align 4
  %334 = getelementptr inbounds %struct.ecore_ll2_acquire_data, %struct.ecore_ll2_acquire_data* %7, i32 0, i32 0
  %335 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %334, i32 0, i32 1
  %336 = load i32, i32* %335, align 4
  %337 = icmp slt i32 %333, %336
  br i1 %337, label %338, label %352

338:                                              ; preds = %332
  %339 = load %struct.ecore_iwarp_info*, %struct.ecore_iwarp_info** %6, align 8
  %340 = getelementptr inbounds %struct.ecore_iwarp_info, %struct.ecore_iwarp_info* %339, i32 0, i32 4
  %341 = load %struct.TYPE_5__*, %struct.TYPE_5__** %340, align 8
  %342 = load i32, i32* %12, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %341, i64 %343
  %345 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %344, i32 0, i32 0
  %346 = load %struct.ecore_iwarp_info*, %struct.ecore_iwarp_info** %6, align 8
  %347 = getelementptr inbounds %struct.ecore_iwarp_info, %struct.ecore_iwarp_info* %346, i32 0, i32 3
  %348 = call i32 @OSAL_LIST_PUSH_TAIL(i32* %345, i32* %347)
  br label %349

349:                                              ; preds = %338
  %350 = load i32, i32* %12, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %12, align 4
  br label %332

352:                                              ; preds = %332
  %353 = load i32, i32* %10, align 4
  store i32 %353, i32* %3, align 4
  br label %358

354:                                              ; preds = %321, %299, %269, %247, %230, %221, %184, %175, %127, %114
  %355 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %356 = call i32 @ecore_iwarp_ll2_stop(%struct.ecore_hwfn* %355)
  %357 = load i32, i32* %10, align 4
  store i32 %357, i32* %3, align 4
  br label %358

358:                                              ; preds = %354, %352, %95, %53
  %359 = load i32, i32* %3, align 4
  ret i32 %359
}

declare dso_local i32 @OSAL_MEMCPY(i32, i32, i32) #1

declare dso_local i32 @ecore_llh_add_mac_filter(i32, i32, i32) #1

declare dso_local i32 @OSAL_MEMSET(%struct.ecore_ll2_acquire_data*, i32, i32) #1

declare dso_local i32 @ecore_ll2_acquire_connection(%struct.ecore_hwfn*, %struct.ecore_ll2_acquire_data*) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, ...) #1

declare dso_local i32 @ecore_llh_remove_mac_filter(i32, i32, i32) #1

declare dso_local i32 @ecore_ll2_establish_connection(%struct.ecore_hwfn*, i8*) #1

declare dso_local i32 @ecore_iwarp_ll2_alloc_buffers(%struct.ecore_hwfn*, i32, i32, i8*) #1

declare dso_local i32 @ECORE_IWARP_MAX_BUF_SIZE(i32) #1

declare dso_local i8* @OSAL_ZALLOC(i32, i32, i32) #1

declare dso_local i32 @OSAL_LIST_INIT(i32*) #1

declare dso_local i32 @OSAL_LIST_PUSH_TAIL(i32*, i32*) #1

declare dso_local i32 @ecore_iwarp_ll2_stop(%struct.ecore_hwfn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
