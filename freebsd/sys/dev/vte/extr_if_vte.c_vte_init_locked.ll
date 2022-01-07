; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vte/extr_if_vte.c_vte_init_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vte/extr_if_vte.c_vte_init_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vte_softc = type { i32, i32, %struct.TYPE_2__, %struct.ifnet*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ifnet = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"no memory for RX buffers.\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"no memory for TX buffers.\0A\00", align 1
@VTE_MID0L = common dso_local global i32 0, align 4
@VTE_MID0M = common dso_local global i32 0, align 4
@VTE_MID0H = common dso_local global i32 0, align 4
@VTE_MTDSA1 = common dso_local global i32 0, align 4
@VTE_MTDSA0 = common dso_local global i32 0, align 4
@VTE_MRDSA1 = common dso_local global i32 0, align 4
@VTE_MRDSA0 = common dso_local global i32 0, align 4
@VTE_MRDCR = common dso_local global i32 0, align 4
@VTE_RX_RING_CNT = common dso_local global i32 0, align 4
@VTE_MRDCR_RESIDUE_MASK = common dso_local global i32 0, align 4
@VTE_MRDCR_RX_PAUSE_THRESH_SHIFT = common dso_local global i32 0, align 4
@VTE_MRBSR = common dso_local global i32 0, align 4
@VTE_RX_BUF_SIZE_MAX = common dso_local global i32 0, align 4
@VTE_MBCR = common dso_local global i32 0, align 4
@MBCR_FIFO_XFER_LENGTH_16 = common dso_local global i32 0, align 4
@MBCR_TX_FIFO_THRESH_64 = common dso_local global i32 0, align 4
@MBCR_RX_FIFO_THRESH_16 = common dso_local global i32 0, align 4
@MBCR_SDRAM_BUS_REQ_TIMER_DEFAULT = common dso_local global i32 0, align 4
@VTE_MCR0 = common dso_local global i32 0, align 4
@MCR0_ACCPT_LONG_PKT = common dso_local global i32 0, align 4
@VTE_MCR1 = common dso_local global i32 0, align 4
@MCR1_PKT_LENGTH_1537 = common dso_local global i32 0, align 4
@MCR1_EXCESS_COL_RETRY_16 = common dso_local global i32 0, align 4
@VTE_MRICR = common dso_local global i32 0, align 4
@VTE_MTICR = common dso_local global i32 0, align 4
@VTE_MECIER = common dso_local global i32 0, align 4
@VTE_MECIER_INTRS = common dso_local global i32 0, align 4
@VTE_MIER = common dso_local global i32 0, align 4
@VTE_INTRS = common dso_local global i32 0, align 4
@VTE_MISR = common dso_local global i32 0, align 4
@VTE_FLAG_LINK = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@vte_tick = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vte_softc*)* @vte_init_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vte_init_locked(%struct.vte_softc* %0) #0 {
  %2 = alloca %struct.vte_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.vte_softc* %0, %struct.vte_softc** %2, align 8
  %6 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %7 = call i32 @VTE_LOCK_ASSERT(%struct.vte_softc* %6)
  %8 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %9 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %8, i32 0, i32 3
  %10 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  store %struct.ifnet* %10, %struct.ifnet** %3, align 8
  %11 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %12 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %192

