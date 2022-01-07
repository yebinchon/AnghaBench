; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwirf.c_bwi_rf_init_bcm2050.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwirf.c_bwi_rf_init_bcm2050.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_mac = type { %struct.bwi_rf, %struct.bwi_phy, %struct.bwi_softc* }
%struct.bwi_rf = type { i32, i32, i32, i32 }
%struct.bwi_phy = type { i64, i32, i32, i32 }
%struct.bwi_softc = type { i32 }

@bwi_rf_init_bcm2050.save_rf_regs = internal constant [3 x i32] [i32 67, i32 81, i32 82], align 4
@bwi_rf_init_bcm2050.save_phy_regs_comm = internal constant [4 x i32] [i32 21, i32 90, i32 89, i32 88], align 16
@bwi_rf_init_bcm2050.save_phy_regs_11g = internal constant [6 x i32] [i32 2065, i32 2066, i32 2068, i32 2069, i32 1065, i32 2050], align 16
@IEEE80211_MODE_11B = common dso_local global i64 0, align 8
@BWI_BPHY_CTRL = common dso_local global i32 0, align 4
@BWI_PHY_F_LINKED = common dso_local global i32 0, align 4
@BWI_CARD_F_EXT_LNA = common dso_local global i32 0, align 4
@BWI_RF_ANTDIV = common dso_local global i32 0, align 4
@BWI_BBP_ATTEN = common dso_local global i32 0, align 4
@BWI_RF_CHAN_EX = common dso_local global i32 0, align 4
@BWI_DBG_RF = common dso_local global i32 0, align 4
@BWI_DBG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"RF calibration value: 0x%04x\0A\00", align 1
@BWI_RF_F_INITED = common dso_local global i32 0, align 4
@SAVE_PHY_11G_MAX = common dso_local global i32 0, align 4
@SAVE_PHY_COMM_MAX = common dso_local global i32 0, align 4
@SAVE_RF_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bwi_rf_init_bcm2050(%struct.bwi_mac* %0) #0 {
  %2 = alloca %struct.bwi_mac*, align 8
  %3 = alloca [3 x i32], align 4
  %4 = alloca [4 x i32], align 16
  %5 = alloca [6 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.bwi_softc*, align 8
  %19 = alloca %struct.bwi_phy*, align 8
  %20 = alloca %struct.bwi_rf*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.bwi_mac* %0, %struct.bwi_mac** %2, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %24 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %25 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %24, i32 0, i32 2
  %26 = load %struct.bwi_softc*, %struct.bwi_softc** %25, align 8
  store %struct.bwi_softc* %26, %struct.bwi_softc** %18, align 8
  %27 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %28 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %27, i32 0, i32 1
  store %struct.bwi_phy* %28, %struct.bwi_phy** %19, align 8
  %29 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %30 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %29, i32 0, i32 0
  store %struct.bwi_rf* %30, %struct.bwi_rf** %20, align 8
  store i32 0, i32* %21, align 4
  br label %31

31:                                               ; preds = %44, %1
  %32 = load i32, i32* %21, align 4
  %33 = icmp slt i32 %32, 3
  br i1 %33, label %34, label %47

34:                                               ; preds = %31
  %35 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %36 = load i32, i32* %21, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [3 x i32], [3 x i32]* @bwi_rf_init_bcm2050.save_rf_regs, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @RF_READ(%struct.bwi_mac* %35, i32 %39)
  %41 = load i32, i32* %21, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 %42
  store i32 %40, i32* %43, align 4
  br label %44

44:                                               ; preds = %34
  %45 = load i32, i32* %21, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %21, align 4
  br label %31

47:                                               ; preds = %31
  store i32 0, i32* %21, align 4
  br label %48

48:                                               ; preds = %61, %47
  %49 = load i32, i32* %21, align 4
  %50 = icmp slt i32 %49, 4
  br i1 %50, label %51, label %64

51:                                               ; preds = %48
  %52 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %53 = load i32, i32* %21, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [4 x i32], [4 x i32]* @bwi_rf_init_bcm2050.save_phy_regs_comm, i64 0, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @PHY_READ(%struct.bwi_mac* %52, i32 %56)
  %58 = load i32, i32* %21, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 %59
  store i32 %57, i32* %60, align 4
  br label %61

61:                                               ; preds = %51
  %62 = load i32, i32* %21, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %21, align 4
  br label %48

64:                                               ; preds = %48
  %65 = load %struct.bwi_phy*, %struct.bwi_phy** %19, align 8
  %66 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @IEEE80211_MODE_11B, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %81

70:                                               ; preds = %64
  %71 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %72 = call i32 @PHY_READ(%struct.bwi_mac* %71, i32 48)
  store i32 %72, i32* %7, align 4
  %73 = load %struct.bwi_softc*, %struct.bwi_softc** %18, align 8
  %74 = load i32, i32* @BWI_BPHY_CTRL, align 4
  %75 = call i32 @CSR_READ_2(%struct.bwi_softc* %73, i32 %74)
  store i32 %75, i32* %11, align 4
  %76 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %77 = call i32 @PHY_WRITE(%struct.bwi_mac* %76, i32 48, i32 255)
  %78 = load %struct.bwi_softc*, %struct.bwi_softc** %18, align 8
  %79 = load i32, i32* @BWI_BPHY_CTRL, align 4
  %80 = call i32 @CSR_WRITE_2(%struct.bwi_softc* %78, i32 %79, i32 16191)
  br label %160

81:                                               ; preds = %64
  %82 = load %struct.bwi_phy*, %struct.bwi_phy** %19, align 8
  %83 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @BWI_PHY_F_LINKED, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %81
  %89 = load %struct.bwi_phy*, %struct.bwi_phy** %19, align 8
  %90 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = icmp sge i32 %91, 2
  br i1 %92, label %93, label %159

93:                                               ; preds = %88, %81
  store i32 0, i32* %21, align 4
  br label %94

94:                                               ; preds = %107, %93
  %95 = load i32, i32* %21, align 4
  %96 = icmp slt i32 %95, 6
  br i1 %96, label %97, label %110

97:                                               ; preds = %94
  %98 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %99 = load i32, i32* %21, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [6 x i32], [6 x i32]* @bwi_rf_init_bcm2050.save_phy_regs_11g, i64 0, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @PHY_READ(%struct.bwi_mac* %98, i32 %102)
  %104 = load i32, i32* %21, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 %105
  store i32 %103, i32* %106, align 4
  br label %107

107:                                              ; preds = %97
  %108 = load i32, i32* %21, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %21, align 4
  br label %94

110:                                              ; preds = %94
  %111 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %112 = call i32 @PHY_SETBITS(%struct.bwi_mac* %111, i32 2068, i32 3)
  %113 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %114 = call i32 @PHY_CLRBITS(%struct.bwi_mac* %113, i32 2069, i32 3)
  %115 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %116 = call i32 @PHY_CLRBITS(%struct.bwi_mac* %115, i32 1065, i32 32768)
  %117 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %118 = call i32 @PHY_CLRBITS(%struct.bwi_mac* %117, i32 2050, i32 3)
  %119 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %120 = call i32 @PHY_READ(%struct.bwi_mac* %119, i32 2063)
  store i32 %120, i32* %9, align 4
  %121 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %122 = call i32 @PHY_READ(%struct.bwi_mac* %121, i32 2064)
  store i32 %122, i32* %10, align 4
  %123 = load %struct.bwi_phy*, %struct.bwi_phy** %19, align 8
  %124 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = icmp sge i32 %125, 3
  br i1 %126, label %127, label %130

127:                                              ; preds = %110
  %128 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %129 = call i32 @PHY_WRITE(%struct.bwi_mac* %128, i32 2063, i32 49184)
  br label %133

130:                                              ; preds = %110
  %131 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %132 = call i32 @PHY_WRITE(%struct.bwi_mac* %131, i32 2063, i32 32800)
  br label %133

133:                                              ; preds = %130, %127
  %134 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %135 = call i32 @PHY_WRITE(%struct.bwi_mac* %134, i32 2064, i32 0)
  %136 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %137 = call i32 @bwi_phy812_value(%struct.bwi_mac* %136, i32 17)
  store i32 %137, i32* %14, align 4
  %138 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %139 = load i32, i32* %14, align 4
  %140 = call i32 @PHY_WRITE(%struct.bwi_mac* %138, i32 2066, i32 %139)
  %141 = load %struct.bwi_phy*, %struct.bwi_phy** %19, align 8
  %142 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = icmp slt i32 %143, 7
  br i1 %144, label %152, label %145

145:                                              ; preds = %133
  %146 = load %struct.bwi_softc*, %struct.bwi_softc** %18, align 8
  %147 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @BWI_CARD_F_EXT_LNA, align 4
  %150 = and i32 %148, %149
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %145, %133
  %153 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %154 = call i32 @PHY_WRITE(%struct.bwi_mac* %153, i32 2065, i32 435)
  br label %158

155:                                              ; preds = %145
  %156 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %157 = call i32 @PHY_WRITE(%struct.bwi_mac* %156, i32 2065, i32 2483)
  br label %158

158:                                              ; preds = %155, %152
  br label %159

159:                                              ; preds = %158, %88
  br label %160

160:                                              ; preds = %159, %70
  %161 = load %struct.bwi_softc*, %struct.bwi_softc** %18, align 8
  %162 = load i32, i32* @BWI_RF_ANTDIV, align 4
  %163 = call i32 @CSR_SETBITS_2(%struct.bwi_softc* %161, i32 %162, i32 32768)
  %164 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %165 = call i32 @PHY_READ(%struct.bwi_mac* %164, i32 53)
  store i32 %165, i32* %6, align 4
  %166 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %167 = call i32 @PHY_CLRBITS(%struct.bwi_mac* %166, i32 53, i32 128)
  %168 = load %struct.bwi_softc*, %struct.bwi_softc** %18, align 8
  %169 = load i32, i32* @BWI_BBP_ATTEN, align 4
  %170 = call i32 @CSR_READ_2(%struct.bwi_softc* %168, i32 %169)
  store i32 %170, i32* %12, align 4
  %171 = load %struct.bwi_softc*, %struct.bwi_softc** %18, align 8
  %172 = load i32, i32* @BWI_RF_CHAN_EX, align 4
  %173 = call i32 @CSR_READ_2(%struct.bwi_softc* %171, i32 %172)
  store i32 %173, i32* %13, align 4
  %174 = load %struct.bwi_phy*, %struct.bwi_phy** %19, align 8
  %175 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 8
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %160
  %179 = load %struct.bwi_softc*, %struct.bwi_softc** %18, align 8
  %180 = load i32, i32* @BWI_BBP_ATTEN, align 4
  %181 = call i32 @CSR_WRITE_2(%struct.bwi_softc* %179, i32 %180, i32 290)
  br label %194

182:                                              ; preds = %160
  %183 = load %struct.bwi_phy*, %struct.bwi_phy** %19, align 8
  %184 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 8
  %186 = icmp sge i32 %185, 2
  br i1 %186, label %187, label %190

187:                                              ; preds = %182
  %188 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %189 = call i32 @PHY_FILT_SETBITS(%struct.bwi_mac* %188, i32 3, i32 65471, i32 64)
  br label %190

190:                                              ; preds = %187, %182
  %191 = load %struct.bwi_softc*, %struct.bwi_softc** %18, align 8
  %192 = load i32, i32* @BWI_RF_CHAN_EX, align 4
  %193 = call i32 @CSR_SETBITS_2(%struct.bwi_softc* %191, i32 %192, i32 8192)
  br label %194

194:                                              ; preds = %190, %178
  %195 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %196 = call i32 @bwi_rf_calibval(%struct.bwi_mac* %195)
  store i32 %196, i32* %15, align 4
  %197 = load %struct.bwi_phy*, %struct.bwi_phy** %19, align 8
  %198 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @IEEE80211_MODE_11B, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %202, label %205

202:                                              ; preds = %194
  %203 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %204 = call i32 @RF_WRITE(%struct.bwi_mac* %203, i32 120, i32 38)
  br label %205

205:                                              ; preds = %202, %194
  %206 = load %struct.bwi_phy*, %struct.bwi_phy** %19, align 8
  %207 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* @BWI_PHY_F_LINKED, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %217, label %212

212:                                              ; preds = %205
  %213 = load %struct.bwi_phy*, %struct.bwi_phy** %19, align 8
  %214 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 4
  %216 = icmp sge i32 %215, 2
  br i1 %216, label %217, label %223

217:                                              ; preds = %212, %205
  %218 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %219 = call i32 @bwi_phy812_value(%struct.bwi_mac* %218, i32 17)
  store i32 %219, i32* %14, align 4
  %220 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %221 = load i32, i32* %14, align 4
  %222 = call i32 @PHY_WRITE(%struct.bwi_mac* %220, i32 2066, i32 %221)
  br label %223

223:                                              ; preds = %217, %212
  %224 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %225 = call i32 @PHY_WRITE(%struct.bwi_mac* %224, i32 21, i32 49071)
  %226 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %227 = call i32 @PHY_WRITE(%struct.bwi_mac* %226, i32 43, i32 5123)
  %228 = load %struct.bwi_phy*, %struct.bwi_phy** %19, align 8
  %229 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* @BWI_PHY_F_LINKED, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %239, label %234

234:                                              ; preds = %223
  %235 = load %struct.bwi_phy*, %struct.bwi_phy** %19, align 8
  %236 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 4
  %238 = icmp sge i32 %237, 2
  br i1 %238, label %239, label %245

239:                                              ; preds = %234, %223
  %240 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %241 = call i32 @bwi_phy812_value(%struct.bwi_mac* %240, i32 1)
  store i32 %241, i32* %14, align 4
  %242 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %243 = load i32, i32* %14, align 4
  %244 = call i32 @PHY_WRITE(%struct.bwi_mac* %242, i32 2066, i32 %243)
  br label %245

245:                                              ; preds = %239, %234
  %246 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %247 = call i32 @PHY_WRITE(%struct.bwi_mac* %246, i32 21, i32 49056)
  %248 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %249 = call i32 @RF_SETBITS(%struct.bwi_mac* %248, i32 81, i32 4)
  %250 = load %struct.bwi_rf*, %struct.bwi_rf** %20, align 8
  %251 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = icmp eq i32 %252, 8
  br i1 %253, label %254, label %257

254:                                              ; preds = %245
  %255 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %256 = call i32 @RF_WRITE(%struct.bwi_mac* %255, i32 67, i32 31)
  br label %262

257:                                              ; preds = %245
  %258 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %259 = call i32 @RF_WRITE(%struct.bwi_mac* %258, i32 82, i32 0)
  %260 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %261 = call i32 @RF_FILT_SETBITS(%struct.bwi_mac* %260, i32 67, i32 65520, i32 9)
  br label %262

262:                                              ; preds = %257, %254
  store i32 0, i32* %16, align 4
  %263 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %264 = call i32 @PHY_WRITE(%struct.bwi_mac* %263, i32 88, i32 0)
  store i32 0, i32* %21, align 4
  br label %265

265:                                              ; preds = %364, %262
  %266 = load i32, i32* %21, align 4
  %267 = icmp slt i32 %266, 16
  br i1 %267, label %268, label %367

268:                                              ; preds = %265
  %269 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %270 = call i32 @PHY_WRITE(%struct.bwi_mac* %269, i32 90, i32 1152)
  %271 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %272 = call i32 @PHY_WRITE(%struct.bwi_mac* %271, i32 89, i32 51216)
  %273 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %274 = call i32 @PHY_WRITE(%struct.bwi_mac* %273, i32 88, i32 13)
  %275 = load %struct.bwi_phy*, %struct.bwi_phy** %19, align 8
  %276 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 8
  %278 = load i32, i32* @BWI_PHY_F_LINKED, align 4
  %279 = and i32 %277, %278
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %286, label %281

281:                                              ; preds = %268
  %282 = load %struct.bwi_phy*, %struct.bwi_phy** %19, align 8
  %283 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %282, i32 0, i32 2
  %284 = load i32, i32* %283, align 4
  %285 = icmp sge i32 %284, 2
  br i1 %285, label %286, label %292

286:                                              ; preds = %281, %268
  %287 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %288 = call i32 @bwi_phy812_value(%struct.bwi_mac* %287, i32 257)
  store i32 %288, i32* %14, align 4
  %289 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %290 = load i32, i32* %14, align 4
  %291 = call i32 @PHY_WRITE(%struct.bwi_mac* %289, i32 2066, i32 %290)
  br label %292

292:                                              ; preds = %286, %281
  %293 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %294 = call i32 @PHY_WRITE(%struct.bwi_mac* %293, i32 21, i32 44976)
  %295 = call i32 @DELAY(i32 10)
  %296 = load %struct.bwi_phy*, %struct.bwi_phy** %19, align 8
  %297 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 8
  %299 = load i32, i32* @BWI_PHY_F_LINKED, align 4
  %300 = and i32 %298, %299
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %307, label %302

302:                                              ; preds = %292
  %303 = load %struct.bwi_phy*, %struct.bwi_phy** %19, align 8
  %304 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %303, i32 0, i32 2
  %305 = load i32, i32* %304, align 4
  %306 = icmp sge i32 %305, 2
  br i1 %306, label %307, label %313

307:                                              ; preds = %302, %292
  %308 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %309 = call i32 @bwi_phy812_value(%struct.bwi_mac* %308, i32 257)
  store i32 %309, i32* %14, align 4
  %310 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %311 = load i32, i32* %14, align 4
  %312 = call i32 @PHY_WRITE(%struct.bwi_mac* %310, i32 2066, i32 %311)
  br label %313

313:                                              ; preds = %307, %302
  %314 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %315 = call i32 @PHY_WRITE(%struct.bwi_mac* %314, i32 21, i32 61360)
  %316 = call i32 @DELAY(i32 10)
  %317 = load %struct.bwi_phy*, %struct.bwi_phy** %19, align 8
  %318 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 8
  %320 = load i32, i32* @BWI_PHY_F_LINKED, align 4
  %321 = and i32 %319, %320
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %328, label %323

323:                                              ; preds = %313
  %324 = load %struct.bwi_phy*, %struct.bwi_phy** %19, align 8
  %325 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %324, i32 0, i32 2
  %326 = load i32, i32* %325, align 4
  %327 = icmp sge i32 %326, 2
  br i1 %327, label %328, label %334

328:                                              ; preds = %323, %313
  %329 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %330 = call i32 @bwi_phy812_value(%struct.bwi_mac* %329, i32 256)
  store i32 %330, i32* %14, align 4
  %331 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %332 = load i32, i32* %14, align 4
  %333 = call i32 @PHY_WRITE(%struct.bwi_mac* %331, i32 2066, i32 %332)
  br label %334

334:                                              ; preds = %328, %323
  %335 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %336 = call i32 @PHY_WRITE(%struct.bwi_mac* %335, i32 21, i32 65520)
  %337 = call i32 @DELAY(i32 20)
  %338 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %339 = call i32 @PHY_READ(%struct.bwi_mac* %338, i32 45)
  %340 = load i32, i32* %16, align 4
  %341 = add nsw i32 %340, %339
  store i32 %341, i32* %16, align 4
  %342 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %343 = call i32 @PHY_WRITE(%struct.bwi_mac* %342, i32 88, i32 0)
  %344 = load %struct.bwi_phy*, %struct.bwi_phy** %19, align 8
  %345 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %344, i32 0, i32 1
  %346 = load i32, i32* %345, align 8
  %347 = load i32, i32* @BWI_PHY_F_LINKED, align 4
  %348 = and i32 %346, %347
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %355, label %350

350:                                              ; preds = %334
  %351 = load %struct.bwi_phy*, %struct.bwi_phy** %19, align 8
  %352 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %351, i32 0, i32 2
  %353 = load i32, i32* %352, align 4
  %354 = icmp sge i32 %353, 2
  br i1 %354, label %355, label %361

355:                                              ; preds = %350, %334
  %356 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %357 = call i32 @bwi_phy812_value(%struct.bwi_mac* %356, i32 257)
  store i32 %357, i32* %14, align 4
  %358 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %359 = load i32, i32* %14, align 4
  %360 = call i32 @PHY_WRITE(%struct.bwi_mac* %358, i32 2066, i32 %359)
  br label %361

361:                                              ; preds = %355, %350
  %362 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %363 = call i32 @PHY_WRITE(%struct.bwi_mac* %362, i32 21, i32 44976)
  br label %364

364:                                              ; preds = %361
  %365 = load i32, i32* %21, align 4
  %366 = add nsw i32 %365, 1
  store i32 %366, i32* %21, align 4
  br label %265

367:                                              ; preds = %265
  %368 = load i32, i32* %16, align 4
  %369 = add nsw i32 %368, 1
  store i32 %369, i32* %16, align 4
  %370 = load i32, i32* %16, align 4
  %371 = ashr i32 %370, 9
  store i32 %371, i32* %16, align 4
  %372 = call i32 @DELAY(i32 10)
  store i32 0, i32* %17, align 4
  %373 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %374 = call i32 @PHY_WRITE(%struct.bwi_mac* %373, i32 88, i32 0)
  store i32 0, i32* %21, align 4
  br label %375

375:                                              ; preds = %499, %367
  %376 = load i32, i32* %21, align 4
  %377 = icmp slt i32 %376, 16
  br i1 %377, label %378, label %502

378:                                              ; preds = %375
  %379 = load i32, i32* %21, align 4
  %380 = call i32 @bitswap4(i32 %379)
  %381 = shl i32 %380, 1
  %382 = or i32 %381, 32
  store i32 %382, i32* %8, align 4
  %383 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %384 = load i32, i32* %8, align 4
  %385 = call i32 @RF_WRITE(%struct.bwi_mac* %383, i32 120, i32 %384)
  %386 = call i32 @DELAY(i32 10)
  store i32 0, i32* %22, align 4
  br label %387

387:                                              ; preds = %486, %378
  %388 = load i32, i32* %22, align 4
  %389 = icmp slt i32 %388, 16
  br i1 %389, label %390, label %489

390:                                              ; preds = %387
  %391 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %392 = call i32 @PHY_WRITE(%struct.bwi_mac* %391, i32 90, i32 3456)
  %393 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %394 = call i32 @PHY_WRITE(%struct.bwi_mac* %393, i32 89, i32 51216)
  %395 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %396 = call i32 @PHY_WRITE(%struct.bwi_mac* %395, i32 88, i32 13)
  %397 = load %struct.bwi_phy*, %struct.bwi_phy** %19, align 8
  %398 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %397, i32 0, i32 1
  %399 = load i32, i32* %398, align 8
  %400 = load i32, i32* @BWI_PHY_F_LINKED, align 4
  %401 = and i32 %399, %400
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %408, label %403

403:                                              ; preds = %390
  %404 = load %struct.bwi_phy*, %struct.bwi_phy** %19, align 8
  %405 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %404, i32 0, i32 2
  %406 = load i32, i32* %405, align 4
  %407 = icmp sge i32 %406, 2
  br i1 %407, label %408, label %414

408:                                              ; preds = %403, %390
  %409 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %410 = call i32 @bwi_phy812_value(%struct.bwi_mac* %409, i32 257)
  store i32 %410, i32* %14, align 4
  %411 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %412 = load i32, i32* %14, align 4
  %413 = call i32 @PHY_WRITE(%struct.bwi_mac* %411, i32 2066, i32 %412)
  br label %414

414:                                              ; preds = %408, %403
  %415 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %416 = call i32 @PHY_WRITE(%struct.bwi_mac* %415, i32 21, i32 44976)
  %417 = call i32 @DELAY(i32 10)
  %418 = load %struct.bwi_phy*, %struct.bwi_phy** %19, align 8
  %419 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %418, i32 0, i32 1
  %420 = load i32, i32* %419, align 8
  %421 = load i32, i32* @BWI_PHY_F_LINKED, align 4
  %422 = and i32 %420, %421
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %429, label %424

424:                                              ; preds = %414
  %425 = load %struct.bwi_phy*, %struct.bwi_phy** %19, align 8
  %426 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %425, i32 0, i32 2
  %427 = load i32, i32* %426, align 4
  %428 = icmp sge i32 %427, 2
  br i1 %428, label %429, label %435

429:                                              ; preds = %424, %414
  %430 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %431 = call i32 @bwi_phy812_value(%struct.bwi_mac* %430, i32 257)
  store i32 %431, i32* %14, align 4
  %432 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %433 = load i32, i32* %14, align 4
  %434 = call i32 @PHY_WRITE(%struct.bwi_mac* %432, i32 2066, i32 %433)
  br label %435

435:                                              ; preds = %429, %424
  %436 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %437 = call i32 @PHY_WRITE(%struct.bwi_mac* %436, i32 21, i32 61360)
  %438 = call i32 @DELAY(i32 10)
  %439 = load %struct.bwi_phy*, %struct.bwi_phy** %19, align 8
  %440 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %439, i32 0, i32 1
  %441 = load i32, i32* %440, align 8
  %442 = load i32, i32* @BWI_PHY_F_LINKED, align 4
  %443 = and i32 %441, %442
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %450, label %445

445:                                              ; preds = %435
  %446 = load %struct.bwi_phy*, %struct.bwi_phy** %19, align 8
  %447 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %446, i32 0, i32 2
  %448 = load i32, i32* %447, align 4
  %449 = icmp sge i32 %448, 2
  br i1 %449, label %450, label %456

450:                                              ; preds = %445, %435
  %451 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %452 = call i32 @bwi_phy812_value(%struct.bwi_mac* %451, i32 256)
  store i32 %452, i32* %14, align 4
  %453 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %454 = load i32, i32* %14, align 4
  %455 = call i32 @PHY_WRITE(%struct.bwi_mac* %453, i32 2066, i32 %454)
  br label %456

456:                                              ; preds = %450, %445
  %457 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %458 = call i32 @PHY_WRITE(%struct.bwi_mac* %457, i32 21, i32 65520)
  %459 = call i32 @DELAY(i32 10)
  %460 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %461 = call i32 @PHY_READ(%struct.bwi_mac* %460, i32 45)
  %462 = load i32, i32* %17, align 4
  %463 = add nsw i32 %462, %461
  store i32 %463, i32* %17, align 4
  %464 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %465 = call i32 @PHY_WRITE(%struct.bwi_mac* %464, i32 88, i32 0)
  %466 = load %struct.bwi_phy*, %struct.bwi_phy** %19, align 8
  %467 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %466, i32 0, i32 1
  %468 = load i32, i32* %467, align 8
  %469 = load i32, i32* @BWI_PHY_F_LINKED, align 4
  %470 = and i32 %468, %469
  %471 = icmp ne i32 %470, 0
  br i1 %471, label %477, label %472

472:                                              ; preds = %456
  %473 = load %struct.bwi_phy*, %struct.bwi_phy** %19, align 8
  %474 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %473, i32 0, i32 2
  %475 = load i32, i32* %474, align 4
  %476 = icmp sge i32 %475, 2
  br i1 %476, label %477, label %483

477:                                              ; preds = %472, %456
  %478 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %479 = call i32 @bwi_phy812_value(%struct.bwi_mac* %478, i32 257)
  store i32 %479, i32* %14, align 4
  %480 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %481 = load i32, i32* %14, align 4
  %482 = call i32 @PHY_WRITE(%struct.bwi_mac* %480, i32 2066, i32 %481)
  br label %483

483:                                              ; preds = %477, %472
  %484 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %485 = call i32 @PHY_WRITE(%struct.bwi_mac* %484, i32 21, i32 44976)
  br label %486

486:                                              ; preds = %483
  %487 = load i32, i32* %22, align 4
  %488 = add nsw i32 %487, 1
  store i32 %488, i32* %22, align 4
  br label %387

489:                                              ; preds = %387
  %490 = load i32, i32* %17, align 4
  %491 = add nsw i32 %490, 1
  store i32 %491, i32* %17, align 4
  %492 = load i32, i32* %17, align 4
  %493 = ashr i32 %492, 8
  store i32 %493, i32* %17, align 4
  %494 = load i32, i32* %17, align 4
  %495 = load i32, i32* %16, align 4
  %496 = icmp sgt i32 %494, %495
  br i1 %496, label %497, label %498

497:                                              ; preds = %489
  br label %502

498:                                              ; preds = %489
  br label %499

499:                                              ; preds = %498
  %500 = load i32, i32* %21, align 4
  %501 = add nsw i32 %500, 1
  store i32 %501, i32* %21, align 4
  br label %375

502:                                              ; preds = %497, %375
  %503 = load i32, i32* %21, align 4
  %504 = icmp sgt i32 %503, 15
  br i1 %504, label %505, label %509

505:                                              ; preds = %502
  %506 = load i32, i32* %8, align 4
  %507 = load %struct.bwi_rf*, %struct.bwi_rf** %20, align 8
  %508 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %507, i32 0, i32 1
  store i32 %506, i32* %508, align 4
  br label %513

509:                                              ; preds = %502
  %510 = load i32, i32* %15, align 4
  %511 = load %struct.bwi_rf*, %struct.bwi_rf** %20, align 8
  %512 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %511, i32 0, i32 1
  store i32 %510, i32* %512, align 4
  br label %513

513:                                              ; preds = %509, %505
  %514 = load %struct.bwi_rf*, %struct.bwi_rf** %20, align 8
  %515 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %514, i32 0, i32 1
  %516 = load i32, i32* %515, align 4
  %517 = icmp ne i32 %516, 65535
  br i1 %517, label %518, label %532

518:                                              ; preds = %513
  %519 = load %struct.bwi_softc*, %struct.bwi_softc** %18, align 8
  %520 = load i32, i32* @BWI_DBG_RF, align 4
  %521 = load i32, i32* @BWI_DBG_INIT, align 4
  %522 = or i32 %520, %521
  %523 = load %struct.bwi_rf*, %struct.bwi_rf** %20, align 8
  %524 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %523, i32 0, i32 1
  %525 = load i32, i32* %524, align 4
  %526 = call i32 @DPRINTF(%struct.bwi_softc* %519, i32 %522, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %525)
  %527 = load i32, i32* @BWI_RF_F_INITED, align 4
  %528 = load %struct.bwi_rf*, %struct.bwi_rf** %20, align 8
  %529 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %528, i32 0, i32 3
  %530 = load i32, i32* %529, align 4
  %531 = or i32 %530, %527
  store i32 %531, i32* %529, align 4
  br label %532

532:                                              ; preds = %518, %513
  %533 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %534 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @bwi_rf_init_bcm2050.save_phy_regs_comm, i64 0, i64 0), align 16
  %535 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %536 = load i32, i32* %535, align 16
  %537 = call i32 @PHY_WRITE(%struct.bwi_mac* %533, i32 %534, i32 %536)
  store i32 0, i32* %21, align 4
  br label %538

