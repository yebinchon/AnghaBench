; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_vf.c_ecore_vf_pf_rxqs_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_vf.c_ecore_vf_pf_rxqs_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.ecore_vf_iov* }
%struct.ecore_vf_iov = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.pfvf_def_resp_tlv }
%struct.pfvf_def_resp_tlv = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.ecore_queue_cid = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.vfpf_update_rxq_tlv = type { i32, i32, i32 }

@.str = private unnamed_addr constant [51 x i8] c"VFs can no longer update more than a single queue\0A\00", align 1
@ECORE_INVAL = common dso_local global i32 0, align 4
@CHANNEL_TLV_UPDATE_RXQ = common dso_local global i32 0, align 4
@VFPF_RXQ_UPD_COMPLETE_CQE_FLAG = common dso_local global i32 0, align 4
@VFPF_RXQ_UPD_COMPLETE_EVENT_FLAG = common dso_local global i32 0, align 4
@CHANNEL_TLV_LIST_END = common dso_local global i32 0, align 4
@PFVF_STATUS_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_vf_pf_rxqs_update(%struct.ecore_hwfn* %0, %struct.ecore_queue_cid** %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ecore_hwfn*, align 8
  %8 = alloca %struct.ecore_queue_cid**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ecore_vf_iov*, align 8
  %13 = alloca %struct.pfvf_def_resp_tlv*, align 8
  %14 = alloca %struct.vfpf_update_rxq_tlv*, align 8
  %15 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %7, align 8
  store %struct.ecore_queue_cid** %1, %struct.ecore_queue_cid*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %17 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %16, i32 0, i32 0
  %18 = load %struct.ecore_vf_iov*, %struct.ecore_vf_iov** %17, align 8
  store %struct.ecore_vf_iov* %18, %struct.ecore_vf_iov** %12, align 8
  %19 = load %struct.ecore_vf_iov*, %struct.ecore_vf_iov** %12, align 8
  %20 = getelementptr inbounds %struct.ecore_vf_iov, %struct.ecore_vf_iov* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store %struct.pfvf_def_resp_tlv* %22, %struct.pfvf_def_resp_tlv** %13, align 8
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 1
  br i1 %24, label %25, label %29

25:                                               ; preds = %5
  %26 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %27 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %26, i32 1, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %28, i32* %6, align 4
  br label %91

29:                                               ; preds = %5
  %30 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %31 = load i32, i32* @CHANNEL_TLV_UPDATE_RXQ, align 4
  %32 = call %struct.vfpf_update_rxq_tlv* @ecore_vf_pf_prep(%struct.ecore_hwfn* %30, i32 %31, i32 12)
  store %struct.vfpf_update_rxq_tlv* %32, %struct.vfpf_update_rxq_tlv** %14, align 8
  %33 = load %struct.ecore_queue_cid**, %struct.ecore_queue_cid*** %8, align 8
  %34 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %33, align 8
  %35 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.vfpf_update_rxq_tlv*, %struct.vfpf_update_rxq_tlv** %14, align 8
  %39 = getelementptr inbounds %struct.vfpf_update_rxq_tlv, %struct.vfpf_update_rxq_tlv* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load %struct.vfpf_update_rxq_tlv*, %struct.vfpf_update_rxq_tlv** %14, align 8
  %41 = getelementptr inbounds %struct.vfpf_update_rxq_tlv, %struct.vfpf_update_rxq_tlv* %40, i32 0, i32 0
  store i32 1, i32* %41, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %29
  %45 = load i32, i32* @VFPF_RXQ_UPD_COMPLETE_CQE_FLAG, align 4
  %46 = load %struct.vfpf_update_rxq_tlv*, %struct.vfpf_update_rxq_tlv** %14, align 8
  %47 = getelementptr inbounds %struct.vfpf_update_rxq_tlv, %struct.vfpf_update_rxq_tlv* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %44, %29
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load i32, i32* @VFPF_RXQ_UPD_COMPLETE_EVENT_FLAG, align 4
  %55 = load %struct.vfpf_update_rxq_tlv*, %struct.vfpf_update_rxq_tlv** %14, align 8
  %56 = getelementptr inbounds %struct.vfpf_update_rxq_tlv, %struct.vfpf_update_rxq_tlv* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %53, %50
  %60 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %61 = load %struct.ecore_queue_cid**, %struct.ecore_queue_cid*** %8, align 8
  %62 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %61, align 8
  %63 = call i32 @ecore_vf_pf_add_qid(%struct.ecore_hwfn* %60, %struct.ecore_queue_cid* %62)
  %64 = load %struct.ecore_vf_iov*, %struct.ecore_vf_iov** %12, align 8
  %65 = getelementptr inbounds %struct.ecore_vf_iov, %struct.ecore_vf_iov* %64, i32 0, i32 0
  %66 = load i32, i32* @CHANNEL_TLV_LIST_END, align 4
  %67 = call i32 @ecore_add_tlv(i32* %65, i32 %66, i32 4)
  %68 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %69 = load %struct.pfvf_def_resp_tlv*, %struct.pfvf_def_resp_tlv** %13, align 8
  %70 = getelementptr inbounds %struct.pfvf_def_resp_tlv, %struct.pfvf_def_resp_tlv* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = call i32 @ecore_send_msg2pf(%struct.ecore_hwfn* %68, i64* %71, i32 8)
  store i32 %72, i32* %15, align 4
  %73 = load i32, i32* %15, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %59
  br label %86

76:                                               ; preds = %59
  %77 = load %struct.pfvf_def_resp_tlv*, %struct.pfvf_def_resp_tlv** %13, align 8
  %78 = getelementptr inbounds %struct.pfvf_def_resp_tlv, %struct.pfvf_def_resp_tlv* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @PFVF_STATUS_SUCCESS, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %76
  %84 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %84, i32* %15, align 4
  br label %86

85:                                               ; preds = %76
  br label %86

86:                                               ; preds = %85, %83, %75
  %87 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %88 = load i32, i32* %15, align 4
  %89 = call i32 @ecore_vf_pf_req_end(%struct.ecore_hwfn* %87, i32 %88)
  %90 = load i32, i32* %15, align 4
  store i32 %90, i32* %6, align 4
  br label %91

91:                                               ; preds = %86, %25
  %92 = load i32, i32* %6, align 4
  ret i32 %92
}

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*) #1

declare dso_local %struct.vfpf_update_rxq_tlv* @ecore_vf_pf_prep(%struct.ecore_hwfn*, i32, i32) #1

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
