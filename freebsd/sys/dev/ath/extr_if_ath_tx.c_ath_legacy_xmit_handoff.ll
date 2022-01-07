; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_tx.c_ath_legacy_xmit_handoff.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_tx.c_ath_legacy_xmit_handoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32 }
%struct.ath_txq = type { i64 }
%struct.ath_buf = type { i32 }

@ATH_TXQ_SWQ = common dso_local global i64 0, align 8
@ATH_ALQ_EDMA_TXDESC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_softc*, %struct.ath_txq*, %struct.ath_buf*)* @ath_legacy_xmit_handoff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_legacy_xmit_handoff(%struct.ath_softc* %0, %struct.ath_txq* %1, %struct.ath_buf* %2) #0 {
  %4 = alloca %struct.ath_softc*, align 8
  %5 = alloca %struct.ath_txq*, align 8
  %6 = alloca %struct.ath_buf*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %4, align 8
  store %struct.ath_txq* %1, %struct.ath_txq** %5, align 8
  store %struct.ath_buf* %2, %struct.ath_buf** %6, align 8
  %7 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %8 = call i32 @ATH_TX_LOCK_ASSERT(%struct.ath_softc* %7)
  %9 = load %struct.ath_txq*, %struct.ath_txq** %5, align 8
  %10 = getelementptr inbounds %struct.ath_txq, %struct.ath_txq* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ATH_TXQ_SWQ, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %16 = load %struct.ath_txq*, %struct.ath_txq** %5, align 8
  %17 = load %struct.ath_buf*, %struct.ath_buf** %6, align 8
  %18 = call i32 @ath_tx_handoff_mcast(%struct.ath_softc* %15, %struct.ath_txq* %16, %struct.ath_buf* %17)
  br label %24

19:                                               ; preds = %3
  %20 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %21 = load %struct.ath_txq*, %struct.ath_txq** %5, align 8
  %22 = load %struct.ath_buf*, %struct.ath_buf** %6, align 8
  %23 = call i32 @ath_tx_handoff_hw(%struct.ath_softc* %20, %struct.ath_txq* %21, %struct.ath_buf* %22)
  br label %24

24:                                               ; preds = %19, %14
  ret void
}

declare dso_local i32 @ATH_TX_LOCK_ASSERT(%struct.ath_softc*) #1

declare dso_local i32 @ath_tx_handoff_mcast(%struct.ath_softc*, %struct.ath_txq*, %struct.ath_buf*) #1

declare dso_local i32 @ath_tx_handoff_hw(%struct.ath_softc*, %struct.ath_txq*, %struct.ath_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
