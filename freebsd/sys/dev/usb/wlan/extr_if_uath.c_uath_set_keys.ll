; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_uath.c_uath_set_keys.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_uath.c_uath_set_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uath_softc = type { i32 }
%struct.ieee80211vap = type { i64, %struct.ieee80211_key* }
%struct.ieee80211_key = type { i32 }

@IEEE80211_WEP_NKID = common dso_local global i32 0, align 4
@IEEE80211_KEY_XMIT = common dso_local global i32 0, align 4
@IEEE80211_KEY_RECV = common dso_local global i32 0, align 4
@IEEE80211_KEYIX_NONE = common dso_local global i64 0, align 8
@UATH_DEFAULT_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uath_softc*, %struct.ieee80211vap*)* @uath_set_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uath_set_keys(%struct.uath_softc* %0, %struct.ieee80211vap* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uath_softc*, align 8
  %5 = alloca %struct.ieee80211vap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_key*, align 8
  store %struct.uath_softc* %0, %struct.uath_softc** %4, align 8
  store %struct.ieee80211vap* %1, %struct.ieee80211vap** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %39, %2
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @IEEE80211_WEP_NKID, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %42

13:                                               ; preds = %9
  %14 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %15 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %14, i32 0, i32 1
  %16 = load %struct.ieee80211_key*, %struct.ieee80211_key** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %16, i64 %18
  store %struct.ieee80211_key* %19, %struct.ieee80211_key** %8, align 8
  %20 = load %struct.ieee80211_key*, %struct.ieee80211_key** %8, align 8
  %21 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @IEEE80211_KEY_XMIT, align 4
  %24 = load i32, i32* @IEEE80211_KEY_RECV, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %22, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %13
  %29 = load %struct.uath_softc*, %struct.uath_softc** %4, align 8
  %30 = load %struct.ieee80211_key*, %struct.ieee80211_key** %8, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @uath_set_key(%struct.uath_softc* %29, %struct.ieee80211_key* %30, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %3, align 4
  br label %61

37:                                               ; preds = %28
  br label %38

38:                                               ; preds = %37, %13
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %9

42:                                               ; preds = %9
  %43 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %44 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @IEEE80211_KEYIX_NONE, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %42
  %49 = load %struct.uath_softc*, %struct.uath_softc** %4, align 8
  %50 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %51 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %50, i32 0, i32 1
  %52 = load %struct.ieee80211_key*, %struct.ieee80211_key** %51, align 8
  %53 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %54 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %52, i64 %55
  %57 = load i32, i32* @UATH_DEFAULT_KEY, align 4
  %58 = call i32 @uath_set_key(%struct.uath_softc* %49, %struct.ieee80211_key* %56, i32 %57)
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %48, %42
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %59, %35
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @uath_set_key(%struct.uath_softc*, %struct.ieee80211_key*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
