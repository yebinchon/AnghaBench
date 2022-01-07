; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_vf.c_ecore_vf_pf_txq_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_vf.c_ecore_vf_pf_txq_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.ecore_vf_iov* }
%struct.ecore_vf_iov = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.pfvf_def_resp_tlv }
%struct.pfvf_def_resp_tlv = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.ecore_queue_cid = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.vfpf_stop_txqs_tlv = type { i32, i32 }

@CHANNEL_TLV_STOP_TXQS = common dso_local global i32 0, align 4
@CHANNEL_TLV_LIST_END = common dso_local global i32 0, align 4
@PFVF_STATUS_SUCCESS = common dso_local global i64 0, align 8
@ECORE_INVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_vf_pf_txq_stop(%struct.ecore_hwfn* %0, %struct.ecore_queue_cid* %1) #0 {
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca %struct.ecore_queue_cid*, align 8
  %5 = alloca %struct.ecore_vf_iov*, align 8
  %6 = alloca %struct.vfpf_stop_txqs_tlv*, align 8
  %7 = alloca %struct.pfvf_def_resp_tlv*, align 8
  %8 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  store %struct.ecore_queue_cid* %1, %struct.ecore_queue_cid** %4, align 8
  %9 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %10 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %9, i32 0, i32 0
  %11 = load %struct.ecore_vf_iov*, %struct.ecore_vf_iov** %10, align 8
  store %struct.ecore_vf_iov* %11, %struct.ecore_vf_iov** %5, align 8
  %12 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %13 = load i32, i32* @CHANNEL_TLV_STOP_TXQS, align 4
  %14 = call %struct.vfpf_stop_txqs_tlv* @ecore_vf_pf_prep(%struct.ecore_hwfn* %12, i32 %13, i32 8)
  store %struct.vfpf_stop_txqs_tlv* %14, %struct.vfpf_stop_txqs_tlv** %6, align 8
  %15 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %4, align 8
  %16 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.vfpf_stop_txqs_tlv*, %struct.vfpf_stop_txqs_tlv** %6, align 8
  %20 = getelementptr inbounds %struct.vfpf_stop_txqs_tlv, %struct.vfpf_stop_txqs_tlv* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.vfpf_stop_txqs_tlv*, %struct.vfpf_stop_txqs_tlv** %6, align 8
  %22 = getelementptr inbounds %struct.vfpf_stop_txqs_tlv, %struct.vfpf_stop_txqs_tlv* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  %23 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %24 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %4, align 8
  %25 = call i32 @ecore_vf_pf_add_qid(%struct.ecore_hwfn* %23, %struct.ecore_queue_cid* %24)
  %26 = load %struct.ecore_vf_iov*, %struct.ecore_vf_iov** %5, align 8
  %27 = getelementptr inbounds %struct.ecore_vf_iov, %struct.ecore_vf_iov* %26, i32 0, i32 1
  %28 = load i32, i32* @CHANNEL_TLV_LIST_END, align 4
  %29 = call i32 @ecore_add_tlv(i32* %27, i32 %28, i32 4)
  %30 = load %struct.ecore_vf_iov*, %struct.ecore_vf_iov** %5, align 8
  %31 = getelementptr inbounds %struct.ecore_vf_iov, %struct.ecore_vf_iov* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  store %struct.pfvf_def_resp_tlv* %33, %struct.pfvf_def_resp_tlv** %7, align 8
  %34 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %35 = load %struct.pfvf_def_resp_tlv*, %struct.pfvf_def_resp_tlv** %7, align 8
  %36 = getelementptr inbounds %struct.pfvf_def_resp_tlv, %struct.pfvf_def_resp_tlv* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = call i32 @ecore_send_msg2pf(%struct.ecore_hwfn* %34, i64* %37, i32 8)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %2
  br label %52

42:                                               ; preds = %2
  %43 = load %struct.pfvf_def_resp_tlv*, %struct.pfvf_def_resp_tlv** %7, align 8
  %44 = getelementptr inbounds %struct.pfvf_def_resp_tlv, %struct.pfvf_def_resp_tlv* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @PFVF_STATUS_SUCCESS, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %50, i32* %8, align 4
  br label %52

51:                                               ; preds = %42
  br label %52

52:                                               ; preds = %51, %49, %41
  %53 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @ecore_vf_pf_req_end(%struct.ecore_hwfn* %53, i32 %54)
  %56 = load i32, i32* %8, align 4
  ret i32 %56
}

declare dso_local %struct.vfpf_stop_txqs_tlv* @ecore_vf_pf_prep(%struct.ecore_hwfn*, i32, i32) #1

declare dso_local i32 @ecore_vf_pf_add_qid(%struct.ecore_hwfn*, %struct.ecore_queue_cid*) #1

declare dso_local i32 @ecore_add_tlv(i32*, i32, i32) #1

declare dso_local i32 @ecore_send_msg2pf(%struct.ecore_hwfn*, i64*, i32) #1

declare dso_local i32 @ecore_vf_pf_req_end(%struct.ecore_hwfn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
