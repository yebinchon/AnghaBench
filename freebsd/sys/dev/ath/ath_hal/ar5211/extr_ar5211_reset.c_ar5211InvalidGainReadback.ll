; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5211/extr_ar5211_reset.c_ar5211InvalidGainReadback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5211/extr_ar5211_reset.c_ar5211InvalidGainReadback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.ieee80211_channel = type { i32 }
%struct.TYPE_5__ = type { %struct.ieee80211_channel* }

@DYN_ADJ_LO_MARGIN = common dso_local global i32 0, align 4
@DYN_ADJ_UP_MARGIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hal*, %struct.TYPE_4__*)* @ar5211InvalidGainReadback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar5211InvalidGainReadback(%struct.ath_hal* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.ieee80211_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %12 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %13 = call %struct.TYPE_5__* @AH_PRIVATE(%struct.ath_hal* %12)
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %14, align 8
  store %struct.ieee80211_channel* %15, %struct.ieee80211_channel** %5, align 8
  %16 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %17 = call i64 @IEEE80211_IS_CHAN_CCK(%struct.ieee80211_channel* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %2
  store i32 24, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %20, 4
  store i32 %21, i32* %9, align 4
  store i32 64, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = add nsw i32 %22, 50
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %11, align 4
  %28 = add nsw i32 %27, 5
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  br label %45

31:                                               ; preds = %2
  store i32 63, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 50, i32* %9, align 4
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = add nsw i32 %33, 50
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @DYN_ADJ_LO_MARGIN, align 4
  %37 = add nsw i32 %35, %36
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @DYN_ADJ_UP_MARGIN, align 4
  %42 = sub nsw i32 %40, %41
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %31, %19
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp sge i32 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp sle i32 %53, %54
  br i1 %55, label %66, label %56

56:                                               ; preds = %52, %45
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp sge i32 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp sle i32 %61, %62
  br label %64

64:                                               ; preds = %60, %56
  %65 = phi i1 [ false, %56 ], [ %63, %60 ]
  br label %66

66:                                               ; preds = %64, %52
  %67 = phi i1 [ true, %52 ], [ %65, %64 ]
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  ret i32 %69
}

declare dso_local %struct.TYPE_5__* @AH_PRIVATE(%struct.ath_hal*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_CCK(%struct.ieee80211_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
