; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_llh_clear_ppfid_filters.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_llh_clear_ppfid_filters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_ptt = type { i32 }
%struct.ecore_dev = type { i32 }
%struct.ecore_hwfn = type { i32 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@OSAL_NULL = common dso_local global %struct.ecore_ptt* null, align 8
@ECORE_MF_LLH_PROTO_CLSS = common dso_local global i32 0, align 4
@ECORE_MF_LLH_MAC_CLSS = common dso_local global i32 0, align 4
@NIG_REG_LLH_FUNC_FILTER_EN_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ecore_llh_clear_ppfid_filters(%struct.ecore_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.ecore_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.ecore_ptt*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.ecore_dev* %0, %struct.ecore_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.ecore_dev*, %struct.ecore_dev** %3, align 8
  %11 = call %struct.ecore_hwfn* @ECORE_LEADING_HWFN(%struct.ecore_dev* %10)
  store %struct.ecore_hwfn* %11, %struct.ecore_hwfn** %5, align 8
  %12 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %13 = call %struct.ecore_ptt* @ecore_ptt_acquire(%struct.ecore_hwfn* %12)
  store %struct.ecore_ptt* %13, %struct.ecore_ptt** %6, align 8
  %14 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %14, i32* %9, align 4
  %15 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %16 = load %struct.ecore_ptt*, %struct.ecore_ptt** @OSAL_NULL, align 8
  %17 = icmp eq %struct.ecore_ptt* %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %83

19:                                               ; preds = %2
  %20 = load i32, i32* @ECORE_MF_LLH_PROTO_CLSS, align 4
  %21 = load %struct.ecore_dev*, %struct.ecore_dev** %3, align 8
  %22 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %21, i32 0, i32 0
  %23 = call i32 @OSAL_TEST_BIT(i32 %20, i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* @ECORE_MF_LLH_MAC_CLSS, align 4
  %27 = load %struct.ecore_dev*, %struct.ecore_dev** %3, align 8
  %28 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %27, i32 0, i32 0
  %29 = call i32 @OSAL_TEST_BIT(i32 %26, i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  br label %79

32:                                               ; preds = %25, %19
  %33 = load %struct.ecore_dev*, %struct.ecore_dev** %3, align 8
  %34 = load i64, i64* %4, align 8
  %35 = call i32 @ecore_abs_ppfid(%struct.ecore_dev* %33, i64 %34, i64* %8)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @ECORE_SUCCESS, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %79

40:                                               ; preds = %32
  %41 = load %struct.ecore_dev*, %struct.ecore_dev** %3, align 8
  %42 = load i64, i64* %4, align 8
  %43 = call i32 @ecore_llh_shadow_remove_all_filters(%struct.ecore_dev* %41, i64 %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @ECORE_SUCCESS, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %79

48:                                               ; preds = %40
  store i64 0, i64* %7, align 8
  br label %49

49:                                               ; preds = %75, %48
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* @NIG_REG_LLH_FUNC_FILTER_EN_SIZE, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %53, label %78

53:                                               ; preds = %49
  %54 = load %struct.ecore_dev*, %struct.ecore_dev** %3, align 8
  %55 = call i64 @ECORE_IS_E4(%struct.ecore_dev* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %59 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* %7, align 8
  %62 = call i32 @ecore_llh_remove_filter_e4(%struct.ecore_hwfn* %58, %struct.ecore_ptt* %59, i64 %60, i64 %61)
  store i32 %62, i32* %9, align 4
  br label %69

63:                                               ; preds = %53
  %64 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %65 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %66 = load i64, i64* %8, align 8
  %67 = load i64, i64* %7, align 8
  %68 = call i32 @ecore_llh_remove_filter_e5(%struct.ecore_hwfn* %64, %struct.ecore_ptt* %65, i64 %66, i64 %67)
  store i32 %68, i32* %9, align 4
  br label %69

69:                                               ; preds = %63, %57
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @ECORE_SUCCESS, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  br label %79

74:                                               ; preds = %69
  br label %75

75:                                               ; preds = %74
  %76 = load i64, i64* %7, align 8
  %77 = add nsw i64 %76, 1
  store i64 %77, i64* %7, align 8
  br label %49

78:                                               ; preds = %49
  br label %79

79:                                               ; preds = %78, %73, %47, %39, %31
  %80 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %81 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %82 = call i32 @ecore_ptt_release(%struct.ecore_hwfn* %80, %struct.ecore_ptt* %81)
  br label %83

83:                                               ; preds = %79, %18
  ret void
}

declare dso_local %struct.ecore_hwfn* @ECORE_LEADING_HWFN(%struct.ecore_dev*) #1

declare dso_local %struct.ecore_ptt* @ecore_ptt_acquire(%struct.ecore_hwfn*) #1

declare dso_local i32 @OSAL_TEST_BIT(i32, i32*) #1

declare dso_local i32 @ecore_abs_ppfid(%struct.ecore_dev*, i64, i64*) #1

declare dso_local i32 @ecore_llh_shadow_remove_all_filters(%struct.ecore_dev*, i64) #1

declare dso_local i64 @ECORE_IS_E4(%struct.ecore_dev*) #1

declare dso_local i32 @ecore_llh_remove_filter_e4(%struct.ecore_hwfn*, %struct.ecore_ptt*, i64, i64) #1

declare dso_local i32 @ecore_llh_remove_filter_e5(%struct.ecore_hwfn*, %struct.ecore_ptt*, i64, i64) #1

declare dso_local i32 @ecore_ptt_release(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
