; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_wds.c_wds_vattach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_wds.c_wds_vattach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i32, i32, i32, i32 }

@wds_newstate = common dso_local global i32 0, align 4
@wds_input = common dso_local global i32 0, align 4
@wds_recv_mgmt = common dso_local global i32 0, align 4
@wds_vdetach = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211vap*)* @wds_vattach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wds_vattach(%struct.ieee80211vap* %0) #0 {
  %2 = alloca %struct.ieee80211vap*, align 8
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %2, align 8
  %3 = load i32, i32* @wds_newstate, align 4
  %4 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %5 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %4, i32 0, i32 3
  store i32 %3, i32* %5, align 4
  %6 = load i32, i32* @wds_input, align 4
  %7 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %8 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %7, i32 0, i32 2
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @wds_recv_mgmt, align 4
  %10 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %11 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @wds_vdetach, align 4
  %13 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %14 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