538:                                              ; preds = %555, %532
  %539 = load i32, i32* %21, align 4
  %540 = icmp slt i32 %539, 3
  br i1 %540, label %541, label %558

541:                                              ; preds = %538
  %542 = load i32, i32* %21, align 4
  %543 = add nsw i32 %542, 1
  %544 = srem i32 %543, 3
  store i32 %544, i32* %23, align 4
  %545 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %546 = load i32, i32* %23, align 4
  %547 = sext i32 %546 to i64
  %548 = getelementptr inbounds [3 x i32], [3 x i32]* @bwi_rf_init_bcm2050.save_rf_regs, i64 0, i64 %547
  %549 = load i32, i32* %548, align 4
  %550 = load i32, i32* %23, align 4
  %551 = sext i32 %550 to i64
  %552 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 %551
  %553 = load i32, i32* %552, align 4
  %554 = call i32 @RF_WRITE(%struct.bwi_mac* %545, i32 %549, i32 %553)
  br label %555

555:                                              ; preds = %541
  %556 = load i32, i32* %21, align 4
  %557 = add nsw i32 %556, 1
  store i32 %557, i32* %21, align 4
  br label %538

558:                                              ; preds = %538
  store i32 1, i32* %21, align 4
  br label %559

559:                                              ; preds = %573, %558
  %560 = load i32, i32* %21, align 4
  %561 = icmp slt i32 %560, 4
  br i1 %561, label %562, label %576

