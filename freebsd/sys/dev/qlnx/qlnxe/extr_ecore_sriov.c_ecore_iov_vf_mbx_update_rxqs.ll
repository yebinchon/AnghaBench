; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_vf_mbx_update_rxqs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_vf_mbx_update_rxqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }
%struct.ecore_vf_info = type { %struct.TYPE_10__*, i32, %struct.TYPE_8__, %struct.ecore_iov_vf_mbx }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.ecore_queue_cid*, i64 }
%struct.ecore_queue_cid = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.ecore_iov_vf_mbx = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.vfpf_update_rxq_tlv }
%struct.vfpf_update_rxq_tlv = type { i32, i32, i64 }

@ECORE_MAX_VF_CHAINS_PER_PF = common dso_local global i32 0, align 4
@PFVF_STATUS_FAILURE = common dso_local global i64 0, align 8
@VFPF_RXQ_UPD_COMPLETE_CQE_FLAG = common dso_local global i32 0, align 4
@VFPF_RXQ_UPD_COMPLETE_EVENT_FLAG = common dso_local global i32 0, align 4
@ECORE_IOV_QID_INVALID = common dso_local global i64 0, align 8
@VFPF_ACQUIRE_CAP_QUEUE_QIDS = common dso_local global i32 0, align 4
@ECORE_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"VF[%d] supports QIDs but sends multiple queues\0A\00", align 1
@ECORE_IOV_VALIDATE_Q_NA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"VF[%d]: Incorrect Rxqs [%04x, %02x]\0A\00", align 1
@ECORE_SPQ_MODE_EBLOCK = common dso_local global i32 0, align 4
@OSAL_NULL = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@PFVF_STATUS_SUCCESS = common dso_local global i64 0, align 8
@CHANNEL_TLV_UPDATE_RXQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_vf_info*)* @ecore_iov_vf_mbx_update_rxqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_iov_vf_mbx_update_rxqs(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, %struct.ecore_vf_info* %2) #0 {
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_ptt*, align 8
  %6 = alloca %struct.ecore_vf_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ecore_iov_vf_mbx*, align 8
  %11 = alloca %struct.vfpf_update_rxq_tlv*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %5, align 8
  store %struct.ecore_vf_info* %2, %struct.ecore_vf_info** %6, align 8
  %19 = load i32, i32* @ECORE_MAX_VF_CHAINS_PER_PF, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %7, align 8
  %22 = alloca %struct.ecore_queue_cid*, i64 %20, align 16
  store i64 %20, i64* %8, align 8
  store i64 4, i64* %9, align 8
  %23 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %24 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %23, i32 0, i32 3
  store %struct.ecore_iov_vf_mbx* %24, %struct.ecore_iov_vf_mbx** %10, align 8
  %25 = load i64, i64* @PFVF_STATUS_FAILURE, align 8
  store i64 %25, i64* %12, align 8
  %26 = load %struct.ecore_iov_vf_mbx*, %struct.ecore_iov_vf_mbx** %10, align 8
  %27 = getelementptr inbounds %struct.ecore_iov_vf_mbx, %struct.ecore_iov_vf_mbx* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store %struct.vfpf_update_rxq_tlv* %29, %struct.vfpf_update_rxq_tlv** %11, align 8
  %30 = load %struct.vfpf_update_rxq_tlv*, %struct.vfpf_update_rxq_tlv** %11, align 8
  %31 = getelementptr inbounds %struct.vfpf_update_rxq_tlv, %struct.vfpf_update_rxq_tlv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @VFPF_RXQ_UPD_COMPLETE_CQE_FLAG, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %14, align 8
  %40 = load %struct.vfpf_update_rxq_tlv*, %struct.vfpf_update_rxq_tlv** %11, align 8
  %41 = getelementptr inbounds %struct.vfpf_update_rxq_tlv, %struct.vfpf_update_rxq_tlv* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @VFPF_RXQ_UPD_COMPLETE_EVENT_FLAG, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = sext i32 %48 to i64
  store i64 %49, i64* %13, align 8
  %50 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %51 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %52 = call i64 @ecore_iov_vf_mbx_qid(%struct.ecore_hwfn* %50, %struct.ecore_vf_info* %51, i32 0)
  store i64 %52, i64* %15, align 8
  %53 = load i64, i64* %15, align 8
  %54 = load i64, i64* @ECORE_IOV_QID_INVALID, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %3
  br label %191

