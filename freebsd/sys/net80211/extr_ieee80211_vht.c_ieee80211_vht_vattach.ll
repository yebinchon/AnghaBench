; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_vht.c_ieee80211_vht_vattach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_vht.c_ieee80211_vht_vattach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i32, i32, i32, i32, %struct.ieee80211com* }
%struct.ieee80211com = type { i32, i32, i32 }

@IEEE80211_FVHT_VHT = common dso_local global i32 0, align 4
@IEEE80211_FVHT_USEVHT40 = common dso_local global i32 0, align 4
@IEEE80211_FVHT_USEVHT80 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_vht_vattach(%struct.ieee80211vap* %0) #0 {
  %2 = alloca %struct.ieee80211vap*, align 8
  %3 = alloca %struct.ieee80211com*, align 8
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %2, align 8
  %4 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %5 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %4, i32 0, i32 4
  %6 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  store %struct.ieee80211com* %6, %struct.ieee80211com** %3, align 8
  %7 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %8 = call i32 @IEEE80211_CONF_VHT(%struct.ieee80211com* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %34

11:                                               ; preds = %1
  %12 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %13 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %16 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 4
  %17 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %18 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %21 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* @IEEE80211_FVHT_VHT, align 4
  %23 = load i32, i32* @IEEE80211_FVHT_USEVHT40, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @IEEE80211_FVHT_USEVHT80, align 4
  %26 = or i32 %24, %25
  %27 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %28 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %30 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %29, i32 0, i32 1
  %31 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %32 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %31, i32 0, i32 0
  %33 = call i32 @memcpy(i32* %30, i32* %32, i32 4)
  br label %34

34:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @IEEE80211_CONF_VHT(%struct.ieee80211com*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
