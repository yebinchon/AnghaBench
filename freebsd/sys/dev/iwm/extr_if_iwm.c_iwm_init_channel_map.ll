; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_init_channel_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_init_channel_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { %struct.iwm_softc* }
%struct.iwm_softc = type { %struct.TYPE_2__*, %struct.iwm_nvm_data* }
%struct.TYPE_2__ = type { i64 }
%struct.iwm_nvm_data = type { i64 }
%struct.ieee80211_channel = type { i32 }

@IEEE80211_MODE_BYTES = common dso_local global i32 0, align 4
@IEEE80211_MODE_11B = common dso_local global i32 0, align 4
@IEEE80211_MODE_11G = common dso_local global i32 0, align 4
@IWM_NUM_2GHZ_CHANNELS = common dso_local global i64 0, align 8
@IWM_DEVICE_FAMILY_7000 = common dso_local global i64 0, align 8
@iwm_nvm_channels = common dso_local global i32 0, align 4
@iwm_nvm_channels_8000 = common dso_local global i32 0, align 4
@IEEE80211_MODE_11A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211com*, i32, i32*, %struct.ieee80211_channel*)* @iwm_init_channel_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwm_init_channel_map(%struct.ieee80211com* %0, i32 %1, i32* %2, %struct.ieee80211_channel* %3) #0 {
  %5 = alloca %struct.ieee80211com*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ieee80211_channel*, align 8
  %9 = alloca %struct.iwm_softc*, align 8
  %10 = alloca %struct.iwm_nvm_data*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.ieee80211com* %0, %struct.ieee80211com** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store %struct.ieee80211_channel* %3, %struct.ieee80211_channel** %8, align 8
  %14 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %15 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %14, i32 0, i32 0
  %16 = load %struct.iwm_softc*, %struct.iwm_softc** %15, align 8
  store %struct.iwm_softc* %16, %struct.iwm_softc** %9, align 8
  %17 = load %struct.iwm_softc*, %struct.iwm_softc** %9, align 8
  %18 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %17, i32 0, i32 1
  %19 = load %struct.iwm_nvm_data*, %struct.iwm_nvm_data** %18, align 8
  store %struct.iwm_nvm_data* %19, %struct.iwm_nvm_data** %10, align 8
  %20 = load i32, i32* @IEEE80211_MODE_BYTES, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %11, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %12, align 8
  %24 = mul nuw i64 4, %21
  %25 = trunc i64 %24 to i32
  %26 = call i32 @memset(i32* %23, i32 0, i32 %25)
  %27 = load i32, i32* @IEEE80211_MODE_11B, align 4
  %28 = call i32 @setbit(i32* %23, i32 %27)
  %29 = load i32, i32* @IEEE80211_MODE_11G, align 4
  %30 = call i32 @setbit(i32* %23, i32 %29)
  %31 = load %struct.iwm_softc*, %struct.iwm_softc** %9, align 8
  %32 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32*, i32** %7, align 8
  %35 = load i64, i64* @IWM_NUM_2GHZ_CHANNELS, align 8
  %36 = sub i64 %35, 1
  %37 = call i32 @iwm_add_channel_band(%struct.iwm_softc* %31, %struct.ieee80211_channel* %32, i32 %33, i32* %34, i64 0, i64 %36, i32* %23)
  %38 = load i32, i32* @IEEE80211_MODE_11G, align 4
  %39 = call i32 @clrbit(i32* %23, i32 %38)
  %40 = load %struct.iwm_softc*, %struct.iwm_softc** %9, align 8
  %41 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load i32*, i32** %7, align 8
  %44 = load i64, i64* @IWM_NUM_2GHZ_CHANNELS, align 8
  %45 = sub i64 %44, 1
  %46 = load i64, i64* @IWM_NUM_2GHZ_CHANNELS, align 8
  %47 = call i32 @iwm_add_channel_band(%struct.iwm_softc* %40, %struct.ieee80211_channel* %41, i32 %42, i32* %43, i64 %45, i64 %46, i32* %23)
  %48 = load %struct.iwm_nvm_data*, %struct.iwm_nvm_data** %10, align 8
  %49 = getelementptr inbounds %struct.iwm_nvm_data, %struct.iwm_nvm_data* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %79

52:                                               ; preds = %4
  %53 = load %struct.iwm_softc*, %struct.iwm_softc** %9, align 8
  %54 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @IWM_DEVICE_FAMILY_7000, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %52
  %61 = load i32, i32* @iwm_nvm_channels, align 4
  %62 = call i64 @nitems(i32 %61)
  store i64 %62, i64* %13, align 8
  br label %66

63:                                               ; preds = %52
  %64 = load i32, i32* @iwm_nvm_channels_8000, align 4
  %65 = call i64 @nitems(i32 %64)
  store i64 %65, i64* %13, align 8
  br label %66

66:                                               ; preds = %63, %60
  %67 = mul nuw i64 4, %21
  %68 = trunc i64 %67 to i32
  %69 = call i32 @memset(i32* %23, i32 0, i32 %68)
  %70 = load i32, i32* @IEEE80211_MODE_11A, align 4
  %71 = call i32 @setbit(i32* %23, i32 %70)
  %72 = load %struct.iwm_softc*, %struct.iwm_softc** %9, align 8
  %73 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %74 = load i32, i32* %6, align 4
  %75 = load i32*, i32** %7, align 8
  %76 = load i64, i64* @IWM_NUM_2GHZ_CHANNELS, align 8
  %77 = load i64, i64* %13, align 8
  %78 = call i32 @iwm_add_channel_band(%struct.iwm_softc* %72, %struct.ieee80211_channel* %73, i32 %74, i32* %75, i64 %76, i64 %77, i32* %23)
  br label %79

79:                                               ; preds = %66, %4
  %80 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %80)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @setbit(i32*, i32) #2

declare dso_local i32 @iwm_add_channel_band(%struct.iwm_softc*, %struct.ieee80211_channel*, i32, i32*, i64, i64, i32*) #2

declare dso_local i32 @clrbit(i32*, i32) #2

declare dso_local i64 @nitems(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
