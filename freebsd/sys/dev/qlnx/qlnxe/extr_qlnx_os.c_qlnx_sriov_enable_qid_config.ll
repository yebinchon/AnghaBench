; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_sriov_enable_qid_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_sriov_enable_qid_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_iov_vf_init_params = type { i64, i64, i64*, i64*, i64, i64 }

@ECORE_PF_L2_QUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, i64, %struct.ecore_iov_vf_init_params*)* @qlnx_sriov_enable_qid_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlnx_sriov_enable_qid_config(%struct.ecore_hwfn* %0, i64 %1, %struct.ecore_iov_vf_init_params* %2) #0 {
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ecore_iov_vf_init_params*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.ecore_iov_vf_init_params* %2, %struct.ecore_iov_vf_init_params** %6, align 8
  %9 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %10 = load i32, i32* @ECORE_PF_L2_QUE, align 4
  %11 = call i64 @FEAT_NUM(%struct.ecore_hwfn* %9, i32 %10)
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.ecore_iov_vf_init_params*, %struct.ecore_iov_vf_init_params** %6, align 8
  %14 = getelementptr inbounds %struct.ecore_iov_vf_init_params, %struct.ecore_iov_vf_init_params* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = mul i64 %12, %15
  %17 = add i64 %11, %16
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load %struct.ecore_iov_vf_init_params*, %struct.ecore_iov_vf_init_params** %6, align 8
  %20 = getelementptr inbounds %struct.ecore_iov_vf_init_params, %struct.ecore_iov_vf_init_params* %19, i32 0, i32 1
  store i64 %18, i64* %20, align 8
  store i64 0, i64* %8, align 8
  br label %21

21:                                               ; preds = %44, %3
  %22 = load i64, i64* %8, align 8
  %23 = load %struct.ecore_iov_vf_init_params*, %struct.ecore_iov_vf_init_params** %6, align 8
  %24 = getelementptr inbounds %struct.ecore_iov_vf_init_params, %struct.ecore_iov_vf_init_params* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ult i64 %22, %25
  br i1 %26, label %27, label %47

27:                                               ; preds = %21
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* %8, align 8
  %30 = add i64 %28, %29
  %31 = load %struct.ecore_iov_vf_init_params*, %struct.ecore_iov_vf_init_params** %6, align 8
  %32 = getelementptr inbounds %struct.ecore_iov_vf_init_params, %struct.ecore_iov_vf_init_params* %31, i32 0, i32 2
  %33 = load i64*, i64** %32, align 8
  %34 = load i64, i64* %8, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  store i64 %30, i64* %35, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* %8, align 8
  %38 = add i64 %36, %37
  %39 = load %struct.ecore_iov_vf_init_params*, %struct.ecore_iov_vf_init_params** %6, align 8
  %40 = getelementptr inbounds %struct.ecore_iov_vf_init_params, %struct.ecore_iov_vf_init_params* %39, i32 0, i32 3
  %41 = load i64*, i64** %40, align 8
  %42 = load i64, i64* %8, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  store i64 %38, i64* %43, align 8
  br label %44

44:                                               ; preds = %27
  %45 = load i64, i64* %8, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %8, align 8
  br label %21

47:                                               ; preds = %21
  %48 = load i64, i64* %5, align 8
  %49 = add i64 %48, 1
  %50 = load %struct.ecore_iov_vf_init_params*, %struct.ecore_iov_vf_init_params** %6, align 8
  %51 = getelementptr inbounds %struct.ecore_iov_vf_init_params, %struct.ecore_iov_vf_init_params* %50, i32 0, i32 4
  store i64 %49, i64* %51, align 8
  %52 = load i64, i64* %5, align 8
  %53 = add i64 %52, 1
  %54 = load %struct.ecore_iov_vf_init_params*, %struct.ecore_iov_vf_init_params** %6, align 8
  %55 = getelementptr inbounds %struct.ecore_iov_vf_init_params, %struct.ecore_iov_vf_init_params* %54, i32 0, i32 5
  store i64 %53, i64* %55, align 8
  ret void
}

declare dso_local i64 @FEAT_NUM(%struct.ecore_hwfn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
