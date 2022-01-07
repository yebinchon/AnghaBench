; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath.c_ath_tx_process_buf_completion.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath.c_ath_tx_process_buf_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32 }
%struct.ath_txq = type { i32 }
%struct.ath_tx_status = type { i32 }
%struct.ath_buf = type { i32 (%struct.ath_softc*, %struct.ath_buf*, i32)*, %struct.TYPE_2__, %struct.ieee80211_node* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.ieee80211_node = type { i32 }

@HAL_TXERR_FILT = common dso_local global i32 0, align 4
@HAL_TXDESC_NOACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath_tx_process_buf_completion(%struct.ath_softc* %0, %struct.ath_txq* %1, %struct.ath_tx_status* %2, %struct.ath_buf* %3) #0 {
  %5 = alloca %struct.ath_softc*, align 8
  %6 = alloca %struct.ath_txq*, align 8
  %7 = alloca %struct.ath_tx_status*, align 8
  %8 = alloca %struct.ath_buf*, align 8
  %9 = alloca %struct.ieee80211_node*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %5, align 8
  store %struct.ath_txq* %1, %struct.ath_txq** %6, align 8
  store %struct.ath_tx_status* %2, %struct.ath_tx_status** %7, align 8
  store %struct.ath_buf* %3, %struct.ath_buf** %8, align 8
  %10 = load %struct.ath_buf*, %struct.ath_buf** %8, align 8
  %11 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %10, i32 0, i32 2
  %12 = load %struct.ieee80211_node*, %struct.ieee80211_node** %11, align 8
  store %struct.ieee80211_node* %12, %struct.ieee80211_node** %9, align 8
  %13 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %14 = call i32 @ATH_TX_UNLOCK_ASSERT(%struct.ath_softc* %13)
  %15 = load %struct.ath_txq*, %struct.ath_txq** %6, align 8
  %16 = call i32 @ATH_TXQ_UNLOCK_ASSERT(%struct.ath_txq* %15)
  %17 = load %struct.ieee80211_node*, %struct.ieee80211_node** %9, align 8
  %18 = icmp ne %struct.ieee80211_node* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %4
  %20 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %21 = load %struct.ath_tx_status*, %struct.ath_tx_status** %7, align 8
  %22 = load %struct.ath_buf*, %struct.ath_buf** %8, align 8
  %23 = call i32 @ath_tx_update_stats(%struct.ath_softc* %20, %struct.ath_tx_status* %21, %struct.ath_buf* %22)
  br label %24

24:                                               ; preds = %19, %4
  %25 = load %struct.ath_buf*, %struct.ath_buf** %8, align 8
  %26 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %25, i32 0, i32 0
  %27 = load i32 (%struct.ath_softc*, %struct.ath_buf*, i32)*, i32 (%struct.ath_softc*, %struct.ath_buf*, i32)** %26, align 8
  %28 = icmp eq i32 (%struct.ath_softc*, %struct.ath_buf*, i32)* %27, null
  br i1 %28, label %29, label %67

29:                                               ; preds = %24
  %30 = load %struct.ath_tx_status*, %struct.ath_tx_status** %7, align 8
  %31 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @HAL_TXERR_FILT, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %63

36:                                               ; preds = %29
  %37 = load %struct.ath_buf*, %struct.ath_buf** %8, align 8
  %38 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @HAL_TXDESC_NOACK, align 4
  %42 = and i32 %40, %41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %63

44:                                               ; preds = %36
  %45 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %46 = load %struct.ieee80211_node*, %struct.ieee80211_node** %9, align 8
  %47 = load %struct.ath_buf*, %struct.ath_buf** %8, align 8
  %48 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.ath_tx_status*, %struct.ath_tx_status** %7, align 8
  %52 = load %struct.ath_buf*, %struct.ath_buf** %8, align 8
  %53 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ath_tx_status*, %struct.ath_tx_status** %7, align 8
  %57 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 0, i32 1
  %62 = call i32 @ath_tx_update_ratectrl(%struct.ath_softc* %45, %struct.ieee80211_node* %46, i32 %50, %struct.ath_tx_status* %51, i32 %55, i32 1, i32 %61)
  br label %63

63:                                               ; preds = %44, %36, %29
  %64 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %65 = load %struct.ath_buf*, %struct.ath_buf** %8, align 8
  %66 = call i32 @ath_tx_default_comp(%struct.ath_softc* %64, %struct.ath_buf* %65, i32 0)
  br label %74

67:                                               ; preds = %24
  %68 = load %struct.ath_buf*, %struct.ath_buf** %8, align 8
  %69 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %68, i32 0, i32 0
  %70 = load i32 (%struct.ath_softc*, %struct.ath_buf*, i32)*, i32 (%struct.ath_softc*, %struct.ath_buf*, i32)** %69, align 8
  %71 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %72 = load %struct.ath_buf*, %struct.ath_buf** %8, align 8
  %73 = call i32 %70(%struct.ath_softc* %71, %struct.ath_buf* %72, i32 0)
  br label %74

74:                                               ; preds = %67, %63
  ret void
}

declare dso_local i32 @ATH_TX_UNLOCK_ASSERT(%struct.ath_softc*) #1

declare dso_local i32 @ATH_TXQ_UNLOCK_ASSERT(%struct.ath_txq*) #1

declare dso_local i32 @ath_tx_update_stats(%struct.ath_softc*, %struct.ath_tx_status*, %struct.ath_buf*) #1

declare dso_local i32 @ath_tx_update_ratectrl(%struct.ath_softc*, %struct.ieee80211_node*, i32, %struct.ath_tx_status*, i32, i32, i32) #1

declare dso_local i32 @ath_tx_default_comp(%struct.ath_softc*, %struct.ath_buf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
