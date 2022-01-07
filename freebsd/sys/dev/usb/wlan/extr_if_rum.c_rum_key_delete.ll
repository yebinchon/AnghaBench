; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_key_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_key_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { %struct.ieee80211_key*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.rum_softc* }
%struct.rum_softc = type { i32 }
%struct.ieee80211_key = type { i32 }

@IEEE80211_KEY_SWCRYPT = common dso_local global i32 0, align 4
@IEEE80211_WEP_NKID = common dso_local global i64 0, align 8
@rum_group_key_del_cb = common dso_local global i32 0, align 4
@rum_pair_key_del_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211vap*, %struct.ieee80211_key*)* @rum_key_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rum_key_delete(%struct.ieee80211vap* %0, %struct.ieee80211_key* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca %struct.ieee80211_key*, align 8
  %6 = alloca %struct.rum_softc*, align 8
  %7 = alloca i32, align 4
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %4, align 8
  store %struct.ieee80211_key* %1, %struct.ieee80211_key** %5, align 8
  %8 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %9 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.rum_softc*, %struct.rum_softc** %11, align 8
  store %struct.rum_softc* %12, %struct.rum_softc** %6, align 8
  %13 = load %struct.ieee80211_key*, %struct.ieee80211_key** %5, align 8
  %14 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @IEEE80211_KEY_SWCRYPT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %52

20:                                               ; preds = %2
  %21 = load %struct.ieee80211_key*, %struct.ieee80211_key** %5, align 8
  %22 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %23 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %22, i32 0, i32 0
  %24 = load %struct.ieee80211_key*, %struct.ieee80211_key** %23, align 8
  %25 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %24, i64 0
  %26 = icmp uge %struct.ieee80211_key* %21, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %20
  %28 = load %struct.ieee80211_key*, %struct.ieee80211_key** %5, align 8
  %29 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %30 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %29, i32 0, i32 0
  %31 = load %struct.ieee80211_key*, %struct.ieee80211_key** %30, align 8
  %32 = load i64, i64* @IEEE80211_WEP_NKID, align 8
  %33 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %31, i64 %32
  %34 = icmp ult %struct.ieee80211_key* %28, %33
  br label %35

35:                                               ; preds = %27, %20
  %36 = phi i1 [ false, %20 ], [ %34, %27 ]
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %7, align 4
  %38 = load %struct.rum_softc*, %struct.rum_softc** %6, align 8
  %39 = load %struct.ieee80211_key*, %struct.ieee80211_key** %5, align 8
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* @rum_group_key_del_cb, align 4
  br label %46

44:                                               ; preds = %35
  %45 = load i32, i32* @rum_pair_key_del_cb, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  %48 = call i32 @rum_cmd_sleepable(%struct.rum_softc* %38, %struct.ieee80211_key* %39, i32 4, i32 0, i32 %47)
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %46, %19
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @rum_cmd_sleepable(%struct.rum_softc*, %struct.ieee80211_key*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
