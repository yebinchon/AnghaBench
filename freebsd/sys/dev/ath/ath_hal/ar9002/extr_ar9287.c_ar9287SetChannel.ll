; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar9002/extr_ar9287.c_ar9287SetChannel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar9002/extr_ar9287.c_ar9287SetChannel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ieee80211_channel = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.ieee80211_channel* }

@AH_MARK_SETCHANNEL = common dso_local global i32 0, align 4
@AR_PHY_SYNTH_CONTROL = common dso_local global i32 0, align 4
@AR_PHY_CCK_TX_CTRL = common dso_local global i32 0, align 4
@AR_PHY_CCK_TX_CTRL_JAPAN = common dso_local global i32 0, align 4
@AR_AN_SYNTH9 = common dso_local global i32 0, align 4
@AR_AN_SYNTH9_REFDIVA = common dso_local global i32 0, align 4
@AH_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hal*, %struct.ieee80211_channel*)* @ar9287SetChannel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar9287SetChannel(%struct.ath_hal* %0, %struct.ieee80211_channel* %1) #0 {
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
  %13 = alloca %struct.TYPE_5__, align 4
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
  %25 = call i32 @ar5416GetChannelCenters(%struct.ath_hal* %23, %struct.ieee80211_channel* %24, %struct.TYPE_5__* %13)
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %8, align 4
  %28 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %29 = load i32, i32* @AR_PHY_SYNTH_CONTROL, align 4
  %30 = call i32 @OS_REG_READ(%struct.ath_hal* %28, i32 %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = and i32 %31, -1073741824
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, 4800
  br i1 %34, label %35, label %82

35:                                               ; preds = %2
  store i32 0, i32* %16, align 4
  store i32 1, i32* %5, align 4
  store i32 1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = mul nsw i32 %36, 65536
  %38 = sdiv i32 %37, 15
  store i32 %38, i32* %10, align 4
  %39 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %40 = call i64 @AR_SREV_KIWI_11_OR_LATER(%struct.ath_hal* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %60

42:                                               ; preds = %35
  %43 = load i32, i32* %8, align 4
  %44 = icmp eq i32 %43, 2484
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %47 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %48 = call %struct.TYPE_7__* @AH9287(%struct.ath_hal* %47)
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load i32, i32* %16, align 4
  %51 = call i32 @ath_hal_ini_write(%struct.ath_hal* %46, i32* %49, i32 1, i32 %50)
  br label %59

52:                                               ; preds = %42
  %53 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %54 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %55 = call %struct.TYPE_7__* @AH9287(%struct.ath_hal* %54)
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %16, align 4
  %58 = call i32 @ath_hal_ini_write(%struct.ath_hal* %53, i32* %56, i32 1, i32 %57)
  br label %59

59:                                               ; preds = %52, %45
  br label %60

60:                                               ; preds = %59, %35
  %61 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %62 = load i32, i32* @AR_PHY_CCK_TX_CTRL, align 4
  %63 = call i32 @OS_REG_READ(%struct.ath_hal* %61, i32 %62)
  store i32 %63, i32* %15, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp eq i32 %64, 2484
  br i1 %65, label %66, label %73

66:                                               ; preds = %60
  %67 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %68 = load i32, i32* @AR_PHY_CCK_TX_CTRL, align 4
  %69 = load i32, i32* %15, align 4
  %70 = load i32, i32* @AR_PHY_CCK_TX_CTRL_JAPAN, align 4
  %71 = or i32 %69, %70
  %72 = call i32 @OS_REG_WRITE(%struct.ath_hal* %67, i32 %68, i32 %71)
  br label %81

73:                                               ; preds = %60
  %74 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %75 = load i32, i32* @AR_PHY_CCK_TX_CTRL, align 4
  %76 = load i32, i32* %15, align 4
  %77 = load i32, i32* @AR_PHY_CCK_TX_CTRL_JAPAN, align 4
  %78 = xor i32 %77, -1
  %79 = and i32 %76, %78
  %80 = call i32 @OS_REG_WRITE(%struct.ath_hal* %74, i32 %75, i32 %79)
  br label %81

81:                                               ; preds = %73, %66
  br label %122

82:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %83 = load i32, i32* %8, align 4
  %84 = srem i32 %83, 20
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  store i32 3, i32* %7, align 4
  br label %102

87:                                               ; preds = %82
  %88 = load i32, i32* %8, align 4
  %89 = srem i32 %88, 10
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  store i32 2, i32* %7, align 4
  br label %101

92:                                               ; preds = %87
  store i32 0, i32* %7, align 4
  store i32 1, i32* %6, align 4
  store i32 1, i32* %14, align 4
  %93 = load i32, i32* %8, align 4
  %94 = mul nsw i32 %93, 32768
  %95 = sdiv i32 %94, 15
  store i32 %95, i32* %10, align 4
  %96 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %97 = load i32, i32* @AR_AN_SYNTH9, align 4
  %98 = load i32, i32* @AR_AN_SYNTH9_REFDIVA, align 4
  %99 = load i32, i32* %14, align 4
  %100 = call i32 @OS_A_REG_RMW_FIELD(%struct.ath_hal* %96, i32 %97, i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %92, %91
  br label %102

102:                                              ; preds = %101, %86
  %103 = load i32, i32* %6, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %121, label %105

105:                                              ; preds = %102
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* %7, align 4
  %109 = ashr i32 %107, %108
  %110 = mul nsw i32 %106, %109
  %111 = sdiv i32 %110, 60
  store i32 %111, i32* %9, align 4
  %112 = load i32, i32* %9, align 4
  %113 = and i32 %112, 511
  store i32 %113, i32* %10, align 4
  %114 = load i32, i32* %9, align 4
  %115 = and i32 %114, -512
  %116 = mul i32 %115, 2
  store i32 %116, i32* %11, align 4
  %117 = load i32, i32* %10, align 4
  %118 = shl i32 %117, 17
  %119 = load i32, i32* %11, align 4
  %120 = or i32 %118, %119
  store i32 %120, i32* %10, align 4
  br label %121

121:                                              ; preds = %105, %102
  br label %122

122:                                              ; preds = %121, %81
  %123 = load i32, i32* %12, align 4
  %124 = load i32, i32* %5, align 4
  %125 = shl i32 %124, 29
  %126 = or i32 %123, %125
  %127 = load i32, i32* %6, align 4
  %128 = shl i32 %127, 28
  %129 = or i32 %126, %128
  %130 = load i32, i32* %7, align 4
  %131 = shl i32 %130, 26
  %132 = or i32 %129, %131
  %133 = load i32, i32* %10, align 4
  %134 = or i32 %132, %133
  store i32 %134, i32* %12, align 4
  %135 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %136 = load i32, i32* @AR_PHY_SYNTH_CONTROL, align 4
  %137 = load i32, i32* %12, align 4
  %138 = call i32 @OS_REG_WRITE(%struct.ath_hal* %135, i32 %136, i32 %137)
  %139 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %140 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %141 = call %struct.TYPE_6__* @AH_PRIVATE(%struct.ath_hal* %140)
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  store %struct.ieee80211_channel* %139, %struct.ieee80211_channel** %142, align 8
  %143 = load i32, i32* @AH_TRUE, align 4
  ret i32 %143
}

declare dso_local i32 @OS_MARK(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @ar5416GetChannelCenters(%struct.ath_hal*, %struct.ieee80211_channel*, %struct.TYPE_5__*) #1

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i64 @AR_SREV_KIWI_11_OR_LATER(%struct.ath_hal*) #1

declare dso_local i32 @ath_hal_ini_write(%struct.ath_hal*, i32*, i32, i32) #1

declare dso_local %struct.TYPE_7__* @AH9287(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @OS_A_REG_RMW_FIELD(%struct.ath_hal*, i32, i32, i32) #1

declare dso_local %struct.TYPE_6__* @AH_PRIVATE(%struct.ath_hal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
