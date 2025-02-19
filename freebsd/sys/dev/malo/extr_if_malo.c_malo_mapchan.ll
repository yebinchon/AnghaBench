; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/malo/extr_if_malo.c_malo_mapchan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/malo/extr_if_malo.c_malo_mapchan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.malo_hal_channel = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_channel = type { i32 }

@MALO_FREQ_BAND_2DOT4GHZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.malo_hal_channel*, %struct.ieee80211_channel*)* @malo_mapchan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @malo_mapchan(%struct.malo_hal_channel* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca %struct.malo_hal_channel*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  store %struct.malo_hal_channel* %0, %struct.malo_hal_channel** %3, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %4, align 8
  %5 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %6 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.malo_hal_channel*, %struct.malo_hal_channel** %3, align 8
  %9 = getelementptr inbounds %struct.malo_hal_channel, %struct.malo_hal_channel* %8, i32 0, i32 1
  store i32 %7, i32* %9, align 4
  %10 = load %struct.malo_hal_channel*, %struct.malo_hal_channel** %3, align 8
  %11 = getelementptr inbounds %struct.malo_hal_channel, %struct.malo_hal_channel* %10, i32 0, i32 0
  %12 = bitcast %struct.TYPE_2__* %11 to i64*
  store i64 0, i64* %12, align 4
  %13 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %14 = call i64 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load i32, i32* @MALO_FREQ_BAND_2DOT4GHZ, align 4
  %18 = load %struct.malo_hal_channel*, %struct.malo_hal_channel** %3, align 8
  %19 = getelementptr inbounds %struct.malo_hal_channel, %struct.malo_hal_channel* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 4
  br label %21

21:                                               ; preds = %16, %2
  ret void
}

declare dso_local i64 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
