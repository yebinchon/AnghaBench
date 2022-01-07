; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_freebsd.c_ieee80211_get_rx_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_freebsd.c_ieee80211_get_rx_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.ieee80211_rx_stats = type { i32 }
%struct.m_tag = type { i32 }
%struct.ieee80211_rx_params = type { i32 }

@MTAG_ABI_NET80211 = common dso_local global i32 0, align 4
@NET80211_TAG_RECV_PARAMS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_get_rx_params(%struct.mbuf* %0, %struct.ieee80211_rx_stats* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca %struct.ieee80211_rx_stats*, align 8
  %6 = alloca %struct.m_tag*, align 8
  %7 = alloca %struct.ieee80211_rx_params*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %4, align 8
  store %struct.ieee80211_rx_stats* %1, %struct.ieee80211_rx_stats** %5, align 8
  %8 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %9 = load i32, i32* @MTAG_ABI_NET80211, align 4
  %10 = load i32, i32* @NET80211_TAG_RECV_PARAMS, align 4
  %11 = call %struct.m_tag* @m_tag_locate(%struct.mbuf* %8, i32 %9, i32 %10, i32* null)
  store %struct.m_tag* %11, %struct.m_tag** %6, align 8
  %12 = load %struct.m_tag*, %struct.m_tag** %6, align 8
  %13 = icmp eq %struct.m_tag* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %23

15:                                               ; preds = %2
  %16 = load %struct.m_tag*, %struct.m_tag** %6, align 8
  %17 = getelementptr inbounds %struct.m_tag, %struct.m_tag* %16, i64 1
  %18 = bitcast %struct.m_tag* %17 to %struct.ieee80211_rx_params*
  store %struct.ieee80211_rx_params* %18, %struct.ieee80211_rx_params** %7, align 8
  %19 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %5, align 8
  %20 = load %struct.ieee80211_rx_params*, %struct.ieee80211_rx_params** %7, align 8
  %21 = getelementptr inbounds %struct.ieee80211_rx_params, %struct.ieee80211_rx_params* %20, i32 0, i32 0
  %22 = call i32 @memcpy(%struct.ieee80211_rx_stats* %19, i32* %21, i32 4)
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %15, %14
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local %struct.m_tag* @m_tag_locate(%struct.mbuf*, i32, i32, i32*) #1

declare dso_local i32 @memcpy(%struct.ieee80211_rx_stats*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
