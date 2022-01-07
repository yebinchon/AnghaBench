; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/extr_if_rtwn_cam.c_rtwn_init_static_keys.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/extr_if_rtwn_cam.c_rtwn_init_static_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i64 }
%struct.rtwn_vap = type { %struct.ieee80211_key** }
%struct.ieee80211_key = type { i32 }

@RTWN_CRYPTO_FULL = common dso_local global i64 0, align 8
@IEEE80211_WEP_NKID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtwn_init_static_keys(%struct.rtwn_softc* %0, %struct.rtwn_vap* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtwn_softc*, align 8
  %5 = alloca %struct.rtwn_vap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_key*, align 8
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %4, align 8
  store %struct.rtwn_vap* %1, %struct.rtwn_vap** %5, align 8
  %9 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %10 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @RTWN_CRYPTO_FULL, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %44

15:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %40, %15
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @IEEE80211_WEP_NKID, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %43

20:                                               ; preds = %16
  %21 = load %struct.rtwn_vap*, %struct.rtwn_vap** %5, align 8
  %22 = getelementptr inbounds %struct.rtwn_vap, %struct.rtwn_vap* %21, i32 0, i32 0
  %23 = load %struct.ieee80211_key**, %struct.ieee80211_key*** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.ieee80211_key*, %struct.ieee80211_key** %23, i64 %25
  %27 = load %struct.ieee80211_key*, %struct.ieee80211_key** %26, align 8
  store %struct.ieee80211_key* %27, %struct.ieee80211_key** %8, align 8
  %28 = load %struct.ieee80211_key*, %struct.ieee80211_key** %8, align 8
  %29 = icmp ne %struct.ieee80211_key* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %20
  %31 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %32 = load %struct.ieee80211_key*, %struct.ieee80211_key** %8, align 8
  %33 = call i32 @rtwn_key_set_cb0(%struct.rtwn_softc* %31, %struct.ieee80211_key* %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %3, align 4
  br label %44

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38, %20
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %16

43:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %36, %14
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @rtwn_key_set_cb0(%struct.rtwn_softc*, %struct.ieee80211_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
