; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ht.c_ieee80211_ht_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ht.c_ieee80211_ht_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ieee80211_ampdu_age = common dso_local global i8* null, align 8
@ieee80211_addba_timeout = common dso_local global i8* null, align 8
@ieee80211_addba_backoff = common dso_local global i8* null, align 8
@ieee80211_bar_timeout = common dso_local global i8* null, align 8
@IEEE80211_ACTION_CAT_BA = common dso_local global i32 0, align 4
@IEEE80211_ACTION_BA_ADDBA_REQUEST = common dso_local global i32 0, align 4
@ht_recv_action_ba_addba_request = common dso_local global i32 0, align 4
@IEEE80211_ACTION_BA_ADDBA_RESPONSE = common dso_local global i32 0, align 4
@ht_recv_action_ba_addba_response = common dso_local global i32 0, align 4
@IEEE80211_ACTION_BA_DELBA = common dso_local global i32 0, align 4
@ht_recv_action_ba_delba = common dso_local global i32 0, align 4
@IEEE80211_ACTION_CAT_HT = common dso_local global i32 0, align 4
@IEEE80211_ACTION_HT_MIMOPWRSAVE = common dso_local global i32 0, align 4
@ht_recv_action_ht_mimopwrsave = common dso_local global i32 0, align 4
@IEEE80211_ACTION_HT_TXCHWIDTH = common dso_local global i32 0, align 4
@ht_recv_action_ht_txchwidth = common dso_local global i32 0, align 4
@ht_send_action_ba_addba = common dso_local global i32 0, align 4
@ht_send_action_ba_delba = common dso_local global i32 0, align 4
@ht_send_action_ht_txchwidth = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ieee80211_ht_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_ht_init() #0 {
  %1 = call i8* @msecs_to_ticks(i32 500)
  store i8* %1, i8** @ieee80211_ampdu_age, align 8
  %2 = call i8* @msecs_to_ticks(i32 250)
  store i8* %2, i8** @ieee80211_addba_timeout, align 8
  %3 = call i8* @msecs_to_ticks(i32 10000)
  store i8* %3, i8** @ieee80211_addba_backoff, align 8
  %4 = call i8* @msecs_to_ticks(i32 250)
  store i8* %4, i8** @ieee80211_bar_timeout, align 8
  %5 = load i32, i32* @IEEE80211_ACTION_CAT_BA, align 4
  %6 = load i32, i32* @IEEE80211_ACTION_BA_ADDBA_REQUEST, align 4
  %7 = load i32, i32* @ht_recv_action_ba_addba_request, align 4
  %8 = call i32 @ieee80211_recv_action_register(i32 %5, i32 %6, i32 %7)
  %9 = load i32, i32* @IEEE80211_ACTION_CAT_BA, align 4
  %10 = load i32, i32* @IEEE80211_ACTION_BA_ADDBA_RESPONSE, align 4
  %11 = load i32, i32* @ht_recv_action_ba_addba_response, align 4
  %12 = call i32 @ieee80211_recv_action_register(i32 %9, i32 %10, i32 %11)
  %13 = load i32, i32* @IEEE80211_ACTION_CAT_BA, align 4
  %14 = load i32, i32* @IEEE80211_ACTION_BA_DELBA, align 4
  %15 = load i32, i32* @ht_recv_action_ba_delba, align 4
  %16 = call i32 @ieee80211_recv_action_register(i32 %13, i32 %14, i32 %15)
  %17 = load i32, i32* @IEEE80211_ACTION_CAT_HT, align 4
  %18 = load i32, i32* @IEEE80211_ACTION_HT_MIMOPWRSAVE, align 4
  %19 = load i32, i32* @ht_recv_action_ht_mimopwrsave, align 4
  %20 = call i32 @ieee80211_recv_action_register(i32 %17, i32 %18, i32 %19)
  %21 = load i32, i32* @IEEE80211_ACTION_CAT_HT, align 4
  %22 = load i32, i32* @IEEE80211_ACTION_HT_TXCHWIDTH, align 4
  %23 = load i32, i32* @ht_recv_action_ht_txchwidth, align 4
  %24 = call i32 @ieee80211_recv_action_register(i32 %21, i32 %22, i32 %23)
  %25 = load i32, i32* @IEEE80211_ACTION_CAT_BA, align 4
  %26 = load i32, i32* @IEEE80211_ACTION_BA_ADDBA_REQUEST, align 4
  %27 = load i32, i32* @ht_send_action_ba_addba, align 4
  %28 = call i32 @ieee80211_send_action_register(i32 %25, i32 %26, i32 %27)
  %29 = load i32, i32* @IEEE80211_ACTION_CAT_BA, align 4
  %30 = load i32, i32* @IEEE80211_ACTION_BA_ADDBA_RESPONSE, align 4
  %31 = load i32, i32* @ht_send_action_ba_addba, align 4
  %32 = call i32 @ieee80211_send_action_register(i32 %29, i32 %30, i32 %31)
  %33 = load i32, i32* @IEEE80211_ACTION_CAT_BA, align 4
  %34 = load i32, i32* @IEEE80211_ACTION_BA_DELBA, align 4
  %35 = load i32, i32* @ht_send_action_ba_delba, align 4
  %36 = call i32 @ieee80211_send_action_register(i32 %33, i32 %34, i32 %35)
  %37 = load i32, i32* @IEEE80211_ACTION_CAT_HT, align 4
  %38 = load i32, i32* @IEEE80211_ACTION_HT_TXCHWIDTH, align 4
  %39 = load i32, i32* @ht_send_action_ht_txchwidth, align 4
  %40 = call i32 @ieee80211_send_action_register(i32 %37, i32 %38, i32 %39)
  ret void
}

declare dso_local i8* @msecs_to_ticks(i32) #1

declare dso_local i32 @ieee80211_recv_action_register(i32, i32, i32) #1

declare dso_local i32 @ieee80211_send_action_register(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