18:                                               ; preds = %1
  %19 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %20 = call i32 @vte_stop(%struct.vte_softc* %19)
  %21 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %22 = call i32 @vte_reset(%struct.vte_softc* %21)
  %23 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %24 = call i64 @vte_init_rx_ring(%struct.vte_softc* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %18
  %27 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %28 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @device_printf(i32 %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %32 = call i32 @vte_stop(%struct.vte_softc* %31)
  br label %192

33:                                               ; preds = %18
  %34 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %35 = call i64 @vte_init_tx_ring(%struct.vte_softc* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %33
  %38 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %39 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @device_printf(i32 %40, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %42 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %43 = call i32 @vte_stop(%struct.vte_softc* %42)
  br label %192

44:                                               ; preds = %33
  %45 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %46 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %45, i32 0, i32 3
  %47 = load %struct.ifnet*, %struct.ifnet** %46, align 8
  %48 = call i32* @IF_LLADDR(%struct.ifnet* %47)
  store i32* %48, i32** %5, align 8
  %49 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %50 = load i32, i32* @VTE_MID0L, align 4
  %51 = load i32*, i32** %5, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = shl i32 %53, 8
  %55 = load i32*, i32** %5, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %54, %57
  %59 = call i32 @CSR_WRITE_2(%struct.vte_softc* %49, i32 %50, i32 %58)
  %60 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %61 = load i32, i32* @VTE_MID0M, align 4
  %62 = load i32*, i32** %5, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 3
  %64 = load i32, i32* %63, align 4
  %65 = shl i32 %64, 8
  %66 = load i32*, i32** %5, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %65, %68
  %70 = call i32 @CSR_WRITE_2(%struct.vte_softc* %60, i32 %61, i32 %69)
  %71 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %72 = load i32, i32* @VTE_MID0H, align 4
  %73 = load i32*, i32** %5, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 5
  %75 = load i32, i32* %74, align 4
  %76 = shl i32 %75, 8
  %77 = load i32*, i32** %5, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 4
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %76, %79
  %81 = call i32 @CSR_WRITE_2(%struct.vte_softc* %71, i32 %72, i32 %80)
  %82 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %83 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  store i32 %85, i32* %4, align 4
  %86 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %87 = load i32, i32* @VTE_MTDSA1, align 4
  %88 = load i32, i32* %4, align 4
  %89 = ashr i32 %88, 16
  %90 = call i32 @CSR_WRITE_2(%struct.vte_softc* %86, i32 %87, i32 %89)
  %91 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %92 = load i32, i32* @VTE_MTDSA0, align 4
  %93 = load i32, i32* %4, align 4
  %94 = and i32 %93, 65535
  %95 = call i32 @CSR_WRITE_2(%struct.vte_softc* %91, i32 %92, i32 %94)
  %96 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %97 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %4, align 4
  %100 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %101 = load i32, i32* @VTE_MRDSA1, align 4
  %102 = load i32, i32* %4, align 4
  %103 = ashr i32 %102, 16
  %104 = call i32 @CSR_WRITE_2(%struct.vte_softc* %100, i32 %101, i32 %103)
  %105 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %106 = load i32, i32* @VTE_MRDSA0, align 4
  %107 = load i32, i32* %4, align 4
  %108 = and i32 %107, 65535
  %109 = call i32 @CSR_WRITE_2(%struct.vte_softc* %105, i32 %106, i32 %108)
  %110 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %111 = load i32, i32* @VTE_MRDCR, align 4
  %112 = load i32, i32* @VTE_RX_RING_CNT, align 4
  %113 = load i32, i32* @VTE_MRDCR_RESIDUE_MASK, align 4
  %114 = and i32 %112, %113
  %115 = load i32, i32* @VTE_RX_RING_CNT, align 4
  %116 = mul nsw i32 %115, 2
  %117 = sdiv i32 %116, 10
  %118 = load i32, i32* @VTE_MRDCR_RX_PAUSE_THRESH_SHIFT, align 4
  %119 = shl i32 %117, %118
  %120 = or i32 %114, %119
  %121 = call i32 @CSR_WRITE_2(%struct.vte_softc* %110, i32 %111, i32 %120)
  %122 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %123 = load i32, i32* @VTE_MRBSR, align 4
  %124 = load i32, i32* @VTE_RX_BUF_SIZE_MAX, align 4
  %125 = call i32 @CSR_WRITE_2(%struct.vte_softc* %122, i32 %123, i32 %124)
  %126 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %127 = load i32, i32* @VTE_MBCR, align 4
  %128 = load i32, i32* @MBCR_FIFO_XFER_LENGTH_16, align 4
  %129 = load i32, i32* @MBCR_TX_FIFO_THRESH_64, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* @MBCR_RX_FIFO_THRESH_16, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* @MBCR_SDRAM_BUS_REQ_TIMER_DEFAULT, align 4
  %134 = or i32 %132, %133
  %135 = call i32 @CSR_WRITE_2(%struct.vte_softc* %126, i32 %127, i32 %134)
  %136 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %137 = load i32, i32* @VTE_MCR0, align 4
  %138 = load i32, i32* @MCR0_ACCPT_LONG_PKT, align 4
  %139 = call i32 @CSR_WRITE_2(%struct.vte_softc* %136, i32 %137, i32 %138)
  %140 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %141 = load i32, i32* @VTE_MCR1, align 4
  %142 = load i32, i32* @MCR1_PKT_LENGTH_1537, align 4
  %143 = load i32, i32* @MCR1_EXCESS_COL_RETRY_16, align 4
  %144 = or i32 %142, %143
  %145 = call i32 @CSR_WRITE_2(%struct.vte_softc* %140, i32 %141, i32 %144)
  %146 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %147 = call i32 @vte_rxfilter(%struct.vte_softc* %146)
  %148 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %149 = load i32, i32* @VTE_MRICR, align 4
  %150 = call i32 @CSR_WRITE_2(%struct.vte_softc* %148, i32 %149, i32 0)
  %151 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %152 = load i32, i32* @VTE_MTICR, align 4
  %153 = call i32 @CSR_WRITE_2(%struct.vte_softc* %151, i32 %152, i32 0)
  %154 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %155 = load i32, i32* @VTE_MECIER, align 4
  %156 = load i32, i32* @VTE_MECIER_INTRS, align 4
  %157 = call i32 @CSR_WRITE_2(%struct.vte_softc* %154, i32 %155, i32 %156)
  %158 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %159 = call i32 @vte_stats_clear(%struct.vte_softc* %158)
  %160 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %161 = load i32, i32* @VTE_MIER, align 4
  %162 = load i32, i32* @VTE_INTRS, align 4
  %163 = call i32 @CSR_WRITE_2(%struct.vte_softc* %160, i32 %161, i32 %162)
  %164 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %165 = load i32, i32* @VTE_MISR, align 4
  %166 = call i32 @CSR_WRITE_2(%struct.vte_softc* %164, i32 %165, i32 0)
  %167 = load i32, i32* @VTE_FLAG_LINK, align 4
  %168 = xor i32 %167, -1
  %169 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %170 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = and i32 %171, %168
  store i32 %172, i32* %170, align 4
  %173 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %174 = call i32 @vte_mediachange_locked(%struct.ifnet* %173)
  %175 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %176 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %175, i32 0, i32 0
  %177 = load i32, i32* @hz, align 4
  %178 = load i32, i32* @vte_tick, align 4
  %179 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %180 = call i32 @callout_reset(i32* %176, i32 %177, i32 %178, %struct.vte_softc* %179)
  %181 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %182 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %183 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = or i32 %184, %181
  store i32 %185, i32* %183, align 4
  %186 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %187 = xor i32 %186, -1
  %188 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %189 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = and i32 %190, %187
  store i32 %191, i32* %189, align 4
  br label %192

192:                                              ; preds = %44, %37, %26, %17
  ret void
}

declare dso_local i32 @VTE_LOCK_ASSERT(%struct.vte_softc*) #1

declare dso_local i32 @vte_stop(%struct.vte_softc*) #1

declare dso_local i32 @vte_reset(%struct.vte_softc*) #1

declare dso_local i64 @vte_init_rx_ring(%struct.vte_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @vte_init_tx_ring(%struct.vte_softc*) #1

declare dso_local i32* @IF_LLADDR(%struct.ifnet*) #1

declare dso_local i32 @CSR_WRITE_2(%struct.vte_softc*, i32, i32) #1

declare dso_local i32 @vte_rxfilter(%struct.vte_softc*) #1

declare dso_local i32 @vte_stats_clear(%struct.vte_softc*) #1

declare dso_local i32 @vte_mediachange_locked(%struct.ifnet*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.vte_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
