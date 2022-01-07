; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_vf.c_ecore_vf_pf_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_vf.c_ecore_vf_pf_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i64, %struct.ecore_vf_iov* }
%struct.ecore_vf_iov = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { %struct.pfvf_def_resp_tlv }
%struct.pfvf_def_resp_tlv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.vfpf_first_tlv = type { i32 }

@CHANNEL_TLV_CLOSE = common dso_local global i32 0, align 4
@CHANNEL_TLV_LIST_END = common dso_local global i32 0, align 4
@PFVF_STATUS_SUCCESS = common dso_local global i64 0, align 8
@ECORE_AGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_vf_pf_reset(%struct.ecore_hwfn* %0) #0 {
  %2 = alloca %struct.ecore_hwfn*, align 8
  %3 = alloca %struct.ecore_vf_iov*, align 8
  %4 = alloca %struct.pfvf_def_resp_tlv*, align 8
  %5 = alloca %struct.vfpf_first_tlv*, align 8
  %6 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %2, align 8
  %7 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %8 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %7, i32 0, i32 1
  %9 = load %struct.ecore_vf_iov*, %struct.ecore_vf_iov** %8, align 8
  store %struct.ecore_vf_iov* %9, %struct.ecore_vf_iov** %3, align 8
  %10 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %11 = load i32, i32* @CHANNEL_TLV_CLOSE, align 4
  %12 = call %struct.vfpf_first_tlv* @ecore_vf_pf_prep(%struct.ecore_hwfn* %10, i32 %11, i32 4)
  store %struct.vfpf_first_tlv* %12, %struct.vfpf_first_tlv** %5, align 8
  %13 = load %struct.ecore_vf_iov*, %struct.ecore_vf_iov** %3, align 8
  %14 = getelementptr inbounds %struct.ecore_vf_iov, %struct.ecore_vf_iov* %13, i32 0, i32 1
  %15 = load i32, i32* @CHANNEL_TLV_LIST_END, align 4
  %16 = call i32 @ecore_add_tlv(i32* %14, i32 %15, i32 4)
  %17 = load %struct.ecore_vf_iov*, %struct.ecore_vf_iov** %3, align 8
  %18 = getelementptr inbounds %struct.ecore_vf_iov, %struct.ecore_vf_iov* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store %struct.pfvf_def_resp_tlv* %20, %struct.pfvf_def_resp_tlv** %4, align 8
  %21 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %22 = load %struct.pfvf_def_resp_tlv*, %struct.pfvf_def_resp_tlv** %4, align 8
  %23 = getelementptr inbounds %struct.pfvf_def_resp_tlv, %struct.pfvf_def_resp_tlv* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = call i32 @ecore_send_msg2pf(%struct.ecore_hwfn* %21, i64* %24, i32 8)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  br label %41

29:                                               ; preds = %1
  %30 = load %struct.pfvf_def_resp_tlv*, %struct.pfvf_def_resp_tlv** %4, align 8
  %31 = getelementptr inbounds %struct.pfvf_def_resp_tlv, %struct.pfvf_def_resp_tlv* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @PFVF_STATUS_SUCCESS, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* @ECORE_AGAIN, align 4
  store i32 %37, i32* %6, align 4
  br label %41

38:                                               ; preds = %29
  %39 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %40 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  br label %41

41:                                               ; preds = %38, %36, %28
  %42 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @ecore_vf_pf_req_end(%struct.ecore_hwfn* %42, i32 %43)
  %45 = load i32, i32* %6, align 4
  ret i32 %45
}

declare dso_local %struct.vfpf_first_tlv* @ecore_vf_pf_prep(%struct.ecore_hwfn*, i32, i32) #1

declare dso_local i32 @ecore_add_tlv(i32*, i32, i32) #1

declare dso_local i32 @ecore_send_msg2pf(%struct.ecore_hwfn*, i64*, i32) #1

declare dso_local i32 @ecore_vf_pf_req_end(%struct.ecore_hwfn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
