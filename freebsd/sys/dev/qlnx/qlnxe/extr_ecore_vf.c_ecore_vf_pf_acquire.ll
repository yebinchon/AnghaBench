; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_vf.c_ecore_vf_pf_acquire.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_vf.c_ecore_vf_pf_acquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_14__*, %struct.TYPE_9__, %struct.ecore_vf_iov* }
%struct.TYPE_14__ = type { i32, i32, i64, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.ecore_vf_iov = type { i32, %struct.TYPE_10__, i32, %struct.ecore_vf_acquire_sw_info*, i32, i64 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.ecore_vf_acquire_sw_info = type { i32, i32, %struct.pfvf_acquire_resp_tlv }
%struct.pfvf_acquire_resp_tlv = type { %struct.pf_vf_pfdev_info, i32, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.pf_vf_pfdev_info = type { i32, i8*, i32, i32, i64, i32 }
%struct.TYPE_13__ = type { i64, i64, i64 }
%struct.TYPE_12__ = type { i64 }
%struct.vf_pf_resc_request = type { i32, i32, i32, i8*, i8*, i8* }
%struct.vfpf_acquire_tlv = type { %struct.TYPE_11__, i32, i32, %struct.vf_pf_resc_request }
%struct.TYPE_11__ = type { i8*, i32, i8*, i32, i32, i32, i32, i32, i32, i32 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@CHANNEL_TLV_ACQUIRE = common dso_local global i32 0, align 4
@ECORE_MAX_VF_CHAINS_PER_PF = common dso_local global i8* null, align 8
@ECORE_ETH_VF_NUM_MAC_FILTERS = common dso_local global i32 0, align 4
@ECORE_ETH_VF_NUM_VLAN_FILTERS = common dso_local global i32 0, align 4
@ECORE_ETH_VF_DEFAULT_NUM_CIDS = common dso_local global i32 0, align 4
@FW_MAJOR_VERSION = common dso_local global i32 0, align 4
@FW_MINOR_VERSION = common dso_local global i32 0, align 4
@FW_REVISION_VERSION = common dso_local global i32 0, align 4
@FW_ENGINEERING_VERSION = common dso_local global i32 0, align 4
@ETH_HSI_VER_MAJOR = common dso_local global i8* null, align 8
@ETH_HSI_VER_MINOR = common dso_local global i8* null, align 8
@VFPF_ACQUIRE_CAP_100G = common dso_local global i32 0, align 4
@VFPF_ACQUIRE_CAP_PHYSICAL_BAR = common dso_local global i32 0, align 4
@VFPF_ACQUIRE_CAP_QUEUE_QIDS = common dso_local global i32 0, align 4
@ECORE_ETH_VF_MAX_NUM_CIDS = common dso_local global i32 0, align 4
@CHANNEL_TLV_LIST_END = common dso_local global i32 0, align 4
@ECORE_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"attempting to acquire resources\0A\00", align 1
@PFVF_STATUS_SUCCESS = common dso_local global i64 0, align 8
@PFVF_ACQUIRE_CAP_POST_FW_OVERRIDE = common dso_local global i32 0, align 4
@VFPF_ACQUIRE_CAP_PRE_FP_HSI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"resources acquired\0A\00", align 1
@PFVF_STATUS_NO_RESOURCE = common dso_local global i64 0, align 8
@VF_ACQUIRE_THRESH = common dso_local global i32 0, align 4
@PFVF_STATUS_NOT_SUPPORTED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [117 x i8] c"PF uses an incompatible fastpath HSI %02x.%02x [VF requires %02x.%02x]. Please change to a VF driver using %02x.xx.\0A\00", align 1
@ECORE_INVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [85 x i8] c"PF uses very old drivers. Please change to a VF driver using no later than 8.8.x.x.\0A\00", align 1
@.str.4 = private unnamed_addr constant [70 x i8] c"PF is old - try re-acquire to see if it supports FW-version override\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"PF rejected acquisition by VF\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"PF returned error %d to VF acquisition request\0A\00", align 1
@ECORE_AGAIN = common dso_local global i32 0, align 4
@PFVF_ACQUIRE_CAP_QUEUE_QIDS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [52 x i8] c"VF_UPDATE_ACQUIRE_RESC_RESP Failed: status = 0x%x.\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"Chip details - %s%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"BB\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"AH\00", align 1
@PFVF_ACQUIRE_CAP_100G = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [9 x i8] c"100g VF\0A\00", align 1
@.str.12 = private unnamed_addr constant [57 x i8] c"PF is using older fastpath HSI; %02x.%02x is configured\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*)* @ecore_vf_pf_acquire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_vf_pf_acquire(%struct.ecore_hwfn* %0) #0 {
  %2 = alloca %struct.ecore_hwfn*, align 8
  %3 = alloca %struct.ecore_vf_iov*, align 8
  %4 = alloca %struct.pfvf_acquire_resp_tlv*, align 8
  %5 = alloca %struct.pf_vf_pfdev_info*, align 8
  %6 = alloca %struct.ecore_vf_acquire_sw_info, align 8
  %7 = alloca %struct.vf_pf_resc_request*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.vfpf_acquire_tlv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %2, align 8
  %13 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %14 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %13, i32 0, i32 2
  %15 = load %struct.ecore_vf_iov*, %struct.ecore_vf_iov** %14, align 8
  store %struct.ecore_vf_iov* %15, %struct.ecore_vf_iov** %3, align 8
  %16 = load %struct.ecore_vf_iov*, %struct.ecore_vf_iov** %3, align 8
  %17 = getelementptr inbounds %struct.ecore_vf_iov, %struct.ecore_vf_iov* %16, i32 0, i32 3
  %18 = load %struct.ecore_vf_acquire_sw_info*, %struct.ecore_vf_acquire_sw_info** %17, align 8
  %19 = getelementptr inbounds %struct.ecore_vf_acquire_sw_info, %struct.ecore_vf_acquire_sw_info* %18, i32 0, i32 2
  store %struct.pfvf_acquire_resp_tlv* %19, %struct.pfvf_acquire_resp_tlv** %4, align 8
  %20 = load %struct.pfvf_acquire_resp_tlv*, %struct.pfvf_acquire_resp_tlv** %4, align 8
  %21 = getelementptr inbounds %struct.pfvf_acquire_resp_tlv, %struct.pfvf_acquire_resp_tlv* %20, i32 0, i32 0
  store %struct.pf_vf_pfdev_info* %21, %struct.pf_vf_pfdev_info** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %22 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %22, i32* %11, align 4
  %23 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %24 = load i32, i32* @CHANNEL_TLV_ACQUIRE, align 4
  %25 = call %struct.vfpf_acquire_tlv* @ecore_vf_pf_prep(%struct.ecore_hwfn* %23, i32 %24, i32 104)
  store %struct.vfpf_acquire_tlv* %25, %struct.vfpf_acquire_tlv** %9, align 8
  %26 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %27 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %26, i32 0, i32 3
  store %struct.vf_pf_resc_request* %27, %struct.vf_pf_resc_request** %7, align 8
  %28 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %29 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %33 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 9
  store i32 %31, i32* %34, align 8
  %35 = load i8*, i8** @ECORE_MAX_VF_CHAINS_PER_PF, align 8
  %36 = load %struct.vf_pf_resc_request*, %struct.vf_pf_resc_request** %7, align 8
  %37 = getelementptr inbounds %struct.vf_pf_resc_request, %struct.vf_pf_resc_request* %36, i32 0, i32 5
  store i8* %35, i8** %37, align 8
  %38 = load i8*, i8** @ECORE_MAX_VF_CHAINS_PER_PF, align 8
  %39 = load %struct.vf_pf_resc_request*, %struct.vf_pf_resc_request** %7, align 8
  %40 = getelementptr inbounds %struct.vf_pf_resc_request, %struct.vf_pf_resc_request* %39, i32 0, i32 4
  store i8* %38, i8** %40, align 8
  %41 = load i8*, i8** @ECORE_MAX_VF_CHAINS_PER_PF, align 8
  %42 = load %struct.vf_pf_resc_request*, %struct.vf_pf_resc_request** %7, align 8
  %43 = getelementptr inbounds %struct.vf_pf_resc_request, %struct.vf_pf_resc_request* %42, i32 0, i32 3
  store i8* %41, i8** %43, align 8
  %44 = load i32, i32* @ECORE_ETH_VF_NUM_MAC_FILTERS, align 4
  %45 = load %struct.vf_pf_resc_request*, %struct.vf_pf_resc_request** %7, align 8
  %46 = getelementptr inbounds %struct.vf_pf_resc_request, %struct.vf_pf_resc_request* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* @ECORE_ETH_VF_NUM_VLAN_FILTERS, align 4
  %48 = load %struct.vf_pf_resc_request*, %struct.vf_pf_resc_request** %7, align 8
  %49 = getelementptr inbounds %struct.vf_pf_resc_request, %struct.vf_pf_resc_request* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @ECORE_ETH_VF_DEFAULT_NUM_CIDS, align 4
  %51 = load %struct.vf_pf_resc_request*, %struct.vf_pf_resc_request** %7, align 8
  %52 = getelementptr inbounds %struct.vf_pf_resc_request, %struct.vf_pf_resc_request* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = call i32 @OSAL_MEMSET(%struct.ecore_vf_acquire_sw_info* %6, i32 0, i32 88)
  %54 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %55 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %56 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %55, i32 0, i32 3
  %57 = call i32 @OSAL_VF_FILL_ACQUIRE_RESC_REQ(%struct.ecore_hwfn* %54, %struct.vf_pf_resc_request* %56, %struct.ecore_vf_acquire_sw_info* %6)
  %58 = getelementptr inbounds %struct.ecore_vf_acquire_sw_info, %struct.ecore_vf_acquire_sw_info* %6, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %61 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 8
  store i32 %59, i32* %62, align 4
  %63 = getelementptr inbounds %struct.ecore_vf_acquire_sw_info, %struct.ecore_vf_acquire_sw_info* %6, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %66 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 7
  store i32 %64, i32* %67, align 8
  %68 = load i32, i32* @FW_MAJOR_VERSION, align 4
  %69 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %70 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 6
  store i32 %68, i32* %71, align 4
  %72 = load i32, i32* @FW_MINOR_VERSION, align 4
  %73 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %74 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 5
  store i32 %72, i32* %75, align 8
  %76 = load i32, i32* @FW_REVISION_VERSION, align 4
  %77 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %78 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 4
  store i32 %76, i32* %79, align 4
  %80 = load i32, i32* @FW_ENGINEERING_VERSION, align 4
  %81 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %82 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 3
  store i32 %80, i32* %83, align 8
  %84 = load i8*, i8** @ETH_HSI_VER_MAJOR, align 8
  %85 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %86 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  store i8* %84, i8** %87, align 8
  %88 = load i8*, i8** @ETH_HSI_VER_MINOR, align 8
  %89 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %90 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 2
  store i8* %88, i8** %91, align 8
  %92 = load i32, i32* @VFPF_ACQUIRE_CAP_100G, align 4
  %93 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %94 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = or i32 %96, %92
  store i32 %97, i32* %95, align 8
  %98 = load %struct.ecore_vf_iov*, %struct.ecore_vf_iov** %3, align 8
  %99 = getelementptr inbounds %struct.ecore_vf_iov, %struct.ecore_vf_iov* %98, i32 0, i32 5
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %114

102:                                              ; preds = %1
  %103 = load i32, i32* @VFPF_ACQUIRE_CAP_PHYSICAL_BAR, align 4
  %104 = load i32, i32* @VFPF_ACQUIRE_CAP_QUEUE_QIDS, align 4
  %105 = or i32 %103, %104
  %106 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %107 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %109, %105
  store i32 %110, i32* %108, align 8
  %111 = load i32, i32* @ECORE_ETH_VF_MAX_NUM_CIDS, align 4
  %112 = load %struct.vf_pf_resc_request*, %struct.vf_pf_resc_request** %7, align 8
  %113 = getelementptr inbounds %struct.vf_pf_resc_request, %struct.vf_pf_resc_request* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  br label %114

114:                                              ; preds = %102, %1
  %115 = load %struct.ecore_vf_iov*, %struct.ecore_vf_iov** %3, align 8
  %116 = getelementptr inbounds %struct.ecore_vf_iov, %struct.ecore_vf_iov* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %120 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 4
  %121 = load %struct.ecore_vf_iov*, %struct.ecore_vf_iov** %3, align 8
  %122 = getelementptr inbounds %struct.ecore_vf_iov, %struct.ecore_vf_iov* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %126 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 8
  %127 = load %struct.ecore_vf_iov*, %struct.ecore_vf_iov** %3, align 8
  %128 = getelementptr inbounds %struct.ecore_vf_iov, %struct.ecore_vf_iov* %127, i32 0, i32 4
  %129 = load i32, i32* @CHANNEL_TLV_LIST_END, align 4
  %130 = call i32 @ecore_add_tlv(i32* %128, i32 %129, i32 4)
  br label %131

131:                                              ; preds = %273, %251, %114
  %132 = load i32, i32* %8, align 4
  %133 = icmp ne i32 %132, 0
  %134 = xor i1 %133, true
  br i1 %134, label %135, label %274

135:                                              ; preds = %131
  %136 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %137 = load i32, i32* @ECORE_MSG_IOV, align 4
  %138 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %136, i32 %137, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %139 = load %struct.ecore_vf_iov*, %struct.ecore_vf_iov** %3, align 8
  %140 = getelementptr inbounds %struct.ecore_vf_iov, %struct.ecore_vf_iov* %139, i32 0, i32 3
  %141 = load %struct.ecore_vf_acquire_sw_info*, %struct.ecore_vf_acquire_sw_info** %140, align 8
  %142 = call i32 @OSAL_MEMSET(%struct.ecore_vf_acquire_sw_info* %141, i32 0, i32 4)
  %143 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %144 = load %struct.pfvf_acquire_resp_tlv*, %struct.pfvf_acquire_resp_tlv** %4, align 8
  %145 = getelementptr inbounds %struct.pfvf_acquire_resp_tlv, %struct.pfvf_acquire_resp_tlv* %144, i32 0, i32 3
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 0
  %147 = call i32 @ecore_send_msg2pf(%struct.ecore_hwfn* %143, i64* %146, i32 80)
  store i32 %147, i32* %11, align 4
  %148 = load i32, i32* %11, align 4
  %149 = load i32, i32* @ECORE_SUCCESS, align 4
  %150 = icmp ne i32 %148, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %135
  br label %412

152:                                              ; preds = %135
  %153 = load %struct.ecore_vf_iov*, %struct.ecore_vf_iov** %3, align 8
  %154 = getelementptr inbounds %struct.ecore_vf_iov, %struct.ecore_vf_iov* %153, i32 0, i32 2
  %155 = load %struct.pfvf_acquire_resp_tlv*, %struct.pfvf_acquire_resp_tlv** %4, align 8
  %156 = call i32 @OSAL_MEMCPY(i32* %154, %struct.pfvf_acquire_resp_tlv* %155, i32 4)
  %157 = load i32, i32* %10, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %10, align 4
  %159 = load %struct.pfvf_acquire_resp_tlv*, %struct.pfvf_acquire_resp_tlv** %4, align 8
  %160 = getelementptr inbounds %struct.pfvf_acquire_resp_tlv, %struct.pfvf_acquire_resp_tlv* %159, i32 0, i32 3
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @PFVF_STATUS_SUCCESS, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %184

165:                                              ; preds = %152
  %166 = load %struct.pfvf_acquire_resp_tlv*, %struct.pfvf_acquire_resp_tlv** %4, align 8
  %167 = getelementptr inbounds %struct.pfvf_acquire_resp_tlv, %struct.pfvf_acquire_resp_tlv* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.pf_vf_pfdev_info, %struct.pf_vf_pfdev_info* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @PFVF_ACQUIRE_CAP_POST_FW_OVERRIDE, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %180, label %173

173:                                              ; preds = %165
  %174 = load i32, i32* @VFPF_ACQUIRE_CAP_PRE_FP_HSI, align 4
  %175 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %176 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = or i32 %178, %174
  store i32 %179, i32* %177, align 8
  br label %180

180:                                              ; preds = %173, %165
  %181 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %182 = load i32, i32* @ECORE_MSG_IOV, align 4
  %183 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %181, i32 %182, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %273

184:                                              ; preds = %152
  %185 = load %struct.pfvf_acquire_resp_tlv*, %struct.pfvf_acquire_resp_tlv** %4, align 8
  %186 = getelementptr inbounds %struct.pfvf_acquire_resp_tlv, %struct.pfvf_acquire_resp_tlv* %185, i32 0, i32 3
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @PFVF_STATUS_NO_RESOURCE, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %191, label %201

191:                                              ; preds = %184
  %192 = load i32, i32* %10, align 4
  %193 = load i32, i32* @VF_ACQUIRE_THRESH, align 4
  %194 = icmp slt i32 %192, %193
  br i1 %194, label %195, label %201

195:                                              ; preds = %191
  %196 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %197 = load %struct.vf_pf_resc_request*, %struct.vf_pf_resc_request** %7, align 8
  %198 = load %struct.pfvf_acquire_resp_tlv*, %struct.pfvf_acquire_resp_tlv** %4, align 8
  %199 = getelementptr inbounds %struct.pfvf_acquire_resp_tlv, %struct.pfvf_acquire_resp_tlv* %198, i32 0, i32 2
  %200 = call i32 @ecore_vf_pf_acquire_reduce_resc(%struct.ecore_hwfn* %196, %struct.vf_pf_resc_request* %197, %struct.TYPE_13__* %199)
  br label %272

201:                                              ; preds = %191, %184
  %202 = load %struct.pfvf_acquire_resp_tlv*, %struct.pfvf_acquire_resp_tlv** %4, align 8
  %203 = getelementptr inbounds %struct.pfvf_acquire_resp_tlv, %struct.pfvf_acquire_resp_tlv* %202, i32 0, i32 3
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @PFVF_STATUS_NOT_SUPPORTED, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %208, label %264

208:                                              ; preds = %201
  %209 = load %struct.pf_vf_pfdev_info*, %struct.pf_vf_pfdev_info** %5, align 8
  %210 = getelementptr inbounds %struct.pf_vf_pfdev_info, %struct.pf_vf_pfdev_info* %209, i32 0, i32 1
  %211 = load i8*, i8** %210, align 8
  %212 = icmp ne i8* %211, null
  br i1 %212, label %213, label %234

213:                                              ; preds = %208
  %214 = load %struct.pf_vf_pfdev_info*, %struct.pf_vf_pfdev_info** %5, align 8
  %215 = getelementptr inbounds %struct.pf_vf_pfdev_info, %struct.pf_vf_pfdev_info* %214, i32 0, i32 1
  %216 = load i8*, i8** %215, align 8
  %217 = load i8*, i8** @ETH_HSI_VER_MAJOR, align 8
  %218 = icmp ne i8* %216, %217
  br i1 %218, label %219, label %234

219:                                              ; preds = %213
  %220 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %221 = load %struct.pf_vf_pfdev_info*, %struct.pf_vf_pfdev_info** %5, align 8
  %222 = getelementptr inbounds %struct.pf_vf_pfdev_info, %struct.pf_vf_pfdev_info* %221, i32 0, i32 1
  %223 = load i8*, i8** %222, align 8
  %224 = load %struct.pf_vf_pfdev_info*, %struct.pf_vf_pfdev_info** %5, align 8
  %225 = getelementptr inbounds %struct.pf_vf_pfdev_info, %struct.pf_vf_pfdev_info* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = load i8*, i8** @ETH_HSI_VER_MAJOR, align 8
  %228 = load i8*, i8** @ETH_HSI_VER_MINOR, align 8
  %229 = load %struct.pf_vf_pfdev_info*, %struct.pf_vf_pfdev_info** %5, align 8
  %230 = getelementptr inbounds %struct.pf_vf_pfdev_info, %struct.pf_vf_pfdev_info* %229, i32 0, i32 1
  %231 = load i8*, i8** %230, align 8
  %232 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_NOTICE(%struct.ecore_hwfn* %220, i32 0, i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.2, i64 0, i64 0), i8* %223, i32 %226, i8* %227, i8* %228, i8* %231)
  %233 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %233, i32* %11, align 4
  br label %412

234:                                              ; preds = %213, %208
  %235 = load %struct.pf_vf_pfdev_info*, %struct.pf_vf_pfdev_info** %5, align 8
  %236 = getelementptr inbounds %struct.pf_vf_pfdev_info, %struct.pf_vf_pfdev_info* %235, i32 0, i32 1
  %237 = load i8*, i8** %236, align 8
  %238 = icmp ne i8* %237, null
  br i1 %238, label %260, label %239

239:                                              ; preds = %234
  %240 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %241 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 8
  %244 = load i32, i32* @VFPF_ACQUIRE_CAP_PRE_FP_HSI, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %251

247:                                              ; preds = %239
  %248 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %249 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_NOTICE(%struct.ecore_hwfn* %248, i32 0, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.3, i64 0, i64 0))
  %250 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %250, i32* %11, align 4
  br label %412

251:                                              ; preds = %239
  %252 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %253 = call i32 (%struct.ecore_hwfn*, i8*, ...) @DP_INFO(%struct.ecore_hwfn* %252, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.4, i64 0, i64 0))
  %254 = load i32, i32* @VFPF_ACQUIRE_CAP_PRE_FP_HSI, align 4
  %255 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %256 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 8
  %259 = or i32 %258, %254
  store i32 %259, i32* %257, align 8
  br label %131

260:                                              ; preds = %234
  %261 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %262 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_NOTICE(%struct.ecore_hwfn* %261, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %263 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %263, i32* %11, align 4
  br label %412

264:                                              ; preds = %201
  %265 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %266 = load %struct.pfvf_acquire_resp_tlv*, %struct.pfvf_acquire_resp_tlv** %4, align 8
  %267 = getelementptr inbounds %struct.pfvf_acquire_resp_tlv, %struct.pfvf_acquire_resp_tlv* %266, i32 0, i32 3
  %268 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = call i32 @DP_ERR(%struct.ecore_hwfn* %265, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i64 %269)
  %271 = load i32, i32* @ECORE_AGAIN, align 4
  store i32 %271, i32* %11, align 4
  br label %412

272:                                              ; preds = %195
  br label %273

273:                                              ; preds = %272, %180
  br label %131

274:                                              ; preds = %131
  %275 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %276 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 8
  %279 = load i32, i32* @VFPF_ACQUIRE_CAP_PRE_FP_HSI, align 4
  %280 = and i32 %278, %279
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %285

282:                                              ; preds = %274
  %283 = load %struct.ecore_vf_iov*, %struct.ecore_vf_iov** %3, align 8
  %284 = getelementptr inbounds %struct.ecore_vf_iov, %struct.ecore_vf_iov* %283, i32 0, i32 0
  store i32 1, i32* %284, align 8
  br label %285

285:                                              ; preds = %282, %274
  %286 = load %struct.pfvf_acquire_resp_tlv*, %struct.pfvf_acquire_resp_tlv** %4, align 8
  %287 = getelementptr inbounds %struct.pfvf_acquire_resp_tlv, %struct.pfvf_acquire_resp_tlv* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.pf_vf_pfdev_info, %struct.pf_vf_pfdev_info* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = load i32, i32* @PFVF_ACQUIRE_CAP_QUEUE_QIDS, align 4
  %291 = and i32 %289, %290
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %306, label %293

293:                                              ; preds = %285
  %294 = load %struct.pfvf_acquire_resp_tlv*, %struct.pfvf_acquire_resp_tlv** %4, align 8
  %295 = getelementptr inbounds %struct.pfvf_acquire_resp_tlv, %struct.pfvf_acquire_resp_tlv* %294, i32 0, i32 2
  %296 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %295, i32 0, i32 1
  %297 = load i64, i64* %296, align 8
  %298 = load %struct.pfvf_acquire_resp_tlv*, %struct.pfvf_acquire_resp_tlv** %4, align 8
  %299 = getelementptr inbounds %struct.pfvf_acquire_resp_tlv, %struct.pfvf_acquire_resp_tlv* %298, i32 0, i32 2
  %300 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %299, i32 0, i32 0
  %301 = load i64, i64* %300, align 8
  %302 = add nsw i64 %297, %301
  %303 = load %struct.pfvf_acquire_resp_tlv*, %struct.pfvf_acquire_resp_tlv** %4, align 8
  %304 = getelementptr inbounds %struct.pfvf_acquire_resp_tlv, %struct.pfvf_acquire_resp_tlv* %303, i32 0, i32 2
  %305 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %304, i32 0, i32 2
  store i64 %302, i64* %305, align 8
  br label %306

306:                                              ; preds = %293, %285
  %307 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %308 = load %struct.pfvf_acquire_resp_tlv*, %struct.pfvf_acquire_resp_tlv** %4, align 8
  %309 = getelementptr inbounds %struct.pfvf_acquire_resp_tlv, %struct.pfvf_acquire_resp_tlv* %308, i32 0, i32 2
  %310 = call i32 @OSAL_VF_UPDATE_ACQUIRE_RESC_RESP(%struct.ecore_hwfn* %307, %struct.TYPE_13__* %309)
  store i32 %310, i32* %11, align 4
  %311 = load i32, i32* %11, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %318

313:                                              ; preds = %306
  %314 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %315 = load i32, i32* %11, align 4
  %316 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_NOTICE(%struct.ecore_hwfn* %314, i32 1, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0), i32 %315)
  %317 = load i32, i32* @ECORE_AGAIN, align 4
  store i32 %317, i32* %11, align 4
  br label %412

318:                                              ; preds = %306
  %319 = load %struct.pfvf_acquire_resp_tlv*, %struct.pfvf_acquire_resp_tlv** %4, align 8
  %320 = getelementptr inbounds %struct.pfvf_acquire_resp_tlv, %struct.pfvf_acquire_resp_tlv* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 8
  %322 = load %struct.ecore_vf_iov*, %struct.ecore_vf_iov** %3, align 8
  %323 = getelementptr inbounds %struct.ecore_vf_iov, %struct.ecore_vf_iov* %322, i32 0, i32 1
  %324 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %323, i32 0, i32 0
  store i32 %321, i32* %324, align 4
  %325 = load %struct.pfvf_acquire_resp_tlv*, %struct.pfvf_acquire_resp_tlv** %4, align 8
  %326 = getelementptr inbounds %struct.pfvf_acquire_resp_tlv, %struct.pfvf_acquire_resp_tlv* %325, i32 0, i32 0
  %327 = getelementptr inbounds %struct.pf_vf_pfdev_info, %struct.pf_vf_pfdev_info* %326, i32 0, i32 5
  %328 = load i32, i32* %327, align 8
  %329 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %330 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %329, i32 0, i32 0
  %331 = load %struct.TYPE_14__*, %struct.TYPE_14__** %330, align 8
  %332 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %331, i32 0, i32 3
  store i32 %328, i32* %332, align 8
  %333 = load %struct.pfvf_acquire_resp_tlv*, %struct.pfvf_acquire_resp_tlv** %4, align 8
  %334 = getelementptr inbounds %struct.pfvf_acquire_resp_tlv, %struct.pfvf_acquire_resp_tlv* %333, i32 0, i32 0
  %335 = getelementptr inbounds %struct.pf_vf_pfdev_info, %struct.pf_vf_pfdev_info* %334, i32 0, i32 4
  %336 = load i64, i64* %335, align 8
  %337 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %338 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %337, i32 0, i32 0
  %339 = load %struct.TYPE_14__*, %struct.TYPE_14__** %338, align 8
  %340 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %339, i32 0, i32 2
  store i64 %336, i64* %340, align 8
  %341 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %342 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %343 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %342, i32 0, i32 0
  %344 = load %struct.TYPE_14__*, %struct.TYPE_14__** %343, align 8
  %345 = call i64 @ECORE_IS_BB(%struct.TYPE_14__* %344)
  %346 = icmp ne i64 %345, 0
  %347 = zext i1 %346 to i64
  %348 = select i1 %346, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0)
  %349 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %350 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %349, i32 0, i32 0
  %351 = load %struct.TYPE_14__*, %struct.TYPE_14__** %350, align 8
  %352 = call i64 @CHIP_REV_IS_A0(%struct.TYPE_14__* %351)
  %353 = icmp ne i64 %352, 0
  %354 = zext i1 %353 to i64
  %355 = select i1 %353, i32 0, i32 1
  %356 = call i32 (%struct.ecore_hwfn*, i8*, ...) @DP_INFO(%struct.ecore_hwfn* %341, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i8* %348, i32 %355)
  %357 = load %struct.pf_vf_pfdev_info*, %struct.pf_vf_pfdev_info** %5, align 8
  %358 = getelementptr inbounds %struct.pf_vf_pfdev_info, %struct.pf_vf_pfdev_info* %357, i32 0, i32 3
  %359 = load i32, i32* %358, align 4
  %360 = and i32 %359, 65535
  %361 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %362 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %361, i32 0, i32 0
  %363 = load %struct.TYPE_14__*, %struct.TYPE_14__** %362, align 8
  %364 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %363, i32 0, i32 0
  store i32 %360, i32* %364, align 8
  %365 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %366 = call i64 @IS_LEAD_HWFN(%struct.ecore_hwfn* %365)
  %367 = icmp ne i64 %366, 0
  br i1 %367, label %368, label %384

