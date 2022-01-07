; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_vf_pf_get_coalesce.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_vf_pf_get_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_queue_cid = type { i32 }
%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }
%struct.ecore_vf_info = type { %struct.ecore_vf_queue*, i32, %struct.ecore_iov_vf_mbx }
%struct.ecore_vf_queue = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.ecore_queue_cid*, i32 }
%struct.ecore_iov_vf_mbx = type { i32*, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { %struct.vfpf_read_coal_req_tlv }
%struct.vfpf_read_coal_req_tlv = type { i64, i64 }
%struct.pfvf_read_coal_resp_tlv = type { i64 }

@PFVF_STATUS_FAILURE = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@ECORE_IOV_VALIDATE_Q_ENABLE = common dso_local global i32 0, align 4
@ECORE_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"VF[%d]: Invalid Rx queue_id = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"VF[%d]: Invalid Tx queue_id = %d\0A\00", align 1
@MAX_QUEUES_PER_QZONE = common dso_local global i64 0, align 8
@OSAL_NULL = common dso_local global %struct.ecore_queue_cid* null, align 8
@PFVF_STATUS_SUCCESS = common dso_local global i32 0, align 4
@CHANNEL_TLV_COALESCE_READ = common dso_local global i32 0, align 4
@CHANNEL_TLV_LIST_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_vf_info*)* @ecore_iov_vf_pf_get_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_iov_vf_pf_get_coalesce(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, %struct.ecore_vf_info* %2) #0 {
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_ptt*, align 8
  %6 = alloca %struct.ecore_vf_info*, align 8
  %7 = alloca %struct.ecore_iov_vf_mbx*, align 8
  %8 = alloca %struct.pfvf_read_coal_resp_tlv*, align 8
  %9 = alloca %struct.vfpf_read_coal_req_tlv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ecore_vf_queue*, align 8
  %12 = alloca %struct.ecore_queue_cid*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %5, align 8
  store %struct.ecore_vf_info* %2, %struct.ecore_vf_info** %6, align 8
  %18 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %19 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %18, i32 0, i32 2
  store %struct.ecore_iov_vf_mbx* %19, %struct.ecore_iov_vf_mbx** %7, align 8
  %20 = load i32, i32* @PFVF_STATUS_FAILURE, align 4
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %21, i32* %13, align 4
  store i64 0, i64* %14, align 8
  %22 = load %struct.ecore_iov_vf_mbx*, %struct.ecore_iov_vf_mbx** %7, align 8
  %23 = getelementptr inbounds %struct.ecore_iov_vf_mbx, %struct.ecore_iov_vf_mbx* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i32*
  %26 = load %struct.ecore_iov_vf_mbx*, %struct.ecore_iov_vf_mbx** %7, align 8
  %27 = getelementptr inbounds %struct.ecore_iov_vf_mbx, %struct.ecore_iov_vf_mbx* %26, i32 0, i32 0
  store i32* %25, i32** %27, align 8
  %28 = load %struct.ecore_iov_vf_mbx*, %struct.ecore_iov_vf_mbx** %7, align 8
  %29 = getelementptr inbounds %struct.ecore_iov_vf_mbx, %struct.ecore_iov_vf_mbx* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store %struct.vfpf_read_coal_req_tlv* %31, %struct.vfpf_read_coal_req_tlv** %9, align 8
  %32 = load %struct.vfpf_read_coal_req_tlv*, %struct.vfpf_read_coal_req_tlv** %9, align 8
  %33 = getelementptr inbounds %struct.vfpf_read_coal_req_tlv, %struct.vfpf_read_coal_req_tlv* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %15, align 8
  %35 = load %struct.vfpf_read_coal_req_tlv*, %struct.vfpf_read_coal_req_tlv** %9, align 8
  %36 = getelementptr inbounds %struct.vfpf_read_coal_req_tlv, %struct.vfpf_read_coal_req_tlv* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 1, i32 0
  store i32 %40, i32* %17, align 4
  %41 = load i32, i32* %17, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %74

