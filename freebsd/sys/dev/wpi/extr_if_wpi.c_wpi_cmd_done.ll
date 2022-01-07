; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/wpi/extr_if_wpi.c_wpi_cmd_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/wpi/extr_if_wpi.c_wpi_cmd_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpi_softc = type { i32, i32, %struct.wpi_tx_ring* }
%struct.wpi_tx_ring = type { i64, %struct.TYPE_2__, i32, %struct.wpi_tx_cmd*, %struct.wpi_tx_data* }
%struct.TYPE_2__ = type { i32 }
%struct.wpi_tx_cmd = type { i64 }
%struct.wpi_tx_data = type { i32*, i32 }
%struct.wpi_rx_desc = type { i64, i64, i64, i32, i32 }
%struct.wpi_pmgt_cmd = type { i32 }

@WPI_CMD_QUEUE_NUM = common dso_local global i64 0, align 8
@WPI_DEBUG_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"cmd notification qid %x idx %d flags %x type %s len %d\0A\00", align 1
@WPI_RX_DESC_QID_MSK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"ring->queued must be 0\00", align 1
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@WPI_CMD_SET_POWER_MODE = common dso_local global i64 0, align 8
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@WPI_PS_ALLOW_SLEEP = common dso_local global i32 0, align 4
@wpi_update_rx_ring_ps = common dso_local global i32 0, align 4
@wpi_update_tx_ring_ps = common dso_local global i32 0, align 4
@wpi_update_rx_ring = common dso_local global i32 0, align 4
@wpi_update_tx_ring = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpi_softc*, %struct.wpi_rx_desc*)* @wpi_cmd_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpi_cmd_done(%struct.wpi_softc* %0, %struct.wpi_rx_desc* %1) #0 {
  %3 = alloca %struct.wpi_softc*, align 8
  %4 = alloca %struct.wpi_rx_desc*, align 8
  %5 = alloca %struct.wpi_tx_ring*, align 8
  %6 = alloca %struct.wpi_tx_data*, align 8
  %7 = alloca %struct.wpi_tx_cmd*, align 8
  %8 = alloca %struct.wpi_pmgt_cmd*, align 8
  store %struct.wpi_softc* %0, %struct.wpi_softc** %3, align 8
  store %struct.wpi_rx_desc* %1, %struct.wpi_rx_desc** %4, align 8
  %9 = load %struct.wpi_softc*, %struct.wpi_softc** %3, align 8
  %10 = getelementptr inbounds %struct.wpi_softc, %struct.wpi_softc* %9, i32 0, i32 2
  %11 = load %struct.wpi_tx_ring*, %struct.wpi_tx_ring** %10, align 8
  %12 = load i64, i64* @WPI_CMD_QUEUE_NUM, align 8
  %13 = getelementptr inbounds %struct.wpi_tx_ring, %struct.wpi_tx_ring* %11, i64 %12
  store %struct.wpi_tx_ring* %13, %struct.wpi_tx_ring** %5, align 8
  %14 = load %struct.wpi_softc*, %struct.wpi_softc** %3, align 8
  %15 = load i32, i32* @WPI_DEBUG_CMD, align 4
  %16 = load %struct.wpi_rx_desc*, %struct.wpi_rx_desc** %4, align 8
  %17 = getelementptr inbounds %struct.wpi_rx_desc, %struct.wpi_rx_desc* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.wpi_rx_desc*, %struct.wpi_rx_desc** %4, align 8
  %20 = getelementptr inbounds %struct.wpi_rx_desc, %struct.wpi_rx_desc* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.wpi_rx_desc*, %struct.wpi_rx_desc** %4, align 8
  %23 = getelementptr inbounds %struct.wpi_rx_desc, %struct.wpi_rx_desc* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.wpi_rx_desc*, %struct.wpi_rx_desc** %4, align 8
  %26 = getelementptr inbounds %struct.wpi_rx_desc, %struct.wpi_rx_desc* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @wpi_cmd_str(i64 %27)
  %29 = load %struct.wpi_rx_desc*, %struct.wpi_rx_desc** %4, align 8
  %30 = getelementptr inbounds %struct.wpi_rx_desc, %struct.wpi_rx_desc* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @le32toh(i32 %31)
  %33 = call i32 @DPRINTF(%struct.wpi_softc* %14, i32 %15, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i64 %18, i64 %21, i32 %24, i32 %28, i32 %32)
  %34 = load %struct.wpi_rx_desc*, %struct.wpi_rx_desc** %4, align 8
  %35 = getelementptr inbounds %struct.wpi_rx_desc, %struct.wpi_rx_desc* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @WPI_RX_DESC_QID_MSK, align 8
  %38 = and i64 %36, %37
  %39 = load i64, i64* @WPI_CMD_QUEUE_NUM, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %2
  br label %137

