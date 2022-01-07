; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_8225v2_rf_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_8225v2_rf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.urtw_softc = type { i32, i32 }

@URTW_8225_ANAPARAM_ON = common dso_local global i32 0, align 4
@URTW_RF_TIMING = common dso_local global i32 0, align 4
@URTW_BRSR = common dso_local global i32 0, align 4
@URTW_RF_PARA = common dso_local global i32 0, align 4
@URTW_EPROM_CMD_CONFIG = common dso_local global i32 0, align 4
@URTW_CONFIG3 = common dso_local global i32 0, align 4
@URTW_EPROM_CMD_NORMAL = common dso_local global i32 0, align 4
@urtw_8225v2_rf_part1 = common dso_local global %struct.TYPE_5__* null, align 8
@URTW_8225_ADDR_0_MAGIC = common dso_local global i32 0, align 4
@URTW_8225_ADDR_0_DATA_MAGIC1 = common dso_local global i32 0, align 4
@URTW_8225_ADDR_1_MAGIC = common dso_local global i32 0, align 4
@URTW_8225_ADDR_2_MAGIC = common dso_local global i32 0, align 4
@urtw_8225v2_rxgain = common dso_local global i32* null, align 8
@URTW_8225_ADDR_3_MAGIC = common dso_local global i32 0, align 4
@URTW_8225_ADDR_3_DATA_MAGIC1 = common dso_local global i32 0, align 4
@URTW_8225_ADDR_5_MAGIC = common dso_local global i32 0, align 4
@URTW_8225_ADDR_5_DATA_MAGIC1 = common dso_local global i32 0, align 4
@URTW_8225_ADDR_0_DATA_MAGIC2 = common dso_local global i32 0, align 4
@URTW_8225_ADDR_2_DATA_MAGIC1 = common dso_local global i32 0, align 4
@URTW_8225_ADDR_2_DATA_MAGIC2 = common dso_local global i32 0, align 4
@URTW_8225_ADDR_6_MAGIC = common dso_local global i32 0, align 4
@URTW_8225_ADDR_6_DATA_MAGIC1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"expect 0xe6!! (0x%x)\0A\00", align 1
@URTW_8225_ADDR_6_DATA_MAGIC2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"RF calibration failed\0A\00", align 1
@URTW_8225_ADDR_0_DATA_MAGIC6 = common dso_local global i32 0, align 4
@urtw_8225_agc = common dso_local global i32* null, align 8
@urtw_8225v2_rf_part2 = common dso_local global %struct.TYPE_5__* null, align 8
@urtw_8225v2_rf_part3 = common dso_local global %struct.TYPE_5__* null, align 8
@URTW_TESTR = common dso_local global i32 0, align 4
@URTW_HSSI_PARA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.urtw_softc*)* @urtw_8225v2_rf_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @urtw_8225v2_rf_init(%struct.urtw_softc* %0) #0 {
  %2 = alloca %struct.urtw_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.urtw_softc* %0, %struct.urtw_softc** %2, align 8
  %7 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %8 = load i32, i32* @URTW_8225_ANAPARAM_ON, align 4
  %9 = call i64 @urtw_8180_set_anaparam(%struct.urtw_softc* %7, i32 %8)
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %294

13:                                               ; preds = %1
  %14 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %15 = call i64 @urtw_8225_usb_init(%struct.urtw_softc* %14)
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %6, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %294

19:                                               ; preds = %13
  %20 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %21 = load i32, i32* @URTW_RF_TIMING, align 4
  %22 = call i32 @urtw_write32_m(%struct.urtw_softc* %20, i32 %21, i32 688136)
  %23 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %24 = load i32, i32* @URTW_BRSR, align 4
  %25 = call i32 @urtw_read16_m(%struct.urtw_softc* %23, i32 %24, i32* %4)
  %26 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %27 = load i32, i32* @URTW_BRSR, align 4
  %28 = call i32 @urtw_write16_m(%struct.urtw_softc* %26, i32 %27, i32 65535)
  %29 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %30 = load i32, i32* @URTW_RF_PARA, align 4
  %31 = call i32 @urtw_write32_m(%struct.urtw_softc* %29, i32 %30, i32 1048644)
  %32 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %33 = load i32, i32* @URTW_EPROM_CMD_CONFIG, align 4
  %34 = call i64 @urtw_set_mode(%struct.urtw_softc* %32, i32 %33)
  store i64 %34, i64* %6, align 8
  %35 = load i64, i64* %6, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %19
  br label %294

