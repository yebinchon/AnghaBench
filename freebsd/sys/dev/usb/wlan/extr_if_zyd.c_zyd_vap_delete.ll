; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_zyd.c_zyd_vap_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_zyd.c_zyd_vap_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i32 }
%struct.zyd_vap = type { i32 }

@M_80211_VAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211vap*)* @zyd_vap_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zyd_vap_delete(%struct.ieee80211vap* %0) #0 {
  %2 = alloca %struct.ieee80211vap*, align 8
  %3 = alloca %struct.zyd_vap*, align 8
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %2, align 8
  %4 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %5 = call %struct.zyd_vap* @ZYD_VAP(%struct.ieee80211vap* %4)
  store %struct.zyd_vap* %5, %struct.zyd_vap** %3, align 8
  %6 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %7 = call i32 @ieee80211_ratectl_deinit(%struct.ieee80211vap* %6)
  %8 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %9 = call i32 @ieee80211_vap_detach(%struct.ieee80211vap* %8)
  %10 = load %struct.zyd_vap*, %struct.zyd_vap** %3, align 8
  %11 = load i32, i32* @M_80211_VAP, align 4
  %12 = call i32 @free(%struct.zyd_vap* %10, i32 %11)
  ret void
}

declare dso_local %struct.zyd_vap* @ZYD_VAP(%struct.ieee80211vap*) #1

declare dso_local i32 @ieee80211_ratectl_deinit(%struct.ieee80211vap*) #1

declare dso_local i32 @ieee80211_vap_detach(%struct.ieee80211vap*) #1

declare dso_local i32 @free(%struct.zyd_vap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
