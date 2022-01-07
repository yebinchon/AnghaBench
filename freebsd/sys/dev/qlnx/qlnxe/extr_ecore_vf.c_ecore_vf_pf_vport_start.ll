; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_vf.c_ecore_vf_pf_vport_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_vf.c_ecore_vf_pf_vport_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.ecore_vf_iov* }
%struct.ecore_vf_iov = type { %struct.TYPE_7__*, i32, %struct.ecore_sb_info**, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { %struct.pfvf_def_resp_tlv }
%struct.pfvf_def_resp_tlv = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.ecore_sb_info = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.vfpf_vport_start_tlv = type { i32, i32*, i8*, i8*, i8*, i8*, i8*, i32 }

@CHANNEL_TLV_VPORT_START = common dso_local global i32 0, align 4
@CHANNEL_TLV_LIST_END = common dso_local global i32 0, align 4
@PFVF_STATUS_SUCCESS = common dso_local global i64 0, align 8
@ECORE_INVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_vf_pf_vport_start(%struct.ecore_hwfn* %0, i8* %1, i32 %2, i8* %3, i32 %4, i8* %5, i8* %6, i8* %7) #0 {
  %9 = alloca %struct.ecore_hwfn*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.ecore_vf_iov*, align 8
  %18 = alloca %struct.vfpf_vport_start_tlv*, align 8
  %19 = alloca %struct.pfvf_def_resp_tlv*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.ecore_sb_info*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  store i8* %7, i8** %16, align 8
  %23 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %24 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %23, i32 0, i32 0
  %25 = load %struct.ecore_vf_iov*, %struct.ecore_vf_iov** %24, align 8
  store %struct.ecore_vf_iov* %25, %struct.ecore_vf_iov** %17, align 8
  %26 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %27 = load i32, i32* @CHANNEL_TLV_VPORT_START, align 4
  %28 = call %struct.vfpf_vport_start_tlv* @ecore_vf_pf_prep(%struct.ecore_hwfn* %26, i32 %27, i32 64)
  store %struct.vfpf_vport_start_tlv* %28, %struct.vfpf_vport_start_tlv** %18, align 8
  %29 = load i32, i32* %11, align 4
  %30 = load %struct.vfpf_vport_start_tlv*, %struct.vfpf_vport_start_tlv** %18, align 8
  %31 = getelementptr inbounds %struct.vfpf_vport_start_tlv, %struct.vfpf_vport_start_tlv* %30, i32 0, i32 7
  store i32 %29, i32* %31, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = load %struct.vfpf_vport_start_tlv*, %struct.vfpf_vport_start_tlv** %18, align 8
  %34 = getelementptr inbounds %struct.vfpf_vport_start_tlv, %struct.vfpf_vport_start_tlv* %33, i32 0, i32 6
  store i8* %32, i8** %34, align 8
  %35 = load i8*, i8** %12, align 8
  %36 = load %struct.vfpf_vport_start_tlv*, %struct.vfpf_vport_start_tlv** %18, align 8
  %37 = getelementptr inbounds %struct.vfpf_vport_start_tlv, %struct.vfpf_vport_start_tlv* %36, i32 0, i32 5
  store i8* %35, i8** %37, align 8
  %38 = load i32, i32* %13, align 4
  %39 = load %struct.vfpf_vport_start_tlv*, %struct.vfpf_vport_start_tlv** %18, align 8
  %40 = getelementptr inbounds %struct.vfpf_vport_start_tlv, %struct.vfpf_vport_start_tlv* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load i8*, i8** %14, align 8
  %42 = load %struct.vfpf_vport_start_tlv*, %struct.vfpf_vport_start_tlv** %18, align 8
  %43 = getelementptr inbounds %struct.vfpf_vport_start_tlv, %struct.vfpf_vport_start_tlv* %42, i32 0, i32 4
  store i8* %41, i8** %43, align 8
  %44 = load i8*, i8** %15, align 8
  %45 = load %struct.vfpf_vport_start_tlv*, %struct.vfpf_vport_start_tlv** %18, align 8
  %46 = getelementptr inbounds %struct.vfpf_vport_start_tlv, %struct.vfpf_vport_start_tlv* %45, i32 0, i32 3
  store i8* %44, i8** %46, align 8
  %47 = load i8*, i8** %16, align 8
  %48 = load %struct.vfpf_vport_start_tlv*, %struct.vfpf_vport_start_tlv** %18, align 8
  %49 = getelementptr inbounds %struct.vfpf_vport_start_tlv, %struct.vfpf_vport_start_tlv* %48, i32 0, i32 2
  store i8* %47, i8** %49, align 8
  store i32 0, i32* %21, align 4
  br label %50

50:                                               ; preds = %83, %8
  %51 = load i32, i32* %21, align 4
  %52 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %53 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %52, i32 0, i32 0
  %54 = load %struct.ecore_vf_iov*, %struct.ecore_vf_iov** %53, align 8
  %55 = getelementptr inbounds %struct.ecore_vf_iov, %struct.ecore_vf_iov* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %51, %58
  br i1 %59, label %60, label %86

60:                                               ; preds = %50
  %61 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %62 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %61, i32 0, i32 0
  %63 = load %struct.ecore_vf_iov*, %struct.ecore_vf_iov** %62, align 8
  %64 = getelementptr inbounds %struct.ecore_vf_iov, %struct.ecore_vf_iov* %63, i32 0, i32 2
  %65 = load %struct.ecore_sb_info**, %struct.ecore_sb_info*** %64, align 8
  %66 = load i32, i32* %21, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.ecore_sb_info*, %struct.ecore_sb_info** %65, i64 %67
  %69 = load %struct.ecore_sb_info*, %struct.ecore_sb_info** %68, align 8
  store %struct.ecore_sb_info* %69, %struct.ecore_sb_info** %22, align 8
  %70 = load %struct.ecore_sb_info*, %struct.ecore_sb_info** %22, align 8
  %71 = icmp ne %struct.ecore_sb_info* %70, null
  br i1 %71, label %72, label %82

72:                                               ; preds = %60
  %73 = load %struct.ecore_sb_info*, %struct.ecore_sb_info** %22, align 8
  %74 = getelementptr inbounds %struct.ecore_sb_info, %struct.ecore_sb_info* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.vfpf_vport_start_tlv*, %struct.vfpf_vport_start_tlv** %18, align 8
  %77 = getelementptr inbounds %struct.vfpf_vport_start_tlv, %struct.vfpf_vport_start_tlv* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %21, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 %75, i32* %81, align 4
  br label %82

82:                                               ; preds = %72, %60
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %21, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %21, align 4
  br label %50

86:                                               ; preds = %50
  %87 = load %struct.ecore_vf_iov*, %struct.ecore_vf_iov** %17, align 8
  %88 = getelementptr inbounds %struct.ecore_vf_iov, %struct.ecore_vf_iov* %87, i32 0, i32 1
  %89 = load i32, i32* @CHANNEL_TLV_LIST_END, align 4
  %90 = call i32 @ecore_add_tlv(i32* %88, i32 %89, i32 4)
  %91 = load %struct.ecore_vf_iov*, %struct.ecore_vf_iov** %17, align 8
  %92 = getelementptr inbounds %struct.ecore_vf_iov, %struct.ecore_vf_iov* %91, i32 0, i32 0
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  store %struct.pfvf_def_resp_tlv* %94, %struct.pfvf_def_resp_tlv** %19, align 8
  %95 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %96 = load %struct.pfvf_def_resp_tlv*, %struct.pfvf_def_resp_tlv** %19, align 8
  %97 = getelementptr inbounds %struct.pfvf_def_resp_tlv, %struct.pfvf_def_resp_tlv* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = call i32 @ecore_send_msg2pf(%struct.ecore_hwfn* %95, i64* %98, i32 8)
  store i32 %99, i32* %20, align 4
  %100 = load i32, i32* %20, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %86
  br label %113

103:                                              ; preds = %86
  %104 = load %struct.pfvf_def_resp_tlv*, %struct.pfvf_def_resp_tlv** %19, align 8
  %105 = getelementptr inbounds %struct.pfvf_def_resp_tlv, %struct.pfvf_def_resp_tlv* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @PFVF_STATUS_SUCCESS, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %103
  %111 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %111, i32* %20, align 4
  br label %113

112:                                              ; preds = %103
  br label %113

113:                                              ; preds = %112, %110, %102
  %114 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %115 = load i32, i32* %20, align 4
  %116 = call i32 @ecore_vf_pf_req_end(%struct.ecore_hwfn* %114, i32 %115)
  %117 = load i32, i32* %20, align 4
  ret i32 %117
}

declare dso_local %struct.vfpf_vport_start_tlv* @ecore_vf_pf_prep(%struct.ecore_hwfn*, i32, i32) #1

declare dso_local i32 @ecore_add_tlv(i32*, i32, i32) #1

declare dso_local i32 @ecore_send_msg2pf(%struct.ecore_hwfn*, i64*, i32) #1

declare dso_local i32 @ecore_vf_pf_req_end(%struct.ecore_hwfn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
