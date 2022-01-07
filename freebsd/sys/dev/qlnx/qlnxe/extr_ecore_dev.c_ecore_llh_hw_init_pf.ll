; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_llh_hw_init_pf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_llh_hw_init_pf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_4__, i32, %struct.ecore_dev* }
%struct.TYPE_4__ = type { i32 }
%struct.ecore_dev = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.ecore_ptt = type { i32 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@NIG_REG_LLH_PPFID2PFID_TBL_0 = common dso_local global i64 0, align 8
@ECORE_MF_LLH_MAC_CLSS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Failed to add an LLH filter with the primary MAC\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_ptt*, i32)* @ecore_llh_hw_init_pf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_llh_hw_init_pf(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.ecore_ptt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ecore_dev*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %14 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %13, i32 0, i32 2
  %15 = load %struct.ecore_dev*, %struct.ecore_dev** %14, align 8
  store %struct.ecore_dev* %15, %struct.ecore_dev** %8, align 8
  store i64 0, i64* %9, align 8
  br label %16

16:                                               ; preds = %45, %3
  %17 = load i64, i64* %9, align 8
  %18 = load %struct.ecore_dev*, %struct.ecore_dev** %8, align 8
  %19 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %17, %22
  br i1 %23, label %24, label %48

24:                                               ; preds = %16
  %25 = load %struct.ecore_dev*, %struct.ecore_dev** %8, align 8
  %26 = load i64, i64* %9, align 8
  %27 = call i32 @ecore_abs_ppfid(%struct.ecore_dev* %25, i64 %26, i64* %10)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @ECORE_SUCCESS, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* %11, align 4
  store i32 %32, i32* %4, align 4
  br label %89

33:                                               ; preds = %24
  %34 = load i64, i64* @NIG_REG_LLH_PPFID2PFID_TBL_0, align 8
  %35 = load i64, i64* %10, align 8
  %36 = mul nsw i64 %35, 4
  %37 = add nsw i64 %34, %36
  store i64 %37, i64* %12, align 8
  %38 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %39 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %40 = load i64, i64* %12, align 8
  %41 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %42 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ecore_wr(%struct.ecore_hwfn* %38, %struct.ecore_ptt* %39, i64 %40, i32 %43)
  br label %45

45:                                               ; preds = %33
  %46 = load i64, i64* %9, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %9, align 8
  br label %16

48:                                               ; preds = %16
  %49 = load i32, i32* @ECORE_MF_LLH_MAC_CLSS, align 4
  %50 = load %struct.ecore_dev*, %struct.ecore_dev** %8, align 8
  %51 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %50, i32 0, i32 0
  %52 = call i64 @OSAL_TEST_BIT(i32 %49, i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %72

54:                                               ; preds = %48
  %55 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %56 = call i32 @ECORE_IS_FCOE_PERSONALITY(%struct.ecore_hwfn* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %72, label %58

58:                                               ; preds = %54
  %59 = load %struct.ecore_dev*, %struct.ecore_dev** %8, align 8
  %60 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %61 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @ecore_llh_add_mac_filter(%struct.ecore_dev* %59, i32 0, i32 %63)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* @ECORE_SUCCESS, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %58
  %69 = load %struct.ecore_dev*, %struct.ecore_dev** %8, align 8
  %70 = call i32 @DP_NOTICE(%struct.ecore_dev* %69, i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %71

71:                                               ; preds = %68, %58
  br label %72

72:                                               ; preds = %71, %54, %48
  %73 = load %struct.ecore_dev*, %struct.ecore_dev** %8, align 8
  %74 = call i64 @ECORE_IS_CMT(%struct.ecore_dev* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %72
  %77 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %78 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @ecore_llh_set_engine_affin(%struct.ecore_hwfn* %77, %struct.ecore_ptt* %78, i32 %79)
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* @ECORE_SUCCESS, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %76
  %85 = load i32, i32* %11, align 4
  store i32 %85, i32* %4, align 4
  br label %89

86:                                               ; preds = %76
  br label %87

87:                                               ; preds = %86, %72
  %88 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %87, %84, %31
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @ecore_abs_ppfid(%struct.ecore_dev*, i64, i64*) #1

declare dso_local i32 @ecore_wr(%struct.ecore_hwfn*, %struct.ecore_ptt*, i64, i32) #1

declare dso_local i64 @OSAL_TEST_BIT(i32, i32*) #1

declare dso_local i32 @ECORE_IS_FCOE_PERSONALITY(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_llh_add_mac_filter(%struct.ecore_dev*, i32, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_dev*, i32, i8*) #1

declare dso_local i64 @ECORE_IS_CMT(%struct.ecore_dev*) #1

declare dso_local i32 @ecore_llh_set_engine_affin(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
