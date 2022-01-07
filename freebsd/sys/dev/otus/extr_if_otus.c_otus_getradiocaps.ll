; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/otus/extr_if_otus.c_otus_getradiocaps.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/otus/extr_if_otus.c_otus_getradiocaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { %struct.otus_softc* }
%struct.otus_softc = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ieee80211_channel = type { i32 }

@IEEE80211_MODE_BYTES = common dso_local global i32 0, align 4
@AR5416_OPFLAGS_11G = common dso_local global i32 0, align 4
@IEEE80211_MODE_11B = common dso_local global i32 0, align 4
@IEEE80211_MODE_11G = common dso_local global i32 0, align 4
@ar_chans = common dso_local global i32* null, align 8
@AR5416_OPFLAGS_11A = common dso_local global i32 0, align 4
@IEEE80211_MODE_11A = common dso_local global i32 0, align 4
@IEEE80211_MODE_11NG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211com*, i32, i32*, %struct.ieee80211_channel*)* @otus_getradiocaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @otus_getradiocaps(%struct.ieee80211com* %0, i32 %1, i32* %2, %struct.ieee80211_channel* %3) #0 {
  %5 = alloca %struct.ieee80211com*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ieee80211_channel*, align 8
  %9 = alloca %struct.otus_softc*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.ieee80211com* %0, %struct.ieee80211com** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store %struct.ieee80211_channel* %3, %struct.ieee80211_channel** %8, align 8
  %12 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %13 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %12, i32 0, i32 0
  %14 = load %struct.otus_softc*, %struct.otus_softc** %13, align 8
  store %struct.otus_softc* %14, %struct.otus_softc** %9, align 8
  %15 = load i32, i32* @IEEE80211_MODE_BYTES, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  %19 = mul nuw i64 4, %16
  %20 = trunc i64 %19 to i32
  %21 = call i32 @memset(i32* %18, i32 0, i32 %20)
  %22 = load %struct.otus_softc*, %struct.otus_softc** %9, align 8
  %23 = getelementptr inbounds %struct.otus_softc, %struct.otus_softc* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @AR5416_OPFLAGS_11G, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %4
  %31 = load i32, i32* @IEEE80211_MODE_11B, align 4
  %32 = call i32 @setbit(i32* %18, i32 %31)
  %33 = load i32, i32* @IEEE80211_MODE_11G, align 4
  %34 = call i32 @setbit(i32* %18, i32 %33)
  %35 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i32*, i32** %7, align 8
  %38 = load i32*, i32** @ar_chans, align 8
  %39 = call i32 @ieee80211_add_channel_list_2ghz(%struct.ieee80211_channel* %35, i32 %36, i32* %37, i32* %38, i32 14, i32* %18, i32 0)
  br label %40

40:                                               ; preds = %30, %4
  %41 = load %struct.otus_softc*, %struct.otus_softc** %9, align 8
  %42 = getelementptr inbounds %struct.otus_softc, %struct.otus_softc* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @AR5416_OPFLAGS_11A, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %40
  %50 = load i32, i32* @IEEE80211_MODE_11A, align 4
  %51 = call i32 @setbit(i32* %18, i32 %50)
  %52 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load i32*, i32** %7, align 8
  %55 = load i32*, i32** @ar_chans, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 14
  %57 = load i32*, i32** @ar_chans, align 8
  %58 = call i64 @nitems(i32* %57)
  %59 = sub nsw i64 %58, 14
  %60 = call i32 @ieee80211_add_channel_list_5ghz(%struct.ieee80211_channel* %52, i32 %53, i32* %54, i32* %56, i64 %59, i32* %18, i32 0)
  br label %61

61:                                               ; preds = %49, %40
  %62 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %62)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @setbit(i32*, i32) #2

declare dso_local i32 @ieee80211_add_channel_list_2ghz(%struct.ieee80211_channel*, i32, i32*, i32*, i32, i32*, i32) #2

declare dso_local i32 @ieee80211_add_channel_list_5ghz(%struct.ieee80211_channel*, i32, i32*, i32*, i64, i32*, i32) #2

declare dso_local i64 @nitems(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
