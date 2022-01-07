; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_ev.c_sfxge_ev_qcomplete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_ev.c_sfxge_ev_qcomplete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_evq = type { i32, %struct.sfxge_txq*, %struct.sfxge_txq**, %struct.sfxge_softc* }
%struct.sfxge_txq = type { i32, i64, i64, %struct.sfxge_txq* }
%struct.sfxge_softc = type { %struct.sfxge_rxq** }
%struct.sfxge_rxq = type { i64, i64 }

@.str = private unnamed_addr constant [24 x i8] c"txq->evq_index != index\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sfxge_evq*, i32)* @sfxge_ev_qcomplete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sfxge_ev_qcomplete(%struct.sfxge_evq* %0, i32 %1) #0 {
  %3 = alloca %struct.sfxge_evq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sfxge_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sfxge_rxq*, align 8
  %8 = alloca %struct.sfxge_txq*, align 8
  %9 = alloca %struct.sfxge_txq*, align 8
  store %struct.sfxge_evq* %0, %struct.sfxge_evq** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.sfxge_evq*, %struct.sfxge_evq** %3, align 8
  %11 = call i32 @SFXGE_EVQ_LOCK_ASSERT_OWNED(%struct.sfxge_evq* %10)
  %12 = load %struct.sfxge_evq*, %struct.sfxge_evq** %3, align 8
  %13 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %12, i32 0, i32 3
  %14 = load %struct.sfxge_softc*, %struct.sfxge_softc** %13, align 8
  store %struct.sfxge_softc* %14, %struct.sfxge_softc** %5, align 8
  %15 = load %struct.sfxge_evq*, %struct.sfxge_evq** %3, align 8
  %16 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %6, align 4
  %18 = load %struct.sfxge_softc*, %struct.sfxge_softc** %5, align 8
  %19 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %18, i32 0, i32 0
  %20 = load %struct.sfxge_rxq**, %struct.sfxge_rxq*** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.sfxge_rxq*, %struct.sfxge_rxq** %20, i64 %22
  %24 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %23, align 8
  store %struct.sfxge_rxq* %24, %struct.sfxge_rxq** %7, align 8
  %25 = load %struct.sfxge_evq*, %struct.sfxge_evq** %3, align 8
  %26 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %25, i32 0, i32 1
  %27 = load %struct.sfxge_txq*, %struct.sfxge_txq** %26, align 8
  store %struct.sfxge_txq* %27, %struct.sfxge_txq** %8, align 8
  %28 = icmp ne %struct.sfxge_txq* %27, null
  br i1 %28, label %29, label %66

29:                                               ; preds = %2
  %30 = load %struct.sfxge_evq*, %struct.sfxge_evq** %3, align 8
  %31 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %30, i32 0, i32 1
  store %struct.sfxge_txq* null, %struct.sfxge_txq** %31, align 8
  %32 = load %struct.sfxge_evq*, %struct.sfxge_evq** %3, align 8
  %33 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %32, i32 0, i32 1
  %34 = load %struct.sfxge_evq*, %struct.sfxge_evq** %3, align 8
  %35 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %34, i32 0, i32 2
  store %struct.sfxge_txq** %33, %struct.sfxge_txq*** %35, align 8
  br label %36

36:                                               ; preds = %62, %29
  %37 = load %struct.sfxge_txq*, %struct.sfxge_txq** %8, align 8
  %38 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %37, i32 0, i32 3
  %39 = load %struct.sfxge_txq*, %struct.sfxge_txq** %38, align 8
  store %struct.sfxge_txq* %39, %struct.sfxge_txq** %9, align 8
  %40 = load %struct.sfxge_txq*, %struct.sfxge_txq** %8, align 8
  %41 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %40, i32 0, i32 3
  store %struct.sfxge_txq* null, %struct.sfxge_txq** %41, align 8
  %42 = load %struct.sfxge_txq*, %struct.sfxge_txq** %8, align 8
  %43 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = icmp eq i32 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @KASSERT(i32 %47, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %49 = load %struct.sfxge_txq*, %struct.sfxge_txq** %8, align 8
  %50 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.sfxge_txq*, %struct.sfxge_txq** %8, align 8
  %53 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %51, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %36
  %57 = load %struct.sfxge_txq*, %struct.sfxge_txq** %8, align 8
  %58 = load %struct.sfxge_evq*, %struct.sfxge_evq** %3, align 8
  %59 = call i32 @sfxge_tx_qcomplete(%struct.sfxge_txq* %57, %struct.sfxge_evq* %58)
  br label %60

60:                                               ; preds = %56, %36
  %61 = load %struct.sfxge_txq*, %struct.sfxge_txq** %9, align 8
  store %struct.sfxge_txq* %61, %struct.sfxge_txq** %8, align 8
  br label %62

62:                                               ; preds = %60
  %63 = load %struct.sfxge_txq*, %struct.sfxge_txq** %8, align 8
  %64 = icmp ne %struct.sfxge_txq* %63, null
  br i1 %64, label %36, label %65

65:                                               ; preds = %62
  br label %66

66:                                               ; preds = %65, %2
  %67 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %7, align 8
  %68 = getelementptr inbounds %struct.sfxge_rxq, %struct.sfxge_rxq* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %7, align 8
  %71 = getelementptr inbounds %struct.sfxge_rxq, %struct.sfxge_rxq* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %69, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %66
  %75 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %7, align 8
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @sfxge_rx_qcomplete(%struct.sfxge_rxq* %75, i32 %76)
  br label %78

78:                                               ; preds = %74, %66
  ret void
}

declare dso_local i32 @SFXGE_EVQ_LOCK_ASSERT_OWNED(%struct.sfxge_evq*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @sfxge_tx_qcomplete(%struct.sfxge_txq*, %struct.sfxge_evq*) #1

declare dso_local i32 @sfxge_rx_qcomplete(%struct.sfxge_rxq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
