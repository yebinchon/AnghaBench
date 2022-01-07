; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwirf.c_bwi_rf_calc_nrssi_slope_11b.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwirf.c_bwi_rf_calc_nrssi_slope_11b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_mac = type { %struct.bwi_phy, %struct.bwi_rf, %struct.bwi_softc* }
%struct.bwi_phy = type { i32, i32 }
%struct.bwi_rf = type { i32, i32*, i32 }
%struct.bwi_softc = type { i32 }

@bwi_rf_calc_nrssi_slope_11b.save_rf_regs = internal constant [3 x i32] [i32 122, i32 82, i32 67], align 4
@bwi_rf_calc_nrssi_slope_11b.save_phy_regs = internal constant [8 x i32] [i32 48, i32 38, i32 21, i32 42, i32 32, i32 90, i32 89, i32 88], align 16
@BWI_RF_ANTDIV = common dso_local global i32 0, align 4
@BWI_BBP_ATTEN = common dso_local global i32 0, align 4
@BWI_RF_CHAN_EX = common dso_local global i32 0, align 4
@BWI_BPHY_CTRL = common dso_local global i32 0, align 4
@SAVE_PHY_MAX = common dso_local global i32 0, align 4
@SAVE_RF_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwi_mac*)* @bwi_rf_calc_nrssi_slope_11b to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwi_rf_calc_nrssi_slope_11b(%struct.bwi_mac* %0) #0 {
  %2 = alloca %struct.bwi_mac*, align 8
  %3 = alloca %struct.bwi_softc*, align 8
  %4 = alloca %struct.bwi_rf*, align 8
  %5 = alloca %struct.bwi_phy*, align 8
  %6 = alloca [3 x i32], align 4
  %7 = alloca [8 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [2 x i32], align 4
  %12 = alloca i32, align 4
  store %struct.bwi_mac* %0, %struct.bwi_mac** %2, align 8
  %13 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %14 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %13, i32 0, i32 2
  %15 = load %struct.bwi_softc*, %struct.bwi_softc** %14, align 8
  store %struct.bwi_softc* %15, %struct.bwi_softc** %3, align 8
  %16 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %17 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %16, i32 0, i32 1
  store %struct.bwi_rf* %17, %struct.bwi_rf** %4, align 8
  %18 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %19 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %18, i32 0, i32 0
  store %struct.bwi_phy* %19, %struct.bwi_phy** %5, align 8
  store i32 0, i32* %12, align 4
  br label %20

20:                                               ; preds = %33, %1
  %21 = load i32, i32* %12, align 4
  %22 = icmp slt i32 %21, 3
  br i1 %22, label %23, label %36

23:                                               ; preds = %20
  %24 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %25 = load i32, i32* %12, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [3 x i32], [3 x i32]* @bwi_rf_calc_nrssi_slope_11b.save_rf_regs, i64 0, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @RF_READ(%struct.bwi_mac* %24, i32 %28)
  %30 = load i32, i32* %12, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 %31
  store i32 %29, i32* %32, align 4
  br label %33

33:                                               ; preds = %23
  %34 = load i32, i32* %12, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %12, align 4
  br label %20

36:                                               ; preds = %20
  store i32 0, i32* %12, align 4
  br label %37

37:                                               ; preds = %50, %36
  %38 = load i32, i32* %12, align 4
  %39 = icmp slt i32 %38, 8
  br i1 %39, label %40, label %53

40:                                               ; preds = %37
  %41 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [8 x i32], [8 x i32]* @bwi_rf_calc_nrssi_slope_11b.save_phy_regs, i64 0, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @PHY_READ(%struct.bwi_mac* %41, i32 %45)
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 %48
  store i32 %46, i32* %49, align 4
  br label %50

50:                                               ; preds = %40
  %51 = load i32, i32* %12, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %12, align 4
  br label %37

53:                                               ; preds = %37
  %54 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %55 = load i32, i32* @BWI_RF_ANTDIV, align 4
  %56 = call i32 @CSR_READ_2(%struct.bwi_softc* %54, i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %58 = load i32, i32* @BWI_BBP_ATTEN, align 4
  %59 = call i32 @CSR_READ_2(%struct.bwi_softc* %57, i32 %58)
  store i32 %59, i32* %9, align 4
  %60 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %61 = load i32, i32* @BWI_RF_CHAN_EX, align 4
  %62 = call i32 @CSR_READ_2(%struct.bwi_softc* %60, i32 %61)
  store i32 %62, i32* %10, align 4
  %63 = load %struct.bwi_phy*, %struct.bwi_phy** %5, align 8
  %64 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp sge i32 %65, 5
  br i1 %66, label %67, label %70

67:                                               ; preds = %53
  %68 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %69 = call i32 @RF_CLRBITS(%struct.bwi_mac* %68, i32 122, i32 65408)
  br label %73

70:                                               ; preds = %53
  %71 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %72 = call i32 @RF_CLRBITS(%struct.bwi_mac* %71, i32 122, i32 65520)
  br label %73

73:                                               ; preds = %70, %67
  %74 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %75 = call i32 @PHY_WRITE(%struct.bwi_mac* %74, i32 48, i32 255)
  %76 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %77 = load i32, i32* @BWI_BPHY_CTRL, align 4
  %78 = call i32 @CSR_WRITE_2(%struct.bwi_softc* %76, i32 %77, i32 32639)
  %79 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %80 = call i32 @PHY_WRITE(%struct.bwi_mac* %79, i32 38, i32 0)
  %81 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %82 = call i32 @PHY_SETBITS(%struct.bwi_mac* %81, i32 21, i32 32)
  %83 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %84 = call i32 @PHY_WRITE(%struct.bwi_mac* %83, i32 42, i32 2211)
  %85 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %86 = call i32 @RF_SETBITS(%struct.bwi_mac* %85, i32 122, i32 128)
  %87 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %88 = call i32 @PHY_READ(%struct.bwi_mac* %87, i32 39)
  %89 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32 %88, i32* %89, align 4
  %90 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %91 = call i32 @RF_CLRBITS(%struct.bwi_mac* %90, i32 122, i32 65408)
  %92 = load %struct.bwi_phy*, %struct.bwi_phy** %5, align 8
  %93 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp sge i32 %94, 2
  br i1 %95, label %96, label %100

96:                                               ; preds = %73
  %97 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %98 = load i32, i32* @BWI_BBP_ATTEN, align 4
  %99 = call i32 @CSR_WRITE_2(%struct.bwi_softc* %97, i32 %98, i32 64)
  br label %114

100:                                              ; preds = %73
  %101 = load %struct.bwi_phy*, %struct.bwi_phy** %5, align 8
  %102 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %100
  %106 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %107 = load i32, i32* @BWI_BBP_ATTEN, align 4
  %108 = call i32 @CSR_WRITE_2(%struct.bwi_softc* %106, i32 %107, i32 290)
  br label %113

109:                                              ; preds = %100
  %110 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %111 = load i32, i32* @BWI_RF_CHAN_EX, align 4
  %112 = call i32 @CSR_CLRBITS_2(%struct.bwi_softc* %110, i32 %111, i32 57343)
  br label %113

113:                                              ; preds = %109, %105
  br label %114

114:                                              ; preds = %113, %96
  %115 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %116 = call i32 @PHY_WRITE(%struct.bwi_mac* %115, i32 32, i32 16191)
  %117 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %118 = call i32 @PHY_WRITE(%struct.bwi_mac* %117, i32 21, i32 62256)
  %119 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %120 = call i32 @RF_WRITE(%struct.bwi_mac* %119, i32 90, i32 96)
  %121 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %122 = call i32 @RF_CLRBITS(%struct.bwi_mac* %121, i32 67, i32 65295)
  %123 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %124 = call i32 @PHY_WRITE(%struct.bwi_mac* %123, i32 90, i32 1152)
  %125 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %126 = call i32 @PHY_WRITE(%struct.bwi_mac* %125, i32 89, i32 2064)
  %127 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %128 = call i32 @PHY_WRITE(%struct.bwi_mac* %127, i32 88, i32 13)
  %129 = call i32 @DELAY(i32 20)
  %130 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %131 = call i32 @PHY_READ(%struct.bwi_mac* %130, i32 39)
  %132 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  store i32 %131, i32* %132, align 4
  %133 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %134 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @bwi_rf_calc_nrssi_slope_11b.save_phy_regs, i64 0, i64 0), align 16
  %135 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %136 = load i32, i32* %135, align 16
  %137 = call i32 @PHY_WRITE(%struct.bwi_mac* %133, i32 %134, i32 %136)
  %138 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %139 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @bwi_rf_calc_nrssi_slope_11b.save_rf_regs, i64 0, i64 0), align 4
  %140 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @RF_WRITE(%struct.bwi_mac* %138, i32 %139, i32 %141)
  %143 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %144 = load i32, i32* @BWI_RF_ANTDIV, align 4
  %145 = load i32, i32* %8, align 4
  %146 = call i32 @CSR_WRITE_2(%struct.bwi_softc* %143, i32 %144, i32 %145)
  store i32 1, i32* %12, align 4
  br label %147

