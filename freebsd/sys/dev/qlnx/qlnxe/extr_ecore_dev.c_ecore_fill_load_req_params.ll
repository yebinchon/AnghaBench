; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_fill_load_req_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_fill_load_req_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_drv_load_params = type { i64, i32, i32, i32, i64 }
%struct.ecore_hwfn = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ecore_load_req_params = type { i64, i32, i32, i64 }

@ECORE_DRV_ROLE_OS = common dso_local global i64 0, align 8
@ECORE_LOAD_REQ_LOCK_TO_DEFAULT = common dso_local global i64 0, align 8
@ECORE_OVERRIDE_FORCE_LOAD_NONE = common dso_local global i64 0, align 8
@OSAL_NULL = common dso_local global %struct.ecore_drv_load_params* null, align 8
@ECORE_DRV_ROLE_KDUMP = common dso_local global i64 0, align 8
@ECORE_LOAD_REQ_LOCK_TO_NONE = common dso_local global i64 0, align 8
@FW_MB_PARAM_FEATURE_SUPPORT_DRV_LOAD_TO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [102 x i8] c"Received %d as a value for MFW timeout while the MFW supports only default [%d] or none [%d]. Abort.\0A\00", align 1
@ECORE_ABORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [78 x i8] c"Modified the MFW timeout value from %d to %s [%d] due to lack of MFW support\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_load_req_params*, %struct.ecore_drv_load_params*)* @ecore_fill_load_req_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_fill_load_req_params(%struct.ecore_hwfn* %0, %struct.ecore_load_req_params* %1, %struct.ecore_drv_load_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.ecore_load_req_params*, align 8
  %7 = alloca %struct.ecore_drv_load_params*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store %struct.ecore_load_req_params* %1, %struct.ecore_load_req_params** %6, align 8
  store %struct.ecore_drv_load_params* %2, %struct.ecore_drv_load_params** %7, align 8
  %8 = load i64, i64* @ECORE_DRV_ROLE_OS, align 8
  %9 = icmp ne i64 %8, 0
  %10 = zext i1 %9 to i32
  %11 = call i32 @OSAL_BUILD_BUG_ON(i32 %10)
  %12 = load i64, i64* @ECORE_LOAD_REQ_LOCK_TO_DEFAULT, align 8
  %13 = icmp ne i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @OSAL_BUILD_BUG_ON(i32 %14)
  %16 = load i64, i64* @ECORE_OVERRIDE_FORCE_LOAD_NONE, align 8
  %17 = icmp ne i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @OSAL_BUILD_BUG_ON(i32 %18)
  %20 = load %struct.ecore_load_req_params*, %struct.ecore_load_req_params** %6, align 8
  %21 = call i32 @OSAL_MEM_ZERO(%struct.ecore_load_req_params* %20, i32 24)
  %22 = load %struct.ecore_drv_load_params*, %struct.ecore_drv_load_params** %7, align 8
  %23 = load %struct.ecore_drv_load_params*, %struct.ecore_drv_load_params** @OSAL_NULL, align 8
  %24 = icmp eq %struct.ecore_drv_load_params* %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  br label %112

26:                                               ; preds = %3
  %27 = load %struct.ecore_drv_load_params*, %struct.ecore_drv_load_params** %7, align 8
  %28 = getelementptr inbounds %struct.ecore_drv_load_params, %struct.ecore_drv_load_params* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i64, i64* @ECORE_DRV_ROLE_KDUMP, align 8
  br label %35

33:                                               ; preds = %26
  %34 = load i64, i64* @ECORE_DRV_ROLE_OS, align 8
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i64 [ %32, %31 ], [ %34, %33 ]
  %37 = load %struct.ecore_load_req_params*, %struct.ecore_load_req_params** %6, align 8
  %38 = getelementptr inbounds %struct.ecore_load_req_params, %struct.ecore_load_req_params* %37, i32 0, i32 3
  store i64 %36, i64* %38, align 8
  %39 = load %struct.ecore_drv_load_params*, %struct.ecore_drv_load_params** %7, align 8
  %40 = getelementptr inbounds %struct.ecore_drv_load_params, %struct.ecore_drv_load_params* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.ecore_load_req_params*, %struct.ecore_load_req_params** %6, align 8
  %43 = getelementptr inbounds %struct.ecore_load_req_params, %struct.ecore_load_req_params* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load %struct.ecore_drv_load_params*, %struct.ecore_drv_load_params** %7, align 8
  %45 = getelementptr inbounds %struct.ecore_drv_load_params, %struct.ecore_drv_load_params* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ecore_load_req_params*, %struct.ecore_load_req_params** %6, align 8
  %48 = getelementptr inbounds %struct.ecore_load_req_params, %struct.ecore_load_req_params* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = load %struct.ecore_drv_load_params*, %struct.ecore_drv_load_params** %7, align 8
  %50 = getelementptr inbounds %struct.ecore_drv_load_params, %struct.ecore_drv_load_params* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @ECORE_LOAD_REQ_LOCK_TO_DEFAULT, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %69, label %54

