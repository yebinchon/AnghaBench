; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_init_fw_funcs.c_ecore_enable_pf_rl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_init_fw_funcs.c_ecore_enable_pf_rl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }

@QM_REG_RLPFENABLE_RT_OFFSET = common dso_local global i32 0, align 4
@QM_E5_NUM_EXT_VOQ = common dso_local global i32 0, align 4
@MAX_NUM_VOQS_E4 = common dso_local global i32 0, align 4
@QM_REG_RLPFVOQENABLE_RT_OFFSET = common dso_local global i32 0, align 4
@QM_REG_RLPFPERIOD_RT_OFFSET = common dso_local global i32 0, align 4
@QM_RL_PERIOD_CLK_25M = common dso_local global i32 0, align 4
@QM_REG_RLPFPERIODTIMER_RT_OFFSET = common dso_local global i32 0, align 4
@QM_BYPASS_EN = common dso_local global i64 0, align 8
@QM_REG_AFULLQMBYPTHRPFRL_RT_OFFSET = common dso_local global i32 0, align 4
@QM_PF_RL_UPPER_BOUND = common dso_local global i32 0, align 4
@QM_REG_RLPFVOQENABLE_MSB_RT_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, i32)* @ecore_enable_pf_rl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_enable_pf_rl(%struct.ecore_hwfn* %0, i32 %1) #0 {
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %8 = load i32, i32* @QM_REG_RLPFENABLE_RT_OFFSET, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i32 1, i32 0
  %13 = call i32 @STORE_RT_REG(%struct.ecore_hwfn* %7, i32 %8, i32 %12)
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %51

16:                                               ; preds = %2
  %17 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %18 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @ECORE_IS_E5(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* @QM_E5_NUM_EXT_VOQ, align 4
  br label %26

24:                                               ; preds = %16
  %25 = load i32, i32* @MAX_NUM_VOQS_E4, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = shl i32 1, %28
  %30 = sub nsw i32 %29, 1
  store i32 %30, i32* %6, align 4
  %31 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %32 = load i32, i32* @QM_REG_RLPFVOQENABLE_RT_OFFSET, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @STORE_RT_REG(%struct.ecore_hwfn* %31, i32 %32, i32 %33)
  %35 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %36 = load i32, i32* @QM_REG_RLPFPERIOD_RT_OFFSET, align 4
  %37 = load i32, i32* @QM_RL_PERIOD_CLK_25M, align 4
  %38 = call i32 @STORE_RT_REG(%struct.ecore_hwfn* %35, i32 %36, i32 %37)
  %39 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %40 = load i32, i32* @QM_REG_RLPFPERIODTIMER_RT_OFFSET, align 4
  %41 = load i32, i32* @QM_RL_PERIOD_CLK_25M, align 4
  %42 = call i32 @STORE_RT_REG(%struct.ecore_hwfn* %39, i32 %40, i32 %41)
  %43 = load i64, i64* @QM_BYPASS_EN, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %26
  %46 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %47 = load i32, i32* @QM_REG_AFULLQMBYPTHRPFRL_RT_OFFSET, align 4
  %48 = load i32, i32* @QM_PF_RL_UPPER_BOUND, align 4
  %49 = call i32 @STORE_RT_REG(%struct.ecore_hwfn* %46, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %45, %26
  br label %51

51:                                               ; preds = %50, %2
  ret void
}

declare dso_local i32 @STORE_RT_REG(%struct.ecore_hwfn*, i32, i32) #1

declare dso_local i64 @ECORE_IS_E5(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
