; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_getchannels.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_getchannels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwl_softc = type { i32 }
%struct.ieee80211_channel = type { i32 }

@IEEE80211_MODE_BYTES = common dso_local global i32 0, align 4
@MWL_FREQ_BAND_2DOT4GHZ = common dso_local global i32 0, align 4
@MWL_CH_20_MHz_WIDTH = common dso_local global i32 0, align 4
@IEEE80211_MODE_11B = common dso_local global i32 0, align 4
@IEEE80211_MODE_11G = common dso_local global i32 0, align 4
@IEEE80211_MODE_11NG = common dso_local global i32 0, align 4
@MWL_FREQ_BAND_5GHZ = common dso_local global i32 0, align 4
@IEEE80211_MODE_11A = common dso_local global i32 0, align 4
@IEEE80211_MODE_11NA = common dso_local global i32 0, align 4
@MWL_CH_40_MHz_WIDTH = common dso_local global i32 0, align 4
@IEEE80211_CHAN_HTG = common dso_local global i32 0, align 4
@IEEE80211_CHAN_HTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mwl_softc*, i32, i32*, %struct.ieee80211_channel*)* @getchannels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getchannels(%struct.mwl_softc* %0, i32 %1, i32* %2, %struct.ieee80211_channel* %3) #0 {
  %5 = alloca %struct.mwl_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ieee80211_channel*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.mwl_softc* %0, %struct.mwl_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store %struct.ieee80211_channel* %3, %struct.ieee80211_channel** %8, align 8
  %12 = load i32, i32* @IEEE80211_MODE_BYTES, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %10, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %11, align 8
  %16 = load i32*, i32** %7, align 8
  store i32 0, i32* %16, align 4
  %17 = load %struct.mwl_softc*, %struct.mwl_softc** %5, align 8
  %18 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @MWL_FREQ_BAND_2DOT4GHZ, align 4
  %21 = load i32, i32* @MWL_CH_20_MHz_WIDTH, align 4
  %22 = call i64 @mwl_hal_getchannelinfo(i32 %19, i32 %20, i32 %21, i32** %9)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %4
  %25 = mul nuw i64 4, %13
  %26 = trunc i64 %25 to i32
  %27 = call i32 @memset(i32* %15, i32 0, i32 %26)
  %28 = load i32, i32* @IEEE80211_MODE_11B, align 4
  %29 = call i32 @setbit(i32* %15, i32 %28)
  %30 = load i32, i32* @IEEE80211_MODE_11G, align 4
  %31 = call i32 @setbit(i32* %15, i32 %30)
  %32 = load i32, i32* @IEEE80211_MODE_11NG, align 4
  %33 = call i32 @setbit(i32* %15, i32 %32)
  %34 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = call i32 @addchannels(%struct.ieee80211_channel* %34, i32 %35, i32* %36, i32* %37, i32* %15)
  br label %39

39:                                               ; preds = %24, %4
  %40 = load %struct.mwl_softc*, %struct.mwl_softc** %5, align 8
  %41 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @MWL_FREQ_BAND_5GHZ, align 4
  %44 = load i32, i32* @MWL_CH_20_MHz_WIDTH, align 4
  %45 = call i64 @mwl_hal_getchannelinfo(i32 %42, i32 %43, i32 %44, i32** %9)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %39
  %48 = mul nuw i64 4, %13
  %49 = trunc i64 %48 to i32
  %50 = call i32 @memset(i32* %15, i32 0, i32 %49)
  %51 = load i32, i32* @IEEE80211_MODE_11A, align 4
  %52 = call i32 @setbit(i32* %15, i32 %51)
  %53 = load i32, i32* @IEEE80211_MODE_11NA, align 4
  %54 = call i32 @setbit(i32* %15, i32 %53)
  %55 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %56 = load i32, i32* %6, align 4
  %57 = load i32*, i32** %7, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = call i32 @addchannels(%struct.ieee80211_channel* %55, i32 %56, i32* %57, i32* %58, i32* %15)
  br label %60

60:                                               ; preds = %47, %39
  %61 = load %struct.mwl_softc*, %struct.mwl_softc** %5, align 8
  %62 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @MWL_FREQ_BAND_2DOT4GHZ, align 4
  %65 = load i32, i32* @MWL_CH_40_MHz_WIDTH, align 4
  %66 = call i64 @mwl_hal_getchannelinfo(i32 %63, i32 %64, i32 %65, i32** %9)
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %60
  %69 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %70 = load i32, i32* %6, align 4
  %71 = load i32*, i32** %7, align 8
  %72 = load i32*, i32** %9, align 8
  %73 = load i32, i32* @IEEE80211_CHAN_HTG, align 4
  %74 = call i32 @addht40channels(%struct.ieee80211_channel* %69, i32 %70, i32* %71, i32* %72, i32 %73)
  br label %75

75:                                               ; preds = %68, %60
  %76 = load %struct.mwl_softc*, %struct.mwl_softc** %5, align 8
  %77 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @MWL_FREQ_BAND_5GHZ, align 4
  %80 = load i32, i32* @MWL_CH_40_MHz_WIDTH, align 4
  %81 = call i64 @mwl_hal_getchannelinfo(i32 %78, i32 %79, i32 %80, i32** %9)
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %75
  %84 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %85 = load i32, i32* %6, align 4
  %86 = load i32*, i32** %7, align 8
  %87 = load i32*, i32** %9, align 8
  %88 = load i32, i32* @IEEE80211_CHAN_HTA, align 4
  %89 = call i32 @addht40channels(%struct.ieee80211_channel* %84, i32 %85, i32* %86, i32* %87, i32 %88)
  br label %90

90:                                               ; preds = %83, %75
  %91 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %91)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @mwl_hal_getchannelinfo(i32, i32, i32, i32**) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @setbit(i32*, i32) #2

declare dso_local i32 @addchannels(%struct.ieee80211_channel*, i32, i32*, i32*, i32*) #2

declare dso_local i32 @addht40channels(%struct.ieee80211_channel*, i32, i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
