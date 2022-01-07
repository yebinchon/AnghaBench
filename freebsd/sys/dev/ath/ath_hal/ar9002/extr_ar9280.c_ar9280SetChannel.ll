; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar9002/extr_ar9280.c_ar9280SetChannel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar9002/extr_ar9280.c_ar9280SetChannel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ieee80211_channel = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { %struct.ieee80211_channel* }

@AH_MARK_SETCHANNEL = common dso_local global i32 0, align 4
@AR_PHY_SYNTH_CONTROL = common dso_local global i32 0, align 4
@AR_EEP_FRAC_N_5G = common dso_local global i32 0, align 4
@HAL_OK = common dso_local global i64 0, align 8
@AR_PHY_CCK_TX_CTRL = common dso_local global i32 0, align 4
@AR_PHY_CCK_TX_CTRL_JAPAN = common dso_local global i32 0, align 4
@AR_AN_SYNTH9 = common dso_local global i32 0, align 4
@AR_AN_SYNTH9_REFDIVA = common dso_local global i32 0, align 4
@AH_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hal*, %struct.ieee80211_channel*)* @ar9280SetChannel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar9280SetChannel(%struct.ath_hal* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_4__, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 24, i32* %14, align 4
  %17 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %18 = load i32, i32* @AH_MARK_SETCHANNEL, align 4
  %19 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %20 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @OS_MARK(%struct.ath_hal* %17, i32 %18, i32 %21)
  %23 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %24 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %25 = call i32 @ar5416GetChannelCenters(%struct.ath_hal* %23, %struct.ieee80211_channel* %24, %struct.TYPE_4__* %13)
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %8, align 4
  %28 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %29 = load i32, i32* @AR_PHY_SYNTH_CONTROL, align 4
  %30 = call i32 @OS_REG_READ(%struct.ath_hal* %28, i32 %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = and i32 %31, -1073741824
  store i32 %32, i32* %12, align 4
  %33 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %34 = load i32, i32* @AR_EEP_FRAC_N_5G, align 4
  %35 = call i64 @ath_hal_eepromGet(%struct.ath_hal* %33, i32 %34, i32* %15)
  %36 = load i64, i64* @HAL_OK, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %2
  store i32 0, i32* %15, align 4
  br label %39

39:                                               ; preds = %38, %2
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 4800
  br i1 %41, label %42, label %67

42:                                               ; preds = %39
  store i32 1, i32* %5, align 4
  store i32 1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = mul nsw i32 %43, 65536
  %45 = sdiv i32 %44, 15
  store i32 %45, i32* %10, align 4
  %46 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %47 = load i32, i32* @AR_PHY_CCK_TX_CTRL, align 4
  %48 = call i32 @OS_REG_READ(%struct.ath_hal* %46, i32 %47)
  store i32 %48, i32* %16, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp eq i32 %49, 2484
  br i1 %50, label %51, label %58

51:                                               ; preds = %42
  %52 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %53 = load i32, i32* @AR_PHY_CCK_TX_CTRL, align 4
  %54 = load i32, i32* %16, align 4
  %55 = load i32, i32* @AR_PHY_CCK_TX_CTRL_JAPAN, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @OS_REG_WRITE(%struct.ath_hal* %52, i32 %53, i32 %56)
  br label %66

58:                                               ; preds = %42
  %59 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %60 = load i32, i32* @AR_PHY_CCK_TX_CTRL, align 4
  %61 = load i32, i32* %16, align 4
  %62 = load i32, i32* @AR_PHY_CCK_TX_CTRL_JAPAN, align 4
  %63 = xor i32 %62, -1
  %64 = and i32 %61, %63
  %65 = call i32 @OS_REG_WRITE(%struct.ath_hal* %59, i32 %60, i32 %64)
  br label %66

66:                                               ; preds = %58, %51
  br label %125

67:                                               ; preds = %39
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %68 = load i32, i32* %15, align 4
  switch i32 %68, label %96 [
    i32 0, label %69
    i32 1, label %95
  ]

69:                                               ; preds = %67
  %70 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %71 = call i32 @IEEE80211_IS_CHAN_QUARTER(%struct.ieee80211_channel* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %75 = call i32 @IEEE80211_IS_CHAN_HALF(%struct.ieee80211_channel* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %73, %69
  store i32 0, i32* %7, align 4
  br label %90

78:                                               ; preds = %73
  %79 = load i32, i32* %8, align 4
  %80 = srem i32 %79, 20
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  store i32 3, i32* %7, align 4
  br label %89

83:                                               ; preds = %78
  %84 = load i32, i32* %8, align 4
  %85 = srem i32 %84, 10
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  store i32 2, i32* %7, align 4
  br label %88

88:                                               ; preds = %87, %83
  br label %89

89:                                               ; preds = %88, %82
  br label %90

90:                                               ; preds = %89, %77
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  br label %105

94:                                               ; preds = %90
  br label %95

95:                                               ; preds = %67, %94
  br label %96

96:                                               ; preds = %67, %95
  store i32 0, i32* %7, align 4
  store i32 1, i32* %6, align 4
  store i32 1, i32* %14, align 4
  %97 = load i32, i32* %8, align 4
  %98 = mul nsw i32 %97, 32768
  %99 = sdiv i32 %98, 15
  store i32 %99, i32* %10, align 4
  %100 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %101 = load i32, i32* @AR_AN_SYNTH9, align 4
  %102 = load i32, i32* @AR_AN_SYNTH9_REFDIVA, align 4
  %103 = load i32, i32* %14, align 4
  %104 = call i32 @OS_A_REG_RMW_FIELD(%struct.ath_hal* %100, i32 %101, i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %96, %93
  %106 = load i32, i32* %6, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %124, label %108

108:                                              ; preds = %105
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %14, align 4
  %111 = load i32, i32* %7, align 4
  %112 = ashr i32 %110, %111
  %113 = mul nsw i32 %109, %112
  %114 = sdiv i32 %113, 60
  store i32 %114, i32* %9, align 4
  %115 = load i32, i32* %9, align 4
  %116 = and i32 %115, 511
  store i32 %116, i32* %10, align 4
  %117 = load i32, i32* %9, align 4
  %118 = and i32 %117, -512
  %119 = mul i32 %118, 2
  store i32 %119, i32* %11, align 4
  %120 = load i32, i32* %10, align 4
  %121 = shl i32 %120, 17
  %122 = load i32, i32* %11, align 4
  %123 = or i32 %121, %122
  store i32 %123, i32* %10, align 4
  br label %124

124:                                              ; preds = %108, %105
  br label %125

125:                                              ; preds = %124, %66
  %126 = load i32, i32* %12, align 4
  %127 = load i32, i32* %5, align 4
  %128 = shl i32 %127, 29
  %129 = or i32 %126, %128
  %130 = load i32, i32* %6, align 4
  %131 = shl i32 %130, 28
  %132 = or i32 %129, %131
  %133 = load i32, i32* %7, align 4
  %134 = shl i32 %133, 26
  %135 = or i32 %132, %134
  %136 = load i32, i32* %10, align 4
  %137 = or i32 %135, %136
  store i32 %137, i32* %12, align 4
  %138 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %139 = load i32, i32* @AR_PHY_SYNTH_CONTROL, align 4
  %140 = load i32, i32* %12, align 4
  %141 = call i32 @OS_REG_WRITE(%struct.ath_hal* %138, i32 %139, i32 %140)
  %142 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %143 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %144 = call %struct.TYPE_5__* @AH_PRIVATE(%struct.ath_hal* %143)
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 0
  store %struct.ieee80211_channel* %142, %struct.ieee80211_channel** %145, align 8
  %146 = load i32, i32* @AH_TRUE, align 4
  ret i32 %146
}

declare dso_local i32 @OS_MARK(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @ar5416GetChannelCenters(%struct.ath_hal*, %struct.ieee80211_channel*, %struct.TYPE_4__*) #1

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i64 @ath_hal_eepromGet(%struct.ath_hal*, i32, i32*) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @IEEE80211_IS_CHAN_QUARTER(%struct.ieee80211_channel*) #1

declare dso_local i32 @IEEE80211_IS_CHAN_HALF(%struct.ieee80211_channel*) #1

declare dso_local i32 @OS_A_REG_RMW_FIELD(%struct.ath_hal*, i32, i32, i32) #1

declare dso_local %struct.TYPE_5__* @AH_PRIVATE(%struct.ath_hal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
