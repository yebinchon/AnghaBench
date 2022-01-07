; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ht.c_ieee80211_ht_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ht.c_ieee80211_ht_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ieee80211_recv_action = common dso_local global i32 0, align 4
@ieee80211_send_action = common dso_local global i32 0, align 4
@ieee80211_ampdu_enable = common dso_local global i32 0, align 4
@ieee80211_addba_request = common dso_local global i32 0, align 4
@ieee80211_addba_response = common dso_local global i32 0, align 4
@null_addba_response_timeout = common dso_local global i32 0, align 4
@ieee80211_addba_stop = common dso_local global i32 0, align 4
@ieee80211_bar_response = common dso_local global i32 0, align 4
@ampdu_rx_start = common dso_local global i32 0, align 4
@ampdu_rx_stop = common dso_local global i32 0, align 4
@IEEE80211_PROT_RTSCTS = common dso_local global i32 0, align 4
@IEEE80211_HTINFO_OPMODE_PURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_ht_attach(%struct.ieee80211com* %0) #0 {
  %2 = alloca %struct.ieee80211com*, align 8
  store %struct.ieee80211com* %0, %struct.ieee80211com** %2, align 8
  %3 = load i32, i32* @ieee80211_recv_action, align 4
  %4 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %5 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %4, i32 0, i32 11
  store i32 %3, i32* %5, align 4
  %6 = load i32, i32* @ieee80211_send_action, align 4
  %7 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %8 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %7, i32 0, i32 10
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @ieee80211_ampdu_enable, align 4
  %10 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %11 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %10, i32 0, i32 9
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @ieee80211_addba_request, align 4
  %13 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %14 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %13, i32 0, i32 8
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @ieee80211_addba_response, align 4
  %16 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %17 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %16, i32 0, i32 7
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @null_addba_response_timeout, align 4
  %19 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %20 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %19, i32 0, i32 6
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @ieee80211_addba_stop, align 4
  %22 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %23 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %22, i32 0, i32 5
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @ieee80211_bar_response, align 4
  %25 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %26 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @ampdu_rx_start, align 4
  %28 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %29 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @ampdu_rx_stop, align 4
  %31 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %32 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @IEEE80211_PROT_RTSCTS, align 4
  %34 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %35 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @IEEE80211_HTINFO_OPMODE_PURE, align 4
  %37 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %38 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
