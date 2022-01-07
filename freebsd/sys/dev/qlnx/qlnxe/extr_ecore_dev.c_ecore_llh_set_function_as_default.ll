; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_llh_set_function_as_default.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_llh_set_function_as_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ecore_ptt = type { i32 }

@ECORE_MF_NEED_DEF_PF = common dso_local global i32 0, align 4
@NIG_REG_LLH_TAGMAC_DEF_PF_VECTOR = common dso_local global i32 0, align 4
@PRS_REG_MSG_INFO = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"This function can't be set as default\0A\00", align 1
@ECORE_INVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_llh_set_function_as_default(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_ptt*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %5, align 8
  %6 = load i32, i32* @ECORE_MF_NEED_DEF_PF, align 4
  %7 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %8 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = call i64 @OSAL_TEST_BIT(i32 %6, i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %2
  %14 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %15 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %16 = load i32, i32* @NIG_REG_LLH_TAGMAC_DEF_PF_VECTOR, align 4
  %17 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %18 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sdiv i32 %19, 2
  %21 = shl i32 1, %20
  %22 = call i32 @ecore_wr(%struct.ecore_hwfn* %14, %struct.ecore_ptt* %15, i32 %16, i32 %21)
  %23 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %24 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %25 = load i32, i32* @PRS_REG_MSG_INFO, align 4
  %26 = call i32 @ecore_wr(%struct.ecore_hwfn* %23, %struct.ecore_ptt* %24, i32 %25, i32 0)
  %27 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %27, i32* %3, align 4
  br label %32

28:                                               ; preds = %2
  %29 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %30 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %29, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %28, %13
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i64 @OSAL_TEST_BIT(i32, i32*) #1

declare dso_local i32 @ecore_wr(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
