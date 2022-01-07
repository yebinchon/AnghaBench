; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_8225_rf_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_8225_rf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.urtw_softc = type { i32 }

@URTW_8225_ANAPARAM_ON = common dso_local global i32 0, align 4
@URTW_RF_TIMING = common dso_local global i32 0, align 4
@URTW_BRSR = common dso_local global i32 0, align 4
@URTW_RF_PARA = common dso_local global i32 0, align 4
@URTW_EPROM_CMD_CONFIG = common dso_local global i32 0, align 4
@URTW_CONFIG3 = common dso_local global i32 0, align 4
@URTW_EPROM_CMD_NORMAL = common dso_local global i32 0, align 4
@urtw_8225_rf_part1 = common dso_local global %struct.TYPE_5__* null, align 8
@URTW_8225_ADDR_2_MAGIC = common dso_local global i32 0, align 4
@URTW_8225_ADDR_2_DATA_MAGIC1 = common dso_local global i32 0, align 4
@URTW_8225_ADDR_2_DATA_MAGIC2 = common dso_local global i32 0, align 4
@URTW_8225_ADDR_0_MAGIC = common dso_local global i32 0, align 4
@URTW_8225_ADDR_0_DATA_MAGIC3 = common dso_local global i32 0, align 4
@URTW_8225_ADDR_1_MAGIC = common dso_local global i32 0, align 4
@urtw_8225_rxgain = common dso_local global i32* null, align 8
@URTW_8225_ADDR_0_DATA_MAGIC4 = common dso_local global i32 0, align 4
@URTW_8225_ADDR_0_DATA_MAGIC5 = common dso_local global i32 0, align 4
@urtw_8225_agc = common dso_local global i32* null, align 8
@urtw_8225_rf_part2 = common dso_local global %struct.TYPE_5__* null, align 8
@urtw_8225_rf_part3 = common dso_local global %struct.TYPE_5__* null, align 8
@URTW_TESTR = common dso_local global i32 0, align 4
@URTW_HSSI_PARA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.urtw_softc*)* @urtw_8225_rf_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @urtw_8225_rf_init(%struct.urtw_softc* %0) #0 {
  %2 = alloca %struct.urtw_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.urtw_softc* %0, %struct.urtw_softc** %2, align 8
  %6 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %7 = load i32, i32* @URTW_8225_ANAPARAM_ON, align 4
  %8 = call i64 @urtw_8180_set_anaparam(%struct.urtw_softc* %6, i32 %7)
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %249

12:                                               ; preds = %1
  %13 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %14 = call i64 @urtw_8225_usb_init(%struct.urtw_softc* %13)
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %249

18:                                               ; preds = %12
  %19 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %20 = load i32, i32* @URTW_RF_TIMING, align 4
  %21 = call i32 @urtw_write32_m(%struct.urtw_softc* %19, i32 %20, i32 688136)
  %22 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %23 = load i32, i32* @URTW_BRSR, align 4
  %24 = call i32 @urtw_read16_m(%struct.urtw_softc* %22, i32 %23, i32* %4)
  %25 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %26 = load i32, i32* @URTW_BRSR, align 4
  %27 = call i32 @urtw_write16_m(%struct.urtw_softc* %25, i32 %26, i32 65535)
  %28 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %29 = load i32, i32* @URTW_RF_PARA, align 4
  %30 = call i32 @urtw_write32_m(%struct.urtw_softc* %28, i32 %29, i32 1048644)
  %31 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %32 = load i32, i32* @URTW_EPROM_CMD_CONFIG, align 4
  %33 = call i64 @urtw_set_mode(%struct.urtw_softc* %31, i32 %32)
  store i64 %33, i64* %5, align 8
  %34 = load i64, i64* %5, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %18
  br label %249

37:                                               ; preds = %18
  %38 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %39 = load i32, i32* @URTW_CONFIG3, align 4
  %40 = call i32 @urtw_write8_m(%struct.urtw_softc* %38, i32 %39, i32 68)
  %41 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %42 = load i32, i32* @URTW_EPROM_CMD_NORMAL, align 4
  %43 = call i64 @urtw_set_mode(%struct.urtw_softc* %41, i32 %42)
  store i64 %43, i64* %5, align 8
  %44 = load i64, i64* %5, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  br label %249

47:                                               ; preds = %37
  %48 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %49 = call i64 @urtw_8185_rf_pins_enable(%struct.urtw_softc* %48)
  store i64 %49, i64* %5, align 8
  %50 = load i64, i64* %5, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %249

53:                                               ; preds = %47
  %54 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %55 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %54, i32 0, i32 0
  %56 = call i32 @usb_pause_mtx(i32* %55, i32 1000)
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %80, %53
  %58 = load i32, i32* %3, align 4
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** @urtw_8225_rf_part1, align 8
  %60 = call i32 @nitems(%struct.TYPE_5__* %59)
  %61 = icmp ult i32 %58, %60
  br i1 %61, label %62, label %83

