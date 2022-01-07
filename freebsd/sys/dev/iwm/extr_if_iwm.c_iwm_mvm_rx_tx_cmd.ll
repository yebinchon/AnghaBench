; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_mvm_rx_tx_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_mvm_rx_tx_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_softc = type { i32, i64, %struct.iwm_tx_ring* }
%struct.iwm_tx_ring = type { i64, i32, %struct.iwm_tx_data* }
%struct.iwm_tx_data = type { i32, %struct.iwm_node*, %struct.mbuf*, i32 }
%struct.iwm_node = type { i32 }
%struct.mbuf = type { i32 }
%struct.iwm_rx_packet = type { %struct.iwm_cmd_header }
%struct.iwm_cmd_header = type { i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"txd not done\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"txd without node\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"txd without mbuf\00", align 1
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@IWM_DEBUG_XMIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"free txd %p, in %p\0A\00", align 1
@IWM_TX_RING_LOMARK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwm_softc*, %struct.iwm_rx_packet*)* @iwm_mvm_rx_tx_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwm_mvm_rx_tx_cmd(%struct.iwm_softc* %0, %struct.iwm_rx_packet* %1) #0 {
  %3 = alloca %struct.iwm_softc*, align 8
  %4 = alloca %struct.iwm_rx_packet*, align 8
  %5 = alloca %struct.iwm_cmd_header*, align 8
  %6 = alloca %struct.iwm_tx_ring*, align 8
  %7 = alloca %struct.iwm_tx_data*, align 8
  %8 = alloca %struct.iwm_node*, align 8
  %9 = alloca %struct.mbuf*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.iwm_softc* %0, %struct.iwm_softc** %3, align 8
  store %struct.iwm_rx_packet* %1, %struct.iwm_rx_packet** %4, align 8
  %14 = load %struct.iwm_rx_packet*, %struct.iwm_rx_packet** %4, align 8
  %15 = getelementptr inbounds %struct.iwm_rx_packet, %struct.iwm_rx_packet* %14, i32 0, i32 0
  store %struct.iwm_cmd_header* %15, %struct.iwm_cmd_header** %5, align 8
  %16 = load %struct.iwm_cmd_header*, %struct.iwm_cmd_header** %5, align 8
  %17 = getelementptr inbounds %struct.iwm_cmd_header, %struct.iwm_cmd_header* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  %19 = load %struct.iwm_cmd_header*, %struct.iwm_cmd_header** %5, align 8
  %20 = getelementptr inbounds %struct.iwm_cmd_header, %struct.iwm_cmd_header* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %11, align 4
  %22 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %23 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %22, i32 0, i32 2
  %24 = load %struct.iwm_tx_ring*, %struct.iwm_tx_ring** %23, align 8
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.iwm_tx_ring, %struct.iwm_tx_ring* %24, i64 %26
  store %struct.iwm_tx_ring* %27, %struct.iwm_tx_ring** %6, align 8
  %28 = load %struct.iwm_tx_ring*, %struct.iwm_tx_ring** %6, align 8
  %29 = getelementptr inbounds %struct.iwm_tx_ring, %struct.iwm_tx_ring* %28, i32 0, i32 2
  %30 = load %struct.iwm_tx_data*, %struct.iwm_tx_data** %29, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.iwm_tx_data, %struct.iwm_tx_data* %30, i64 %32
  store %struct.iwm_tx_data* %33, %struct.iwm_tx_data** %7, align 8
  %34 = load %struct.iwm_tx_data*, %struct.iwm_tx_data** %7, align 8
  %35 = getelementptr inbounds %struct.iwm_tx_data, %struct.iwm_tx_data* %34, i32 0, i32 1
  %36 = load %struct.iwm_node*, %struct.iwm_node** %35, align 8
  store %struct.iwm_node* %36, %struct.iwm_node** %8, align 8
  %37 = load %struct.iwm_tx_data*, %struct.iwm_tx_data** %7, align 8
  %38 = getelementptr inbounds %struct.iwm_tx_data, %struct.iwm_tx_data* %37, i32 0, i32 2
  %39 = load %struct.mbuf*, %struct.mbuf** %38, align 8
  store %struct.mbuf* %39, %struct.mbuf** %9, align 8
  %40 = load %struct.iwm_tx_data*, %struct.iwm_tx_data** %7, align 8
  %41 = getelementptr inbounds %struct.iwm_tx_data, %struct.iwm_tx_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i32 @KASSERT(i32 %44, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %46 = load %struct.iwm_tx_data*, %struct.iwm_tx_data** %7, align 8
  %47 = getelementptr inbounds %struct.iwm_tx_data, %struct.iwm_tx_data* %46, i32 0, i32 1
  %48 = load %struct.iwm_node*, %struct.iwm_node** %47, align 8
  %49 = icmp ne %struct.iwm_node* %48, null
  %50 = zext i1 %49 to i32
  %51 = call i32 @KASSERT(i32 %50, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %52 = load %struct.iwm_tx_data*, %struct.iwm_tx_data** %7, align 8
  %53 = getelementptr inbounds %struct.iwm_tx_data, %struct.iwm_tx_data* %52, i32 0, i32 2
  %54 = load %struct.mbuf*, %struct.mbuf** %53, align 8
  %55 = icmp ne %struct.mbuf* %54, null
  %56 = zext i1 %55 to i32
  %57 = call i32 @KASSERT(i32 %56, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %58 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %59 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %58, i32 0, i32 1
  store i64 0, i64* %59, align 8
  %60 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %61 = load %struct.iwm_rx_packet*, %struct.iwm_rx_packet** %4, align 8
  %62 = load %struct.iwm_node*, %struct.iwm_node** %8, align 8
  %63 = call i32 @iwm_mvm_rx_tx_cmd_single(%struct.iwm_softc* %60, %struct.iwm_rx_packet* %61, %struct.iwm_node* %62)
  store i32 %63, i32* %13, align 4
  %64 = load %struct.iwm_tx_ring*, %struct.iwm_tx_ring** %6, align 8
  %65 = getelementptr inbounds %struct.iwm_tx_ring, %struct.iwm_tx_ring* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.iwm_tx_data*, %struct.iwm_tx_data** %7, align 8
  %68 = getelementptr inbounds %struct.iwm_tx_data, %struct.iwm_tx_data* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %71 = call i32 @bus_dmamap_sync(i32 %66, i32 %69, i32 %70)
  %72 = load %struct.iwm_tx_ring*, %struct.iwm_tx_ring** %6, align 8
  %73 = getelementptr inbounds %struct.iwm_tx_ring, %struct.iwm_tx_ring* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.iwm_tx_data*, %struct.iwm_tx_data** %7, align 8
  %76 = getelementptr inbounds %struct.iwm_tx_data, %struct.iwm_tx_data* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @bus_dmamap_unload(i32 %74, i32 %77)
  %79 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %80 = load i32, i32* @IWM_DEBUG_XMIT, align 4
  %81 = load %struct.iwm_tx_data*, %struct.iwm_tx_data** %7, align 8
  %82 = load %struct.iwm_tx_data*, %struct.iwm_tx_data** %7, align 8
  %83 = getelementptr inbounds %struct.iwm_tx_data, %struct.iwm_tx_data* %82, i32 0, i32 1
  %84 = load %struct.iwm_node*, %struct.iwm_node** %83, align 8
  %85 = call i32 @IWM_DPRINTF(%struct.iwm_softc* %79, i32 %80, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), %struct.iwm_tx_data* %81, %struct.iwm_node* %84)
  %86 = load %struct.iwm_tx_data*, %struct.iwm_tx_data** %7, align 8
  %87 = getelementptr inbounds %struct.iwm_tx_data, %struct.iwm_tx_data* %86, i32 0, i32 0
  store i32 1, i32* %87, align 8
  %88 = load %struct.iwm_tx_data*, %struct.iwm_tx_data** %7, align 8
  %89 = getelementptr inbounds %struct.iwm_tx_data, %struct.iwm_tx_data* %88, i32 0, i32 2
  store %struct.mbuf* null, %struct.mbuf** %89, align 8
  %90 = load %struct.iwm_tx_data*, %struct.iwm_tx_data** %7, align 8
  %91 = getelementptr inbounds %struct.iwm_tx_data, %struct.iwm_tx_data* %90, i32 0, i32 1
  store %struct.iwm_node* null, %struct.iwm_node** %91, align 8
  %92 = load %struct.iwm_node*, %struct.iwm_node** %8, align 8
  %93 = getelementptr inbounds %struct.iwm_node, %struct.iwm_node* %92, i32 0, i32 0
  %94 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %95 = load i32, i32* %13, align 4
  %96 = call i32 @ieee80211_tx_complete(i32* %93, %struct.mbuf* %94, i32 %95)
  %97 = load i32, i32* %11, align 4
  %98 = shl i32 1, %97
  store i32 %98, i32* %12, align 4
  %99 = load %struct.iwm_tx_ring*, %struct.iwm_tx_ring** %6, align 8
  %100 = getelementptr inbounds %struct.iwm_tx_ring, %struct.iwm_tx_ring* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %101, -1
  store i64 %102, i64* %100, align 8
  %103 = load i64, i64* @IWM_TX_RING_LOMARK, align 8
  %104 = icmp slt i64 %102, %103
  br i1 %104, label %105, label %127

105:                                              ; preds = %2
  %106 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %107 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %12, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %127

112:                                              ; preds = %105
  %113 = load i32, i32* %12, align 4
  %114 = xor i32 %113, -1
  %115 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %116 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = and i32 %117, %114
  store i32 %118, i32* %116, align 8
  %119 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %120 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %112
  %124 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %125 = call i32 @iwm_start(%struct.iwm_softc* %124)
  br label %126

126:                                              ; preds = %123, %112
  br label %127

127:                                              ; preds = %126, %105, %2
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @iwm_mvm_rx_tx_cmd_single(%struct.iwm_softc*, %struct.iwm_rx_packet*, %struct.iwm_node*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @IWM_DPRINTF(%struct.iwm_softc*, i32, i8*, %struct.iwm_tx_data*, %struct.iwm_node*) #1

declare dso_local i32 @ieee80211_tx_complete(i32*, %struct.mbuf*, i32) #1

declare dso_local i32 @iwm_start(%struct.iwm_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
