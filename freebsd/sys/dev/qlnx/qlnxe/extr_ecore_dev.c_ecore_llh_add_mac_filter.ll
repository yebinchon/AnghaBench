; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_llh_add_mac_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_llh_add_mac_filter.c"
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
@ECORE_AGAIN = common dso_local global i32 0, align 4
@ECORE_MF_LLH_MAC_CLSS = common dso_local global i32 0, align 4
@ECORE_LLH_FILTER_TYPE_MAC = common dso_local global i32 0, align 4
@ECORE_MSG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [117 x i8] c"LLH: Added MAC filter [%02hhx:%02hhx:%02hhx:%02hhx:%02hhx:%02hhx] to ppfid %hhd [abs %hhd] at idx %hhd [ref_cnt %d]\0A\00", align 1
@.str.1 = private unnamed_addr constant [89 x i8] c"LLH: Failed to add MAC filter [%02hhx:%02hhx:%02hhx:%02hhx:%02hhx:%02hhx] to ppfid %hhd\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_llh_add_mac_filter(%struct.ecore_dev* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ecore_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ecore_hwfn*, align 8
  %9 = alloca %struct.ecore_ptt*, align 8
  %10 = alloca %union.ecore_llh_filter, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ecore_dev* %0, %struct.ecore_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %17 = load i32, i32* @ETH_ALEN, align 4
  %18 = zext i32 %17 to i64
  %19 = load %struct.ecore_dev*, %struct.ecore_dev** %5, align 8
  %20 = call %struct.ecore_hwfn* @ECORE_LEADING_HWFN(%struct.ecore_dev* %19)
  store %struct.ecore_hwfn* %20, %struct.ecore_hwfn** %8, align 8
  %21 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %22 = call %struct.ecore_ptt* @ecore_ptt_acquire(%struct.ecore_hwfn* %21)
  store %struct.ecore_ptt* %22, %struct.ecore_ptt** %9, align 8
  %23 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %23, i32* %16, align 4
  %24 = load %struct.ecore_ptt*, %struct.ecore_ptt** %9, align 8
  %25 = load %struct.ecore_ptt*, %struct.ecore_ptt** @OSAL_NULL, align 8
  %26 = icmp eq %struct.ecore_ptt* %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* @ECORE_AGAIN, align 4
  store i32 %28, i32* %4, align 4
  br label %155

