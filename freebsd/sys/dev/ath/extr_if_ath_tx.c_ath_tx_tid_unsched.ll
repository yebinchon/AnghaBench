; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_tx.c_ath_tx_tid_unsched.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_tx.c_ath_tx_tid_unsched.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { %struct.ath_txq** }
%struct.ath_txq = type { i32 }
%struct.ath_tid = type { i64, i64 }

@axq_qelem = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_softc*, %struct.ath_tid*)* @ath_tx_tid_unsched to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_tx_tid_unsched(%struct.ath_softc* %0, %struct.ath_tid* %1) #0 {
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca %struct.ath_tid*, align 8
  %5 = alloca %struct.ath_txq*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %3, align 8
  store %struct.ath_tid* %1, %struct.ath_tid** %4, align 8
  %6 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %7 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %6, i32 0, i32 0
  %8 = load %struct.ath_txq**, %struct.ath_txq*** %7, align 8
  %9 = load %struct.ath_tid*, %struct.ath_tid** %4, align 8
  %10 = getelementptr inbounds %struct.ath_tid, %struct.ath_tid* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.ath_txq*, %struct.ath_txq** %8, i64 %11
  %13 = load %struct.ath_txq*, %struct.ath_txq** %12, align 8
  store %struct.ath_txq* %13, %struct.ath_txq** %5, align 8
  %14 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %15 = call i32 @ATH_TX_LOCK_ASSERT(%struct.ath_softc* %14)
  %16 = load %struct.ath_tid*, %struct.ath_tid** %4, align 8
  %17 = getelementptr inbounds %struct.ath_tid, %struct.ath_tid* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %29

21:                                               ; preds = %2
  %22 = load %struct.ath_tid*, %struct.ath_tid** %4, align 8
  %23 = getelementptr inbounds %struct.ath_tid, %struct.ath_tid* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.ath_txq*, %struct.ath_txq** %5, align 8
  %25 = getelementptr inbounds %struct.ath_txq, %struct.ath_txq* %24, i32 0, i32 0
  %26 = load %struct.ath_tid*, %struct.ath_tid** %4, align 8
  %27 = load i32, i32* @axq_qelem, align 4
  %28 = call i32 @TAILQ_REMOVE(i32* %25, %struct.ath_tid* %26, i32 %27)
  br label %29

29:                                               ; preds = %21, %20
  ret void
}

declare dso_local i32 @ATH_TX_LOCK_ASSERT(%struct.ath_softc*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.ath_tid*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
