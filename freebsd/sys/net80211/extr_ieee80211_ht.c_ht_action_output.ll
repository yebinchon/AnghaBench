; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ht.c_ht_action_output.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ht.c_ht_action_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.mbuf = type { i32 }
%struct.ieee80211_bpf_params = type { i32, i32, i32, i32 }

@WME_AC_VO = common dso_local global i32 0, align 4
@IEEE80211_FC0_SUBTYPE_ACTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_node*, %struct.mbuf*)* @ht_action_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ht_action_output(%struct.ieee80211_node* %0, %struct.mbuf* %1) #0 {
  %3 = alloca %struct.ieee80211_node*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca %struct.ieee80211_bpf_params, align 4
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %3, align 8
  store %struct.mbuf* %1, %struct.mbuf** %4, align 8
  %6 = call i32 @memset(%struct.ieee80211_bpf_params* %5, i32 0, i32 16)
  %7 = load i32, i32* @WME_AC_VO, align 4
  %8 = getelementptr inbounds %struct.ieee80211_bpf_params, %struct.ieee80211_bpf_params* %5, i32 0, i32 3
  store i32 %7, i32* %8, align 4
  %9 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %10 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.ieee80211_bpf_params, %struct.ieee80211_bpf_params* %5, i32 0, i32 2
  store i32 %13, i32* %14, align 4
  %15 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %16 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.ieee80211_bpf_params, %struct.ieee80211_bpf_params* %5, i32 0, i32 1
  store i32 %19, i32* %20, align 4
  %21 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %22 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = getelementptr inbounds %struct.ieee80211_bpf_params, %struct.ieee80211_bpf_params* %5, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %26 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %27 = load i32, i32* @IEEE80211_FC0_SUBTYPE_ACTION, align 4
  %28 = call i32 @ieee80211_mgmt_output(%struct.ieee80211_node* %25, %struct.mbuf* %26, i32 %27, %struct.ieee80211_bpf_params* %5)
  ret i32 %28
}

declare dso_local i32 @memset(%struct.ieee80211_bpf_params*, i32, i32) #1

declare dso_local i32 @ieee80211_mgmt_output(%struct.ieee80211_node*, %struct.mbuf*, i32, %struct.ieee80211_bpf_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
