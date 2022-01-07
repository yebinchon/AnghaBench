; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar9002/extr_ar9280_attach.c_ar9280WriteIni.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar9002/extr_ar9280_attach.c_ar9280WriteIni.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ieee80211_channel = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_7__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_7__, %struct.TYPE_7__ }

@AR_PHY_ADC_SERIAL_CTL = common dso_local global i32 0, align 4
@AR_PHY_SEL_INTERNAL_ADDAC = common dso_local global i32 0, align 4
@AR_AN_TOP2 = common dso_local global i32 0, align 4
@AR_AN_TOP2_PWDCLKIND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hal*, %struct.ieee80211_channel*)* @ar9280WriteIni to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9280WriteIni(%struct.ath_hal* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %4, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %13 = call i64 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %2
  store i32 2, i32* %6, align 4
  %16 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %17 = call i64 @IEEE80211_IS_CHAN_HT40(%struct.ieee80211_channel* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 3, i32* %5, align 4
  br label %27

20:                                               ; preds = %15
  %21 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %22 = call i64 @IEEE80211_IS_CHAN_108G(%struct.ieee80211_channel* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 5, i32* %5, align 4
  br label %26

25:                                               ; preds = %20
  store i32 4, i32* %5, align 4
  br label %26

26:                                               ; preds = %25, %24
  br label %27

27:                                               ; preds = %26, %19
  br label %39

28:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  %29 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %30 = call i64 @IEEE80211_IS_CHAN_HT40(%struct.ieee80211_channel* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %34 = call i64 @IEEE80211_IS_CHAN_TURBO(%struct.ieee80211_channel* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32, %28
  store i32 2, i32* %5, align 4
  br label %38

37:                                               ; preds = %32
  store i32 1, i32* %5, align 4
  br label %38

38:                                               ; preds = %37, %36
  br label %39

39:                                               ; preds = %38, %27
  %40 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %41 = call i32 @AR_PHY(i32 0)
  %42 = call i32 @OS_REG_WRITE(%struct.ath_hal* %40, i32 %41, i32 7)
  %43 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %44 = load i32, i32* @AR_PHY_ADC_SERIAL_CTL, align 4
  %45 = load i32, i32* @AR_PHY_SEL_INTERNAL_ADDAC, align 4
  %46 = call i32 @OS_REG_WRITE(%struct.ath_hal* %43, i32 %44, i32 %45)
  %47 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %48 = call %struct.TYPE_10__* @AH5212(%struct.ath_hal* %47)
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  store %struct.TYPE_7__* %49, %struct.TYPE_7__** %9, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %50, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @HALASSERT(i32 %55)
  store i32 0, i32* %8, align 4
  br label %57

57:                                               ; preds = %100, %39
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %103

63:                                               ; preds = %57
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @HAL_INI_VAL(%struct.TYPE_7__* %64, i32 %65, i32 0)
  store i32 %66, i32* %10, align 4
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @HAL_INI_VAL(%struct.TYPE_7__* %67, i32 %68, i32 %69)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @AR_AN_TOP2, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %85

74:                                               ; preds = %63
  %75 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %76 = call %struct.TYPE_9__* @AH5416(%struct.ath_hal* %75)
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %74
  %81 = load i32, i32* @AR_AN_TOP2_PWDCLKIND, align 4
  %82 = xor i32 %81, -1
  %83 = load i32, i32* %11, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %11, align 4
  br label %85

85:                                               ; preds = %80, %74, %63
  %86 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @OS_REG_WRITE(%struct.ath_hal* %86, i32 %87, i32 %88)
  %90 = load i32, i32* %10, align 4
  %91 = icmp sge i32 %90, 30720
  br i1 %91, label %92, label %97

92:                                               ; preds = %85
  %93 = load i32, i32* %10, align 4
  %94 = icmp slt i32 %93, 30976
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  %96 = call i32 @OS_DELAY(i32 100)
  br label %97

97:                                               ; preds = %95, %92, %85
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @DMA_YIELD(i32 %98)
  br label %100

100:                                              ; preds = %97
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %8, align 4
  br label %57

103:                                              ; preds = %57
  %104 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %105 = call i64 @AR_SREV_MERLIN_20_OR_LATER(%struct.ath_hal* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %122

107:                                              ; preds = %103
  %108 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %109 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %110 = call %struct.TYPE_8__* @AH9280(%struct.ath_hal* %109)
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 2
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @ath_hal_ini_write(%struct.ath_hal* %108, %struct.TYPE_7__* %111, i32 %112, i32 %113)
  store i32 %114, i32* %7, align 4
  %115 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %116 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %117 = call %struct.TYPE_8__* @AH9280(%struct.ath_hal* %116)
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 1
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* %7, align 4
  %121 = call i32 @ath_hal_ini_write(%struct.ath_hal* %115, %struct.TYPE_7__* %118, i32 %119, i32 %120)
  store i32 %121, i32* %7, align 4
  br label %122

122:                                              ; preds = %107, %103
  %123 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %124 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %125 = call %struct.TYPE_10__* @AH5212(%struct.ath_hal* %124)
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  %127 = load i32, i32* %7, align 4
  %128 = call i32 @ath_hal_ini_write(%struct.ath_hal* %123, %struct.TYPE_7__* %126, i32 1, i32 %127)
  store i32 %128, i32* %7, align 4
  %129 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %130 = call i64 @AR_SREV_MERLIN_20(%struct.ath_hal* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %145

132:                                              ; preds = %122
  %133 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %134 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %135 = call i64 @IS_5GHZ_FAST_CLOCK_EN(%struct.ath_hal* %133, %struct.ieee80211_channel* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %132
  %138 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %139 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %140 = call %struct.TYPE_8__* @AH9280(%struct.ath_hal* %139)
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = load i32, i32* %5, align 4
  %143 = load i32, i32* %7, align 4
  %144 = call i32 @ath_hal_ini_write(%struct.ath_hal* %138, %struct.TYPE_7__* %141, i32 %142, i32 %143)
  store i32 %144, i32* %7, align 4
  br label %145

145:                                              ; preds = %137, %132, %122
  ret void
}

declare dso_local i64 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_HT40(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_108G(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_TURBO(%struct.ieee80211_channel*) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @AR_PHY(i32) #1

declare dso_local %struct.TYPE_10__* @AH5212(%struct.ath_hal*) #1

declare dso_local i32 @HALASSERT(i32) #1

declare dso_local i32 @HAL_INI_VAL(%struct.TYPE_7__*, i32, i32) #1

declare dso_local %struct.TYPE_9__* @AH5416(%struct.ath_hal*) #1

declare dso_local i32 @OS_DELAY(i32) #1

declare dso_local i32 @DMA_YIELD(i32) #1

declare dso_local i64 @AR_SREV_MERLIN_20_OR_LATER(%struct.ath_hal*) #1

declare dso_local i32 @ath_hal_ini_write(%struct.ath_hal*, %struct.TYPE_7__*, i32, i32) #1

declare dso_local %struct.TYPE_8__* @AH9280(%struct.ath_hal*) #1

declare dso_local i64 @AR_SREV_MERLIN_20(%struct.ath_hal*) #1

declare dso_local i64 @IS_5GHZ_FAST_CLOCK_EN(%struct.ath_hal*, %struct.ieee80211_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
