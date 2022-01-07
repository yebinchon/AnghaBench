; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_getradiocaps.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_getradiocaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { %struct.bwi_softc* }
%struct.bwi_softc = type { i32, %struct.bwi_mac* }
%struct.bwi_mac = type { %struct.bwi_phy }
%struct.bwi_phy = type { i32 }
%struct.ieee80211_channel = type { i32 }

@IEEE80211_MODE_BYTES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"no 11a support\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"unknown phymode %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211com*, i32, i32*, %struct.ieee80211_channel*)* @bwi_getradiocaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwi_getradiocaps(%struct.ieee80211com* %0, i32 %1, i32* %2, %struct.ieee80211_channel* %3) #0 {
  %5 = alloca %struct.ieee80211com*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ieee80211_channel*, align 8
  %9 = alloca %struct.bwi_softc*, align 8
  %10 = alloca %struct.bwi_mac*, align 8
  %11 = alloca %struct.bwi_phy*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.ieee80211com* %0, %struct.ieee80211com** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store %struct.ieee80211_channel* %3, %struct.ieee80211_channel** %8, align 8
  %15 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %16 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %15, i32 0, i32 0
  %17 = load %struct.bwi_softc*, %struct.bwi_softc** %16, align 8
  store %struct.bwi_softc* %17, %struct.bwi_softc** %9, align 8
  %18 = load i32, i32* @IEEE80211_MODE_BYTES, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %12, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %13, align 8
  %22 = load %struct.bwi_softc*, %struct.bwi_softc** %9, align 8
  %23 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %22, i32 0, i32 1
  %24 = load %struct.bwi_mac*, %struct.bwi_mac** %23, align 8
  %25 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %24, i64 0
  store %struct.bwi_mac* %25, %struct.bwi_mac** %10, align 8
  %26 = load %struct.bwi_mac*, %struct.bwi_mac** %10, align 8
  %27 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %26, i32 0, i32 0
  store %struct.bwi_phy* %27, %struct.bwi_phy** %11, align 8
  %28 = mul nuw i64 4, %19
  %29 = trunc i64 %28 to i32
  %30 = call i32 @memset(i32* %21, i32 0, i32 %29)
  %31 = load %struct.bwi_phy*, %struct.bwi_phy** %11, align 8
  %32 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %44 [
    i32 128, label %34
    i32 129, label %36
    i32 130, label %38
  ]

34:                                               ; preds = %4
  %35 = call i32 @setbit(i32* %21, i32 128)
  br label %36

36:                                               ; preds = %4, %34
  %37 = call i32 @setbit(i32* %21, i32 129)
  br label %49

38:                                               ; preds = %4
  %39 = call i32 @setbit(i32* %21, i32 130)
  %40 = load %struct.bwi_softc*, %struct.bwi_softc** %9, align 8
  %41 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @device_printf(i32 %42, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %14, align 4
  br label %54

44:                                               ; preds = %4
  %45 = load %struct.bwi_phy*, %struct.bwi_phy** %11, align 8
  %46 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @panic(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %44, %36
  %50 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 @ieee80211_add_channels_default_2ghz(%struct.ieee80211_channel* %50, i32 %51, i32* %52, i32* %21, i32 0)
  store i32 0, i32* %14, align 4
  br label %54

54:                                               ; preds = %49, %38
  %55 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %55)
  %56 = load i32, i32* %14, align 4
  switch i32 %56, label %58 [
    i32 0, label %57
    i32 1, label %57
  ]

57:                                               ; preds = %54, %54
  ret void

58:                                               ; preds = %54
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @setbit(i32*, i32) #2

declare dso_local i32 @device_printf(i32, i8*) #2

declare dso_local i32 @panic(i8*, i32) #2

declare dso_local i32 @ieee80211_add_channels_default_2ghz(%struct.ieee80211_channel*, i32, i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
