; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_set_coalesce.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_set_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.ecore_ptt = type { i32 }
%struct.coalescing_timeset = type { i32 }

@ECORE_COAL_MODE_ENABLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"Coalescing configuration not enabled\0A\00", align 1
@ECORE_INVAL = common dso_local global i32 0, align 4
@COALESCING_TIMESET_TIMESET = common dso_local global i32 0, align 4
@COALESCING_TIMESET_VALID = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i8*, i32, i32)* @ecore_set_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_set_coalesce(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32 %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ecore_hwfn*, align 8
  %9 = alloca %struct.ecore_ptt*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.coalescing_timeset*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %8, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %16 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ECORE_COAL_MODE_ENABLE, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %6
  %23 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %24 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %23, i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %25, i32* %7, align 4
  br label %50

26:                                               ; preds = %6
  %27 = load i8*, i8** %11, align 8
  %28 = bitcast i8* %27 to %struct.coalescing_timeset*
  store %struct.coalescing_timeset* %28, %struct.coalescing_timeset** %14, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @OSAL_MEMSET(i8* %29, i32 0, i32 %30)
  %32 = load %struct.coalescing_timeset*, %struct.coalescing_timeset** %14, align 8
  %33 = getelementptr inbounds %struct.coalescing_timeset, %struct.coalescing_timeset* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @COALESCING_TIMESET_TIMESET, align 4
  %36 = load i32, i32* %13, align 4
  %37 = call i32 @SET_FIELD(i32 %34, i32 %35, i32 %36)
  %38 = load %struct.coalescing_timeset*, %struct.coalescing_timeset** %14, align 8
  %39 = getelementptr inbounds %struct.coalescing_timeset, %struct.coalescing_timeset* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @COALESCING_TIMESET_VALID, align 4
  %42 = call i32 @SET_FIELD(i32 %40, i32 %41, i32 1)
  %43 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %44 = load %struct.ecore_ptt*, %struct.ecore_ptt** %9, align 8
  %45 = load i32, i32* %10, align 4
  %46 = load i8*, i8** %11, align 8
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @ecore_memcpy_to(%struct.ecore_hwfn* %43, %struct.ecore_ptt* %44, i32 %45, i8* %46, i32 %47)
  %49 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %26, %22
  %51 = load i32, i32* %7, align 4
  ret i32 %51
}

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*) #1

declare dso_local i32 @OSAL_MEMSET(i8*, i32, i32) #1

declare dso_local i32 @SET_FIELD(i32, i32, i32) #1

declare dso_local i32 @ecore_memcpy_to(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
