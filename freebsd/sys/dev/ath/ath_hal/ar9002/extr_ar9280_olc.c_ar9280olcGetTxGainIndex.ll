; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar9002/extr_ar9280_olc.c_ar9280olcGetTxGainIndex.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar9002/extr_ar9280_olc.c_ar9280olcGetTxGainIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ieee80211_channel = type { i32 }
%struct.calDataPerFreqOpLoop = type { i64**, i64** }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i64* }

@AR5416_BCHAN_UNUSED = common dso_local global i64 0, align 8
@AR9280_TX_GAIN_TABLE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar9280olcGetTxGainIndex(%struct.ath_hal* %0, %struct.ieee80211_channel* %1, %struct.calDataPerFreqOpLoop* %2, i64* %3, i64 %4, i64* %5, i64* %6) #0 {
  %8 = alloca %struct.ath_hal*, align 8
  %9 = alloca %struct.ieee80211_channel*, align 8
  %10 = alloca %struct.calDataPerFreqOpLoop*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.TYPE_4__, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %8, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %9, align 8
  store %struct.calDataPerFreqOpLoop* %2, %struct.calDataPerFreqOpLoop** %10, align 8
  store i64* %3, i64** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64* %5, i64** %13, align 8
  store i64* %6, i64** %14, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %18, align 8
  %22 = load %struct.ath_hal*, %struct.ath_hal** %8, align 8
  %23 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %24 = call i32 @ar5416GetChannelCenters(%struct.ath_hal* %22, %struct.ieee80211_channel* %23, %struct.TYPE_4__* %21)
  store i64 0, i64* %19, align 8
  br label %25

25:                                               ; preds = %38, %7
  %26 = load i64, i64* %19, align 8
  %27 = load i64, i64* %12, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %25
  %30 = load i64*, i64** %11, align 8
  %31 = load i64, i64* %19, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @AR5416_BCHAN_UNUSED, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %41

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %37
  %39 = load i64, i64* %19, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %19, align 8
  br label %25

41:                                               ; preds = %36, %25
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %45 = call i32 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel* %44)
  %46 = call i64 @FREQ2FBIN(i32 %43, i32 %45)
  %47 = load i64*, i64** %11, align 8
  %48 = load i64, i64* %19, align 8
  %49 = call i64 @ath_ee_getLowerUpperIndex(i64 %46, i64* %47, i64 %48, i64* %17, i64* %18)
  store i64 %49, i64* %20, align 8
  %50 = load i64, i64* %20, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %72

52:                                               ; preds = %41
  %53 = load %struct.calDataPerFreqOpLoop*, %struct.calDataPerFreqOpLoop** %10, align 8
  %54 = load i64, i64* %17, align 8
  %55 = getelementptr inbounds %struct.calDataPerFreqOpLoop, %struct.calDataPerFreqOpLoop* %53, i64 %54
  %56 = getelementptr inbounds %struct.calDataPerFreqOpLoop, %struct.calDataPerFreqOpLoop* %55, i32 0, i32 0
  %57 = load i64**, i64*** %56, align 8
  %58 = getelementptr inbounds i64*, i64** %57, i64 0
  %59 = load i64*, i64** %58, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 0
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %15, align 8
  %62 = load %struct.calDataPerFreqOpLoop*, %struct.calDataPerFreqOpLoop** %10, align 8
  %63 = load i64, i64* %17, align 8
  %64 = getelementptr inbounds %struct.calDataPerFreqOpLoop, %struct.calDataPerFreqOpLoop* %62, i64 %63
  %65 = getelementptr inbounds %struct.calDataPerFreqOpLoop, %struct.calDataPerFreqOpLoop* %64, i32 0, i32 1
  %66 = load i64**, i64*** %65, align 8
  %67 = getelementptr inbounds i64*, i64** %66, i64 0
  %68 = load i64*, i64** %67, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64*, i64** %13, align 8
  store i64 %70, i64* %71, align 8
  br label %103

