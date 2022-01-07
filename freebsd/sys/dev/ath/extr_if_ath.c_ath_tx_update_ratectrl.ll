; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath.c_ath_tx_update_ratectrl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath.c_ath_tx_update_ratectrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32 }
%struct.ieee80211_node = type { i32 }
%struct.ath_rc_series = type { i32 }
%struct.ath_tx_status = type { i32 }
%struct.ath_node = type { i32 }

@HAL_TXERR_FILT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath_tx_update_ratectrl(%struct.ath_softc* %0, %struct.ieee80211_node* %1, %struct.ath_rc_series* %2, %struct.ath_tx_status* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.ath_softc*, align 8
  %9 = alloca %struct.ieee80211_node*, align 8
  %10 = alloca %struct.ath_rc_series*, align 8
  %11 = alloca %struct.ath_tx_status*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ath_node*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %8, align 8
  store %struct.ieee80211_node* %1, %struct.ieee80211_node** %9, align 8
  store %struct.ath_rc_series* %2, %struct.ath_rc_series** %10, align 8
  store %struct.ath_tx_status* %3, %struct.ath_tx_status** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %16 = load %struct.ieee80211_node*, %struct.ieee80211_node** %9, align 8
  %17 = icmp eq %struct.ieee80211_node* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %7
  br label %43

19:                                               ; preds = %7
  %20 = load %struct.ieee80211_node*, %struct.ieee80211_node** %9, align 8
  %21 = call %struct.ath_node* @ATH_NODE(%struct.ieee80211_node* %20)
  store %struct.ath_node* %21, %struct.ath_node** %15, align 8
  %22 = load %struct.ath_node*, %struct.ath_node** %15, align 8
  %23 = call i32 @ATH_NODE_UNLOCK_ASSERT(%struct.ath_node* %22)
  %24 = load %struct.ath_tx_status*, %struct.ath_tx_status** %11, align 8
  %25 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @HAL_TXERR_FILT, align 4
  %28 = and i32 %26, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %19
  %31 = load %struct.ath_node*, %struct.ath_node** %15, align 8
  %32 = call i32 @ATH_NODE_LOCK(%struct.ath_node* %31)
  %33 = load %struct.ath_softc*, %struct.ath_softc** %8, align 8
  %34 = load %struct.ath_node*, %struct.ath_node** %15, align 8
  %35 = load %struct.ath_rc_series*, %struct.ath_rc_series** %10, align 8
  %36 = load %struct.ath_tx_status*, %struct.ath_tx_status** %11, align 8
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* %14, align 4
  %40 = call i32 @ath_rate_tx_complete(%struct.ath_softc* %33, %struct.ath_node* %34, %struct.ath_rc_series* %35, %struct.ath_tx_status* %36, i32 %37, i32 %38, i32 %39)
  %41 = load %struct.ath_node*, %struct.ath_node** %15, align 8
  %42 = call i32 @ATH_NODE_UNLOCK(%struct.ath_node* %41)
  br label %43

43:                                               ; preds = %18, %30, %19
  ret void
}

declare dso_local %struct.ath_node* @ATH_NODE(%struct.ieee80211_node*) #1

declare dso_local i32 @ATH_NODE_UNLOCK_ASSERT(%struct.ath_node*) #1

declare dso_local i32 @ATH_NODE_LOCK(%struct.ath_node*) #1

declare dso_local i32 @ath_rate_tx_complete(%struct.ath_softc*, %struct.ath_node*, %struct.ath_rc_series*, %struct.ath_tx_status*, i32, i32, i32) #1

declare dso_local i32 @ATH_NODE_UNLOCK(%struct.ath_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
