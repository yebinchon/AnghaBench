; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_copy_vf_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_copy_vf_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }
%struct.ecore_dmae_params = type { i32, i32 }
%struct.ecore_vf_info = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@ECORE_INVAL = common dso_local global i32 0, align 4
@ECORE_DMAE_FLAG_VF_SRC = common dso_local global i32 0, align 4
@ECORE_DMAE_FLAG_COMPLETION_DST = common dso_local global i32 0, align 4
@ECORE_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Failed to copy message from VF 0x%02x\0A\00", align 1
@ECORE_IO = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_iov_copy_vf_msg(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.ecore_ptt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ecore_dmae_params, align 4
  %9 = alloca %struct.ecore_vf_info*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call %struct.ecore_vf_info* @ecore_iov_get_vf_info(%struct.ecore_hwfn* %10, i32 %11, i32 1)
  store %struct.ecore_vf_info* %12, %struct.ecore_vf_info** %9, align 8
  %13 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %9, align 8
  %14 = icmp ne %struct.ecore_vf_info* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %16, i32* %4, align 4
  br label %47

17:                                               ; preds = %3
  %18 = call i32 @OSAL_MEMSET(%struct.ecore_dmae_params* %8, i32 0, i32 8)
  %19 = load i32, i32* @ECORE_DMAE_FLAG_VF_SRC, align 4
  %20 = load i32, i32* @ECORE_DMAE_FLAG_COMPLETION_DST, align 4
  %21 = or i32 %19, %20
  %22 = getelementptr inbounds %struct.ecore_dmae_params, %struct.ecore_dmae_params* %8, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %9, align 8
  %24 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.ecore_dmae_params, %struct.ecore_dmae_params* %8, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %28 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %29 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %9, align 8
  %30 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %9, align 8
  %34 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @ecore_dmae_host2host(%struct.ecore_hwfn* %27, %struct.ecore_ptt* %28, i32 %32, i32 %36, i32 1, %struct.ecore_dmae_params* %8)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %17
  %40 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %41 = load i32, i32* @ECORE_MSG_IOV, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %40, i32 %41, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @ECORE_IO, align 4
  store i32 %44, i32* %4, align 4
  br label %47

45:                                               ; preds = %17
  %46 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %45, %39, %15
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local %struct.ecore_vf_info* @ecore_iov_get_vf_info(%struct.ecore_hwfn*, i32, i32) #1

declare dso_local i32 @OSAL_MEMSET(%struct.ecore_dmae_params*, i32, i32) #1

declare dso_local i64 @ecore_dmae_host2host(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32, i32, %struct.ecore_dmae_params*) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