57:                                               ; preds = %3
  %58 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %59 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @VFPF_ACQUIRE_CAP_QUEUE_QIDS, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %57
  %67 = load %struct.vfpf_update_rxq_tlv*, %struct.vfpf_update_rxq_tlv** %11, align 8
  %68 = getelementptr inbounds %struct.vfpf_update_rxq_tlv, %struct.vfpf_update_rxq_tlv* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 1
  br i1 %70, label %71, label %78

71:                                               ; preds = %66
  %72 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %73 = load i32, i32* @ECORE_MSG_IOV, align 4
  %74 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %75 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 (%struct.ecore_hwfn*, i32, i8*, i32, ...) @DP_VERBOSE(%struct.ecore_hwfn* %72, i32 %73, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %76)
  br label %191

78:                                               ; preds = %66, %57
  %79 = load %struct.vfpf_update_rxq_tlv*, %struct.vfpf_update_rxq_tlv** %11, align 8
  %80 = getelementptr inbounds %struct.vfpf_update_rxq_tlv, %struct.vfpf_update_rxq_tlv* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %17, align 8
  br label %82

82:                                               ; preds = %140, %78
  %83 = load i64, i64* %17, align 8
  %84 = load %struct.vfpf_update_rxq_tlv*, %struct.vfpf_update_rxq_tlv** %11, align 8
  %85 = getelementptr inbounds %struct.vfpf_update_rxq_tlv, %struct.vfpf_update_rxq_tlv* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.vfpf_update_rxq_tlv*, %struct.vfpf_update_rxq_tlv** %11, align 8
  %88 = getelementptr inbounds %struct.vfpf_update_rxq_tlv, %struct.vfpf_update_rxq_tlv* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = add i64 %86, %90
  %92 = icmp ult i64 %83, %91
  br i1 %92, label %93, label %143

