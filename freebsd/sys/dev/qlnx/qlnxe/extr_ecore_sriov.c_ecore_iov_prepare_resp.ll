; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_prepare_resp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_prepare_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }
%struct.ecore_vf_info = type { %struct.ecore_iov_vf_mbx }
%struct.ecore_iov_vf_mbx = type { i32*, i64 }

@CHANNEL_TLV_LIST_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_vf_info*, i32, i32, i32)* @ecore_iov_prepare_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_iov_prepare_resp(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, %struct.ecore_vf_info* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.ecore_hwfn*, align 8
  %8 = alloca %struct.ecore_ptt*, align 8
  %9 = alloca %struct.ecore_vf_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ecore_iov_vf_mbx*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %7, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %8, align 8
  store %struct.ecore_vf_info* %2, %struct.ecore_vf_info** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %9, align 8
  %15 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %14, i32 0, i32 0
  store %struct.ecore_iov_vf_mbx* %15, %struct.ecore_iov_vf_mbx** %13, align 8
  %16 = load %struct.ecore_iov_vf_mbx*, %struct.ecore_iov_vf_mbx** %13, align 8
  %17 = getelementptr inbounds %struct.ecore_iov_vf_mbx, %struct.ecore_iov_vf_mbx* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i32*
  %20 = load %struct.ecore_iov_vf_mbx*, %struct.ecore_iov_vf_mbx** %13, align 8
  %21 = getelementptr inbounds %struct.ecore_iov_vf_mbx, %struct.ecore_iov_vf_mbx* %20, i32 0, i32 0
  store i32* %19, i32** %21, align 8
  %22 = load %struct.ecore_iov_vf_mbx*, %struct.ecore_iov_vf_mbx** %13, align 8
  %23 = getelementptr inbounds %struct.ecore_iov_vf_mbx, %struct.ecore_iov_vf_mbx* %22, i32 0, i32 0
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @ecore_add_tlv(i32** %23, i32 %24, i32 %25)
  %27 = load %struct.ecore_iov_vf_mbx*, %struct.ecore_iov_vf_mbx** %13, align 8
  %28 = getelementptr inbounds %struct.ecore_iov_vf_mbx, %struct.ecore_iov_vf_mbx* %27, i32 0, i32 0
  %29 = load i32, i32* @CHANNEL_TLV_LIST_END, align 4
  %30 = call i32 @ecore_add_tlv(i32** %28, i32 %29, i32 4)
  %31 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %32 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %33 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %9, align 8
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @ecore_iov_send_response(%struct.ecore_hwfn* %31, %struct.ecore_ptt* %32, %struct.ecore_vf_info* %33, i32 %34, i32 %35)
  ret void
}

declare dso_local i32 @ecore_add_tlv(i32**, i32, i32) #1

declare dso_local i32 @ecore_iov_send_response(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_vf_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