72:                                               ; preds = %41
  %73 = load %struct.calDataPerFreqOpLoop*, %struct.calDataPerFreqOpLoop** %10, align 8
  %74 = load i64, i64* %18, align 8
  %75 = getelementptr inbounds %struct.calDataPerFreqOpLoop, %struct.calDataPerFreqOpLoop* %73, i64 %74
  %76 = getelementptr inbounds %struct.calDataPerFreqOpLoop, %struct.calDataPerFreqOpLoop* %75, i32 0, i32 0
  %77 = load i64**, i64*** %76, align 8
  %78 = getelementptr inbounds i64*, i64** %77, i64 0
  %79 = load i64*, i64** %78, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 0
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %15, align 8
  %82 = load %struct.calDataPerFreqOpLoop*, %struct.calDataPerFreqOpLoop** %10, align 8
  %83 = load i64, i64* %17, align 8
  %84 = getelementptr inbounds %struct.calDataPerFreqOpLoop, %struct.calDataPerFreqOpLoop* %82, i64 %83
  %85 = getelementptr inbounds %struct.calDataPerFreqOpLoop, %struct.calDataPerFreqOpLoop* %84, i32 0, i32 1
  %86 = load i64**, i64*** %85, align 8
  %87 = getelementptr inbounds i64*, i64** %86, i64 0
  %88 = load i64*, i64** %87, align 8
  %89 = getelementptr inbounds i64, i64* %88, i64 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.calDataPerFreqOpLoop*, %struct.calDataPerFreqOpLoop** %10, align 8
  %92 = load i64, i64* %18, align 8
  %93 = getelementptr inbounds %struct.calDataPerFreqOpLoop, %struct.calDataPerFreqOpLoop* %91, i64 %92
  %94 = getelementptr inbounds %struct.calDataPerFreqOpLoop, %struct.calDataPerFreqOpLoop* %93, i32 0, i32 1
  %95 = load i64**, i64*** %94, align 8
  %96 = getelementptr inbounds i64*, i64** %95, i64 0
  %97 = load i64*, i64** %96, align 8
  %98 = getelementptr inbounds i64, i64* %97, i64 0
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %90, %99
  %101 = sdiv i64 %100, 2
  %102 = load i64*, i64** %13, align 8
  store i64 %101, i64* %102, align 8
  br label %103

103:                                              ; preds = %72, %52
  br label %104

104:                                              ; preds = %122, %103
  %105 = load i64, i64* %15, align 8
  %106 = load %struct.ath_hal*, %struct.ath_hal** %8, align 8
  %107 = call %struct.TYPE_5__* @AH9280(%struct.ath_hal* %106)
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i64*, i64** %108, align 8
  %110 = load i64, i64* %16, align 8
  %111 = getelementptr inbounds i64, i64* %109, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = icmp sgt i64 %105, %112
  br i1 %113, label %114, label %120

114:                                              ; preds = %104
  %115 = load i64, i64* %16, align 8
  %116 = load i32, i32* @AR9280_TX_GAIN_TABLE_SIZE, align 4
  %117 = sub nsw i32 %116, 1
  %118 = sext i32 %117 to i64
  %119 = icmp slt i64 %115, %118
  br label %120

120:                                              ; preds = %114, %104
  %121 = phi i1 [ false, %104 ], [ %119, %114 ]
  br i1 %121, label %122, label %125

122:                                              ; preds = %120
  %123 = load i64, i64* %16, align 8
  %124 = add nsw i64 %123, 1
  store i64 %124, i64* %16, align 8
  br label %104

125:                                              ; preds = %120
  %126 = load i64, i64* %16, align 8
  %127 = load i64*, i64** %14, align 8
  store i64 %126, i64* %127, align 8
  ret void
}

declare dso_local i32 @ar5416GetChannelCenters(%struct.ath_hal*, %struct.ieee80211_channel*, %struct.TYPE_4__*) #1

declare dso_local i64 @ath_ee_getLowerUpperIndex(i64, i64*, i64, i64*, i64*) #1

declare dso_local i64 @FREQ2FBIN(i32, i32) #1

declare dso_local i32 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel*) #1

declare dso_local %struct.TYPE_5__* @AH9280(%struct.ath_hal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
