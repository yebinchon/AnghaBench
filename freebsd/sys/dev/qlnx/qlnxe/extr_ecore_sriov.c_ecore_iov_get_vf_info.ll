; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_get_vf_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_get_vf_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_vf_info = type { i32 }
%struct.ecore_hwfn = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.ecore_vf_info* }

@OSAL_NULL = common dso_local global %struct.ecore_vf_info* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"No iov info\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"ecore_iov_get_vf_info: VF[%d] is not enabled\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ecore_vf_info* @ecore_iov_get_vf_info(%struct.ecore_hwfn* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.ecore_vf_info*, align 8
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ecore_vf_info*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** @OSAL_NULL, align 8
  store %struct.ecore_vf_info* %9, %struct.ecore_vf_info** %8, align 8
  %10 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %11 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %3
  %15 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %16 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @DP_NOTICE(i32 %17, i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** @OSAL_NULL, align 8
  store %struct.ecore_vf_info* %19, %struct.ecore_vf_info** %4, align 8
  br label %40

20:                                               ; preds = %3
  %21 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i64 @ecore_iov_is_valid_vfid(%struct.ecore_hwfn* %21, i64 %22, i32 %23, i32 0)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %20
  %27 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %28 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %30, align 8
  %32 = load i64, i64* %6, align 8
  %33 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %31, i64 %32
  store %struct.ecore_vf_info* %33, %struct.ecore_vf_info** %8, align 8
  br label %38

34:                                               ; preds = %20
  %35 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @DP_ERR(%struct.ecore_hwfn* %35, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 %36)
  br label %38

38:                                               ; preds = %34, %26
  %39 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %8, align 8
  store %struct.ecore_vf_info* %39, %struct.ecore_vf_info** %4, align 8
  br label %40

40:                                               ; preds = %38, %14
  %41 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %4, align 8
  ret %struct.ecore_vf_info* %41
}

declare dso_local i32 @DP_NOTICE(i32, i32, i8*) #1

declare dso_local i64 @ecore_iov_is_valid_vfid(%struct.ecore_hwfn*, i64, i32, i32) #1

declare dso_local i32 @DP_ERR(%struct.ecore_hwfn*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
