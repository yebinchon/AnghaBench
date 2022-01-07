; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_rx.c_sfxge_rx_post_refill.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_rx.c_sfxge_rx_post_refill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_rxq = type { i32, i64, %struct.sfxge_softc* }
%struct.sfxge_softc = type { %struct.sfxge_evq** }
%struct.sfxge_evq = type { i64, i32 }

@SFXGE_SW_EV_RX_QREFILL = common dso_local global i32 0, align 4
@SFXGE_EVQ_STARTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"evq not started\00", align 1
@SFXGE_RXQ_STARTED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"rxq not started\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @sfxge_rx_post_refill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sfxge_rx_post_refill(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sfxge_rxq*, align 8
  %4 = alloca %struct.sfxge_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sfxge_evq*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.sfxge_rxq*
  store %struct.sfxge_rxq* %9, %struct.sfxge_rxq** %3, align 8
  %10 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %3, align 8
  %11 = getelementptr inbounds %struct.sfxge_rxq, %struct.sfxge_rxq* %10, i32 0, i32 2
  %12 = load %struct.sfxge_softc*, %struct.sfxge_softc** %11, align 8
  store %struct.sfxge_softc* %12, %struct.sfxge_softc** %4, align 8
  %13 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %3, align 8
  %14 = getelementptr inbounds %struct.sfxge_rxq, %struct.sfxge_rxq* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %5, align 4
  %16 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %17 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %16, i32 0, i32 0
  %18 = load %struct.sfxge_evq**, %struct.sfxge_evq*** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.sfxge_evq*, %struct.sfxge_evq** %18, i64 %20
  %22 = load %struct.sfxge_evq*, %struct.sfxge_evq** %21, align 8
  store %struct.sfxge_evq* %22, %struct.sfxge_evq** %6, align 8
  %23 = load i32, i32* @SFXGE_SW_EV_RX_QREFILL, align 4
  %24 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %3, align 8
  %25 = call i32 @sfxge_sw_ev_rxq_magic(i32 %23, %struct.sfxge_rxq* %24)
  store i32 %25, i32* %7, align 4
  %26 = load %struct.sfxge_evq*, %struct.sfxge_evq** %6, align 8
  %27 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SFXGE_EVQ_STARTED, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @KASSERT(i32 %31, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %3, align 8
  %34 = getelementptr inbounds %struct.sfxge_rxq, %struct.sfxge_rxq* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SFXGE_RXQ_STARTED, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @KASSERT(i32 %38, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %40 = load %struct.sfxge_evq*, %struct.sfxge_evq** %6, align 8
  %41 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @efx_ev_qpost(i32 %42, i32 %43)
  ret void
}

declare dso_local i32 @sfxge_sw_ev_rxq_magic(i32, %struct.sfxge_rxq*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @efx_ev_qpost(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
