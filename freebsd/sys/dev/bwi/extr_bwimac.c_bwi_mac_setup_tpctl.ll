; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwimac.c_bwi_mac_setup_tpctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwimac.c_bwi_mac_setup_tpctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_mac = type { %struct.bwi_tpctl, %struct.bwi_phy, %struct.bwi_rf, %struct.bwi_softc* }
%struct.bwi_tpctl = type { i32, i32, i32, i32 }
%struct.bwi_phy = type { i64 }
%struct.bwi_rf = type { i64, i32 }
%struct.bwi_softc = type { i32, i32 }

@BWI_RF_T_BCM2050 = common dso_local global i64 0, align 8
@IEEE80211_MODE_11A = common dso_local global i64 0, align 8
@BWI_RF_T_BCM2053 = common dso_local global i64 0, align 8
@IEEE80211_MODE_11G = common dso_local global i64 0, align 8
@BWI_BBPID_BCM4320 = common dso_local global i32 0, align 4
@BWI_DBG_MAC = common dso_local global i32 0, align 4
@BWI_DBG_INIT = common dso_local global i32 0, align 4
@BWI_DBG_TXPOWER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"bbp atten: %u, rf atten: %u, ctrl1: %u, ctrl2: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwi_mac*)* @bwi_mac_setup_tpctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwi_mac_setup_tpctl(%struct.bwi_mac* %0) #0 {
  %2 = alloca %struct.bwi_mac*, align 8
  %3 = alloca %struct.bwi_softc*, align 8
  %4 = alloca %struct.bwi_rf*, align 8
  %5 = alloca %struct.bwi_phy*, align 8
  %6 = alloca %struct.bwi_tpctl*, align 8
  store %struct.bwi_mac* %0, %struct.bwi_mac** %2, align 8
  %7 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %8 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %7, i32 0, i32 3
  %9 = load %struct.bwi_softc*, %struct.bwi_softc** %8, align 8
  store %struct.bwi_softc* %9, %struct.bwi_softc** %3, align 8
  %10 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %11 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %10, i32 0, i32 2
  store %struct.bwi_rf* %11, %struct.bwi_rf** %4, align 8
  %12 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %13 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %12, i32 0, i32 1
  store %struct.bwi_phy* %13, %struct.bwi_phy** %5, align 8
  %14 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %15 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %14, i32 0, i32 0
  store %struct.bwi_tpctl* %15, %struct.bwi_tpctl** %6, align 8
  %16 = load %struct.bwi_rf*, %struct.bwi_rf** %4, align 8
  %17 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @BWI_RF_T_BCM2050, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %1
  %22 = load %struct.bwi_rf*, %struct.bwi_rf** %4, align 8
  %23 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %24, 6
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load %struct.bwi_tpctl*, %struct.bwi_tpctl** %6, align 8
  %28 = getelementptr inbounds %struct.bwi_tpctl, %struct.bwi_tpctl* %27, i32 0, i32 0
  store i32 0, i32* %28, align 4
  br label %32

29:                                               ; preds = %21, %1
  %30 = load %struct.bwi_tpctl*, %struct.bwi_tpctl** %6, align 8
  %31 = getelementptr inbounds %struct.bwi_tpctl, %struct.bwi_tpctl* %30, i32 0, i32 0
  store i32 2, i32* %31, align 4
  br label %32

32:                                               ; preds = %29, %26
  %33 = load %struct.bwi_tpctl*, %struct.bwi_tpctl** %6, align 8
  %34 = getelementptr inbounds %struct.bwi_tpctl, %struct.bwi_tpctl* %33, i32 0, i32 1
  store i32 0, i32* %34, align 4
  %35 = load %struct.bwi_rf*, %struct.bwi_rf** %4, align 8
  %36 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @BWI_RF_T_BCM2050, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %67

40:                                               ; preds = %32
  %41 = load %struct.bwi_rf*, %struct.bwi_rf** %4, align 8
  %42 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load %struct.bwi_tpctl*, %struct.bwi_tpctl** %6, align 8
  %47 = getelementptr inbounds %struct.bwi_tpctl, %struct.bwi_tpctl* %46, i32 0, i32 1
  store i32 3, i32* %47, align 4
  br label %66

48:                                               ; preds = %40
  %49 = load %struct.bwi_rf*, %struct.bwi_rf** %4, align 8
  %50 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %51, 6
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load %struct.bwi_tpctl*, %struct.bwi_tpctl** %6, align 8
  %55 = getelementptr inbounds %struct.bwi_tpctl, %struct.bwi_tpctl* %54, i32 0, i32 1
  store i32 2, i32* %55, align 4
  br label %65

56:                                               ; preds = %48
  %57 = load %struct.bwi_rf*, %struct.bwi_rf** %4, align 8
  %58 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %59, 8
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load %struct.bwi_tpctl*, %struct.bwi_tpctl** %6, align 8
  %63 = getelementptr inbounds %struct.bwi_tpctl, %struct.bwi_tpctl* %62, i32 0, i32 1
  store i32 1, i32* %63, align 4
  br label %64

