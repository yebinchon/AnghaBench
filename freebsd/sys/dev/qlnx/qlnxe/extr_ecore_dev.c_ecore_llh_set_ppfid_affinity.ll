; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_llh_set_ppfid_affinity.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_llh_set_ppfid_affinity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_ptt = type { i32 }
%struct.ecore_dev = type { i32 }
%struct.ecore_hwfn = type { i32 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@OSAL_NULL = common dso_local global %struct.ecore_ptt* null, align 8
@ECORE_AGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Invalid affinity value for ppfid [%d]\0A\00", align 1
@ECORE_INVAL = common dso_local global i32 0, align 4
@NIG_REG_PPF_TO_ENGINE_SEL = common dso_local global i32 0, align 4
@NIG_REG_PPF_TO_ENGINE_SEL_NON_ROCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_llh_set_ppfid_affinity(%struct.ecore_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ecore_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ecore_hwfn*, align 8
  %9 = alloca %struct.ecore_ptt*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ecore_dev* %0, %struct.ecore_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load %struct.ecore_dev*, %struct.ecore_dev** %5, align 8
  %16 = call %struct.ecore_hwfn* @ECORE_LEADING_HWFN(%struct.ecore_dev* %15)
  store %struct.ecore_hwfn* %16, %struct.ecore_hwfn** %8, align 8
  %17 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %18 = call %struct.ecore_ptt* @ecore_ptt_acquire(%struct.ecore_hwfn* %17)
  store %struct.ecore_ptt* %18, %struct.ecore_ptt** %9, align 8
  %19 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %19, i32* %13, align 4
  %20 = load %struct.ecore_ptt*, %struct.ecore_ptt** %9, align 8
  %21 = load %struct.ecore_ptt*, %struct.ecore_ptt** @OSAL_NULL, align 8
  %22 = icmp eq %struct.ecore_ptt* %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @ECORE_AGAIN, align 4
  store i32 %24, i32* %4, align 4
  br label %85

25:                                               ; preds = %3
  %26 = load %struct.ecore_dev*, %struct.ecore_dev** %5, align 8
  %27 = call i32 @ECORE_IS_CMT(%struct.ecore_dev* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  br label %80

30:                                               ; preds = %25
  %31 = load %struct.ecore_dev*, %struct.ecore_dev** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @ecore_abs_ppfid(%struct.ecore_dev* %31, i32 %32, i32* %14)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* @ECORE_SUCCESS, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %80

38:                                               ; preds = %30
  %39 = load i32, i32* %7, align 4
  switch i32 %39, label %43 [
    i32 129, label %40
    i32 128, label %41
    i32 130, label %42
  ]

40:                                               ; preds = %38
  store i32 0, i32* %12, align 4
  br label %48

41:                                               ; preds = %38
  store i32 1, i32* %12, align 4
  br label %48

42:                                               ; preds = %38
  store i32 2, i32* %12, align 4
  br label %48

43:                                               ; preds = %38
  %44 = load %struct.ecore_dev*, %struct.ecore_dev** %5, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @DP_NOTICE(%struct.ecore_dev* %44, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %47, i32* %13, align 4
  br label %80

48:                                               ; preds = %42, %41, %40
  %49 = load i32, i32* @NIG_REG_PPF_TO_ENGINE_SEL, align 4
  %50 = load i32, i32* %14, align 4
  %51 = mul nsw i32 %50, 4
  %52 = add nsw i32 %49, %51
  store i32 %52, i32* %10, align 4
  %53 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %54 = load %struct.ecore_ptt*, %struct.ecore_ptt** %9, align 8
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @ecore_rd(%struct.ecore_hwfn* %53, %struct.ecore_ptt* %54, i32 %55)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @NIG_REG_PPF_TO_ENGINE_SEL_NON_ROCE, align 4
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @SET_FIELD(i32 %57, i32 %58, i32 %59)
  %61 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %62 = load %struct.ecore_ptt*, %struct.ecore_ptt** %9, align 8
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @ecore_wr(%struct.ecore_hwfn* %61, %struct.ecore_ptt* %62, i32 %63, i32 %64)
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %79, label %68

68:                                               ; preds = %48
  %69 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %70 = call i64 @ECORE_IS_IWARP_PERSONALITY(%struct.ecore_hwfn* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %68
  %73 = load i32, i32* %7, align 4
  %74 = icmp eq i32 %73, 128
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i32 1, i32 0
  %77 = load %struct.ecore_dev*, %struct.ecore_dev** %5, align 8
  %78 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  br label %79

79:                                               ; preds = %72, %68, %48
  br label %80

80:                                               ; preds = %79, %43, %37, %29
  %81 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %82 = load %struct.ecore_ptt*, %struct.ecore_ptt** %9, align 8
  %83 = call i32 @ecore_ptt_release(%struct.ecore_hwfn* %81, %struct.ecore_ptt* %82)
  %84 = load i32, i32* %13, align 4
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %80, %23
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local %struct.ecore_hwfn* @ECORE_LEADING_HWFN(%struct.ecore_dev*) #1

declare dso_local %struct.ecore_ptt* @ecore_ptt_acquire(%struct.ecore_hwfn*) #1

declare dso_local i32 @ECORE_IS_CMT(%struct.ecore_dev*) #1

declare dso_local i32 @ecore_abs_ppfid(%struct.ecore_dev*, i32, i32*) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_dev*, i32, i8*, i32) #1

declare dso_local i32 @ecore_rd(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

declare dso_local i32 @SET_FIELD(i32, i32, i32) #1

declare dso_local i32 @ecore_wr(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32) #1

declare dso_local i64 @ECORE_IS_IWARP_PERSONALITY(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_ptt_release(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
