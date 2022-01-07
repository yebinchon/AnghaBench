; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ht.c_ieee80211_ht_vattach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ht.c_ieee80211_ht_vattach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i32, i32, i32*, i32, i32, i32, i32, i32 }

@IEEE80211_HTCAP_MAXRXAMPDU_8K = common dso_local global i32 0, align 4
@IEEE80211_HTCAP_MPDUDENSITY_NA = common dso_local global i32 0, align 4
@IEEE80211_HTCAP_MAXAMSDU = common dso_local global i32 0, align 4
@WME_AC_BK = common dso_local global i64 0, align 8
@WME_AC_BE = common dso_local global i64 0, align 8
@WME_AC_VO = common dso_local global i64 0, align 8
@WME_AC_VI = common dso_local global i64 0, align 8
@IEEE80211_HTC_HT = common dso_local global i32 0, align 4
@IEEE80211_FHT_HT = common dso_local global i32 0, align 4
@IEEE80211_FHT_HTCOMPAT = common dso_local global i32 0, align 4
@IEEE80211_HTCAP_SHORTGI20 = common dso_local global i32 0, align 4
@IEEE80211_FHT_SHORTGI20 = common dso_local global i32 0, align 4
@IEEE80211_HTCAP_CHWIDTH40 = common dso_local global i32 0, align 4
@IEEE80211_FHT_USEHT40 = common dso_local global i32 0, align 4
@IEEE80211_HTCAP_SHORTGI40 = common dso_local global i32 0, align 4
@IEEE80211_FHT_SHORTGI40 = common dso_local global i32 0, align 4
@IEEE80211_HTC_RIFS = common dso_local global i32 0, align 4
@IEEE80211_FHT_RIFS = common dso_local global i32 0, align 4
@IEEE80211_FHT_AMPDU_RX = common dso_local global i32 0, align 4
@IEEE80211_HTC_AMPDU = common dso_local global i32 0, align 4
@IEEE80211_FHT_AMPDU_TX = common dso_local global i32 0, align 4
@IEEE80211_FHT_AMSDU_RX = common dso_local global i32 0, align 4
@IEEE80211_HTC_AMSDU = common dso_local global i32 0, align 4
@IEEE80211_FHT_AMSDU_TX = common dso_local global i32 0, align 4
@IEEE80211_HTCAP_TXSTBC = common dso_local global i32 0, align 4
@IEEE80211_FHT_STBC_TX = common dso_local global i32 0, align 4
@IEEE80211_HTCAP_RXSTBC = common dso_local global i32 0, align 4
@IEEE80211_FHT_STBC_RX = common dso_local global i32 0, align 4
@IEEE80211_HTCAP_LDPC = common dso_local global i32 0, align 4
@IEEE80211_FHT_LDPC_RX = common dso_local global i32 0, align 4
@IEEE80211_HTC_TXLDPC = common dso_local global i32 0, align 4
@IEEE80211_FHT_LDPC_TX = common dso_local global i32 0, align 4
@IEEE80211_FEXT_WDSLEGACY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_ht_vattach(%struct.ieee80211vap* %0) #0 {
  %2 = alloca %struct.ieee80211vap*, align 8
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %2, align 8
  %3 = load i32, i32* @IEEE80211_HTCAP_MAXRXAMPDU_8K, align 4
  %4 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %5 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %4, i32 0, i32 5
  store i32 %3, i32* %5, align 8
  %6 = load i32, i32* @IEEE80211_HTCAP_MPDUDENSITY_NA, align 4
  %7 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %8 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %7, i32 0, i32 7
  store i32 %6, i32* %8, align 8
  %9 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %10 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %13 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %12, i32 0, i32 6
  store i32 %11, i32* %13, align 4
  %14 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %15 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @IEEE80211_HTCAP_MAXAMSDU, align 4
  %18 = and i32 %16, %17
  %19 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %20 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %22 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* @WME_AC_BK, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  store i32 128, i32* %25, align 4
  %26 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %27 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* @WME_AC_BE, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  store i32 64, i32* %30, align 4
  %31 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %32 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* @WME_AC_VO, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  store i32 32, i32* %35, align 4
  %36 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %37 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* @WME_AC_VI, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  store i32 32, i32* %40, align 4
  %41 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %42 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @IEEE80211_HTC_HT, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %195

