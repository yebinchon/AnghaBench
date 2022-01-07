; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_vf_mbx_start_rxq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_vf_mbx_start_rxq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_queue_cid = type { i32 }
%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }
%struct.ecore_vf_info = type { i32, i64, i32, i32, i32, %struct.ecore_vf_queue*, %struct.ecore_iov_vf_mbx }
%struct.ecore_vf_queue = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32, %struct.ecore_queue_cid* }
%struct.ecore_iov_vf_mbx = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.vfpf_start_rxq_tlv }
%struct.vfpf_start_rxq_tlv = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.ecore_queue_start_common_params = type { i64, i32, %struct.ecore_sb_info*, i64, i32 }
%struct.ecore_sb_info = type { i64, i64, i64, i32, i32 }
%struct.ecore_queue_cid_vf_params = type { i64, i64, i64, i32, i32 }

@PFVF_STATUS_NO_RESOURCE = common dso_local global i64 0, align 8
@ECORE_IOV_VALIDATE_Q_DISABLE = common dso_local global i32 0, align 4
@ECORE_IOV_QID_INVALID = common dso_local global i64 0, align 8
@OSAL_NULL = common dso_local global %struct.ecore_queue_cid* null, align 8
@ECORE_QCID_LEGACY_VF_RX_PROD = common dso_local global i64 0, align 8
@GTT_BAR0_MAP_REG_MSDM_RAM = common dso_local global i64 0, align 8
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@PFVF_STATUS_FAILURE = common dso_local global i64 0, align 8
@PFVF_STATUS_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_vf_info*)* @ecore_iov_vf_mbx_start_rxq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_iov_vf_mbx_start_rxq(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, %struct.ecore_vf_info* %2) #0 {
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_ptt*, align 8
  %6 = alloca %struct.ecore_vf_info*, align 8
  %7 = alloca %struct.ecore_queue_start_common_params, align 8
  %8 = alloca %struct.ecore_queue_cid_vf_params, align 8
  %9 = alloca %struct.ecore_iov_vf_mbx*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.ecore_vf_queue*, align 8
  %14 = alloca %struct.vfpf_start_rxq_tlv*, align 8
  %15 = alloca %struct.ecore_queue_cid*, align 8
  %16 = alloca %struct.ecore_sb_info, align 8
  %17 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %5, align 8
  store %struct.ecore_vf_info* %2, %struct.ecore_vf_info** %6, align 8
  %18 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %19 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %18, i32 0, i32 6
  store %struct.ecore_iov_vf_mbx* %19, %struct.ecore_iov_vf_mbx** %9, align 8
  %20 = load i64, i64* @PFVF_STATUS_NO_RESOURCE, align 8
  store i64 %20, i64* %10, align 8
  store i64 0, i64* %12, align 8
  %21 = load %struct.ecore_iov_vf_mbx*, %struct.ecore_iov_vf_mbx** %9, align 8
  %22 = getelementptr inbounds %struct.ecore_iov_vf_mbx, %struct.ecore_iov_vf_mbx* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store %struct.vfpf_start_rxq_tlv* %24, %struct.vfpf_start_rxq_tlv** %14, align 8
  %25 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %26 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %27 = load %struct.vfpf_start_rxq_tlv*, %struct.vfpf_start_rxq_tlv** %14, align 8
  %28 = getelementptr inbounds %struct.vfpf_start_rxq_tlv, %struct.vfpf_start_rxq_tlv* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* @ECORE_IOV_VALIDATE_Q_DISABLE, align 4
  %31 = call i32 @ecore_iov_validate_rxq(%struct.ecore_hwfn* %25, %struct.ecore_vf_info* %26, i64 %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %3
  %34 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %35 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %36 = load %struct.vfpf_start_rxq_tlv*, %struct.vfpf_start_rxq_tlv** %14, align 8
  %37 = getelementptr inbounds %struct.vfpf_start_rxq_tlv, %struct.vfpf_start_rxq_tlv* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ecore_iov_validate_sb(%struct.ecore_hwfn* %34, %struct.ecore_vf_info* %35, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %33, %3
  br label %179

42:                                               ; preds = %33
  %43 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %44 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %45 = call i64 @ecore_iov_vf_mbx_qid(%struct.ecore_hwfn* %43, %struct.ecore_vf_info* %44, i32 0)
  store i64 %45, i64* %11, align 8
  %46 = load i64, i64* %11, align 8
  %47 = load i64, i64* @ECORE_IOV_QID_INVALID, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %179

50:                                               ; preds = %42
  %51 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %52 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %51, i32 0, i32 5
  %53 = load %struct.ecore_vf_queue*, %struct.ecore_vf_queue** %52, align 8
  %54 = load %struct.vfpf_start_rxq_tlv*, %struct.vfpf_start_rxq_tlv** %14, align 8
  %55 = getelementptr inbounds %struct.vfpf_start_rxq_tlv, %struct.vfpf_start_rxq_tlv* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.ecore_vf_queue, %struct.ecore_vf_queue* %53, i64 %56
  store %struct.ecore_vf_queue* %57, %struct.ecore_vf_queue** %13, align 8
  %58 = load %struct.ecore_vf_queue*, %struct.ecore_vf_queue** %13, align 8
  %59 = getelementptr inbounds %struct.ecore_vf_queue, %struct.ecore_vf_queue* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = load i64, i64* %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %63, align 8
  %65 = icmp ne %struct.ecore_queue_cid* %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %50
  br label %179

67:                                               ; preds = %50
  %68 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %69 = call i64 @ecore_vf_calculate_legacy(%struct.ecore_vf_info* %68)
  store i64 %69, i64* %12, align 8
  %70 = call i32 @OSAL_MEMSET(%struct.ecore_queue_start_common_params* %7, i32 0, i32 40)
  %71 = load %struct.ecore_vf_queue*, %struct.ecore_vf_queue** %13, align 8
  %72 = getelementptr inbounds %struct.ecore_vf_queue, %struct.ecore_vf_queue* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.ecore_queue_start_common_params, %struct.ecore_queue_start_common_params* %7, i32 0, i32 0
  store i64 %73, i64* %74, align 8
  %75 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %76 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = getelementptr inbounds %struct.ecore_queue_start_common_params, %struct.ecore_queue_start_common_params* %7, i32 0, i32 4
  store i32 %77, i32* %78, align 8
  %79 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %80 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %81, 16
  %83 = getelementptr inbounds %struct.ecore_queue_start_common_params, %struct.ecore_queue_start_common_params* %7, i32 0, i32 3
  store i64 %82, i64* %83, align 8
  %84 = call i32 @OSAL_MEM_ZERO(%struct.ecore_sb_info* %16, i32 32)
  %85 = load %struct.vfpf_start_rxq_tlv*, %struct.vfpf_start_rxq_tlv** %14, align 8
  %86 = getelementptr inbounds %struct.vfpf_start_rxq_tlv, %struct.vfpf_start_rxq_tlv* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.ecore_sb_info, %struct.ecore_sb_info* %16, i32 0, i32 4
  store i32 %87, i32* %88, align 4
  %89 = getelementptr inbounds %struct.ecore_queue_start_common_params, %struct.ecore_queue_start_common_params* %7, i32 0, i32 2
  store %struct.ecore_sb_info* %16, %struct.ecore_sb_info** %89, align 8
  %90 = load %struct.vfpf_start_rxq_tlv*, %struct.vfpf_start_rxq_tlv** %14, align 8
  %91 = getelementptr inbounds %struct.vfpf_start_rxq_tlv, %struct.vfpf_start_rxq_tlv* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 8
  %93 = getelementptr inbounds %struct.ecore_queue_start_common_params, %struct.ecore_queue_start_common_params* %7, i32 0, i32 1
  store i32 %92, i32* %93, align 8
  %94 = bitcast %struct.ecore_queue_cid_vf_params* %8 to %struct.ecore_sb_info*
  %95 = call i32 @OSAL_MEM_ZERO(%struct.ecore_sb_info* %94, i32 32)
  %96 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %97 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds %struct.ecore_queue_cid_vf_params, %struct.ecore_queue_cid_vf_params* %8, i32 0, i32 3
  store i32 %98, i32* %99, align 8
  %100 = load %struct.vfpf_start_rxq_tlv*, %struct.vfpf_start_rxq_tlv** %14, align 8
  %101 = getelementptr inbounds %struct.vfpf_start_rxq_tlv, %struct.vfpf_start_rxq_tlv* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds %struct.ecore_queue_cid_vf_params, %struct.ecore_queue_cid_vf_params* %8, i32 0, i32 0
  store i64 %102, i64* %103, align 8
  %104 = load i64, i64* %12, align 8
  %105 = getelementptr inbounds %struct.ecore_queue_cid_vf_params, %struct.ecore_queue_cid_vf_params* %8, i32 0, i32 1
  store i64 %104, i64* %105, align 8
  %106 = load i64, i64* %11, align 8
  %107 = getelementptr inbounds %struct.ecore_queue_cid_vf_params, %struct.ecore_queue_cid_vf_params* %8, i32 0, i32 2
  store i64 %106, i64* %107, align 8
  %108 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %109 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %110 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = bitcast %struct.ecore_queue_cid_vf_params* %8 to %struct.ecore_sb_info*
  %113 = call %struct.ecore_queue_cid* @ecore_eth_queue_to_cid(%struct.ecore_hwfn* %108, i32 %111, %struct.ecore_queue_start_common_params* %7, i32 1, %struct.ecore_sb_info* %112)
  store %struct.ecore_queue_cid* %113, %struct.ecore_queue_cid** %15, align 8
  %114 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %15, align 8
  %115 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** @OSAL_NULL, align 8
  %116 = icmp eq %struct.ecore_queue_cid* %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %67
  br label %179

118:                                              ; preds = %67
  %119 = load i64, i64* %12, align 8
  %120 = load i64, i64* @ECORE_QCID_LEGACY_VF_RX_PROD, align 8
  %121 = and i64 %119, %120
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %135, label %123

123:                                              ; preds = %118
  %124 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %125 = load i64, i64* @GTT_BAR0_MAP_REG_MSDM_RAM, align 8
  %126 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %127 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.vfpf_start_rxq_tlv*, %struct.vfpf_start_rxq_tlv** %14, align 8
  %130 = getelementptr inbounds %struct.vfpf_start_rxq_tlv, %struct.vfpf_start_rxq_tlv* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = call i64 @MSTORM_ETH_VF_PRODS_OFFSET(i64 %128, i64 %131)
  %133 = add nsw i64 %125, %132
  %134 = call i32 @REG_WR(%struct.ecore_hwfn* %124, i64 %133, i32 0)
  br label %135

135:                                              ; preds = %123, %118
  %136 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %137 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %15, align 8
  %138 = load %struct.vfpf_start_rxq_tlv*, %struct.vfpf_start_rxq_tlv** %14, align 8
  %139 = getelementptr inbounds %struct.vfpf_start_rxq_tlv, %struct.vfpf_start_rxq_tlv* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.vfpf_start_rxq_tlv*, %struct.vfpf_start_rxq_tlv** %14, align 8
  %142 = getelementptr inbounds %struct.vfpf_start_rxq_tlv, %struct.vfpf_start_rxq_tlv* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.vfpf_start_rxq_tlv*, %struct.vfpf_start_rxq_tlv** %14, align 8
  %145 = getelementptr inbounds %struct.vfpf_start_rxq_tlv, %struct.vfpf_start_rxq_tlv* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.vfpf_start_rxq_tlv*, %struct.vfpf_start_rxq_tlv** %14, align 8
  %148 = getelementptr inbounds %struct.vfpf_start_rxq_tlv, %struct.vfpf_start_rxq_tlv* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @ecore_eth_rxq_start_ramrod(%struct.ecore_hwfn* %136, %struct.ecore_queue_cid* %137, i32 %140, i32 %143, i32 %146, i32 %149)
  store i32 %150, i32* %17, align 4
  %151 = load i32, i32* %17, align 4
  %152 = load i32, i32* @ECORE_SUCCESS, align 4
  %153 = icmp ne i32 %151, %152
  br i1 %153, label %154, label %159

154:                                              ; preds = %135
  %155 = load i64, i64* @PFVF_STATUS_FAILURE, align 8
  store i64 %155, i64* %10, align 8
  %156 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %157 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %15, align 8
  %158 = call i32 @ecore_eth_queue_cid_release(%struct.ecore_hwfn* %156, %struct.ecore_queue_cid* %157)
  br label %178

159:                                              ; preds = %135
  %160 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %15, align 8
  %161 = load %struct.ecore_vf_queue*, %struct.ecore_vf_queue** %13, align 8
  %162 = getelementptr inbounds %struct.ecore_vf_queue, %struct.ecore_vf_queue* %161, i32 0, i32 0
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %162, align 8
  %164 = load i64, i64* %11, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 1
  store %struct.ecore_queue_cid* %160, %struct.ecore_queue_cid** %166, align 8
  %167 = load %struct.ecore_vf_queue*, %struct.ecore_vf_queue** %13, align 8
  %168 = getelementptr inbounds %struct.ecore_vf_queue, %struct.ecore_vf_queue* %167, i32 0, i32 0
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %168, align 8
  %170 = load i64, i64* %11, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 0
  store i32 0, i32* %172, align 8
  %173 = load i64, i64* @PFVF_STATUS_SUCCESS, align 8
  store i64 %173, i64* %10, align 8
  %174 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %175 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %175, align 8
  br label %178

178:                                              ; preds = %159, %154
  br label %179

179:                                              ; preds = %178, %117, %66, %49, %41
  %180 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %181 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %182 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %183 = load i64, i64* %10, align 8
  %184 = load i64, i64* %12, align 8
  %185 = load i64, i64* @ECORE_QCID_LEGACY_VF_RX_PROD, align 8
  %186 = and i64 %184, %185
  %187 = icmp ne i64 %186, 0
  %188 = xor i1 %187, true
  %189 = xor i1 %188, true
  %190 = zext i1 %189 to i32
  %191 = call i32 @ecore_iov_vf_mbx_start_rxq_resp(%struct.ecore_hwfn* %180, %struct.ecore_ptt* %181, %struct.ecore_vf_info* %182, i64 %183, i32 %190)
  ret void
}

declare dso_local i32 @ecore_iov_validate_rxq(%struct.ecore_hwfn*, %struct.ecore_vf_info*, i64, i32) #1

declare dso_local i32 @ecore_iov_validate_sb(%struct.ecore_hwfn*, %struct.ecore_vf_info*, i32) #1

declare dso_local i64 @ecore_iov_vf_mbx_qid(%struct.ecore_hwfn*, %struct.ecore_vf_info*, i32) #1

declare dso_local i64 @ecore_vf_calculate_legacy(%struct.ecore_vf_info*) #1

declare dso_local i32 @OSAL_MEMSET(%struct.ecore_queue_start_common_params*, i32, i32) #1

declare dso_local i32 @OSAL_MEM_ZERO(%struct.ecore_sb_info*, i32) #1

declare dso_local %struct.ecore_queue_cid* @ecore_eth_queue_to_cid(%struct.ecore_hwfn*, i32, %struct.ecore_queue_start_common_params*, i32, %struct.ecore_sb_info*) #1

declare dso_local i32 @REG_WR(%struct.ecore_hwfn*, i64, i32) #1

declare dso_local i64 @MSTORM_ETH_VF_PRODS_OFFSET(i64, i64) #1

declare dso_local i32 @ecore_eth_rxq_start_ramrod(%struct.ecore_hwfn*, %struct.ecore_queue_cid*, i32, i32, i32, i32) #1

declare dso_local i32 @ecore_eth_queue_cid_release(%struct.ecore_hwfn*, %struct.ecore_queue_cid*) #1

declare dso_local i32 @ecore_iov_vf_mbx_start_rxq_resp(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_vf_info*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
