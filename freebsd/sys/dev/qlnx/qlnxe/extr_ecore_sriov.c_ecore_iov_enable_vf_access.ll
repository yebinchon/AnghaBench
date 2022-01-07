; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_enable_vf_access.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_enable_vf_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.ecore_ptt = type { i32 }
%struct.ecore_vf_info = type { i32, i32, i32, i64, i32, i64 }

@IGU_VF_CONF_FUNC_EN = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@ECORE_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Enable internal access for vf %x [abs %x]\0A\00", align 1
@IGU_VF_CONF_PARENT = common dso_local global i32 0, align 4
@IGU_REG_VF_CONFIGURATION_RT_OFFSET = common dso_local global i32 0, align 4
@PHASE_VF = common dso_local global i32 0, align 4
@VF_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_vf_info*)* @ecore_iov_enable_vf_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_iov_enable_vf_access(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, %struct.ecore_vf_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.ecore_ptt*, align 8
  %7 = alloca %struct.ecore_vf_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %6, align 8
  store %struct.ecore_vf_info* %2, %struct.ecore_vf_info** %7, align 8
  %10 = load i32, i32* @IGU_VF_CONF_FUNC_EN, align 4
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %11, i32* %9, align 4
  %12 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %7, align 8
  %13 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %12, i32 0, i32 0
  store i32 0, i32* %13, align 8
  %14 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %7, align 8
  %15 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %14, i32 0, i32 5
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %19, i32* %4, align 4
  br label %95

20:                                               ; preds = %3
  %21 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %22 = load i32, i32* @ECORE_MSG_IOV, align 4
  %23 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %7, align 8
  %24 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %27 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %7, align 8
  %28 = call i32 @ECORE_VF_ABS_ID(%struct.ecore_hwfn* %26, %struct.ecore_vf_info* %27)
  %29 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %21, i32 %22, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28)
  %30 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %31 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %32 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %33 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %7, align 8
  %34 = call i32 @ECORE_VF_ABS_ID(%struct.ecore_hwfn* %32, %struct.ecore_vf_info* %33)
  %35 = call i32 @ecore_iov_vf_pglue_clear_err(%struct.ecore_hwfn* %30, %struct.ecore_ptt* %31, i32 %34)
  %36 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %37 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %38 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %7, align 8
  %39 = call i32 @ecore_iov_vf_igu_reset(%struct.ecore_hwfn* %36, %struct.ecore_ptt* %37, %struct.ecore_vf_info* %38)
  %40 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %41 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %42 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %7, align 8
  %43 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %7, align 8
  %46 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @ecore_iov_enable_vf_access_msix(%struct.ecore_hwfn* %40, %struct.ecore_ptt* %41, i32 %44, i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @ECORE_SUCCESS, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %20
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %4, align 4
  br label %95

54:                                               ; preds = %20
  %55 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %56 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %57 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %7, align 8
  %58 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = trunc i64 %59 to i32
  %61 = call i32 @ecore_fid_pretend(%struct.ecore_hwfn* %55, %struct.ecore_ptt* %56, i32 %60)
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @IGU_VF_CONF_PARENT, align 4
  %64 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %65 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @SET_FIELD(i32 %62, i32 %63, i32 %66)
  %68 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %69 = load i32, i32* @IGU_REG_VF_CONFIGURATION_RT_OFFSET, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @STORE_RT_REG(%struct.ecore_hwfn* %68, i32 %69, i32 %70)
  %72 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %73 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %74 = load i32, i32* @PHASE_VF, align 4
  %75 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %7, align 8
  %76 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %79 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @ecore_init_run(%struct.ecore_hwfn* %72, %struct.ecore_ptt* %73, i32 %74, i32 %77, i32 %81)
  %83 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %84 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %85 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %86 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = trunc i64 %88 to i32
  %90 = call i32 @ecore_fid_pretend(%struct.ecore_hwfn* %83, %struct.ecore_ptt* %84, i32 %89)
  %91 = load i32, i32* @VF_FREE, align 4
  %92 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %7, align 8
  %93 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* %9, align 4
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %54, %52, %18
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32, i32) #1

declare dso_local i32 @ECORE_VF_ABS_ID(%struct.ecore_hwfn*, %struct.ecore_vf_info*) #1

declare dso_local i32 @ecore_iov_vf_pglue_clear_err(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

declare dso_local i32 @ecore_iov_vf_igu_reset(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_vf_info*) #1

declare dso_local i32 @ecore_iov_enable_vf_access_msix(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32) #1

declare dso_local i32 @ecore_fid_pretend(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

declare dso_local i32 @SET_FIELD(i32, i32, i32) #1

declare dso_local i32 @STORE_RT_REG(%struct.ecore_hwfn*, i32, i32) #1

declare dso_local i32 @ecore_init_run(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
