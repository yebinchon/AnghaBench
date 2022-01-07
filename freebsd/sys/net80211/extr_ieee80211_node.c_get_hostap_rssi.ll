; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_node.c_get_hostap_rssi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_node.c_get_hostap_rssi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { i64, %struct.ieee80211vap* }
%struct.ieee80211vap = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.ieee80211_node*)* }
%struct.rssiinfo = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ieee80211_node*)* @get_hostap_rssi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_hostap_rssi(i8* %0, %struct.ieee80211_node* %1) #0 {
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
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %40

18:                                               ; preds = %2
  %19 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %20 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64 (%struct.ieee80211_node*)*, i64 (%struct.ieee80211_node*)** %22, align 8
  %24 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %25 = call i64 %23(%struct.ieee80211_node* %24)
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %7, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %18
  %29 = load %struct.rssiinfo*, %struct.rssiinfo** %5, align 8
  %30 = getelementptr inbounds %struct.rssiinfo, %struct.rssiinfo* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  %33 = load i64, i64* %7, align 8
  %34 = load %struct.rssiinfo*, %struct.rssiinfo** %5, align 8
  %35 = getelementptr inbounds %struct.rssiinfo, %struct.rssiinfo* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %37, %33
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %35, align 4
  br label %40

40:                                               ; preds = %17, %28, %18
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
