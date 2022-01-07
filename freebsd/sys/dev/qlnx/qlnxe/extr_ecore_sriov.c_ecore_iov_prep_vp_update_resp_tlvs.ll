; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_prep_vp_update_resp_tlvs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_prep_vp_update_resp_tlvs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_vf_info = type { i32 }
%struct.ecore_iov_vf_mbx = type { i32*, i64 }
%struct.pfvf_def_resp_tlv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CHANNEL_TLV_VPORT_UPDATE = common dso_local global i32 0, align 4
@ECORE_IOV_VP_UPDATE_MAX = common dso_local global i32 0, align 4
@PFVF_STATUS_NOT_SUPPORTED = common dso_local global i32 0, align 4
@ECORE_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"VF[%d] - vport_update response: TLV %d, status %02x\0A\00", align 1
@CHANNEL_TLV_LIST_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_vf_info*, %struct.ecore_iov_vf_mbx*, i32, i32, i32)* @ecore_iov_prep_vp_update_resp_tlvs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_iov_prep_vp_update_resp_tlvs(%struct.ecore_hwfn* %0, %struct.ecore_vf_info* %1, %struct.ecore_iov_vf_mbx* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.ecore_hwfn*, align 8
  %8 = alloca %struct.ecore_vf_info*, align 8
  %9 = alloca %struct.ecore_iov_vf_mbx*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.pfvf_def_resp_tlv*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %7, align 8
  store %struct.ecore_vf_info* %1, %struct.ecore_vf_info** %8, align 8
  store %struct.ecore_iov_vf_mbx* %2, %struct.ecore_iov_vf_mbx** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %17 = load %struct.ecore_iov_vf_mbx*, %struct.ecore_iov_vf_mbx** %9, align 8
  %18 = getelementptr inbounds %struct.ecore_iov_vf_mbx, %struct.ecore_iov_vf_mbx* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @OSAL_MEMSET(i64 %19, i32 0, i32 4)
  %21 = load %struct.ecore_iov_vf_mbx*, %struct.ecore_iov_vf_mbx** %9, align 8
  %22 = getelementptr inbounds %struct.ecore_iov_vf_mbx, %struct.ecore_iov_vf_mbx* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i32*
  %25 = load %struct.ecore_iov_vf_mbx*, %struct.ecore_iov_vf_mbx** %9, align 8
  %26 = getelementptr inbounds %struct.ecore_iov_vf_mbx, %struct.ecore_iov_vf_mbx* %25, i32 0, i32 0
  store i32* %24, i32** %26, align 8
  store i32 4, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  store i32 %27, i32* %15, align 4
  %28 = load %struct.ecore_iov_vf_mbx*, %struct.ecore_iov_vf_mbx** %9, align 8
  %29 = getelementptr inbounds %struct.ecore_iov_vf_mbx, %struct.ecore_iov_vf_mbx* %28, i32 0, i32 0
  %30 = load i32, i32* @CHANNEL_TLV_VPORT_UPDATE, align 4
  %31 = load i32, i32* %14, align 4
  %32 = call %struct.pfvf_def_resp_tlv* @ecore_add_tlv(i32** %29, i32 %30, i32 %31)
  store i32 0, i32* %16, align 4
  br label %33

33:                                               ; preds = %82, %6
  %34 = load i32, i32* %16, align 4
  %35 = load i32, i32* @ECORE_IOV_VP_UPDATE_MAX, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %85

37:                                               ; preds = %33
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %16, align 4
  %40 = shl i32 1, %39
  %41 = and i32 %38, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  br label %82

44:                                               ; preds = %37
  %45 = load %struct.ecore_iov_vf_mbx*, %struct.ecore_iov_vf_mbx** %9, align 8
  %46 = getelementptr inbounds %struct.ecore_iov_vf_mbx, %struct.ecore_iov_vf_mbx* %45, i32 0, i32 0
  %47 = load i32, i32* %16, align 4
  %48 = call i32 @ecore_iov_vport_to_tlv(i32 %47)
  %49 = load i32, i32* %14, align 4
  %50 = call %struct.pfvf_def_resp_tlv* @ecore_add_tlv(i32** %46, i32 %48, i32 %49)
  store %struct.pfvf_def_resp_tlv* %50, %struct.pfvf_def_resp_tlv** %13, align 8
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %16, align 4
  %53 = shl i32 1, %52
  %54 = and i32 %51, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %44
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.pfvf_def_resp_tlv*, %struct.pfvf_def_resp_tlv** %13, align 8
  %59 = getelementptr inbounds %struct.pfvf_def_resp_tlv, %struct.pfvf_def_resp_tlv* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 4
  br label %66

61:                                               ; preds = %44
  %62 = load i32, i32* @PFVF_STATUS_NOT_SUPPORTED, align 4
  %63 = load %struct.pfvf_def_resp_tlv*, %struct.pfvf_def_resp_tlv** %13, align 8
  %64 = getelementptr inbounds %struct.pfvf_def_resp_tlv, %struct.pfvf_def_resp_tlv* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 4
  br label %66

66:                                               ; preds = %61, %56
  %67 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %68 = load i32, i32* @ECORE_MSG_IOV, align 4
  %69 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %8, align 8
  %70 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %16, align 4
  %73 = call i32 @ecore_iov_vport_to_tlv(i32 %72)
  %74 = load %struct.pfvf_def_resp_tlv*, %struct.pfvf_def_resp_tlv** %13, align 8
  %75 = getelementptr inbounds %struct.pfvf_def_resp_tlv, %struct.pfvf_def_resp_tlv* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %67, i32 %68, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %71, i32 %73, i32 %77)
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* %15, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %15, align 4
  br label %82

82:                                               ; preds = %66, %43
  %83 = load i32, i32* %16, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %16, align 4
  br label %33

85:                                               ; preds = %33
  %86 = load %struct.ecore_iov_vf_mbx*, %struct.ecore_iov_vf_mbx** %9, align 8
  %87 = getelementptr inbounds %struct.ecore_iov_vf_mbx, %struct.ecore_iov_vf_mbx* %86, i32 0, i32 0
  %88 = load i32, i32* @CHANNEL_TLV_LIST_END, align 4
  %89 = call %struct.pfvf_def_resp_tlv* @ecore_add_tlv(i32** %87, i32 %88, i32 4)
  %90 = load i32, i32* %15, align 4
  ret i32 %90
}

declare dso_local i32 @OSAL_MEMSET(i64, i32, i32) #1

declare dso_local %struct.pfvf_def_resp_tlv* @ecore_add_tlv(i32**, i32, i32) #1

declare dso_local i32 @ecore_iov_vport_to_tlv(i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