562:                                              ; preds = %559
  %563 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %564 = load i32, i32* %21, align 4
  %565 = sext i32 %564 to i64
  %566 = getelementptr inbounds [4 x i32], [4 x i32]* @bwi_rf_init_bcm2050.save_phy_regs_comm, i64 0, i64 %565
  %567 = load i32, i32* %566, align 4
  %568 = load i32, i32* %21, align 4
  %569 = sext i32 %568 to i64
  %570 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 %569
  %571 = load i32, i32* %570, align 4
  %572 = call i32 @PHY_WRITE(%struct.bwi_mac* %563, i32 %567, i32 %571)
  br label %573

573:                                              ; preds = %562
  %574 = load i32, i32* %21, align 4
  %575 = add nsw i32 %574, 1
  store i32 %575, i32* %21, align 4
  br label %559

576:                                              ; preds = %559
  %577 = load %struct.bwi_softc*, %struct.bwi_softc** %18, align 8
  %578 = load i32, i32* @BWI_BBP_ATTEN, align 4
  %579 = load i32, i32* %12, align 4
  %580 = call i32 @CSR_WRITE_2(%struct.bwi_softc* %577, i32 %578, i32 %579)
  %581 = load %struct.bwi_phy*, %struct.bwi_phy** %19, align 8
  %582 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %581, i32 0, i32 3
  %583 = load i32, i32* %582, align 8
  %584 = icmp ne i32 %583, 0
  br i1 %584, label %585, label %590