47:                                               ; preds = %1
  %48 = load i32, i32* @IEEE80211_FHT_HT, align 4
  %49 = load i32, i32* @IEEE80211_FHT_HTCOMPAT, align 4
  %50 = or i32 %48, %49
  %51 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %52 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  %55 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %56 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @IEEE80211_HTCAP_SHORTGI20, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %47
  %62 = load i32, i32* @IEEE80211_FHT_SHORTGI20, align 4
  %63 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %64 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 8
  br label %67

67:                                               ; preds = %61, %47
  %68 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %69 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @IEEE80211_HTCAP_CHWIDTH40, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %93

74:                                               ; preds = %67
  %75 = load i32, i32* @IEEE80211_FHT_USEHT40, align 4
  %76 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %77 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 8
  %80 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %81 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @IEEE80211_HTCAP_SHORTGI40, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %74
  %87 = load i32, i32* @IEEE80211_FHT_SHORTGI40, align 4
  %88 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %89 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 8
  br label %92

92:                                               ; preds = %86, %74
  br label %93

93:                                               ; preds = %92, %67
  %94 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %95 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @IEEE80211_HTC_RIFS, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %93
  %101 = load i32, i32* @IEEE80211_FHT_RIFS, align 4
  %102 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %103 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 8
  br label %106

106:                                              ; preds = %100, %93
  %107 = load i32, i32* @IEEE80211_FHT_AMPDU_RX, align 4
  %108 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %109 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 8
  %112 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %113 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @IEEE80211_HTC_AMPDU, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %106
  %119 = load i32, i32* @IEEE80211_FHT_AMPDU_TX, align 4
  %120 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %121 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 8
  br label %124

124:                                              ; preds = %118, %106
  %125 = load i32, i32* @IEEE80211_FHT_AMSDU_RX, align 4
  %126 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %127 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = or i32 %128, %125
  store i32 %129, i32* %127, align 8
  %130 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %131 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @IEEE80211_HTC_AMSDU, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %124
  %137 = load i32, i32* @IEEE80211_FHT_AMSDU_TX, align 4
  %138 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %139 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = or i32 %140, %137
  store i32 %141, i32* %139, align 8
  br label %142

142:                                              ; preds = %136, %124
  %143 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %144 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @IEEE80211_HTCAP_TXSTBC, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %142
  %150 = load i32, i32* @IEEE80211_FHT_STBC_TX, align 4
  %151 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %152 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 8
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 8
  br label %155

155:                                              ; preds = %149, %142
  %156 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %157 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @IEEE80211_HTCAP_RXSTBC, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %155
  %163 = load i32, i32* @IEEE80211_FHT_STBC_RX, align 4
  %164 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %165 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 8
  %167 = or i32 %166, %163
  store i32 %167, i32* %165, align 8
  br label %168

168:                                              ; preds = %162, %155
  %169 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %170 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @IEEE80211_HTCAP_LDPC, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %168
  %176 = load i32, i32* @IEEE80211_FHT_LDPC_RX, align 4
  %177 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %178 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 8
  %180 = or i32 %179, %176
  store i32 %180, i32* %178, align 8
  br label %181

181:                                              ; preds = %175, %168
  %182 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %183 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @IEEE80211_HTC_TXLDPC, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %194

188:                                              ; preds = %181
  %189 = load i32, i32* @IEEE80211_FHT_LDPC_TX, align 4
  %190 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %191 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 8
  %193 = or i32 %192, %189
  store i32 %193, i32* %191, align 8
  br label %194

194:                                              ; preds = %188, %181
  br label %195

195:                                              ; preds = %194, %1
  %196 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %197 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %196, i32 0, i32 4
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @IEEE80211_FEXT_WDSLEGACY, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %209

202:                                              ; preds = %195
  %203 = load i32, i32* @IEEE80211_FHT_HT, align 4
  %204 = xor i32 %203, -1
  %205 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %206 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 8
  %208 = and i32 %207, %204
  store i32 %208, i32* %206, align 8
  br label %209

209:                                              ; preds = %202, %195
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
