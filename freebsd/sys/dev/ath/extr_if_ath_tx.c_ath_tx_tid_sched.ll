; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_tx.c_ath_tx_tid_sched.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_tx.c_ath_tx_tid_sched.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { %struct.ath_txq** }
%struct.ath_txq = type { i32 }
%struct.ath_tid = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@axq_qelem = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath_tx_tid_sched(%struct.ath_softc* %0, %struct.ath_tid* %1) #0 {
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
  %16 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %17 = load %struct.ath_tid*, %struct.ath_tid** %4, align 8
  %18 = call i32 @ath_tx_tid_can_tx_or_sched(%struct.ath_softc* %16, %struct.ath_tid* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %35

21:                                               ; preds = %2
  %22 = load %struct.ath_tid*, %struct.ath_tid** %4, align 8
  %23 = getelementptr inbounds %struct.ath_tid, %struct.ath_tid* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %35

27:                                               ; preds = %21
  %28 = load %struct.ath_tid*, %struct.ath_tid** %4, align 8
  %29 = getelementptr inbounds %struct.ath_tid, %struct.ath_tid* %28, i32 0, i32 1
  store i32 1, i32* %29, align 8
  %30 = load %struct.ath_txq*, %struct.ath_txq** %5, align 8
  %31 = getelementptr inbounds %struct.ath_txq, %struct.ath_txq* %30, i32 0, i32 0
  %32 = load %struct.ath_tid*, %struct.ath_tid** %4, align 8
  %33 = load i32, i32* @axq_qelem, align 4
  %34 = call i32 @TAILQ_INSERT_TAIL(i32* %31, %struct.ath_tid* %32, i32 %33)
  br label %35

35:                                               ; preds = %27, %26, %20
  ret void
}

declare dso_local i32 @ATH_TX_LOCK_ASSERT(%struct.ath_softc*) #1

declare dso_local i32 @ath_tx_tid_can_tx_or_sched(%struct.ath_softc*, %struct.ath_tid*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.ath_tid*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
