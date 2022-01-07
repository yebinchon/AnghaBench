; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8812a/extr_r12a_rx.c_r12a_get_rx_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8812a/extr_r12a_rx.c_r12a_get_rx_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32 }
%struct.ieee80211_rx_stats = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.r92c_rx_stat = type { i32, i32, i32, i32 }
%struct.r12a_rx_phystat = type { i32*, i32 }

@R12A_RXDW3_RATE = common dso_local global i32 0, align 4
@R12A_RXDW4_LDPC = common dso_local global i32 0, align 4
@IEEE80211_RX_F_LDPC = common dso_local global i32 0, align 4
@R12A_RXDW1_AMPDU = common dso_local global i32 0, align 4
@R92C_RXDW0_PHYST = common dso_local global i32 0, align 4
@IEEE80211_RX_F_AMPDU = common dso_local global i32 0, align 4
@IEEE80211_RX_F_AMPDU_MORE = common dso_local global i32 0, align 4
@R12A_RXDW4_SPLCP = common dso_local global i32 0, align 4
@IEEE80211_RX_F_SHORTGI = common dso_local global i32 0, align 4
@R12A_RXDW4_BW = common dso_local global i32 0, align 4
@IEEE80211_RX_FW_20MHZ = common dso_local global i32 0, align 4
@IEEE80211_RX_FW_40MHZ = common dso_local global i32 0, align 4
@IEEE80211_RX_FW_80MHZ = common dso_local global i32 0, align 4
@IEEE80211_RX_FP_11B = common dso_local global i32 0, align 4
@IEEE80211_RX_FP_11A = common dso_local global i32 0, align 4
@IEEE80211_RX_FP_11G = common dso_local global i32 0, align 4
@IEEE80211_RX_FP_11NA = common dso_local global i32 0, align 4
@IEEE80211_RX_FP_11NG = common dso_local global i32 0, align 4
@ridx2rate = common dso_local global i64* null, align 8
@IEEE80211_RX_F_CCK = common dso_local global i32 0, align 4
@IEEE80211_RX_F_OFDM = common dso_local global i32 0, align 4
@IEEE80211_RATE_MCS = common dso_local global i64 0, align 8
@RTWN_RIDX_HT_MCS_SHIFT = common dso_local global i64 0, align 8
@IEEE80211_RX_F_HT = common dso_local global i32 0, align 4
@IEEE80211_CHAN_2GHZ = common dso_local global i32 0, align 4
@IEEE80211_CHAN_5GHZ = common dso_local global i32 0, align 4
@IEEE80211_R_FREQ = common dso_local global i32 0, align 4
@IEEE80211_R_IEEE = common dso_local global i32 0, align 4
@R12A_PHYW1_CHAN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r12a_get_rx_stats(%struct.rtwn_softc* %0, %struct.ieee80211_rx_stats* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.rtwn_softc*, align 8
  %6 = alloca %struct.ieee80211_rx_stats*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.r92c_rx_stat*, align 8
  %10 = alloca %struct.r12a_rx_phystat*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %5, align 8
  store %struct.ieee80211_rx_stats* %1, %struct.ieee80211_rx_stats** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast i8* %17 to %struct.r92c_rx_stat*
  store %struct.r92c_rx_stat* %18, %struct.r92c_rx_stat** %9, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = bitcast i8* %19 to %struct.r12a_rx_phystat*
  store %struct.r12a_rx_phystat* %20, %struct.r12a_rx_phystat** %10, align 8
  %21 = load %struct.r92c_rx_stat*, %struct.r92c_rx_stat** %9, align 8
  %22 = getelementptr inbounds %struct.r92c_rx_stat, %struct.r92c_rx_stat* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @le32toh(i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load %struct.r92c_rx_stat*, %struct.r92c_rx_stat** %9, align 8
  %26 = getelementptr inbounds %struct.r92c_rx_stat, %struct.r92c_rx_stat* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @le32toh(i32 %27)
  store i32 %28, i32* %12, align 4
  %29 = load %struct.r92c_rx_stat*, %struct.r92c_rx_stat** %9, align 8
  %30 = getelementptr inbounds %struct.r92c_rx_stat, %struct.r92c_rx_stat* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @le32toh(i32 %31)
  store i32 %32, i32* %13, align 4
  %33 = load %struct.r92c_rx_stat*, %struct.r92c_rx_stat** %9, align 8
  %34 = getelementptr inbounds %struct.r92c_rx_stat, %struct.r92c_rx_stat* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @le32toh(i32 %35)
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* @R12A_RXDW3_RATE, align 4
  %39 = call i32 @MS(i32 %37, i32 %38)
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %15, align 8
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* @R12A_RXDW4_LDPC, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %4
  %46 = load i32, i32* @IEEE80211_RX_F_LDPC, align 4
  %47 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %6, align 8
  %48 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %45, %4
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* @R12A_RXDW1_AMPDU, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %74

56:                                               ; preds = %51
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @R92C_RXDW0_PHYST, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load i32, i32* @IEEE80211_RX_F_AMPDU, align 4
  %63 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %6, align 8
  %64 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  br label %73

67:                                               ; preds = %56
  %68 = load i32, i32* @IEEE80211_RX_F_AMPDU_MORE, align 4
  %69 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %6, align 8
  %70 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %67, %61
  br label %74

74:                                               ; preds = %73, %51
  %75 = load i32, i32* %14, align 4
  %76 = load i32, i32* @R12A_RXDW4_SPLCP, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %74
  %80 = load i64, i64* %15, align 8
  %81 = call i64 @RTWN_RIDX_HT_MCS(i32 0)
  %82 = icmp uge i64 %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %79
  %84 = load i32, i32* @IEEE80211_RX_F_SHORTGI, align 4
  %85 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %6, align 8
  %86 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %83, %79, %74
  %90 = load i32, i32* %14, align 4
  %91 = load i32, i32* @R12A_RXDW4_BW, align 4
  %92 = call i32 @MS(i32 %90, i32 %91)
  switch i32 %92, label %105 [
    i32 130, label %93
    i32 129, label %97
    i32 128, label %101
  ]

93:                                               ; preds = %89
  %94 = load i32, i32* @IEEE80211_RX_FW_20MHZ, align 4
  %95 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %6, align 8
  %96 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %95, i32 0, i32 6
  store i32 %94, i32* %96, align 4
  br label %106

97:                                               ; preds = %89
  %98 = load i32, i32* @IEEE80211_RX_FW_40MHZ, align 4
  %99 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %6, align 8
  %100 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %99, i32 0, i32 6
  store i32 %98, i32* %100, align 4
  br label %106

101:                                              ; preds = %89
  %102 = load i32, i32* @IEEE80211_RX_FW_80MHZ, align 4
  %103 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %6, align 8
  %104 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %103, i32 0, i32 6
  store i32 %102, i32* %104, align 4
  br label %106

105:                                              ; preds = %89
  br label %106

106:                                              ; preds = %105, %101, %97, %93
  %107 = load i64, i64* %15, align 8
  %108 = call i64 @RTWN_RATE_IS_CCK(i64 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %106
  %111 = load i32, i32* @IEEE80211_RX_FP_11B, align 4
  %112 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %6, align 8
  %113 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %112, i32 0, i32 5
  store i32 %111, i32* %113, align 8
  br label %150

114:                                              ; preds = %106
  %115 = load %struct.r12a_rx_phystat*, %struct.r12a_rx_phystat** %10, align 8
  %116 = getelementptr inbounds %struct.r12a_rx_phystat, %struct.r12a_rx_phystat* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 2
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 1
  %121 = zext i1 %120 to i32
  store i32 %121, i32* %16, align 4
  %122 = load i64, i64* %15, align 8
  %123 = call i64 @RTWN_RIDX_HT_MCS(i32 0)
  %124 = icmp ult i64 %122, %123
  br i1 %124, label %125, label %137

125:                                              ; preds = %114
  %126 = load i32, i32* %16, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %125
  %129 = load i32, i32* @IEEE80211_RX_FP_11A, align 4
  %130 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %6, align 8
  %131 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %130, i32 0, i32 5
  store i32 %129, i32* %131, align 8
  br label %136

132:                                              ; preds = %125
  %133 = load i32, i32* @IEEE80211_RX_FP_11G, align 4
  %134 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %6, align 8
  %135 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %134, i32 0, i32 5
  store i32 %133, i32* %135, align 8
  br label %136

136:                                              ; preds = %132, %128
  br label %149

137:                                              ; preds = %114
  %138 = load i32, i32* %16, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %137
  %141 = load i32, i32* @IEEE80211_RX_FP_11NA, align 4
  %142 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %6, align 8
  %143 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %142, i32 0, i32 5
  store i32 %141, i32* %143, align 8
  br label %148

144:                                              ; preds = %137
  %145 = load i32, i32* @IEEE80211_RX_FP_11NG, align 4
  %146 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %6, align 8
  %147 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %146, i32 0, i32 5
  store i32 %145, i32* %147, align 8
  br label %148

148:                                              ; preds = %144, %140
  br label %149

149:                                              ; preds = %148, %136
  br label %150

150:                                              ; preds = %149, %110
  %151 = load i64, i64* %15, align 8
  %152 = call i64 @RTWN_RIDX_HT_MCS(i32 0)
  %153 = icmp ult i64 %151, %152
  br i1 %153, label %154, label %177

154:                                              ; preds = %150
  %155 = load i64*, i64** @ridx2rate, align 8
  %156 = load i64, i64* %15, align 8
  %157 = getelementptr inbounds i64, i64* %155, i64 %156
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %6, align 8
  %160 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %159, i32 0, i32 0
  store i64 %158, i64* %160, align 8
  %161 = load i64, i64* %15, align 8
  %162 = call i64 @RTWN_RATE_IS_CCK(i64 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %154
  %165 = load i32, i32* @IEEE80211_RX_F_CCK, align 4
  %166 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %6, align 8
  %167 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 4
  %169 = or i32 %168, %165
  store i32 %169, i32* %167, align 4
  br label %176

170:                                              ; preds = %154
  %171 = load i32, i32* @IEEE80211_RX_F_OFDM, align 4
  %172 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %6, align 8
  %173 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %172, i32 0, i32 4
  %174 = load i32, i32* %173, align 4
  %175 = or i32 %174, %171
  store i32 %175, i32* %173, align 4
  br label %176

176:                                              ; preds = %170, %164
  br label %190

177:                                              ; preds = %150
  %178 = load i64, i64* @IEEE80211_RATE_MCS, align 8
  %179 = load i64, i64* %15, align 8
  %180 = load i64, i64* @RTWN_RIDX_HT_MCS_SHIFT, align 8
  %181 = sub i64 %179, %180
  %182 = or i64 %178, %181
  %183 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %6, align 8
  %184 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %183, i32 0, i32 0
  store i64 %182, i64* %184, align 8
  %185 = load i32, i32* @IEEE80211_RX_F_HT, align 4
  %186 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %6, align 8
  %187 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 4
  %189 = or i32 %188, %185
  store i32 %189, i32* %187, align 4
  br label %190

190:                                              ; preds = %177, %176
  ret void
}

declare dso_local i32 @le32toh(i32) #1

declare dso_local i32 @MS(i32, i32) #1

declare dso_local i64 @RTWN_RIDX_HT_MCS(i32) #1

declare dso_local i64 @RTWN_RATE_IS_CCK(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