62:                                               ; preds = %57
  %63 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** @urtw_8225_rf_part1, align 8
  %65 = load i32, i32* %3, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** @urtw_8225_rf_part1, align 8
  %71 = load i32, i32* %3, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @urtw_8225_write(%struct.urtw_softc* %63, i32 %69, i32 %75)
  %77 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %78 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %77, i32 0, i32 0
  %79 = call i32 @usb_pause_mtx(i32* %78, i32 1)
  br label %80

80:                                               ; preds = %62
  %81 = load i32, i32* %3, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %3, align 4
  br label %57

83:                                               ; preds = %57
  %84 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %85 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %84, i32 0, i32 0
  %86 = call i32 @usb_pause_mtx(i32* %85, i32 100)
  %87 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %88 = load i32, i32* @URTW_8225_ADDR_2_MAGIC, align 4
  %89 = load i32, i32* @URTW_8225_ADDR_2_DATA_MAGIC1, align 4
  %90 = call i32 @urtw_8225_write(%struct.urtw_softc* %87, i32 %88, i32 %89)
  %91 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %92 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %91, i32 0, i32 0
  %93 = call i32 @usb_pause_mtx(i32* %92, i32 200)
  %94 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %95 = load i32, i32* @URTW_8225_ADDR_2_MAGIC, align 4
  %96 = load i32, i32* @URTW_8225_ADDR_2_DATA_MAGIC2, align 4
  %97 = call i32 @urtw_8225_write(%struct.urtw_softc* %94, i32 %95, i32 %96)
  %98 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %99 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %98, i32 0, i32 0
  %100 = call i32 @usb_pause_mtx(i32* %99, i32 200)
  %101 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %102 = load i32, i32* @URTW_8225_ADDR_0_MAGIC, align 4
  %103 = load i32, i32* @URTW_8225_ADDR_0_DATA_MAGIC3, align 4
  %104 = call i32 @urtw_8225_write(%struct.urtw_softc* %101, i32 %102, i32 %103)
  store i32 0, i32* %3, align 4
  br label %105

105:                                              ; preds = %122, %83
  %106 = load i32, i32* %3, align 4
  %107 = icmp ult i32 %106, 95
  br i1 %107, label %108, label %125

108:                                              ; preds = %105
  %109 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %110 = load i32, i32* @URTW_8225_ADDR_1_MAGIC, align 4
  %111 = load i32, i32* %3, align 4
  %112 = add i32 %111, 1
  %113 = call i32 @urtw_8225_write(%struct.urtw_softc* %109, i32 %110, i32 %112)
  %114 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %115 = load i32, i32* @URTW_8225_ADDR_2_MAGIC, align 4
  %116 = load i32*, i32** @urtw_8225_rxgain, align 8
  %117 = load i32, i32* %3, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @urtw_8225_write(%struct.urtw_softc* %114, i32 %115, i32 %120)
  br label %122

122:                                              ; preds = %108
  %123 = load i32, i32* %3, align 4
  %124 = add i32 %123, 1
  store i32 %124, i32* %3, align 4
  br label %105

125:                                              ; preds = %105
  %126 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %127 = load i32, i32* @URTW_8225_ADDR_0_MAGIC, align 4
  %128 = load i32, i32* @URTW_8225_ADDR_0_DATA_MAGIC4, align 4
  %129 = call i32 @urtw_8225_write(%struct.urtw_softc* %126, i32 %127, i32 %128)
  %130 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %131 = load i32, i32* @URTW_8225_ADDR_0_MAGIC, align 4
  %132 = load i32, i32* @URTW_8225_ADDR_0_DATA_MAGIC5, align 4
  %133 = call i32 @urtw_8225_write(%struct.urtw_softc* %130, i32 %131, i32 %132)
  store i32 0, i32* %3, align 4
  br label %134

134:                                              ; preds = %155, %125
  %135 = load i32, i32* %3, align 4
  %136 = icmp ult i32 %135, 128
  br i1 %136, label %137, label %158

137:                                              ; preds = %134
  %138 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %139 = load i32*, i32** @urtw_8225_agc, align 8
  %140 = load i32, i32* %3, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @urtw_8187_write_phy_ofdm(%struct.urtw_softc* %138, i32 11, i32 %143)
  %145 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %146 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %145, i32 0, i32 0
  %147 = call i32 @usb_pause_mtx(i32* %146, i32 1)
  %148 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %149 = load i32, i32* %3, align 4
  %150 = add nsw i32 %149, 128
  %151 = call i32 @urtw_8187_write_phy_ofdm(%struct.urtw_softc* %148, i32 10, i32 %150)
  %152 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %153 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %152, i32 0, i32 0
  %154 = call i32 @usb_pause_mtx(i32* %153, i32 1)
  br label %155

155:                                              ; preds = %137
  %156 = load i32, i32* %3, align 4
  %157 = add i32 %156, 1
  store i32 %157, i32* %3, align 4
  br label %134

