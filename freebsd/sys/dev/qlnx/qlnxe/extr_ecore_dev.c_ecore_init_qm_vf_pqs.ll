; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_init_qm_vf_pqs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_init_qm_vf_pqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.ecore_qm_info }
%struct.ecore_qm_info = type { i64, i32 }

@PQ_FLAGS_VFS = common dso_local global i32 0, align 4
@PQ_INIT_DEFAULT_TC = common dso_local global i32 0, align 4
@PQ_INIT_VF_RL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*)* @ecore_init_qm_vf_pqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_init_qm_vf_pqs(%struct.ecore_hwfn* %0) #0 {
  %2 = alloca %struct.ecore_hwfn*, align 8
  %3 = alloca %struct.ecore_qm_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %2, align 8
  %6 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %7 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %6, i32 0, i32 0
  store %struct.ecore_qm_info* %7, %struct.ecore_qm_info** %3, align 8
  %8 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %9 = call i64 @ecore_init_qm_get_num_vfs(%struct.ecore_hwfn* %8)
  store i64 %9, i64* %5, align 8
  %10 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %11 = call i32 @ecore_get_pq_flags(%struct.ecore_hwfn* %10)
  %12 = load i32, i32* @PQ_FLAGS_VFS, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %39

16:                                               ; preds = %1
  %17 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %18 = load i32, i32* @PQ_FLAGS_VFS, align 4
  %19 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %3, align 8
  %20 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @ecore_init_qm_set_idx(%struct.ecore_hwfn* %17, i32 %18, i32 %21)
  %23 = load i64, i64* %5, align 8
  %24 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %3, align 8
  %25 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  store i64 0, i64* %4, align 8
  br label %26

26:                                               ; preds = %36, %16
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* %5, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %26
  %31 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %32 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %3, align 8
  %33 = load i32, i32* @PQ_INIT_DEFAULT_TC, align 4
  %34 = load i32, i32* @PQ_INIT_VF_RL, align 4
  %35 = call i32 @ecore_init_qm_pq(%struct.ecore_hwfn* %31, %struct.ecore_qm_info* %32, i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %30
  %37 = load i64, i64* %4, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %4, align 8
  br label %26

39:                                               ; preds = %15, %26
  ret void
}

declare dso_local i64 @ecore_init_qm_get_num_vfs(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_get_pq_flags(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_init_qm_set_idx(%struct.ecore_hwfn*, i32, i32) #1

declare dso_local i32 @ecore_init_qm_pq(%struct.ecore_hwfn*, %struct.ecore_qm_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
