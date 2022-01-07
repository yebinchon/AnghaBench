; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/extr_if_rtwn.c_rtwn_wme_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/extr_if_rtwn.c_rtwn_wme_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { %struct.rtwn_softc*, %struct.ieee80211_channel* }
%struct.rtwn_softc = type { %struct.wmeParams* }
%struct.wmeParams = type { i32, i32, i32, i32, i32 }
%struct.ieee80211_channel = type { i32 }
%struct.chanAccParams = type { i32 }

@WME_AC_BE = common dso_local global i32 0, align 4
@WME_NUM_AC = common dso_local global i32 0, align 4
@IEEE80211_DUR_OFDM_SIFS = common dso_local global i32 0, align 4
@IEEE80211_DUR_SIFS = common dso_local global i32 0, align 4
@wme2reg = common dso_local global i32* null, align 8
@R92C_EDCA_PARAM_TXOP = common dso_local global i32 0, align 4
@R92C_EDCA_PARAM_ECWMIN = common dso_local global i32 0, align 4
@R92C_EDCA_PARAM_ECWMAX = common dso_local global i32 0, align 4
@R92C_EDCA_PARAM_AIFS = common dso_local global i32 0, align 4
@R92C_ACMHWCTRL_EN = common dso_local global i32 0, align 4
@R92C_ACMHWCTRL = common dso_local global i32 0, align 4
@R92C_ACMHWCTRL_ACM_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211com*)* @rtwn_wme_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtwn_wme_update(%struct.ieee80211com* %0) #0 {
  %2 = alloca %struct.ieee80211com*, align 8
  %3 = alloca %struct.chanAccParams, align 4
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca %struct.rtwn_softc*, align 8
  %6 = alloca %struct.wmeParams*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ieee80211com* %0, %struct.ieee80211com** %2, align 8
  %11 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %12 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %11, i32 0, i32 1
  %13 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %12, align 8
  store %struct.ieee80211_channel* %13, %struct.ieee80211_channel** %4, align 8
  %14 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %15 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %14, i32 0, i32 0
  %16 = load %struct.rtwn_softc*, %struct.rtwn_softc** %15, align 8
  store %struct.rtwn_softc* %16, %struct.rtwn_softc** %5, align 8
  %17 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %18 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %17, i32 0, i32 0
  %19 = load %struct.wmeParams*, %struct.wmeParams** %18, align 8
  store %struct.wmeParams* %19, %struct.wmeParams** %6, align 8
  %20 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %21 = call i32 @ieee80211_wme_ic_getparams(%struct.ieee80211com* %20, %struct.chanAccParams* %3)
  %22 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %23 = call i32 @IEEE80211_LOCK(%struct.ieee80211com* %22)
  %24 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %25 = call i32 @RTWN_LOCK(%struct.rtwn_softc* %24)
  %26 = load %struct.wmeParams*, %struct.wmeParams** %6, align 8
  %27 = getelementptr inbounds %struct.chanAccParams, %struct.chanAccParams* %3, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @memcpy(%struct.wmeParams* %26, i32 %28, i32 8)
  %30 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %31 = call i32 @RTWN_UNLOCK(%struct.rtwn_softc* %30)
  %32 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %33 = call i32 @IEEE80211_UNLOCK(%struct.ieee80211com* %32)
  store i32 0, i32* %8, align 4
  %34 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %35 = call i32 @IEEE80211_GET_SLOTTIME(%struct.ieee80211com* %34)
  store i32 %35, i32* %9, align 4
  %36 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %37 = call i32 @RTWN_LOCK(%struct.rtwn_softc* %36)
  %38 = load i32, i32* @WME_AC_BE, align 4
  store i32 %38, i32* %10, align 4
  br label %39

39:                                               ; preds = %114, %1
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @WME_NUM_AC, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %117