585:                                              ; preds = %576
  %586 = load %struct.bwi_softc*, %struct.bwi_softc** %18, align 8
  %587 = load i32, i32* @BWI_RF_CHAN_EX, align 4
  %588 = load i32, i32* %13, align 4
  %589 = call i32 @CSR_WRITE_2(%struct.bwi_softc* %586, i32 %587, i32 %588)
  br label %590

590:                                              ; preds = %585, %576
  %591 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %592 = load i32, i32* %6, align 4
  %593 = call i32 @PHY_WRITE(%struct.bwi_mac* %591, i32 53, i32 %592)
  %594 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %595 = load %struct.bwi_rf*, %struct.bwi_rf** %20, align 8
  %596 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %595, i32 0, i32 2
  %597 = load i32, i32* %596, align 4
  %598 = call i32 @bwi_rf_work_around(%struct.bwi_mac* %594, i32 %597)
  %599 = load %struct.bwi_phy*, %struct.bwi_phy** %19, align 8
  %600 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %599, i32 0, i32 0
  %601 = load i64, i64* %600, align 8
  %602 = load i64, i64* @IEEE80211_MODE_11B, align 8
  %603 = icmp eq i64 %601, %602
  br i1 %603, label %604, label %612

604:                                              ; preds = %590
  %605 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %606 = load i32, i32* %7, align 4
  %607 = call i32 @PHY_WRITE(%struct.bwi_mac* %605, i32 48, i32 %606)
  %608 = load %struct.bwi_softc*, %struct.bwi_softc** %18, align 8
  %609 = load i32, i32* @BWI_BPHY_CTRL, align 4
  %610 = load i32, i32* %11, align 4
  %611 = call i32 @CSR_WRITE_2(%struct.bwi_softc* %608, i32 %609, i32 %610)
  br label %653

