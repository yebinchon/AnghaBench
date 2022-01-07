; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_ll2.c___ecore_ll2_get_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_ll2.c___ecore_ll2_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_ll2_info = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.ecore_ll2_stats = type { i32 }
%struct.ecore_hwfn = type { %struct.ecore_ll2_info* }
%struct.ecore_ptt = type { i32 }

@OSAL_NULL = common dso_local global %struct.ecore_ll2_info* null, align 8
@ECORE_MAX_NUM_OF_LL2_CONNECTIONS = common dso_local global i64 0, align 8
@ECORE_INVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Failed to acquire ptt\0A\00", align 1
@ECORE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__ecore_ll2_get_stats(i8* %0, i64 %1, %struct.ecore_ll2_stats* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ecore_ll2_stats*, align 8
  %8 = alloca %struct.ecore_hwfn*, align 8
  %9 = alloca %struct.ecore_ll2_info*, align 8
  %10 = alloca %struct.ecore_ptt*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.ecore_ll2_stats* %2, %struct.ecore_ll2_stats** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.ecore_hwfn*
  store %struct.ecore_hwfn* %12, %struct.ecore_hwfn** %8, align 8
  %13 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** @OSAL_NULL, align 8
  store %struct.ecore_ll2_info* %13, %struct.ecore_ll2_info** %9, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @ECORE_MAX_NUM_OF_LL2_CONNECTIONS, align 8
  %16 = icmp uge i64 %14, %15
  br i1 %16, label %22, label %17

17:                                               ; preds = %3
  %18 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %19 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %18, i32 0, i32 0
  %20 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %19, align 8
  %21 = icmp ne %struct.ecore_ll2_info* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %17, %3
  %23 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %23, i32* %4, align 4
  br label %75

24:                                               ; preds = %17
  %25 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %26 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %25, i32 0, i32 0
  %27 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %26, align 8
  %28 = load i64, i64* %6, align 8
  %29 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %27, i64 %28
  store %struct.ecore_ll2_info* %29, %struct.ecore_ll2_info** %9, align 8
  %30 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %31 = call %struct.ecore_ptt* @ecore_ptt_acquire(%struct.ecore_hwfn* %30)
  store %struct.ecore_ptt* %31, %struct.ecore_ptt** %10, align 8
  %32 = load %struct.ecore_ptt*, %struct.ecore_ptt** %10, align 8
  %33 = icmp ne %struct.ecore_ptt* %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %24
  %35 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %36 = call i32 @DP_ERR(%struct.ecore_hwfn* %35, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %37, i32* %4, align 4
  br label %75

38:                                               ; preds = %24
  %39 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %9, align 8
  %40 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %46 = load %struct.ecore_ptt*, %struct.ecore_ptt** %10, align 8
  %47 = load %struct.ecore_ll2_stats*, %struct.ecore_ll2_stats** %7, align 8
  %48 = call i32 @_ecore_ll2_get_port_stats(%struct.ecore_hwfn* %45, %struct.ecore_ptt* %46, %struct.ecore_ll2_stats* %47)
  br label %49

49:                                               ; preds = %44, %38
  %50 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %51 = load %struct.ecore_ptt*, %struct.ecore_ptt** %10, align 8
  %52 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %9, align 8
  %53 = load %struct.ecore_ll2_stats*, %struct.ecore_ll2_stats** %7, align 8
  %54 = call i32 @_ecore_ll2_get_tstats(%struct.ecore_hwfn* %50, %struct.ecore_ptt* %51, %struct.ecore_ll2_info* %52, %struct.ecore_ll2_stats* %53)
  %55 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %56 = load %struct.ecore_ptt*, %struct.ecore_ptt** %10, align 8
  %57 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %9, align 8
  %58 = load %struct.ecore_ll2_stats*, %struct.ecore_ll2_stats** %7, align 8
  %59 = call i32 @_ecore_ll2_get_ustats(%struct.ecore_hwfn* %55, %struct.ecore_ptt* %56, %struct.ecore_ll2_info* %57, %struct.ecore_ll2_stats* %58)
  %60 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %9, align 8
  %61 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %49
  %65 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %66 = load %struct.ecore_ptt*, %struct.ecore_ptt** %10, align 8
  %67 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %9, align 8
  %68 = load %struct.ecore_ll2_stats*, %struct.ecore_ll2_stats** %7, align 8
  %69 = call i32 @_ecore_ll2_get_pstats(%struct.ecore_hwfn* %65, %struct.ecore_ptt* %66, %struct.ecore_ll2_info* %67, %struct.ecore_ll2_stats* %68)
  br label %70

70:                                               ; preds = %64, %49
  %71 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %72 = load %struct.ecore_ptt*, %struct.ecore_ptt** %10, align 8
  %73 = call i32 @ecore_ptt_release(%struct.ecore_hwfn* %71, %struct.ecore_ptt* %72)
  %74 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %70, %34, %22
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local %struct.ecore_ptt* @ecore_ptt_acquire(%struct.ecore_hwfn*) #1

declare dso_local i32 @DP_ERR(%struct.ecore_hwfn*, i8*) #1

declare dso_local i32 @_ecore_ll2_get_port_stats(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_ll2_stats*) #1

declare dso_local i32 @_ecore_ll2_get_tstats(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_ll2_info*, %struct.ecore_ll2_stats*) #1

declare dso_local i32 @_ecore_ll2_get_ustats(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_ll2_info*, %struct.ecore_ll2_stats*) #1

declare dso_local i32 @_ecore_ll2_get_pstats(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_ll2_info*, %struct.ecore_ll2_stats*) #1

declare dso_local i32 @ecore_ptt_release(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
