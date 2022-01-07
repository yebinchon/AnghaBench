; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_llh_remove_mac_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_llh_remove_mac_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_ptt = type { i32 }
%struct.ecore_dev = type { i32 }
%struct.ecore_hwfn = type { i32 }
%union.ecore_llh_filter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@OSAL_NULL = common dso_local global %struct.ecore_ptt* null, align 8
@ECORE_MF_LLH_MAC_CLSS = common dso_local global i32 0, align 4
@ECORE_MSG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [121 x i8] c"LLH: Removed MAC filter [%02hhx:%02hhx:%02hhx:%02hhx:%02hhx:%02hhx] from ppfid %hhd [abs %hhd] at idx %hhd [ref_cnt %d]\0A\00", align 1
@.str.1 = private unnamed_addr constant [94 x i8] c"LLH: Failed to remove MAC filter [%02hhx:%02hhx:%02hhx:%02hhx:%02hhx:%02hhx] from ppfid %hhd\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ecore_llh_remove_mac_filter(%struct.ecore_dev* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.ecore_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ecore_hwfn*, align 8
  %8 = alloca %struct.ecore_ptt*, align 8
  %9 = alloca %union.ecore_llh_filter, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ecore_dev* %0, %struct.ecore_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %14 = load i32, i32* @ETH_ALEN, align 4
  %15 = zext i32 %14 to i64
  %16 = load %struct.ecore_dev*, %struct.ecore_dev** %4, align 8
  %17 = call %struct.ecore_hwfn* @ECORE_LEADING_HWFN(%struct.ecore_dev* %16)
  store %struct.ecore_hwfn* %17, %struct.ecore_hwfn** %7, align 8
  %18 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %19 = call %struct.ecore_ptt* @ecore_ptt_acquire(%struct.ecore_hwfn* %18)
  store %struct.ecore_ptt* %19, %struct.ecore_ptt** %8, align 8
  %20 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %20, i32* %12, align 4
  %21 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %22 = load %struct.ecore_ptt*, %struct.ecore_ptt** @OSAL_NULL, align 8
  %23 = icmp eq %struct.ecore_ptt* %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  br label %121

25:                                               ; preds = %3
  %26 = load i32, i32* @ECORE_MF_LLH_MAC_CLSS, align 4
  %27 = load %struct.ecore_dev*, %struct.ecore_dev** %4, align 8
  %28 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %27, i32 0, i32 0
  %29 = call i32 @OSAL_TEST_BIT(i32 %26, i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  br label %117

32:                                               ; preds = %25
  %33 = call i32 @OSAL_MEM_ZERO(%union.ecore_llh_filter* %9, i32 4)
  %34 = bitcast %union.ecore_llh_filter* %9 to %struct.TYPE_2__*
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* @ETH_ALEN, align 4
  %39 = call i32 @OSAL_MEMCPY(i32 %36, i32* %37, i32 %38)
  %40 = load %struct.ecore_dev*, %struct.ecore_dev** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @ecore_llh_shadow_remove_filter(%struct.ecore_dev* %40, i32 %41, %union.ecore_llh_filter* %9, i32* %10, i32* %13)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* @ECORE_SUCCESS, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %32
  br label %95

47:                                               ; preds = %32
  %48 = load %struct.ecore_dev*, %struct.ecore_dev** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @ecore_abs_ppfid(%struct.ecore_dev* %48, i32 %49, i32* %11)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* @ECORE_SUCCESS, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %95

55:                                               ; preds = %47
  %56 = load i32, i32* %13, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %69, label %58

58:                                               ; preds = %55
  %59 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %60 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @ecore_llh_remove_filter(%struct.ecore_hwfn* %59, %struct.ecore_ptt* %60, i32 %61, i32 %62)
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* @ECORE_SUCCESS, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %58
  br label %95

68:                                               ; preds = %58
  br label %69

69:                                               ; preds = %68, %55
  %70 = load %struct.ecore_dev*, %struct.ecore_dev** %4, align 8
  %71 = load i32, i32* @ECORE_MSG_SP, align 4
  %72 = load i32*, i32** %6, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %6, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %6, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 2
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %6, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 3
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** %6, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 4
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %6, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 5
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %13, align 4
  %94 = call i32 @DP_VERBOSE(%struct.ecore_dev* %70, i32 %71, i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str, i64 0, i64 0), i32 %74, i32 %77, i32 %80, i32 %83, i32 %86, i32 %89, i32 %90, i32 %91, i32 %92, i32 %93)
  br label %117

95:                                               ; preds = %67, %54, %46
  %96 = load %struct.ecore_dev*, %struct.ecore_dev** %4, align 8
  %97 = load i32*, i32** %6, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32*, i32** %6, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32*, i32** %6, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 2
  %105 = load i32, i32* %104, align 4
  %106 = load i32*, i32** %6, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 3
  %108 = load i32, i32* %107, align 4
  %109 = load i32*, i32** %6, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 4
  %111 = load i32, i32* %110, align 4
  %112 = load i32*, i32** %6, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 5
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %5, align 4
  %116 = call i32 @DP_NOTICE(%struct.ecore_dev* %96, i32 0, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.1, i64 0, i64 0), i32 %99, i32 %102, i32 %105, i32 %108, i32 %111, i32 %114, i32 %115)
  br label %117

117:                                              ; preds = %95, %69, %31
  %118 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %119 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %120 = call i32 @ecore_ptt_release(%struct.ecore_hwfn* %118, %struct.ecore_ptt* %119)
  br label %121

121:                                              ; preds = %117, %24
  ret void
}

declare dso_local %struct.ecore_hwfn* @ECORE_LEADING_HWFN(%struct.ecore_dev*) #1

declare dso_local %struct.ecore_ptt* @ecore_ptt_acquire(%struct.ecore_hwfn*) #1

declare dso_local i32 @OSAL_TEST_BIT(i32, i32*) #1

declare dso_local i32 @OSAL_MEM_ZERO(%union.ecore_llh_filter*, i32) #1

declare dso_local i32 @OSAL_MEMCPY(i32, i32*, i32) #1

declare dso_local i32 @ecore_llh_shadow_remove_filter(%struct.ecore_dev*, i32, %union.ecore_llh_filter*, i32*, i32*) #1

declare dso_local i32 @ecore_abs_ppfid(%struct.ecore_dev*, i32, i32*) #1

declare dso_local i32 @ecore_llh_remove_filter(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_dev*, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_dev*, i32, i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ecore_ptt_release(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
