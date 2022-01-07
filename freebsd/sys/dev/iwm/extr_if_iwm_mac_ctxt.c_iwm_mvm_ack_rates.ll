; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_mac_ctxt.c_iwm_mvm_ack_rates.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_mac_ctxt.c_iwm_mvm_ack_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_softc = type { i32 }
%struct.iwm_node = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ieee80211_rateset }
%struct.ieee80211_rateset = type { i32 }

@IWM_FIRST_CCK_RATE = common dso_local global i32 0, align 4
@IWM_LAST_CCK_RATE = common dso_local global i32 0, align 4
@IEEE80211_RATE_BASIC = common dso_local global i32 0, align 4
@IWM_FIRST_OFDM_RATE = common dso_local global i32 0, align 4
@IWM_LAST_NON_HT_RATE = common dso_local global i32 0, align 4
@IWM_RATE_24M_INDEX = common dso_local global i32 0, align 4
@IWM_RATE_12M_INDEX = common dso_local global i32 0, align 4
@IWM_RATE_11M_INDEX = common dso_local global i32 0, align 4
@IWM_RATE_5M_INDEX = common dso_local global i32 0, align 4
@IWM_RATE_2M_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwm_softc*, i32, i32*, i32*, %struct.iwm_node*)* @iwm_mvm_ack_rates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwm_mvm_ack_rates(%struct.iwm_softc* %0, i32 %1, i32* %2, i32* %3, %struct.iwm_node* %4) #0 {
  %6 = alloca %struct.iwm_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.iwm_node*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ieee80211_rateset*, align 8
  store %struct.iwm_softc* %0, %struct.iwm_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.iwm_node* %4, %struct.iwm_node** %10, align 8
  store i32 100, i32* %11, align 4
  store i32 100, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %17 = load %struct.iwm_node*, %struct.iwm_node** %10, align 8
  %18 = getelementptr inbounds %struct.iwm_node, %struct.iwm_node* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.ieee80211_rateset* %19, %struct.ieee80211_rateset** %16, align 8
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %51

22:                                               ; preds = %5
  %23 = load i32, i32* @IWM_FIRST_CCK_RATE, align 4
  store i32 %23, i32* %15, align 4
  br label %24

24:                                               ; preds = %47, %22
  %25 = load i32, i32* %15, align 4
  %26 = load i32, i32* @IWM_LAST_CCK_RATE, align 4
  %27 = icmp sle i32 %25, %26
  br i1 %27, label %28, label %50

28:                                               ; preds = %24
  %29 = load %struct.ieee80211_rateset*, %struct.ieee80211_rateset** %16, align 8
  %30 = load i32, i32* %15, align 4
  %31 = call i32 @iwm_ridx2rate(%struct.ieee80211_rateset* %29, i32 %30)
  %32 = load i32, i32* @IEEE80211_RATE_BASIC, align 4
  %33 = and i32 %31, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %47

36:                                               ; preds = %28
  %37 = load i32, i32* %15, align 4
  %38 = shl i32 1, %37
  %39 = load i32, i32* %13, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %15, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load i32, i32* %15, align 4
  store i32 %45, i32* %12, align 4
  br label %46

46:                                               ; preds = %44, %36
  br label %47

47:                                               ; preds = %46, %35
  %48 = load i32, i32* %15, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %15, align 4
  br label %24

50:                                               ; preds = %24
  br label %51

51:                                               ; preds = %50, %5
  %52 = load i32, i32* @IWM_FIRST_OFDM_RATE, align 4
  store i32 %52, i32* %15, align 4
  br label %53

53:                                               ; preds = %78, %51
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* @IWM_LAST_NON_HT_RATE, align 4
  %56 = icmp sle i32 %54, %55
  br i1 %56, label %57, label %81

57:                                               ; preds = %53
  %58 = load %struct.ieee80211_rateset*, %struct.ieee80211_rateset** %16, align 8
  %59 = load i32, i32* %15, align 4
  %60 = call i32 @iwm_ridx2rate(%struct.ieee80211_rateset* %58, i32 %59)
  %61 = load i32, i32* @IEEE80211_RATE_BASIC, align 4
  %62 = and i32 %60, %61
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %78