147:                                              ; preds = %161, %114
  %148 = load i32, i32* %12, align 4
  %149 = icmp slt i32 %148, 4
  br i1 %149, label %150, label %164

150:                                              ; preds = %147
  %151 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %152 = load i32, i32* %12, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [8 x i32], [8 x i32]* @bwi_rf_calc_nrssi_slope_11b.save_phy_regs, i64 0, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %12, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @PHY_WRITE(%struct.bwi_mac* %151, i32 %155, i32 %159)
  br label %161

161:                                              ; preds = %150
  %162 = load i32, i32* %12, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %12, align 4
  br label %147

164:                                              ; preds = %147
  %165 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %166 = load %struct.bwi_rf*, %struct.bwi_rf** %4, align 8
  %167 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @bwi_rf_work_around(%struct.bwi_mac* %165, i32 %168)
  %170 = load %struct.bwi_phy*, %struct.bwi_phy** %5, align 8
  %171 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %179

174:                                              ; preds = %164
  %175 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %176 = load i32, i32* @BWI_RF_CHAN_EX, align 4
  %177 = load i32, i32* %10, align 4
  %178 = call i32 @CSR_WRITE_2(%struct.bwi_softc* %175, i32 %176, i32 %177)
  br label %179

179:                                              ; preds = %174, %164
  br label %180

