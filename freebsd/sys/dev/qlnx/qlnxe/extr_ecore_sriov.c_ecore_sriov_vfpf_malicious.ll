; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_sriov_vfpf_malicious.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_sriov_vfpf_malicious.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.malicious_vf_eqe_data = type { i32, i32 }
%struct.ecore_vf_info = type { i32, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"VF [%d] - Malicious behavior [%02x]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, %struct.malicious_vf_eqe_data*)* @ecore_sriov_vfpf_malicious to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_sriov_vfpf_malicious(%struct.ecore_hwfn* %0, %struct.malicious_vf_eqe_data* %1) #0 {
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca %struct.malicious_vf_eqe_data*, align 8
  %5 = alloca %struct.ecore_vf_info*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  store %struct.malicious_vf_eqe_data* %1, %struct.malicious_vf_eqe_data** %4, align 8
  %6 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %7 = load %struct.malicious_vf_eqe_data*, %struct.malicious_vf_eqe_data** %4, align 8
  %8 = getelementptr inbounds %struct.malicious_vf_eqe_data, %struct.malicious_vf_eqe_data* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.ecore_vf_info* @ecore_sriov_get_vf_from_absid(%struct.ecore_hwfn* %6, i32 %9)
  store %struct.ecore_vf_info* %10, %struct.ecore_vf_info** %5, align 8
  %11 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %5, align 8
  %12 = icmp ne %struct.ecore_vf_info* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %45

14:                                               ; preds = %2
  %15 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %5, align 8
  %16 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %14
  %20 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %21 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %5, align 8
  %22 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.malicious_vf_eqe_data*, %struct.malicious_vf_eqe_data** %4, align 8
  %25 = getelementptr inbounds %struct.malicious_vf_eqe_data, %struct.malicious_vf_eqe_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %20, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %26)
  %28 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %5, align 8
  %29 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %28, i32 0, i32 0
  store i32 1, i32* %29, align 4
  br label %39

30:                                               ; preds = %14
  %31 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %32 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %5, align 8
  %33 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.malicious_vf_eqe_data*, %struct.malicious_vf_eqe_data** %4, align 8
  %36 = getelementptr inbounds %struct.malicious_vf_eqe_data, %struct.malicious_vf_eqe_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @DP_INFO(%struct.ecore_hwfn* %31, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %37)
  br label %39

39:                                               ; preds = %30, %19
  %40 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %41 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %5, align 8
  %42 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @OSAL_PF_VF_MALICIOUS(%struct.ecore_hwfn* %40, i32 %43)
  br label %45

45:                                               ; preds = %39, %13
  ret void
}

declare dso_local %struct.ecore_vf_info* @ecore_sriov_get_vf_from_absid(%struct.ecore_hwfn*, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, i32, i32) #1

declare dso_local i32 @DP_INFO(%struct.ecore_hwfn*, i8*, i32, i32) #1

declare dso_local i32 @OSAL_PF_VF_MALICIOUS(%struct.ecore_hwfn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
