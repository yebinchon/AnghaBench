; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c___ecore_iov_spoofchk_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c___ecore_iov_spoofchk_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_vf_info = type { i32, i32, i32, i32, i32 }
%struct.ecore_sp_vport_update_params = type { i32, i32, i32, i32 }

@ECORE_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Spoofchk value[%d] is already configured\0A\00", align 1
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@ECORE_SPQ_MODE_EBLOCK = common dso_local global i32 0, align 4
@OSAL_NULL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Spoofchk val[%d] configured\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"Spoofchk configuration[val:%d] failed for VF[%d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_vf_info*, i32)* @__ecore_iov_spoofchk_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ecore_iov_spoofchk_set(%struct.ecore_hwfn* %0, %struct.ecore_vf_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.ecore_vf_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ecore_sp_vport_update_params, align 4
  %9 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store %struct.ecore_vf_info* %1, %struct.ecore_vf_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %12 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %10, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %17 = load i32, i32* @ECORE_MSG_IOV, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 (%struct.ecore_hwfn*, i32, i8*, i32, ...) @DP_VERBOSE(%struct.ecore_hwfn* %16, i32 %17, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %20, i32* %4, align 4
  br label %64

21:                                               ; preds = %3
  %22 = call i32 @OSAL_MEMSET(%struct.ecore_sp_vport_update_params* %8, i32 0, i32 16)
  %23 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %24 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.ecore_sp_vport_update_params, %struct.ecore_sp_vport_update_params* %8, i32 0, i32 3
  store i32 %25, i32* %26, align 4
  %27 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %28 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.ecore_sp_vport_update_params, %struct.ecore_sp_vport_update_params* %8, i32 0, i32 2
  store i32 %29, i32* %30, align 4
  %31 = getelementptr inbounds %struct.ecore_sp_vport_update_params, %struct.ecore_sp_vport_update_params* %8, i32 0, i32 0
  store i32 1, i32* %31, align 4
  %32 = load i32, i32* %7, align 4
  %33 = getelementptr inbounds %struct.ecore_sp_vport_update_params, %struct.ecore_sp_vport_update_params* %8, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  %34 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %35 = load i32, i32* @ECORE_SPQ_MODE_EBLOCK, align 4
  %36 = load i32, i32* @OSAL_NULL, align 4
  %37 = call i32 @ecore_sp_vport_update(%struct.ecore_hwfn* %34, %struct.ecore_sp_vport_update_params* %8, i32 %35, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @ECORE_SUCCESS, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %54

41:                                               ; preds = %21
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %44 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %46 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %49 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %51 = load i32, i32* @ECORE_MSG_IOV, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 (%struct.ecore_hwfn*, i32, i8*, i32, ...) @DP_VERBOSE(%struct.ecore_hwfn* %50, i32 %51, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  br label %62

54:                                               ; preds = %21
  %55 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %56 = load i32, i32* @ECORE_MSG_IOV, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %59 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (%struct.ecore_hwfn*, i32, i8*, i32, ...) @DP_VERBOSE(%struct.ecore_hwfn* %55, i32 %56, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %57, i32 %60)
  br label %62

62:                                               ; preds = %54, %41
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %62, %15
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32, ...) #1

declare dso_local i32 @OSAL_MEMSET(%struct.ecore_sp_vport_update_params*, i32, i32) #1

declare dso_local i32 @ecore_sp_vport_update(%struct.ecore_hwfn*, %struct.ecore_sp_vport_update_params*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