368:                                              ; preds = %318
  %369 = load %struct.pfvf_acquire_resp_tlv*, %struct.pfvf_acquire_resp_tlv** %4, align 8
  %370 = getelementptr inbounds %struct.pfvf_acquire_resp_tlv, %struct.pfvf_acquire_resp_tlv* %369, i32 0, i32 0
  %371 = getelementptr inbounds %struct.pf_vf_pfdev_info, %struct.pf_vf_pfdev_info* %370, i32 0, i32 0
  %372 = load i32, i32* %371, align 8
  %373 = load i32, i32* @PFVF_ACQUIRE_CAP_100G, align 4
  %374 = and i32 %372, %373
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %383

376:                                              ; preds = %368
  %377 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %378 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_NOTICE(%struct.ecore_hwfn* %377, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  %379 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %380 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %379, i32 0, i32 0
  %381 = load %struct.TYPE_14__*, %struct.TYPE_14__** %380, align 8
  %382 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %381, i32 0, i32 1
  store i32 2, i32* %382, align 4
  br label %383

383:                                              ; preds = %376, %368
  br label %384

384:                                              ; preds = %383, %318
  %385 = load i8*, i8** @ETH_HSI_VER_MINOR, align 8
  %386 = ptrtoint i8* %385 to i32
  store i32 %386, i32* %12, align 4
  %387 = load %struct.ecore_vf_iov*, %struct.ecore_vf_iov** %3, align 8
  %388 = getelementptr inbounds %struct.ecore_vf_iov, %struct.ecore_vf_iov* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 8
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %411, label %391

391:                                              ; preds = %384
  %392 = load i32, i32* %12, align 4
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %394, label %411

394:                                              ; preds = %391
  %395 = load %struct.pfvf_acquire_resp_tlv*, %struct.pfvf_acquire_resp_tlv** %4, align 8
  %396 = getelementptr inbounds %struct.pfvf_acquire_resp_tlv, %struct.pfvf_acquire_resp_tlv* %395, i32 0, i32 0
  %397 = getelementptr inbounds %struct.pf_vf_pfdev_info, %struct.pf_vf_pfdev_info* %396, i32 0, i32 2
  %398 = load i32, i32* %397, align 8
  %399 = sext i32 %398 to i64
  %400 = inttoptr i64 %399 to i8*
  %401 = load i8*, i8** @ETH_HSI_VER_MINOR, align 8
  %402 = icmp ult i8* %400, %401
  br i1 %402, label %403, label %411

403:                                              ; preds = %394
  %404 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %405 = load i8*, i8** @ETH_HSI_VER_MAJOR, align 8
  %406 = load %struct.pfvf_acquire_resp_tlv*, %struct.pfvf_acquire_resp_tlv** %4, align 8
  %407 = getelementptr inbounds %struct.pfvf_acquire_resp_tlv, %struct.pfvf_acquire_resp_tlv* %406, i32 0, i32 0
  %408 = getelementptr inbounds %struct.pf_vf_pfdev_info, %struct.pf_vf_pfdev_info* %407, i32 0, i32 2
  %409 = load i32, i32* %408, align 8
  %410 = call i32 (%struct.ecore_hwfn*, i8*, ...) @DP_INFO(%struct.ecore_hwfn* %404, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.12, i64 0, i64 0), i8* %405, i32 %409)
  br label %411

