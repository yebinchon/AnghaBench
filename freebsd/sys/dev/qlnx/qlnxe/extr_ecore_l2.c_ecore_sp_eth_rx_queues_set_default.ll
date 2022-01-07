; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_l2.c_ecore_sp_eth_rx_queues_set_default.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_l2.c_ecore_sp_eth_rx_queues_set_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_spq_comp_cb = type { i32 }
%struct.rx_queue_update_ramrod_data = type { i32, i32, i64, i32, i32 }
%struct.ecore_spq_entry = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.rx_queue_update_ramrod_data }
%struct.ecore_sp_init_data = type { i32, i32, i32, %struct.ecore_spq_comp_cb* }
%struct.ecore_queue_cid = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@OSAL_NULL = common dso_local global i8* null, align 8
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@ECORE_NOTIMPL = common dso_local global i32 0, align 4
@ETH_RAMROD_RX_QUEUE_UPDATE = common dso_local global i32 0, align 4
@PROTOCOLID_ETH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_sp_eth_rx_queues_set_default(%struct.ecore_hwfn* %0, i8* %1, i32 %2, %struct.ecore_spq_comp_cb* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ecore_hwfn*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ecore_spq_comp_cb*, align 8
  %10 = alloca %struct.rx_queue_update_ramrod_data*, align 8
  %11 = alloca %struct.ecore_spq_entry*, align 8
  %12 = alloca %struct.ecore_sp_init_data, align 8
  %13 = alloca %struct.ecore_queue_cid*, align 8
  %14 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ecore_spq_comp_cb* %3, %struct.ecore_spq_comp_cb** %9, align 8
  %15 = load i8*, i8** @OSAL_NULL, align 8
  %16 = bitcast i8* %15 to %struct.rx_queue_update_ramrod_data*
  store %struct.rx_queue_update_ramrod_data* %16, %struct.rx_queue_update_ramrod_data** %10, align 8
  %17 = load i8*, i8** @OSAL_NULL, align 8
  %18 = bitcast i8* %17 to %struct.ecore_spq_entry*
  store %struct.ecore_spq_entry* %18, %struct.ecore_spq_entry** %11, align 8
  %19 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %19, i32* %14, align 4
  %20 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %21 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @IS_VF(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* @ECORE_NOTIMPL, align 4
  store i32 %26, i32* %5, align 4
  br label %80

27:                                               ; preds = %4
  %28 = call i32 @OSAL_MEMSET(%struct.ecore_sp_init_data* %12, i32 0, i32 24)
  %29 = load i32, i32* %8, align 4
  %30 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %12, i32 0, i32 0
  store i32 %29, i32* %30, align 8
  %31 = load %struct.ecore_spq_comp_cb*, %struct.ecore_spq_comp_cb** %9, align 8
  %32 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %12, i32 0, i32 3
  store %struct.ecore_spq_comp_cb* %31, %struct.ecore_spq_comp_cb** %32, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = bitcast i8* %33 to %struct.ecore_queue_cid*
  store %struct.ecore_queue_cid* %34, %struct.ecore_queue_cid** %13, align 8
  %35 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %13, align 8
  %36 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %12, i32 0, i32 2
  store i32 %37, i32* %38, align 8
  %39 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %13, align 8
  %40 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %12, i32 0, i32 1
  store i32 %41, i32* %42, align 4
  %43 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %44 = load i32, i32* @ETH_RAMROD_RX_QUEUE_UPDATE, align 4
  %45 = load i32, i32* @PROTOCOLID_ETH, align 4
  %46 = call i32 @ecore_sp_init_request(%struct.ecore_hwfn* %43, %struct.ecore_spq_entry** %11, i32 %44, i32 %45, %struct.ecore_sp_init_data* %12)
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* @ECORE_SUCCESS, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %27
  %51 = load i32, i32* %14, align 4
  store i32 %51, i32* %5, align 4
  br label %80

52:                                               ; preds = %27
  %53 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %11, align 8
  %54 = getelementptr inbounds %struct.ecore_spq_entry, %struct.ecore_spq_entry* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  store %struct.rx_queue_update_ramrod_data* %55, %struct.rx_queue_update_ramrod_data** %10, align 8
  %56 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %13, align 8
  %57 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.rx_queue_update_ramrod_data*, %struct.rx_queue_update_ramrod_data** %10, align 8
  %61 = getelementptr inbounds %struct.rx_queue_update_ramrod_data, %struct.rx_queue_update_ramrod_data* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 4
  %62 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %13, align 8
  %63 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @OSAL_CPU_TO_LE16(i32 %65)
  %67 = load %struct.rx_queue_update_ramrod_data*, %struct.rx_queue_update_ramrod_data** %10, align 8
  %68 = getelementptr inbounds %struct.rx_queue_update_ramrod_data, %struct.rx_queue_update_ramrod_data* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 8
  %69 = load %struct.rx_queue_update_ramrod_data*, %struct.rx_queue_update_ramrod_data** %10, align 8
  %70 = getelementptr inbounds %struct.rx_queue_update_ramrod_data, %struct.rx_queue_update_ramrod_data* %69, i32 0, i32 2
  store i64 0, i64* %70, align 8
  %71 = load %struct.rx_queue_update_ramrod_data*, %struct.rx_queue_update_ramrod_data** %10, align 8
  %72 = getelementptr inbounds %struct.rx_queue_update_ramrod_data, %struct.rx_queue_update_ramrod_data* %71, i32 0, i32 0
  store i32 1, i32* %72, align 8
  %73 = load %struct.rx_queue_update_ramrod_data*, %struct.rx_queue_update_ramrod_data** %10, align 8
  %74 = getelementptr inbounds %struct.rx_queue_update_ramrod_data, %struct.rx_queue_update_ramrod_data* %73, i32 0, i32 1
  store i32 1, i32* %74, align 4
  %75 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %76 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %11, align 8
  %77 = load i8*, i8** @OSAL_NULL, align 8
  %78 = call i32 @ecore_spq_post(%struct.ecore_hwfn* %75, %struct.ecore_spq_entry* %76, i8* %77)
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %14, align 4
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %52, %50, %25
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i64 @IS_VF(i32) #1

declare dso_local i32 @OSAL_MEMSET(%struct.ecore_sp_init_data*, i32, i32) #1

declare dso_local i32 @ecore_sp_init_request(%struct.ecore_hwfn*, %struct.ecore_spq_entry**, i32, i32, %struct.ecore_sp_init_data*) #1

declare dso_local i32 @OSAL_CPU_TO_LE16(i32) #1

declare dso_local i32 @ecore_spq_post(%struct.ecore_hwfn*, %struct.ecore_spq_entry*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
