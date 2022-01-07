; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_output.c_ieee80211_tx_mgt_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_output.c_ieee80211_tx_mgt_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@IEEE80211_S_INIT = common dso_local global i64 0, align 8
@IEEE80211_F_SCAN = common dso_local global i32 0, align 4
@IEEE80211_S_SCAN = common dso_local global i32 0, align 4
@IEEE80211_SCAN_FAIL_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ieee80211_tx_mgt_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_tx_mgt_timeout(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ieee80211vap*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.ieee80211vap*
  store %struct.ieee80211vap* %5, %struct.ieee80211vap** %3, align 8
  %6 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %7 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %6, i32 0, i32 1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = call i32 @IEEE80211_LOCK(%struct.TYPE_3__* %8)
  %10 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %11 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @IEEE80211_S_INIT, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %29

15:                                               ; preds = %1
  %16 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %17 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @IEEE80211_F_SCAN, align 4
  %22 = and i32 %20, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %15
  %25 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %26 = load i32, i32* @IEEE80211_S_SCAN, align 4
  %27 = load i32, i32* @IEEE80211_SCAN_FAIL_TIMEOUT, align 4
  %28 = call i32 @ieee80211_new_state_locked(%struct.ieee80211vap* %25, i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %24, %15, %1
  %30 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %31 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = call i32 @IEEE80211_UNLOCK(%struct.TYPE_3__* %32)
  ret void
}

declare dso_local i32 @IEEE80211_LOCK(%struct.TYPE_3__*) #1

declare dso_local i32 @ieee80211_new_state_locked(%struct.ieee80211vap*, i32, i32) #1

declare dso_local i32 @IEEE80211_UNLOCK(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
