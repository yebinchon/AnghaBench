; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dcbx.c_ecore_dcbx_set_local_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dcbx.c_ecore_dcbx_set_local_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.dcbx_local_params = type { i32, %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.ecore_dcbx_set = type { i32, i32, %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { i32 }

@DCBX_CONFIG_VERSION_IEEE = common dso_local global i32 0, align 4
@DCBX_CONFIG_VERSION_DISABLED = common dso_local global i32 0, align 4
@ECORE_MSG_DCB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Dcbx version = %d\0A\00", align 1
@ECORE_DCBX_OVERRIDE_PFC_CFG = common dso_local global i32 0, align 4
@ECORE_DCBX_OVERRIDE_ETS_CFG = common dso_local global i32 0, align 4
@ECORE_DCBX_OVERRIDE_APP_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, %struct.dcbx_local_params*, %struct.ecore_dcbx_set*)* @ecore_dcbx_set_local_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_dcbx_set_local_params(%struct.ecore_hwfn* %0, %struct.dcbx_local_params* %1, %struct.ecore_dcbx_set* %2) #0 {
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.dcbx_local_params*, align 8
  %6 = alloca %struct.ecore_dcbx_set*, align 8
  %7 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.dcbx_local_params* %1, %struct.dcbx_local_params** %5, align 8
  store %struct.ecore_dcbx_set* %2, %struct.ecore_dcbx_set** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.dcbx_local_params*, %struct.dcbx_local_params** %5, align 8
  %9 = getelementptr inbounds %struct.dcbx_local_params, %struct.dcbx_local_params* %8, i32 0, i32 2
  store i64 0, i64* %9, align 8
  %10 = load %struct.dcbx_local_params*, %struct.dcbx_local_params** %5, align 8
  %11 = getelementptr inbounds %struct.dcbx_local_params, %struct.dcbx_local_params* %10, i32 0, i32 1
  %12 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %13 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = call i32 @OSAL_MEMCPY(%struct.TYPE_8__* %11, i32* %16, i32 12)
  %18 = load %struct.ecore_dcbx_set*, %struct.ecore_dcbx_set** %6, align 8
  %19 = getelementptr inbounds %struct.ecore_dcbx_set, %struct.ecore_dcbx_set* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %3
  %23 = load %struct.ecore_dcbx_set*, %struct.ecore_dcbx_set** %6, align 8
  %24 = getelementptr inbounds %struct.ecore_dcbx_set, %struct.ecore_dcbx_set* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.dcbx_local_params*, %struct.dcbx_local_params** %5, align 8
  %27 = getelementptr inbounds %struct.dcbx_local_params, %struct.dcbx_local_params* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.ecore_dcbx_set*, %struct.ecore_dcbx_set** %6, align 8
  %29 = getelementptr inbounds %struct.ecore_dcbx_set, %struct.ecore_dcbx_set* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @DCBX_CONFIG_VERSION_IEEE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %7, align 4
  br label %41

37:                                               ; preds = %3
  %38 = load i32, i32* @DCBX_CONFIG_VERSION_DISABLED, align 4
  %39 = load %struct.dcbx_local_params*, %struct.dcbx_local_params** %5, align 8
  %40 = getelementptr inbounds %struct.dcbx_local_params, %struct.dcbx_local_params* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  br label %41

41:                                               ; preds = %37, %22
  %42 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %43 = load i32, i32* @ECORE_MSG_DCB, align 4
  %44 = load %struct.dcbx_local_params*, %struct.dcbx_local_params** %5, align 8
  %45 = getelementptr inbounds %struct.dcbx_local_params, %struct.dcbx_local_params* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %42, i32 %43, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load %struct.ecore_dcbx_set*, %struct.ecore_dcbx_set** %6, align 8
  %49 = getelementptr inbounds %struct.ecore_dcbx_set, %struct.ecore_dcbx_set* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @ECORE_DCBX_OVERRIDE_PFC_CFG, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %41
  %55 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %56 = load %struct.dcbx_local_params*, %struct.dcbx_local_params** %5, align 8
  %57 = getelementptr inbounds %struct.dcbx_local_params, %struct.dcbx_local_params* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 2
  %59 = load %struct.ecore_dcbx_set*, %struct.ecore_dcbx_set** %6, align 8
  %60 = getelementptr inbounds %struct.ecore_dcbx_set, %struct.ecore_dcbx_set* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = call i32 @ecore_dcbx_set_pfc_data(%struct.ecore_hwfn* %55, i32* %58, i32* %61)
  br label %63

63:                                               ; preds = %54, %41
  %64 = load %struct.ecore_dcbx_set*, %struct.ecore_dcbx_set** %6, align 8
  %65 = getelementptr inbounds %struct.ecore_dcbx_set, %struct.ecore_dcbx_set* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @ECORE_DCBX_OVERRIDE_ETS_CFG, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %63
  %71 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %72 = load %struct.dcbx_local_params*, %struct.dcbx_local_params** %5, align 8
  %73 = getelementptr inbounds %struct.dcbx_local_params, %struct.dcbx_local_params* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = load %struct.ecore_dcbx_set*, %struct.ecore_dcbx_set** %6, align 8
  %76 = getelementptr inbounds %struct.ecore_dcbx_set, %struct.ecore_dcbx_set* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = call i32 @ecore_dcbx_set_ets_data(%struct.ecore_hwfn* %71, i32* %74, i32* %77)
  br label %79

79:                                               ; preds = %70, %63
  %80 = load %struct.ecore_dcbx_set*, %struct.ecore_dcbx_set** %6, align 8
  %81 = getelementptr inbounds %struct.ecore_dcbx_set, %struct.ecore_dcbx_set* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @ECORE_DCBX_OVERRIDE_APP_CFG, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %79
  %87 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %88 = load %struct.dcbx_local_params*, %struct.dcbx_local_params** %5, align 8
  %89 = getelementptr inbounds %struct.dcbx_local_params, %struct.dcbx_local_params* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load %struct.ecore_dcbx_set*, %struct.ecore_dcbx_set** %6, align 8
  %92 = getelementptr inbounds %struct.ecore_dcbx_set, %struct.ecore_dcbx_set* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @ecore_dcbx_set_app_data(%struct.ecore_hwfn* %87, i32* %90, i32* %93, i32 %94)
  br label %96

96:                                               ; preds = %86, %79
  ret void
}

declare dso_local i32 @OSAL_MEMCPY(%struct.TYPE_8__*, i32*, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32) #1

declare dso_local i32 @ecore_dcbx_set_pfc_data(%struct.ecore_hwfn*, i32*, i32*) #1

declare dso_local i32 @ecore_dcbx_set_ets_data(%struct.ecore_hwfn*, i32*, i32*) #1

declare dso_local i32 @ecore_dcbx_set_app_data(%struct.ecore_hwfn*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