38:                                               ; preds = %19
  %39 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %40 = load i32, i32* @URTW_CONFIG3, align 4
  %41 = call i32 @urtw_write8_m(%struct.urtw_softc* %39, i32 %40, i32 68)
  %42 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %43 = load i32, i32* @URTW_EPROM_CMD_NORMAL, align 4
  %44 = call i64 @urtw_set_mode(%struct.urtw_softc* %42, i32 %43)
  store i64 %44, i64* %6, align 8
  %45 = load i64, i64* %6, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  br label %294

48:                                               ; preds = %38
  %49 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %50 = call i64 @urtw_8185_rf_pins_enable(%struct.urtw_softc* %49)
  store i64 %50, i64* %6, align 8
  %51 = load i64, i64* %6, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %294

54:                                               ; preds = %48
  %55 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %56 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %55, i32 0, i32 0
  %57 = call i32 @usb_pause_mtx(i32* %56, i32 500)
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %78, %54
  %59 = load i32, i32* %3, align 4
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** @urtw_8225v2_rf_part1, align 8
  %61 = call i32 @nitems(%struct.TYPE_5__* %60)
  %62 = icmp ult i32 %59, %61
  br i1 %62, label %63, label %81

63:                                               ; preds = %58
  %64 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** @urtw_8225v2_rf_part1, align 8
  %66 = load i32, i32* %3, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** @urtw_8225v2_rf_part1, align 8
  %72 = load i32, i32* %3, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @urtw_8225_write(%struct.urtw_softc* %64, i32 %70, i32 %76)
  br label %78

78:                                               ; preds = %63
  %79 = load i32, i32* %3, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %3, align 4
  br label %58

81:                                               ; preds = %58
  %82 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %83 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %82, i32 0, i32 0
  %84 = call i32 @usb_pause_mtx(i32* %83, i32 50)
  %85 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %86 = load i32, i32* @URTW_8225_ADDR_0_MAGIC, align 4
  %87 = load i32, i32* @URTW_8225_ADDR_0_DATA_MAGIC1, align 4
  %88 = call i32 @urtw_8225_write(%struct.urtw_softc* %85, i32 %86, i32 %87)
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %106, %81
  %90 = load i32, i32* %3, align 4
  %91 = icmp ult i32 %90, 95
  br i1 %91, label %92, label %109

92:                                               ; preds = %89
  %93 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %94 = load i32, i32* @URTW_8225_ADDR_1_MAGIC, align 4
  %95 = load i32, i32* %3, align 4
  %96 = add i32 %95, 1
  %97 = call i32 @urtw_8225_write(%struct.urtw_softc* %93, i32 %94, i32 %96)
  %98 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %99 = load i32, i32* @URTW_8225_ADDR_2_MAGIC, align 4
  %100 = load i32*, i32** @urtw_8225v2_rxgain, align 8
  %101 = load i32, i32* %3, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @urtw_8225_write(%struct.urtw_softc* %98, i32 %99, i32 %104)
  br label %106

106:                                              ; preds = %92
  %107 = load i32, i32* %3, align 4
  %108 = add i32 %107, 1
  store i32 %108, i32* %3, align 4
  br label %89