43:                                               ; preds = %3
  %44 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %45 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %46 = load i64, i64* %15, align 8
  %47 = load i32, i32* @ECORE_IOV_VALIDATE_Q_ENABLE, align 4
  %48 = call i32 @ecore_iov_validate_rxq(%struct.ecore_hwfn* %44, %struct.ecore_vf_info* %45, i64 %46, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %43
  %51 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %52 = load i32, i32* @ECORE_MSG_IOV, align 4
  %53 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %54 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i64, i64* %15, align 8
  %57 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %51, i32 %52, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %55, i64 %56)
  br label %142

58:                                               ; preds = %43
  %59 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %60 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %59, i32 0, i32 0
  %61 = load %struct.ecore_vf_queue*, %struct.ecore_vf_queue** %60, align 8
  %62 = load i64, i64* %15, align 8
  %63 = getelementptr inbounds %struct.ecore_vf_queue, %struct.ecore_vf_queue* %61, i64 %62
  %64 = call %struct.ecore_queue_cid* @ecore_iov_get_vf_rx_queue_cid(%struct.ecore_vf_queue* %63)
  store %struct.ecore_queue_cid* %64, %struct.ecore_queue_cid** %12, align 8
  %65 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %66 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %67 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %12, align 8
  %68 = call i32 @ecore_get_rxq_coalesce(%struct.ecore_hwfn* %65, %struct.ecore_ptt* %66, %struct.ecore_queue_cid* %67, i64* %14)
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* @ECORE_SUCCESS, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %58
  br label %142

73:                                               ; preds = %58
  br label %140

74:                                               ; preds = %3
  %75 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %76 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %77 = load i64, i64* %15, align 8
  %78 = load i32, i32* @ECORE_IOV_VALIDATE_Q_ENABLE, align 4
  %79 = call i32 @ecore_iov_validate_txq(%struct.ecore_hwfn* %75, %struct.ecore_vf_info* %76, i64 %77, i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %89, label %81

81:                                               ; preds = %74
  %82 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %83 = load i32, i32* @ECORE_MSG_IOV, align 4
  %84 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %85 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i64, i64* %15, align 8
  %88 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %82, i32 %83, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %86, i64 %87)
  br label %142

89:                                               ; preds = %74
  store i64 0, i64* %16, align 8
  br label %90

90:                                               ; preds = %136, %89
  %91 = load i64, i64* %16, align 8
  %92 = load i64, i64* @MAX_QUEUES_PER_QZONE, align 8
  %93 = icmp ult i64 %91, %92
  br i1 %93, label %94, label %139

94:                                               ; preds = %90
  %95 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %96 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %95, i32 0, i32 0
  %97 = load %struct.ecore_vf_queue*, %struct.ecore_vf_queue** %96, align 8
  %98 = load i64, i64* %15, align 8
  %99 = getelementptr inbounds %struct.ecore_vf_queue, %struct.ecore_vf_queue* %97, i64 %98
  store %struct.ecore_vf_queue* %99, %struct.ecore_vf_queue** %11, align 8
  %100 = load %struct.ecore_vf_queue*, %struct.ecore_vf_queue** %11, align 8
  %101 = getelementptr inbounds %struct.ecore_vf_queue, %struct.ecore_vf_queue* %100, i32 0, i32 0
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = load i64, i64* %16, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %105, align 8
  %107 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** @OSAL_NULL, align 8
  %108 = icmp eq %struct.ecore_queue_cid* %106, %107
  br i1 %108, label %118, label %109

109:                                              ; preds = %94
  %110 = load %struct.ecore_vf_queue*, %struct.ecore_vf_queue** %11, align 8
  %111 = getelementptr inbounds %struct.ecore_vf_queue, %struct.ecore_vf_queue* %110, i32 0, i32 0
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = load i64, i64* %16, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %109, %94
  br label %136

