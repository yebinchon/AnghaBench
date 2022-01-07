; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/extr_ah.c_ath_hal_get_curmode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/extr_ah.c_ath_hal_get_curmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ieee80211_channel = type { i32 }

@HAL_MODE_11NG_HT20 = common dso_local global i32 0, align 4
@HAL_MODE_TURBO = common dso_local global i32 0, align 4
@HAL_MODE_11NA_HT20 = common dso_local global i32 0, align 4
@HAL_MODE_11NA_HT40PLUS = common dso_local global i32 0, align 4
@HAL_MODE_11NA_HT40MINUS = common dso_local global i32 0, align 4
@HAL_MODE_11A = common dso_local global i32 0, align 4
@HAL_MODE_11NG_HT40PLUS = common dso_local global i32 0, align 4
@HAL_MODE_11NG_HT40MINUS = common dso_local global i32 0, align 4
@HAL_MODE_11G = common dso_local global i32 0, align 4
@HAL_MODE_11B = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath_hal_get_curmode(%struct.ath_hal* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_hal*, align 8
  %5 = alloca %struct.ieee80211_channel*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %4, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %5, align 8
  %6 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %7 = icmp ne %struct.ieee80211_channel* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* @HAL_MODE_11NG_HT20, align 4
  store i32 %9, i32* %3, align 4
  br label %97

10:                                               ; preds = %2
  %11 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %12 = call i64 @IEEE80211_IS_CHAN_TURBO(%struct.ieee80211_channel* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load i32, i32* @HAL_MODE_TURBO, align 4
  store i32 %15, i32* %3, align 4
  br label %97

16:                                               ; preds = %10
  %17 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %18 = call i64 @IEEE80211_IS_CHAN_5GHZ(%struct.ieee80211_channel* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %22 = call i64 @IEEE80211_IS_CHAN_HT20(%struct.ieee80211_channel* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @HAL_MODE_11NA_HT20, align 4
  store i32 %25, i32* %3, align 4
  br label %97

26:                                               ; preds = %20, %16
  %27 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %28 = call i64 @IEEE80211_IS_CHAN_5GHZ(%struct.ieee80211_channel* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %32 = call i64 @IEEE80211_IS_CHAN_HT40U(%struct.ieee80211_channel* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @HAL_MODE_11NA_HT40PLUS, align 4
  store i32 %35, i32* %3, align 4
  br label %97

36:                                               ; preds = %30, %26
  %37 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %38 = call i64 @IEEE80211_IS_CHAN_5GHZ(%struct.ieee80211_channel* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %42 = call i64 @IEEE80211_IS_CHAN_HT40D(%struct.ieee80211_channel* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* @HAL_MODE_11NA_HT40MINUS, align 4
  store i32 %45, i32* %3, align 4
  br label %97

46:                                               ; preds = %40, %36
  %47 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %48 = call i64 @IEEE80211_IS_CHAN_A(%struct.ieee80211_channel* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* @HAL_MODE_11A, align 4
  store i32 %51, i32* %3, align 4
  br label %97

52:                                               ; preds = %46
  %53 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %54 = call i64 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %58 = call i64 @IEEE80211_IS_CHAN_HT20(%struct.ieee80211_channel* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i32, i32* @HAL_MODE_11NG_HT20, align 4
  store i32 %61, i32* %3, align 4
  br label %97

62:                                               ; preds = %56, %52
  %63 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %64 = call i64 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %62
  %67 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %68 = call i64 @IEEE80211_IS_CHAN_HT40U(%struct.ieee80211_channel* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i32, i32* @HAL_MODE_11NG_HT40PLUS, align 4
  store i32 %71, i32* %3, align 4
  br label %97

72:                                               ; preds = %66, %62
  %73 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %74 = call i64 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %72
  %77 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %78 = call i64 @IEEE80211_IS_CHAN_HT40D(%struct.ieee80211_channel* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load i32, i32* @HAL_MODE_11NG_HT40MINUS, align 4
  store i32 %81, i32* %3, align 4
  br label %97

82:                                               ; preds = %76, %72
  %83 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %84 = call i64 @IEEE80211_IS_CHAN_G(%struct.ieee80211_channel* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = load i32, i32* @HAL_MODE_11G, align 4
  store i32 %87, i32* %3, align 4
  br label %97

88:                                               ; preds = %82
  %89 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %90 = call i64 @IEEE80211_IS_CHAN_B(%struct.ieee80211_channel* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = load i32, i32* @HAL_MODE_11B, align 4
  store i32 %93, i32* %3, align 4
  br label %97

94:                                               ; preds = %88
  %95 = call i32 @HALASSERT(i32 0)
  %96 = load i32, i32* @HAL_MODE_11NG_HT20, align 4
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %94, %92, %86, %80, %70, %60, %50, %44, %34, %24, %14, %8
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i64 @IEEE80211_IS_CHAN_TURBO(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_5GHZ(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_HT20(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_HT40U(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_HT40D(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_A(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_G(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_B(%struct.ieee80211_channel*) #1

declare dso_local i32 @HALASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
