; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mge/extr_if_mge.c_mge_intr_rxtx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mge/extr_if_mge.c_mge_intr_rxtx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mge_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MGE_PORT_INT_CAUSE = common dso_local global i32 0, align 4
@MGE_PORT_INT_CAUSE_EXT = common dso_local global i32 0, align 4
@MGE_PORT_INT_EXT_TXBUF0 = common dso_local global i32 0, align 4
@MGE_PORT_INT_EXT_TXUR = common dso_local global i32 0, align 4
@IFCAP_POLLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @mge_intr_rxtx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mge_intr_rxtx(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mge_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.mge_softc*
  store %struct.mge_softc* %7, %struct.mge_softc** %3, align 8
  %8 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %9 = call i32 @MGE_GLOBAL_LOCK(%struct.mge_softc* %8)
  %10 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %11 = load i32, i32* @MGE_PORT_INT_CAUSE, align 4
  %12 = call i32 @MGE_READ(%struct.mge_softc* %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %14 = load i32, i32* @MGE_PORT_INT_CAUSE_EXT, align 4
  %15 = call i32 @MGE_READ(%struct.mge_softc* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @MGE_PORT_INT_EXT_TXBUF0, align 4
  %18 = load i32, i32* @MGE_PORT_INT_EXT_TXUR, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %1
  %23 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %24 = load i32, i32* @MGE_PORT_INT_CAUSE_EXT, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @MGE_PORT_INT_EXT_TXBUF0, align 4
  %27 = load i32, i32* @MGE_PORT_INT_EXT_TXUR, align 4
  %28 = or i32 %26, %27
  %29 = and i32 %25, %28
  %30 = xor i32 %29, -1
  %31 = call i32 @MGE_WRITE(%struct.mge_softc* %23, i32 %24, i32 %30)
  %32 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %33 = call i32 @mge_intr_tx_locked(%struct.mge_softc* %32)
  br label %34

34:                                               ; preds = %22, %1
  %35 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %36 = call i32 @MGE_TRANSMIT_UNLOCK(%struct.mge_softc* %35)
  %37 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @mge_intr_rx_check(%struct.mge_softc* %37, i32 %38, i32 %39)
  %41 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %42 = call i32 @MGE_RECEIVE_UNLOCK(%struct.mge_softc* %41)
  ret void
}

declare dso_local i32 @MGE_GLOBAL_LOCK(%struct.mge_softc*) #1

declare dso_local i32 @MGE_READ(%struct.mge_softc*, i32) #1

declare dso_local i32 @MGE_WRITE(%struct.mge_softc*, i32, i32) #1

declare dso_local i32 @mge_intr_tx_locked(%struct.mge_softc*) #1

declare dso_local i32 @MGE_TRANSMIT_UNLOCK(%struct.mge_softc*) #1

declare dso_local i32 @mge_intr_rx_check(%struct.mge_softc*, i32, i32) #1

declare dso_local i32 @MGE_RECEIVE_UNLOCK(%struct.mge_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
