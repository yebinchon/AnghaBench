; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_vf.c_ecore_vf_pf_tunnel_param_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_vf.c_ecore_vf_pf_tunnel_param_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.ecore_vf_iov*, %struct.TYPE_4__* }
%struct.ecore_vf_iov = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.pfvf_update_tunn_param_tlv }
%struct.pfvf_update_tunn_param_tlv = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_4__ = type { %struct.ecore_tunnel_info }
%struct.ecore_tunnel_info = type { i32, i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.vfpf_update_tunn_param_tlv = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@CHANNEL_TLV_UPDATE_TUNN_PARAM = common dso_local global i32 0, align 4
@ECORE_MODE_VXLAN_TUNN = common dso_local global i64 0, align 8
@ECORE_MODE_L2GENEVE_TUNN = common dso_local global i64 0, align 8
@ECORE_MODE_IPGENEVE_TUNN = common dso_local global i64 0, align 8
@ECORE_MODE_L2GRE_TUNN = common dso_local global i64 0, align 8
@ECORE_MODE_IPGRE_TUNN = common dso_local global i64 0, align 8
@CHANNEL_TLV_LIST_END = common dso_local global i32 0, align 4
@PFVF_STATUS_SUCCESS = common dso_local global i64 0, align 8
@ECORE_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to update tunnel parameters\0A\00", align 1
@ECORE_INVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_vf_pf_tunnel_param_update(%struct.ecore_hwfn* %0, %struct.ecore_tunnel_info* %1) #0 {
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca %struct.ecore_tunnel_info*, align 8
  %5 = alloca %struct.ecore_tunnel_info*, align 8
  %6 = alloca %struct.ecore_vf_iov*, align 8
  %7 = alloca %struct.pfvf_update_tunn_param_tlv*, align 8
  %8 = alloca %struct.vfpf_update_tunn_param_tlv*, align 8
  %9 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  store %struct.ecore_tunnel_info* %1, %struct.ecore_tunnel_info** %4, align 8
  %10 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %11 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store %struct.ecore_tunnel_info* %13, %struct.ecore_tunnel_info** %5, align 8
  %14 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %15 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %14, i32 0, i32 0
  %16 = load %struct.ecore_vf_iov*, %struct.ecore_vf_iov** %15, align 8
  store %struct.ecore_vf_iov* %16, %struct.ecore_vf_iov** %6, align 8
  %17 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %18 = load i32, i32* @CHANNEL_TLV_UPDATE_TUNN_PARAM, align 4
  %19 = call %struct.vfpf_update_tunn_param_tlv* @ecore_vf_pf_prep(%struct.ecore_hwfn* %17, i32 %18, i32 40)
  store %struct.vfpf_update_tunn_param_tlv* %19, %struct.vfpf_update_tunn_param_tlv** %8, align 8
  %20 = load %struct.ecore_tunnel_info*, %struct.ecore_tunnel_info** %4, align 8
  %21 = getelementptr inbounds %struct.ecore_tunnel_info, %struct.ecore_tunnel_info* %20, i32 0, i32 8
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %2
  %25 = load %struct.ecore_tunnel_info*, %struct.ecore_tunnel_info** %4, align 8
  %26 = getelementptr inbounds %struct.ecore_tunnel_info, %struct.ecore_tunnel_info* %25, i32 0, i32 7
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load %struct.vfpf_update_tunn_param_tlv*, %struct.vfpf_update_tunn_param_tlv** %8, align 8
  %31 = getelementptr inbounds %struct.vfpf_update_tunn_param_tlv, %struct.vfpf_update_tunn_param_tlv* %30, i32 0, i32 0
  store i32 1, i32* %31, align 4
  br label %32

32:                                               ; preds = %29, %24, %2
  %33 = load %struct.vfpf_update_tunn_param_tlv*, %struct.vfpf_update_tunn_param_tlv** %8, align 8
  %34 = load %struct.ecore_tunnel_info*, %struct.ecore_tunnel_info** %4, align 8
  %35 = getelementptr inbounds %struct.ecore_tunnel_info, %struct.ecore_tunnel_info* %34, i32 0, i32 6
  %36 = load i64, i64* @ECORE_MODE_VXLAN_TUNN, align 8
  %37 = trunc i64 %36 to i32
  %38 = load %struct.vfpf_update_tunn_param_tlv*, %struct.vfpf_update_tunn_param_tlv** %8, align 8
  %39 = getelementptr inbounds %struct.vfpf_update_tunn_param_tlv, %struct.vfpf_update_tunn_param_tlv* %38, i32 0, i32 9
  %40 = load %struct.ecore_tunnel_info*, %struct.ecore_tunnel_info** %4, align 8
  %41 = getelementptr inbounds %struct.ecore_tunnel_info, %struct.ecore_tunnel_info* %40, i32 0, i32 5
  %42 = load %struct.vfpf_update_tunn_param_tlv*, %struct.vfpf_update_tunn_param_tlv** %8, align 8
  %43 = getelementptr inbounds %struct.vfpf_update_tunn_param_tlv, %struct.vfpf_update_tunn_param_tlv* %42, i32 0, i32 8
  %44 = load %struct.vfpf_update_tunn_param_tlv*, %struct.vfpf_update_tunn_param_tlv** %8, align 8
  %45 = getelementptr inbounds %struct.vfpf_update_tunn_param_tlv, %struct.vfpf_update_tunn_param_tlv* %44, i32 0, i32 7
  %46 = call i32 @ecore_vf_prep_tunn_req_tlv(%struct.vfpf_update_tunn_param_tlv* %33, i32* %35, i32 %37, i32* %39, i32* %41, i32* %43, i32* %45)
  %47 = load %struct.vfpf_update_tunn_param_tlv*, %struct.vfpf_update_tunn_param_tlv** %8, align 8
  %48 = load %struct.ecore_tunnel_info*, %struct.ecore_tunnel_info** %4, align 8
  %49 = getelementptr inbounds %struct.ecore_tunnel_info, %struct.ecore_tunnel_info* %48, i32 0, i32 4
  %50 = load i64, i64* @ECORE_MODE_L2GENEVE_TUNN, align 8
  %51 = trunc i64 %50 to i32
  %52 = load %struct.vfpf_update_tunn_param_tlv*, %struct.vfpf_update_tunn_param_tlv** %8, align 8
  %53 = getelementptr inbounds %struct.vfpf_update_tunn_param_tlv, %struct.vfpf_update_tunn_param_tlv* %52, i32 0, i32 6
  %54 = load %struct.ecore_tunnel_info*, %struct.ecore_tunnel_info** %4, align 8
  %55 = getelementptr inbounds %struct.ecore_tunnel_info, %struct.ecore_tunnel_info* %54, i32 0, i32 3
  %56 = load %struct.vfpf_update_tunn_param_tlv*, %struct.vfpf_update_tunn_param_tlv** %8, align 8
  %57 = getelementptr inbounds %struct.vfpf_update_tunn_param_tlv, %struct.vfpf_update_tunn_param_tlv* %56, i32 0, i32 5
  %58 = load %struct.vfpf_update_tunn_param_tlv*, %struct.vfpf_update_tunn_param_tlv** %8, align 8
  %59 = getelementptr inbounds %struct.vfpf_update_tunn_param_tlv, %struct.vfpf_update_tunn_param_tlv* %58, i32 0, i32 4
  %60 = call i32 @ecore_vf_prep_tunn_req_tlv(%struct.vfpf_update_tunn_param_tlv* %47, i32* %49, i32 %51, i32* %53, i32* %55, i32* %57, i32* %59)
  %61 = load %struct.vfpf_update_tunn_param_tlv*, %struct.vfpf_update_tunn_param_tlv** %8, align 8
  %62 = load %struct.ecore_tunnel_info*, %struct.ecore_tunnel_info** %4, align 8
  %63 = getelementptr inbounds %struct.ecore_tunnel_info, %struct.ecore_tunnel_info* %62, i32 0, i32 2
  %64 = load i64, i64* @ECORE_MODE_IPGENEVE_TUNN, align 8
  %65 = trunc i64 %64 to i32
  %66 = load %struct.vfpf_update_tunn_param_tlv*, %struct.vfpf_update_tunn_param_tlv** %8, align 8
  %67 = getelementptr inbounds %struct.vfpf_update_tunn_param_tlv, %struct.vfpf_update_tunn_param_tlv* %66, i32 0, i32 3
  %68 = call i32 @__ecore_vf_prep_tunn_req_tlv(%struct.vfpf_update_tunn_param_tlv* %61, i32* %63, i32 %65, i32* %67)
  %69 = load %struct.vfpf_update_tunn_param_tlv*, %struct.vfpf_update_tunn_param_tlv** %8, align 8
  %70 = load %struct.ecore_tunnel_info*, %struct.ecore_tunnel_info** %4, align 8
  %71 = getelementptr inbounds %struct.ecore_tunnel_info, %struct.ecore_tunnel_info* %70, i32 0, i32 1
  %72 = load i64, i64* @ECORE_MODE_L2GRE_TUNN, align 8
  %73 = trunc i64 %72 to i32
  %74 = load %struct.vfpf_update_tunn_param_tlv*, %struct.vfpf_update_tunn_param_tlv** %8, align 8
  %75 = getelementptr inbounds %struct.vfpf_update_tunn_param_tlv, %struct.vfpf_update_tunn_param_tlv* %74, i32 0, i32 2
  %76 = call i32 @__ecore_vf_prep_tunn_req_tlv(%struct.vfpf_update_tunn_param_tlv* %69, i32* %71, i32 %73, i32* %75)
  %77 = load %struct.vfpf_update_tunn_param_tlv*, %struct.vfpf_update_tunn_param_tlv** %8, align 8
  %78 = load %struct.ecore_tunnel_info*, %struct.ecore_tunnel_info** %4, align 8
  %79 = getelementptr inbounds %struct.ecore_tunnel_info, %struct.ecore_tunnel_info* %78, i32 0, i32 0
  %80 = load i64, i64* @ECORE_MODE_IPGRE_TUNN, align 8
  %81 = trunc i64 %80 to i32
  %82 = load %struct.vfpf_update_tunn_param_tlv*, %struct.vfpf_update_tunn_param_tlv** %8, align 8
  %83 = getelementptr inbounds %struct.vfpf_update_tunn_param_tlv, %struct.vfpf_update_tunn_param_tlv* %82, i32 0, i32 1
  %84 = call i32 @__ecore_vf_prep_tunn_req_tlv(%struct.vfpf_update_tunn_param_tlv* %77, i32* %79, i32 %81, i32* %83)
  %85 = load %struct.ecore_vf_iov*, %struct.ecore_vf_iov** %6, align 8
  %86 = getelementptr inbounds %struct.ecore_vf_iov, %struct.ecore_vf_iov* %85, i32 0, i32 1
  %87 = load i32, i32* @CHANNEL_TLV_LIST_END, align 4
  %88 = call i32 @ecore_add_tlv(i32* %86, i32 %87, i32 4)
  %89 = load %struct.ecore_vf_iov*, %struct.ecore_vf_iov** %6, align 8
  %90 = getelementptr inbounds %struct.ecore_vf_iov, %struct.ecore_vf_iov* %89, i32 0, i32 0
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  store %struct.pfvf_update_tunn_param_tlv* %92, %struct.pfvf_update_tunn_param_tlv** %7, align 8
  %93 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %94 = load %struct.pfvf_update_tunn_param_tlv*, %struct.pfvf_update_tunn_param_tlv** %7, align 8
  %95 = getelementptr inbounds %struct.pfvf_update_tunn_param_tlv, %struct.pfvf_update_tunn_param_tlv* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = call i32 @ecore_send_msg2pf(%struct.ecore_hwfn* %93, i64* %96, i32 8)
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %32
  br label %118

101:                                              ; preds = %32
  %102 = load %struct.pfvf_update_tunn_param_tlv*, %struct.pfvf_update_tunn_param_tlv** %7, align 8
  %103 = getelementptr inbounds %struct.pfvf_update_tunn_param_tlv, %struct.pfvf_update_tunn_param_tlv* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @PFVF_STATUS_SUCCESS, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %113

108:                                              ; preds = %101
  %109 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %110 = load i32, i32* @ECORE_MSG_IOV, align 4
  %111 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %109, i32 %110, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %112 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %112, i32* %9, align 4
  br label %113

113:                                              ; preds = %108, %101
  %114 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %115 = load %struct.ecore_tunnel_info*, %struct.ecore_tunnel_info** %5, align 8
  %116 = load %struct.pfvf_update_tunn_param_tlv*, %struct.pfvf_update_tunn_param_tlv** %7, align 8
  %117 = call i32 @ecore_vf_update_tunn_param(%struct.ecore_hwfn* %114, %struct.ecore_tunnel_info* %115, %struct.pfvf_update_tunn_param_tlv* %116)
  br label %118

118:                                              ; preds = %113, %100
  %119 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %120 = load i32, i32* %9, align 4
  %121 = call i32 @ecore_vf_pf_req_end(%struct.ecore_hwfn* %119, i32 %120)
  %122 = load i32, i32* %9, align 4
  ret i32 %122
}

declare dso_local %struct.vfpf_update_tunn_param_tlv* @ecore_vf_pf_prep(%struct.ecore_hwfn*, i32, i32) #1

declare dso_local i32 @ecore_vf_prep_tunn_req_tlv(%struct.vfpf_update_tunn_param_tlv*, i32*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @__ecore_vf_prep_tunn_req_tlv(%struct.vfpf_update_tunn_param_tlv*, i32*, i32, i32*) #1

declare dso_local i32 @ecore_add_tlv(i32*, i32, i32) #1

declare dso_local i32 @ecore_send_msg2pf(%struct.ecore_hwfn*, i64*, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*) #1

declare dso_local i32 @ecore_vf_update_tunn_param(%struct.ecore_hwfn*, %struct.ecore_tunnel_info*, %struct.pfvf_update_tunn_param_tlv*) #1

declare dso_local i32 @ecore_vf_pf_req_end(%struct.ecore_hwfn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