109:                                              ; preds = %89
  %110 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %111 = load i32, i32* @URTW_8225_ADDR_3_MAGIC, align 4
  %112 = load i32, i32* @URTW_8225_ADDR_3_DATA_MAGIC1, align 4
  %113 = call i32 @urtw_8225_write(%struct.urtw_softc* %110, i32 %111, i32 %112)
  %114 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %115 = load i32, i32* @URTW_8225_ADDR_5_MAGIC, align 4
  %116 = load i32, i32* @URTW_8225_ADDR_5_DATA_MAGIC1, align 4
  %117 = call i32 @urtw_8225_write(%struct.urtw_softc* %114, i32 %115, i32 %116)
  %118 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %119 = load i32, i32* @URTW_8225_ADDR_0_MAGIC, align 4
  %120 = load i32, i32* @URTW_8225_ADDR_0_DATA_MAGIC2, align 4
  %121 = call i32 @urtw_8225_write(%struct.urtw_softc* %118, i32 %119, i32 %120)
  %122 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %123 = load i32, i32* @URTW_8225_ADDR_2_MAGIC, align 4
  %124 = load i32, i32* @URTW_8225_ADDR_2_DATA_MAGIC1, align 4
  %125 = call i32 @urtw_8225_write(%struct.urtw_softc* %122, i32 %123, i32 %124)
  %126 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %127 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %126, i32 0, i32 0
  %128 = call i32 @usb_pause_mtx(i32* %127, i32 100)
  %129 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %130 = load i32, i32* @URTW_8225_ADDR_2_MAGIC, align 4
  %131 = load i32, i32* @URTW_8225_ADDR_2_DATA_MAGIC2, align 4
  %132 = call i32 @urtw_8225_write(%struct.urtw_softc* %129, i32 %130, i32 %131)
  %133 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %134 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %133, i32 0, i32 0
  %135 = call i32 @usb_pause_mtx(i32* %134, i32 100)
  %136 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %137 = load i32, i32* @URTW_8225_ADDR_6_MAGIC, align 4
  %138 = call i64 @urtw_8225_read(%struct.urtw_softc* %136, i32 %137, i32* %5)
  store i64 %138, i64* %6, align 8
  %139 = load i64, i64* %6, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %109
  br label %294

142:                                              ; preds = %109
  %143 = load i32, i32* %5, align 4
  %144 = load i32, i32* @URTW_8225_ADDR_6_DATA_MAGIC1, align 4
  %145 = icmp ne i32 %143, %144
  br i1 %145, label %146, label %152

146:                                              ; preds = %142
  %147 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %148 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %5, align 4
  %151 = call i32 (i32, i8*, ...) @device_printf(i32 %149, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %150)
  br label %152

152:                                              ; preds = %146, %142
  %153 = load i32, i32* %5, align 4
  %154 = load i32, i32* @URTW_8225_ADDR_6_DATA_MAGIC2, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %189, label %157

157:                                              ; preds = %152
  %158 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %159 = load i32, i32* @URTW_8225_ADDR_2_MAGIC, align 4
  %160 = load i32, i32* @URTW_8225_ADDR_2_DATA_MAGIC1, align 4
  %161 = call i32 @urtw_8225_write(%struct.urtw_softc* %158, i32 %159, i32 %160)
  %162 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %163 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %162, i32 0, i32 0
  %164 = call i32 @usb_pause_mtx(i32* %163, i32 100)
  %165 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %166 = load i32, i32* @URTW_8225_ADDR_2_MAGIC, align 4
  %167 = load i32, i32* @URTW_8225_ADDR_2_DATA_MAGIC2, align 4
  %168 = call i32 @urtw_8225_write(%struct.urtw_softc* %165, i32 %166, i32 %167)
  %169 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %170 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %169, i32 0, i32 0
  %171 = call i32 @usb_pause_mtx(i32* %170, i32 50)
  %172 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %173 = load i32, i32* @URTW_8225_ADDR_6_MAGIC, align 4
  %174 = call i64 @urtw_8225_read(%struct.urtw_softc* %172, i32 %173, i32* %5)
  store i64 %174, i64* %6, align 8
  %175 = load i64, i64* %6, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %157
  br label %294

