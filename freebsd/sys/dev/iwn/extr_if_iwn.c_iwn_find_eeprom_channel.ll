; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwn/extr_if_iwn.c_iwn_find_eeprom_channel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwn/extr_if_iwn.c_iwn_find_eeprom_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32* }
%struct.iwn_eeprom_chan = type { i32 }
%struct.iwn_softc = type { %struct.iwn_eeprom_chan** }
%struct.ieee80211_channel = type { i32, i32 }

@iwn_bands = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iwn_eeprom_chan* (%struct.iwn_softc*, %struct.ieee80211_channel*)* @iwn_find_eeprom_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iwn_eeprom_chan* @iwn_find_eeprom_channel(%struct.iwn_softc* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca %struct.iwn_eeprom_chan*, align 8
  %4 = alloca %struct.iwn_softc*, align 8
  %5 = alloca %struct.ieee80211_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.iwn_softc* %0, %struct.iwn_softc** %4, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %5, align 8
  %10 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %11 = call i64 @IEEE80211_IS_CHAN_HT40(%struct.ieee80211_channel* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %69

13:                                               ; preds = %2
  %14 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %15 = call i64 @IEEE80211_IS_CHAN_5GHZ(%struct.ieee80211_channel* %14)
  %16 = icmp ne i64 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 6, i32 5
  store i32 %18, i32* %6, align 4
  %19 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %20 = call i64 @IEEE80211_IS_CHAN_HT40D(%struct.ieee80211_channel* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %13
  %23 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %24 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %7, align 4
  br label %30

26:                                               ; preds = %13
  %27 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %28 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %26, %22
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %65, %30
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @iwn_bands, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %32, %38
  br i1 %39, label %40, label %68

40:                                               ; preds = %31
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @iwn_bands, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %40
  %54 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %55 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %54, i32 0, i32 0
  %56 = load %struct.iwn_eeprom_chan**, %struct.iwn_eeprom_chan*** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.iwn_eeprom_chan*, %struct.iwn_eeprom_chan** %56, i64 %58
  %60 = load %struct.iwn_eeprom_chan*, %struct.iwn_eeprom_chan** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.iwn_eeprom_chan, %struct.iwn_eeprom_chan* %60, i64 %62
  store %struct.iwn_eeprom_chan* %63, %struct.iwn_eeprom_chan** %3, align 8
  br label %127

64:                                               ; preds = %40
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %31

68:                                               ; preds = %31
  br label %126

69:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %70

70:                                               ; preds = %122, %69
  %71 = load i32, i32* %9, align 4
  %72 = icmp slt i32 %71, 5
  br i1 %72, label %73, label %125

73:                                               ; preds = %70
  store i32 0, i32* %8, align 4
  br label %74

74:                                               ; preds = %118, %73
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** @iwn_bands, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp slt i32 %75, %81
  br i1 %82, label %83, label %121

83:                                               ; preds = %74
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** @iwn_bands, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %95 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %93, %96
  br i1 %97, label %98, label %117

98:                                               ; preds = %83
  %99 = load i32, i32* %9, align 4
  %100 = icmp eq i32 %99, 0
  %101 = zext i1 %100 to i32
  %102 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %103 = call i32 @IEEE80211_IS_CHAN_A(%struct.ieee80211_channel* %102)
  %104 = xor i32 %101, %103
  %105 = icmp eq i32 %104, 1
  br i1 %105, label %106, label %117

106:                                              ; preds = %98
  %107 = load %struct.iwn_softc*, %struct.iwn_softc** %4, align 8
  %108 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %107, i32 0, i32 0
  %109 = load %struct.iwn_eeprom_chan**, %struct.iwn_eeprom_chan*** %108, align 8
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.iwn_eeprom_chan*, %struct.iwn_eeprom_chan** %109, i64 %111
  %113 = load %struct.iwn_eeprom_chan*, %struct.iwn_eeprom_chan** %112, align 8
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.iwn_eeprom_chan, %struct.iwn_eeprom_chan* %113, i64 %115
  store %struct.iwn_eeprom_chan* %116, %struct.iwn_eeprom_chan** %3, align 8
  br label %127

117:                                              ; preds = %98, %83
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %8, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %8, align 4
  br label %74

121:                                              ; preds = %74
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %9, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %9, align 4
  br label %70

125:                                              ; preds = %70
  br label %126

126:                                              ; preds = %125, %68
  store %struct.iwn_eeprom_chan* null, %struct.iwn_eeprom_chan** %3, align 8
  br label %127

127:                                              ; preds = %126, %106, %53
  %128 = load %struct.iwn_eeprom_chan*, %struct.iwn_eeprom_chan** %3, align 8
  ret %struct.iwn_eeprom_chan* %128
}

declare dso_local i64 @IEEE80211_IS_CHAN_HT40(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_5GHZ(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_HT40D(%struct.ieee80211_channel*) #1

declare dso_local i32 @IEEE80211_IS_CHAN_A(%struct.ieee80211_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