612:                                              ; preds = %590
  %613 = load %struct.bwi_phy*, %struct.bwi_phy** %19, align 8
  %614 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %613, i32 0, i32 1
  %615 = load i32, i32* %614, align 8
  %616 = load i32, i32* @BWI_PHY_F_LINKED, align 4
  %617 = and i32 %615, %616
  %618 = icmp ne i32 %617, 0
  br i1 %618, label %624, label %619

619:                                              ; preds = %612
  %620 = load %struct.bwi_phy*, %struct.bwi_phy** %19, align 8
  %621 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %620, i32 0, i32 2
  %622 = load i32, i32* %621, align 4
  %623 = icmp sge i32 %622, 2
  br i1 %623, label %624, label %652

624:                                              ; preds = %619, %612
  %625 = load %struct.bwi_softc*, %struct.bwi_softc** %18, align 8
  %626 = load i32, i32* @BWI_RF_ANTDIV, align 4
  %627 = call i32 @CSR_CLRBITS_2(%struct.bwi_softc* %625, i32 %626, i32 32768)
  store i32 0, i32* %21, align 4
  br label %628

628:                                              ; preds = %642, %624
  %629 = load i32, i32* %21, align 4
  %630 = icmp slt i32 %629, 6
  br i1 %630, label %631, label %645