180:                                              ; preds = %194, %179
  %181 = load i32, i32* %12, align 4
  %182 = icmp slt i32 %181, 8
  br i1 %182, label %183, label %197

183:                                              ; preds = %180
  %184 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %185 = load i32, i32* %12, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds [8 x i32], [8 x i32]* @bwi_rf_calc_nrssi_slope_11b.save_phy_regs, i64 0, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* %12, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @PHY_WRITE(%struct.bwi_mac* %184, i32 %188, i32 %192)
  br label %194

194:                                              ; preds = %183
  %195 = load i32, i32* %12, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %12, align 4
  br label %180

197:                                              ; preds = %180
  store i32 1, i32* %12, align 4
  br label %198

198:                                              ; preds = %212, %197
  %199 = load i32, i32* %12, align 4
  %200 = icmp slt i32 %199, 3
  br i1 %200, label %201, label %215

201:                                              ; preds = %198
  %202 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %203 = load i32, i32* %12, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds [3 x i32], [3 x i32]* @bwi_rf_calc_nrssi_slope_11b.save_rf_regs, i64 0, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* %12, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @RF_WRITE(%struct.bwi_mac* %202, i32 %206, i32 %210)
  br label %212

212:                                              ; preds = %201
  %213 = load i32, i32* %12, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %12, align 4
  br label %198

215:                                              ; preds = %198
  %216 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %217 = load i32, i32* %216, align 4
  %218 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %219 = load i32, i32* %218, align 4
  %220 = icmp eq i32 %217, %219
  br i1 %220, label %221, label %224

221:                                              ; preds = %215
  %222 = load %struct.bwi_rf*, %struct.bwi_rf** %4, align 8
  %223 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %222, i32 0, i32 0
  store i32 65536, i32* %223, align 8
  br label %233

224:                                              ; preds = %215
  %225 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %226 = load i32, i32* %225, align 4
  %227 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %228 = load i32, i32* %227, align 4
  %229 = sub nsw i32 %226, %228
  %230 = sdiv i32 4194304, %229
  %231 = load %struct.bwi_rf*, %struct.bwi_rf** %4, align 8
  %232 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %231, i32 0, i32 0
  store i32 %230, i32* %232, align 8
  br label %233

233:                                              ; preds = %224, %221
  %234 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %235 = load i32, i32* %234, align 4
  %236 = icmp sle i32 %235, -4
  br i1 %236, label %237, label %250

237:                                              ; preds = %233
  %238 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.bwi_rf*, %struct.bwi_rf** %4, align 8
  %241 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %240, i32 0, i32 1
  %242 = load i32*, i32** %241, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 0
  store i32 %239, i32* %243, align 4
  %244 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.bwi_rf*, %struct.bwi_rf** %4, align 8
  %247 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %246, i32 0, i32 1
  %248 = load i32*, i32** %247, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 1
  store i32 %245, i32* %249, align 4
  br label %250

250:                                              ; preds = %237, %233
  ret void
}

declare dso_local i32 @RF_READ(%struct.bwi_mac*, i32) #1

declare dso_local i32 @PHY_READ(%struct.bwi_mac*, i32) #1

declare dso_local i32 @CSR_READ_2(%struct.bwi_softc*, i32) #1

declare dso_local i32 @RF_CLRBITS(%struct.bwi_mac*, i32, i32) #1

declare dso_local i32 @PHY_WRITE(%struct.bwi_mac*, i32, i32) #1

declare dso_local i32 @CSR_WRITE_2(%struct.bwi_softc*, i32, i32) #1

declare dso_local i32 @PHY_SETBITS(%struct.bwi_mac*, i32, i32) #1

declare dso_local i32 @RF_SETBITS(%struct.bwi_mac*, i32, i32) #1

declare dso_local i32 @CSR_CLRBITS_2(%struct.bwi_softc*, i32, i32) #1

declare dso_local i32 @RF_WRITE(%struct.bwi_mac*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @bwi_rf_work_around(%struct.bwi_mac*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
