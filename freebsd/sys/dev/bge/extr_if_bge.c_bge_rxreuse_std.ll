; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_rxreuse_std.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_rxreuse_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bge_softc = type { i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { %struct.bge_rx_bd* }
%struct.bge_rx_bd = type { i32, i32, i32 }

@BGE_RXBDFLAG_END = common dso_local global i32 0, align 4
@BGE_STD_RX_RING_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bge_softc*, i32)* @bge_rxreuse_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bge_rxreuse_std(%struct.bge_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.bge_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bge_rx_bd*, align 8
  store %struct.bge_softc* %0, %struct.bge_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %7 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.bge_rx_bd*, %struct.bge_rx_bd** %8, align 8
  %10 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %11 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.bge_rx_bd, %struct.bge_rx_bd* %9, i64 %12
  store %struct.bge_rx_bd* %13, %struct.bge_rx_bd** %5, align 8
  %14 = load i32, i32* @BGE_RXBDFLAG_END, align 4
  %15 = load %struct.bge_rx_bd*, %struct.bge_rx_bd** %5, align 8
  %16 = getelementptr inbounds %struct.bge_rx_bd, %struct.bge_rx_bd* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  %17 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %18 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.bge_rx_bd*, %struct.bge_rx_bd** %5, align 8
  %26 = getelementptr inbounds %struct.bge_rx_bd, %struct.bge_rx_bd* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.bge_rx_bd*, %struct.bge_rx_bd** %5, align 8
  %29 = getelementptr inbounds %struct.bge_rx_bd, %struct.bge_rx_bd* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %31 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* @BGE_STD_RX_RING_CNT, align 4
  %34 = call i32 @BGE_INC(i64 %32, i32 %33)
  ret void
}

declare dso_local i32 @BGE_INC(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