65:                                               ; preds = %57
  %66 = load i32, i32* %15, align 4
  %67 = load i32, i32* @IWM_FIRST_OFDM_RATE, align 4
  %68 = sub nsw i32 %66, %67
  %69 = shl i32 1, %68
  %70 = load i32, i32* %14, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %15, align 4
  %74 = icmp sgt i32 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %65
  %76 = load i32, i32* %15, align 4
  store i32 %76, i32* %11, align 4
  br label %77

77:                                               ; preds = %75, %65
  br label %78

78:                                               ; preds = %77, %64
  %79 = load i32, i32* %15, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %15, align 4
  br label %53

81:                                               ; preds = %53
  %82 = load i32, i32* @IWM_RATE_24M_INDEX, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %81
  %86 = call i32 @IWM_RATE_BIT_MSK(i32 24)
  %87 = load i32, i32* @IWM_FIRST_OFDM_RATE, align 4
  %88 = ashr i32 %86, %87
  %89 = load i32, i32* %14, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %14, align 4
  br label %91

91:                                               ; preds = %85, %81
  %92 = load i32, i32* @IWM_RATE_12M_INDEX, align 4
  %93 = load i32, i32* %11, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %91
  %96 = call i32 @IWM_RATE_BIT_MSK(i32 12)
  %97 = load i32, i32* @IWM_FIRST_OFDM_RATE, align 4
  %98 = ashr i32 %96, %97
  %99 = load i32, i32* %14, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %14, align 4
  br label %101

101:                                              ; preds = %95, %91
  %102 = call i32 @IWM_RATE_BIT_MSK(i32 6)
  %103 = load i32, i32* @IWM_FIRST_OFDM_RATE, align 4
  %104 = ashr i32 %102, %103
  %105 = load i32, i32* %14, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %14, align 4
  %107 = load i32, i32* @IWM_RATE_11M_INDEX, align 4
  %108 = load i32, i32* %12, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %116

110:                                              ; preds = %101
  %111 = call i32 @IWM_RATE_BIT_MSK(i32 11)
  %112 = load i32, i32* @IWM_FIRST_CCK_RATE, align 4
  %113 = ashr i32 %111, %112
  %114 = load i32, i32* %13, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %13, align 4
  br label %116

116:                                              ; preds = %110, %101
  %117 = load i32, i32* @IWM_RATE_5M_INDEX, align 4
  %118 = load i32, i32* %12, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %126

120:                                              ; preds = %116
  %121 = call i32 @IWM_RATE_BIT_MSK(i32 5)
  %122 = load i32, i32* @IWM_FIRST_CCK_RATE, align 4
  %123 = ashr i32 %121, %122
  %124 = load i32, i32* %13, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %13, align 4
  br label %126

126:                                              ; preds = %120, %116
  %127 = load i32, i32* @IWM_RATE_2M_INDEX, align 4
  %128 = load i32, i32* %12, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %136

130:                                              ; preds = %126
  %131 = call i32 @IWM_RATE_BIT_MSK(i32 2)
  %132 = load i32, i32* @IWM_FIRST_CCK_RATE, align 4
  %133 = ashr i32 %131, %132
  %134 = load i32, i32* %13, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %13, align 4
  br label %136

136:                                              ; preds = %130, %126
  %137 = call i32 @IWM_RATE_BIT_MSK(i32 1)
  %138 = load i32, i32* @IWM_FIRST_CCK_RATE, align 4
  %139 = ashr i32 %137, %138
  %140 = load i32, i32* %13, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %13, align 4
  %142 = load i32, i32* %13, align 4
  %143 = load i32*, i32** %8, align 8
  store i32 %142, i32* %143, align 4
  %144 = load i32, i32* %14, align 4
  %145 = load i32*, i32** %9, align 8
  store i32 %144, i32* %145, align 4
  ret void
}

declare dso_local i32 @iwm_ridx2rate(%struct.ieee80211_rateset*, i32) #1

declare dso_local i32 @IWM_RATE_BIT_MSK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
