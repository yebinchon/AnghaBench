; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/otus/extr_if_otus.c_otus_get_chanlist.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/otus/extr_if_otus.c_otus_get_chanlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.otus_softc = type { %struct.TYPE_5__, %struct.ieee80211com }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32* }
%struct.ieee80211com = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i8* }

@OTUS_DEBUG_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"regdomain=0x%04x\0A\00", align 1
@AR5416_OPFLAGS_11G = common dso_local global i32 0, align 4
@ar_chans = common dso_local global i64* null, align 8
@IEEE80211_CHAN_2GHZ = common dso_local global i32 0, align 4
@IEEE80211_CHAN_CCK = common dso_local global i32 0, align 4
@IEEE80211_CHAN_OFDM = common dso_local global i32 0, align 4
@IEEE80211_CHAN_DYN = common dso_local global i32 0, align 4
@AR5416_OPFLAGS_11A = common dso_local global i32 0, align 4
@IEEE80211_CHAN_5GHZ = common dso_local global i32 0, align 4
@IEEE80211_CHAN_A = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @otus_get_chanlist(%struct.otus_softc* %0) #0 {
  %2 = alloca %struct.otus_softc*, align 8
  %3 = alloca %struct.ieee80211com*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.otus_softc* %0, %struct.otus_softc** %2, align 8
  %7 = load %struct.otus_softc*, %struct.otus_softc** %2, align 8
  %8 = getelementptr inbounds %struct.otus_softc, %struct.otus_softc* %7, i32 0, i32 1
  store %struct.ieee80211com* %8, %struct.ieee80211com** %3, align 8
  %9 = load %struct.otus_softc*, %struct.otus_softc** %2, align 8
  %10 = getelementptr inbounds %struct.otus_softc, %struct.otus_softc* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @le16toh(i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load %struct.otus_softc*, %struct.otus_softc** %2, align 8
  %18 = load i32, i32* @OTUS_DEBUG_RESET, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @OTUS_DPRINTF(%struct.otus_softc* %17, i32 %18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.otus_softc*, %struct.otus_softc** %2, align 8
  %22 = getelementptr inbounds %struct.otus_softc, %struct.otus_softc* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @AR5416_OPFLAGS_11G, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %65

29:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %61, %29
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 14
  br i1 %32, label %33, label %64

33:                                               ; preds = %30
  %34 = load i64*, i64** @ar_chans, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %5, align 8
  %39 = load i64, i64* %5, align 8
  %40 = load i32, i32* @IEEE80211_CHAN_2GHZ, align 4
  %41 = call i8* @ieee80211_ieee2mhz(i64 %39, i32 %40)
  %42 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %43 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = load i64, i64* %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  store i8* %41, i8** %47, align 8
  %48 = load i32, i32* @IEEE80211_CHAN_CCK, align 4
  %49 = load i32, i32* @IEEE80211_CHAN_OFDM, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @IEEE80211_CHAN_DYN, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @IEEE80211_CHAN_2GHZ, align 4
  %54 = or i32 %52, %53
  %55 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %56 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %55, i32 0, i32 0
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = load i64, i64* %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  store i32 %54, i32* %60, align 8
  br label %61

61:                                               ; preds = %33
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %30

64:                                               ; preds = %30
  br label %65

65:                                               ; preds = %64, %1
  %66 = load %struct.otus_softc*, %struct.otus_softc** %2, align 8
  %67 = getelementptr inbounds %struct.otus_softc, %struct.otus_softc* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @AR5416_OPFLAGS_11A, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %106

74:                                               ; preds = %65
  store i32 14, i32* %6, align 4
  br label %75

75:                                               ; preds = %102, %74
  %76 = load i32, i32* %6, align 4
  %77 = load i64*, i64** @ar_chans, align 8
  %78 = call i32 @nitems(i64* %77)
  %79 = icmp slt i32 %76, %78
  br i1 %79, label %80, label %105

80:                                               ; preds = %75
  %81 = load i64*, i64** @ar_chans, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %5, align 8
  %86 = load i64, i64* %5, align 8
  %87 = load i32, i32* @IEEE80211_CHAN_5GHZ, align 4
  %88 = call i8* @ieee80211_ieee2mhz(i64 %86, i32 %87)
  %89 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %90 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %89, i32 0, i32 0
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = load i64, i64* %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  store i8* %88, i8** %94, align 8
  %95 = load i32, i32* @IEEE80211_CHAN_A, align 4
  %96 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %97 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %96, i32 0, i32 0
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = load i64, i64* %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  store i32 %95, i32* %101, align 8
  br label %102

102:                                              ; preds = %80
  %103 = load i32, i32* %6, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %6, align 4
  br label %75

105:                                              ; preds = %75
  br label %106

106:                                              ; preds = %105, %65
  ret void
}

declare dso_local i32 @le16toh(i32) #1

declare dso_local i32 @OTUS_DPRINTF(%struct.otus_softc*, i32, i8*, i32) #1

declare dso_local i8* @ieee80211_ieee2mhz(i64, i32) #1

declare dso_local i32 @nitems(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