42:                                               ; preds = %2
  %43 = load %struct.wpi_tx_ring*, %struct.wpi_tx_ring** %5, align 8
  %44 = getelementptr inbounds %struct.wpi_tx_ring, %struct.wpi_tx_ring* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  %47 = zext i1 %46 to i32
  %48 = call i32 @KASSERT(i32 %47, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %49 = load %struct.wpi_tx_ring*, %struct.wpi_tx_ring** %5, align 8
  %50 = getelementptr inbounds %struct.wpi_tx_ring, %struct.wpi_tx_ring* %49, i32 0, i32 4
  %51 = load %struct.wpi_tx_data*, %struct.wpi_tx_data** %50, align 8
  %52 = load %struct.wpi_rx_desc*, %struct.wpi_rx_desc** %4, align 8
  %53 = getelementptr inbounds %struct.wpi_rx_desc, %struct.wpi_rx_desc* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.wpi_tx_data, %struct.wpi_tx_data* %51, i64 %54
  store %struct.wpi_tx_data* %55, %struct.wpi_tx_data** %6, align 8
  %56 = load %struct.wpi_tx_ring*, %struct.wpi_tx_ring** %5, align 8
  %57 = getelementptr inbounds %struct.wpi_tx_ring, %struct.wpi_tx_ring* %56, i32 0, i32 3
  %58 = load %struct.wpi_tx_cmd*, %struct.wpi_tx_cmd** %57, align 8
  %59 = load %struct.wpi_rx_desc*, %struct.wpi_rx_desc** %4, align 8
  %60 = getelementptr inbounds %struct.wpi_rx_desc, %struct.wpi_rx_desc* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.wpi_tx_cmd, %struct.wpi_tx_cmd* %58, i64 %61
  store %struct.wpi_tx_cmd* %62, %struct.wpi_tx_cmd** %7, align 8
  %63 = load %struct.wpi_tx_data*, %struct.wpi_tx_data** %6, align 8
  %64 = getelementptr inbounds %struct.wpi_tx_data, %struct.wpi_tx_data* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %89

67:                                               ; preds = %42
  %68 = load %struct.wpi_tx_ring*, %struct.wpi_tx_ring** %5, align 8
  %69 = getelementptr inbounds %struct.wpi_tx_ring, %struct.wpi_tx_ring* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.wpi_tx_data*, %struct.wpi_tx_data** %6, align 8
  %72 = getelementptr inbounds %struct.wpi_tx_data, %struct.wpi_tx_data* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %75 = call i32 @bus_dmamap_sync(i32 %70, i32 %73, i32 %74)
  %76 = load %struct.wpi_tx_ring*, %struct.wpi_tx_ring** %5, align 8
  %77 = getelementptr inbounds %struct.wpi_tx_ring, %struct.wpi_tx_ring* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.wpi_tx_data*, %struct.wpi_tx_data** %6, align 8
  %80 = getelementptr inbounds %struct.wpi_tx_data, %struct.wpi_tx_data* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @bus_dmamap_unload(i32 %78, i32 %81)
  %83 = load %struct.wpi_tx_data*, %struct.wpi_tx_data** %6, align 8
  %84 = getelementptr inbounds %struct.wpi_tx_data, %struct.wpi_tx_data* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @m_freem(i32* %85)
  %87 = load %struct.wpi_tx_data*, %struct.wpi_tx_data** %6, align 8
  %88 = getelementptr inbounds %struct.wpi_tx_data, %struct.wpi_tx_data* %87, i32 0, i32 0
  store i32* null, i32** %88, align 8
  br label %89

89:                                               ; preds = %67, %42
  %90 = load %struct.wpi_tx_cmd*, %struct.wpi_tx_cmd** %7, align 8
  %91 = call i32 @wakeup(%struct.wpi_tx_cmd* %90)
  %92 = load %struct.wpi_rx_desc*, %struct.wpi_rx_desc** %4, align 8
  %93 = getelementptr inbounds %struct.wpi_rx_desc, %struct.wpi_rx_desc* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @WPI_CMD_SET_POWER_MODE, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %137

97:                                               ; preds = %89
  %98 = load %struct.wpi_tx_cmd*, %struct.wpi_tx_cmd** %7, align 8
  %99 = getelementptr inbounds %struct.wpi_tx_cmd, %struct.wpi_tx_cmd* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = inttoptr i64 %100 to %struct.wpi_pmgt_cmd*
  store %struct.wpi_pmgt_cmd* %101, %struct.wpi_pmgt_cmd** %8, align 8
  %102 = load %struct.wpi_tx_ring*, %struct.wpi_tx_ring** %5, align 8
  %103 = getelementptr inbounds %struct.wpi_tx_ring, %struct.wpi_tx_ring* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.wpi_tx_ring*, %struct.wpi_tx_ring** %5, align 8
  %106 = getelementptr inbounds %struct.wpi_tx_ring, %struct.wpi_tx_ring* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %110 = call i32 @bus_dmamap_sync(i32 %104, i32 %108, i32 %109)
  %111 = load %struct.wpi_softc*, %struct.wpi_softc** %3, align 8
  %112 = call i32 @WPI_TXQ_LOCK(%struct.wpi_softc* %111)
  %113 = load %struct.wpi_pmgt_cmd*, %struct.wpi_pmgt_cmd** %8, align 8
  %114 = getelementptr inbounds %struct.wpi_pmgt_cmd, %struct.wpi_pmgt_cmd* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @le16toh(i32 %115)
  %117 = load i32, i32* @WPI_PS_ALLOW_SLEEP, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %97
  %121 = load i32, i32* @wpi_update_rx_ring_ps, align 4
  %122 = load %struct.wpi_softc*, %struct.wpi_softc** %3, align 8
  %123 = getelementptr inbounds %struct.wpi_softc, %struct.wpi_softc* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 4
  %124 = load i32, i32* @wpi_update_tx_ring_ps, align 4
  %125 = load %struct.wpi_softc*, %struct.wpi_softc** %3, align 8
  %126 = getelementptr inbounds %struct.wpi_softc, %struct.wpi_softc* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 8
  br label %134

127:                                              ; preds = %97
  %128 = load i32, i32* @wpi_update_rx_ring, align 4
  %129 = load %struct.wpi_softc*, %struct.wpi_softc** %3, align 8
  %130 = getelementptr inbounds %struct.wpi_softc, %struct.wpi_softc* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  %131 = load i32, i32* @wpi_update_tx_ring, align 4
  %132 = load %struct.wpi_softc*, %struct.wpi_softc** %3, align 8
  %133 = getelementptr inbounds %struct.wpi_softc, %struct.wpi_softc* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 8
  br label %134

134:                                              ; preds = %127, %120
  %135 = load %struct.wpi_softc*, %struct.wpi_softc** %3, align 8
  %136 = call i32 @WPI_TXQ_UNLOCK(%struct.wpi_softc* %135)
  br label %137

137:                                              ; preds = %41, %134, %89
  ret void
}

declare dso_local i32 @DPRINTF(%struct.wpi_softc*, i32, i8*, i64, i64, i32, i32, i32) #1

declare dso_local i32 @wpi_cmd_str(i64) #1

declare dso_local i32 @le32toh(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @wakeup(%struct.wpi_tx_cmd*) #1

declare dso_local i32 @WPI_TXQ_LOCK(%struct.wpi_softc*) #1

declare dso_local i32 @le16toh(i32) #1

declare dso_local i32 @WPI_TXQ_UNLOCK(%struct.wpi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
