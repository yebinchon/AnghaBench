; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rl/extr_if_rl.c_rl_init_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rl/extr_if_rl.c_rl_init_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rl_softc = type { i32, i32, i32, i32, %struct.TYPE_2__, %struct.ifnet*, i32, i64, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.ifnet = type { i32, i32 }
%struct.mii_data = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@CHK_LINK = common dso_local global i32 0, align 4
@RL_EECMD = common dso_local global i32 0, align 4
@RL_EEMODE_WRITECFG = common dso_local global i32 0, align 4
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@RL_IDR0 = common dso_local global i32 0, align 4
@RL_IDR4 = common dso_local global i32 0, align 4
@RL_EEMODE_OFF = common dso_local global i32 0, align 4
@RL_RXADDR = common dso_local global i32 0, align 4
@RL_RX_8139_BUF_RESERVE = common dso_local global i64 0, align 8
@RL_COMMAND = common dso_local global i32 0, align 4
@RL_CMD_TX_ENB = common dso_local global i32 0, align 4
@RL_CMD_RX_ENB = common dso_local global i32 0, align 4
@RL_TXCFG = common dso_local global i32 0, align 4
@RL_TXCFG_CONFIG = common dso_local global i64 0, align 8
@RL_RXCFG = common dso_local global i32 0, align 4
@RL_RXCFG_CONFIG = common dso_local global i64 0, align 8
@RL_IMR = common dso_local global i32 0, align 4
@RL_INTRS = common dso_local global i32 0, align 4
@RL_TX_THRESH_INIT = common dso_local global i32 0, align 4
@RL_MISSEDPKT = common dso_local global i32 0, align 4
@RL_FLAG_LINK = common dso_local global i32 0, align 4
@RL_CFG1_DRVLOAD = common dso_local global i32 0, align 4
@RL_CFG1_FULLDUPLEX = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@rl_tick = common dso_local global i32 0, align 4
@IFCAP_POLLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rl_softc*)* @rl_init_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rl_init_locked(%struct.rl_softc* %0) #0 {
  %2 = alloca %struct.rl_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.mii_data*, align 8
  %5 = alloca [2 x i32], align 4
  store %struct.rl_softc* %0, %struct.rl_softc** %2, align 8
  %6 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %7 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %6, i32 0, i32 5
  %8 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  store %struct.ifnet* %8, %struct.ifnet** %3, align 8
  %9 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %10 = call i32 @RL_LOCK_ASSERT(%struct.rl_softc* %9)
  %11 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %12 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %11, i32 0, i32 8
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.mii_data* @device_get_softc(i32 %13)
  store %struct.mii_data* %14, %struct.mii_data** %4, align 8
  %15 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %16 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %141

22:                                               ; preds = %1
  %23 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %24 = call i32 @rl_stop(%struct.rl_softc* %23)
  %25 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %26 = call i32 @rl_reset(%struct.rl_softc* %25)
  %27 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %28 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %27, i32 0, i32 7
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %22
  %32 = load i32, i32* @CHK_LINK, align 4
  %33 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %34 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %33, i32 0, i32 6
  store i32 %32, i32* %34, align 8
  br label %35