93:                                               ; preds = %82
  %94 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %95 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %96 = load i64, i64* %17, align 8
  %97 = load i32, i32* @ECORE_IOV_VALIDATE_Q_NA, align 4
  %98 = call i32 @ecore_iov_validate_rxq(%struct.ecore_hwfn* %94, %struct.ecore_vf_info* %95, i64 %96, i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %126

100:                                              ; preds = %93
  %101 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %102 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %101, i32 0, i32 0
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %102, align 8
  %104 = load i64, i64* %17, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %106, align 8
  %108 = load i64, i64* %15, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %110, align 8
  %112 = icmp ne %struct.ecore_queue_cid* %111, null
  br i1 %112, label %113, label %126

113:                                              ; preds = %100
  %114 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %115 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %114, i32 0, i32 0
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %115, align 8
  %117 = load i64, i64* %17, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %119, align 8
  %121 = load i64, i64* %15, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %139

126:                                              ; preds = %113, %100, %93
  %127 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %128 = load i32, i32* @ECORE_MSG_IOV, align 4
  %129 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %130 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.vfpf_update_rxq_tlv*, %struct.vfpf_update_rxq_tlv** %11, align 8
  %133 = getelementptr inbounds %struct.vfpf_update_rxq_tlv, %struct.vfpf_update_rxq_tlv* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.vfpf_update_rxq_tlv*, %struct.vfpf_update_rxq_tlv** %11, align 8
  %136 = getelementptr inbounds %struct.vfpf_update_rxq_tlv, %struct.vfpf_update_rxq_tlv* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 (%struct.ecore_hwfn*, i32, i8*, i32, ...) @DP_VERBOSE(%struct.ecore_hwfn* %127, i32 %128, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %131, i64 %134, i32 %137)
  br label %191

139:                                              ; preds = %113
  br label %140

140:                                              ; preds = %139
  %141 = load i64, i64* %17, align 8
  %142 = add i64 %141, 1
  store i64 %142, i64* %17, align 8
  br label %82

143:                                              ; preds = %82
  store i64 0, i64* %17, align 8
  br label %144

144:                                              ; preds = %170, %143
  %145 = load i64, i64* %17, align 8
  %146 = load %struct.vfpf_update_rxq_tlv*, %struct.vfpf_update_rxq_tlv** %11, align 8
  %147 = getelementptr inbounds %struct.vfpf_update_rxq_tlv, %struct.vfpf_update_rxq_tlv* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = sext i32 %148 to i64
  %150 = icmp ult i64 %145, %149
  br i1 %150, label %151, label %173

151:                                              ; preds = %144
  %152 = load %struct.vfpf_update_rxq_tlv*, %struct.vfpf_update_rxq_tlv** %11, align 8
  %153 = getelementptr inbounds %struct.vfpf_update_rxq_tlv, %struct.vfpf_update_rxq_tlv* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* %17, align 8
  %156 = add i64 %154, %155
  store i64 %156, i64* %18, align 8
  %157 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %158 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %157, i32 0, i32 0
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %158, align 8
  %160 = load i64, i64* %18, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %162, align 8
  %164 = load i64, i64* %15, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 0
  %167 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %166, align 8
  %168 = load i64, i64* %17, align 8
  %169 = getelementptr inbounds %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %22, i64 %168
  store %struct.ecore_queue_cid* %167, %struct.ecore_queue_cid** %169, align 8
  br label %170

170:                                              ; preds = %151
  %171 = load i64, i64* %17, align 8
  %172 = add i64 %171, 1
  store i64 %172, i64* %17, align 8
  br label %144

173:                                              ; preds = %144
  %174 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %175 = bitcast %struct.ecore_queue_cid** %22 to i8**
  %176 = load %struct.vfpf_update_rxq_tlv*, %struct.vfpf_update_rxq_tlv** %11, align 8
  %177 = getelementptr inbounds %struct.vfpf_update_rxq_tlv, %struct.vfpf_update_rxq_tlv* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = sext i32 %178 to i64
  %180 = load i64, i64* %14, align 8
  %181 = load i64, i64* %13, align 8
  %182 = load i32, i32* @ECORE_SPQ_MODE_EBLOCK, align 4
  %183 = load i32, i32* @OSAL_NULL, align 4
  %184 = call i32 @ecore_sp_eth_rx_queues_update(%struct.ecore_hwfn* %174, i8** %175, i64 %179, i64 %180, i64 %181, i32 %182, i32 %183)
  store i32 %184, i32* %16, align 4
  %185 = load i32, i32* %16, align 4
  %186 = load i32, i32* @ECORE_SUCCESS, align 4
  %187 = icmp ne i32 %185, %186
  br i1 %187, label %188, label %189

188:                                              ; preds = %173
  br label %191

189:                                              ; preds = %173
  %190 = load i64, i64* @PFVF_STATUS_SUCCESS, align 8
  store i64 %190, i64* %12, align 8
  br label %191

191:                                              ; preds = %189, %188, %126, %71, %56
  %192 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %193 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %194 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %195 = load i32, i32* @CHANNEL_TLV_UPDATE_RXQ, align 4
  %196 = load i64, i64* %9, align 8
  %197 = load i64, i64* %12, align 8
  %198 = call i32 @ecore_iov_prepare_resp(%struct.ecore_hwfn* %192, %struct.ecore_ptt* %193, %struct.ecore_vf_info* %194, i32 %195, i64 %196, i64 %197)
  %199 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %199)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @ecore_iov_vf_mbx_qid(%struct.ecore_hwfn*, %struct.ecore_vf_info*, i32) #2

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32, ...) #2

declare dso_local i32 @ecore_iov_validate_rxq(%struct.ecore_hwfn*, %struct.ecore_vf_info*, i64, i32) #2

declare dso_local i32 @ecore_sp_eth_rx_queues_update(%struct.ecore_hwfn*, i8**, i64, i64, i64, i32, i32) #2

declare dso_local i32 @ecore_iov_prepare_resp(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_vf_info*, i32, i64, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
