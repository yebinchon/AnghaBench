; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211.c_ieee80211_media_change.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211.c_ieee80211_media_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.ieee80211vap* }
%struct.ieee80211vap = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ifmedia_entry* }
%struct.ifmedia_entry = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_media_change(%struct.ifnet* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca %struct.ifmedia_entry*, align 8
  %6 = alloca i64, align 8
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  %7 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %8 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %7, i32 0, i32 0
  %9 = load %struct.ieee80211vap*, %struct.ieee80211vap** %8, align 8
  store %struct.ieee80211vap* %9, %struct.ieee80211vap** %4, align 8
  %10 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %12, align 8
  store %struct.ifmedia_entry* %13, %struct.ifmedia_entry** %5, align 8
  %14 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %5, align 8
  %15 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %16 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @media2mode(%struct.ifmedia_entry* %14, i32 %17, i64* %6)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %2, align 4
  br label %33

22:                                               ; preds = %1
  %23 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %24 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %6, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load i64, i64* %6, align 8
  %30 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %31 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  br label %32

32:                                               ; preds = %28, %22
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %20
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @media2mode(%struct.ifmedia_entry*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