35:                                               ; preds = %31, %22
  %36 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %37 = load i32, i32* @RL_EECMD, align 4
  %38 = load i32, i32* @RL_EEMODE_WRITECFG, align 4
  %39 = call i32 @CSR_WRITE_1(%struct.rl_softc* %36, i32 %37, i32 %38)
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %41 = call i32 @bzero(i32* %40, i32 8)
  %42 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %43 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %42, i32 0, i32 5
  %44 = load %struct.ifnet*, %struct.ifnet** %43, align 8
  %45 = call i32 @IF_LLADDR(%struct.ifnet* %44)
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %47 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %48 = call i32 @bcopy(i32 %45, i32* %46, i32 %47)
  %49 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %50 = load i32, i32* @RL_IDR0, align 4
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @CSR_WRITE_STREAM_4(%struct.rl_softc* %49, i32 %50, i32 %52)
  %54 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %55 = load i32, i32* @RL_IDR4, align 4
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @CSR_WRITE_STREAM_4(%struct.rl_softc* %54, i32 %55, i32 %57)
  %59 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %60 = load i32, i32* @RL_EECMD, align 4
  %61 = load i32, i32* @RL_EEMODE_OFF, align 4
  %62 = call i32 @CSR_WRITE_1(%struct.rl_softc* %59, i32 %60, i32 %61)
  %63 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %64 = load i32, i32* @RL_RXADDR, align 4
  %65 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %66 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @RL_RX_8139_BUF_RESERVE, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @CSR_WRITE_4(%struct.rl_softc* %63, i32 %64, i64 %70)
  %72 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %73 = call i32 @rl_list_tx_init(%struct.rl_softc* %72)
  %74 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %75 = call i32 @rl_list_rx_init(%struct.rl_softc* %74)
  %76 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %77 = load i32, i32* @RL_COMMAND, align 4
  %78 = load i32, i32* @RL_CMD_TX_ENB, align 4
  %79 = load i32, i32* @RL_CMD_RX_ENB, align 4
  %80 = or i32 %78, %79
  %81 = call i32 @CSR_WRITE_1(%struct.rl_softc* %76, i32 %77, i32 %80)
  %82 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %83 = load i32, i32* @RL_TXCFG, align 4
  %84 = load i64, i64* @RL_TXCFG_CONFIG, align 8
  %85 = call i32 @CSR_WRITE_4(%struct.rl_softc* %82, i32 %83, i64 %84)
  %86 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %87 = load i32, i32* @RL_RXCFG, align 4
  %88 = load i64, i64* @RL_RXCFG_CONFIG, align 8
  %89 = call i32 @CSR_WRITE_4(%struct.rl_softc* %86, i32 %87, i64 %88)
  %90 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %91 = call i32 @rl_rxfilter(%struct.rl_softc* %90)
  %92 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %93 = load i32, i32* @RL_IMR, align 4
  %94 = load i32, i32* @RL_INTRS, align 4
  %95 = call i32 @CSR_WRITE_2(%struct.rl_softc* %92, i32 %93, i32 %94)
  %96 = load i32, i32* @RL_TX_THRESH_INIT, align 4
  %97 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %98 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 4
  %99 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %100 = load i32, i32* @RL_MISSEDPKT, align 4
  %101 = call i32 @CSR_WRITE_4(%struct.rl_softc* %99, i32 %100, i64 0)
  %102 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %103 = load i32, i32* @RL_COMMAND, align 4
  %104 = load i32, i32* @RL_CMD_TX_ENB, align 4
  %105 = load i32, i32* @RL_CMD_RX_ENB, align 4
  %106 = or i32 %104, %105
  %107 = call i32 @CSR_WRITE_1(%struct.rl_softc* %102, i32 %103, i32 %106)
  %108 = load i32, i32* @RL_FLAG_LINK, align 4
  %109 = xor i32 %108, -1
  %110 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %111 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = and i32 %112, %109
  store i32 %113, i32* %111, align 8
  %114 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %115 = call i32 @mii_mediachg(%struct.mii_data* %114)
  %116 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %117 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %118 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @RL_CFG1_DRVLOAD, align 4
  %121 = load i32, i32* @RL_CFG1_FULLDUPLEX, align 4
  %122 = or i32 %120, %121
  %123 = call i32 @CSR_WRITE_1(%struct.rl_softc* %116, i32 %119, i32 %122)
  %124 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %125 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %126 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = or i32 %127, %124
  store i32 %128, i32* %126, align 4
  %129 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %130 = xor i32 %129, -1
  %131 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %132 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = and i32 %133, %130
  store i32 %134, i32* %132, align 4
  %135 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %136 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %135, i32 0, i32 0
  %137 = load i32, i32* @hz, align 4
  %138 = load i32, i32* @rl_tick, align 4
  %139 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %140 = call i32 @callout_reset(i32* %136, i32 %137, i32 %138, %struct.rl_softc* %139)
  br label %141

141:                                              ; preds = %35, %21
  ret void
}

declare dso_local i32 @RL_LOCK_ASSERT(%struct.rl_softc*) #1

declare dso_local %struct.mii_data* @device_get_softc(i32) #1

declare dso_local i32 @rl_stop(%struct.rl_softc*) #1

declare dso_local i32 @rl_reset(%struct.rl_softc*) #1

declare dso_local i32 @CSR_WRITE_1(%struct.rl_softc*, i32, i32) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @bcopy(i32, i32*, i32) #1

declare dso_local i32 @IF_LLADDR(%struct.ifnet*) #1

declare dso_local i32 @CSR_WRITE_STREAM_4(%struct.rl_softc*, i32, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.rl_softc*, i32, i64) #1

declare dso_local i32 @rl_list_tx_init(%struct.rl_softc*) #1

declare dso_local i32 @rl_list_rx_init(%struct.rl_softc*) #1

declare dso_local i32 @rl_rxfilter(%struct.rl_softc*) #1

declare dso_local i32 @CSR_WRITE_2(%struct.rl_softc*, i32, i32) #1

declare dso_local i32 @mii_mediachg(%struct.mii_data*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.rl_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
