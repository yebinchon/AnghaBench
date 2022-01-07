; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_llh_set_roce_affinity.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_llh_set_roce_affinity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_ptt = type { i32 }
%struct.ecore_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.ecore_hwfn = type { i32 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@OSAL_NULL = common dso_local global %struct.ecore_ptt* null, align 8
@ECORE_AGAIN = common dso_local global i32 0, align 4
@NIG_REG_LLH_ENG_CLS_ROCE_QP_SEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Invalid affinity value for RoCE [%d]\0A\00", align 1
@ECORE_INVAL = common dso_local global i32 0, align 4
@NIG_REG_PPF_TO_ENGINE_SEL = common dso_local global i32 0, align 4
@NIG_REG_PPF_TO_ENGINE_SEL_ROCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_llh_set_roce_affinity(%struct.ecore_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ecore_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ecore_hwfn*, align 8
  %7 = alloca %struct.ecore_ptt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.ecore_dev* %0, %struct.ecore_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.ecore_dev*, %struct.ecore_dev** %4, align 8
  %15 = call %struct.ecore_hwfn* @ECORE_LEADING_HWFN(%struct.ecore_dev* %14)
  store %struct.ecore_hwfn* %15, %struct.ecore_hwfn** %6, align 8
  %16 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %17 = call %struct.ecore_ptt* @ecore_ptt_acquire(%struct.ecore_hwfn* %16)
  store %struct.ecore_ptt* %17, %struct.ecore_ptt** %7, align 8
  %18 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %18, i32* %11, align 4
  %19 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %20 = load %struct.ecore_ptt*, %struct.ecore_ptt** @OSAL_NULL, align 8
  %21 = icmp eq %struct.ecore_ptt* %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @ECORE_AGAIN, align 4
  store i32 %23, i32* %3, align 4
  br label %89

24:                                               ; preds = %2
  %25 = load %struct.ecore_dev*, %struct.ecore_dev** %4, align 8
  %26 = call i32 @ECORE_IS_CMT(%struct.ecore_dev* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  br label %84

29:                                               ; preds = %24
  %30 = load i32, i32* %5, align 4
  switch i32 %30, label %38 [
    i32 129, label %31
    i32 128, label %32
    i32 130, label %33
  ]

31:                                               ; preds = %29
  store i32 0, i32* %10, align 4
  br label %43

32:                                               ; preds = %29
  store i32 1, i32* %10, align 4
  br label %43

33:                                               ; preds = %29
  store i32 2, i32* %10, align 4
  %34 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %35 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %36 = load i32, i32* @NIG_REG_LLH_ENG_CLS_ROCE_QP_SEL, align 4
  %37 = call i32 @ecore_wr(%struct.ecore_hwfn* %34, %struct.ecore_ptt* %35, i32 %36, i32 15)
  br label %43

38:                                               ; preds = %29
  %39 = load %struct.ecore_dev*, %struct.ecore_dev** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @DP_NOTICE(%struct.ecore_dev* %39, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %42, i32* %11, align 4
  br label %84

43:                                               ; preds = %33, %32, %31
  store i64 0, i64* %12, align 8
  br label %44

44:                                               ; preds = %80, %43
  %45 = load i64, i64* %12, align 8
  %46 = load %struct.ecore_dev*, %struct.ecore_dev** %4, align 8
  %47 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp slt i64 %45, %50
  br i1 %51, label %52, label %83

52:                                               ; preds = %44
  %53 = load %struct.ecore_dev*, %struct.ecore_dev** %4, align 8
  %54 = load i64, i64* %12, align 8
  %55 = call i32 @ecore_abs_ppfid(%struct.ecore_dev* %53, i64 %54, i64* %13)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @ECORE_SUCCESS, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %84

60:                                               ; preds = %52
  %61 = load i32, i32* @NIG_REG_PPF_TO_ENGINE_SEL, align 4
  %62 = sext i32 %61 to i64
  %63 = load i64, i64* %13, align 8
  %64 = mul nsw i64 %63, 4
  %65 = add nsw i64 %62, %64
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %8, align 4
  %67 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %68 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @ecore_rd(%struct.ecore_hwfn* %67, %struct.ecore_ptt* %68, i32 %69)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @NIG_REG_PPF_TO_ENGINE_SEL_ROCE, align 4
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @SET_FIELD(i32 %71, i32 %72, i32 %73)
  %75 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %76 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @ecore_wr(%struct.ecore_hwfn* %75, %struct.ecore_ptt* %76, i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %60
  %81 = load i64, i64* %12, align 8
  %82 = add nsw i64 %81, 1
  store i64 %82, i64* %12, align 8
  br label %44

83:                                               ; preds = %44
  br label %84

84:                                               ; preds = %83, %59, %38, %28
  %85 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %86 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %87 = call i32 @ecore_ptt_release(%struct.ecore_hwfn* %85, %struct.ecore_ptt* %86)
  %88 = load i32, i32* %11, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %84, %22
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local %struct.ecore_hwfn* @ECORE_LEADING_HWFN(%struct.ecore_dev*) #1

declare dso_local %struct.ecore_ptt* @ecore_ptt_acquire(%struct.ecore_hwfn*) #1

declare dso_local i32 @ECORE_IS_CMT(%struct.ecore_dev*) #1

declare dso_local i32 @ecore_wr(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_dev*, i32, i8*, i32) #1

declare dso_local i32 @ecore_abs_ppfid(%struct.ecore_dev*, i64, i64*) #1

declare dso_local i32 @ecore_rd(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

declare dso_local i32 @SET_FIELD(i32, i32, i32) #1

declare dso_local i32 @ecore_ptt_release(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
