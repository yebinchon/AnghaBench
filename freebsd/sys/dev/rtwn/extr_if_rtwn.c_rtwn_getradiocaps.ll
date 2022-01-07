; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/extr_if_rtwn.c_rtwn_getradiocaps.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/extr_if_rtwn.c_rtwn_getradiocaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { i32, %struct.rtwn_softc* }
%struct.rtwn_softc = type { i64*, i32* }
%struct.ieee80211_channel = type { i32 }

@IEEE80211_MODE_BYTES = common dso_local global i32 0, align 4
@IEEE80211_MODE_11B = common dso_local global i32 0, align 4
@IEEE80211_MODE_11G = common dso_local global i32 0, align 4
@IEEE80211_MODE_11NG = common dso_local global i32 0, align 4
@IEEE80211_HTCAP_CHWIDTH40 = common dso_local global i32 0, align 4
@IEEE80211_MODE_11A = common dso_local global i32 0, align 4
@IEEE80211_MODE_11NA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211com*, i32, i32*, %struct.ieee80211_channel*)* @rtwn_getradiocaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtwn_getradiocaps(%struct.ieee80211com* %0, i32 %1, i32* %2, %struct.ieee80211_channel* %3) #0 {
  %5 = alloca %struct.ieee80211com*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ieee80211_channel*, align 8
  %9 = alloca %struct.rtwn_softc*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.ieee80211com* %0, %struct.ieee80211com** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store %struct.ieee80211_channel* %3, %struct.ieee80211_channel** %8, align 8
  %13 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %14 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %13, i32 0, i32 1
  %15 = load %struct.rtwn_softc*, %struct.rtwn_softc** %14, align 8
  store %struct.rtwn_softc* %15, %struct.rtwn_softc** %9, align 8
  %16 = load i32, i32* @IEEE80211_MODE_BYTES, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %10, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %11, align 8
  %20 = mul nuw i64 4, %17
  %21 = trunc i64 %20 to i32
  %22 = call i32 @memset(i32* %19, i32 0, i32 %21)
  %23 = load i32, i32* @IEEE80211_MODE_11B, align 4
  %24 = call i32 @setbit(i32* %19, i32 %23)
  %25 = load i32, i32* @IEEE80211_MODE_11G, align 4
  %26 = call i32 @setbit(i32* %19, i32 %25)
  %27 = load i32, i32* @IEEE80211_MODE_11NG, align 4
  %28 = call i32 @setbit(i32* %19, i32 %27)
  %29 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i32*, i32** %7, align 8
  %32 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %33 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @IEEE80211_HTCAP_CHWIDTH40, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i32 @ieee80211_add_channels_default_2ghz(%struct.ieee80211_channel* %29, i32 %30, i32* %31, i32* %19, i32 %40)
  %42 = load i32, i32* @IEEE80211_MODE_11A, align 4
  %43 = call i32 @setbit(i32* %19, i32 %42)
  %44 = load i32, i32* @IEEE80211_MODE_11NA, align 4
  %45 = call i32 @setbit(i32* %19, i32 %44)
  store i32 0, i32* %12, align 4
  br label %46

46:                                               ; preds = %91, %4
  %47 = load i32, i32* %12, align 4
  %48 = load %struct.rtwn_softc*, %struct.rtwn_softc** %9, align 8
  %49 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = call i32 @nitems(i64* %50)
  %52 = icmp slt i32 %47, %51
  br i1 %52, label %53, label %94

53:                                               ; preds = %46
  %54 = load %struct.rtwn_softc*, %struct.rtwn_softc** %9, align 8
  %55 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  br label %91

63:                                               ; preds = %53
  %64 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %65 = load i32, i32* %6, align 4
  %66 = load i32*, i32** %7, align 8
  %67 = load %struct.rtwn_softc*, %struct.rtwn_softc** %9, align 8
  %68 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %12, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.rtwn_softc*, %struct.rtwn_softc** %9, align 8
  %75 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %74, i32 0, i32 0
  %76 = load i64*, i64** %75, align 8
  %77 = load i32, i32* %12, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %82 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @IEEE80211_HTCAP_CHWIDTH40, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  %87 = xor i1 %86, true
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  %90 = call i32 @ieee80211_add_channel_list_5ghz(%struct.ieee80211_channel* %64, i32 %65, i32* %66, i32 %73, i64 %80, i32* %19, i32 %89)
  br label %91

91:                                               ; preds = %63, %62
  %92 = load i32, i32* %12, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %12, align 4
  br label %46

94:                                               ; preds = %46
  %95 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %95)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @setbit(i32*, i32) #2

declare dso_local i32 @ieee80211_add_channels_default_2ghz(%struct.ieee80211_channel*, i32, i32*, i32*, i32) #2

declare dso_local i32 @nitems(i64*) #2

declare dso_local i32 @ieee80211_add_channel_list_5ghz(%struct.ieee80211_channel*, i32, i32*, i32, i64, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
