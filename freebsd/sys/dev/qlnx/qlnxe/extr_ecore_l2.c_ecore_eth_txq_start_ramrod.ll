; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_l2.c_ecore_eth_txq_start_ramrod.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_l2.c_ecore_eth_txq_start_ramrod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_queue_cid = type { %struct.TYPE_4__, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.tx_queue_start_ramrod_data = type { i8*, i32, i8*, i8*, i8*, i32, i32, i8*, i32 }
%struct.ecore_spq_entry = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.tx_queue_start_ramrod_data }
%struct.ecore_sp_init_data = type { i32, i32, i32 }

@OSAL_NULL = common dso_local global i8* null, align 8
@ECORE_NOTIMPL = common dso_local global i32 0, align 4
@ECORE_SPQ_MODE_EBLOCK = common dso_local global i32 0, align 4
@ETH_RAMROD_TX_QUEUE_START = common dso_local global i32 0, align 4
@PROTOCOLID_ETH = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_eth_txq_start_ramrod(%struct.ecore_hwfn* %0, %struct.ecore_queue_cid* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ecore_hwfn*, align 8
  %8 = alloca %struct.ecore_queue_cid*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.tx_queue_start_ramrod_data*, align 8
  %13 = alloca %struct.ecore_spq_entry*, align 8
  %14 = alloca %struct.ecore_sp_init_data, align 4
  %15 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %7, align 8
  store %struct.ecore_queue_cid* %1, %struct.ecore_queue_cid** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load i8*, i8** @OSAL_NULL, align 8
  %17 = bitcast i8* %16 to %struct.tx_queue_start_ramrod_data*
  store %struct.tx_queue_start_ramrod_data* %17, %struct.tx_queue_start_ramrod_data** %12, align 8
  %18 = load i8*, i8** @OSAL_NULL, align 8
  %19 = bitcast i8* %18 to %struct.ecore_spq_entry*
  store %struct.ecore_spq_entry* %19, %struct.ecore_spq_entry** %13, align 8
  %20 = load i32, i32* @ECORE_NOTIMPL, align 4
  store i32 %20, i32* %15, align 4
  %21 = call i32 @OSAL_MEMSET(%struct.ecore_sp_init_data* %14, i32 0, i32 12)
  %22 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %8, align 8
  %23 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %14, i32 0, i32 2
  store i32 %24, i32* %25, align 4
  %26 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %8, align 8
  %27 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %14, i32 0, i32 1
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @ECORE_SPQ_MODE_EBLOCK, align 4
  %31 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %14, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  %32 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %33 = load i32, i32* @ETH_RAMROD_TX_QUEUE_START, align 4
  %34 = load i32, i32* @PROTOCOLID_ETH, align 4
  %35 = call i32 @ecore_sp_init_request(%struct.ecore_hwfn* %32, %struct.ecore_spq_entry** %13, i32 %33, i32 %34, %struct.ecore_sp_init_data* %14)
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* %15, align 4
  %37 = load i32, i32* @ECORE_SUCCESS, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %5
  %40 = load i32, i32* %15, align 4
  store i32 %40, i32* %6, align 4
  br label %99

41:                                               ; preds = %5
  %42 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %13, align 8
  %43 = getelementptr inbounds %struct.ecore_spq_entry, %struct.ecore_spq_entry* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store %struct.tx_queue_start_ramrod_data* %44, %struct.tx_queue_start_ramrod_data** %12, align 8
  %45 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %8, align 8
  %46 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.tx_queue_start_ramrod_data*, %struct.tx_queue_start_ramrod_data** %12, align 8
  %50 = getelementptr inbounds %struct.tx_queue_start_ramrod_data, %struct.tx_queue_start_ramrod_data* %49, i32 0, i32 8
  store i32 %48, i32* %50, align 8
  %51 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %8, align 8
  %52 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @OSAL_CPU_TO_LE16(i32 %53)
  %55 = load %struct.tx_queue_start_ramrod_data*, %struct.tx_queue_start_ramrod_data** %12, align 8
  %56 = getelementptr inbounds %struct.tx_queue_start_ramrod_data, %struct.tx_queue_start_ramrod_data* %55, i32 0, i32 7
  store i8* %54, i8** %56, align 8
  %57 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %8, align 8
  %58 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.tx_queue_start_ramrod_data*, %struct.tx_queue_start_ramrod_data** %12, align 8
  %61 = getelementptr inbounds %struct.tx_queue_start_ramrod_data, %struct.tx_queue_start_ramrod_data* %60, i32 0, i32 6
  store i32 %59, i32* %61, align 4
  %62 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %8, align 8
  %63 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.tx_queue_start_ramrod_data*, %struct.tx_queue_start_ramrod_data** %12, align 8
  %67 = getelementptr inbounds %struct.tx_queue_start_ramrod_data, %struct.tx_queue_start_ramrod_data* %66, i32 0, i32 5
  store i32 %65, i32* %67, align 8
  %68 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %8, align 8
  %69 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i8* @OSAL_CPU_TO_LE16(i32 %71)
  %73 = load %struct.tx_queue_start_ramrod_data*, %struct.tx_queue_start_ramrod_data** %12, align 8
  %74 = getelementptr inbounds %struct.tx_queue_start_ramrod_data, %struct.tx_queue_start_ramrod_data* %73, i32 0, i32 4
  store i8* %72, i8** %74, align 8
  %75 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %8, align 8
  %76 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i8* @OSAL_CPU_TO_LE16(i32 %78)
  %80 = load %struct.tx_queue_start_ramrod_data*, %struct.tx_queue_start_ramrod_data** %12, align 8
  %81 = getelementptr inbounds %struct.tx_queue_start_ramrod_data, %struct.tx_queue_start_ramrod_data* %80, i32 0, i32 3
  store i8* %79, i8** %81, align 8
  %82 = load i32, i32* %10, align 4
  %83 = call i8* @OSAL_CPU_TO_LE16(i32 %82)
  %84 = load %struct.tx_queue_start_ramrod_data*, %struct.tx_queue_start_ramrod_data** %12, align 8
  %85 = getelementptr inbounds %struct.tx_queue_start_ramrod_data, %struct.tx_queue_start_ramrod_data* %84, i32 0, i32 2
  store i8* %83, i8** %85, align 8
  %86 = load %struct.tx_queue_start_ramrod_data*, %struct.tx_queue_start_ramrod_data** %12, align 8
  %87 = getelementptr inbounds %struct.tx_queue_start_ramrod_data, %struct.tx_queue_start_ramrod_data* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @DMA_REGPAIR_LE(i32 %88, i32 %89)
  %91 = load i32, i32* %11, align 4
  %92 = call i8* @OSAL_CPU_TO_LE16(i32 %91)
  %93 = load %struct.tx_queue_start_ramrod_data*, %struct.tx_queue_start_ramrod_data** %12, align 8
  %94 = getelementptr inbounds %struct.tx_queue_start_ramrod_data, %struct.tx_queue_start_ramrod_data* %93, i32 0, i32 0
  store i8* %92, i8** %94, align 8
  %95 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %96 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %13, align 8
  %97 = load i8*, i8** @OSAL_NULL, align 8
  %98 = call i32 @ecore_spq_post(%struct.ecore_hwfn* %95, %struct.ecore_spq_entry* %96, i8* %97)
  store i32 %98, i32* %6, align 4
  br label %99

99:                                               ; preds = %41, %39
  %100 = load i32, i32* %6, align 4
  ret i32 %100
}

declare dso_local i32 @OSAL_MEMSET(%struct.ecore_sp_init_data*, i32, i32) #1

declare dso_local i32 @ecore_sp_init_request(%struct.ecore_hwfn*, %struct.ecore_spq_entry**, i32, i32, %struct.ecore_sp_init_data*) #1

declare dso_local i8* @OSAL_CPU_TO_LE16(i32) #1

declare dso_local i32 @DMA_REGPAIR_LE(i32, i32) #1

declare dso_local i32 @ecore_spq_post(%struct.ecore_hwfn*, %struct.ecore_spq_entry*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
