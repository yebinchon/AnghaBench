; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_llh_remove_protocol_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_llh_remove_protocol_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_ptt = type { i32 }
%struct.ecore_dev = type { i32 }
%struct.ecore_hwfn = type { i32 }
%union.ecore_llh_filter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8*, i8* }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@OSAL_NULL = common dso_local global %struct.ecore_ptt* null, align 8
@ECORE_MF_LLH_PROTO_CLSS = common dso_local global i32 0, align 4
@ECORE_MSG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [87 x i8] c"LLH: Removed protocol filter [%s] from ppfid %hhd [abs %hhd] at idx %hhd [ref_cnt %d]\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"LLH: Failed to remove protocol filter [%s] from ppfid %hhd\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ecore_llh_remove_protocol_filter(%struct.ecore_dev* %0, i32 %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.ecore_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.ecore_hwfn*, align 8
  %12 = alloca %struct.ecore_ptt*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [32 x i32], align 16
  %16 = alloca %union.ecore_llh_filter, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.ecore_dev* %0, %struct.ecore_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %19 = load %struct.ecore_dev*, %struct.ecore_dev** %6, align 8
  %20 = call %struct.ecore_hwfn* @ECORE_LEADING_HWFN(%struct.ecore_dev* %19)
  store %struct.ecore_hwfn* %20, %struct.ecore_hwfn** %11, align 8
  %21 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %11, align 8
  %22 = call %struct.ecore_ptt* @ecore_ptt_acquire(%struct.ecore_hwfn* %21)
  store %struct.ecore_ptt* %22, %struct.ecore_ptt** %12, align 8
  %23 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %23, i32* %17, align 4
  %24 = load %struct.ecore_ptt*, %struct.ecore_ptt** %12, align 8
  %25 = load %struct.ecore_ptt*, %struct.ecore_ptt** @OSAL_NULL, align 8
  %26 = icmp eq %struct.ecore_ptt* %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %5
  br label %104

28:                                               ; preds = %5
  %29 = load i32, i32* @ECORE_MF_LLH_PROTO_CLSS, align 4
  %30 = load %struct.ecore_dev*, %struct.ecore_dev** %6, align 8
  %31 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %30, i32 0, i32 0
  %32 = call i32 @OSAL_TEST_BIT(i32 %29, i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  br label %100

35:                                               ; preds = %28
  %36 = load %struct.ecore_dev*, %struct.ecore_dev** %6, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i8*, i8** %9, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = getelementptr inbounds [32 x i32], [32 x i32]* %15, i64 0, i64 0
  %41 = call i32 @ecore_llh_protocol_filter_stringify(%struct.ecore_dev* %36, i32 %37, i8* %38, i8* %39, i32* %40, i32 128)
  store i32 %41, i32* %17, align 4
  %42 = load i32, i32* %17, align 4
  %43 = load i32, i32* @ECORE_SUCCESS, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  br label %95

46:                                               ; preds = %35
  %47 = call i32 @OSAL_MEM_ZERO(%union.ecore_llh_filter* %16, i32 24)
  %48 = load i32, i32* %8, align 4
  %49 = bitcast %union.ecore_llh_filter* %16 to %struct.TYPE_2__*
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = bitcast %union.ecore_llh_filter* %16 to %struct.TYPE_2__*
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  store i8* %51, i8** %53, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = bitcast %union.ecore_llh_filter* %16 to %struct.TYPE_2__*
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  %57 = load %struct.ecore_dev*, %struct.ecore_dev** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @ecore_llh_shadow_remove_filter(%struct.ecore_dev* %57, i32 %58, %union.ecore_llh_filter* %16, i32* %13, i32* %18)
  store i32 %59, i32* %17, align 4
  %60 = load i32, i32* %17, align 4
  %61 = load i32, i32* @ECORE_SUCCESS, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %46
  br label %95

64:                                               ; preds = %46
  %65 = load %struct.ecore_dev*, %struct.ecore_dev** %6, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @ecore_abs_ppfid(%struct.ecore_dev* %65, i32 %66, i32* %14)
  store i32 %67, i32* %17, align 4
  %68 = load i32, i32* %17, align 4
  %69 = load i32, i32* @ECORE_SUCCESS, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  br label %95

72:                                               ; preds = %64
  %73 = load i32, i32* %18, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %86, label %75

75:                                               ; preds = %72
  %76 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %11, align 8
  %77 = load %struct.ecore_ptt*, %struct.ecore_ptt** %12, align 8
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* %13, align 4
  %80 = call i32 @ecore_llh_remove_filter(%struct.ecore_hwfn* %76, %struct.ecore_ptt* %77, i32 %78, i32 %79)
  store i32 %80, i32* %17, align 4
  %81 = load i32, i32* %17, align 4
  %82 = load i32, i32* @ECORE_SUCCESS, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %75
  br label %95

85:                                               ; preds = %75
  br label %86

86:                                               ; preds = %85, %72
  %87 = load %struct.ecore_dev*, %struct.ecore_dev** %6, align 8
  %88 = load i32, i32* @ECORE_MSG_SP, align 4
  %89 = getelementptr inbounds [32 x i32], [32 x i32]* %15, i64 0, i64 0
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* %18, align 4
  %94 = call i32 @DP_VERBOSE(%struct.ecore_dev* %87, i32 %88, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0), i32* %89, i32 %90, i32 %91, i32 %92, i32 %93)
  br label %100

95:                                               ; preds = %84, %71, %63, %45
  %96 = load %struct.ecore_dev*, %struct.ecore_dev** %6, align 8
  %97 = getelementptr inbounds [32 x i32], [32 x i32]* %15, i64 0, i64 0
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @DP_NOTICE(%struct.ecore_dev* %96, i32 0, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32* %97, i32 %98)
  br label %100

100:                                              ; preds = %95, %86, %34
  %101 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %11, align 8
  %102 = load %struct.ecore_ptt*, %struct.ecore_ptt** %12, align 8
  %103 = call i32 @ecore_ptt_release(%struct.ecore_hwfn* %101, %struct.ecore_ptt* %102)
  br label %104

104:                                              ; preds = %100, %27
  ret void
}

declare dso_local %struct.ecore_hwfn* @ECORE_LEADING_HWFN(%struct.ecore_dev*) #1

declare dso_local %struct.ecore_ptt* @ecore_ptt_acquire(%struct.ecore_hwfn*) #1

declare dso_local i32 @OSAL_TEST_BIT(i32, i32*) #1

declare dso_local i32 @ecore_llh_protocol_filter_stringify(%struct.ecore_dev*, i32, i8*, i8*, i32*, i32) #1

declare dso_local i32 @OSAL_MEM_ZERO(%union.ecore_llh_filter*, i32) #1

declare dso_local i32 @ecore_llh_shadow_remove_filter(%struct.ecore_dev*, i32, %union.ecore_llh_filter*, i32*, i32*) #1

declare dso_local i32 @ecore_abs_ppfid(%struct.ecore_dev*, i32, i32*) #1

declare dso_local i32 @ecore_llh_remove_filter(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_dev*, i32, i8*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_dev*, i32, i8*, i32*, i32) #1

declare dso_local i32 @ecore_ptt_release(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
