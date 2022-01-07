; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_vf.c_ecore_vf_pf_rxq_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_vf.c_ecore_vf_pf_rxq_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.ecore_vf_iov* }
%struct.ecore_vf_iov = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.pfvf_def_resp_tlv }
%struct.pfvf_def_resp_tlv = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.ecore_queue_cid = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.vfpf_stop_rxqs_tlv = type { i32, i32, i32 }

@CHANNEL_TLV_STOP_RXQS = common dso_local global i32 0, align 4
@CHANNEL_TLV_LIST_END = common dso_local global i32 0, align 4
@PFVF_STATUS_SUCCESS = common dso_local global i64 0, align 8
@ECORE_INVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_vf_pf_rxq_stop(%struct.ecore_hwfn* %0, %struct.ecore_queue_cid* %1, i32 %2) #0 {
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_queue_cid*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ecore_vf_iov*, align 8
  %8 = alloca %struct.vfpf_stop_rxqs_tlv*, align 8
  %9 = alloca %struct.pfvf_def_resp_tlv*, align 8
  %10 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_queue_cid* %1, %struct.ecore_queue_cid** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %12 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %11, i32 0, i32 0
  %13 = load %struct.ecore_vf_iov*, %struct.ecore_vf_iov** %12, align 8
  store %struct.ecore_vf_iov* %13, %struct.ecore_vf_iov** %7, align 8
  %14 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %15 = load i32, i32* @CHANNEL_TLV_STOP_RXQS, align 4
  %16 = call %struct.vfpf_stop_rxqs_tlv* @ecore_vf_pf_prep(%struct.ecore_hwfn* %14, i32 %15, i32 12)
  store %struct.vfpf_stop_rxqs_tlv* %16, %struct.vfpf_stop_rxqs_tlv** %8, align 8
  %17 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %5, align 8
  %18 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.vfpf_stop_rxqs_tlv*, %struct.vfpf_stop_rxqs_tlv** %8, align 8
  %22 = getelementptr inbounds %struct.vfpf_stop_rxqs_tlv, %struct.vfpf_stop_rxqs_tlv* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load %struct.vfpf_stop_rxqs_tlv*, %struct.vfpf_stop_rxqs_tlv** %8, align 8
  %24 = getelementptr inbounds %struct.vfpf_stop_rxqs_tlv, %struct.vfpf_stop_rxqs_tlv* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.vfpf_stop_rxqs_tlv*, %struct.vfpf_stop_rxqs_tlv** %8, align 8
  %27 = getelementptr inbounds %struct.vfpf_stop_rxqs_tlv, %struct.vfpf_stop_rxqs_tlv* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %29 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %5, align 8
  %30 = call i32 @ecore_vf_pf_add_qid(%struct.ecore_hwfn* %28, %struct.ecore_queue_cid* %29)
  %31 = load %struct.ecore_vf_iov*, %struct.ecore_vf_iov** %7, align 8
  %32 = getelementptr inbounds %struct.ecore_vf_iov, %struct.ecore_vf_iov* %31, i32 0, i32 1
  %33 = load i32, i32* @CHANNEL_TLV_LIST_END, align 4
  %34 = call i32 @ecore_add_tlv(i32* %32, i32 %33, i32 4)
  %35 = load %struct.ecore_vf_iov*, %struct.ecore_vf_iov** %7, align 8
  %36 = getelementptr inbounds %struct.ecore_vf_iov, %struct.ecore_vf_iov* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  store %struct.pfvf_def_resp_tlv* %38, %struct.pfvf_def_resp_tlv** %9, align 8
  %39 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %40 = load %struct.pfvf_def_resp_tlv*, %struct.pfvf_def_resp_tlv** %9, align 8
  %41 = getelementptr inbounds %struct.pfvf_def_resp_tlv, %struct.pfvf_def_resp_tlv* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = call i32 @ecore_send_msg2pf(%struct.ecore_hwfn* %39, i64* %42, i32 8)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %3
  br label %57

47:                                               ; preds = %3
  %48 = load %struct.pfvf_def_resp_tlv*, %struct.pfvf_def_resp_tlv** %9, align 8
  %49 = getelementptr inbounds %struct.pfvf_def_resp_tlv, %struct.pfvf_def_resp_tlv* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @PFVF_STATUS_SUCCESS, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %55, i32* %10, align 4
  br label %57

56:                                               ; preds = %47
  br label %57

57:                                               ; preds = %56, %54, %46
  %58 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @ecore_vf_pf_req_end(%struct.ecore_hwfn* %58, i32 %59)
  %61 = load i32, i32* %10, align 4
  ret i32 %61
}

declare dso_local %struct.vfpf_stop_rxqs_tlv* @ecore_vf_pf_prep(%struct.ecore_hwfn*, i32, i32) #1

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
