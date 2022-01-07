; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_l2.c_ecore_sp_eth_rx_queues_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_l2.c_ecore_sp_eth_rx_queues_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_spq_comp_cb = type { i32 }
%struct.rx_queue_update_ramrod_data = type { i64, i64, i32, i32 }
%struct.ecore_spq_entry = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.rx_queue_update_ramrod_data }
%struct.ecore_sp_init_data = type { i32, i32, i32, %struct.ecore_spq_comp_cb* }
%struct.ecore_queue_cid = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@OSAL_NULL = common dso_local global i8* null, align 8
@ECORE_NOTIMPL = common dso_local global i32 0, align 4
@ETH_RAMROD_RX_QUEUE_UPDATE = common dso_local global i32 0, align 4
@PROTOCOLID_ETH = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_sp_eth_rx_queues_update(%struct.ecore_hwfn* %0, i8** %1, i64 %2, i64 %3, i64 %4, i32 %5, %struct.ecore_spq_comp_cb* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ecore_hwfn*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.ecore_spq_comp_cb*, align 8
  %16 = alloca %struct.rx_queue_update_ramrod_data*, align 8
  %17 = alloca %struct.ecore_spq_entry*, align 8
  %18 = alloca %struct.ecore_sp_init_data, align 8
  %19 = alloca %struct.ecore_queue_cid*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %9, align 8
  store i8** %1, i8*** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.ecore_spq_comp_cb* %6, %struct.ecore_spq_comp_cb** %15, align 8
  %22 = load i8*, i8** @OSAL_NULL, align 8
  %23 = bitcast i8* %22 to %struct.rx_queue_update_ramrod_data*
  store %struct.rx_queue_update_ramrod_data* %23, %struct.rx_queue_update_ramrod_data** %16, align 8
  %24 = load i8*, i8** @OSAL_NULL, align 8
  %25 = bitcast i8* %24 to %struct.ecore_spq_entry*
  store %struct.ecore_spq_entry* %25, %struct.ecore_spq_entry** %17, align 8
  %26 = load i32, i32* @ECORE_NOTIMPL, align 4
  store i32 %26, i32* %20, align 4
  %27 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %28 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @IS_VF(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %7
  %33 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %34 = load i8**, i8*** %10, align 8
  %35 = bitcast i8** %34 to %struct.ecore_queue_cid**
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* %12, align 8
  %38 = load i64, i64* %13, align 8
  %39 = call i32 @ecore_vf_pf_rxqs_update(%struct.ecore_hwfn* %33, %struct.ecore_queue_cid** %35, i64 %36, i64 %37, i64 %38)
  store i32 %39, i32* %8, align 4
  br label %111

40:                                               ; preds = %7
  %41 = call i32 @OSAL_MEMSET(%struct.ecore_sp_init_data* %18, i32 0, i32 24)
  %42 = load i32, i32* %14, align 4
  %43 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %18, i32 0, i32 0
  store i32 %42, i32* %43, align 8
  %44 = load %struct.ecore_spq_comp_cb*, %struct.ecore_spq_comp_cb** %15, align 8
  %45 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %18, i32 0, i32 3
  store %struct.ecore_spq_comp_cb* %44, %struct.ecore_spq_comp_cb** %45, align 8
  store i64 0, i64* %21, align 8
  br label %46

46:                                               ; preds = %106, %40
  %47 = load i64, i64* %21, align 8
  %48 = load i64, i64* %11, align 8
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %50, label %109

50:                                               ; preds = %46
  %51 = load i8**, i8*** %10, align 8
  %52 = bitcast i8** %51 to %struct.ecore_queue_cid**
  %53 = load i64, i64* %21, align 8
  %54 = getelementptr inbounds %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %52, i64 %53
  %55 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %54, align 8
  store %struct.ecore_queue_cid* %55, %struct.ecore_queue_cid** %19, align 8
  %56 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %19, align 8
  %57 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %18, i32 0, i32 2
  store i32 %58, i32* %59, align 8
  %60 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %19, align 8
  %61 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %18, i32 0, i32 1
  store i32 %62, i32* %63, align 4
  %64 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %65 = load i32, i32* @ETH_RAMROD_RX_QUEUE_UPDATE, align 4
  %66 = load i32, i32* @PROTOCOLID_ETH, align 4
  %67 = call i32 @ecore_sp_init_request(%struct.ecore_hwfn* %64, %struct.ecore_spq_entry** %17, i32 %65, i32 %66, %struct.ecore_sp_init_data* %18)
  store i32 %67, i32* %20, align 4
  %68 = load i32, i32* %20, align 4
  %69 = load i32, i32* @ECORE_SUCCESS, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %50
  %72 = load i32, i32* %20, align 4
  store i32 %72, i32* %8, align 4
  br label %111

73:                                               ; preds = %50
  %74 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %17, align 8
  %75 = getelementptr inbounds %struct.ecore_spq_entry, %struct.ecore_spq_entry* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  store %struct.rx_queue_update_ramrod_data* %76, %struct.rx_queue_update_ramrod_data** %16, align 8
  %77 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %19, align 8
  %78 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.rx_queue_update_ramrod_data*, %struct.rx_queue_update_ramrod_data** %16, align 8
  %82 = getelementptr inbounds %struct.rx_queue_update_ramrod_data, %struct.rx_queue_update_ramrod_data* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 4
  %83 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %19, align 8
  %84 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @OSAL_CPU_TO_LE16(i32 %86)
  %88 = load %struct.rx_queue_update_ramrod_data*, %struct.rx_queue_update_ramrod_data** %16, align 8
  %89 = getelementptr inbounds %struct.rx_queue_update_ramrod_data, %struct.rx_queue_update_ramrod_data* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 8
  %90 = load i64, i64* %12, align 8
  %91 = load %struct.rx_queue_update_ramrod_data*, %struct.rx_queue_update_ramrod_data** %16, align 8
  %92 = getelementptr inbounds %struct.rx_queue_update_ramrod_data, %struct.rx_queue_update_ramrod_data* %91, i32 0, i32 0
  store i64 %90, i64* %92, align 8
  %93 = load i64, i64* %13, align 8
  %94 = load %struct.rx_queue_update_ramrod_data*, %struct.rx_queue_update_ramrod_data** %16, align 8
  %95 = getelementptr inbounds %struct.rx_queue_update_ramrod_data, %struct.rx_queue_update_ramrod_data* %94, i32 0, i32 1
  store i64 %93, i64* %95, align 8
  %96 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %97 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %17, align 8
  %98 = load i8*, i8** @OSAL_NULL, align 8
  %99 = call i32 @ecore_spq_post(%struct.ecore_hwfn* %96, %struct.ecore_spq_entry* %97, i8* %98)
  store i32 %99, i32* %20, align 4
  %100 = load i32, i32* %20, align 4
  %101 = load i32, i32* @ECORE_SUCCESS, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %73
  %104 = load i32, i32* %20, align 4
  store i32 %104, i32* %8, align 4
  br label %111

105:                                              ; preds = %73
  br label %106

106:                                              ; preds = %105
  %107 = load i64, i64* %21, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %21, align 8
  br label %46

109:                                              ; preds = %46
  %110 = load i32, i32* %20, align 4
  store i32 %110, i32* %8, align 4
  br label %111

111:                                              ; preds = %109, %103, %71, %32
  %112 = load i32, i32* %8, align 4
  ret i32 %112
}

declare dso_local i64 @IS_VF(i32) #1

declare dso_local i32 @ecore_vf_pf_rxqs_update(%struct.ecore_hwfn*, %struct.ecore_queue_cid**, i64, i64, i64) #1

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