631:                                              ; preds = %628
  %632 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %633 = load i32, i32* %21, align 4
  %634 = sext i32 %633 to i64
  %635 = getelementptr inbounds [6 x i32], [6 x i32]* @bwi_rf_init_bcm2050.save_phy_regs_11g, i64 0, i64 %634
  %636 = load i32, i32* %635, align 4
  %637 = load i32, i32* %21, align 4
  %638 = sext i32 %637 to i64
  %639 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 %638
  %640 = load i32, i32* %639, align 4
  %641 = call i32 @PHY_WRITE(%struct.bwi_mac* %632, i32 %636, i32 %640)
  br label %642

642:                                              ; preds = %631
  %643 = load i32, i32* %21, align 4
  %644 = add nsw i32 %643, 1
  store i32 %644, i32* %21, align 4
  br label %628

645:                                              ; preds = %628
  %646 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %647 = load i32, i32* %9, align 4
  %648 = call i32 @PHY_WRITE(%struct.bwi_mac* %646, i32 2063, i32 %647)
  %649 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %650 = load i32, i32* %10, align 4
  %651 = call i32 @PHY_WRITE(%struct.bwi_mac* %649, i32 2064, i32 %650)
  br label %652

652:                                              ; preds = %645, %619
  br label %653

653:                                              ; preds = %652, %604
  ret void
}

