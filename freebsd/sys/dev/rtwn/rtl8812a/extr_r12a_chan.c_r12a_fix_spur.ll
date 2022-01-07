; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8812a/extr_r12a_chan.c_r12a_fix_spur.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8812a/extr_r12a_chan.c_r12a_fix_spur.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { %struct.r12a_softc* }
%struct.r12a_softc = type { i32 }
%struct.ieee80211_channel = type { i32 }

@R12A_CHIP_C_CUT = common dso_local global i32 0, align 4
@R12A_RFMOD = common dso_local global i32 0, align 4
@R12A_ADC_BUF_CLK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r12a_fix_spur(%struct.rtwn_softc* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca %struct.rtwn_softc*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca %struct.r12a_softc*, align 8
  %6 = alloca i32, align 4
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %3, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %4, align 8
  %7 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %8 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %7, i32 0, i32 0
  %9 = load %struct.r12a_softc*, %struct.r12a_softc** %8, align 8
  store %struct.r12a_softc* %9, %struct.r12a_softc** %5, align 8
  %10 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %11 = call i32 @rtwn_chan2centieee(%struct.ieee80211_channel* %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.r12a_softc*, %struct.r12a_softc** %5, align 8
  %13 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @R12A_CHIP_C_CUT, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %61

18:                                               ; preds = %2
  %19 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %20 = call i64 @IEEE80211_IS_CHAN_HT40(%struct.ieee80211_channel* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %18
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %23, 11
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %27 = load i32, i32* @R12A_RFMOD, align 4
  %28 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %26, i32 %27, i32 0, i32 3072)
  %29 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %30 = load i32, i32* @R12A_ADC_BUF_CLK, align 4
  %31 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %29, i32 %30, i32 0, i32 1073741824)
  br label %60

32:                                               ; preds = %22, %18
  %33 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %34 = load i32, i32* @R12A_RFMOD, align 4
  %35 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %33, i32 %34, i32 1024, i32 2048)
  %36 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %37 = call i64 @IEEE80211_IS_CHAN_HT40(%struct.ieee80211_channel* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %52, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* %6, align 4
  %41 = icmp eq i32 %40, 13
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %6, align 4
  %44 = icmp eq i32 %43, 14
  br i1 %44, label %45, label %52

45:                                               ; preds = %42, %39
  %46 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %47 = load i32, i32* @R12A_RFMOD, align 4
  %48 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %46, i32 %47, i32 0, i32 768)
  %49 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %50 = load i32, i32* @R12A_ADC_BUF_CLK, align 4
  %51 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %49, i32 %50, i32 0, i32 1073741824)
  br label %59

52:                                               ; preds = %42, %32
  %53 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %54 = load i32, i32* @R12A_RFMOD, align 4
  %55 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %53, i32 %54, i32 256, i32 512)
  %56 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %57 = load i32, i32* @R12A_ADC_BUF_CLK, align 4
  %58 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %56, i32 %57, i32 1073741824, i32 0)
  br label %59

59:                                               ; preds = %52, %45
  br label %60

60:                                               ; preds = %59, %25
  br label %85

61:                                               ; preds = %2
  %62 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %63 = call i64 @IEEE80211_IS_CHAN_HT40(%struct.ieee80211_channel* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %75, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* %6, align 4
  %67 = icmp eq i32 %66, 13
  br i1 %67, label %71, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %6, align 4
  %70 = icmp eq i32 %69, 14
  br i1 %70, label %71, label %75

71:                                               ; preds = %68, %65
  %72 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %73 = load i32, i32* @R12A_RFMOD, align 4
  %74 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %72, i32 %73, i32 0, i32 768)
  br label %84

75:                                               ; preds = %68, %61
  %76 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %77 = call i64 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %81 = load i32, i32* @R12A_RFMOD, align 4
  %82 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %80, i32 %81, i32 256, i32 512)
  br label %83

83:                                               ; preds = %79, %75
  br label %84

84:                                               ; preds = %83, %71
  br label %85

85:                                               ; preds = %84, %60
  ret void
}

declare dso_local i32 @rtwn_chan2centieee(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_HT40(%struct.ieee80211_channel*) #1

declare dso_local i32 @rtwn_bb_setbits(%struct.rtwn_softc*, i32, i32, i32) #1

declare dso_local i64 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
