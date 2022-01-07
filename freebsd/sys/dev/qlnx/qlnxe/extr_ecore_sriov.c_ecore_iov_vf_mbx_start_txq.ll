; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_vf_mbx_start_txq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_vf_mbx_start_txq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_queue_cid = type { i32 }
%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }
%struct.ecore_vf_info = type { i32, i32, i64, i32, %struct.ecore_vf_queue*, %struct.ecore_iov_vf_mbx }
%struct.ecore_vf_queue = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, %struct.ecore_queue_cid* }
%struct.ecore_iov_vf_mbx = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.vfpf_start_txq_tlv }
%struct.vfpf_start_txq_tlv = type { i64, i32, i32, i32, i32 }
%struct.ecore_queue_start_common_params = type { i32, %struct.ecore_sb_info*, i64, i32, i32 }
%struct.ecore_sb_info = type { i64, i64, i64, i32, i32 }
%struct.ecore_queue_cid_vf_params = type { i64, i64, i64, i32, i32 }

@PFVF_STATUS_NO_RESOURCE = common dso_local global i64 0, align 8
@ECORE_IOV_VALIDATE_Q_NA = common dso_local global i32 0, align 4
@ECORE_IOV_QID_INVALID = common dso_local global i64 0, align 8
@OSAL_NULL = common dso_local global %struct.ecore_queue_cid* null, align 8
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@PFVF_STATUS_FAILURE = common dso_local global i64 0, align 8
@PFVF_STATUS_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_vf_info*)* @ecore_iov_vf_mbx_start_txq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_iov_vf_mbx_start_txq(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, %struct.ecore_vf_info* %2) #0 {
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_ptt*, align 8
  %6 = alloca %struct.ecore_vf_info*, align 8
  %7 = alloca %struct.ecore_queue_start_common_params, align 8
  %8 = alloca %struct.ecore_queue_cid_vf_params, align 8
  %9 = alloca %struct.ecore_iov_vf_mbx*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.ecore_vf_queue*, align 8
  %12 = alloca %struct.vfpf_start_txq_tlv*, align 8
  %13 = alloca %struct.ecore_queue_cid*, align 8
  %14 = alloca %struct.ecore_sb_info, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %5, align 8
  store %struct.ecore_vf_info* %2, %struct.ecore_vf_info** %6, align 8
  %20 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %21 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %20, i32 0, i32 5
  store %struct.ecore_iov_vf_mbx* %21, %struct.ecore_iov_vf_mbx** %9, align 8
  %22 = load i64, i64* @PFVF_STATUS_NO_RESOURCE, align 8
  store i64 %22, i64* %10, align 8
  store i32 0, i32* %17, align 4
  %23 = call i32 @OSAL_MEMSET(%struct.ecore_queue_start_common_params* %7, i32 0, i32 32)
  %24 = load %struct.ecore_iov_vf_mbx*, %struct.ecore_iov_vf_mbx** %9, align 8
  %25 = getelementptr inbounds %struct.ecore_iov_vf_mbx, %struct.ecore_iov_vf_mbx* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store %struct.vfpf_start_txq_tlv* %27, %struct.vfpf_start_txq_tlv** %12, align 8
  %28 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %29 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %30 = load %struct.vfpf_start_txq_tlv*, %struct.vfpf_start_txq_tlv** %12, align 8
  %31 = getelementptr inbounds %struct.vfpf_start_txq_tlv, %struct.vfpf_start_txq_tlv* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* @ECORE_IOV_VALIDATE_Q_NA, align 4
  %34 = call i32 @ecore_iov_validate_txq(%struct.ecore_hwfn* %28, %struct.ecore_vf_info* %29, i64 %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %3
  %37 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %38 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %39 = load %struct.vfpf_start_txq_tlv*, %struct.vfpf_start_txq_tlv** %12, align 8
  %40 = getelementptr inbounds %struct.vfpf_start_txq_tlv, %struct.vfpf_start_txq_tlv* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ecore_iov_validate_sb(%struct.ecore_hwfn* %37, %struct.ecore_vf_info* %38, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %36, %3
  br label %163

45:                                               ; preds = %36
  %46 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %47 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %48 = call i64 @ecore_iov_vf_mbx_qid(%struct.ecore_hwfn* %46, %struct.ecore_vf_info* %47, i32 1)
  store i64 %48, i64* %15, align 8
  %49 = load i64, i64* %15, align 8
  %50 = load i64, i64* @ECORE_IOV_QID_INVALID, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %163

53:                                               ; preds = %45
  %54 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %55 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %54, i32 0, i32 4
  %56 = load %struct.ecore_vf_queue*, %struct.ecore_vf_queue** %55, align 8
  %57 = load %struct.vfpf_start_txq_tlv*, %struct.vfpf_start_txq_tlv** %12, align 8
  %58 = getelementptr inbounds %struct.vfpf_start_txq_tlv, %struct.vfpf_start_txq_tlv* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.ecore_vf_queue, %struct.ecore_vf_queue* %56, i64 %59
  store %struct.ecore_vf_queue* %60, %struct.ecore_vf_queue** %11, align 8
  %61 = load %struct.ecore_vf_queue*, %struct.ecore_vf_queue** %11, align 8
  %62 = getelementptr inbounds %struct.ecore_vf_queue, %struct.ecore_vf_queue* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = load i64, i64* %15, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %66, align 8
  %68 = icmp ne %struct.ecore_queue_cid* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %53
  br label %163

70:                                               ; preds = %53
  %71 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %72 = call i64 @ecore_vf_calculate_legacy(%struct.ecore_vf_info* %71)
  store i64 %72, i64* %16, align 8
  %73 = load %struct.ecore_vf_queue*, %struct.ecore_vf_queue** %11, align 8
  %74 = getelementptr inbounds %struct.ecore_vf_queue, %struct.ecore_vf_queue* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = getelementptr inbounds %struct.ecore_queue_start_common_params, %struct.ecore_queue_start_common_params* %7, i32 0, i32 4
  store i32 %75, i32* %76, align 4
  %77 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %78 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = getelementptr inbounds %struct.ecore_queue_start_common_params, %struct.ecore_queue_start_common_params* %7, i32 0, i32 3
  store i32 %79, i32* %80, align 8
  %81 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %82 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %83, 16
  %85 = getelementptr inbounds %struct.ecore_queue_start_common_params, %struct.ecore_queue_start_common_params* %7, i32 0, i32 2
  store i64 %84, i64* %85, align 8
  %86 = call i32 @OSAL_MEM_ZERO(%struct.ecore_sb_info* %14, i32 32)
  %87 = load %struct.vfpf_start_txq_tlv*, %struct.vfpf_start_txq_tlv** %12, align 8
  %88 = getelementptr inbounds %struct.vfpf_start_txq_tlv, %struct.vfpf_start_txq_tlv* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.ecore_sb_info, %struct.ecore_sb_info* %14, i32 0, i32 4
  store i32 %89, i32* %90, align 4
  %91 = getelementptr inbounds %struct.ecore_queue_start_common_params, %struct.ecore_queue_start_common_params* %7, i32 0, i32 1
  store %struct.ecore_sb_info* %14, %struct.ecore_sb_info** %91, align 8
  %92 = load %struct.vfpf_start_txq_tlv*, %struct.vfpf_start_txq_tlv** %12, align 8
  %93 = getelementptr inbounds %struct.vfpf_start_txq_tlv, %struct.vfpf_start_txq_tlv* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = getelementptr inbounds %struct.ecore_queue_start_common_params, %struct.ecore_queue_start_common_params* %7, i32 0, i32 0
  store i32 %94, i32* %95, align 8
  %96 = bitcast %struct.ecore_queue_cid_vf_params* %8 to %struct.ecore_sb_info*
  %97 = call i32 @OSAL_MEM_ZERO(%struct.ecore_sb_info* %96, i32 32)
  %98 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %99 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = getelementptr inbounds %struct.ecore_queue_cid_vf_params, %struct.ecore_queue_cid_vf_params* %8, i32 0, i32 3
  store i32 %100, i32* %101, align 8
  %102 = load %struct.vfpf_start_txq_tlv*, %struct.vfpf_start_txq_tlv** %12, align 8
  %103 = getelementptr inbounds %struct.vfpf_start_txq_tlv, %struct.vfpf_start_txq_tlv* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds %struct.ecore_queue_cid_vf_params, %struct.ecore_queue_cid_vf_params* %8, i32 0, i32 0
  store i64 %104, i64* %105, align 8
  %106 = load i64, i64* %16, align 8
  %107 = getelementptr inbounds %struct.ecore_queue_cid_vf_params, %struct.ecore_queue_cid_vf_params* %8, i32 0, i32 1
  store i64 %106, i64* %107, align 8
  %108 = load i64, i64* %15, align 8
  %109 = getelementptr inbounds %struct.ecore_queue_cid_vf_params, %struct.ecore_queue_cid_vf_params* %8, i32 0, i32 2
  store i64 %108, i64* %109, align 8
  %110 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %111 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %112 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = bitcast %struct.ecore_queue_cid_vf_params* %8 to %struct.ecore_sb_info*
  %115 = call %struct.ecore_queue_cid* @ecore_eth_queue_to_cid(%struct.ecore_hwfn* %110, i32 %113, %struct.ecore_queue_start_common_params* %7, i32 0, %struct.ecore_sb_info* %114)
  store %struct.ecore_queue_cid* %115, %struct.ecore_queue_cid** %13, align 8
  %116 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %13, align 8
  %117 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** @OSAL_NULL, align 8
  %118 = icmp eq %struct.ecore_queue_cid* %116, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %70
  br label %163

120:                                              ; preds = %70
  %121 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %122 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %123 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @ecore_get_cm_pq_idx_vf(%struct.ecore_hwfn* %121, i32 %124)
  store i32 %125, i32* %19, align 4
  %126 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %127 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %13, align 8
  %128 = load %struct.vfpf_start_txq_tlv*, %struct.vfpf_start_txq_tlv** %12, align 8
  %129 = getelementptr inbounds %struct.vfpf_start_txq_tlv, %struct.vfpf_start_txq_tlv* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.vfpf_start_txq_tlv*, %struct.vfpf_start_txq_tlv** %12, align 8
  %132 = getelementptr inbounds %struct.vfpf_start_txq_tlv, %struct.vfpf_start_txq_tlv* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* %19, align 4
  %135 = call i32 @ecore_eth_txq_start_ramrod(%struct.ecore_hwfn* %126, %struct.ecore_queue_cid* %127, i32 %130, i32 %133, i32 %134)
  store i32 %135, i32* %18, align 4
  %136 = load i32, i32* %18, align 4
  %137 = load i32, i32* @ECORE_SUCCESS, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %139, label %144

139:                                              ; preds = %120
  %140 = load i64, i64* @PFVF_STATUS_FAILURE, align 8
  store i64 %140, i64* %10, align 8
  %141 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %142 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %13, align 8
  %143 = call i32 @ecore_eth_queue_cid_release(%struct.ecore_hwfn* %141, %struct.ecore_queue_cid* %142)
  br label %162

144:                                              ; preds = %120
  %145 = load i64, i64* @PFVF_STATUS_SUCCESS, align 8
  store i64 %145, i64* %10, align 8
  %146 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %13, align 8
  %147 = load %struct.ecore_vf_queue*, %struct.ecore_vf_queue** %11, align 8
  %148 = getelementptr inbounds %struct.ecore_vf_queue, %struct.ecore_vf_queue* %147, i32 0, i32 0
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %148, align 8
  %150 = load i64, i64* %15, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 1
  store %struct.ecore_queue_cid* %146, %struct.ecore_queue_cid** %152, align 8
  %153 = load %struct.ecore_vf_queue*, %struct.ecore_vf_queue** %11, align 8
  %154 = getelementptr inbounds %struct.ecore_vf_queue, %struct.ecore_vf_queue* %153, i32 0, i32 0
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %154, align 8
  %156 = load i64, i64* %15, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  store i32 1, i32* %158, align 8
  %159 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %13, align 8
  %160 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  store i32 %161, i32* %17, align 4
  br label %162

162:                                              ; preds = %144, %139
  br label %163

163:                                              ; preds = %162, %119, %69, %52, %44
  %164 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %165 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %166 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %167 = load i32, i32* %17, align 4
  %168 = load i64, i64* %10, align 8
  %169 = call i32 @ecore_iov_vf_mbx_start_txq_resp(%struct.ecore_hwfn* %164, %struct.ecore_ptt* %165, %struct.ecore_vf_info* %166, i32 %167, i64 %168)
  ret void
}

declare dso_local i32 @OSAL_MEMSET(%struct.ecore_queue_start_common_params*, i32, i32) #1

declare dso_local i32 @ecore_iov_validate_txq(%struct.ecore_hwfn*, %struct.ecore_vf_info*, i64, i32) #1

declare dso_local i32 @ecore_iov_validate_sb(%struct.ecore_hwfn*, %struct.ecore_vf_info*, i32) #1

declare dso_local i64 @ecore_iov_vf_mbx_qid(%struct.ecore_hwfn*, %struct.ecore_vf_info*, i32) #1

declare dso_local i64 @ecore_vf_calculate_legacy(%struct.ecore_vf_info*) #1

declare dso_local i32 @OSAL_MEM_ZERO(%struct.ecore_sb_info*, i32) #1

declare dso_local %struct.ecore_queue_cid* @ecore_eth_queue_to_cid(%struct.ecore_hwfn*, i32, %struct.ecore_queue_start_common_params*, i32, %struct.ecore_sb_info*) #1

declare dso_local i32 @ecore_get_cm_pq_idx_vf(%struct.ecore_hwfn*, i32) #1

declare dso_local i32 @ecore_eth_txq_start_ramrod(%struct.ecore_hwfn*, %struct.ecore_queue_cid*, i32, i32, i32) #1

declare dso_local i32 @ecore_eth_queue_cid_release(%struct.ecore_hwfn*, %struct.ecore_queue_cid*) #1

declare dso_local i32 @ecore_iov_vf_mbx_start_txq_resp(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_vf_info*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
