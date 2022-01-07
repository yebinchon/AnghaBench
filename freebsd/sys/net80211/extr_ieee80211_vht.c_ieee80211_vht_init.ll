; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_vht.c_ieee80211_vht_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_vht.c_ieee80211_vht_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IEEE80211_ACTION_CAT_VHT = common dso_local global i32 0, align 4
@WLAN_ACTION_VHT_COMPRESSED_BF = common dso_local global i32 0, align 4
@vht_recv_action_placeholder = common dso_local global i32 0, align 4
@WLAN_ACTION_VHT_GROUPID_MGMT = common dso_local global i32 0, align 4
@WLAN_ACTION_VHT_OPMODE_NOTIF = common dso_local global i32 0, align 4
@vht_send_action_placeholder = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ieee80211_vht_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_vht_init() #0 {
  %1 = load i32, i32* @IEEE80211_ACTION_CAT_VHT, align 4
  %2 = load i32, i32* @WLAN_ACTION_VHT_COMPRESSED_BF, align 4
  %3 = load i32, i32* @vht_recv_action_placeholder, align 4
  %4 = call i32 @ieee80211_recv_action_register(i32 %1, i32 %2, i32 %3)
  %5 = load i32, i32* @IEEE80211_ACTION_CAT_VHT, align 4
  %6 = load i32, i32* @WLAN_ACTION_VHT_GROUPID_MGMT, align 4
  %7 = load i32, i32* @vht_recv_action_placeholder, align 4
  %8 = call i32 @ieee80211_recv_action_register(i32 %5, i32 %6, i32 %7)
  %9 = load i32, i32* @IEEE80211_ACTION_CAT_VHT, align 4
  %10 = load i32, i32* @WLAN_ACTION_VHT_OPMODE_NOTIF, align 4
  %11 = load i32, i32* @vht_recv_action_placeholder, align 4
  %12 = call i32 @ieee80211_recv_action_register(i32 %9, i32 %10, i32 %11)
  %13 = load i32, i32* @IEEE80211_ACTION_CAT_VHT, align 4
  %14 = load i32, i32* @WLAN_ACTION_VHT_COMPRESSED_BF, align 4
  %15 = load i32, i32* @vht_send_action_placeholder, align 4
  %16 = call i32 @ieee80211_send_action_register(i32 %13, i32 %14, i32 %15)
  %17 = load i32, i32* @IEEE80211_ACTION_CAT_VHT, align 4
  %18 = load i32, i32* @WLAN_ACTION_VHT_GROUPID_MGMT, align 4
  %19 = load i32, i32* @vht_send_action_placeholder, align 4
  %20 = call i32 @ieee80211_send_action_register(i32 %17, i32 %18, i32 %19)
  %21 = load i32, i32* @IEEE80211_ACTION_CAT_VHT, align 4
  %22 = load i32, i32* @WLAN_ACTION_VHT_OPMODE_NOTIF, align 4
  %23 = load i32, i32* @vht_send_action_placeholder, align 4
  %24 = call i32 @ieee80211_send_action_register(i32 %21, i32 %22, i32 %23)
  ret void
}

declare dso_local i32 @ieee80211_recv_action_register(i32, i32, i32) #1

declare dso_local i32 @ieee80211_send_action_register(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
