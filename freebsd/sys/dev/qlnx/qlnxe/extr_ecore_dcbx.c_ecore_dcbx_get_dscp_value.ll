; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dcbx.c_ecore_dcbx_get_dscp_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dcbx.c_ecore_dcbx_get_dscp_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ecore_dcbx_dscp_params }
%struct.ecore_dcbx_dscp_params = type { i64*, i32 }

@ECORE_DCBX_DSCP_DISABLED = common dso_local global i64 0, align 8
@ECORE_DCBX_DSCP_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ecore_dcbx_get_dscp_value(%struct.ecore_hwfn* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ecore_dcbx_dscp_params*, align 8
  %7 = alloca i64, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %9 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store %struct.ecore_dcbx_dscp_params* %12, %struct.ecore_dcbx_dscp_params** %6, align 8
  %13 = load %struct.ecore_dcbx_dscp_params*, %struct.ecore_dcbx_dscp_params** %6, align 8
  %14 = getelementptr inbounds %struct.ecore_dcbx_dscp_params, %struct.ecore_dcbx_dscp_params* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = load i64, i64* @ECORE_DCBX_DSCP_DISABLED, align 8
  store i64 %18, i64* %3, align 8
  br label %41

19:                                               ; preds = %2
  store i64 0, i64* %7, align 8
  br label %20

20:                                               ; preds = %36, %19
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* @ECORE_DCBX_DSCP_SIZE, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %39

24:                                               ; preds = %20
  %25 = load i64, i64* %5, align 8
  %26 = load %struct.ecore_dcbx_dscp_params*, %struct.ecore_dcbx_dscp_params** %6, align 8
  %27 = getelementptr inbounds %struct.ecore_dcbx_dscp_params, %struct.ecore_dcbx_dscp_params* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = load i64, i64* %7, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %25, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i64, i64* %7, align 8
  store i64 %34, i64* %3, align 8
  br label %41

35:                                               ; preds = %24
  br label %36

36:                                               ; preds = %35
  %37 = load i64, i64* %7, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %7, align 8
  br label %20

39:                                               ; preds = %20
  %40 = load i64, i64* @ECORE_DCBX_DSCP_DISABLED, align 8
  store i64 %40, i64* %3, align 8
  br label %41

41:                                               ; preds = %39, %33, %17
  %42 = load i64, i64* %3, align 8
  ret i64 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
