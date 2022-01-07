; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_ll2.c_ecore_sp_ll2_rx_queue_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_ll2.c_ecore_sp_ll2_rx_queue_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ecore_ll2_info = type { i32, i32 }
%struct.core_rx_stop_ramrod_data = type { i32, i32 }
%struct.ecore_spq_entry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.core_rx_stop_ramrod_data }
%struct.ecore_sp_init_data = type { i32, i32, i32 }

@OSAL_NULL = common dso_local global i8* null, align 8
@ECORE_NOTIMPL = common dso_local global i32 0, align 4
@ECORE_SPQ_MODE_EBLOCK = common dso_local global i32 0, align 4
@CORE_RAMROD_RX_QUEUE_STOP = common dso_local global i32 0, align 4
@PROTOCOLID_CORE = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_ll2_info*)* @ecore_sp_ll2_rx_queue_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_sp_ll2_rx_queue_stop(%struct.ecore_hwfn* %0, %struct.ecore_ll2_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_ll2_info*, align 8
  %6 = alloca %struct.core_rx_stop_ramrod_data*, align 8
  %7 = alloca %struct.ecore_spq_entry*, align 8
  %8 = alloca %struct.ecore_sp_init_data, align 4
  %9 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_ll2_info* %1, %struct.ecore_ll2_info** %5, align 8
  %10 = load i8*, i8** @OSAL_NULL, align 8
  %11 = bitcast i8* %10 to %struct.core_rx_stop_ramrod_data*
  store %struct.core_rx_stop_ramrod_data* %11, %struct.core_rx_stop_ramrod_data** %6, align 8
  %12 = load i8*, i8** @OSAL_NULL, align 8
  %13 = bitcast i8* %12 to %struct.ecore_spq_entry*
  store %struct.ecore_spq_entry* %13, %struct.ecore_spq_entry** %7, align 8
  %14 = load i32, i32* @ECORE_NOTIMPL, align 4
  store i32 %14, i32* %9, align 4
  %15 = call i32 @OSAL_MEMSET(%struct.ecore_sp_init_data* %8, i32 0, i32 12)
  %16 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %5, align 8
  %17 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %8, i32 0, i32 2
  store i32 %18, i32* %19, align 4
  %20 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %21 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %8, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* @ECORE_SPQ_MODE_EBLOCK, align 4
  %26 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %8, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %28 = load i32, i32* @CORE_RAMROD_RX_QUEUE_STOP, align 4
  %29 = load i32, i32* @PROTOCOLID_CORE, align 4
  %30 = call i32 @ecore_sp_init_request(%struct.ecore_hwfn* %27, %struct.ecore_spq_entry** %7, i32 %28, i32 %29, %struct.ecore_sp_init_data* %8)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @ECORE_SUCCESS, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %2
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %3, align 4
  br label %51

36:                                               ; preds = %2
  %37 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %7, align 8
  %38 = getelementptr inbounds %struct.ecore_spq_entry, %struct.ecore_spq_entry* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store %struct.core_rx_stop_ramrod_data* %39, %struct.core_rx_stop_ramrod_data** %6, align 8
  %40 = load %struct.core_rx_stop_ramrod_data*, %struct.core_rx_stop_ramrod_data** %6, align 8
  %41 = getelementptr inbounds %struct.core_rx_stop_ramrod_data, %struct.core_rx_stop_ramrod_data* %40, i32 0, i32 0
  store i32 1, i32* %41, align 4
  %42 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %5, align 8
  %43 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.core_rx_stop_ramrod_data*, %struct.core_rx_stop_ramrod_data** %6, align 8
  %46 = getelementptr inbounds %struct.core_rx_stop_ramrod_data, %struct.core_rx_stop_ramrod_data* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %48 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %7, align 8
  %49 = load i8*, i8** @OSAL_NULL, align 8
  %50 = call i32 @ecore_spq_post(%struct.ecore_hwfn* %47, %struct.ecore_spq_entry* %48, i8* %49)
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %36, %34
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @OSAL_MEMSET(%struct.ecore_sp_init_data*, i32, i32) #1

declare dso_local i32 @ecore_sp_init_request(%struct.ecore_hwfn*, %struct.ecore_spq_entry**, i32, i32, %struct.ecore_sp_init_data*) #1

declare dso_local i32 @ecore_spq_post(%struct.ecore_hwfn*, %struct.ecore_spq_entry*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
