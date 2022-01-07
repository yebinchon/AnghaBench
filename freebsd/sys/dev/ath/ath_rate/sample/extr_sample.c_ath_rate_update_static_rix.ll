; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_rate/sample/extr_sample.c_ath_rate_update_static_rix.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_rate/sample/extr_sample.c_ath_rate_update_static_rix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32 }
%struct.ieee80211_node = type { %struct.ieee80211_txparam* }
%struct.ieee80211_txparam = type { i64 }
%struct.ath_node = type { i32 }
%struct.sample_node = type { i32 }

@IEEE80211_FIXED_RATE_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_softc*, %struct.ieee80211_node*)* @ath_rate_update_static_rix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_rate_update_static_rix(%struct.ath_softc* %0, %struct.ieee80211_node* %1) #0 {
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca %struct.ieee80211_node*, align 8
  %5 = alloca %struct.ath_node*, align 8
  %6 = alloca %struct.ieee80211_txparam*, align 8
  %7 = alloca %struct.sample_node*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %3, align 8
  store %struct.ieee80211_node* %1, %struct.ieee80211_node** %4, align 8
  %8 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %9 = call %struct.ath_node* @ATH_NODE(%struct.ieee80211_node* %8)
  store %struct.ath_node* %9, %struct.ath_node** %5, align 8
  %10 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %10, i32 0, i32 0
  %12 = load %struct.ieee80211_txparam*, %struct.ieee80211_txparam** %11, align 8
  store %struct.ieee80211_txparam* %12, %struct.ieee80211_txparam** %6, align 8
  %13 = load %struct.ath_node*, %struct.ath_node** %5, align 8
  %14 = call %struct.sample_node* @ATH_NODE_SAMPLE(%struct.ath_node* %13)
  store %struct.sample_node* %14, %struct.sample_node** %7, align 8
  %15 = load %struct.ieee80211_txparam*, %struct.ieee80211_txparam** %6, align 8
  %16 = icmp ne %struct.ieee80211_txparam* %15, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %2
  %18 = load %struct.ieee80211_txparam*, %struct.ieee80211_txparam** %6, align 8
  %19 = getelementptr inbounds %struct.ieee80211_txparam, %struct.ieee80211_txparam* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @IEEE80211_FIXED_RATE_NONE, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  %24 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %25 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %26 = call i32 @ath_rate_get_static_rix(%struct.ath_softc* %24, %struct.ieee80211_node* %25)
  %27 = load %struct.sample_node*, %struct.sample_node** %7, align 8
  %28 = getelementptr inbounds %struct.sample_node, %struct.sample_node* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  br label %32

29:                                               ; preds = %17, %2
  %30 = load %struct.sample_node*, %struct.sample_node** %7, align 8
  %31 = getelementptr inbounds %struct.sample_node, %struct.sample_node* %30, i32 0, i32 0
  store i32 -1, i32* %31, align 4
  br label %32

32:                                               ; preds = %29, %23
  ret void
}

declare dso_local %struct.ath_node* @ATH_NODE(%struct.ieee80211_node*) #1

declare dso_local %struct.sample_node* @ATH_NODE_SAMPLE(%struct.ath_node*) #1

declare dso_local i32 @ath_rate_get_static_rix(%struct.ath_softc*, %struct.ieee80211_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
