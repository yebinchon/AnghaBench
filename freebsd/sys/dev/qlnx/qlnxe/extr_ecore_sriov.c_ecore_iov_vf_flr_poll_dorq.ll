; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_vf_flr_poll_dorq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_vf_flr_poll_dorq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.ecore_vf_info = type { i32, i64 }
%struct.ecore_ptt = type { i32 }

@DORQ_REG_VF_USAGE_CNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"VF[%d] - dorq failed to cleanup [usage 0x%08x]\0A\00", align 1
@ECORE_TIMEOUT = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_vf_info*, %struct.ecore_ptt*)* @ecore_iov_vf_flr_poll_dorq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_iov_vf_flr_poll_dorq(%struct.ecore_hwfn* %0, %struct.ecore_vf_info* %1, %struct.ecore_ptt* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.ecore_vf_info*, align 8
  %7 = alloca %struct.ecore_ptt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store %struct.ecore_vf_info* %1, %struct.ecore_vf_info** %6, align 8
  store %struct.ecore_ptt* %2, %struct.ecore_ptt** %7, align 8
  %10 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %11 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %12 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %13 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = trunc i64 %14 to i32
  %16 = call i32 @ecore_fid_pretend(%struct.ecore_hwfn* %10, %struct.ecore_ptt* %11, i32 %15)
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %30, %3
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 50
  br i1 %19, label %20, label %33

20:                                               ; preds = %17
  %21 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %22 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %23 = load i32, i32* @DORQ_REG_VF_USAGE_CNT, align 4
  %24 = call i32 @ecore_rd(%struct.ecore_hwfn* %21, %struct.ecore_ptt* %22, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  br label %33

28:                                               ; preds = %20
  %29 = call i32 @OSAL_MSLEEP(i32 20)
  br label %30

30:                                               ; preds = %28
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %8, align 4
  br label %17

33:                                               ; preds = %27, %17
  %34 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %35 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %36 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %37 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = call i32 @ecore_fid_pretend(%struct.ecore_hwfn* %34, %struct.ecore_ptt* %35, i32 %40)
  %42 = load i32, i32* %8, align 4
  %43 = icmp eq i32 %42, 50
  br i1 %43, label %44, label %52

44:                                               ; preds = %33
  %45 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %46 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %47 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @DP_ERR(%struct.ecore_hwfn* %45, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %49)
  %51 = load i32, i32* @ECORE_TIMEOUT, align 4
  store i32 %51, i32* %4, align 4
  br label %54

52:                                               ; preds = %33
  %53 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %52, %44
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @ecore_fid_pretend(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

declare dso_local i32 @ecore_rd(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

declare dso_local i32 @OSAL_MSLEEP(i32) #1

declare dso_local i32 @DP_ERR(%struct.ecore_hwfn*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
