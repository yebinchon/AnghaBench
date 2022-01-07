; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mge/extr_if_mge.c_mge_intr_tx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mge/extr_if_mge.c_mge_intr_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mge_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MGE_PORT_INT_CAUSE_EXT = common dso_local global i32 0, align 4
@MGE_PORT_INT_EXT_TXBUF0 = common dso_local global i32 0, align 4
@MGE_PORT_INT_EXT_TXUR = common dso_local global i32 0, align 4
@IFCAP_POLLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @mge_intr_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mge_intr_tx(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mge_softc*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.mge_softc*
  store %struct.mge_softc* %6, %struct.mge_softc** %3, align 8
  %7 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %8 = call i32 @MGE_TRANSMIT_LOCK(%struct.mge_softc* %7)
  %9 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %10 = load i32, i32* @MGE_PORT_INT_CAUSE_EXT, align 4
  %11 = call i32 @MGE_READ(%struct.mge_softc* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %13 = load i32, i32* @MGE_PORT_INT_CAUSE_EXT, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @MGE_PORT_INT_EXT_TXBUF0, align 4
  %16 = load i32, i32* @MGE_PORT_INT_EXT_TXUR, align 4
  %17 = or i32 %15, %16
  %18 = and i32 %14, %17
  %19 = xor i32 %18, -1
  %20 = call i32 @MGE_WRITE(%struct.mge_softc* %12, i32 %13, i32 %19)
  %21 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %22 = call i32 @mge_intr_tx_locked(%struct.mge_softc* %21)
  %23 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %24 = call i32 @MGE_TRANSMIT_UNLOCK(%struct.mge_softc* %23)
  ret void
}

declare dso_local i32 @MGE_TRANSMIT_LOCK(%struct.mge_softc*) #1

declare dso_local i32 @MGE_READ(%struct.mge_softc*, i32) #1

declare dso_local i32 @MGE_WRITE(%struct.mge_softc*, i32, i32) #1

declare dso_local i32 @mge_intr_tx_locked(%struct.mge_softc*) #1

declare dso_local i32 @MGE_TRANSMIT_UNLOCK(%struct.mge_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
