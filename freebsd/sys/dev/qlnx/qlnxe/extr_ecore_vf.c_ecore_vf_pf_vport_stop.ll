; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_vf.c_ecore_vf_pf_vport_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_vf.c_ecore_vf_pf_vport_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.ecore_vf_iov* }
%struct.ecore_vf_iov = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.pfvf_def_resp_tlv }
%struct.pfvf_def_resp_tlv = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@CHANNEL_TLV_VPORT_TEARDOWN = common dso_local global i32 0, align 4
@CHANNEL_TLV_LIST_END = common dso_local global i32 0, align 4
@PFVF_STATUS_SUCCESS = common dso_local global i64 0, align 8
@ECORE_INVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_vf_pf_vport_stop(%struct.ecore_hwfn* %0) #0 {
  %2 = alloca %struct.ecore_hwfn*, align 8
  %3 = alloca %struct.ecore_vf_iov*, align 8
  %4 = alloca %struct.pfvf_def_resp_tlv*, align 8
  %5 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %2, align 8
  %6 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %7 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %6, i32 0, i32 0
  %8 = load %struct.ecore_vf_iov*, %struct.ecore_vf_iov** %7, align 8
  store %struct.ecore_vf_iov* %8, %struct.ecore_vf_iov** %3, align 8
  %9 = load %struct.ecore_vf_iov*, %struct.ecore_vf_iov** %3, align 8
  %10 = getelementptr inbounds %struct.ecore_vf_iov, %struct.ecore_vf_iov* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store %struct.pfvf_def_resp_tlv* %12, %struct.pfvf_def_resp_tlv** %4, align 8
  %13 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %14 = load i32, i32* @CHANNEL_TLV_VPORT_TEARDOWN, align 4
  %15 = call i32 @ecore_vf_pf_prep(%struct.ecore_hwfn* %13, i32 %14, i32 4)
  %16 = load %struct.ecore_vf_iov*, %struct.ecore_vf_iov** %3, align 8
  %17 = getelementptr inbounds %struct.ecore_vf_iov, %struct.ecore_vf_iov* %16, i32 0, i32 0
  %18 = load i32, i32* @CHANNEL_TLV_LIST_END, align 4
  %19 = call i32 @ecore_add_tlv(i32* %17, i32 %18, i32 4)
  %20 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %21 = load %struct.pfvf_def_resp_tlv*, %struct.pfvf_def_resp_tlv** %4, align 8
  %22 = getelementptr inbounds %struct.pfvf_def_resp_tlv, %struct.pfvf_def_resp_tlv* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = call i32 @ecore_send_msg2pf(%struct.ecore_hwfn* %20, i64* %23, i32 8)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  br label %38

28:                                               ; preds = %1
  %29 = load %struct.pfvf_def_resp_tlv*, %struct.pfvf_def_resp_tlv** %4, align 8
  %30 = getelementptr inbounds %struct.pfvf_def_resp_tlv, %struct.pfvf_def_resp_tlv* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @PFVF_STATUS_SUCCESS, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %36, i32* %5, align 4
  br label %38

37:                                               ; preds = %28
  br label %38

38:                                               ; preds = %37, %35, %27
  %39 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @ecore_vf_pf_req_end(%struct.ecore_hwfn* %39, i32 %40)
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @ecore_vf_pf_prep(%struct.ecore_hwfn*, i32, i32) #1

declare dso_local i32 @ecore_add_tlv(i32*, i32, i32) #1

declare dso_local i32 @ecore_send_msg2pf(%struct.ecore_hwfn*, i64*, i32) #1

declare dso_local i32 @ecore_vf_pf_req_end(%struct.ecore_hwfn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