178:                                              ; preds = %157
  %179 = load i32, i32* %5, align 4
  %180 = load i32, i32* @URTW_8225_ADDR_6_DATA_MAGIC2, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %188, label %183

183:                                              ; preds = %178
  %184 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %185 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = call i32 (i32, i8*, ...) @device_printf(i32 %186, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %188

188:                                              ; preds = %183, %178
  br label %189

189:                                              ; preds = %188, %152
  %190 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %191 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %190, i32 0, i32 0
  %192 = call i32 @usb_pause_mtx(i32* %191, i32 100)
  %193 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %194 = load i32, i32* @URTW_8225_ADDR_0_MAGIC, align 4
  %195 = load i32, i32* @URTW_8225_ADDR_0_DATA_MAGIC6, align 4
  %196 = call i32 @urtw_8225_write(%struct.urtw_softc* %193, i32 %194, i32 %195)
  store i32 0, i32* %3, align 4
  br label %197

197:                                              ; preds = %212, %189
  %198 = load i32, i32* %3, align 4
  %199 = icmp ult i32 %198, 128
  br i1 %199, label %200, label %215

200:                                              ; preds = %197
  %201 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %202 = load i32*, i32** @urtw_8225_agc, align 8
  %203 = load i32, i32* %3, align 4
  %204 = zext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @urtw_8187_write_phy_ofdm(%struct.urtw_softc* %201, i32 11, i32 %206)
  %208 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %209 = load i32, i32* %3, align 4
  %210 = add nsw i32 %209, 128
  %211 = call i32 @urtw_8187_write_phy_ofdm(%struct.urtw_softc* %208, i32 10, i32 %210)
  br label %212

212:                                              ; preds = %200
  %213 = load i32, i32* %3, align 4
  %214 = add i32 %213, 1
  store i32 %214, i32* %3, align 4
  br label %197

215:                                              ; preds = %197
  store i32 0, i32* %3, align 4
  br label %216

216:                                              ; preds = %236, %215
  %217 = load i32, i32* %3, align 4
  %218 = load %struct.TYPE_5__*, %struct.TYPE_5__** @urtw_8225v2_rf_part2, align 8
  %219 = call i32 @nitems(%struct.TYPE_5__* %218)
  %220 = icmp ult i32 %217, %219
  br i1 %220, label %221, label %239

221:                                              ; preds = %216
  %222 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %223 = load %struct.TYPE_5__*, %struct.TYPE_5__** @urtw_8225v2_rf_part2, align 8
  %224 = load i32, i32* %3, align 4
  %225 = zext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.TYPE_5__*, %struct.TYPE_5__** @urtw_8225v2_rf_part2, align 8
  %230 = load i32, i32* %3, align 4
  %231 = zext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %229, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @urtw_8187_write_phy_ofdm(%struct.urtw_softc* %222, i32 %228, i32 %234)
  br label %236

236:                                              ; preds = %221
  %237 = load i32, i32* %3, align 4
  %238 = add i32 %237, 1
  store i32 %238, i32* %3, align 4
  br label %216

239:                                              ; preds = %216
  %240 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %241 = call i64 @urtw_8225v2_setgain(%struct.urtw_softc* %240, i32 4)
  store i64 %241, i64* %6, align 8
  %242 = load i64, i64* %6, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %239
  br label %294

245:                                              ; preds = %239
  store i32 0, i32* %3, align 4
  br label %246

246:                                              ; preds = %266, %245
  %247 = load i32, i32* %3, align 4
  %248 = load %struct.TYPE_5__*, %struct.TYPE_5__** @urtw_8225v2_rf_part3, align 8
  %249 = call i32 @nitems(%struct.TYPE_5__* %248)
  %250 = icmp ult i32 %247, %249
  br i1 %250, label %251, label %269

251:                                              ; preds = %246
  %252 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %253 = load %struct.TYPE_5__*, %struct.TYPE_5__** @urtw_8225v2_rf_part3, align 8
  %254 = load i32, i32* %3, align 4
  %255 = zext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %253, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = load %struct.TYPE_5__*, %struct.TYPE_5__** @urtw_8225v2_rf_part3, align 8
  %260 = load i32, i32* %3, align 4
  %261 = zext i32 %260 to i64
  %262 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %259, i64 %261
  %263 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = call i32 @urtw_8187_write_phy_cck(%struct.urtw_softc* %252, i32 %258, i32 %264)
  br label %266

266:                                              ; preds = %251
  %267 = load i32, i32* %3, align 4
  %268 = add i32 %267, 1
  store i32 %268, i32* %3, align 4
  br label %246

269:                                              ; preds = %246
  %270 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %271 = load i32, i32* @URTW_TESTR, align 4
  %272 = call i32 @urtw_write8_m(%struct.urtw_softc* %270, i32 %271, i32 13)
  %273 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %274 = call i64 @urtw_8225v2_set_txpwrlvl(%struct.urtw_softc* %273, i32 1)
  store i64 %274, i64* %6, align 8
  %275 = load i64, i64* %6, align 8
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %278

277:                                              ; preds = %269
  br label %294

278:                                              ; preds = %269
  %279 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %280 = call i32 @urtw_8187_write_phy_cck(%struct.urtw_softc* %279, i32 16, i32 155)
  %281 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %282 = call i32 @urtw_8187_write_phy_ofdm(%struct.urtw_softc* %281, i32 38, i32 144)
  %283 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %284 = call i64 @urtw_8185_tx_antenna(%struct.urtw_softc* %283, i32 3)
  store i64 %284, i64* %6, align 8
  %285 = load i64, i64* %6, align 8
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %288

287:                                              ; preds = %278
  br label %294

288:                                              ; preds = %278
  %289 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %290 = load i32, i32* @URTW_HSSI_PARA, align 4
  %291 = call i32 @urtw_write32_m(%struct.urtw_softc* %289, i32 %290, i32 1035993090)
  %292 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %293 = call i64 @urtw_8225_rf_set_chan(%struct.urtw_softc* %292, i32 1)
  store i64 %293, i64* %6, align 8
  br label %294

294:                                              ; preds = %288, %287, %277, %244, %177, %141, %53, %47, %37, %18, %12
  %295 = load i64, i64* %6, align 8
  ret i64 %295
}