158:                                              ; preds = %134
  store i32 0, i32* %3, align 4
  br label %159

159:                                              ; preds = %182, %158
  %160 = load i32, i32* %3, align 4
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** @urtw_8225_rf_part2, align 8
  %162 = call i32 @nitems(%struct.TYPE_5__* %161)
  %163 = icmp ult i32 %160, %162
  br i1 %163, label %164, label %185

164:                                              ; preds = %159
  %165 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** @urtw_8225_rf_part2, align 8
  %167 = load i32, i32* %3, align 4
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** @urtw_8225_rf_part2, align 8
  %173 = load i32, i32* %3, align 4
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @urtw_8187_write_phy_ofdm(%struct.urtw_softc* %165, i32 %171, i32 %177)
  %179 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %180 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %179, i32 0, i32 0
  %181 = call i32 @usb_pause_mtx(i32* %180, i32 1)
  br label %182

182:                                              ; preds = %164
  %183 = load i32, i32* %3, align 4
  %184 = add i32 %183, 1
  store i32 %184, i32* %3, align 4
  br label %159

185:                                              ; preds = %159
  %186 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %187 = call i64 @urtw_8225_setgain(%struct.urtw_softc* %186, i32 4)
  store i64 %187, i64* %5, align 8
  %188 = load i64, i64* %5, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %185
  br label %249

191:                                              ; preds = %185
  store i32 0, i32* %3, align 4
  br label %192

192:                                              ; preds = %215, %191
  %193 = load i32, i32* %3, align 4
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** @urtw_8225_rf_part3, align 8
  %195 = call i32 @nitems(%struct.TYPE_5__* %194)
  %196 = icmp ult i32 %193, %195
  br i1 %196, label %197, label %218

197:                                              ; preds = %192
  %198 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** @urtw_8225_rf_part3, align 8
  %200 = load i32, i32* %3, align 4
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.TYPE_5__*, %struct.TYPE_5__** @urtw_8225_rf_part3, align 8
  %206 = load i32, i32* %3, align 4
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @urtw_8187_write_phy_cck(%struct.urtw_softc* %198, i32 %204, i32 %210)
  %212 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %213 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %212, i32 0, i32 0
  %214 = call i32 @usb_pause_mtx(i32* %213, i32 1)
  br label %215

215:                                              ; preds = %197
  %216 = load i32, i32* %3, align 4
  %217 = add i32 %216, 1
  store i32 %217, i32* %3, align 4
  br label %192

218:                                              ; preds = %192
  %219 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %220 = load i32, i32* @URTW_TESTR, align 4
  %221 = call i32 @urtw_write8_m(%struct.urtw_softc* %219, i32 %220, i32 13)
  %222 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %223 = call i64 @urtw_8225_set_txpwrlvl(%struct.urtw_softc* %222, i32 1)
  store i64 %223, i64* %5, align 8
  %224 = load i64, i64* %5, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %218
  br label %249

227:                                              ; preds = %218
  %228 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %229 = call i32 @urtw_8187_write_phy_cck(%struct.urtw_softc* %228, i32 16, i32 155)
  %230 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %231 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %230, i32 0, i32 0
  %232 = call i32 @usb_pause_mtx(i32* %231, i32 1)
  %233 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %234 = call i32 @urtw_8187_write_phy_ofdm(%struct.urtw_softc* %233, i32 38, i32 144)
  %235 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %236 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %235, i32 0, i32 0
  %237 = call i32 @usb_pause_mtx(i32* %236, i32 1)
  %238 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %239 = call i64 @urtw_8185_tx_antenna(%struct.urtw_softc* %238, i32 3)
  store i64 %239, i64* %5, align 8
  %240 = load i64, i64* %5, align 8
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %227
  br label %249

243:                                              ; preds = %227
  %244 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %245 = load i32, i32* @URTW_HSSI_PARA, align 4
  %246 = call i32 @urtw_write32_m(%struct.urtw_softc* %244, i32 %245, i32 1035993090)
  %247 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %248 = call i64 @urtw_8225_rf_set_chan(%struct.urtw_softc* %247, i32 1)
  store i64 %248, i64* %5, align 8
  br label %249

249:                                              ; preds = %243, %242, %226, %190, %52, %46, %36, %17, %11
  %250 = load i64, i64* %5, align 8
  ret i64 %250
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

declare dso_local i32 @urtw_8187_write_phy_ofdm(%struct.urtw_softc*, i32, i32) #1

declare dso_local i64 @urtw_8225_setgain(%struct.urtw_softc*, i32) #1

declare dso_local i32 @urtw_8187_write_phy_cck(%struct.urtw_softc*, i32, i32) #1

declare dso_local i64 @urtw_8225_set_txpwrlvl(%struct.urtw_softc*, i32) #1

declare dso_local i64 @urtw_8185_tx_antenna(%struct.urtw_softc*, i32) #1

declare dso_local i64 @urtw_8225_rf_set_chan(%struct.urtw_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
