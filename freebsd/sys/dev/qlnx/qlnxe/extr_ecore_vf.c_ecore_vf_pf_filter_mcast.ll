; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_vf.c_ecore_vf_pf_filter_mcast.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_vf.c_ecore_vf_pf_filter_mcast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_filter_mcast = type { i64, i32, i32* }
%struct.ecore_sp_vport_update_params = type { i32, i32* }

@ECORE_FILTER_ADD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ecore_vf_pf_filter_mcast(%struct.ecore_hwfn* %0, %struct.ecore_filter_mcast* %1) #0 {
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca %struct.ecore_filter_mcast*, align 8
  %5 = alloca %struct.ecore_sp_vport_update_params, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  store %struct.ecore_filter_mcast* %1, %struct.ecore_filter_mcast** %4, align 8
  %8 = call i32 @OSAL_MEMSET(%struct.ecore_sp_vport_update_params* %5, i32 0, i32 16)
  %9 = getelementptr inbounds %struct.ecore_sp_vport_update_params, %struct.ecore_sp_vport_update_params* %5, i32 0, i32 0
  store i32 1, i32* %9, align 8
  %10 = load %struct.ecore_filter_mcast*, %struct.ecore_filter_mcast** %4, align 8
  %11 = getelementptr inbounds %struct.ecore_filter_mcast, %struct.ecore_filter_mcast* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @ECORE_FILTER_ADD, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %46

15:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %42, %15
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.ecore_filter_mcast*, %struct.ecore_filter_mcast** %4, align 8
  %19 = getelementptr inbounds %struct.ecore_filter_mcast, %struct.ecore_filter_mcast* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %45

22:                                               ; preds = %16
  %23 = load %struct.ecore_filter_mcast*, %struct.ecore_filter_mcast** %4, align 8
  %24 = getelementptr inbounds %struct.ecore_filter_mcast, %struct.ecore_filter_mcast* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ecore_mcast_bin_from_mac(i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = srem i32 %31, 32
  %33 = shl i32 1, %32
  %34 = getelementptr inbounds %struct.ecore_sp_vport_update_params, %struct.ecore_sp_vport_update_params* %5, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sdiv i32 %36, 32
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %33
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %22
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %16

45:                                               ; preds = %16
  br label %46

46:                                               ; preds = %45, %2
  %47 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %48 = call i32 @ecore_vf_pf_vport_update(%struct.ecore_hwfn* %47, %struct.ecore_sp_vport_update_params* %5)
  ret void
}

declare dso_local i32 @OSAL_MEMSET(%struct.ecore_sp_vport_update_params*, i32, i32) #1

declare dso_local i32 @ecore_mcast_bin_from_mac(i32) #1

declare dso_local i32 @ecore_vf_pf_vport_update(%struct.ecore_hwfn*, %struct.ecore_sp_vport_update_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
