; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_output.c_ieee80211_add_rsn.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_output.c_ieee80211_add_rsn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i32, i32* }

@IEEE80211_F_WPA2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ieee80211_add_rsn(i32* %0, %struct.ieee80211vap* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ieee80211vap*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.ieee80211vap* %1, %struct.ieee80211vap** %5, align 8
  %6 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %7 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @IEEE80211_F_WPA2, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %2
  %13 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %14 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = load i32*, i32** %4, align 8
  %19 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %20 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = call i32* @add_ie(i32* %18, i32* %21)
  store i32* %22, i32** %3, align 8
  br label %25

23:                                               ; preds = %12, %2
  %24 = load i32*, i32** %4, align 8
  store i32* %24, i32** %3, align 8
  br label %25

25:                                               ; preds = %23, %17
  %26 = load i32*, i32** %3, align 8
  ret i32* %26
}

declare dso_local i32* @add_ie(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
