; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sp_commands.c_ecore_sp_heartbeat_ramrod.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sp_commands.c_ecore_sp_heartbeat_ramrod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_spq_entry = type { i32 }
%struct.ecore_hwfn = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ecore_sp_init_data = type { i32, i32, i32 }

@OSAL_NULL = common dso_local global %struct.ecore_spq_entry* null, align 8
@ECORE_SPQ_MODE_EBLOCK = common dso_local global i32 0, align 4
@COMMON_RAMROD_EMPTY = common dso_local global i32 0, align 4
@PROTOCOLID_COMMON = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_sp_heartbeat_ramrod(%struct.ecore_hwfn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca %struct.ecore_spq_entry*, align 8
  %5 = alloca %struct.ecore_sp_init_data, align 4
  %6 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  %7 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** @OSAL_NULL, align 8
  store %struct.ecore_spq_entry* %7, %struct.ecore_spq_entry** %4, align 8
  %8 = call i32 @OSAL_MEMSET(%struct.ecore_sp_init_data* %5, i32 0, i32 12)
  %9 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %10 = call i32 @ecore_spq_get_cid(%struct.ecore_hwfn* %9)
  %11 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %5, i32 0, i32 2
  store i32 %10, i32* %11, align 4
  %12 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %13 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %5, i32 0, i32 1
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* @ECORE_SPQ_MODE_EBLOCK, align 4
  %18 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %5, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %20 = load i32, i32* @COMMON_RAMROD_EMPTY, align 4
  %21 = load i32, i32* @PROTOCOLID_COMMON, align 4
  %22 = call i32 @ecore_sp_init_request(%struct.ecore_hwfn* %19, %struct.ecore_spq_entry** %4, i32 %20, i32 %21, %struct.ecore_sp_init_data* %5)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @ECORE_SUCCESS, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %2, align 4
  br label %33

28:                                               ; preds = %1
  %29 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %30 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %4, align 8
  %31 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** @OSAL_NULL, align 8
  %32 = call i32 @ecore_spq_post(%struct.ecore_hwfn* %29, %struct.ecore_spq_entry* %30, %struct.ecore_spq_entry* %31)
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %28, %26
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @OSAL_MEMSET(%struct.ecore_sp_init_data*, i32, i32) #1

declare dso_local i32 @ecore_spq_get_cid(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_sp_init_request(%struct.ecore_hwfn*, %struct.ecore_spq_entry**, i32, i32, %struct.ecore_sp_init_data*) #1

declare dso_local i32 @ecore_spq_post(%struct.ecore_hwfn*, %struct.ecore_spq_entry*, %struct.ecore_spq_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
