; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_output.c_ieee80211_tx_mgt_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_output.c_ieee80211_tx_mgt_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { %struct.ieee80211vap* }
%struct.ieee80211vap = type { i32, i32 }

@IEEE80211_TRANS_WAIT = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@ieee80211_tx_mgt_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_node*, i8*, i32)* @ieee80211_tx_mgt_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_tx_mgt_cb(%struct.ieee80211_node* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_node*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211vap*, align 8
  %8 = alloca i32, align 4
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %10 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %9, i32 0, i32 0
  %11 = load %struct.ieee80211vap*, %struct.ieee80211vap** %10, align 8
  store %struct.ieee80211vap* %11, %struct.ieee80211vap** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = ptrtoint i8* %12 to i32
  store i32 %13, i32* %8, align 4
  %14 = load %struct.ieee80211vap*, %struct.ieee80211vap** %7, align 8
  %15 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %34

19:                                               ; preds = %3
  %20 = load %struct.ieee80211vap*, %struct.ieee80211vap** %7, align 8
  %21 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %20, i32 0, i32 1
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i32, i32* @IEEE80211_TRANS_WAIT, align 4
  %26 = load i32, i32* @hz, align 4
  %27 = mul nsw i32 %25, %26
  br label %29

28:                                               ; preds = %19
  br label %29

29:                                               ; preds = %28, %24
  %30 = phi i32 [ %27, %24 ], [ 0, %28 ]
  %31 = load i32, i32* @ieee80211_tx_mgt_timeout, align 4
  %32 = load %struct.ieee80211vap*, %struct.ieee80211vap** %7, align 8
  %33 = call i32 @callout_reset(i32* %21, i32 %30, i32 %31, %struct.ieee80211vap* %32)
  br label %34

34:                                               ; preds = %29, %3
  ret void
}

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.ieee80211vap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