declare dso_local i64 @urtw_8180_set_anaparam(%struct.urtw_softc*, i32) #1

declare dso_local i64 @urtw_8225_usb_init(%struct.urtw_softc*) #1

declare dso_local i32 @urtw_write32_m(%struct.urtw_softc*, i32, i32) #1

declare dso_local i32 @urtw_read16_m(%struct.urtw_softc*, i32, i32*) #1

declare dso_local i32 @urtw_write16_m(%struct.urtw_softc*, i32, i32) #1

declare dso_local i64 @urtw_set_mode(%struct.urtw_softc*, i32) #1

declare dso_local i32 @urtw_write8_m(%struct.urtw_softc*, i32, i32) #1

declare dso_local i64 @urtw_8185_rf_pins_enable(%struct.urtw_softc*) #1

declare dso_local i32 @usb_pause_mtx(i32*, i32) #1

declare dso_local i32 @nitems(%struct.TYPE_5__*) #1

declare dso_local i32 @urtw_8225_write(%struct.urtw_softc*, i32, i32) #1

declare dso_local i64 @urtw_8225_read(%struct.urtw_softc*, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @urtw_8187_write_phy_ofdm(%struct.urtw_softc*, i32, i32) #1

declare dso_local i64 @urtw_8225v2_setgain(%struct.urtw_softc*, i32) #1

declare dso_local i32 @urtw_8187_write_phy_cck(%struct.urtw_softc*, i32, i32) #1

declare dso_local i64 @urtw_8225v2_set_txpwrlvl(%struct.urtw_softc*, i32) #1

declare dso_local i64 @urtw_8185_tx_antenna(%struct.urtw_softc*, i32) #1

declare dso_local i64 @urtw_8225_rf_set_chan(%struct.urtw_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