43:                                               ; preds = %39
  %44 = load %struct.wmeParams*, %struct.wmeParams** %6, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %44, i64 %46
  %48 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %9, align 4
  %51 = mul nsw i32 %49, %50
  %52 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %53 = call i64 @IEEE80211_IS_CHAN_5GHZ(%struct.ieee80211_channel* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %43
  %56 = load i32, i32* @IEEE80211_DUR_OFDM_SIFS, align 4
  br label %59

57:                                               ; preds = %43
  %58 = load i32, i32* @IEEE80211_DUR_SIFS, align 4
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i32 [ %56, %55 ], [ %58, %57 ]
  %61 = add nsw i32 %51, %60
  store i32 %61, i32* %7, align 4
  %62 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %63 = load i32*, i32** @wme2reg, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @R92C_EDCA_PARAM_TXOP, align 4
  %69 = load %struct.wmeParams*, %struct.wmeParams** %6, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %69, i64 %71
  %73 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @SM(i32 %68, i32 %74)
  %76 = load i32, i32* @R92C_EDCA_PARAM_ECWMIN, align 4
  %77 = load %struct.wmeParams*, %struct.wmeParams** %6, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %77, i64 %79
  %81 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @SM(i32 %76, i32 %82)
  %84 = or i32 %75, %83
  %85 = load i32, i32* @R92C_EDCA_PARAM_ECWMAX, align 4
  %86 = load %struct.wmeParams*, %struct.wmeParams** %6, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %86, i64 %88
  %90 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @SM(i32 %85, i32 %91)
  %93 = or i32 %84, %92
  %94 = load i32, i32* @R92C_EDCA_PARAM_AIFS, align 4
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @SM(i32 %94, i32 %95)
  %97 = or i32 %93, %96
  %98 = call i32 @rtwn_write_4(%struct.rtwn_softc* %62, i32 %67, i32 %97)
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* @WME_AC_BE, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %113

102:                                              ; preds = %59
  %103 = load %struct.wmeParams*, %struct.wmeParams** %6, align 8
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %103, i64 %105
  %107 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %10, align 4
  %110 = shl i32 %108, %109
  %111 = load i32, i32* %8, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %8, align 4
  br label %113

113:                                              ; preds = %102, %59
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %10, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %10, align 4
  br label %39

117:                                              ; preds = %39
  %118 = load i32, i32* %8, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %117
  %121 = load i32, i32* @R92C_ACMHWCTRL_EN, align 4
  %122 = load i32, i32* %8, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %8, align 4
  br label %124

124:                                              ; preds = %120, %117
  %125 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %126 = load i32, i32* @R92C_ACMHWCTRL, align 4
  %127 = load i32, i32* @R92C_ACMHWCTRL_ACM_MASK, align 4
  %128 = load i32, i32* %8, align 4
  %129 = call i32 @rtwn_setbits_1(%struct.rtwn_softc* %125, i32 %126, i32 %127, i32 %128)
  %130 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %131 = call i32 @RTWN_UNLOCK(%struct.rtwn_softc* %130)
  ret i32 0
}

declare dso_local i32 @ieee80211_wme_ic_getparams(%struct.ieee80211com*, %struct.chanAccParams*) #1

declare dso_local i32 @IEEE80211_LOCK(%struct.ieee80211com*) #1

declare dso_local i32 @RTWN_LOCK(%struct.rtwn_softc*) #1

declare dso_local i32 @memcpy(%struct.wmeParams*, i32, i32) #1

declare dso_local i32 @RTWN_UNLOCK(%struct.rtwn_softc*) #1

declare dso_local i32 @IEEE80211_UNLOCK(%struct.ieee80211com*) #1

declare dso_local i32 @IEEE80211_GET_SLOTTIME(%struct.ieee80211com*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_5GHZ(%struct.ieee80211_channel*) #1

declare dso_local i32 @rtwn_write_4(%struct.rtwn_softc*, i32, i32) #1

declare dso_local i32 @SM(i32, i32) #1

declare dso_local i32 @rtwn_setbits_1(%struct.rtwn_softc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
