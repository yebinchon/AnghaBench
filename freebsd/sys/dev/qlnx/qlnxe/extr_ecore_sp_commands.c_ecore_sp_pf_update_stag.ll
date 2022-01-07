; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sp_commands.c_ecore_sp_pf_update_stag.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sp_commands.c_ecore_sp_pf_update_stag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_spq_entry = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ecore_hwfn = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.ecore_sp_init_data = type { i32, i32, i32 }

@OSAL_NULL = common dso_local global %struct.ecore_spq_entry* null, align 8
@ECORE_NOTIMPL = common dso_local global i32 0, align 4
@ECORE_SPQ_MODE_CB = common dso_local global i32 0, align 4
@COMMON_RAMROD_PF_UPDATE = common dso_local global i32 0, align 4
@PROTOCOLID_COMMON = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_sp_pf_update_stag(%struct.ecore_hwfn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca %struct.ecore_spq_entry*, align 8
  %5 = alloca %struct.ecore_sp_init_data, align 4
  %6 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  %7 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** @OSAL_NULL, align 8
  store %struct.ecore_spq_entry* %7, %struct.ecore_spq_entry** %4, align 8
  %8 = load i32, i32* @ECORE_NOTIMPL, align 4
  store i32 %8, i32* %6, align 4
  %9 = call i32 @OSAL_MEMSET(%struct.ecore_sp_init_data* %5, i32 0, i32 12)
  %10 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %11 = call i32 @ecore_spq_get_cid(%struct.ecore_hwfn* %10)
  %12 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %5, i32 0, i32 2
  store i32 %11, i32* %12, align 4
  %13 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %14 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %5, i32 0, i32 1
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @ECORE_SPQ_MODE_CB, align 4
  %19 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %5, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %21 = load i32, i32* @COMMON_RAMROD_PF_UPDATE, align 4
  %22 = load i32, i32* @PROTOCOLID_COMMON, align 4
  %23 = call i32 @ecore_sp_init_request(%struct.ecore_hwfn* %20, %struct.ecore_spq_entry** %4, i32 %21, i32 %22, %struct.ecore_sp_init_data* %5)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @ECORE_SUCCESS, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %2, align 4
  br label %47

29:                                               ; preds = %1
  %30 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %4, align 8
  %31 = getelementptr inbounds %struct.ecore_spq_entry, %struct.ecore_spq_entry* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 1, i32* %33, align 4
  %34 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %35 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @OSAL_CPU_TO_LE16(i32 %37)
  %39 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %4, align 8
  %40 = getelementptr inbounds %struct.ecore_spq_entry, %struct.ecore_spq_entry* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  store i32 %38, i32* %42, align 4
  %43 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %44 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %4, align 8
  %45 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** @OSAL_NULL, align 8
  %46 = call i32 @ecore_spq_post(%struct.ecore_hwfn* %43, %struct.ecore_spq_entry* %44, %struct.ecore_spq_entry* %45)
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %29, %27
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @OSAL_MEMSET(%struct.ecore_sp_init_data*, i32, i32) #1

declare dso_local i32 @ecore_spq_get_cid(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_sp_init_request(%struct.ecore_hwfn*, %struct.ecore_spq_entry**, i32, i32, %struct.ecore_sp_init_data*) #1

declare dso_local i32 @OSAL_CPU_TO_LE16(i32) #1

declare dso_local i32 @ecore_spq_post(%struct.ecore_hwfn*, %struct.ecore_spq_entry*, %struct.ecore_spq_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
