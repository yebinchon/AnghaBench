; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dcbx.c_ecore_dcbx_set_dscp_priority.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dcbx.c_ecore_dcbx_set_dscp_priority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }
%struct.ecore_dcbx_set = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64* }

@ECORE_DCBX_DSCP_SIZE = common dso_local global i64 0, align 8
@ECORE_MAX_PFC_PRIORITIES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"Invalid dscp params: index = %d pri = %d\0A\00", align 1
@ECORE_INVAL = common dso_local global i32 0, align 4
@ECORE_DCBX_OVERRIDE_DSCP_CFG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_dcbx_set_dscp_priority(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ecore_hwfn*, align 8
  %7 = alloca %struct.ecore_ptt*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ecore_dcbx_set, align 8
  %11 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %6, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i64, i64* %8, align 8
  %13 = load i64, i64* @ECORE_DCBX_DSCP_SIZE, align 8
  %14 = icmp sge i64 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %4
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* @ECORE_MAX_PFC_PRIORITIES, align 8
  %18 = icmp sge i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %15, %4
  %20 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* %9, align 8
  %23 = call i32 @DP_ERR(%struct.ecore_hwfn* %20, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %21, i64 %22)
  %24 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %24, i32* %5, align 4
  br label %45

25:                                               ; preds = %15
  %26 = call i32 @OSAL_MEMSET(%struct.ecore_dcbx_set* %10, i32 0, i32 16)
  %27 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %28 = call i32 @ecore_dcbx_get_config_params(%struct.ecore_hwfn* %27, %struct.ecore_dcbx_set* %10)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* %11, align 4
  store i32 %32, i32* %5, align 4
  br label %45

33:                                               ; preds = %25
  %34 = load i32, i32* @ECORE_DCBX_OVERRIDE_DSCP_CFG, align 4
  %35 = getelementptr inbounds %struct.ecore_dcbx_set, %struct.ecore_dcbx_set* %10, i32 0, i32 1
  store i32 %34, i32* %35, align 8
  %36 = load i64, i64* %9, align 8
  %37 = getelementptr inbounds %struct.ecore_dcbx_set, %struct.ecore_dcbx_set* %10, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = load i64, i64* %8, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  store i64 %36, i64* %41, align 8
  %42 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %43 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %44 = call i32 @ecore_dcbx_config_params(%struct.ecore_hwfn* %42, %struct.ecore_ptt* %43, %struct.ecore_dcbx_set* %10, i32 1)
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %33, %31, %19
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @DP_ERR(%struct.ecore_hwfn*, i8*, i64, i64) #1

declare dso_local i32 @OSAL_MEMSET(%struct.ecore_dcbx_set*, i32, i32) #1

declare dso_local i32 @ecore_dcbx_get_config_params(%struct.ecore_hwfn*, %struct.ecore_dcbx_set*) #1

declare dso_local i32 @ecore_dcbx_config_params(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_dcbx_set*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