29:                                               ; preds = %3
  %30 = load i32, i32* @ECORE_MF_LLH_MAC_CLSS, align 4
  %31 = load %struct.ecore_dev*, %struct.ecore_dev** %5, align 8
  %32 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %31, i32 0, i32 0
  %33 = call i32 @OSAL_TEST_BIT(i32 %30, i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %29
  br label %150

36:                                               ; preds = %29
  %37 = call i32 @OSAL_MEM_ZERO(%union.ecore_llh_filter* %10, i32 4)
  %38 = bitcast %union.ecore_llh_filter* %10 to %struct.TYPE_2__*
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* @ETH_ALEN, align 4
  %43 = call i32 @OSAL_MEMCPY(i32 %40, i32* %41, i32 %42)
  %44 = load %struct.ecore_dev*, %struct.ecore_dev** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @ECORE_LLH_FILTER_TYPE_MAC, align 4
  %47 = call i32 @ecore_llh_shadow_add_filter(%struct.ecore_dev* %44, i32 %45, i32 %46, %union.ecore_llh_filter* %10, i32* %11, i32* %15)
  store i32 %47, i32* %16, align 4
  %48 = load i32, i32* %16, align 4
  %49 = load i32, i32* @ECORE_SUCCESS, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %36
  br label %128

52:                                               ; preds = %36
  %53 = load %struct.ecore_dev*, %struct.ecore_dev** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @ecore_abs_ppfid(%struct.ecore_dev* %53, i32 %54, i32* %12)
  store i32 %55, i32* %16, align 4
  %56 = load i32, i32* %16, align 4
  %57 = load i32, i32* @ECORE_SUCCESS, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %128

60:                                               ; preds = %52
  %61 = load i32, i32* %15, align 4
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %102

63:                                               ; preds = %60
  %64 = load i32*, i32** %7, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %7, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = shl i32 %69, 8
  %71 = or i32 %66, %70
  store i32 %71, i32* %13, align 4
  %72 = load i32*, i32** %7, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 5
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %7, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 4
  %77 = load i32, i32* %76, align 4
  %78 = shl i32 %77, 8
  %79 = or i32 %74, %78
  %80 = load i32*, i32** %7, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 3
  %82 = load i32, i32* %81, align 4
  %83 = shl i32 %82, 16
  %84 = or i32 %79, %83
  %85 = load i32*, i32** %7, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 2
  %87 = load i32, i32* %86, align 4
  %88 = shl i32 %87, 24
  %89 = or i32 %84, %88
  store i32 %89, i32* %14, align 4
  %90 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %91 = load %struct.ecore_ptt*, %struct.ecore_ptt** %9, align 8
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* %14, align 4
  %96 = call i32 @ecore_llh_add_filter(%struct.ecore_hwfn* %90, %struct.ecore_ptt* %91, i32 %92, i32 %93, i32 0, i32 %94, i32 %95)
  store i32 %96, i32* %16, align 4
  %97 = load i32, i32* %16, align 4
  %98 = load i32, i32* @ECORE_SUCCESS, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %63
  br label %128

101:                                              ; preds = %63
  br label %102

102:                                              ; preds = %101, %60
  %103 = load %struct.ecore_dev*, %struct.ecore_dev** %5, align 8
  %104 = load i32, i32* @ECORE_MSG_SP, align 4
  %105 = load i32*, i32** %7, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32*, i32** %7, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32*, i32** %7, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 2
  %113 = load i32, i32* %112, align 4
  %114 = load i32*, i32** %7, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 3
  %116 = load i32, i32* %115, align 4
  %117 = load i32*, i32** %7, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 4
  %119 = load i32, i32* %118, align 4
  %120 = load i32*, i32** %7, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 5
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* %11, align 4
  %126 = load i32, i32* %15, align 4
  %127 = call i32 @DP_VERBOSE(%struct.ecore_dev* %103, i32 %104, i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str, i64 0, i64 0), i32 %107, i32 %110, i32 %113, i32 %116, i32 %119, i32 %122, i32 %123, i32 %124, i32 %125, i32 %126)
  br label %150

128:                                              ; preds = %100, %59, %51
  %129 = load %struct.ecore_dev*, %struct.ecore_dev** %5, align 8
  %130 = load i32*, i32** %7, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32*, i32** %7, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32*, i32** %7, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 2
  %138 = load i32, i32* %137, align 4
  %139 = load i32*, i32** %7, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 3
  %141 = load i32, i32* %140, align 4
  %142 = load i32*, i32** %7, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 4
  %144 = load i32, i32* %143, align 4
  %145 = load i32*, i32** %7, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 5
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %6, align 4
  %149 = call i32 @DP_NOTICE(%struct.ecore_dev* %129, i32 0, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.1, i64 0, i64 0), i32 %132, i32 %135, i32 %138, i32 %141, i32 %144, i32 %147, i32 %148)
  br label %150

150:                                              ; preds = %128, %102, %35
  %151 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %152 = load %struct.ecore_ptt*, %struct.ecore_ptt** %9, align 8
  %153 = call i32 @ecore_ptt_release(%struct.ecore_hwfn* %151, %struct.ecore_ptt* %152)
  %154 = load i32, i32* %16, align 4
  store i32 %154, i32* %4, align 4
  br label %155

155:                                              ; preds = %150, %27
  %156 = load i32, i32* %4, align 4
  ret i32 %156
}

declare dso_local %struct.ecore_hwfn* @ECORE_LEADING_HWFN(%struct.ecore_dev*) #1

declare dso_local %struct.ecore_ptt* @ecore_ptt_acquire(%struct.ecore_hwfn*) #1

declare dso_local i32 @OSAL_TEST_BIT(i32, i32*) #1

declare dso_local i32 @OSAL_MEM_ZERO(%union.ecore_llh_filter*, i32) #1

declare dso_local i32 @OSAL_MEMCPY(i32, i32*, i32) #1

declare dso_local i32 @ecore_llh_shadow_add_filter(%struct.ecore_dev*, i32, i32, %union.ecore_llh_filter*, i32*, i32*) #1

declare dso_local i32 @ecore_abs_ppfid(%struct.ecore_dev*, i32, i32*) #1

declare dso_local i32 @ecore_llh_add_filter(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_dev*, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_dev*, i32, i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ecore_ptt_release(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
