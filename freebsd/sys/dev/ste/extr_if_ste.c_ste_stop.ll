; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ste/extr_if_ste.c_ste_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ste/extr_if_ste.c_ste_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ste_softc = type { %struct.TYPE_2__, i32, i64, i32, %struct.ifnet* }
%struct.TYPE_2__ = type { i32, %struct.ste_chain*, i32, %struct.ste_chain_onefrag* }
%struct.ste_chain = type { i32*, i32 }
%struct.ste_chain_onefrag = type { i32*, i32 }
%struct.ifnet = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@STE_IMR = common dso_local global i32 0, align 4
@STE_COUNTDOWN = common dso_local global i32 0, align 4
@STE_DMACTL = common dso_local global i32 0, align 4
@STE_DMACTL_TXDMA_STALL = common dso_local global i32 0, align 4
@STE_DMACTL_RXDMA_STALL = common dso_local global i32 0, align 4
@STE_RX_DMAPOLL_PERIOD = common dso_local global i32 0, align 4
@STE_TX_DMAPOLL_PERIOD = common dso_local global i32 0, align 4
@STE_RX_DMALIST_PTR = common dso_local global i32 0, align 4
@STE_TX_DMALIST_PTR = common dso_local global i32 0, align 4
@STE_MACCTL1 = common dso_local global i32 0, align 4
@STE_MACCTL1_TX_DISABLE = common dso_local global i32 0, align 4
@STE_MACCTL1_RX_DISABLE = common dso_local global i32 0, align 4
@STE_MACCTL1_STATS_DISABLE = common dso_local global i32 0, align 4
@STE_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Stopping MAC timed out\0A\00", align 1
@STE_ISR_ACK = common dso_local global i32 0, align 4
@STE_RX_LIST_CNT = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@STE_TX_LIST_CNT = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ste_softc*)* @ste_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ste_stop(%struct.ste_softc* %0) #0 {
  %2 = alloca %struct.ste_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.ste_chain_onefrag*, align 8
  %5 = alloca %struct.ste_chain*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ste_softc* %0, %struct.ste_softc** %2, align 8
  %8 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %9 = call i32 @STE_LOCK_ASSERT(%struct.ste_softc* %8)
  %10 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %11 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %10, i32 0, i32 4
  %12 = load %struct.ifnet*, %struct.ifnet** %11, align 8
  store %struct.ifnet* %12, %struct.ifnet** %3, align 8
  %13 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %14 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %13, i32 0, i32 3
  %15 = call i32 @callout_stop(i32* %14)
  %16 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %17 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %16, i32 0, i32 2
  store i64 0, i64* %17, align 8
  %18 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %19 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %20 = or i32 %18, %19
  %21 = xor i32 %20, -1
  %22 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %23 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %27 = load i32, i32* @STE_IMR, align 4
  %28 = call i32 @CSR_WRITE_2(%struct.ste_softc* %26, i32 %27, i32 0)
  %29 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %30 = load i32, i32* @STE_COUNTDOWN, align 4
  %31 = call i32 @CSR_WRITE_2(%struct.ste_softc* %29, i32 %30, i32 0)
  %32 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %33 = load i32, i32* @STE_DMACTL, align 4
  %34 = call i32 @CSR_READ_4(%struct.ste_softc* %32, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* @STE_DMACTL_TXDMA_STALL, align 4
  %36 = load i32, i32* @STE_DMACTL_RXDMA_STALL, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* %6, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %6, align 4
  %40 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %41 = load i32, i32* @STE_DMACTL, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @CSR_WRITE_4(%struct.ste_softc* %40, i32 %41, i32 %42)
  %44 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %45 = call i32 @ste_wait(%struct.ste_softc* %44)
  %46 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %47 = load i32, i32* @STE_RX_DMAPOLL_PERIOD, align 4
  %48 = call i32 @CSR_WRITE_1(%struct.ste_softc* %46, i32 %47, i32 0)
  %49 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %50 = load i32, i32* @STE_TX_DMAPOLL_PERIOD, align 4
  %51 = call i32 @CSR_WRITE_1(%struct.ste_softc* %49, i32 %50, i32 0)
  %52 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %53 = load i32, i32* @STE_RX_DMALIST_PTR, align 4
  %54 = call i32 @CSR_WRITE_4(%struct.ste_softc* %52, i32 %53, i32 0)
  %55 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %56 = load i32, i32* @STE_TX_DMALIST_PTR, align 4
  %57 = call i32 @CSR_WRITE_4(%struct.ste_softc* %55, i32 %56, i32 0)
  %58 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %59 = load i32, i32* @STE_MACCTL1, align 4
  %60 = call i32 @CSR_READ_2(%struct.ste_softc* %58, i32 %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* @STE_MACCTL1_TX_DISABLE, align 4
  %62 = load i32, i32* @STE_MACCTL1_RX_DISABLE, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @STE_MACCTL1_STATS_DISABLE, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* %6, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %6, align 4
  %68 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %69 = load i32, i32* @STE_MACCTL1, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @CSR_WRITE_2(%struct.ste_softc* %68, i32 %69, i32 %70)
  store i32 0, i32* %7, align 4
  br label %72

72:                                               ; preds = %90, %1
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @STE_TIMEOUT, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %93

76:                                               ; preds = %72
  %77 = call i32 @DELAY(i32 10)
  %78 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %79 = load i32, i32* @STE_MACCTL1, align 4
  %80 = call i32 @CSR_READ_2(%struct.ste_softc* %78, i32 %79)
  %81 = load i32, i32* @STE_MACCTL1_TX_DISABLE, align 4
  %82 = load i32, i32* @STE_MACCTL1_RX_DISABLE, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @STE_MACCTL1_STATS_DISABLE, align 4
  %85 = or i32 %83, %84
  %86 = and i32 %80, %85
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %76
  br label %93

89:                                               ; preds = %76
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %7, align 4
  br label %72

93:                                               ; preds = %88, %72
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @STE_TIMEOUT, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %93
  %98 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %99 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @device_printf(i32 %100, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %102

102:                                              ; preds = %97, %93
  %103 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %104 = load i32, i32* @STE_ISR_ACK, align 4
  %105 = call i32 @CSR_READ_2(%struct.ste_softc* %103, i32 %104)
  %106 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %107 = call i32 @ste_stats_update(%struct.ste_softc* %106)
  store i32 0, i32* %7, align 4
  br label %108

108:                                              ; preds = %149, %102
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* @STE_RX_LIST_CNT, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %152

112:                                              ; preds = %108
  %113 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %114 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 3
  %116 = load %struct.ste_chain_onefrag*, %struct.ste_chain_onefrag** %115, align 8
  %117 = load i32, i32* %7, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.ste_chain_onefrag, %struct.ste_chain_onefrag* %116, i64 %118
  store %struct.ste_chain_onefrag* %119, %struct.ste_chain_onefrag** %4, align 8
  %120 = load %struct.ste_chain_onefrag*, %struct.ste_chain_onefrag** %4, align 8
  %121 = getelementptr inbounds %struct.ste_chain_onefrag, %struct.ste_chain_onefrag* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %124, label %148

124:                                              ; preds = %112
  %125 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %126 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.ste_chain_onefrag*, %struct.ste_chain_onefrag** %4, align 8
  %130 = getelementptr inbounds %struct.ste_chain_onefrag, %struct.ste_chain_onefrag* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %133 = call i32 @bus_dmamap_sync(i32 %128, i32 %131, i32 %132)
  %134 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %135 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.ste_chain_onefrag*, %struct.ste_chain_onefrag** %4, align 8
  %139 = getelementptr inbounds %struct.ste_chain_onefrag, %struct.ste_chain_onefrag* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @bus_dmamap_unload(i32 %137, i32 %140)
  %142 = load %struct.ste_chain_onefrag*, %struct.ste_chain_onefrag** %4, align 8
  %143 = getelementptr inbounds %struct.ste_chain_onefrag, %struct.ste_chain_onefrag* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = call i32 @m_freem(i32* %144)
  %146 = load %struct.ste_chain_onefrag*, %struct.ste_chain_onefrag** %4, align 8
  %147 = getelementptr inbounds %struct.ste_chain_onefrag, %struct.ste_chain_onefrag* %146, i32 0, i32 0
  store i32* null, i32** %147, align 8
  br label %148

148:                                              ; preds = %124, %112
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %7, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %7, align 4
  br label %108

152:                                              ; preds = %108
  store i32 0, i32* %7, align 4
  br label %153

153:                                              ; preds = %194, %152
  %154 = load i32, i32* %7, align 4
  %155 = load i32, i32* @STE_TX_LIST_CNT, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %197

157:                                              ; preds = %153
  %158 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %159 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 1
  %161 = load %struct.ste_chain*, %struct.ste_chain** %160, align 8
  %162 = load i32, i32* %7, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.ste_chain, %struct.ste_chain* %161, i64 %163
  store %struct.ste_chain* %164, %struct.ste_chain** %5, align 8
  %165 = load %struct.ste_chain*, %struct.ste_chain** %5, align 8
  %166 = getelementptr inbounds %struct.ste_chain, %struct.ste_chain* %165, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = icmp ne i32* %167, null
  br i1 %168, label %169, label %193

169:                                              ; preds = %157
  %170 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %171 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.ste_chain*, %struct.ste_chain** %5, align 8
  %175 = getelementptr inbounds %struct.ste_chain, %struct.ste_chain* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %178 = call i32 @bus_dmamap_sync(i32 %173, i32 %176, i32 %177)
  %179 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %180 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.ste_chain*, %struct.ste_chain** %5, align 8
  %184 = getelementptr inbounds %struct.ste_chain, %struct.ste_chain* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @bus_dmamap_unload(i32 %182, i32 %185)
  %187 = load %struct.ste_chain*, %struct.ste_chain** %5, align 8
  %188 = getelementptr inbounds %struct.ste_chain, %struct.ste_chain* %187, i32 0, i32 0
  %189 = load i32*, i32** %188, align 8
  %190 = call i32 @m_freem(i32* %189)
  %191 = load %struct.ste_chain*, %struct.ste_chain** %5, align 8
  %192 = getelementptr inbounds %struct.ste_chain, %struct.ste_chain* %191, i32 0, i32 0
  store i32* null, i32** %192, align 8
  br label %193

193:                                              ; preds = %169, %157
  br label %194

194:                                              ; preds = %193
  %195 = load i32, i32* %7, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %7, align 4
  br label %153

197:                                              ; preds = %153
  ret void
}

declare dso_local i32 @STE_LOCK_ASSERT(%struct.ste_softc*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @CSR_WRITE_2(%struct.ste_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.ste_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.ste_softc*, i32, i32) #1

declare dso_local i32 @ste_wait(%struct.ste_softc*) #1

declare dso_local i32 @CSR_WRITE_1(%struct.ste_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_2(%struct.ste_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @ste_stats_update(%struct.ste_softc*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @m_freem(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
