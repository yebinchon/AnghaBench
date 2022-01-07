; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5211/extr_ar5211_reset.c_ar5211SetChannel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5211/extr_ar5211_reset.c_ar5211SetChannel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i64 }
%struct.ath_hal = type { i32 }
%struct.ieee80211_channel = type { i64 }
%struct.TYPE_5__ = type { %struct.ieee80211_channel* }

@chan2GHzData = common dso_local global %struct.TYPE_4__* null, align 8
@CI_2GHZ_INDEX_CORRECTION = common dso_local global i64 0, align 8
@AH_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hal*, %struct.ieee80211_channel*)* @ar5211SetChannel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar5211SetChannel(%struct.ath_hal* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %4, align 8
  %11 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %12 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %9, align 8
  %14 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %15 = call i64 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %37

17:                                               ; preds = %2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @chan2GHzData, align 8
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* @CI_2GHZ_INDEX_CORRECTION, align 8
  %21 = add i64 %19, %20
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %21
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %10, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @ath_hal_reverseBits(i64 %25, i32 8)
  %27 = and i32 %26, 255
  %28 = shl i32 %27, 5
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = shl i32 %31, 4
  %33 = or i32 %28, %32
  store i32 %33, i32* %7, align 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %8, align 8
  br label %39

37:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  %38 = load i64, i64* %9, align 8
  store i64 %38, i64* %8, align 8
  br label %39

39:                                               ; preds = %37, %17
  %40 = load i64, i64* %8, align 8
  %41 = icmp uge i64 %40, 145
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = load i64, i64* %8, align 8
  %44 = and i64 %43, 1
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %42, %39
  %47 = load i64, i64* %8, align 8
  %48 = sub i64 %47, 24
  %49 = call i32 @ath_hal_reverseBits(i64 %48, i32 8)
  %50 = and i32 %49, 255
  store i32 %50, i32* %6, align 4
  store i32 1, i32* %5, align 4
  br label %57

51:                                               ; preds = %42
  %52 = load i64, i64* %8, align 8
  %53 = sub i64 %52, 24
  %54 = udiv i64 %53, 2
  %55 = call i32 @ath_hal_reverseBits(i64 %54, i32 8)
  %56 = and i32 %55, 255
  store i32 %56, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %51, %46
  %58 = load i32, i32* %6, align 4
  %59 = shl i32 %58, 2
  %60 = load i32, i32* %5, align 4
  %61 = shl i32 %60, 1
  %62 = or i32 %59, %61
  %63 = or i32 %62, 1024
  %64 = or i32 %63, 1
  store i32 %64, i32* %6, align 4
  %65 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %66 = call i32 @AR_PHY(i32 39)
  %67 = load i32, i32* %7, align 4
  %68 = and i32 %67, 255
  %69 = shl i32 %68, 8
  %70 = load i32, i32* %6, align 4
  %71 = and i32 %70, 255
  %72 = or i32 %69, %71
  %73 = call i32 @OS_REG_WRITE(%struct.ath_hal* %65, i32 %66, i32 %72)
  %74 = load i32, i32* %6, align 4
  %75 = ashr i32 %74, 8
  store i32 %75, i32* %6, align 4
  %76 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %77 = call i32 @AR_PHY(i32 52)
  %78 = load i32, i32* %7, align 4
  %79 = and i32 %78, 65280
  %80 = load i32, i32* %6, align 4
  %81 = and i32 %80, 255
  %82 = or i32 %79, %81
  %83 = call i32 @OS_REG_WRITE(%struct.ath_hal* %76, i32 %77, i32 %82)
  %84 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %85 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %86 = call %struct.TYPE_5__* @AH_PRIVATE(%struct.ath_hal* %85)
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  store %struct.ieee80211_channel* %84, %struct.ieee80211_channel** %87, align 8
  %88 = load i32, i32* @AH_TRUE, align 4
  ret i32 %88
}

declare dso_local i64 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel*) #1

declare dso_local i32 @ath_hal_reverseBits(i64, i32) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @AR_PHY(i32) #1

declare dso_local %struct.TYPE_5__* @AH_PRIVATE(%struct.ath_hal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