54:                                               ; preds = %35
  %55 = load %struct.ecore_drv_load_params*, %struct.ecore_drv_load_params** %7, align 8
  %56 = getelementptr inbounds %struct.ecore_drv_load_params, %struct.ecore_drv_load_params* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @ECORE_LOAD_REQ_LOCK_TO_NONE, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %69, label %60

60:                                               ; preds = %54
  %61 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %62 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @FW_MB_PARAM_FEATURE_SUPPORT_DRV_LOAD_TO, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %60, %54, %35
  %70 = load %struct.ecore_drv_load_params*, %struct.ecore_drv_load_params** %7, align 8
  %71 = getelementptr inbounds %struct.ecore_drv_load_params, %struct.ecore_drv_load_params* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.ecore_load_req_params*, %struct.ecore_load_req_params** %6, align 8
  %74 = getelementptr inbounds %struct.ecore_load_req_params, %struct.ecore_load_req_params* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  br label %112

75:                                               ; preds = %60
  %76 = load %struct.ecore_drv_load_params*, %struct.ecore_drv_load_params** %7, align 8
  %77 = getelementptr inbounds %struct.ecore_drv_load_params, %struct.ecore_drv_load_params* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  switch i32 %78, label %96 [
    i32 128, label %79
    i32 129, label %83
    i32 130, label %87
  ]

79:                                               ; preds = %75
  %80 = load i64, i64* @ECORE_LOAD_REQ_LOCK_TO_NONE, align 8
  %81 = load %struct.ecore_load_req_params*, %struct.ecore_load_req_params** %6, align 8
  %82 = getelementptr inbounds %struct.ecore_load_req_params, %struct.ecore_load_req_params* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  br label %96

83:                                               ; preds = %75
  %84 = load i64, i64* @ECORE_LOAD_REQ_LOCK_TO_DEFAULT, align 8
  %85 = load %struct.ecore_load_req_params*, %struct.ecore_load_req_params** %6, align 8
  %86 = getelementptr inbounds %struct.ecore_load_req_params, %struct.ecore_load_req_params* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  br label %96

87:                                               ; preds = %75
  %88 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %89 = load %struct.ecore_drv_load_params*, %struct.ecore_drv_load_params** %7, align 8
  %90 = getelementptr inbounds %struct.ecore_drv_load_params, %struct.ecore_drv_load_params* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @ECORE_LOAD_REQ_LOCK_TO_DEFAULT, align 8
  %93 = load i64, i64* @ECORE_LOAD_REQ_LOCK_TO_NONE, align 8
  %94 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %88, i32 0, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str, i64 0, i64 0), i64 %91, i64 %92, i64 %93)
  %95 = load i32, i32* @ECORE_ABORTED, align 4
  store i32 %95, i32* %4, align 4
  br label %114

96:                                               ; preds = %75, %83, %79
  %97 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %98 = load %struct.ecore_drv_load_params*, %struct.ecore_drv_load_params** %7, align 8
  %99 = getelementptr inbounds %struct.ecore_drv_load_params, %struct.ecore_drv_load_params* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.ecore_load_req_params*, %struct.ecore_load_req_params** %6, align 8
  %102 = getelementptr inbounds %struct.ecore_load_req_params, %struct.ecore_load_req_params* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @ECORE_LOAD_REQ_LOCK_TO_DEFAULT, align 8
  %105 = icmp eq i64 %103, %104
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %108 = load %struct.ecore_load_req_params*, %struct.ecore_load_req_params** %6, align 8
  %109 = getelementptr inbounds %struct.ecore_load_req_params, %struct.ecore_load_req_params* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @DP_INFO(%struct.ecore_hwfn* %97, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i64 %100, i8* %107, i64 %110)
  br label %112

112:                                              ; preds = %96, %69, %25
  %113 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %113, i32* %4, align 4
  br label %114

114:                                              ; preds = %112, %87
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i32 @OSAL_BUILD_BUG_ON(i32) #1

declare dso_local i32 @OSAL_MEM_ZERO(%struct.ecore_load_req_params*, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, i64, i64, i64) #1

declare dso_local i32 @DP_INFO(%struct.ecore_hwfn*, i8*, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
