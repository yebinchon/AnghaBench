; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_node.c_ieee80211_sync_curchan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_node.c_ieee80211_sync_curchan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { i32 (%struct.ieee80211com*)*, %struct.ieee80211_channel*, i32, i32 }
%struct.ieee80211_channel = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_sync_curchan(%struct.ieee80211com* %0) #0 {
  %2 = alloca %struct.ieee80211com*, align 8
  %3 = alloca %struct.ieee80211_channel*, align 8
  store %struct.ieee80211com* %0, %struct.ieee80211com** %2, align 8
  %4 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %5 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %5, i32 0, i32 1
  %7 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %8 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %9 = call i32 @gethtadjustflags(%struct.ieee80211com* %8)
  %10 = call %struct.ieee80211_channel* @ieee80211_ht_adjust_channel(%struct.ieee80211com* %4, %struct.ieee80211_channel* %7, i32 %9)
  store %struct.ieee80211_channel* %10, %struct.ieee80211_channel** %3, align 8
  %11 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %12 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %13 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %14 = call i32 @getvhtadjustflags(%struct.ieee80211com* %13)
  %15 = call %struct.ieee80211_channel* @ieee80211_vht_adjust_channel(%struct.ieee80211com* %11, %struct.ieee80211_channel* %12, i32 %14)
  store %struct.ieee80211_channel* %15, %struct.ieee80211_channel** %3, align 8
  %16 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %17 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %18 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %17, i32 0, i32 1
  %19 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %18, align 8
  %20 = icmp ne %struct.ieee80211_channel* %16, %19
  br i1 %20, label %21, label %48

21:                                               ; preds = %1
  %22 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %23 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %24 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %23, i32 0, i32 1
  store %struct.ieee80211_channel* %22, %struct.ieee80211_channel** %24, align 8
  %25 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %26 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %25, i32 0, i32 1
  %27 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %26, align 8
  %28 = call i32 @ieee80211_chan2mode(%struct.ieee80211_channel* %27)
  %29 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %30 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %32 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %31, i32 0, i32 1
  %33 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %32, align 8
  %34 = call i32 @ieee80211_get_ratetable(%struct.ieee80211_channel* %33)
  %35 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %36 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %38 = call i32 @IEEE80211_UNLOCK(%struct.ieee80211com* %37)
  %39 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %40 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %39, i32 0, i32 0
  %41 = load i32 (%struct.ieee80211com*)*, i32 (%struct.ieee80211com*)** %40, align 8
  %42 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %43 = call i32 %41(%struct.ieee80211com* %42)
  %44 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %45 = call i32 @ieee80211_radiotap_chan_change(%struct.ieee80211com* %44)
  %46 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %47 = call i32 @IEEE80211_LOCK(%struct.ieee80211com* %46)
  br label %48

48:                                               ; preds = %21, %1
  ret void
}

declare dso_local %struct.ieee80211_channel* @ieee80211_ht_adjust_channel(%struct.ieee80211com*, %struct.ieee80211_channel*, i32) #1

declare dso_local i32 @gethtadjustflags(%struct.ieee80211com*) #1

declare dso_local %struct.ieee80211_channel* @ieee80211_vht_adjust_channel(%struct.ieee80211com*, %struct.ieee80211_channel*, i32) #1

declare dso_local i32 @getvhtadjustflags(%struct.ieee80211com*) #1

declare dso_local i32 @ieee80211_chan2mode(%struct.ieee80211_channel*) #1

declare dso_local i32 @ieee80211_get_ratetable(%struct.ieee80211_channel*) #1

declare dso_local i32 @IEEE80211_UNLOCK(%struct.ieee80211com*) #1

declare dso_local i32 @ieee80211_radiotap_chan_change(%struct.ieee80211com*) #1

declare dso_local i32 @IEEE80211_LOCK(%struct.ieee80211com*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
