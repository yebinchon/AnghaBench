; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwirf.c_bwi_rf_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwirf.c_bwi_rf_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_mac = type { i32, %struct.bwi_rf, %struct.bwi_phy, %struct.bwi_softc* }
%struct.bwi_rf = type { i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.bwi_phy = type { i32, i32 }
%struct.bwi_softc = type { i64, i32, i32 }

@BWI_BBPID_BCM4317 = common dso_local global i64 0, align 8
@BWI_RF_MANUFACT_BCM = common dso_local global i8* null, align 8
@BWI_RF_T_BCM2050 = common dso_local global i8* null, align 8
@BWI_RF_CTRL = common dso_local global i32 0, align 4
@BWI_RF_CTRL_RFINFO = common dso_local global i32 0, align 4
@BWI_RF_DATA_HI = common dso_local global i32 0, align 4
@BWI_RF_DATA_LO = common dso_local global i32 0, align 4
@BWI_RFINFO_MANUFACT_MASK = common dso_local global i32 0, align 4
@BWI_RFINFO_TYPE_MASK = common dso_local global i32 0, align 4
@BWI_RFINFO_REV_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"RF: manu 0x%03x, type 0x%04x, rev %u\0A\00", align 1
@BWI_RF_T_BCM2060 = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"only BCM2060 rev 1 RF is supported for 11A PHY\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@BWI_RF_CTRL_RD_11A = common dso_local global i8* null, align 8
@bwi_rf_on_11a = common dso_local global i8* null, align 8
@bwi_rf_off_11a = common dso_local global i8* null, align 8
@bwi_rf_calc_rssi_bcm2060 = common dso_local global i8* null, align 8
@bwi_rf_calc_noise_bcm2060 = common dso_local global i8* null, align 8
@BWI_RF_CTRL_RD_11BG = common dso_local global i8* null, align 8
@bwi_rf_calc_rssi_bcm2050 = common dso_local global i8* null, align 8
@bwi_rf_calc_noise_bcm2050 = common dso_local global i8* null, align 8
@BWI_RF_T_BCM2053 = common dso_local global i8* null, align 8
@bwi_rf_calc_rssi_bcm2053 = common dso_local global i8* null, align 8
@bwi_rf_calc_noise_bcm2053 = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [50 x i8] c"only BCM2050/BCM2053 RF is supported for 11B PHY\0A\00", align 1
@bwi_rf_on_11bg = common dso_local global i8* null, align 8
@bwi_rf_off_11bg = common dso_local global i8* null, align 8
@bwi_rf_calc_nrssi_slope_11b = common dso_local global i32 0, align 4
@bwi_rf_set_nrssi_thr_11b = common dso_local global i32 0, align 4
@bwi_rf_lo_update_11g = common dso_local global i8* null, align 8
@bwi_rf_lo_update_11b = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [42 x i8] c"only BCM2050 RF is supported for 11G PHY\0A\00", align 1
@bwi_rf_off_11g_rev5 = common dso_local global i8* null, align 8
@bwi_rf_calc_nrssi_slope_11g = common dso_local global i32 0, align 4
@bwi_rf_set_nrssi_thr_11g = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"unsupported PHY mode\0A\00", align 1
@IEEE80211_CHAN_ANY = common dso_local global i32 0, align 4
@BWI_ANT_MODE_AUTO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bwi_rf_attach(%struct.bwi_mac* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bwi_mac*, align 8
  %4 = alloca %struct.bwi_softc*, align 8
  %5 = alloca %struct.bwi_phy*, align 8
  %6 = alloca %struct.bwi_rf*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bwi_mac* %0, %struct.bwi_mac** %3, align 8
  %11 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %12 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %11, i32 0, i32 3
  %13 = load %struct.bwi_softc*, %struct.bwi_softc** %12, align 8
  store %struct.bwi_softc* %13, %struct.bwi_softc** %4, align 8
  %14 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %15 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %14, i32 0, i32 2
  store %struct.bwi_phy* %15, %struct.bwi_phy** %5, align 8
  %16 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %17 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %16, i32 0, i32 1
  store %struct.bwi_rf* %17, %struct.bwi_rf** %6, align 8
  %18 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %19 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @BWI_BBPID_BCM4317, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %40

23:                                               ; preds = %1
  %24 = load i8*, i8** @BWI_RF_MANUFACT_BCM, align 8
  store i8* %24, i8** %8, align 8
  %25 = load i8*, i8** @BWI_RF_T_BCM2050, align 8
  store i8* %25, i8** %7, align 8
  %26 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %27 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store i32 3, i32* %9, align 4
  br label %39

31:                                               ; preds = %23
  %32 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %33 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 4, i32* %9, align 4
  br label %38

37:                                               ; preds = %31
  store i32 5, i32* %9, align 4
  br label %38

38:                                               ; preds = %37, %36
  br label %39

39:                                               ; preds = %38, %30
  br label %69

40:                                               ; preds = %1
  %41 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %42 = load i32, i32* @BWI_RF_CTRL, align 4
  %43 = load i32, i32* @BWI_RF_CTRL_RFINFO, align 4
  %44 = call i32 @CSR_WRITE_2(%struct.bwi_softc* %41, i32 %42, i32 %43)
  %45 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %46 = load i32, i32* @BWI_RF_DATA_HI, align 4
  %47 = call i32 @CSR_READ_2(%struct.bwi_softc* %45, i32 %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = shl i32 %48, 16
  store i32 %49, i32* %10, align 4
  %50 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %51 = load i32, i32* @BWI_RF_CTRL, align 4
  %52 = load i32, i32* @BWI_RF_CTRL_RFINFO, align 4
  %53 = call i32 @CSR_WRITE_2(%struct.bwi_softc* %50, i32 %51, i32 %52)
  %54 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %55 = load i32, i32* @BWI_RF_DATA_LO, align 4
  %56 = call i32 @CSR_READ_2(%struct.bwi_softc* %54, i32 %55)
  %57 = load i32, i32* %10, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @BWI_RFINFO_MANUFACT_MASK, align 4
  %61 = call i8* @__SHIFTOUT(i32 %59, i32 %60)
  store i8* %61, i8** %8, align 8
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @BWI_RFINFO_TYPE_MASK, align 4
  %64 = call i8* @__SHIFTOUT(i32 %62, i32 %63)
  store i8* %64, i8** %7, align 8
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @BWI_RFINFO_REV_MASK, align 4
  %67 = call i8* @__SHIFTOUT(i32 %65, i32 %66)
  %68 = ptrtoint i8* %67 to i32
  store i32 %68, i32* %9, align 4
  br label %69

69:                                               ; preds = %40, %39
  %70 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %71 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load i8*, i8** %8, align 8
  %74 = load i8*, i8** %7, align 8
  %75 = load i32, i32* %9, align 4
  %76 = call i32 (i32, i8*, ...) @device_printf(i32 %72, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %73, i8* %74, i32 %75)
  %77 = load %struct.bwi_rf*, %struct.bwi_rf** %6, align 8
  %78 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %77, i32 0, i32 13
  store i8* null, i8** %78, align 8
  %79 = load %struct.bwi_rf*, %struct.bwi_rf** %6, align 8
  %80 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %79, i32 0, i32 0
  store i32 0, i32* %80, align 8
  %81 = load %struct.bwi_phy*, %struct.bwi_phy** %5, align 8
  %82 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  switch i32 %83, label %222 [
    i32 130, label %84
    i32 129, label %117
    i32 128, label %177
  ]

84:                                               ; preds = %69
  %85 = load i8*, i8** %8, align 8
  %86 = load i8*, i8** @BWI_RF_MANUFACT_BCM, align 8
  %87 = icmp ne i8* %85, %86
  br i1 %87, label %95, label %88

88:                                               ; preds = %84
  %89 = load i8*, i8** %7, align 8
  %90 = load i8*, i8** @BWI_RF_T_BCM2060, align 8
  %91 = icmp ne i8* %89, %90
  br i1 %91, label %95, label %92

92:                                               ; preds = %88
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %93, 1
  br i1 %94, label %95, label %101

95:                                               ; preds = %92, %88, %84
  %96 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %97 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = call i32 (i32, i8*, ...) @device_printf(i32 %98, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %100 = load i32, i32* @ENXIO, align 4
  store i32 %100, i32* %2, align 4
  br label %244

101:                                              ; preds = %92
  %102 = load i8*, i8** @BWI_RF_CTRL_RD_11A, align 8
  %103 = load %struct.bwi_rf*, %struct.bwi_rf** %6, align 8
  %104 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %103, i32 0, i32 13
  store i8* %102, i8** %104, align 8
  %105 = load i8*, i8** @bwi_rf_on_11a, align 8
  %106 = load %struct.bwi_rf*, %struct.bwi_rf** %6, align 8
  %107 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %106, i32 0, i32 12
  store i8* %105, i8** %107, align 8
  %108 = load i8*, i8** @bwi_rf_off_11a, align 8
  %109 = load %struct.bwi_rf*, %struct.bwi_rf** %6, align 8
  %110 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %109, i32 0, i32 11
  store i8* %108, i8** %110, align 8
  %111 = load i8*, i8** @bwi_rf_calc_rssi_bcm2060, align 8
  %112 = load %struct.bwi_rf*, %struct.bwi_rf** %6, align 8
  %113 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %112, i32 0, i32 8
  store i8* %111, i8** %113, align 8
  %114 = load i8*, i8** @bwi_rf_calc_noise_bcm2060, align 8
  %115 = load %struct.bwi_rf*, %struct.bwi_rf** %6, align 8
  %116 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %115, i32 0, i32 7
  store i8* %114, i8** %116, align 8
  br label %228

117:                                              ; preds = %69
  %118 = load i8*, i8** %7, align 8
  %119 = load i8*, i8** @BWI_RF_T_BCM2050, align 8
  %120 = icmp eq i8* %118, %119
  br i1 %120, label %121, label %131

121:                                              ; preds = %117
  %122 = load i8*, i8** @BWI_RF_CTRL_RD_11BG, align 8
  %123 = load %struct.bwi_rf*, %struct.bwi_rf** %6, align 8
  %124 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %123, i32 0, i32 13
  store i8* %122, i8** %124, align 8
  %125 = load i8*, i8** @bwi_rf_calc_rssi_bcm2050, align 8
  %126 = load %struct.bwi_rf*, %struct.bwi_rf** %6, align 8
  %127 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %126, i32 0, i32 8
  store i8* %125, i8** %127, align 8
  %128 = load i8*, i8** @bwi_rf_calc_noise_bcm2050, align 8
  %129 = load %struct.bwi_rf*, %struct.bwi_rf** %6, align 8
  %130 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %129, i32 0, i32 7
  store i8* %128, i8** %130, align 8
  br label %151

131:                                              ; preds = %117
  %132 = load i8*, i8** %7, align 8
  %133 = load i8*, i8** @BWI_RF_T_BCM2053, align 8
  %134 = icmp eq i8* %132, %133
  br i1 %134, label %135, label %144

135:                                              ; preds = %131
  %136 = load %struct.bwi_rf*, %struct.bwi_rf** %6, align 8
  %137 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %136, i32 0, i32 0
  store i32 1, i32* %137, align 8
  %138 = load i8*, i8** @bwi_rf_calc_rssi_bcm2053, align 8
  %139 = load %struct.bwi_rf*, %struct.bwi_rf** %6, align 8
  %140 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %139, i32 0, i32 8
  store i8* %138, i8** %140, align 8
  %141 = load i8*, i8** @bwi_rf_calc_noise_bcm2053, align 8
  %142 = load %struct.bwi_rf*, %struct.bwi_rf** %6, align 8
  %143 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %142, i32 0, i32 7
  store i8* %141, i8** %143, align 8
  br label %150

144:                                              ; preds = %131
  %145 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %146 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = call i32 (i32, i8*, ...) @device_printf(i32 %147, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  %149 = load i32, i32* @ENXIO, align 4
  store i32 %149, i32* %2, align 4
  br label %244

150:                                              ; preds = %135
  br label %151

151:                                              ; preds = %150, %121
  %152 = load i8*, i8** @bwi_rf_on_11bg, align 8
  %153 = load %struct.bwi_rf*, %struct.bwi_rf** %6, align 8
  %154 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %153, i32 0, i32 12
  store i8* %152, i8** %154, align 8
  %155 = load i8*, i8** @bwi_rf_off_11bg, align 8
  %156 = load %struct.bwi_rf*, %struct.bwi_rf** %6, align 8
  %157 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %156, i32 0, i32 11
  store i8* %155, i8** %157, align 8
  %158 = load i32, i32* @bwi_rf_calc_nrssi_slope_11b, align 4
  %159 = load %struct.bwi_rf*, %struct.bwi_rf** %6, align 8
  %160 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %159, i32 0, i32 10
  store i32 %158, i32* %160, align 4
  %161 = load i32, i32* @bwi_rf_set_nrssi_thr_11b, align 4
  %162 = load %struct.bwi_rf*, %struct.bwi_rf** %6, align 8
  %163 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %162, i32 0, i32 9
  store i32 %161, i32* %163, align 8
  %164 = load %struct.bwi_phy*, %struct.bwi_phy** %5, align 8
  %165 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = icmp eq i32 %166, 6
  br i1 %167, label %168, label %172

168:                                              ; preds = %151
  %169 = load i8*, i8** @bwi_rf_lo_update_11g, align 8
  %170 = load %struct.bwi_rf*, %struct.bwi_rf** %6, align 8
  %171 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %170, i32 0, i32 6
  store i8* %169, i8** %171, align 8
  br label %176

172:                                              ; preds = %151
  %173 = load i8*, i8** @bwi_rf_lo_update_11b, align 8
  %174 = load %struct.bwi_rf*, %struct.bwi_rf** %6, align 8
  %175 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %174, i32 0, i32 6
  store i8* %173, i8** %175, align 8
  br label %176

176:                                              ; preds = %172, %168
  br label %228

177:                                              ; preds = %69
  %178 = load i8*, i8** %7, align 8
  %179 = load i8*, i8** @BWI_RF_T_BCM2050, align 8
  %180 = icmp ne i8* %178, %179
  br i1 %180, label %181, label %187

181:                                              ; preds = %177
  %182 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %183 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = call i32 (i32, i8*, ...) @device_printf(i32 %184, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %186 = load i32, i32* @ENXIO, align 4
  store i32 %186, i32* %2, align 4
  br label %244

187:                                              ; preds = %177
  %188 = load i8*, i8** @BWI_RF_CTRL_RD_11BG, align 8
  %189 = load %struct.bwi_rf*, %struct.bwi_rf** %6, align 8
  %190 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %189, i32 0, i32 13
  store i8* %188, i8** %190, align 8
  %191 = load i8*, i8** @bwi_rf_on_11bg, align 8
  %192 = load %struct.bwi_rf*, %struct.bwi_rf** %6, align 8
  %193 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %192, i32 0, i32 12
  store i8* %191, i8** %193, align 8
  %194 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %195 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = icmp sge i32 %196, 5
  br i1 %197, label %198, label %202

198:                                              ; preds = %187
  %199 = load i8*, i8** @bwi_rf_off_11g_rev5, align 8
  %200 = load %struct.bwi_rf*, %struct.bwi_rf** %6, align 8
  %201 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %200, i32 0, i32 11
  store i8* %199, i8** %201, align 8
  br label %206

202:                                              ; preds = %187
  %203 = load i8*, i8** @bwi_rf_off_11bg, align 8
  %204 = load %struct.bwi_rf*, %struct.bwi_rf** %6, align 8
  %205 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %204, i32 0, i32 11
  store i8* %203, i8** %205, align 8
  br label %206

206:                                              ; preds = %202, %198
  %207 = load i32, i32* @bwi_rf_calc_nrssi_slope_11g, align 4
  %208 = load %struct.bwi_rf*, %struct.bwi_rf** %6, align 8
  %209 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %208, i32 0, i32 10
  store i32 %207, i32* %209, align 4
  %210 = load i32, i32* @bwi_rf_set_nrssi_thr_11g, align 4
  %211 = load %struct.bwi_rf*, %struct.bwi_rf** %6, align 8
  %212 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %211, i32 0, i32 9
  store i32 %210, i32* %212, align 8
  %213 = load i8*, i8** @bwi_rf_calc_rssi_bcm2050, align 8
  %214 = load %struct.bwi_rf*, %struct.bwi_rf** %6, align 8
  %215 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %214, i32 0, i32 8
  store i8* %213, i8** %215, align 8
  %216 = load i8*, i8** @bwi_rf_calc_noise_bcm2050, align 8
  %217 = load %struct.bwi_rf*, %struct.bwi_rf** %6, align 8
  %218 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %217, i32 0, i32 7
  store i8* %216, i8** %218, align 8
  %219 = load i8*, i8** @bwi_rf_lo_update_11g, align 8
  %220 = load %struct.bwi_rf*, %struct.bwi_rf** %6, align 8
  %221 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %220, i32 0, i32 6
  store i8* %219, i8** %221, align 8
  br label %228

222:                                              ; preds = %69
  %223 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %224 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 4
  %226 = call i32 (i32, i8*, ...) @device_printf(i32 %225, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %227 = load i32, i32* @ENXIO, align 4
  store i32 %227, i32* %2, align 4
  br label %244

228:                                              ; preds = %206, %176, %101
  %229 = load i8*, i8** %7, align 8
  %230 = load %struct.bwi_rf*, %struct.bwi_rf** %6, align 8
  %231 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %230, i32 0, i32 5
  store i8* %229, i8** %231, align 8
  %232 = load i32, i32* %9, align 4
  %233 = load %struct.bwi_rf*, %struct.bwi_rf** %6, align 8
  %234 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %233, i32 0, i32 1
  store i32 %232, i32* %234, align 4
  %235 = load i8*, i8** %8, align 8
  %236 = load %struct.bwi_rf*, %struct.bwi_rf** %6, align 8
  %237 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %236, i32 0, i32 4
  store i8* %235, i8** %237, align 8
  %238 = load i32, i32* @IEEE80211_CHAN_ANY, align 4
  %239 = load %struct.bwi_rf*, %struct.bwi_rf** %6, align 8
  %240 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %239, i32 0, i32 3
  store i32 %238, i32* %240, align 4
  %241 = load i32, i32* @BWI_ANT_MODE_AUTO, align 4
  %242 = load %struct.bwi_rf*, %struct.bwi_rf** %6, align 8
  %243 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %242, i32 0, i32 2
  store i32 %241, i32* %243, align 8
  store i32 0, i32* %2, align 4
  br label %244

244:                                              ; preds = %228, %222, %181, %144, %95
  %245 = load i32, i32* %2, align 4
  ret i32 %245
}

declare dso_local i32 @CSR_WRITE_2(%struct.bwi_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_2(%struct.bwi_softc*, i32) #1

declare dso_local i8* @__SHIFTOUT(i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