411:                                              ; preds = %403, %394, %391, %384
  br label %412

412:                                              ; preds = %411, %313, %264, %260, %247, %219, %151
  %413 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %414 = load i32, i32* %11, align 4
  %415 = call i32 @ecore_vf_pf_req_end(%struct.ecore_hwfn* %413, i32 %414)
  %416 = load i32, i32* %11, align 4
  ret i32 %416
}

declare dso_local %struct.vfpf_acquire_tlv* @ecore_vf_pf_prep(%struct.ecore_hwfn*, i32, i32) #1

declare dso_local i32 @OSAL_MEMSET(%struct.ecore_vf_acquire_sw_info*, i32, i32) #1

declare dso_local i32 @OSAL_VF_FILL_ACQUIRE_RESC_REQ(%struct.ecore_hwfn*, %struct.vf_pf_resc_request*, %struct.ecore_vf_acquire_sw_info*) #1

declare dso_local i32 @ecore_add_tlv(i32*, i32, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*) #1

declare dso_local i32 @ecore_send_msg2pf(%struct.ecore_hwfn*, i64*, i32) #1

declare dso_local i32 @OSAL_MEMCPY(i32*, %struct.pfvf_acquire_resp_tlv*, i32) #1

declare dso_local i32 @ecore_vf_pf_acquire_reduce_resc(%struct.ecore_hwfn*, %struct.vf_pf_resc_request*, %struct.TYPE_13__*) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, ...) #1

declare dso_local i32 @DP_INFO(%struct.ecore_hwfn*, i8*, ...) #1

declare dso_local i32 @DP_ERR(%struct.ecore_hwfn*, i8*, i64) #1

declare dso_local i32 @OSAL_VF_UPDATE_ACQUIRE_RESC_RESP(%struct.ecore_hwfn*, %struct.TYPE_13__*) #1

declare dso_local i64 @ECORE_IS_BB(%struct.TYPE_14__*) #1

declare dso_local i64 @CHIP_REV_IS_A0(%struct.TYPE_14__*) #1

declare dso_local i64 @IS_LEAD_HWFN(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_vf_pf_req_end(%struct.ecore_hwfn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
