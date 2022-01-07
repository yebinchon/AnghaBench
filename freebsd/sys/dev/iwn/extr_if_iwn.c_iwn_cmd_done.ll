; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwn/extr_if_iwn.c_iwn_cmd_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwn/extr_if_iwn.c_iwn_cmd_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwn_softc = type { i32, %struct.iwn_tx_ring* }
%struct.iwn_tx_ring = type { i32*, i32, %struct.iwn_tx_data* }
%struct.iwn_tx_data = type { i32*, i32 }
%struct.iwn_rx_desc = type { i32, i64 }

@IWN_FLAG_PAN_SUPPORT = common dso_local global i32 0, align 4
@IWN_PAN_CMD_QUEUE = common dso_local global i32 0, align 4
@IWN_CMD_QUEUE_NUM = common dso_local global i32 0, align 4
@IWN_RX_DESC_QID_MSK = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwn_softc*, %struct.iwn_rx_desc*)* @iwn_cmd_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwn_cmd_done(%struct.iwn_softc* %0, %struct.iwn_rx_desc* %1) #0 {
  %3 = alloca %struct.iwn_softc*, align 8
  %4 = alloca %struct.iwn_rx_desc*, align 8
  %5 = alloca %struct.iwn_tx_ring*, align 8
  %6 = alloca %struct.iwn_tx_data*, align 8
  %7 = alloca i32, align 4
  store %struct.iwn_softc* %0, %struct.iwn_softc** %3, align 8
  store %struct.iwn_rx_desc* %1, %struct.iwn_rx_desc** %4, align 8
  %8 = load %struct.iwn_softc*, %struct.iwn_softc** %3, align 8
  %9 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @IWN_FLAG_PAN_SUPPORT, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @IWN_PAN_CMD_QUEUE, align 4
  store i32 %15, i32* %7, align 4
  br label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @IWN_CMD_QUEUE_NUM, align 4
  store i32 %17, i32* %7, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = load %struct.iwn_rx_desc*, %struct.iwn_rx_desc** %4, align 8
  %20 = getelementptr inbounds %struct.iwn_rx_desc, %struct.iwn_rx_desc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @IWN_RX_DESC_QID_MSK, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %76

27:                                               ; preds = %18
  %28 = load %struct.iwn_softc*, %struct.iwn_softc** %3, align 8
  %29 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %28, i32 0, i32 1
  %30 = load %struct.iwn_tx_ring*, %struct.iwn_tx_ring** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.iwn_tx_ring, %struct.iwn_tx_ring* %30, i64 %32
  store %struct.iwn_tx_ring* %33, %struct.iwn_tx_ring** %5, align 8
  %34 = load %struct.iwn_tx_ring*, %struct.iwn_tx_ring** %5, align 8
  %35 = getelementptr inbounds %struct.iwn_tx_ring, %struct.iwn_tx_ring* %34, i32 0, i32 2
  %36 = load %struct.iwn_tx_data*, %struct.iwn_tx_data** %35, align 8
  %37 = load %struct.iwn_rx_desc*, %struct.iwn_rx_desc** %4, align 8
  %38 = getelementptr inbounds %struct.iwn_rx_desc, %struct.iwn_rx_desc* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.iwn_tx_data, %struct.iwn_tx_data* %36, i64 %39
  store %struct.iwn_tx_data* %40, %struct.iwn_tx_data** %6, align 8
  %41 = load %struct.iwn_tx_data*, %struct.iwn_tx_data** %6, align 8
  %42 = getelementptr inbounds %struct.iwn_tx_data, %struct.iwn_tx_data* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %67

45:                                               ; preds = %27
  %46 = load %struct.iwn_tx_ring*, %struct.iwn_tx_ring** %5, align 8
  %47 = getelementptr inbounds %struct.iwn_tx_ring, %struct.iwn_tx_ring* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.iwn_tx_data*, %struct.iwn_tx_data** %6, align 8
  %50 = getelementptr inbounds %struct.iwn_tx_data, %struct.iwn_tx_data* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %53 = call i32 @bus_dmamap_sync(i32 %48, i32 %51, i32 %52)
  %54 = load %struct.iwn_tx_ring*, %struct.iwn_tx_ring** %5, align 8
  %55 = getelementptr inbounds %struct.iwn_tx_ring, %struct.iwn_tx_ring* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.iwn_tx_data*, %struct.iwn_tx_data** %6, align 8
  %58 = getelementptr inbounds %struct.iwn_tx_data, %struct.iwn_tx_data* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @bus_dmamap_unload(i32 %56, i32 %59)
  %61 = load %struct.iwn_tx_data*, %struct.iwn_tx_data** %6, align 8
  %62 = getelementptr inbounds %struct.iwn_tx_data, %struct.iwn_tx_data* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @m_freem(i32* %63)
  %65 = load %struct.iwn_tx_data*, %struct.iwn_tx_data** %6, align 8
  %66 = getelementptr inbounds %struct.iwn_tx_data, %struct.iwn_tx_data* %65, i32 0, i32 0
  store i32* null, i32** %66, align 8
  br label %67

67:                                               ; preds = %45, %27
  %68 = load %struct.iwn_tx_ring*, %struct.iwn_tx_ring** %5, align 8
  %69 = getelementptr inbounds %struct.iwn_tx_ring, %struct.iwn_tx_ring* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.iwn_rx_desc*, %struct.iwn_rx_desc** %4, align 8
  %72 = getelementptr inbounds %struct.iwn_rx_desc, %struct.iwn_rx_desc* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  %75 = call i32 @wakeup(i32* %74)
  br label %76

76:                                               ; preds = %67, %26
  ret void
}

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @wakeup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