119:                                              ; preds = %109
  %120 = load %struct.ecore_vf_queue*, %struct.ecore_vf_queue** %11, align 8
  %121 = getelementptr inbounds %struct.ecore_vf_queue, %struct.ecore_vf_queue* %120, i32 0, i32 0
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = load i64, i64* %16, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %125, align 8
  store %struct.ecore_queue_cid* %126, %struct.ecore_queue_cid** %12, align 8
  %127 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %128 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %129 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %12, align 8
  %130 = call i32 @ecore_get_txq_coalesce(%struct.ecore_hwfn* %127, %struct.ecore_ptt* %128, %struct.ecore_queue_cid* %129, i64* %14)
  store i32 %130, i32* %13, align 4
  %131 = load i32, i32* %13, align 4
  %132 = load i32, i32* @ECORE_SUCCESS, align 4
  %133 = icmp ne i32 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %119
  br label %142

135:                                              ; preds = %119
  br label %139

136:                                              ; preds = %118
  %137 = load i64, i64* %16, align 8
  %138 = add i64 %137, 1
  store i64 %138, i64* %16, align 8
  br label %90

139:                                              ; preds = %135, %90
  br label %140

140:                                              ; preds = %139, %73
  %141 = load i32, i32* @PFVF_STATUS_SUCCESS, align 4
  store i32 %141, i32* %10, align 4
  br label %142

142:                                              ; preds = %140, %134, %81, %72, %50
  %143 = load %struct.ecore_iov_vf_mbx*, %struct.ecore_iov_vf_mbx** %7, align 8
  %144 = getelementptr inbounds %struct.ecore_iov_vf_mbx, %struct.ecore_iov_vf_mbx* %143, i32 0, i32 0
  %145 = load i32, i32* @CHANNEL_TLV_COALESCE_READ, align 4
  %146 = call %struct.pfvf_read_coal_resp_tlv* @ecore_add_tlv(i32** %144, i32 %145, i32 8)
  store %struct.pfvf_read_coal_resp_tlv* %146, %struct.pfvf_read_coal_resp_tlv** %8, align 8
  %147 = load i64, i64* %14, align 8
  %148 = load %struct.pfvf_read_coal_resp_tlv*, %struct.pfvf_read_coal_resp_tlv** %8, align 8
  %149 = getelementptr inbounds %struct.pfvf_read_coal_resp_tlv, %struct.pfvf_read_coal_resp_tlv* %148, i32 0, i32 0
  store i64 %147, i64* %149, align 8
  %150 = load %struct.ecore_iov_vf_mbx*, %struct.ecore_iov_vf_mbx** %7, align 8
  %151 = getelementptr inbounds %struct.ecore_iov_vf_mbx, %struct.ecore_iov_vf_mbx* %150, i32 0, i32 0
  %152 = load i32, i32* @CHANNEL_TLV_LIST_END, align 4
  %153 = call %struct.pfvf_read_coal_resp_tlv* @ecore_add_tlv(i32** %151, i32 %152, i32 4)
  %154 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %155 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %156 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %157 = load i32, i32* %10, align 4
  %158 = call i32 @ecore_iov_send_response(%struct.ecore_hwfn* %154, %struct.ecore_ptt* %155, %struct.ecore_vf_info* %156, i32 8, i32 %157)
  ret void
}

declare dso_local i32 @ecore_iov_validate_rxq(%struct.ecore_hwfn*, %struct.ecore_vf_info*, i64, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32, i64) #1

declare dso_local %struct.ecore_queue_cid* @ecore_iov_get_vf_rx_queue_cid(%struct.ecore_vf_queue*) #1

declare dso_local i32 @ecore_get_rxq_coalesce(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_queue_cid*, i64*) #1

declare dso_local i32 @ecore_iov_validate_txq(%struct.ecore_hwfn*, %struct.ecore_vf_info*, i64, i32) #1

declare dso_local i32 @ecore_get_txq_coalesce(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_queue_cid*, i64*) #1

declare dso_local %struct.pfvf_read_coal_resp_tlv* @ecore_add_tlv(i32**, i32, i32) #1

declare dso_local i32 @ecore_iov_send_response(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_vf_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
