; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_vf.c_ecore_vf_handle_vp_update_tlvs_resp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_vf.c_ecore_vf_handle_vp_update_tlvs_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.ecore_vf_iov* }
%struct.ecore_vf_iov = type { i32 }
%struct.ecore_sp_vport_update_params = type { i32 }
%struct.pfvf_def_resp_tlv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@CHANNEL_TLV_VPORT_UPDATE_ACTIVATE = common dso_local global i64 0, align 8
@CHANNEL_TLV_VPORT_UPDATE_MAX = common dso_local global i64 0, align 8
@ECORE_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"TLV[%d] type %s Configuration %s\0A\00", align 1
@ecore_channel_tlvs_string = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"succeeded\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, %struct.ecore_sp_vport_update_params*)* @ecore_vf_handle_vp_update_tlvs_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_vf_handle_vp_update_tlvs_resp(%struct.ecore_hwfn* %0, %struct.ecore_sp_vport_update_params* %1) #0 {
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca %struct.ecore_sp_vport_update_params*, align 8
  %5 = alloca %struct.ecore_vf_iov*, align 8
  %6 = alloca %struct.pfvf_def_resp_tlv*, align 8
  %7 = alloca i64, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  store %struct.ecore_sp_vport_update_params* %1, %struct.ecore_sp_vport_update_params** %4, align 8
  %8 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %9 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %8, i32 0, i32 0
  %10 = load %struct.ecore_vf_iov*, %struct.ecore_vf_iov** %9, align 8
  store %struct.ecore_vf_iov* %10, %struct.ecore_vf_iov** %5, align 8
  %11 = load i64, i64* @CHANNEL_TLV_VPORT_UPDATE_ACTIVATE, align 8
  store i64 %11, i64* %7, align 8
  br label %12

12:                                               ; preds = %61, %2
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @CHANNEL_TLV_VPORT_UPDATE_MAX, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %64

16:                                               ; preds = %12
  %17 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %18 = load %struct.ecore_sp_vport_update_params*, %struct.ecore_sp_vport_update_params** %4, align 8
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @ecore_vf_handle_vp_update_is_needed(%struct.ecore_hwfn* %17, %struct.ecore_sp_vport_update_params* %18, i64 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  br label %61

23:                                               ; preds = %16
  %24 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %25 = load %struct.ecore_vf_iov*, %struct.ecore_vf_iov** %5, align 8
  %26 = getelementptr inbounds %struct.ecore_vf_iov, %struct.ecore_vf_iov* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* %7, align 8
  %29 = call i64 @ecore_iov_search_list_tlvs(%struct.ecore_hwfn* %24, i32 %27, i64 %28)
  %30 = inttoptr i64 %29 to %struct.pfvf_def_resp_tlv*
  store %struct.pfvf_def_resp_tlv* %30, %struct.pfvf_def_resp_tlv** %6, align 8
  %31 = load %struct.pfvf_def_resp_tlv*, %struct.pfvf_def_resp_tlv** %6, align 8
  %32 = icmp ne %struct.pfvf_def_resp_tlv* %31, null
  br i1 %32, label %33, label %60

33:                                               ; preds = %23
  %34 = load %struct.pfvf_def_resp_tlv*, %struct.pfvf_def_resp_tlv** %6, align 8
  %35 = getelementptr inbounds %struct.pfvf_def_resp_tlv, %struct.pfvf_def_resp_tlv* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %60

39:                                               ; preds = %33
  %40 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %41 = load i32, i32* @ECORE_MSG_IOV, align 4
  %42 = load i64, i64* %7, align 8
  %43 = load i32*, i32** @ecore_channel_tlvs_string, align 8
  %44 = load i64, i64* %7, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.pfvf_def_resp_tlv*, %struct.pfvf_def_resp_tlv** %6, align 8
  %48 = icmp ne %struct.pfvf_def_resp_tlv* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %39
  %50 = load %struct.pfvf_def_resp_tlv*, %struct.pfvf_def_resp_tlv** %6, align 8
  %51 = getelementptr inbounds %struct.pfvf_def_resp_tlv, %struct.pfvf_def_resp_tlv* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br label %55

55:                                               ; preds = %49, %39
  %56 = phi i1 [ false, %39 ], [ %54, %49 ]
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %59 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %40, i32 %41, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %42, i32 %46, i8* %58)
  br label %60

60:                                               ; preds = %55, %33, %23
  br label %61

61:                                               ; preds = %60, %22
  %62 = load i64, i64* %7, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %7, align 8
  br label %12

64:                                               ; preds = %12
  ret void
}

declare dso_local i32 @ecore_vf_handle_vp_update_is_needed(%struct.ecore_hwfn*, %struct.ecore_sp_vport_update_params*, i64) #1

declare dso_local i64 @ecore_iov_search_list_tlvs(%struct.ecore_hwfn*, i32, i64) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i64, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
