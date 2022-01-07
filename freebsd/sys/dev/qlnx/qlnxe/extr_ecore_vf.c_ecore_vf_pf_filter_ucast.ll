; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_vf.c_ecore_vf_pf_filter_ucast.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_vf.c_ecore_vf_pf_filter_ucast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.ecore_vf_iov* }
%struct.ecore_vf_iov = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { %struct.pfvf_def_resp_tlv }
%struct.pfvf_def_resp_tlv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.ecore_filter_ucast = type { i64, i32, i32, i64 }
%struct.vfpf_ucast_filter_tlv = type { i32, i32, i8*, i8* }

@ECORE_FILTER_MOVE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"VFs don't support Moving of filters\0A\00", align 1
@ECORE_INVAL = common dso_local global i32 0, align 4
@CHANNEL_TLV_UCAST_FILTER = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@CHANNEL_TLV_LIST_END = common dso_local global i32 0, align 4
@PFVF_STATUS_SUCCESS = common dso_local global i64 0, align 8
@ECORE_AGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_vf_pf_filter_ucast(%struct.ecore_hwfn* %0, %struct.ecore_filter_ucast* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_filter_ucast*, align 8
  %6 = alloca %struct.ecore_vf_iov*, align 8
  %7 = alloca %struct.vfpf_ucast_filter_tlv*, align 8
  %8 = alloca %struct.pfvf_def_resp_tlv*, align 8
  %9 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_filter_ucast* %1, %struct.ecore_filter_ucast** %5, align 8
  %10 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %11 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %10, i32 0, i32 0
  %12 = load %struct.ecore_vf_iov*, %struct.ecore_vf_iov** %11, align 8
  store %struct.ecore_vf_iov* %12, %struct.ecore_vf_iov** %6, align 8
  %13 = load %struct.ecore_filter_ucast*, %struct.ecore_filter_ucast** %5, align 8
  %14 = getelementptr inbounds %struct.ecore_filter_ucast, %struct.ecore_filter_ucast* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ECORE_FILTER_MOVE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %20 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %19, i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %21, i32* %3, align 4
  br label %82

22:                                               ; preds = %2
  %23 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %24 = load i32, i32* @CHANNEL_TLV_UCAST_FILTER, align 4
  %25 = call %struct.vfpf_ucast_filter_tlv* @ecore_vf_pf_prep(%struct.ecore_hwfn* %23, i32 %24, i32 24)
  store %struct.vfpf_ucast_filter_tlv* %25, %struct.vfpf_ucast_filter_tlv** %7, align 8
  %26 = load %struct.ecore_filter_ucast*, %struct.ecore_filter_ucast** %5, align 8
  %27 = getelementptr inbounds %struct.ecore_filter_ucast, %struct.ecore_filter_ucast* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i8*
  %30 = load %struct.vfpf_ucast_filter_tlv*, %struct.vfpf_ucast_filter_tlv** %7, align 8
  %31 = getelementptr inbounds %struct.vfpf_ucast_filter_tlv, %struct.vfpf_ucast_filter_tlv* %30, i32 0, i32 3
  store i8* %29, i8** %31, align 8
  %32 = load %struct.ecore_filter_ucast*, %struct.ecore_filter_ucast** %5, align 8
  %33 = getelementptr inbounds %struct.ecore_filter_ucast, %struct.ecore_filter_ucast* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = load %struct.vfpf_ucast_filter_tlv*, %struct.vfpf_ucast_filter_tlv** %7, align 8
  %37 = getelementptr inbounds %struct.vfpf_ucast_filter_tlv, %struct.vfpf_ucast_filter_tlv* %36, i32 0, i32 2
  store i8* %35, i8** %37, align 8
  %38 = load %struct.vfpf_ucast_filter_tlv*, %struct.vfpf_ucast_filter_tlv** %7, align 8
  %39 = getelementptr inbounds %struct.vfpf_ucast_filter_tlv, %struct.vfpf_ucast_filter_tlv* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ecore_filter_ucast*, %struct.ecore_filter_ucast** %5, align 8
  %42 = getelementptr inbounds %struct.ecore_filter_ucast, %struct.ecore_filter_ucast* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @ETH_ALEN, align 4
  %45 = call i32 @OSAL_MEMCPY(i32 %40, i32 %43, i32 %44)
  %46 = load %struct.ecore_filter_ucast*, %struct.ecore_filter_ucast** %5, align 8
  %47 = getelementptr inbounds %struct.ecore_filter_ucast, %struct.ecore_filter_ucast* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.vfpf_ucast_filter_tlv*, %struct.vfpf_ucast_filter_tlv** %7, align 8
  %50 = getelementptr inbounds %struct.vfpf_ucast_filter_tlv, %struct.vfpf_ucast_filter_tlv* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.ecore_vf_iov*, %struct.ecore_vf_iov** %6, align 8
  %52 = getelementptr inbounds %struct.ecore_vf_iov, %struct.ecore_vf_iov* %51, i32 0, i32 1
  %53 = load i32, i32* @CHANNEL_TLV_LIST_END, align 4
  %54 = call i32 @ecore_add_tlv(i32* %52, i32 %53, i32 4)
  %55 = load %struct.ecore_vf_iov*, %struct.ecore_vf_iov** %6, align 8
  %56 = getelementptr inbounds %struct.ecore_vf_iov, %struct.ecore_vf_iov* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  store %struct.pfvf_def_resp_tlv* %58, %struct.pfvf_def_resp_tlv** %8, align 8
  %59 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %60 = load %struct.pfvf_def_resp_tlv*, %struct.pfvf_def_resp_tlv** %8, align 8
  %61 = getelementptr inbounds %struct.pfvf_def_resp_tlv, %struct.pfvf_def_resp_tlv* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = call i32 @ecore_send_msg2pf(%struct.ecore_hwfn* %59, i64* %62, i32 8)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %22
  br label %77

67:                                               ; preds = %22
  %68 = load %struct.pfvf_def_resp_tlv*, %struct.pfvf_def_resp_tlv** %8, align 8
  %69 = getelementptr inbounds %struct.pfvf_def_resp_tlv, %struct.pfvf_def_resp_tlv* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @PFVF_STATUS_SUCCESS, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %67
  %75 = load i32, i32* @ECORE_AGAIN, align 4
  store i32 %75, i32* %9, align 4
  br label %77

76:                                               ; preds = %67
  br label %77

77:                                               ; preds = %76, %74, %66
  %78 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @ecore_vf_pf_req_end(%struct.ecore_hwfn* %78, i32 %79)
  %81 = load i32, i32* %9, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %77, %18
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*) #1

declare dso_local %struct.vfpf_ucast_filter_tlv* @ecore_vf_pf_prep(%struct.ecore_hwfn*, i32, i32) #1

declare dso_local i32 @OSAL_MEMCPY(i32, i32, i32) #1

declare dso_local i32 @ecore_add_tlv(i32*, i32, i32) #1

declare dso_local i32 @ecore_send_msg2pf(%struct.ecore_hwfn*, i64*, i32) #1

declare dso_local i32 @ecore_vf_pf_req_end(%struct.ecore_hwfn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
