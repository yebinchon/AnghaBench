; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_tx.c_ath_tx_txq_drain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_tx.c_ath_tx_txq_drain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32 }
%struct.ath_txq = type { i32 }
%struct.ath_tid = type { i32 }
%struct.ath_buf = type { i32 }

@bf_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath_tx_txq_drain(%struct.ath_softc* %0, %struct.ath_txq* %1) #0 {
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca %struct.ath_txq*, align 8
  %5 = alloca %struct.ath_tid*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath_buf*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %3, align 8
  store %struct.ath_txq* %1, %struct.ath_txq** %4, align 8
  %8 = call i32 @TAILQ_INIT(i32* %6)
  %9 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %10 = call i32 @ATH_TX_LOCK(%struct.ath_softc* %9)
  br label %11

11:                                               ; preds = %17, %2
  %12 = load %struct.ath_txq*, %struct.ath_txq** %4, align 8
  %13 = getelementptr inbounds %struct.ath_txq, %struct.ath_txq* %12, i32 0, i32 0
  %14 = call i32 @TAILQ_EMPTY(i32* %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  br i1 %16, label %17, label %31

17:                                               ; preds = %11
  %18 = load %struct.ath_txq*, %struct.ath_txq** %4, align 8
  %19 = getelementptr inbounds %struct.ath_txq, %struct.ath_txq* %18, i32 0, i32 0
  %20 = call i8* @TAILQ_FIRST(i32* %19)
  %21 = bitcast i8* %20 to %struct.ath_tid*
  store %struct.ath_tid* %21, %struct.ath_tid** %5, align 8
  %22 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %23 = load %struct.ath_tid*, %struct.ath_tid** %5, align 8
  %24 = getelementptr inbounds %struct.ath_tid, %struct.ath_tid* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ath_tid*, %struct.ath_tid** %5, align 8
  %27 = call i32 @ath_tx_tid_drain(%struct.ath_softc* %22, i32 %25, %struct.ath_tid* %26, i32* %6)
  %28 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %29 = load %struct.ath_tid*, %struct.ath_tid** %5, align 8
  %30 = call i32 @ath_tx_tid_unsched(%struct.ath_softc* %28, %struct.ath_tid* %29)
  br label %11

31:                                               ; preds = %11
  %32 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %33 = call i32 @ATH_TX_UNLOCK(%struct.ath_softc* %32)
  br label %34

34:                                               ; preds = %38, %31
  %35 = call i8* @TAILQ_FIRST(i32* %6)
  %36 = bitcast i8* %35 to %struct.ath_buf*
  store %struct.ath_buf* %36, %struct.ath_buf** %7, align 8
  %37 = icmp ne %struct.ath_buf* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %34
  %39 = load %struct.ath_buf*, %struct.ath_buf** %7, align 8
  %40 = load i32, i32* @bf_list, align 4
  %41 = call i32 @TAILQ_REMOVE(i32* %6, %struct.ath_buf* %39, i32 %40)
  %42 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %43 = load %struct.ath_buf*, %struct.ath_buf** %7, align 8
  %44 = call i32 @ath_tx_default_comp(%struct.ath_softc* %42, %struct.ath_buf* %43, i32 0)
  br label %34

45:                                               ; preds = %34
  ret void
}

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @ATH_TX_LOCK(%struct.ath_softc*) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local i8* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @ath_tx_tid_drain(%struct.ath_softc*, i32, %struct.ath_tid*, i32*) #1

declare dso_local i32 @ath_tx_tid_unsched(%struct.ath_softc*, %struct.ath_tid*) #1

declare dso_local i32 @ATH_TX_UNLOCK(%struct.ath_softc*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.ath_buf*, i32) #1

declare dso_local i32 @ath_tx_default_comp(%struct.ath_softc*, %struct.ath_buf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
