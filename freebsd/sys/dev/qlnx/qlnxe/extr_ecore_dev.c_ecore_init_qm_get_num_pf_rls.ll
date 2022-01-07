; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_init_qm_get_num_pf_rls.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_init_qm_get_num_pf_rls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }

@u32 = common dso_local global i32 0, align 4
@ECORE_RL = common dso_local global i32 0, align 4
@ECORE_VPORT = common dso_local global i32 0, align 4
@ROCE_DCQCN_RP_MAX_QPS = common dso_local global i64 0, align 8
@NUM_DEFAULT_RLS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [71 x i8] c"no rate limiters left for PF rate limiting [num_pf_rls %d num_vfs %d]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ecore_init_qm_get_num_pf_rls(%struct.ecore_hwfn* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  %6 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %7 = call i64 @ecore_init_qm_get_num_vfs(%struct.ecore_hwfn* %6)
  store i64 %7, i64* %5, align 8
  %8 = load i32, i32* @u32, align 4
  %9 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %10 = load i32, i32* @ECORE_RL, align 4
  %11 = call i32 @RESC_NUM(%struct.ecore_hwfn* %9, i32 %10)
  %12 = load i32, i32* @u32, align 4
  %13 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %14 = load i32, i32* @ECORE_VPORT, align 4
  %15 = call i32 @RESC_NUM(%struct.ecore_hwfn* %13, i32 %14)
  %16 = load i64, i64* @ROCE_DCQCN_RP_MAX_QPS, align 8
  %17 = call i64 @OSAL_MIN_T(i32 %12, i32 %15, i64 %16)
  %18 = call i64 @OSAL_MIN_T(i32 %8, i32 %11, i64 %17)
  store i64 %18, i64* %4, align 8
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @NUM_DEFAULT_RLS, align 8
  %22 = add nsw i64 %20, %21
  %23 = icmp slt i64 %19, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %1
  %25 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %26 = call i64 @IS_ECORE_DCQCN(%struct.ecore_hwfn* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %29, i32 0, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i64 %30, i64 %31)
  br label %33

33:                                               ; preds = %28, %24
  store i64 0, i64* %2, align 8
  br label %41

34:                                               ; preds = %1
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* @NUM_DEFAULT_RLS, align 8
  %37 = add nsw i64 %35, %36
  %38 = load i64, i64* %4, align 8
  %39 = sub nsw i64 %38, %37
  store i64 %39, i64* %4, align 8
  %40 = load i64, i64* %4, align 8
  store i64 %40, i64* %2, align 8
  br label %41

41:                                               ; preds = %34, %33
  %42 = load i64, i64* %2, align 8
  ret i64 %42
}

declare dso_local i64 @ecore_init_qm_get_num_vfs(%struct.ecore_hwfn*) #1

declare dso_local i64 @OSAL_MIN_T(i32, i32, i64) #1

declare dso_local i32 @RESC_NUM(%struct.ecore_hwfn*, i32) #1

declare dso_local i64 @IS_ECORE_DCQCN(%struct.ecore_hwfn*) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
