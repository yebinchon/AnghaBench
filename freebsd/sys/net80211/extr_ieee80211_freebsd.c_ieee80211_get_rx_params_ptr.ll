; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_freebsd.c_ieee80211_get_rx_params_ptr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_freebsd.c_ieee80211_get_rx_params_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_rx_stats = type { i32 }
%struct.mbuf = type { i32 }
%struct.m_tag = type { i32 }
%struct.ieee80211_rx_params = type { %struct.ieee80211_rx_stats }

@MTAG_ABI_NET80211 = common dso_local global i32 0, align 4
@NET80211_TAG_RECV_PARAMS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ieee80211_rx_stats* @ieee80211_get_rx_params_ptr(%struct.mbuf* %0) #0 {
  %2 = alloca %struct.ieee80211_rx_stats*, align 8
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca %struct.m_tag*, align 8
  %5 = alloca %struct.ieee80211_rx_params*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %3, align 8
  %6 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %7 = load i32, i32* @MTAG_ABI_NET80211, align 4
  %8 = load i32, i32* @NET80211_TAG_RECV_PARAMS, align 4
  %9 = call %struct.m_tag* @m_tag_locate(%struct.mbuf* %6, i32 %7, i32 %8, i32* null)
  store %struct.m_tag* %9, %struct.m_tag** %4, align 8
  %10 = load %struct.m_tag*, %struct.m_tag** %4, align 8
  %11 = icmp eq %struct.m_tag* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store %struct.ieee80211_rx_stats* null, %struct.ieee80211_rx_stats** %2, align 8
  br label %19

13:                                               ; preds = %1
  %14 = load %struct.m_tag*, %struct.m_tag** %4, align 8
  %15 = getelementptr inbounds %struct.m_tag, %struct.m_tag* %14, i64 1
  %16 = bitcast %struct.m_tag* %15 to %struct.ieee80211_rx_params*
  store %struct.ieee80211_rx_params* %16, %struct.ieee80211_rx_params** %5, align 8
  %17 = load %struct.ieee80211_rx_params*, %struct.ieee80211_rx_params** %5, align 8
  %18 = getelementptr inbounds %struct.ieee80211_rx_params, %struct.ieee80211_rx_params* %17, i32 0, i32 0
  store %struct.ieee80211_rx_stats* %18, %struct.ieee80211_rx_stats** %2, align 8
  br label %19

19:                                               ; preds = %13, %12
  %20 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %2, align 8
  ret %struct.ieee80211_rx_stats* %20
}

declare dso_local %struct.m_tag* @m_tag_locate(%struct.mbuf*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
