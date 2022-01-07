; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwimac.c_bwi_mac_calibrate_txpower.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwimac.c_bwi_mac_calibrate_txpower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_mac = type { i32, %struct.TYPE_2__, %struct.bwi_rf, %struct.bwi_softc* }
%struct.TYPE_2__ = type { i64 }
%struct.bwi_rf = type { i32 }
%struct.bwi_softc = type { i32 }

@BWI_MAC_F_TPCTL_ERROR = common dso_local global i32 0, align 4
@BWI_DBG_MAC = common dso_local global i32 0, align 4
@BWI_DBG_TXPOWER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"tpctl error happened, can't set txpower\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"BU4306, can't set txpower\00", align 1
@BWI_COMM_MOBJ_TSSI_DS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"no DS tssi\00", align 1
@IEEE80211_MODE_11B = common dso_local global i64 0, align 8
@BWI_TXPWR_FORCE = common dso_local global i32 0, align 4
@BWI_COMM_MOBJ_TSSI_OFDM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"no OFDM tssi\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"tssi0 %d, tssi1 %d, tssi2 %d, tssi3 %d\0A\00", align 1
@BWI_HFLAG_PWR_BOOST_DS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"tssi avg %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"current txpower %d\0A\00", align 1
@BWI_TXPWR_INIT = common dso_local global i32 0, align 4
@BWI_RF_ATTEN_FACTOR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [37 x i8] c"no need to adjust RF/BBP attenuation\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"rf atten adjust %d, bbp atten adjust %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bwi_mac_calibrate_txpower(%struct.bwi_mac* %0, i32 %1) #0 {
  %3 = alloca %struct.bwi_mac*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bwi_softc*, align 8
  %6 = alloca %struct.bwi_rf*, align 8
  %7 = alloca [4 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.bwi_mac* %0, %struct.bwi_mac** %3, align 8
  store i32 %1, i32* %4, align 4
  %16 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %17 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %16, i32 0, i32 3
  %18 = load %struct.bwi_softc*, %struct.bwi_softc** %17, align 8
  store %struct.bwi_softc* %18, %struct.bwi_softc** %5, align 8
  %19 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %20 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %19, i32 0, i32 2
  store %struct.bwi_rf* %20, %struct.bwi_rf** %6, align 8
  %21 = load %struct.bwi_softc*, %struct.bwi_softc** %5, align 8
  %22 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  br label %219

26:                                               ; preds = %2
  %27 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %28 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @BWI_MAC_F_TPCTL_ERROR, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %26
  %34 = load %struct.bwi_softc*, %struct.bwi_softc** %5, align 8
  %35 = load i32, i32* @BWI_DBG_MAC, align 4
  %36 = load i32, i32* @BWI_DBG_TXPOWER, align 4
  %37 = or i32 %35, %36
  %38 = call i32 (%struct.bwi_softc*, i32, i8*, ...) @DPRINTF(%struct.bwi_softc* %34, i32 %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %219

39:                                               ; preds = %26
  %40 = load %struct.bwi_softc*, %struct.bwi_softc** %5, align 8
  %41 = call i64 @BWI_IS_BRCM_BU4306(%struct.bwi_softc* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = load %struct.bwi_softc*, %struct.bwi_softc** %5, align 8
  %45 = load i32, i32* @BWI_DBG_MAC, align 4
  %46 = load i32, i32* @BWI_DBG_TXPOWER, align 4
  %47 = or i32 %45, %46
  %48 = call i32 (%struct.bwi_softc*, i32, i8*, ...) @DPRINTF(%struct.bwi_softc* %44, i32 %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %219

49:                                               ; preds = %39
  store i32 0, i32* %12, align 4
  %50 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %51 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %52 = load i32, i32* @BWI_COMM_MOBJ_TSSI_DS, align 4
  %53 = call i32 @bwi_rf_get_latest_tssi(%struct.bwi_mac* %50, i32* %51, i32 %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %111

56:                                               ; preds = %49
  %57 = load %struct.bwi_softc*, %struct.bwi_softc** %5, align 8
  %58 = load i32, i32* @BWI_DBG_MAC, align 4
  %59 = load i32, i32* @BWI_DBG_TXPOWER, align 4
  %60 = or i32 %58, %59
  %61 = call i32 (%struct.bwi_softc*, i32, i8*, ...) @DPRINTF(%struct.bwi_softc* %57, i32 %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %62 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %63 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @IEEE80211_MODE_11B, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %56
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @BWI_TXPWR_FORCE, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  store i32 0, i32* %14, align 4
  store i32 1, i32* %15, align 4
  br label %207

73:                                               ; preds = %68
  br label %219

74:                                               ; preds = %56
  %75 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %76 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %77 = load i32, i32* @BWI_COMM_MOBJ_TSSI_OFDM, align 4
  %78 = call i32 @bwi_rf_get_latest_tssi(%struct.bwi_mac* %75, i32* %76, i32 %77)
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %92

81:                                               ; preds = %74
  %82 = load %struct.bwi_softc*, %struct.bwi_softc** %5, align 8
  %83 = load i32, i32* @BWI_DBG_MAC, align 4
  %84 = load i32, i32* @BWI_DBG_TXPOWER, align 4
  %85 = or i32 %83, %84
  %86 = call i32 (%struct.bwi_softc*, i32, i8*, ...) @DPRINTF(%struct.bwi_softc* %82, i32 %85, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* @BWI_TXPWR_FORCE, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %81
  store i32 0, i32* %14, align 4
  store i32 1, i32* %15, align 4
  br label %207

91:                                               ; preds = %81
  br label %219

92:                                               ; preds = %74
  store i32 0, i32* %11, align 4
  br label %93

93:                                               ; preds = %107, %92
  %94 = load i32, i32* %11, align 4
  %95 = icmp slt i32 %94, 4
  br i1 %95, label %96, label %110

96:                                               ; preds = %93
  %97 = load i32, i32* %11, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, 32
  store i32 %101, i32* %99, align 4
  %102 = load i32, i32* %11, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = and i32 %105, 63
  store i32 %106, i32* %104, align 4
  br label %107

107:                                              ; preds = %96
  %108 = load i32, i32* %11, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %11, align 4
  br label %93

110:                                              ; preds = %93
  store i32 1, i32* %12, align 4
  br label %111

111:                                              ; preds = %110, %49
  %112 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %113 = call i32 @bwi_rf_clear_tssi(%struct.bwi_mac* %112)
  %114 = load %struct.bwi_softc*, %struct.bwi_softc** %5, align 8
  %115 = load i32, i32* @BWI_DBG_MAC, align 4
  %116 = load i32, i32* @BWI_DBG_TXPOWER, align 4
  %117 = or i32 %115, %116
  %118 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %119 = load i32, i32* %118, align 16
  %120 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %121 = load i32, i32* %120, align 4
  %122 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %123 = load i32, i32* %122, align 8
  %124 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %125 = load i32, i32* %124, align 4
  %126 = call i32 (%struct.bwi_softc*, i32, i8*, ...) @DPRINTF(%struct.bwi_softc* %114, i32 %117, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %119, i32 %121, i32 %123, i32 %125)
  %127 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %128 = load i32, i32* %127, align 16
  %129 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %128, %130
  %132 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %133 = load i32, i32* %132, align 8
  %134 = add nsw i32 %131, %133
  %135 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %134, %136
  %138 = add nsw i32 %137, 8
  %139 = sdiv i32 %138, 4
  store i32 %139, i32* %8, align 4
  %140 = load i32, i32* %12, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %151

142:                                              ; preds = %111
  %143 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %144 = call i32 @HFLAGS_READ(%struct.bwi_mac* %143)
  %145 = load i32, i32* @BWI_HFLAG_PWR_BOOST_DS, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %142
  %149 = load i32, i32* %8, align 4
  %150 = sub nsw i32 %149, 13
  store i32 %150, i32* %8, align 4
  br label %151

151:                                              ; preds = %148, %142, %111
  %152 = load %struct.bwi_softc*, %struct.bwi_softc** %5, align 8
  %153 = load i32, i32* @BWI_DBG_MAC, align 4
  %154 = load i32, i32* @BWI_DBG_TXPOWER, align 4
  %155 = or i32 %153, %154
  %156 = load i32, i32* %8, align 4
  %157 = call i32 (%struct.bwi_softc*, i32, i8*, ...) @DPRINTF(%struct.bwi_softc* %152, i32 %155, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %156)
  %158 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %159 = load i32, i32* %8, align 4
  %160 = call i32 @bwi_rf_tssi2dbm(%struct.bwi_mac* %158, i32 %159, i32* %9)
  store i32 %160, i32* %10, align 4
  %161 = load i32, i32* %10, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %151
  br label %219

164:                                              ; preds = %151
  %165 = load %struct.bwi_softc*, %struct.bwi_softc** %5, align 8
  %166 = load i32, i32* @BWI_DBG_MAC, align 4
  %167 = load i32, i32* @BWI_DBG_TXPOWER, align 4
  %168 = or i32 %166, %167
  %169 = load i32, i32* %9, align 4
  %170 = call i32 (%struct.bwi_softc*, i32, i8*, ...) @DPRINTF(%struct.bwi_softc* %165, i32 %168, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 %169)
  %171 = load %struct.bwi_rf*, %struct.bwi_rf** %6, align 8
  %172 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %9, align 4
  %175 = sub nsw i32 %173, %174
  store i32 %175, i32* %13, align 4
  %176 = load i32, i32* %13, align 4
  %177 = call i32 @howmany(i32 %176, i32 8)
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %14, align 4
  %179 = load i32, i32* %4, align 4
  %180 = load i32, i32* @BWI_TXPWR_INIT, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %185

182:                                              ; preds = %164
  %183 = load i32, i32* %13, align 4
  %184 = sub nsw i32 0, %183
  store i32 %184, i32* %15, align 4
  br label %189

185:                                              ; preds = %164
  %186 = load i32, i32* %13, align 4
  %187 = sdiv i32 %186, 2
  %188 = sub nsw i32 0, %187
  store i32 %188, i32* %15, align 4
  br label %189

189:                                              ; preds = %185, %182
  %190 = load i32, i32* @BWI_RF_ATTEN_FACTOR, align 4
  %191 = load i32, i32* %14, align 4
  %192 = mul nsw i32 %190, %191
  %193 = load i32, i32* %15, align 4
  %194 = sub nsw i32 %193, %192
  store i32 %194, i32* %15, align 4
  %195 = load i32, i32* %14, align 4
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %206

197:                                              ; preds = %189
  %198 = load i32, i32* %15, align 4
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %206

200:                                              ; preds = %197
  %201 = load %struct.bwi_softc*, %struct.bwi_softc** %5, align 8
  %202 = load i32, i32* @BWI_DBG_MAC, align 4
  %203 = load i32, i32* @BWI_DBG_TXPOWER, align 4
  %204 = or i32 %202, %203
  %205 = call i32 (%struct.bwi_softc*, i32, i8*, ...) @DPRINTF(%struct.bwi_softc* %201, i32 %204, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  br label %219

206:                                              ; preds = %197, %189
  br label %207

207:                                              ; preds = %206, %90, %72
  %208 = load %struct.bwi_softc*, %struct.bwi_softc** %5, align 8
  %209 = load i32, i32* @BWI_DBG_MAC, align 4
  %210 = load i32, i32* @BWI_DBG_TXPOWER, align 4
  %211 = or i32 %209, %210
  %212 = load i32, i32* %14, align 4
  %213 = load i32, i32* %15, align 4
  %214 = call i32 (%struct.bwi_softc*, i32, i8*, ...) @DPRINTF(%struct.bwi_softc* %208, i32 %211, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0), i32 %212, i32 %213)
  %215 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %216 = load i32, i32* %14, align 4
  %217 = load i32, i32* %15, align 4
  %218 = call i32 @bwi_mac_adjust_tpctl(%struct.bwi_mac* %215, i32 %216, i32 %217)
  br label %219

219:                                              ; preds = %207, %200, %163, %91, %73, %43, %33, %25
  ret void
}

declare dso_local i32 @DPRINTF(%struct.bwi_softc*, i32, i8*, ...) #1

declare dso_local i64 @BWI_IS_BRCM_BU4306(%struct.bwi_softc*) #1

declare dso_local i32 @bwi_rf_get_latest_tssi(%struct.bwi_mac*, i32*, i32) #1

declare dso_local i32 @bwi_rf_clear_tssi(%struct.bwi_mac*) #1

declare dso_local i32 @HFLAGS_READ(%struct.bwi_mac*) #1

declare dso_local i32 @bwi_rf_tssi2dbm(%struct.bwi_mac*, i32, i32*) #1

declare dso_local i32 @howmany(i32, i32) #1

declare dso_local i32 @bwi_mac_adjust_tpctl(%struct.bwi_mac*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
