; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-desc.c_xgbe_map_tx_skb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-desc.c_xgbe_map_tx_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_channel = type { %struct.xgbe_ring* }
%struct.xgbe_ring = type { i32, i32, i32, %struct.xgbe_packet_data }
%struct.xgbe_packet_data = type { i32, i64 }
%struct.mbuf = type { i32 }
%struct.xgbe_map_tx_skb_data = type { i32, %struct.xgbe_packet_data*, %struct.xgbe_ring* }
%struct.xgbe_ring_data = type { i32, %struct.mbuf* }

@.str = private unnamed_addr constant [30 x i8] c"-->xgbe_map_tx_skb: cur = %d\0A\00", align 1
@xgbe_map_tx_skb_cb = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"<--xgbe_map_tx_skb: count=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgbe_channel*, %struct.mbuf*)* @xgbe_map_tx_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_map_tx_skb(%struct.xgbe_channel* %0, %struct.mbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xgbe_channel*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.xgbe_ring*, align 8
  %7 = alloca %struct.xgbe_map_tx_skb_data, align 8
  %8 = alloca %struct.xgbe_ring_data*, align 8
  %9 = alloca %struct.xgbe_packet_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.xgbe_channel* %0, %struct.xgbe_channel** %4, align 8
  store %struct.mbuf* %1, %struct.mbuf** %5, align 8
  %13 = load %struct.xgbe_channel*, %struct.xgbe_channel** %4, align 8
  %14 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %13, i32 0, i32 0
  %15 = load %struct.xgbe_ring*, %struct.xgbe_ring** %14, align 8
  store %struct.xgbe_ring* %15, %struct.xgbe_ring** %6, align 8
  %16 = load %struct.xgbe_ring*, %struct.xgbe_ring** %6, align 8
  %17 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @DBGPR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.xgbe_ring*, %struct.xgbe_ring** %6, align 8
  %21 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %10, align 4
  %23 = load %struct.xgbe_ring*, %struct.xgbe_ring** %6, align 8
  %24 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %11, align 4
  %26 = load %struct.xgbe_ring*, %struct.xgbe_ring** %6, align 8
  %27 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %26, i32 0, i32 3
  store %struct.xgbe_packet_data* %27, %struct.xgbe_packet_data** %9, align 8
  %28 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %9, align 8
  %29 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %28, i32 0, i32 0
  store i32 0, i32* %29, align 8
  %30 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %9, align 8
  %31 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load %struct.xgbe_ring*, %struct.xgbe_ring** %6, align 8
  %33 = getelementptr inbounds %struct.xgbe_map_tx_skb_data, %struct.xgbe_map_tx_skb_data* %7, i32 0, i32 2
  store %struct.xgbe_ring* %32, %struct.xgbe_ring** %33, align 8
  %34 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %9, align 8
  %35 = getelementptr inbounds %struct.xgbe_map_tx_skb_data, %struct.xgbe_map_tx_skb_data* %7, i32 0, i32 1
  store %struct.xgbe_packet_data* %34, %struct.xgbe_packet_data** %35, align 8
  %36 = load i32, i32* %11, align 4
  %37 = getelementptr inbounds %struct.xgbe_map_tx_skb_data, %struct.xgbe_map_tx_skb_data* %7, i32 0, i32 0
  store i32 %36, i32* %37, align 8
  %38 = load %struct.xgbe_ring*, %struct.xgbe_ring** %6, align 8
  %39 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.xgbe_ring*, %struct.xgbe_ring** %6, align 8
  %42 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %45 = load i32, i32* @xgbe_map_tx_skb_cb, align 4
  %46 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %47 = call i32 @bus_dmamap_load_mbuf(i32 %40, i32 %43, %struct.mbuf* %44, i32 %45, %struct.xgbe_map_tx_skb_data* %7, i32 %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %2
  %51 = load i32, i32* %12, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %77

53:                                               ; preds = %2
  %54 = getelementptr inbounds %struct.xgbe_map_tx_skb_data, %struct.xgbe_map_tx_skb_data* %7, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %11, align 4
  %56 = load %struct.xgbe_ring*, %struct.xgbe_ring** %6, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sub i32 %57, 1
  %59 = call %struct.xgbe_ring_data* @XGBE_GET_DESC_DATA(%struct.xgbe_ring* %56, i32 %58)
  store %struct.xgbe_ring_data* %59, %struct.xgbe_ring_data** %8, align 8
  %60 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %61 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %8, align 8
  %62 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %61, i32 0, i32 1
  store %struct.mbuf* %60, %struct.mbuf** %62, align 8
  %63 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %8, align 8
  %64 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %63, i32 0, i32 0
  store i32 1, i32* %64, align 8
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %10, align 4
  %67 = sub i32 %65, %66
  %68 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %9, align 8
  %69 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %9, align 8
  %71 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @DBGPR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  %74 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %9, align 8
  %75 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %53, %50
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @DBGPR(i8*, i32) #1

declare dso_local i32 @bus_dmamap_load_mbuf(i32, i32, %struct.mbuf*, i32, %struct.xgbe_map_tx_skb_data*, i32) #1

declare dso_local %struct.xgbe_ring_data* @XGBE_GET_DESC_DATA(%struct.xgbe_ring*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
