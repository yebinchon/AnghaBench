; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_l2.c_ecore_eth_pf_rx_queue_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_l2.c_ecore_eth_pf_rx_queue_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_queue_cid = type { i64, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.rx_queue_stop_ramrod_data = type { i32, i32, i32, i32 }
%struct.ecore_spq_entry = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.rx_queue_stop_ramrod_data }
%struct.ecore_sp_init_data = type { i32, i32, i32 }

@OSAL_NULL = common dso_local global i8* null, align 8
@ECORE_SPQ_MODE_EBLOCK = common dso_local global i32 0, align 4
@ETH_RAMROD_RX_QUEUE_STOP = common dso_local global i32 0, align 4
@PROTOCOLID_ETH = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@ECORE_QUEUE_CID_PF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_queue_cid*, i32, i32)* @ecore_eth_pf_rx_queue_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_eth_pf_rx_queue_stop(%struct.ecore_hwfn* %0, %struct.ecore_queue_cid* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ecore_hwfn*, align 8
  %7 = alloca %struct.ecore_queue_cid*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rx_queue_stop_ramrod_data*, align 8
  %11 = alloca %struct.ecore_spq_entry*, align 8
  %12 = alloca %struct.ecore_sp_init_data, align 4
  %13 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %6, align 8
  store %struct.ecore_queue_cid* %1, %struct.ecore_queue_cid** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i8*, i8** @OSAL_NULL, align 8
  %15 = bitcast i8* %14 to %struct.rx_queue_stop_ramrod_data*
  store %struct.rx_queue_stop_ramrod_data* %15, %struct.rx_queue_stop_ramrod_data** %10, align 8
  %16 = load i8*, i8** @OSAL_NULL, align 8
  %17 = bitcast i8* %16 to %struct.ecore_spq_entry*
  store %struct.ecore_spq_entry* %17, %struct.ecore_spq_entry** %11, align 8
  %18 = call i32 @OSAL_MEMSET(%struct.ecore_sp_init_data* %12, i32 0, i32 12)
  %19 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %7, align 8
  %20 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %12, i32 0, i32 2
  store i32 %21, i32* %22, align 4
  %23 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %7, align 8
  %24 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %12, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* @ECORE_SPQ_MODE_EBLOCK, align 4
  %28 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %12, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %30 = load i32, i32* @ETH_RAMROD_RX_QUEUE_STOP, align 4
  %31 = load i32, i32* @PROTOCOLID_ETH, align 4
  %32 = call i32 @ecore_sp_init_request(%struct.ecore_hwfn* %29, %struct.ecore_spq_entry** %11, i32 %30, i32 %31, %struct.ecore_sp_init_data* %12)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* @ECORE_SUCCESS, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %4
  %37 = load i32, i32* %13, align 4
  store i32 %37, i32* %5, align 4
  br label %88

38:                                               ; preds = %4
  %39 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %11, align 8
  %40 = getelementptr inbounds %struct.ecore_spq_entry, %struct.ecore_spq_entry* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store %struct.rx_queue_stop_ramrod_data* %41, %struct.rx_queue_stop_ramrod_data** %10, align 8
  %42 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %7, align 8
  %43 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.rx_queue_stop_ramrod_data*, %struct.rx_queue_stop_ramrod_data** %10, align 8
  %47 = getelementptr inbounds %struct.rx_queue_stop_ramrod_data, %struct.rx_queue_stop_ramrod_data* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  %48 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %7, align 8
  %49 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @OSAL_CPU_TO_LE16(i32 %51)
  %53 = load %struct.rx_queue_stop_ramrod_data*, %struct.rx_queue_stop_ramrod_data** %10, align 8
  %54 = getelementptr inbounds %struct.rx_queue_stop_ramrod_data, %struct.rx_queue_stop_ramrod_data* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %7, align 8
  %56 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @ECORE_QUEUE_CID_PF, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %38
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60, %38
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br label %66

66:                                               ; preds = %63, %60
  %67 = phi i1 [ true, %60 ], [ %65, %63 ]
  %68 = zext i1 %67 to i32
  %69 = load %struct.rx_queue_stop_ramrod_data*, %struct.rx_queue_stop_ramrod_data** %10, align 8
  %70 = getelementptr inbounds %struct.rx_queue_stop_ramrod_data, %struct.rx_queue_stop_ramrod_data* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %7, align 8
  %72 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @ECORE_QUEUE_CID_PF, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %79, label %76

76:                                               ; preds = %66
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br label %79

79:                                               ; preds = %76, %66
  %80 = phi i1 [ true, %66 ], [ %78, %76 ]
  %81 = zext i1 %80 to i32
  %82 = load %struct.rx_queue_stop_ramrod_data*, %struct.rx_queue_stop_ramrod_data** %10, align 8
  %83 = getelementptr inbounds %struct.rx_queue_stop_ramrod_data, %struct.rx_queue_stop_ramrod_data* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %85 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %11, align 8
  %86 = load i8*, i8** @OSAL_NULL, align 8
  %87 = call i32 @ecore_spq_post(%struct.ecore_hwfn* %84, %struct.ecore_spq_entry* %85, i8* %86)
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %79, %36
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

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
