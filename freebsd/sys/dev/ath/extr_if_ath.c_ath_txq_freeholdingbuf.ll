; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath.c_ath_txq_freeholdingbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath.c_ath_txq_freeholdingbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32 }
%struct.ath_txq = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ATH_BUF_BUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath_txq_freeholdingbuf(%struct.ath_softc* %0, %struct.ath_txq* %1) #0 {
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca %struct.ath_txq*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %3, align 8
  store %struct.ath_txq* %1, %struct.ath_txq** %4, align 8
  %5 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %6 = call i32 @ATH_TXBUF_UNLOCK_ASSERT(%struct.ath_softc* %5)
  %7 = load %struct.ath_txq*, %struct.ath_txq** %4, align 8
  %8 = call i32 @ATH_TXQ_LOCK_ASSERT(%struct.ath_txq* %7)
  %9 = load %struct.ath_txq*, %struct.ath_txq** %4, align 8
  %10 = getelementptr inbounds %struct.ath_txq, %struct.ath_txq* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp eq %struct.TYPE_2__* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %34

14:                                               ; preds = %2
  %15 = load i32, i32* @ATH_BUF_BUSY, align 4
  %16 = xor i32 %15, -1
  %17 = load %struct.ath_txq*, %struct.ath_txq** %4, align 8
  %18 = getelementptr inbounds %struct.ath_txq, %struct.ath_txq* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, %16
  store i32 %22, i32* %20, align 4
  %23 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %24 = call i32 @ATH_TXBUF_LOCK(%struct.ath_softc* %23)
  %25 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %26 = load %struct.ath_txq*, %struct.ath_txq** %4, align 8
  %27 = getelementptr inbounds %struct.ath_txq, %struct.ath_txq* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = call i32 @ath_returnbuf_tail(%struct.ath_softc* %25, %struct.TYPE_2__* %28)
  %30 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %31 = call i32 @ATH_TXBUF_UNLOCK(%struct.ath_softc* %30)
  %32 = load %struct.ath_txq*, %struct.ath_txq** %4, align 8
  %33 = getelementptr inbounds %struct.ath_txq, %struct.ath_txq* %32, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %33, align 8
  br label %34

34:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @ATH_TXBUF_UNLOCK_ASSERT(%struct.ath_softc*) #1

declare dso_local i32 @ATH_TXQ_LOCK_ASSERT(%struct.ath_txq*) #1

declare dso_local i32 @ATH_TXBUF_LOCK(%struct.ath_softc*) #1

declare dso_local i32 @ath_returnbuf_tail(%struct.ath_softc*, %struct.TYPE_2__*) #1

declare dso_local i32 @ATH_TXBUF_UNLOCK(%struct.ath_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
