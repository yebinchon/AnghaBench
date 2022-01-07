; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_vf_mbx_release.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_vf_mbx_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }
%struct.ecore_vf_info = type { i64, i32, i32 }

@PFVF_STATUS_SUCCESS = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@VF_STOPPED = common dso_local global i64 0, align 8
@VF_FREE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"ecore_sp_vf_stop returned error %d\0A\00", align 1
@PFVF_STATUS_FAILURE = common dso_local global i32 0, align 4
@CHANNEL_TLV_RELEASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_vf_info*)* @ecore_iov_vf_mbx_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_iov_vf_mbx_release(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, %struct.ecore_vf_info* %2) #0 {
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_ptt*, align 8
  %6 = alloca %struct.ecore_vf_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %5, align 8
  store %struct.ecore_vf_info* %2, %struct.ecore_vf_info** %6, align 8
  store i32 4, i32* %7, align 4
  %10 = load i32, i32* @PFVF_STATUS_SUCCESS, align 4
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %11, i32* %9, align 4
  %12 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %13 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %14 = call i32 @ecore_iov_vf_cleanup(%struct.ecore_hwfn* %12, %struct.ecore_vf_info* %13)
  %15 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %16 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @VF_STOPPED, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %47

20:                                               ; preds = %3
  %21 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %22 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @VF_FREE, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %47

26:                                               ; preds = %20
  %27 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %28 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %29 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %32 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @ecore_sp_vf_stop(%struct.ecore_hwfn* %27, i32 %30, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @ECORE_SUCCESS, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %26
  %39 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @DP_ERR(%struct.ecore_hwfn* %39, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @PFVF_STATUS_FAILURE, align 4
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %38, %26
  %44 = load i64, i64* @VF_STOPPED, align 8
  %45 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %46 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  br label %47

47:                                               ; preds = %43, %20, %3
  %48 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %49 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %50 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %51 = load i32, i32* @CHANNEL_TLV_RELEASE, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @ecore_iov_prepare_resp(%struct.ecore_hwfn* %48, %struct.ecore_ptt* %49, %struct.ecore_vf_info* %50, i32 %51, i32 %52, i32 %53)
  ret void
}

declare dso_local i32 @ecore_iov_vf_cleanup(%struct.ecore_hwfn*, %struct.ecore_vf_info*) #1

declare dso_local i32 @ecore_sp_vf_stop(%struct.ecore_hwfn*, i32, i32) #1

declare dso_local i32 @DP_ERR(%struct.ecore_hwfn*, i8*, i32) #1

declare dso_local i32 @ecore_iov_prepare_resp(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_vf_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
