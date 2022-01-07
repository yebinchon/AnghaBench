; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_map_sb_state_machines.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_map_sb_state_machines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hc_index_data = type { i32 }

@HC_INDEX_DATA_SM_ID = common dso_local global i32 0, align 4
@HC_INDEX_ETH_RX_CQ_CONS = common dso_local global i64 0, align 8
@HC_INDEX_OOO_TX_CQ_CONS = common dso_local global i64 0, align 8
@HC_INDEX_ETH_TX_CQ_CONS_COS0 = common dso_local global i64 0, align 8
@HC_INDEX_ETH_TX_CQ_CONS_COS1 = common dso_local global i64 0, align 8
@HC_INDEX_ETH_TX_CQ_CONS_COS2 = common dso_local global i64 0, align 8
@SM_RX_ID = common dso_local global i32 0, align 4
@HC_INDEX_DATA_SM_ID_SHIFT = common dso_local global i32 0, align 4
@SM_TX_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hc_index_data*)* @bxe_map_sb_state_machines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_map_sb_state_machines(%struct.hc_index_data* %0) #0 {
  %2 = alloca %struct.hc_index_data*, align 8
  store %struct.hc_index_data* %0, %struct.hc_index_data** %2, align 8
  %3 = load i32, i32* @HC_INDEX_DATA_SM_ID, align 4
  %4 = xor i32 %3, -1
  %5 = load %struct.hc_index_data*, %struct.hc_index_data** %2, align 8
  %6 = load i64, i64* @HC_INDEX_ETH_RX_CQ_CONS, align 8
  %7 = getelementptr inbounds %struct.hc_index_data, %struct.hc_index_data* %5, i64 %6
  %8 = getelementptr inbounds %struct.hc_index_data, %struct.hc_index_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = and i32 %9, %4
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* @HC_INDEX_DATA_SM_ID, align 4
  %12 = xor i32 %11, -1
  %13 = load %struct.hc_index_data*, %struct.hc_index_data** %2, align 8
  %14 = load i64, i64* @HC_INDEX_OOO_TX_CQ_CONS, align 8
  %15 = getelementptr inbounds %struct.hc_index_data, %struct.hc_index_data* %13, i64 %14
  %16 = getelementptr inbounds %struct.hc_index_data, %struct.hc_index_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, %12
  store i32 %18, i32* %16, align 4
  %19 = load i32, i32* @HC_INDEX_DATA_SM_ID, align 4
  %20 = xor i32 %19, -1
  %21 = load %struct.hc_index_data*, %struct.hc_index_data** %2, align 8
  %22 = load i64, i64* @HC_INDEX_ETH_TX_CQ_CONS_COS0, align 8
  %23 = getelementptr inbounds %struct.hc_index_data, %struct.hc_index_data* %21, i64 %22
  %24 = getelementptr inbounds %struct.hc_index_data, %struct.hc_index_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, %20
  store i32 %26, i32* %24, align 4
  %27 = load i32, i32* @HC_INDEX_DATA_SM_ID, align 4
  %28 = xor i32 %27, -1
  %29 = load %struct.hc_index_data*, %struct.hc_index_data** %2, align 8
  %30 = load i64, i64* @HC_INDEX_ETH_TX_CQ_CONS_COS1, align 8
  %31 = getelementptr inbounds %struct.hc_index_data, %struct.hc_index_data* %29, i64 %30
  %32 = getelementptr inbounds %struct.hc_index_data, %struct.hc_index_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, %28
  store i32 %34, i32* %32, align 4
  %35 = load i32, i32* @HC_INDEX_DATA_SM_ID, align 4
  %36 = xor i32 %35, -1
  %37 = load %struct.hc_index_data*, %struct.hc_index_data** %2, align 8
  %38 = load i64, i64* @HC_INDEX_ETH_TX_CQ_CONS_COS2, align 8
  %39 = getelementptr inbounds %struct.hc_index_data, %struct.hc_index_data* %37, i64 %38
  %40 = getelementptr inbounds %struct.hc_index_data, %struct.hc_index_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, %36
  store i32 %42, i32* %40, align 4
  %43 = load i32, i32* @SM_RX_ID, align 4
  %44 = load i32, i32* @HC_INDEX_DATA_SM_ID_SHIFT, align 4
  %45 = shl i32 %43, %44
  %46 = load %struct.hc_index_data*, %struct.hc_index_data** %2, align 8
  %47 = load i64, i64* @HC_INDEX_ETH_RX_CQ_CONS, align 8
  %48 = getelementptr inbounds %struct.hc_index_data, %struct.hc_index_data* %46, i64 %47
  %49 = getelementptr inbounds %struct.hc_index_data, %struct.hc_index_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %45
  store i32 %51, i32* %49, align 4
  %52 = load i32, i32* @SM_TX_ID, align 4
  %53 = load i32, i32* @HC_INDEX_DATA_SM_ID_SHIFT, align 4
  %54 = shl i32 %52, %53
  %55 = load %struct.hc_index_data*, %struct.hc_index_data** %2, align 8
  %56 = load i64, i64* @HC_INDEX_OOO_TX_CQ_CONS, align 8
  %57 = getelementptr inbounds %struct.hc_index_data, %struct.hc_index_data* %55, i64 %56
  %58 = getelementptr inbounds %struct.hc_index_data, %struct.hc_index_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %54
  store i32 %60, i32* %58, align 4
  %61 = load i32, i32* @SM_TX_ID, align 4
  %62 = load i32, i32* @HC_INDEX_DATA_SM_ID_SHIFT, align 4
  %63 = shl i32 %61, %62
  %64 = load %struct.hc_index_data*, %struct.hc_index_data** %2, align 8
  %65 = load i64, i64* @HC_INDEX_ETH_TX_CQ_CONS_COS0, align 8
  %66 = getelementptr inbounds %struct.hc_index_data, %struct.hc_index_data* %64, i64 %65
  %67 = getelementptr inbounds %struct.hc_index_data, %struct.hc_index_data* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %63
  store i32 %69, i32* %67, align 4
  %70 = load i32, i32* @SM_TX_ID, align 4
  %71 = load i32, i32* @HC_INDEX_DATA_SM_ID_SHIFT, align 4
  %72 = shl i32 %70, %71
  %73 = load %struct.hc_index_data*, %struct.hc_index_data** %2, align 8
  %74 = load i64, i64* @HC_INDEX_ETH_TX_CQ_CONS_COS1, align 8
  %75 = getelementptr inbounds %struct.hc_index_data, %struct.hc_index_data* %73, i64 %74
  %76 = getelementptr inbounds %struct.hc_index_data, %struct.hc_index_data* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %72
  store i32 %78, i32* %76, align 4
  %79 = load i32, i32* @SM_TX_ID, align 4
  %80 = load i32, i32* @HC_INDEX_DATA_SM_ID_SHIFT, align 4
  %81 = shl i32 %79, %80
  %82 = load %struct.hc_index_data*, %struct.hc_index_data** %2, align 8
  %83 = load i64, i64* @HC_INDEX_ETH_TX_CQ_CONS_COS2, align 8
  %84 = getelementptr inbounds %struct.hc_index_data, %struct.hc_index_data* %82, i64 %83
  %85 = getelementptr inbounds %struct.hc_index_data, %struct.hc_index_data* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %81
  store i32 %87, i32* %85, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
