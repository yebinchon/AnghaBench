; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_msk_discard_rxbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_msk_discard_rxbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msk_if_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.msk_rxdesc* }
%struct.msk_rxdesc = type { %struct.msk_rx_desc*, %struct.mbuf* }
%struct.msk_rx_desc = type { i8* }
%struct.mbuf = type { i32 }

@OP_PACKET = common dso_local global i32 0, align 4
@HW_OWNER = common dso_local global i32 0, align 4
@MSK_RX_RING_CNT = common dso_local global i32 0, align 4
@OP_ADDR64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msk_if_softc*, i32)* @msk_discard_rxbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msk_discard_rxbuf(%struct.msk_if_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.msk_if_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.msk_rx_desc*, align 8
  %6 = alloca %struct.msk_rxdesc*, align 8
  %7 = alloca %struct.mbuf*, align 8
  store %struct.msk_if_softc* %0, %struct.msk_if_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.msk_if_softc*, %struct.msk_if_softc** %3, align 8
  %9 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.msk_rxdesc*, %struct.msk_rxdesc** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.msk_rxdesc, %struct.msk_rxdesc* %11, i64 %13
  store %struct.msk_rxdesc* %14, %struct.msk_rxdesc** %6, align 8
  %15 = load %struct.msk_rxdesc*, %struct.msk_rxdesc** %6, align 8
  %16 = getelementptr inbounds %struct.msk_rxdesc, %struct.msk_rxdesc* %15, i32 0, i32 1
  %17 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  store %struct.mbuf* %17, %struct.mbuf** %7, align 8
  %18 = load %struct.msk_rxdesc*, %struct.msk_rxdesc** %6, align 8
  %19 = getelementptr inbounds %struct.msk_rxdesc, %struct.msk_rxdesc* %18, i32 0, i32 0
  %20 = load %struct.msk_rx_desc*, %struct.msk_rx_desc** %19, align 8
  store %struct.msk_rx_desc* %20, %struct.msk_rx_desc** %5, align 8
  %21 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %22 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @OP_PACKET, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @HW_OWNER, align 4
  %27 = or i32 %25, %26
  %28 = call i8* @htole32(i32 %27)
  %29 = load %struct.msk_rx_desc*, %struct.msk_rx_desc** %5, align 8
  %30 = getelementptr inbounds %struct.msk_rx_desc, %struct.msk_rx_desc* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  ret void
}

declare dso_local i8* @htole32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
