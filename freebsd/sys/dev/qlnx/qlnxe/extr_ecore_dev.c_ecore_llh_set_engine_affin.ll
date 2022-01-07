; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_llh_set_engine_affin.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_llh_set_engine_affin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.ecore_dev* }
%struct.ecore_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.ecore_ptt = type { i32 }

@ECORE_ENG0 = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed to set the RoCE engine affinity\0A\00", align 1
@ECORE_MSG_SP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [80 x i8] c"LLH [backwards compatible mode]: Set the engine affinity of RoCE packets as %d\0A\00", align 1
@ECORE_BOTH_ENG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"Failed to set the engine affinity of ppfid %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [84 x i8] c"LLH [backwards compatible mode]: Set the engine affinity of non-RoCE packets as %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_ptt*, i32)* @ecore_llh_set_engine_affin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_llh_set_engine_affin(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.ecore_ptt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ecore_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %13 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %12, i32 0, i32 0
  %14 = load %struct.ecore_dev*, %struct.ecore_dev** %13, align 8
  store %struct.ecore_dev* %14, %struct.ecore_dev** %8, align 8
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %83

17:                                               ; preds = %3
  %18 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %19 = call i64 @ECORE_IS_ROCE_PERSONALITY(%struct.ecore_hwfn* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %17
  %22 = load i32, i32* @ECORE_ENG0, align 4
  store i32 %22, i32* %10, align 4
  %23 = load %struct.ecore_dev*, %struct.ecore_dev** %8, align 8
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @ecore_llh_set_roce_affinity(%struct.ecore_dev* %23, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @ECORE_SUCCESS, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %21
  %30 = load %struct.ecore_dev*, %struct.ecore_dev** %8, align 8
  %31 = call i32 (%struct.ecore_dev*, i32, i8*, ...) @DP_NOTICE(%struct.ecore_dev* %30, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %4, align 4
  br label %87

33:                                               ; preds = %21
  %34 = load %struct.ecore_dev*, %struct.ecore_dev** %8, align 8
  %35 = load i32, i32* @ECORE_MSG_SP, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @DP_VERBOSE(%struct.ecore_dev* %34, i32 %35, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %33, %17
  %39 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %40 = call i64 @ECORE_IS_FCOE_PERSONALITY(%struct.ecore_hwfn* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %44 = call i64 @ECORE_IS_ISCSI_PERSONALITY(%struct.ecore_hwfn* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42, %38
  %47 = load i32, i32* @ECORE_ENG0, align 4
  br label %50

48:                                               ; preds = %42
  %49 = load i32, i32* @ECORE_BOTH_ENG, align 4
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i32 [ %47, %46 ], [ %49, %48 ]
  store i32 %51, i32* %10, align 4
  store i64 0, i64* %11, align 8
  br label %52

52:                                               ; preds = %74, %50
  %53 = load i64, i64* %11, align 8
  %54 = load %struct.ecore_dev*, %struct.ecore_dev** %8, align 8
  %55 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp slt i64 %53, %58
  br i1 %59, label %60, label %77

60:                                               ; preds = %52
  %61 = load %struct.ecore_dev*, %struct.ecore_dev** %8, align 8
  %62 = load i64, i64* %11, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @ecore_llh_set_ppfid_affinity(%struct.ecore_dev* %61, i64 %62, i32 %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @ECORE_SUCCESS, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %60
  %69 = load %struct.ecore_dev*, %struct.ecore_dev** %8, align 8
  %70 = load i64, i64* %11, align 8
  %71 = call i32 (%struct.ecore_dev*, i32, i8*, ...) @DP_NOTICE(%struct.ecore_dev* %69, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i64 %70)
  %72 = load i32, i32* %9, align 4
  store i32 %72, i32* %4, align 4
  br label %87

73:                                               ; preds = %60
  br label %74

74:                                               ; preds = %73
  %75 = load i64, i64* %11, align 8
  %76 = add nsw i64 %75, 1
  store i64 %76, i64* %11, align 8
  br label %52

77:                                               ; preds = %52
  %78 = load %struct.ecore_dev*, %struct.ecore_dev** %8, align 8
  %79 = load i32, i32* @ECORE_MSG_SP, align 4
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @DP_VERBOSE(%struct.ecore_dev* %78, i32 %79, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.3, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %82, i32* %4, align 4
  br label %87

83:                                               ; preds = %3
  %84 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %85 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %86 = call i32 @__ecore_llh_set_engine_affin(%struct.ecore_hwfn* %84, %struct.ecore_ptt* %85)
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %83, %77, %68, %29
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i64 @ECORE_IS_ROCE_PERSONALITY(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_llh_set_roce_affinity(%struct.ecore_dev*, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_dev*, i32, i8*, ...) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_dev*, i32, i8*, i32) #1

declare dso_local i64 @ECORE_IS_FCOE_PERSONALITY(%struct.ecore_hwfn*) #1

declare dso_local i64 @ECORE_IS_ISCSI_PERSONALITY(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_llh_set_ppfid_affinity(%struct.ecore_dev*, i64, i32) #1

declare dso_local i32 @__ecore_llh_set_engine_affin(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
