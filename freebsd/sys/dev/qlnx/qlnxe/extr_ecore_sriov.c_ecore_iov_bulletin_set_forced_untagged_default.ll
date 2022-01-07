; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_bulletin_set_forced_untagged_default.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_bulletin_set_forced_untagged_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_vf_info = type { i64, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [49 x i8] c"Can not set untagged default, invalid vfid [%d]\0A\00", align 1
@ECORE_INVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Can't set untagged default to malicious VF [%d]\0A\00", align 1
@VF_ENABLED = common dso_local global i64 0, align 8
@ECORE_MSG_IOV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [67 x i8] c"Can't support untagged change for vfid[%d] - VF is already active\0A\00", align 1
@VFPF_BULLETIN_UNTAGGED_DEFAULT = common dso_local global i32 0, align 4
@VFPF_BULLETIN_UNTAGGED_DEFAULT_FORCED = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_iov_bulletin_set_forced_untagged_default(%struct.ecore_hwfn* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ecore_vf_info*, align 8
  %9 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call %struct.ecore_vf_info* @ecore_iov_get_vf_info(%struct.ecore_hwfn* %10, i32 %11, i32 1)
  store %struct.ecore_vf_info* %12, %struct.ecore_vf_info** %8, align 8
  %13 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %8, align 8
  %14 = icmp ne %struct.ecore_vf_info* %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %3
  %16 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %17 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @DP_NOTICE(i32 %18, i32 1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %21, i32* %4, align 4
  br label %70

22:                                               ; preds = %3
  %23 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %8, align 8
  %24 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %29 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @DP_NOTICE(i32 %30, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %33, i32* %4, align 4
  br label %70

34:                                               ; preds = %22
  %35 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %8, align 8
  %36 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @VF_ENABLED, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %42 = load i32, i32* @ECORE_MSG_IOV, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %41, i32 %42, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %45, i32* %4, align 4
  br label %70

46:                                               ; preds = %34
  %47 = load i32, i32* @VFPF_BULLETIN_UNTAGGED_DEFAULT, align 4
  %48 = shl i32 1, %47
  %49 = load i32, i32* @VFPF_BULLETIN_UNTAGGED_DEFAULT_FORCED, align 4
  %50 = shl i32 1, %49
  %51 = or i32 %48, %50
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %8, align 8
  %54 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %52
  store i32 %59, i32* %57, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 1, i32 0
  %64 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %8, align 8
  %65 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  store i32 %63, i32* %68, align 4
  %69 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %46, %40, %27, %15
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local %struct.ecore_vf_info* @ecore_iov_get_vf_info(%struct.ecore_hwfn*, i32, i32) #1

declare dso_local i32 @DP_NOTICE(i32, i32, i8*, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
