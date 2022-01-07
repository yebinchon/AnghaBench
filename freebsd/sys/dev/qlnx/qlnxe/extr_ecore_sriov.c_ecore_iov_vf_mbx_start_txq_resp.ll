; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_vf_mbx_start_txq_resp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_vf_mbx_start_txq_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }
%struct.ecore_vf_info = type { %struct.TYPE_4__, %struct.ecore_iov_vf_mbx }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.ecore_iov_vf_mbx = type { i32*, i64 }
%struct.pfvf_start_queue_resp_tlv = type { i32 }

@ETH_HSI_VER_NO_PKT_LEN_TUNN = common dso_local global i64 0, align 8
@CHANNEL_TLV_START_TXQ = common dso_local global i32 0, align 4
@CHANNEL_TLV_LIST_END = common dso_local global i32 0, align 4
@PFVF_STATUS_SUCCESS = common dso_local global i32 0, align 4
@DQ_DEMS_LEGACY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_vf_info*, i32, i32)* @ecore_iov_vf_mbx_start_txq_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_iov_vf_mbx_start_txq_resp(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, %struct.ecore_vf_info* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ecore_hwfn*, align 8
  %7 = alloca %struct.ecore_ptt*, align 8
  %8 = alloca %struct.ecore_vf_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ecore_iov_vf_mbx*, align 8
  %12 = alloca %struct.pfvf_start_queue_resp_tlv*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %6, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %7, align 8
  store %struct.ecore_vf_info* %2, %struct.ecore_vf_info** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %8, align 8
  %16 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %15, i32 0, i32 1
  store %struct.ecore_iov_vf_mbx* %16, %struct.ecore_iov_vf_mbx** %11, align 8
  store i32 0, i32* %13, align 4
  %17 = load %struct.ecore_iov_vf_mbx*, %struct.ecore_iov_vf_mbx** %11, align 8
  %18 = getelementptr inbounds %struct.ecore_iov_vf_mbx, %struct.ecore_iov_vf_mbx* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i32*
  %21 = load %struct.ecore_iov_vf_mbx*, %struct.ecore_iov_vf_mbx** %11, align 8
  %22 = getelementptr inbounds %struct.ecore_iov_vf_mbx, %struct.ecore_iov_vf_mbx* %21, i32 0, i32 0
  store i32* %20, i32** %22, align 8
  %23 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %8, align 8
  %24 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ETH_HSI_VER_NO_PKT_LEN_TUNN, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %5
  store i32 1, i32* %13, align 4
  br label %31

31:                                               ; preds = %30, %5
  %32 = load i32, i32* %13, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  store i32 4, i32* %14, align 4
  br label %36

35:                                               ; preds = %31
  store i32 4, i32* %14, align 4
  br label %36

36:                                               ; preds = %35, %34
  %37 = load %struct.ecore_iov_vf_mbx*, %struct.ecore_iov_vf_mbx** %11, align 8
  %38 = getelementptr inbounds %struct.ecore_iov_vf_mbx, %struct.ecore_iov_vf_mbx* %37, i32 0, i32 0
  %39 = load i32, i32* @CHANNEL_TLV_START_TXQ, align 4
  %40 = load i32, i32* %14, align 4
  %41 = call %struct.pfvf_start_queue_resp_tlv* @ecore_add_tlv(i32** %38, i32 %39, i32 %40)
  store %struct.pfvf_start_queue_resp_tlv* %41, %struct.pfvf_start_queue_resp_tlv** %12, align 8
  %42 = load %struct.ecore_iov_vf_mbx*, %struct.ecore_iov_vf_mbx** %11, align 8
  %43 = getelementptr inbounds %struct.ecore_iov_vf_mbx, %struct.ecore_iov_vf_mbx* %42, i32 0, i32 0
  %44 = load i32, i32* @CHANNEL_TLV_LIST_END, align 4
  %45 = call %struct.pfvf_start_queue_resp_tlv* @ecore_add_tlv(i32** %43, i32 %44, i32 4)
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @PFVF_STATUS_SUCCESS, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %36
  %50 = load i32, i32* %13, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @DQ_DEMS_LEGACY, align 4
  %55 = call i32 @DB_ADDR_VF(i32 %53, i32 %54)
  %56 = load %struct.pfvf_start_queue_resp_tlv*, %struct.pfvf_start_queue_resp_tlv** %12, align 8
  %57 = getelementptr inbounds %struct.pfvf_start_queue_resp_tlv, %struct.pfvf_start_queue_resp_tlv* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  br label %58

58:                                               ; preds = %52, %49, %36
  %59 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %60 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %61 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %8, align 8
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @ecore_iov_send_response(%struct.ecore_hwfn* %59, %struct.ecore_ptt* %60, %struct.ecore_vf_info* %61, i32 %62, i32 %63)
  ret void
}

declare dso_local %struct.pfvf_start_queue_resp_tlv* @ecore_add_tlv(i32**, i32, i32) #1

declare dso_local i32 @DB_ADDR_VF(i32, i32) #1

declare dso_local i32 @ecore_iov_send_response(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_vf_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