declare dso_local i32 @RF_READ(%struct.bwi_mac*, i32) #1

declare dso_local i32 @PHY_READ(%struct.bwi_mac*, i32) #1

declare dso_local i32 @CSR_READ_2(%struct.bwi_softc*, i32) #1

declare dso_local i32 @PHY_WRITE(%struct.bwi_mac*, i32, i32) #1

declare dso_local i32 @CSR_WRITE_2(%struct.bwi_softc*, i32, i32) #1

declare dso_local i32 @PHY_SETBITS(%struct.bwi_mac*, i32, i32) #1

declare dso_local i32 @PHY_CLRBITS(%struct.bwi_mac*, i32, i32) #1

declare dso_local i32 @bwi_phy812_value(%struct.bwi_mac*, i32) #1

declare dso_local i32 @CSR_SETBITS_2(%struct.bwi_softc*, i32, i32) #1

declare dso_local i32 @PHY_FILT_SETBITS(%struct.bwi_mac*, i32, i32, i32) #1

declare dso_local i32 @bwi_rf_calibval(%struct.bwi_mac*) #1

declare dso_local i32 @RF_WRITE(%struct.bwi_mac*, i32, i32) #1

declare dso_local i32 @RF_SETBITS(%struct.bwi_mac*, i32, i32) #1

declare dso_local i32 @RF_FILT_SETBITS(%struct.bwi_mac*, i32, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @bitswap4(i32) #1

declare dso_local i32 @DPRINTF(%struct.bwi_softc*, i32, i8*, i32) #1

declare dso_local i32 @bwi_rf_work_around(%struct.bwi_mac*, i32) #1

declare dso_local i32 @CSR_CLRBITS_2(%struct.bwi_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
