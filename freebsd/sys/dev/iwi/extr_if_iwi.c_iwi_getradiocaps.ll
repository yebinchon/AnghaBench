; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_getradiocaps.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_getradiocaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { i32 }
%struct.ieee80211_channel = type { i32 }

@IEEE80211_MODE_BYTES = common dso_local global i32 0, align 4
@IEEE80211_MODE_11B = common dso_local global i32 0, align 4
@IEEE80211_MODE_11G = common dso_local global i32 0, align 4
@IEEE80211_MODE_11A = common dso_local global i32 0, align 4
@def_chan_5ghz_band1 = common dso_local global i32 0, align 4
@def_chan_5ghz_band2 = common dso_local global i32 0, align 4
@def_chan_5ghz_band3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211com*, i32, i32*, %struct.ieee80211_channel*)* @iwi_getradiocaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwi_getradiocaps(%struct.ieee80211com* %0, i32 %1, i32* %2, %struct.ieee80211_channel* %3) #0 {
  %5 = alloca %struct.ieee80211com*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ieee80211_channel*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.ieee80211com* %0, %struct.ieee80211com** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store %struct.ieee80211_channel* %3, %struct.ieee80211_channel** %8, align 8
  %11 = load i32, i32* @IEEE80211_MODE_BYTES, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %9, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %10, align 8
  %15 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %16 = mul nuw i64 4, %12
  %17 = trunc i64 %16 to i32
  %18 = call i32 @iwi_collect_bands(%struct.ieee80211com* %15, i32* %14, i32 %17)
  %19 = load i32*, i32** %7, align 8
  store i32 0, i32* %19, align 4
  %20 = load i32, i32* @IEEE80211_MODE_11B, align 4
  %21 = call i64 @isset(i32* %14, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @IEEE80211_MODE_11G, align 4
  %25 = call i64 @isset(i32* %14, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %23, %4
  %28 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @ieee80211_add_channels_default_2ghz(%struct.ieee80211_channel* %28, i32 %29, i32* %30, i32* %14, i32 0)
  br label %32

32:                                               ; preds = %27, %23
  %33 = load i32, i32* @IEEE80211_MODE_11A, align 4
  %34 = call i64 @isset(i32* %14, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %58

36:                                               ; preds = %32
  %37 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* @def_chan_5ghz_band1, align 4
  %41 = load i32, i32* @def_chan_5ghz_band1, align 4
  %42 = call i32 @nitems(i32 %41)
  %43 = call i32 @ieee80211_add_channel_list_5ghz(%struct.ieee80211_channel* %37, i32 %38, i32* %39, i32 %40, i32 %42, i32* %14, i32 0)
  %44 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* @def_chan_5ghz_band2, align 4
  %48 = load i32, i32* @def_chan_5ghz_band2, align 4
  %49 = call i32 @nitems(i32 %48)
  %50 = call i32 @ieee80211_add_channel_list_5ghz(%struct.ieee80211_channel* %44, i32 %45, i32* %46, i32 %47, i32 %49, i32* %14, i32 0)
  %51 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %52 = load i32, i32* %6, align 4
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* @def_chan_5ghz_band3, align 4
  %55 = load i32, i32* @def_chan_5ghz_band3, align 4
  %56 = call i32 @nitems(i32 %55)
  %57 = call i32 @ieee80211_add_channel_list_5ghz(%struct.ieee80211_channel* %51, i32 %52, i32* %53, i32 %54, i32 %56, i32* %14, i32 0)
  br label %58

58:                                               ; preds = %36, %32
  %59 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %59)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @iwi_collect_bands(%struct.ieee80211com*, i32*, i32) #2

declare dso_local i64 @isset(i32*, i32) #2

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
