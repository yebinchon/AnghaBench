; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_l2.c_ecore_sp_vport_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_l2.c_ecore_sp_vport_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_sp_vport_start_params = type { i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_sp_vport_start(%struct.ecore_hwfn* %0, %struct.ecore_sp_vport_start_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_sp_vport_start_params*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_sp_vport_start_params* %1, %struct.ecore_sp_vport_start_params** %5, align 8
  %6 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %7 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @IS_VF(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %35

11:                                               ; preds = %2
  %12 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %13 = load %struct.ecore_sp_vport_start_params*, %struct.ecore_sp_vport_start_params** %5, align 8
  %14 = getelementptr inbounds %struct.ecore_sp_vport_start_params, %struct.ecore_sp_vport_start_params* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ecore_sp_vport_start_params*, %struct.ecore_sp_vport_start_params** %5, align 8
  %17 = getelementptr inbounds %struct.ecore_sp_vport_start_params, %struct.ecore_sp_vport_start_params* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ecore_sp_vport_start_params*, %struct.ecore_sp_vport_start_params** %5, align 8
  %20 = getelementptr inbounds %struct.ecore_sp_vport_start_params, %struct.ecore_sp_vport_start_params* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ecore_sp_vport_start_params*, %struct.ecore_sp_vport_start_params** %5, align 8
  %23 = getelementptr inbounds %struct.ecore_sp_vport_start_params, %struct.ecore_sp_vport_start_params* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ecore_sp_vport_start_params*, %struct.ecore_sp_vport_start_params** %5, align 8
  %26 = getelementptr inbounds %struct.ecore_sp_vport_start_params, %struct.ecore_sp_vport_start_params* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ecore_sp_vport_start_params*, %struct.ecore_sp_vport_start_params** %5, align 8
  %29 = getelementptr inbounds %struct.ecore_sp_vport_start_params, %struct.ecore_sp_vport_start_params* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ecore_sp_vport_start_params*, %struct.ecore_sp_vport_start_params** %5, align 8
  %32 = getelementptr inbounds %struct.ecore_sp_vport_start_params, %struct.ecore_sp_vport_start_params* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ecore_vf_pf_vport_start(%struct.ecore_hwfn* %12, i32 %15, i32 %18, i32 %21, i32 %24, i32 %27, i32 %30, i32 %33)
  store i32 %34, i32* %3, align 4
  br label %39

35:                                               ; preds = %2
  %36 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %37 = load %struct.ecore_sp_vport_start_params*, %struct.ecore_sp_vport_start_params** %5, align 8
  %38 = call i32 @ecore_sp_eth_vport_start(%struct.ecore_hwfn* %36, %struct.ecore_sp_vport_start_params* %37)
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %35, %11
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i64 @IS_VF(i32) #1

declare dso_local i32 @ecore_vf_pf_vport_start(%struct.ecore_hwfn*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ecore_sp_eth_vport_start(%struct.ecore_hwfn*, %struct.ecore_sp_vport_start_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
