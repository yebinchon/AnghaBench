; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_misc.c_ar5212SetBasicRate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_misc.c_ar5212SetBasicRate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_channel = type { i32 }
%struct.ath_hal = type { i32 }
%struct.TYPE_4__ = type { i32, i32* }
%struct.TYPE_5__ = type { %struct.ieee80211_channel* }

@AH_NULL = common dso_local global %struct.ieee80211_channel* null, align 8
@AR_STA_ID1 = common dso_local global i32 0, align 4
@AR_STA_ID1_BASE_RATE_11B = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar5212SetBasicRate(%struct.ath_hal* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.ieee80211_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %10 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %11 = call %struct.TYPE_5__* @AH_PRIVATE(%struct.ath_hal* %10)
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %12, align 8
  store %struct.ieee80211_channel* %13, %struct.ieee80211_channel** %5, align 8
  %14 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %15 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** @AH_NULL, align 8
  %16 = icmp eq %struct.ieee80211_channel* %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %19 = call i32 @IEEE80211_IS_CHAN_CCK(%struct.ieee80211_channel* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17, %2
  br label %76

22:                                               ; preds = %17
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %48, %22
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %51

29:                                               ; preds = %23
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = and i32 %37, 128
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %29
  %41 = load i32, i32* %9, align 4
  %42 = and i32 %41, 127
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp sge i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %45, %40, %29
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %8, align 4
  br label %23

51:                                               ; preds = %23
  %52 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %53 = load i32, i32* @AR_STA_ID1, align 4
  %54 = call i32 @OS_REG_READ(%struct.ath_hal* %52, i32 %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %51
  %58 = load i32, i32* %7, align 4
  %59 = sdiv i32 %58, 2
  %60 = icmp sle i32 %59, 2
  br i1 %60, label %61, label %68

61:                                               ; preds = %57
  %62 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %63 = load i32, i32* @AR_STA_ID1, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @AR_STA_ID1_BASE_RATE_11B, align 4
  %66 = or i32 %64, %65
  %67 = call i32 @OS_REG_WRITE(%struct.ath_hal* %62, i32 %63, i32 %66)
  br label %76

68:                                               ; preds = %57, %51
  %69 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %70 = load i32, i32* @AR_STA_ID1, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @AR_STA_ID1_BASE_RATE_11B, align 4
  %73 = xor i32 %72, -1
  %74 = and i32 %71, %73
  %75 = call i32 @OS_REG_WRITE(%struct.ath_hal* %69, i32 %70, i32 %74)
  br label %76

76:                                               ; preds = %21, %68, %61
  ret void
}

declare dso_local %struct.TYPE_5__* @AH_PRIVATE(%struct.ath_hal*) #1

declare dso_local i32 @IEEE80211_IS_CHAN_CCK(%struct.ieee80211_channel*) #1

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
