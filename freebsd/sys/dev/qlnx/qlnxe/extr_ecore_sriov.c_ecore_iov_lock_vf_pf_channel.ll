; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_lock_vf_pf_channel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_lock_vf_pf_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_vf_info = type { i32 }

@ECORE_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"VF[%d]: vf pf channel locked by %s\0A\00", align 1
@ecore_channel_tlvs_string = common dso_local global i64* null, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"VF[%d]: vf pf channel locked by %04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, %struct.ecore_vf_info*, i64)* @ecore_iov_lock_vf_pf_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_iov_lock_vf_pf_channel(%struct.ecore_hwfn* %0, %struct.ecore_vf_info* %1, i64 %2) #0 {
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_vf_info*, align 8
  %6 = alloca i64, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_vf_info* %1, %struct.ecore_vf_info** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %6, align 8
  %8 = call i64 @ecore_iov_tlv_supported(i64 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %3
  %11 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %12 = load i32, i32* @ECORE_MSG_IOV, align 4
  %13 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %5, align 8
  %14 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i64*, i64** @ecore_channel_tlvs_string, align 8
  %17 = load i64, i64* %6, align 8
  %18 = getelementptr inbounds i64, i64* %16, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %11, i32 %12, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %15, i64 %19)
  br label %29

21:                                               ; preds = %3
  %22 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %23 = load i32, i32* @ECORE_MSG_IOV, align 4
  %24 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %5, align 8
  %25 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %22, i32 %23, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %26, i64 %27)
  br label %29

29:                                               ; preds = %21, %10
  ret void
}

declare dso_local i64 @ecore_iov_tlv_supported(i64) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
