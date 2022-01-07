; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192c/extr_r92c_rx.c_r92c_get_rx_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192c/extr_r92c_rx.c_r92c_get_rx_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32 }
%struct.ieee80211_rx_stats = type { i64, i32, i32, i32 }
%struct.r92c_rx_stat = type { i32, i32 }

@R92C_RXDW3_RATE = common dso_local global i32 0, align 4
@R92C_RXDW1_AMPDU = common dso_local global i32 0, align 4
@IEEE80211_RX_F_AMPDU = common dso_local global i32 0, align 4
@R92C_RXDW1_AMPDU_MORE = common dso_local global i32 0, align 4
@IEEE80211_RX_F_AMPDU_MORE = common dso_local global i32 0, align 4
@R92C_RXDW3_SPLCP = common dso_local global i32 0, align 4
@IEEE80211_RX_F_SHORTGI = common dso_local global i32 0, align 4
@R92C_RXDW3_HT40 = common dso_local global i32 0, align 4
@IEEE80211_RX_FW_40MHZ = common dso_local global i32 0, align 4
@IEEE80211_RX_FW_20MHZ = common dso_local global i32 0, align 4
@IEEE80211_RX_FP_11B = common dso_local global i32 0, align 4
@IEEE80211_RX_FP_11G = common dso_local global i32 0, align 4
@IEEE80211_RX_FP_11NG = common dso_local global i32 0, align 4
@ridx2rate = common dso_local global i64* null, align 8
@IEEE80211_RX_F_CCK = common dso_local global i32 0, align 4
@IEEE80211_RX_F_OFDM = common dso_local global i32 0, align 4
@IEEE80211_RATE_MCS = common dso_local global i64 0, align 8
@RTWN_RIDX_HT_MCS_SHIFT = common dso_local global i64 0, align 8
@IEEE80211_RX_F_HT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r92c_get_rx_stats(%struct.rtwn_softc* %0, %struct.ieee80211_rx_stats* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.rtwn_softc*, align 8
  %6 = alloca %struct.ieee80211_rx_stats*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.r92c_rx_stat*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %5, align 8
  store %struct.ieee80211_rx_stats* %1, %struct.ieee80211_rx_stats** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.r92c_rx_stat*
  store %struct.r92c_rx_stat* %14, %struct.r92c_rx_stat** %9, align 8
  %15 = load %struct.r92c_rx_stat*, %struct.r92c_rx_stat** %9, align 8
  %16 = getelementptr inbounds %struct.r92c_rx_stat, %struct.r92c_rx_stat* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @le32toh(i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load %struct.r92c_rx_stat*, %struct.r92c_rx_stat** %9, align 8
  %20 = getelementptr inbounds %struct.r92c_rx_stat, %struct.r92c_rx_stat* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @le32toh(i32 %21)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* @R92C_RXDW3_RATE, align 4
  %25 = call i64 @MS(i32 %23, i32 %24)
  store i64 %25, i64* %12, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @R92C_RXDW1_AMPDU, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %4
  %31 = load i32, i32* @IEEE80211_RX_F_AMPDU, align 4
  %32 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %6, align 8
  %33 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 8
  br label %48

36:                                               ; preds = %4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @R92C_RXDW1_AMPDU_MORE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load i32, i32* @IEEE80211_RX_F_AMPDU_MORE, align 4
  %43 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %6, align 8
  %44 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  br label %47

47:                                               ; preds = %41, %36
  br label %48

48:                                               ; preds = %47, %30
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @R92C_RXDW3_SPLCP, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %48
  %54 = load i64, i64* %12, align 8
  %55 = call i64 @RTWN_RIDX_HT_MCS(i32 0)
  %56 = icmp uge i64 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = load i32, i32* @IEEE80211_RX_F_SHORTGI, align 4
  %59 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %6, align 8
  %60 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 8
  br label %63

63:                                               ; preds = %57, %53, %48
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* @R92C_RXDW3_HT40, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load i32, i32* @IEEE80211_RX_FW_40MHZ, align 4
  %70 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %6, align 8
  %71 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 8
  br label %76

72:                                               ; preds = %63
  %73 = load i32, i32* @IEEE80211_RX_FW_20MHZ, align 4
  %74 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %6, align 8
  %75 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 8
  br label %76

76:                                               ; preds = %72, %68
  %77 = load i64, i64* %12, align 8
  %78 = call i64 @RTWN_RATE_IS_CCK(i64 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load i32, i32* @IEEE80211_RX_FP_11B, align 4
  %82 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %6, align 8
  %83 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 4
  br label %97

84:                                               ; preds = %76
  %85 = load i64, i64* %12, align 8
  %86 = call i64 @RTWN_RIDX_HT_MCS(i32 0)
  %87 = icmp ult i64 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = load i32, i32* @IEEE80211_RX_FP_11G, align 4
  %90 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %6, align 8
  %91 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 4
  br label %96

92:                                               ; preds = %84
  %93 = load i32, i32* @IEEE80211_RX_FP_11NG, align 4
  %94 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %6, align 8
  %95 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 4
  br label %96

96:                                               ; preds = %92, %88
  br label %97

97:                                               ; preds = %96, %80
  %98 = load i64, i64* %12, align 8
  %99 = call i64 @RTWN_RIDX_HT_MCS(i32 0)
  %100 = icmp ult i64 %98, %99
  br i1 %100, label %101, label %124

101:                                              ; preds = %97
  %102 = load i64*, i64** @ridx2rate, align 8
  %103 = load i64, i64* %12, align 8
  %104 = getelementptr inbounds i64, i64* %102, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %6, align 8
  %107 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %106, i32 0, i32 0
  store i64 %105, i64* %107, align 8
  %108 = load i64, i64* %12, align 8
  %109 = call i64 @RTWN_RATE_IS_CCK(i64 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %101
  %112 = load i32, i32* @IEEE80211_RX_F_CCK, align 4
  %113 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %6, align 8
  %114 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 8
  br label %123

117:                                              ; preds = %101
  %118 = load i32, i32* @IEEE80211_RX_F_OFDM, align 4
  %119 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %6, align 8
  %120 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = or i32 %121, %118
  store i32 %122, i32* %120, align 8
  br label %123

123:                                              ; preds = %117, %111
  br label %137

124:                                              ; preds = %97
  %125 = load i64, i64* @IEEE80211_RATE_MCS, align 8
  %126 = load i64, i64* %12, align 8
  %127 = load i64, i64* @RTWN_RIDX_HT_MCS_SHIFT, align 8
  %128 = sub i64 %126, %127
  %129 = or i64 %125, %128
  %130 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %6, align 8
  %131 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %130, i32 0, i32 0
  store i64 %129, i64* %131, align 8
  %132 = load i32, i32* @IEEE80211_RX_F_HT, align 4
  %133 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %6, align 8
  %134 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 8
  br label %137

137:                                              ; preds = %124, %123
  ret void
}

declare dso_local i32 @le32toh(i32) #1

declare dso_local i64 @MS(i32, i32) #1

declare dso_local i64 @RTWN_RIDX_HT_MCS(i32) #1

declare dso_local i64 @RTWN_RATE_IS_CCK(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
