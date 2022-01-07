; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/ps3/extr_if_glc.c_glc_init_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/ps3/extr_if_glc.c_glc_init_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.glc_softc = type { i32, i32, i64, %struct.TYPE_2__*, i32, i32, %struct.glc_rxsoft*, i32, i32, i64, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.glc_rxsoft = type { i32, i32, i32* }
%struct.glc_txsoft = type { i32*, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@GLC_MAX_RX_PACKETS = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@txs_q = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"lv1_net_start_rx_dma error: %d\0A\00", align 1
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@glc_tick = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.glc_softc*)* @glc_init_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @glc_init_locked(%struct.glc_softc* %0) #0 {
  %2 = alloca %struct.glc_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.glc_rxsoft*, align 8
  %6 = alloca %struct.glc_txsoft*, align 8
  store %struct.glc_softc* %0, %struct.glc_softc** %2, align 8
  %7 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %8 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %7, i32 0, i32 15
  %9 = load i32, i32* @MA_OWNED, align 4
  %10 = call i32 @mtx_assert(i32* %8, i32 %9)
  %11 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %12 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %11, i32 0, i32 8
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %15 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %14, i32 0, i32 7
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @lv1_net_stop_tx_dma(i32 %13, i32 %16, i32 0)
  %18 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %19 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %18, i32 0, i32 8
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %22 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %21, i32 0, i32 7
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @lv1_net_stop_rx_dma(i32 %20, i32 %23, i32 0)
  %25 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %26 = call i32 @glc_set_multicast(%struct.glc_softc* %25)
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %69, %1
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @GLC_MAX_RX_PACKETS, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %72

31:                                               ; preds = %27
  %32 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %33 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %32, i32 0, i32 6
  %34 = load %struct.glc_rxsoft*, %struct.glc_rxsoft** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.glc_rxsoft, %struct.glc_rxsoft* %34, i64 %36
  store %struct.glc_rxsoft* %37, %struct.glc_rxsoft** %5, align 8
  %38 = load i32, i32* %3, align 4
  %39 = load %struct.glc_rxsoft*, %struct.glc_rxsoft** %5, align 8
  %40 = getelementptr inbounds %struct.glc_rxsoft, %struct.glc_rxsoft* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.glc_rxsoft*, %struct.glc_rxsoft** %5, align 8
  %42 = getelementptr inbounds %struct.glc_rxsoft, %struct.glc_rxsoft* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %57

45:                                               ; preds = %31
  %46 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @glc_add_rxbuf(%struct.glc_softc* %46, i32 %47)
  %49 = load %struct.glc_rxsoft*, %struct.glc_rxsoft** %5, align 8
  %50 = getelementptr inbounds %struct.glc_rxsoft, %struct.glc_rxsoft* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = load %struct.glc_rxsoft*, %struct.glc_rxsoft** %5, align 8
  %55 = getelementptr inbounds %struct.glc_rxsoft, %struct.glc_rxsoft* %54, i32 0, i32 0
  store i32 -1, i32* %55, align 8
  br label %72

56:                                               ; preds = %45
  br label %57

57:                                               ; preds = %56, %31
  %58 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @glc_add_rxbuf_dma(%struct.glc_softc* %58, i32 %59)
  %61 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %62 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %61, i32 0, i32 14
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %65 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %64, i32 0, i32 13
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %68 = call i32 @bus_dmamap_sync(i32 %63, i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %57
  %70 = load i32, i32* %3, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %3, align 4
  br label %27

72:                                               ; preds = %53, %27
  br label %73

73:                                               ; preds = %101, %72
  %74 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %75 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %74, i32 0, i32 12
  %76 = call %struct.glc_txsoft* @STAILQ_FIRST(i32* %75)
  store %struct.glc_txsoft* %76, %struct.glc_txsoft** %6, align 8
  %77 = icmp ne %struct.glc_txsoft* %76, null
  br i1 %77, label %78, label %107

78:                                               ; preds = %73
  %79 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %80 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %79, i32 0, i32 12
  %81 = load i32, i32* @txs_q, align 4
  %82 = call i32 @STAILQ_REMOVE_HEAD(i32* %80, i32 %81)
  %83 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %84 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %83, i32 0, i32 11
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.glc_txsoft*, %struct.glc_txsoft** %6, align 8
  %87 = getelementptr inbounds %struct.glc_txsoft, %struct.glc_txsoft* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @bus_dmamap_unload(i32 %85, i32 %88)
  %90 = load %struct.glc_txsoft*, %struct.glc_txsoft** %6, align 8
  %91 = getelementptr inbounds %struct.glc_txsoft, %struct.glc_txsoft* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %101

94:                                               ; preds = %78
  %95 = load %struct.glc_txsoft*, %struct.glc_txsoft** %6, align 8
  %96 = getelementptr inbounds %struct.glc_txsoft, %struct.glc_txsoft* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @m_freem(i32* %97)
  %99 = load %struct.glc_txsoft*, %struct.glc_txsoft** %6, align 8
  %100 = getelementptr inbounds %struct.glc_txsoft, %struct.glc_txsoft* %99, i32 0, i32 0
  store i32* null, i32** %100, align 8
  br label %101

101:                                              ; preds = %94, %78
  %102 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %103 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %102, i32 0, i32 10
  %104 = load %struct.glc_txsoft*, %struct.glc_txsoft** %6, align 8
  %105 = load i32, i32* @txs_q, align 4
  %106 = call i32 @STAILQ_INSERT_TAIL(i32* %103, %struct.glc_txsoft* %104, i32 %105)
  br label %73

107:                                              ; preds = %73
  %108 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %109 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %108, i32 0, i32 0
  store i32 -1, i32* %109, align 8
  %110 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %111 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %110, i32 0, i32 9
  store i64 0, i64* %111, align 8
  %112 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %113 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %112, i32 0, i32 8
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %116 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %115, i32 0, i32 7
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %119 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %118, i32 0, i32 6
  %120 = load %struct.glc_rxsoft*, %struct.glc_rxsoft** %119, align 8
  %121 = getelementptr inbounds %struct.glc_rxsoft, %struct.glc_rxsoft* %120, i64 0
  %122 = getelementptr inbounds %struct.glc_rxsoft, %struct.glc_rxsoft* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @lv1_net_start_rx_dma(i32 %114, i32 %117, i32 %123, i32 0)
  store i32 %124, i32* %4, align 4
  %125 = load i32, i32* %4, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %107
  %128 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %129 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %4, align 4
  %132 = call i32 @device_printf(i32 %130, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %131)
  br label %133

133:                                              ; preds = %127, %107
  %134 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %135 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %136 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %135, i32 0, i32 3
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = or i32 %139, %134
  store i32 %140, i32* %138, align 4
  %141 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %142 = xor i32 %141, -1
  %143 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %144 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %143, i32 0, i32 3
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = and i32 %147, %142
  store i32 %148, i32* %146, align 4
  %149 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %150 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %149, i32 0, i32 3
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %155 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %154, i32 0, i32 4
  store i32 %153, i32* %155, align 8
  %156 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %157 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %156, i32 0, i32 2
  store i64 0, i64* %157, align 8
  %158 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %159 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %158, i32 0, i32 1
  %160 = load i32, i32* @hz, align 4
  %161 = load i32, i32* @glc_tick, align 4
  %162 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %163 = call i32 @callout_reset(i32* %159, i32 %160, i32 %161, %struct.glc_softc* %162)
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @lv1_net_stop_tx_dma(i32, i32, i32) #1

declare dso_local i32 @lv1_net_stop_rx_dma(i32, i32, i32) #1

declare dso_local i32 @glc_set_multicast(%struct.glc_softc*) #1

declare dso_local i32 @glc_add_rxbuf(%struct.glc_softc*, i32) #1

declare dso_local i32 @glc_add_rxbuf_dma(%struct.glc_softc*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local %struct.glc_txsoft* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.glc_txsoft*, i32) #1

declare dso_local i32 @lv1_net_start_rx_dma(i32, i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.glc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
