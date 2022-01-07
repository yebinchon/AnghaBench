; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_init_fw_funcs.c_ecore_init_pf_rl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_init_fw_funcs.c_ecore_init_pf_rl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }

@QM_PF_RL_MAX_INC_VAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"Invalid PF rate limit configuration\0A\00", align 1
@QM_REG_RLPFCRD = common dso_local global i64 0, align 8
@QM_RL_CRD_REG_SIGN_BIT = common dso_local global i64 0, align 8
@QM_REG_RLPFINCVAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_init_pf_rl(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ecore_hwfn*, align 8
  %7 = alloca %struct.ecore_ptt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %6, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %11 = load i64, i64* %9, align 8
  %12 = call i64 @QM_RL_INC_VAL(i64 %11)
  store i64 %12, i64* %10, align 8
  %13 = load i64, i64* %10, align 8
  %14 = load i64, i64* @QM_PF_RL_MAX_INC_VAL, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %18 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %17, i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %38

19:                                               ; preds = %4
  %20 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %21 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %22 = load i64, i64* @QM_REG_RLPFCRD, align 8
  %23 = load i32, i32* %8, align 4
  %24 = mul nsw i32 %23, 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %22, %25
  %27 = load i64, i64* @QM_RL_CRD_REG_SIGN_BIT, align 8
  %28 = call i32 @ecore_wr(%struct.ecore_hwfn* %20, %struct.ecore_ptt* %21, i64 %26, i64 %27)
  %29 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %30 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %31 = load i64, i64* @QM_REG_RLPFINCVAL, align 8
  %32 = load i32, i32* %8, align 4
  %33 = mul nsw i32 %32, 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %31, %34
  %36 = load i64, i64* %10, align 8
  %37 = call i32 @ecore_wr(%struct.ecore_hwfn* %29, %struct.ecore_ptt* %30, i64 %35, i64 %36)
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %19, %16
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i64 @QM_RL_INC_VAL(i64) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*) #1

declare dso_local i32 @ecore_wr(%struct.ecore_hwfn*, %struct.ecore_ptt*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
