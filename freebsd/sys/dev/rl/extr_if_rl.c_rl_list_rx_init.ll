; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rl/extr_if_rl.c_rl_list_rx_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rl/extr_if_rl.c_rl_list_rx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rl_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@RL_RXBUFLEN = common dso_local global i64 0, align 8
@RL_RX_8139_BUF_GUARD_SZ = common dso_local global i64 0, align 8
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rl_softc*)* @rl_list_rx_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rl_list_rx_init(%struct.rl_softc* %0) #0 {
  %2 = alloca %struct.rl_softc*, align 8
  store %struct.rl_softc* %0, %struct.rl_softc** %2, align 8
  %3 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %4 = call i32 @RL_LOCK_ASSERT(%struct.rl_softc* %3)
  %5 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %6 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load i64, i64* @RL_RXBUFLEN, align 8
  %10 = load i64, i64* @RL_RX_8139_BUF_GUARD_SZ, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @bzero(i32 %8, i64 %11)
  %13 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %14 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %18 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %22 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @bus_dmamap_sync(i32 %16, i32 %20, i32 %23)
  ret i32 0
}

declare dso_local i32 @RL_LOCK_ASSERT(%struct.rl_softc*) #1

declare dso_local i32 @bzero(i32, i64) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
