; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_node.c_get_adhoc_rssi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_node.c_get_adhoc_rssi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { i32, %struct.ieee80211vap* }
%struct.ieee80211vap = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.ieee80211_node*)* }
%struct.rssiinfo = type { i32, i32 }

@IEEE80211_CAPINFO_IBSS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ieee80211_node*)* @get_adhoc_rssi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_adhoc_rssi(i8* %0, %struct.ieee80211_node* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ieee80211_node*, align 8
  %5 = alloca %struct.rssiinfo*, align 8
  %6 = alloca %struct.ieee80211vap*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store %struct.ieee80211_node* %1, %struct.ieee80211_node** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.rssiinfo*
  store %struct.rssiinfo* %9, %struct.rssiinfo** %5, align 8
  %10 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %10, i32 0, i32 1
  %12 = load %struct.ieee80211vap*, %struct.ieee80211vap** %11, align 8
  store %struct.ieee80211vap* %12, %struct.ieee80211vap** %6, align 8
  %13 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %14 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @IEEE80211_CAPINFO_IBSS, align 4
  %17 = and i32 %15, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %42

20:                                               ; preds = %2
  %21 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %22 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64 (%struct.ieee80211_node*)*, i64 (%struct.ieee80211_node*)** %24, align 8
  %26 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %27 = call i64 %25(%struct.ieee80211_node* %26)
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %7, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %20
  %31 = load %struct.rssiinfo*, %struct.rssiinfo** %5, align 8
  %32 = getelementptr inbounds %struct.rssiinfo, %struct.rssiinfo* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  %35 = load i64, i64* %7, align 8
  %36 = load %struct.rssiinfo*, %struct.rssiinfo** %5, align 8
  %37 = getelementptr inbounds %struct.rssiinfo, %struct.rssiinfo* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %39, %35
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %37, align 4
  br label %42

42:                                               ; preds = %19, %30, %20
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
