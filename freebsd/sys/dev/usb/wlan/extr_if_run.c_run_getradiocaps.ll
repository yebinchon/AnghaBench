; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_getradiocaps.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_getradiocaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { %struct.run_softc* }
%struct.run_softc = type { i64 }
%struct.ieee80211_channel = type { i32 }

@IEEE80211_MODE_BYTES = common dso_local global i32 0, align 4
@IEEE80211_MODE_11B = common dso_local global i32 0, align 4
@IEEE80211_MODE_11G = common dso_local global i32 0, align 4
@RT2860_RF_2750 = common dso_local global i64 0, align 8
@RT2860_RF_2850 = common dso_local global i64 0, align 8
@RT3070_RF_3052 = common dso_local global i64 0, align 8
@RT3593_RF_3053 = common dso_local global i64 0, align 8
@RT5592_RF_5592 = common dso_local global i64 0, align 8
@IEEE80211_MODE_11A = common dso_local global i32 0, align 4
@run_chan_5ghz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211com*, i32, i32*, %struct.ieee80211_channel*)* @run_getradiocaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_getradiocaps(%struct.ieee80211com* %0, i32 %1, i32* %2, %struct.ieee80211_channel* %3) #0 {
  %5 = alloca %struct.ieee80211com*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ieee80211_channel*, align 8
  %9 = alloca %struct.run_softc*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.ieee80211com* %0, %struct.ieee80211com** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store %struct.ieee80211_channel* %3, %struct.ieee80211_channel** %8, align 8
  %12 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %13 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %12, i32 0, i32 0
  %14 = load %struct.run_softc*, %struct.run_softc** %13, align 8
  store %struct.run_softc* %14, %struct.run_softc** %9, align 8
  %15 = load i32, i32* @IEEE80211_MODE_BYTES, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  %19 = mul nuw i64 4, %16
  %20 = trunc i64 %19 to i32
  %21 = call i32 @memset(i32* %18, i32 0, i32 %20)
  %22 = load i32, i32* @IEEE80211_MODE_11B, align 4
  %23 = call i32 @setbit(i32* %18, i32 %22)
  %24 = load i32, i32* @IEEE80211_MODE_11G, align 4
  %25 = call i32 @setbit(i32* %18, i32 %24)
  %26 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @ieee80211_add_channels_default_2ghz(%struct.ieee80211_channel* %26, i32 %27, i32* %28, i32* %18, i32 0)
  %30 = load %struct.run_softc*, %struct.run_softc** %9, align 8
  %31 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @RT2860_RF_2750, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %59, label %35

35:                                               ; preds = %4
  %36 = load %struct.run_softc*, %struct.run_softc** %9, align 8
  %37 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @RT2860_RF_2850, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %59, label %41

41:                                               ; preds = %35
  %42 = load %struct.run_softc*, %struct.run_softc** %9, align 8
  %43 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @RT3070_RF_3052, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %59, label %47

47:                                               ; preds = %41
  %48 = load %struct.run_softc*, %struct.run_softc** %9, align 8
  %49 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @RT3593_RF_3053, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %59, label %53

53:                                               ; preds = %47
  %54 = load %struct.run_softc*, %struct.run_softc** %9, align 8
  %55 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @RT5592_RF_5592, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %53, %47, %41, %35, %4
  %60 = load i32, i32* @IEEE80211_MODE_11A, align 4
  %61 = call i32 @setbit(i32* %18, i32 %60)
  %62 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %63 = load i32, i32* %6, align 4
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* @run_chan_5ghz, align 4
  %66 = load i32, i32* @run_chan_5ghz, align 4
  %67 = call i32 @nitems(i32 %66)
  %68 = call i32 @ieee80211_add_channel_list_5ghz(%struct.ieee80211_channel* %62, i32 %63, i32* %64, i32 %65, i32 %67, i32* %18, i32 0)
  br label %69

69:                                               ; preds = %59, %53
  %70 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %70)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @setbit(i32*, i32) #2

declare dso_local i32 @ieee80211_add_channels_default_2ghz(%struct.ieee80211_channel*, i32, i32*, i32*, i32) #2

declare dso_local i32 @ieee80211_add_channel_list_5ghz(%struct.ieee80211_channel*, i32, i32*, i32, i32, i32*, i32) #2

declare dso_local i32 @nitems(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
