; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_beacon.c_ath_beacon_cabq_start_legacy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_beacon.c_ath_beacon_cabq_start_legacy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, %struct.ath_txq* }
%struct.ath_txq = type { i32, i32, i32 }
%struct.ath_buf = type { i32 }

@ATH_TXQ_PUTRUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_softc*)* @ath_beacon_cabq_start_legacy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_beacon_cabq_start_legacy(%struct.ath_softc* %0) #0 {
  %2 = alloca %struct.ath_softc*, align 8
  %3 = alloca %struct.ath_buf*, align 8
  %4 = alloca %struct.ath_txq*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %2, align 8
  %5 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %6 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %5, i32 0, i32 1
  %7 = load %struct.ath_txq*, %struct.ath_txq** %6, align 8
  store %struct.ath_txq* %7, %struct.ath_txq** %4, align 8
  %8 = load %struct.ath_txq*, %struct.ath_txq** %4, align 8
  %9 = call i32 @ATH_TXQ_LOCK_ASSERT(%struct.ath_txq* %8)
  %10 = load %struct.ath_txq*, %struct.ath_txq** %4, align 8
  %11 = getelementptr inbounds %struct.ath_txq, %struct.ath_txq* %10, i32 0, i32 2
  %12 = call i64 @TAILQ_EMPTY(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %41

15:                                               ; preds = %1
  %16 = load %struct.ath_txq*, %struct.ath_txq** %4, align 8
  %17 = getelementptr inbounds %struct.ath_txq, %struct.ath_txq* %16, i32 0, i32 2
  %18 = call %struct.ath_buf* @TAILQ_FIRST(i32* %17)
  store %struct.ath_buf* %18, %struct.ath_buf** %3, align 8
  %19 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %20 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.ath_txq*, %struct.ath_txq** %4, align 8
  %23 = getelementptr inbounds %struct.ath_txq, %struct.ath_txq* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ath_buf*, %struct.ath_buf** %3, align 8
  %26 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ath_hal_puttxbuf(i32 %21, i32 %24, i32 %27)
  %29 = load i32, i32* @ATH_TXQ_PUTRUNNING, align 4
  %30 = load %struct.ath_txq*, %struct.ath_txq** %4, align 8
  %31 = getelementptr inbounds %struct.ath_txq, %struct.ath_txq* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %35 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.ath_txq*, %struct.ath_txq** %4, align 8
  %38 = getelementptr inbounds %struct.ath_txq, %struct.ath_txq* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ath_hal_txstart(i32 %36, i32 %39)
  br label %41

41:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @ATH_TXQ_LOCK_ASSERT(%struct.ath_txq*) #1

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

declare dso_local %struct.ath_buf* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @ath_hal_puttxbuf(i32, i32, i32) #1

declare dso_local i32 @ath_hal_txstart(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
