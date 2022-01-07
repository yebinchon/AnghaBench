; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_ioctl.c_ath_ioctl_ratestats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_ioctl.c_ath_ioctl_ratestats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { %struct.ieee80211com }
%struct.ieee80211com = type { i32 }
%struct.ath_rateioctl = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ath_node = type { i32 }
%struct.ieee80211_node = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_softc*, %struct.ath_rateioctl*)* @ath_ioctl_ratestats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath_ioctl_ratestats(%struct.ath_softc* %0, %struct.ath_rateioctl* %1) #0 {
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca %struct.ath_rateioctl*, align 8
  %5 = alloca %struct.ath_node*, align 8
  %6 = alloca %struct.ieee80211com*, align 8
  %7 = alloca %struct.ieee80211_node*, align 8
  %8 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %3, align 8
  store %struct.ath_rateioctl* %1, %struct.ath_rateioctl** %4, align 8
  %9 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %10 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %9, i32 0, i32 0
  store %struct.ieee80211com* %10, %struct.ieee80211com** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %12 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %11, i32 0, i32 0
  %13 = load %struct.ath_rateioctl*, %struct.ath_rateioctl** %4, align 8
  %14 = getelementptr inbounds %struct.ath_rateioctl, %struct.ath_rateioctl* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.ieee80211_node* @ieee80211_find_node(i32* %12, i32 %16)
  store %struct.ieee80211_node* %17, %struct.ieee80211_node** %7, align 8
  %18 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %19 = icmp eq %struct.ieee80211_node* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %8, align 4
  br label %35

22:                                               ; preds = %2
  %23 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %24 = call %struct.ath_node* @ATH_NODE(%struct.ieee80211_node* %23)
  store %struct.ath_node* %24, %struct.ath_node** %5, align 8
  %25 = load %struct.ath_node*, %struct.ath_node** %5, align 8
  %26 = call i32 @ATH_NODE_LOCK(%struct.ath_node* %25)
  %27 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %28 = load %struct.ath_node*, %struct.ath_node** %5, align 8
  %29 = load %struct.ath_rateioctl*, %struct.ath_rateioctl** %4, align 8
  %30 = call i32 @ath_rate_fetch_node_stats(%struct.ath_softc* %27, %struct.ath_node* %28, %struct.ath_rateioctl* %29)
  store i32 %30, i32* %8, align 4
  %31 = load %struct.ath_node*, %struct.ath_node** %5, align 8
  %32 = call i32 @ATH_NODE_UNLOCK(%struct.ath_node* %31)
  %33 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %34 = call i32 @ieee80211_node_decref(%struct.ieee80211_node* %33)
  br label %35

35:                                               ; preds = %22, %20
  %36 = load i32, i32* %8, align 4
  ret i32 %36
}

declare dso_local %struct.ieee80211_node* @ieee80211_find_node(i32*, i32) #1

declare dso_local %struct.ath_node* @ATH_NODE(%struct.ieee80211_node*) #1

declare dso_local i32 @ATH_NODE_LOCK(%struct.ath_node*) #1

declare dso_local i32 @ath_rate_fetch_node_stats(%struct.ath_softc*, %struct.ath_node*, %struct.ath_rateioctl*) #1

declare dso_local i32 @ATH_NODE_UNLOCK(%struct.ath_node*) #1

declare dso_local i32 @ieee80211_node_decref(%struct.ieee80211_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
