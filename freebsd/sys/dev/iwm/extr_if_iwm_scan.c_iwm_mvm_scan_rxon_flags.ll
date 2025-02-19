; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_scan.c_iwm_mvm_scan_rxon_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_scan.c_iwm_mvm_scan_rxon_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_channel = type { i32 }

@IWM_PHY_BAND_24 = common dso_local global i32 0, align 4
@IWM_PHY_BAND_5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_channel*)* @iwm_mvm_scan_rxon_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwm_mvm_scan_rxon_flags(%struct.ieee80211_channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_channel*, align 8
  store %struct.ieee80211_channel* %0, %struct.ieee80211_channel** %3, align 8
  %4 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %5 = call i64 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* @IWM_PHY_BAND_24, align 4
  %9 = call i32 @htole32(i32 %8)
  store i32 %9, i32* %2, align 4
  br label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @IWM_PHY_BAND_5, align 4
  %12 = call i32 @htole32(i32 %11)
  store i32 %12, i32* %2, align 4
  br label %13

13:                                               ; preds = %10, %7
  %14 = load i32, i32* %2, align 4
  ret i32 %14
}

declare dso_local i64 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel*) #1

declare dso_local i32 @htole32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