64:                                               ; preds = %61, %56
  br label %65

65:                                               ; preds = %64, %53
  br label %66

66:                                               ; preds = %65, %45
  br label %67

67:                                               ; preds = %66, %32
  %68 = load %struct.bwi_tpctl*, %struct.bwi_tpctl** %6, align 8
  %69 = getelementptr inbounds %struct.bwi_tpctl, %struct.bwi_tpctl* %68, i32 0, i32 2
  store i32 65535, i32* %69, align 4
  %70 = load %struct.bwi_phy*, %struct.bwi_phy** %5, align 8
  %71 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @IEEE80211_MODE_11A, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %67
  %76 = load %struct.bwi_tpctl*, %struct.bwi_tpctl** %6, align 8
  %77 = getelementptr inbounds %struct.bwi_tpctl, %struct.bwi_tpctl* %76, i32 0, i32 3
  store i32 96, i32* %77, align 4
  br label %202

78:                                               ; preds = %67
  %79 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %80 = call i64 @BWI_IS_BRCM_BCM4309G(%struct.bwi_softc* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %96

82:                                               ; preds = %78
  %83 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %84 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp slt i32 %85, 81
  br i1 %86, label %87, label %96

87:                                               ; preds = %82
  %88 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %89 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp slt i32 %90, 67
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i32 2, i32 3
  %94 = load %struct.bwi_tpctl*, %struct.bwi_tpctl** %6, align 8
  %95 = getelementptr inbounds %struct.bwi_tpctl, %struct.bwi_tpctl* %94, i32 0, i32 3
  store i32 %93, i32* %95, align 4
  br label %202

96:                                               ; preds = %82, %78
  %97 = load %struct.bwi_tpctl*, %struct.bwi_tpctl** %6, align 8
  %98 = getelementptr inbounds %struct.bwi_tpctl, %struct.bwi_tpctl* %97, i32 0, i32 3
  store i32 5, i32* %98, align 4
  %99 = load %struct.bwi_rf*, %struct.bwi_rf** %4, align 8
  %100 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @BWI_RF_T_BCM2050, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %119

104:                                              ; preds = %96
  %105 = load %struct.bwi_rf*, %struct.bwi_rf** %4, align 8
  %106 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @BWI_RF_T_BCM2053, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %118

110:                                              ; preds = %104
  %111 = load %struct.bwi_rf*, %struct.bwi_rf** %4, align 8
  %112 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = icmp eq i32 %113, 1
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = load %struct.bwi_tpctl*, %struct.bwi_tpctl** %6, align 8
  %117 = getelementptr inbounds %struct.bwi_tpctl, %struct.bwi_tpctl* %116, i32 0, i32 3
  store i32 6, i32* %117, align 4
  br label %118

118:                                              ; preds = %115, %110, %104
  br label %202

119:                                              ; preds = %96
  %120 = load %struct.bwi_rf*, %struct.bwi_rf** %4, align 8
  %121 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  switch i32 %122, label %201 [
    i32 1, label %123
    i32 2, label %156
    i32 4, label %195
    i32 5, label %195
    i32 8, label %198
  ]

123:                                              ; preds = %119
  %124 = load %struct.bwi_phy*, %struct.bwi_phy** %5, align 8
  %125 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @IEEE80211_MODE_11G, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %144

129:                                              ; preds = %123
  %130 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %131 = call i64 @BWI_IS_BRCM_BCM4309G(%struct.bwi_softc* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %137, label %133

133:                                              ; preds = %129
  %134 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %135 = call i32 @BWI_IS_BRCM_BU4306(%struct.bwi_softc* %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %133, %129
  %138 = load %struct.bwi_tpctl*, %struct.bwi_tpctl** %6, align 8
  %139 = getelementptr inbounds %struct.bwi_tpctl, %struct.bwi_tpctl* %138, i32 0, i32 3
  store i32 3, i32* %139, align 4
  br label %143

140:                                              ; preds = %133
  %141 = load %struct.bwi_tpctl*, %struct.bwi_tpctl** %6, align 8
  %142 = getelementptr inbounds %struct.bwi_tpctl, %struct.bwi_tpctl* %141, i32 0, i32 3
  store i32 1, i32* %142, align 4
  br label %143

143:                                              ; preds = %140, %137
  br label %155

144:                                              ; preds = %123
  %145 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %146 = call i64 @BWI_IS_BRCM_BCM4309G(%struct.bwi_softc* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %144
  %149 = load %struct.bwi_tpctl*, %struct.bwi_tpctl** %6, align 8
  %150 = getelementptr inbounds %struct.bwi_tpctl, %struct.bwi_tpctl* %149, i32 0, i32 3
  store i32 7, i32* %150, align 4
  br label %154

151:                                              ; preds = %144
  %152 = load %struct.bwi_tpctl*, %struct.bwi_tpctl** %6, align 8
  %153 = getelementptr inbounds %struct.bwi_tpctl, %struct.bwi_tpctl* %152, i32 0, i32 3
  store i32 6, i32* %153, align 4
  br label %154

154:                                              ; preds = %151, %148
  br label %155

155:                                              ; preds = %154, %143
  br label %201

156:                                              ; preds = %119
  %157 = load %struct.bwi_phy*, %struct.bwi_phy** %5, align 8
  %158 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @IEEE80211_MODE_11G, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %191

162:                                              ; preds = %156
  %163 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %164 = call i64 @BWI_IS_BRCM_BCM4309G(%struct.bwi_softc* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %162
  %167 = load %struct.bwi_tpctl*, %struct.bwi_tpctl** %6, align 8
  %168 = getelementptr inbounds %struct.bwi_tpctl, %struct.bwi_tpctl* %167, i32 0, i32 3
  store i32 3, i32* %168, align 4
  br label %190

169:                                              ; preds = %162
  %170 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %171 = call i32 @BWI_IS_BRCM_BU4306(%struct.bwi_softc* %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %169
  %174 = load %struct.bwi_tpctl*, %struct.bwi_tpctl** %6, align 8
  %175 = getelementptr inbounds %struct.bwi_tpctl, %struct.bwi_tpctl* %174, i32 0, i32 3
  store i32 5, i32* %175, align 4
  br label %189

176:                                              ; preds = %169
  %177 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %178 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @BWI_BBPID_BCM4320, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %185

182:                                              ; preds = %176
  %183 = load %struct.bwi_tpctl*, %struct.bwi_tpctl** %6, align 8
  %184 = getelementptr inbounds %struct.bwi_tpctl, %struct.bwi_tpctl* %183, i32 0, i32 3
  store i32 4, i32* %184, align 4
  br label %188

185:                                              ; preds = %176
  %186 = load %struct.bwi_tpctl*, %struct.bwi_tpctl** %6, align 8
  %187 = getelementptr inbounds %struct.bwi_tpctl, %struct.bwi_tpctl* %186, i32 0, i32 3
  store i32 3, i32* %187, align 4
  br label %188

188:                                              ; preds = %185, %182
  br label %189

189:                                              ; preds = %188, %173
  br label %190

190:                                              ; preds = %189, %166
  br label %194

191:                                              ; preds = %156
  %192 = load %struct.bwi_tpctl*, %struct.bwi_tpctl** %6, align 8
  %193 = getelementptr inbounds %struct.bwi_tpctl, %struct.bwi_tpctl* %192, i32 0, i32 3
  store i32 6, i32* %193, align 4
  br label %194

194:                                              ; preds = %191, %190
  br label %201

195:                                              ; preds = %119, %119
  %196 = load %struct.bwi_tpctl*, %struct.bwi_tpctl** %6, align 8
  %197 = getelementptr inbounds %struct.bwi_tpctl, %struct.bwi_tpctl* %196, i32 0, i32 3
  store i32 1, i32* %197, align 4
  br label %201

198:                                              ; preds = %119
  %199 = load %struct.bwi_tpctl*, %struct.bwi_tpctl** %6, align 8
  %200 = getelementptr inbounds %struct.bwi_tpctl, %struct.bwi_tpctl* %199, i32 0, i32 3
  store i32 26, i32* %200, align 4
  br label %201

201:                                              ; preds = %119, %198, %195, %194, %155
  br label %202

202:                                              ; preds = %201, %118, %87, %75
  %203 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %204 = load i32, i32* @BWI_DBG_MAC, align 4
  %205 = load i32, i32* @BWI_DBG_INIT, align 4
  %206 = or i32 %204, %205
  %207 = load i32, i32* @BWI_DBG_TXPOWER, align 4
  %208 = or i32 %206, %207
  %209 = load %struct.bwi_tpctl*, %struct.bwi_tpctl** %6, align 8
  %210 = getelementptr inbounds %struct.bwi_tpctl, %struct.bwi_tpctl* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.bwi_tpctl*, %struct.bwi_tpctl** %6, align 8
  %213 = getelementptr inbounds %struct.bwi_tpctl, %struct.bwi_tpctl* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.bwi_tpctl*, %struct.bwi_tpctl** %6, align 8
  %216 = getelementptr inbounds %struct.bwi_tpctl, %struct.bwi_tpctl* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.bwi_tpctl*, %struct.bwi_tpctl** %6, align 8
  %219 = getelementptr inbounds %struct.bwi_tpctl, %struct.bwi_tpctl* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @DPRINTF(%struct.bwi_softc* %203, i32 %208, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %211, i32 %214, i32 %217, i32 %220)
  ret void
}

declare dso_local i64 @BWI_IS_BRCM_BCM4309G(%struct.bwi_softc*) #1

declare dso_local i32 @BWI_IS_BRCM_BU4306(%struct.bwi_softc*) #1

declare dso_local i32 @DPRINTF(%struct.bwi_softc*, i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
