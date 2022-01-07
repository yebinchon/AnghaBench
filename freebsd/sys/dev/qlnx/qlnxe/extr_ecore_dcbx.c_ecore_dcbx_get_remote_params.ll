; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dcbx.c_ecore_dcbx_get_remote_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dcbx.c_ecore_dcbx_get_remote_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.dcbx_features }
%struct.dcbx_features = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.ecore_dcbx_get = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, %struct.ecore_dcbx_get*)* @ecore_dcbx_get_remote_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_dcbx_get_remote_params(%struct.ecore_hwfn* %0, %struct.ecore_dcbx_get* %1) #0 {
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca %struct.ecore_dcbx_get*, align 8
  %5 = alloca %struct.dcbx_features*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  store %struct.ecore_dcbx_get* %1, %struct.ecore_dcbx_get** %4, align 8
  %6 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %7 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %6, i32 0, i32 0
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store %struct.dcbx_features* %10, %struct.dcbx_features** %5, align 8
  %11 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %12 = load %struct.dcbx_features*, %struct.dcbx_features** %5, align 8
  %13 = getelementptr inbounds %struct.dcbx_features, %struct.dcbx_features* %12, i32 0, i32 2
  %14 = load %struct.dcbx_features*, %struct.dcbx_features** %5, align 8
  %15 = getelementptr inbounds %struct.dcbx_features, %struct.dcbx_features* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.dcbx_features*, %struct.dcbx_features** %5, align 8
  %19 = getelementptr inbounds %struct.dcbx_features, %struct.dcbx_features* %18, i32 0, i32 1
  %20 = load %struct.dcbx_features*, %struct.dcbx_features** %5, align 8
  %21 = getelementptr inbounds %struct.dcbx_features, %struct.dcbx_features* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ecore_dcbx_get*, %struct.ecore_dcbx_get** %4, align 8
  %24 = getelementptr inbounds %struct.ecore_dcbx_get, %struct.ecore_dcbx_get* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = call i32 @ecore_dcbx_get_common_params(%struct.ecore_hwfn* %11, %struct.TYPE_8__* %13, i32 %17, i32* %19, i32 %22, i32* %25, i32 0)
  %27 = load %struct.ecore_dcbx_get*, %struct.ecore_dcbx_get** %4, align 8
  %28 = getelementptr inbounds %struct.ecore_dcbx_get, %struct.ecore_dcbx_get* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store i32 1, i32* %29, align 4
  ret void
}

declare dso_local i32 @ecore_dcbx_get_common_params(%struct.ecore_hwfn*, %struct.TYPE_8__*, i32, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
