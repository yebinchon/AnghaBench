; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_tx.c_ieee80211_is_action.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_tx.c_ieee80211_is_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_frame = type { i32* }

@IEEE80211_FC0_TYPE_MASK = common dso_local global i32 0, align 4
@IEEE80211_FC0_TYPE_MGT = common dso_local global i32 0, align 4
@IEEE80211_FC0_SUBTYPE_MASK = common dso_local global i32 0, align 4
@IEEE80211_FC0_SUBTYPE_ACTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_frame*)* @ieee80211_is_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_is_action(%struct.ieee80211_frame* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_frame*, align 8
  store %struct.ieee80211_frame* %0, %struct.ieee80211_frame** %3, align 8
  %4 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %3, align 8
  %5 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @IEEE80211_FC0_TYPE_MASK, align 4
  %10 = and i32 %8, %9
  %11 = load i32, i32* @IEEE80211_FC0_TYPE_MGT, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %26

14:                                               ; preds = %1
  %15 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %3, align 8
  %16 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @IEEE80211_FC0_SUBTYPE_MASK, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @IEEE80211_FC0_SUBTYPE_ACTION, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %26

25:                                               ; preds = %14
  store i32 1, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %24, %13
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
