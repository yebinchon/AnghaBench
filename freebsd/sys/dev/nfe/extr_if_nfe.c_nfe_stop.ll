; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nfe/extr_if_nfe.c_nfe_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nfe/extr_if_nfe.c_nfe_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfe_softc = type { i32, %struct.nfe_tx_ring, %struct.nfe_jrx_ring, %struct.nfe_rx_ring, i64, i32, i64 }
%struct.nfe_tx_ring = type { i32, %struct.nfe_tx_data* }
%struct.nfe_tx_data = type { i32*, i32 }
%struct.nfe_jrx_ring = type { i32, %struct.nfe_rx_data* }
%struct.nfe_rx_data = type { i32*, i32 }
%struct.nfe_rx_ring = type { i32, %struct.nfe_rx_data* }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@NFE_TX_CTL = common dso_local global i32 0, align 4
@NFE_RX_CTL = common dso_local global i32 0, align 4
@NFE_RX_RING_COUNT = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@NFE_JUMBO_SUP = common dso_local global i32 0, align 4
@NFE_JUMBO_RX_RING_COUNT = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @nfe_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfe_stop(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfe_softc*, align 8
  %4 = alloca %struct.nfe_rx_ring*, align 8
  %5 = alloca %struct.nfe_jrx_ring*, align 8
  %6 = alloca %struct.nfe_tx_ring*, align 8
  %7 = alloca %struct.nfe_rx_data*, align 8
  %8 = alloca %struct.nfe_tx_data*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = call %struct.nfe_softc* @if_getsoftc(i32 %10)
  store %struct.nfe_softc* %11, %struct.nfe_softc** %3, align 8
  %12 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %13 = call i32 @NFE_LOCK_ASSERT(%struct.nfe_softc* %12)
  %14 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %15 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %14, i32 0, i32 6
  store i64 0, i64* %15, align 8
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %18 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @if_setdrvflagbits(i32 %16, i32 0, i32 %19)
  %21 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %22 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %21, i32 0, i32 5
  %23 = call i32 @callout_stop(i32* %22)
  %24 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %25 = load i32, i32* @NFE_TX_CTL, align 4
  %26 = call i32 @NFE_WRITE(%struct.nfe_softc* %24, i32 %25, i32 0)
  %27 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %28 = load i32, i32* @NFE_RX_CTL, align 4
  %29 = call i32 @NFE_WRITE(%struct.nfe_softc* %27, i32 %28, i32 0)
  %30 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %31 = call i32 @nfe_disable_intr(%struct.nfe_softc* %30)
  %32 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %33 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %32, i32 0, i32 4
  store i64 0, i64* %33, align 8
  %34 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %35 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %34, i32 0, i32 3
  store %struct.nfe_rx_ring* %35, %struct.nfe_rx_ring** %4, align 8
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %74, %1
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @NFE_RX_RING_COUNT, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %77

40:                                               ; preds = %36
  %41 = load %struct.nfe_rx_ring*, %struct.nfe_rx_ring** %4, align 8
  %42 = getelementptr inbounds %struct.nfe_rx_ring, %struct.nfe_rx_ring* %41, i32 0, i32 1
  %43 = load %struct.nfe_rx_data*, %struct.nfe_rx_data** %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.nfe_rx_data, %struct.nfe_rx_data* %43, i64 %45
  store %struct.nfe_rx_data* %46, %struct.nfe_rx_data** %7, align 8
  %47 = load %struct.nfe_rx_data*, %struct.nfe_rx_data** %7, align 8
  %48 = getelementptr inbounds %struct.nfe_rx_data, %struct.nfe_rx_data* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %73

51:                                               ; preds = %40
  %52 = load %struct.nfe_rx_ring*, %struct.nfe_rx_ring** %4, align 8
  %53 = getelementptr inbounds %struct.nfe_rx_ring, %struct.nfe_rx_ring* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.nfe_rx_data*, %struct.nfe_rx_data** %7, align 8
  %56 = getelementptr inbounds %struct.nfe_rx_data, %struct.nfe_rx_data* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %59 = call i32 @bus_dmamap_sync(i32 %54, i32 %57, i32 %58)
  %60 = load %struct.nfe_rx_ring*, %struct.nfe_rx_ring** %4, align 8
  %61 = getelementptr inbounds %struct.nfe_rx_ring, %struct.nfe_rx_ring* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.nfe_rx_data*, %struct.nfe_rx_data** %7, align 8
  %64 = getelementptr inbounds %struct.nfe_rx_data, %struct.nfe_rx_data* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @bus_dmamap_unload(i32 %62, i32 %65)
  %67 = load %struct.nfe_rx_data*, %struct.nfe_rx_data** %7, align 8
  %68 = getelementptr inbounds %struct.nfe_rx_data, %struct.nfe_rx_data* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @m_freem(i32* %69)
  %71 = load %struct.nfe_rx_data*, %struct.nfe_rx_data** %7, align 8
  %72 = getelementptr inbounds %struct.nfe_rx_data, %struct.nfe_rx_data* %71, i32 0, i32 0
  store i32* null, i32** %72, align 8
  br label %73

73:                                               ; preds = %51, %40
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %9, align 4
  br label %36

77:                                               ; preds = %36
  %78 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %79 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @NFE_JUMBO_SUP, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %129

84:                                               ; preds = %77
  %85 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %86 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %85, i32 0, i32 2
  store %struct.nfe_jrx_ring* %86, %struct.nfe_jrx_ring** %5, align 8
  store i32 0, i32* %9, align 4
  br label %87

87:                                               ; preds = %125, %84
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* @NFE_JUMBO_RX_RING_COUNT, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %128

91:                                               ; preds = %87
  %92 = load %struct.nfe_jrx_ring*, %struct.nfe_jrx_ring** %5, align 8
  %93 = getelementptr inbounds %struct.nfe_jrx_ring, %struct.nfe_jrx_ring* %92, i32 0, i32 1
  %94 = load %struct.nfe_rx_data*, %struct.nfe_rx_data** %93, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.nfe_rx_data, %struct.nfe_rx_data* %94, i64 %96
  store %struct.nfe_rx_data* %97, %struct.nfe_rx_data** %7, align 8
  %98 = load %struct.nfe_rx_data*, %struct.nfe_rx_data** %7, align 8
  %99 = getelementptr inbounds %struct.nfe_rx_data, %struct.nfe_rx_data* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %124

102:                                              ; preds = %91
  %103 = load %struct.nfe_jrx_ring*, %struct.nfe_jrx_ring** %5, align 8
  %104 = getelementptr inbounds %struct.nfe_jrx_ring, %struct.nfe_jrx_ring* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.nfe_rx_data*, %struct.nfe_rx_data** %7, align 8
  %107 = getelementptr inbounds %struct.nfe_rx_data, %struct.nfe_rx_data* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %110 = call i32 @bus_dmamap_sync(i32 %105, i32 %108, i32 %109)
  %111 = load %struct.nfe_jrx_ring*, %struct.nfe_jrx_ring** %5, align 8
  %112 = getelementptr inbounds %struct.nfe_jrx_ring, %struct.nfe_jrx_ring* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.nfe_rx_data*, %struct.nfe_rx_data** %7, align 8
  %115 = getelementptr inbounds %struct.nfe_rx_data, %struct.nfe_rx_data* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @bus_dmamap_unload(i32 %113, i32 %116)
  %118 = load %struct.nfe_rx_data*, %struct.nfe_rx_data** %7, align 8
  %119 = getelementptr inbounds %struct.nfe_rx_data, %struct.nfe_rx_data* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = call i32 @m_freem(i32* %120)
  %122 = load %struct.nfe_rx_data*, %struct.nfe_rx_data** %7, align 8
  %123 = getelementptr inbounds %struct.nfe_rx_data, %struct.nfe_rx_data* %122, i32 0, i32 0
  store i32* null, i32** %123, align 8
  br label %124

124:                                              ; preds = %102, %91
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %9, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %9, align 4
  br label %87

128:                                              ; preds = %87
  br label %129

129:                                              ; preds = %128, %77
  %130 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %131 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %130, i32 0, i32 1
  store %struct.nfe_tx_ring* %131, %struct.nfe_tx_ring** %6, align 8
  store i32 0, i32* %9, align 4
  br label %132

132:                                              ; preds = %170, %129
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* @NFE_RX_RING_COUNT, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %173

136:                                              ; preds = %132
  %137 = load %struct.nfe_tx_ring*, %struct.nfe_tx_ring** %6, align 8
  %138 = getelementptr inbounds %struct.nfe_tx_ring, %struct.nfe_tx_ring* %137, i32 0, i32 1
  %139 = load %struct.nfe_tx_data*, %struct.nfe_tx_data** %138, align 8
  %140 = load i32, i32* %9, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.nfe_tx_data, %struct.nfe_tx_data* %139, i64 %141
  store %struct.nfe_tx_data* %142, %struct.nfe_tx_data** %8, align 8
  %143 = load %struct.nfe_tx_data*, %struct.nfe_tx_data** %8, align 8
  %144 = getelementptr inbounds %struct.nfe_tx_data, %struct.nfe_tx_data* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = icmp ne i32* %145, null
  br i1 %146, label %147, label %169

147:                                              ; preds = %136
  %148 = load %struct.nfe_tx_ring*, %struct.nfe_tx_ring** %6, align 8
  %149 = getelementptr inbounds %struct.nfe_tx_ring, %struct.nfe_tx_ring* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.nfe_tx_data*, %struct.nfe_tx_data** %8, align 8
  %152 = getelementptr inbounds %struct.nfe_tx_data, %struct.nfe_tx_data* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %155 = call i32 @bus_dmamap_sync(i32 %150, i32 %153, i32 %154)
  %156 = load %struct.nfe_tx_ring*, %struct.nfe_tx_ring** %6, align 8
  %157 = getelementptr inbounds %struct.nfe_tx_ring, %struct.nfe_tx_ring* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.nfe_tx_data*, %struct.nfe_tx_data** %8, align 8
  %160 = getelementptr inbounds %struct.nfe_tx_data, %struct.nfe_tx_data* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @bus_dmamap_unload(i32 %158, i32 %161)
  %163 = load %struct.nfe_tx_data*, %struct.nfe_tx_data** %8, align 8
  %164 = getelementptr inbounds %struct.nfe_tx_data, %struct.nfe_tx_data* %163, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = call i32 @m_freem(i32* %165)
  %167 = load %struct.nfe_tx_data*, %struct.nfe_tx_data** %8, align 8
  %168 = getelementptr inbounds %struct.nfe_tx_data, %struct.nfe_tx_data* %167, i32 0, i32 0
  store i32* null, i32** %168, align 8
  br label %169

169:                                              ; preds = %147, %136
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %9, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %9, align 4
  br label %132

173:                                              ; preds = %132
  %174 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %175 = call i32 @nfe_stats_update(%struct.nfe_softc* %174)
  ret void
}

declare dso_local %struct.nfe_softc* @if_getsoftc(i32) #1

declare dso_local i32 @NFE_LOCK_ASSERT(%struct.nfe_softc*) #1

declare dso_local i32 @if_setdrvflagbits(i32, i32, i32) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @NFE_WRITE(%struct.nfe_softc*, i32, i32) #1

declare dso_local i32 @nfe_disable_intr(%struct.nfe_softc*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @nfe_stats_update(%struct.nfe_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
