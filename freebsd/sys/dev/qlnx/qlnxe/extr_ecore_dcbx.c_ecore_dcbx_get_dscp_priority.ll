; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dcbx.c_ecore_dcbx_get_dscp_priority.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dcbx.c_ecore_dcbx_get_dscp_priority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_dcbx_get = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64* }

@ECORE_DCBX_DSCP_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Invalid dscp index %d\0A\00", align 1
@ECORE_INVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ECORE_NOMEM = common dso_local global i32 0, align 4
@ECORE_DCBX_OPERATIONAL_MIB = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_dcbx_get_dscp_priority(%struct.ecore_hwfn* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.ecore_dcbx_get*, align 8
  %9 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @ECORE_DCBX_DSCP_SIZE, align 8
  %12 = icmp uge i64 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @DP_ERR(%struct.ecore_hwfn* %14, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %15)
  %17 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %17, i32* %4, align 4
  br label %59

18:                                               ; preds = %3
  %19 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %20 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.ecore_dcbx_get* @OSAL_ALLOC(i32 %21, i32 %22, i32 8)
  store %struct.ecore_dcbx_get* %23, %struct.ecore_dcbx_get** %8, align 8
  %24 = load %struct.ecore_dcbx_get*, %struct.ecore_dcbx_get** %8, align 8
  %25 = icmp ne %struct.ecore_dcbx_get* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %18
  %27 = load i32, i32* @ECORE_NOMEM, align 4
  store i32 %27, i32* %4, align 4
  br label %59

28:                                               ; preds = %18
  %29 = load %struct.ecore_dcbx_get*, %struct.ecore_dcbx_get** %8, align 8
  %30 = call i32 @OSAL_MEMSET(%struct.ecore_dcbx_get* %29, i32 0, i32 8)
  %31 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %32 = load %struct.ecore_dcbx_get*, %struct.ecore_dcbx_get** %8, align 8
  %33 = load i32, i32* @ECORE_DCBX_OPERATIONAL_MIB, align 4
  %34 = call i32 @ecore_dcbx_query_params(%struct.ecore_hwfn* %31, %struct.ecore_dcbx_get* %32, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %28
  %38 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %39 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ecore_dcbx_get*, %struct.ecore_dcbx_get** %8, align 8
  %42 = call i32 @OSAL_FREE(i32 %40, %struct.ecore_dcbx_get* %41)
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %4, align 4
  br label %59

44:                                               ; preds = %28
  %45 = load %struct.ecore_dcbx_get*, %struct.ecore_dcbx_get** %8, align 8
  %46 = getelementptr inbounds %struct.ecore_dcbx_get, %struct.ecore_dcbx_get* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = load i64, i64* %6, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = load i64*, i64** %7, align 8
  store i64 %51, i64* %52, align 8
  %53 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %54 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ecore_dcbx_get*, %struct.ecore_dcbx_get** %8, align 8
  %57 = call i32 @OSAL_FREE(i32 %55, %struct.ecore_dcbx_get* %56)
  %58 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %44, %37, %26, %13
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @DP_ERR(%struct.ecore_hwfn*, i8*, i64) #1

declare dso_local %struct.ecore_dcbx_get* @OSAL_ALLOC(i32, i32, i32) #1

declare dso_local i32 @OSAL_MEMSET(%struct.ecore_dcbx_get*, i32, i32) #1

declare dso_local i32 @ecore_dcbx_query_params(%struct.ecore_hwfn*, %struct.ecore_dcbx_get*, i32) #1

declare dso_local i32 @OSAL_FREE(i32, %struct.ecore_dcbx_get*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
