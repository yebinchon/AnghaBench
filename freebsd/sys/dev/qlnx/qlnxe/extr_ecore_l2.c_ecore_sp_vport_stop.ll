; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_l2.c_ecore_sp_vport_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_l2.c_ecore_sp_vport_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.vport_stop_ramrod_data = type { i32 }
%struct.ecore_sp_init_data = type { i32, i32, i32 }
%struct.ecore_spq_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.vport_stop_ramrod_data }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@ECORE_SPQ_MODE_EBLOCK = common dso_local global i32 0, align 4
@ETH_RAMROD_VPORT_STOP = common dso_local global i32 0, align 4
@PROTOCOLID_ETH = common dso_local global i32 0, align 4
@OSAL_NULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_sp_vport_stop(%struct.ecore_hwfn* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.vport_stop_ramrod_data*, align 8
  %9 = alloca %struct.ecore_sp_init_data, align 4
  %10 = alloca %struct.ecore_spq_entry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %13 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %14 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @IS_VF(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %20 = call i32 @ecore_vf_pf_vport_stop(%struct.ecore_hwfn* %19)
  store i32 %20, i32* %4, align 4
  br label %59

21:                                               ; preds = %3
  %22 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @ecore_fw_vport(%struct.ecore_hwfn* %22, i32 %23, i32* %11)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* @ECORE_SUCCESS, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* %12, align 4
  store i32 %29, i32* %4, align 4
  br label %59

30:                                               ; preds = %21
  %31 = call i32 @OSAL_MEMSET(%struct.ecore_sp_init_data* %9, i32 0, i32 12)
  %32 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %33 = call i32 @ecore_spq_get_cid(%struct.ecore_hwfn* %32)
  %34 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %9, i32 0, i32 2
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* %6, align 4
  %36 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %9, i32 0, i32 1
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* @ECORE_SPQ_MODE_EBLOCK, align 4
  %38 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %9, i32 0, i32 0
  store i32 %37, i32* %38, align 4
  %39 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %40 = load i32, i32* @ETH_RAMROD_VPORT_STOP, align 4
  %41 = load i32, i32* @PROTOCOLID_ETH, align 4
  %42 = call i32 @ecore_sp_init_request(%struct.ecore_hwfn* %39, %struct.ecore_spq_entry** %10, i32 %40, i32 %41, %struct.ecore_sp_init_data* %9)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* @ECORE_SUCCESS, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %30
  %47 = load i32, i32* %12, align 4
  store i32 %47, i32* %4, align 4
  br label %59

48:                                               ; preds = %30
  %49 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %10, align 8
  %50 = getelementptr inbounds %struct.ecore_spq_entry, %struct.ecore_spq_entry* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store %struct.vport_stop_ramrod_data* %51, %struct.vport_stop_ramrod_data** %8, align 8
  %52 = load i32, i32* %11, align 4
  %53 = load %struct.vport_stop_ramrod_data*, %struct.vport_stop_ramrod_data** %8, align 8
  %54 = getelementptr inbounds %struct.vport_stop_ramrod_data, %struct.vport_stop_ramrod_data* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %56 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %10, align 8
  %57 = load i32, i32* @OSAL_NULL, align 4
  %58 = call i32 @ecore_spq_post(%struct.ecore_hwfn* %55, %struct.ecore_spq_entry* %56, i32 %57)
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %48, %46, %28, %18
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i64 @IS_VF(i32) #1

declare dso_local i32 @ecore_vf_pf_vport_stop(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_fw_vport(%struct.ecore_hwfn*, i32, i32*) #1

declare dso_local i32 @OSAL_MEMSET(%struct.ecore_sp_init_data*, i32, i32) #1

declare dso_local i32 @ecore_spq_get_cid(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_sp_init_request(%struct.ecore_hwfn*, %struct.ecore_spq_entry**, i32, i32, %struct.ecore_sp_init_data*) #1

declare dso_local i32 @ecore_spq_post(%struct.ecore_hwfn*, %struct.ecore_spq_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
