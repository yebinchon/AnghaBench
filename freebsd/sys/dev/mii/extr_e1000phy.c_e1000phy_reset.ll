; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_e1000phy.c_e1000phy_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_e1000phy.c_e1000phy_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_softc = type { i32, i32 }

@E1000_SCR = common dso_local global i32 0, align 4
@MIIF_HAVEFIBER = common dso_local global i32 0, align 4
@E1000_SCR_AUTO_X_MODE = common dso_local global i32 0, align 4
@E1000_EADR = common dso_local global i32 0, align 4
@E1000_SCR_MODE_MASK = common dso_local global i32 0, align 4
@E1000_SCR_MODE_1000BX = common dso_local global i32 0, align 4
@MIIF_PHYPRIV0 = common dso_local global i32 0, align 4
@E1000_SCR_FIB_SIGDET_POLARITY = common dso_local global i32 0, align 4
@E1000_SCR_EN_DETECT_MASK = common dso_local global i32 0, align 4
@E1000_SCR_POWER_DOWN = common dso_local global i32 0, align 4
@E1000_SCR_ASSERT_CRS_ON_TX = common dso_local global i32 0, align 4
@E1000_SCR_AUTO_MDIX = common dso_local global i32 0, align 4
@E1000_SCR_EN_DETECT = common dso_local global i32 0, align 4
@E1000_SCR_SCRAMBLER_DISABLE = common dso_local global i32 0, align 4
@E1000_SCR_LPNP = common dso_local global i32 0, align 4
@E1000_SCR_POLARITY_REVERSAL = common dso_local global i32 0, align 4
@E1000_SCR_RGMII_POWER_UP = common dso_local global i32 0, align 4
@E1000_IER = common dso_local global i32 0, align 4
@E1000_PULSE_170MS = common dso_local global i32 0, align 4
@E1000_BLINK_84MS = common dso_local global i32 0, align 4
@E1000_ESCR = common dso_local global i32 0, align 4
@E1000_ESCR_TX_CLK_25 = common dso_local global i32 0, align 4
@E1000_CR = common dso_local global i32 0, align 4
@E1000_CR_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mii_softc*)* @e1000phy_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000phy_reset(%struct.mii_softc* %0) #0 {
  %2 = alloca %struct.mii_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.mii_softc* %0, %struct.mii_softc** %2, align 8
  %5 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %6 = load i32, i32* @E1000_SCR, align 4
  %7 = call i32 @PHY_READ(%struct.mii_softc* %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %9 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @MIIF_HAVEFIBER, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %74

14:                                               ; preds = %1
  %15 = load i32, i32* @E1000_SCR_AUTO_X_MODE, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %3, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %3, align 4
  %19 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %20 = load i32, i32* @E1000_SCR, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @PHY_WRITE(%struct.mii_softc* %19, i32 %20, i32 %21)
  %23 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %24 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 136
  br i1 %26, label %27, label %73

27:                                               ; preds = %14
  %28 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %29 = load i32, i32* @E1000_EADR, align 4
  %30 = call i32 @PHY_READ(%struct.mii_softc* %28, i32 %29)
  store i32 %30, i32* %4, align 4
  %31 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %32 = load i32, i32* @E1000_EADR, align 4
  %33 = call i32 @PHY_WRITE(%struct.mii_softc* %31, i32 %32, i32 2)
  %34 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %35 = load i32, i32* @E1000_SCR, align 4
  %36 = call i32 @PHY_READ(%struct.mii_softc* %34, i32 %35)
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* @E1000_SCR_MODE_MASK, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %3, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* @E1000_SCR_MODE_1000BX, align 4
  %42 = load i32, i32* %3, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %3, align 4
  %44 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %45 = load i32, i32* @E1000_SCR, align 4
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @PHY_WRITE(%struct.mii_softc* %44, i32 %45, i32 %46)
  %48 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %49 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @MIIF_PHYPRIV0, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %27
  %55 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %56 = load i32, i32* @E1000_EADR, align 4
  %57 = call i32 @PHY_WRITE(%struct.mii_softc* %55, i32 %56, i32 1)
  %58 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %59 = load i32, i32* @E1000_SCR, align 4
  %60 = call i32 @PHY_READ(%struct.mii_softc* %58, i32 %59)
  store i32 %60, i32* %3, align 4
  %61 = load i32, i32* @E1000_SCR_FIB_SIGDET_POLARITY, align 4
  %62 = load i32, i32* %3, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %3, align 4
  %64 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %65 = load i32, i32* @E1000_SCR, align 4
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @PHY_WRITE(%struct.mii_softc* %64, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %54, %27
  %69 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %70 = load i32, i32* @E1000_EADR, align 4
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @PHY_WRITE(%struct.mii_softc* %69, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %68, %14
  br label %190

74:                                               ; preds = %1
  %75 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %76 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  switch i32 %77, label %130 [
    i32 137, label %78
    i32 136, label %78
    i32 135, label %78
    i32 134, label %78
    i32 133, label %78
    i32 132, label %78
    i32 131, label %78
    i32 128, label %78
    i32 129, label %104
    i32 130, label %112
  ]

78:                                               ; preds = %74, %74, %74, %74, %74, %74, %74, %74
  %79 = load i32, i32* @E1000_SCR_EN_DETECT_MASK, align 4
  %80 = xor i32 %79, -1
  %81 = load i32, i32* %3, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %3, align 4
  %83 = load i32, i32* @E1000_SCR_AUTO_X_MODE, align 4
  %84 = load i32, i32* %3, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %3, align 4
  %86 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %87 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %88, 135
  br i1 %89, label %95, label %90

90:                                               ; preds = %78
  %91 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %92 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %93, 134
  br i1 %94, label %95, label %100

95:                                               ; preds = %90, %78
  %96 = load i32, i32* @E1000_SCR_POWER_DOWN, align 4
  %97 = xor i32 %96, -1
  %98 = load i32, i32* %3, align 4
  %99 = and i32 %98, %97
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %95, %90
  %101 = load i32, i32* @E1000_SCR_ASSERT_CRS_ON_TX, align 4
  %102 = load i32, i32* %3, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %3, align 4
  br label %138

104:                                              ; preds = %74
  %105 = load i32, i32* @E1000_SCR_AUTO_X_MODE, align 4
  %106 = ashr i32 %105, 1
  %107 = load i32, i32* %3, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %3, align 4
  %109 = load i32, i32* @E1000_SCR_ASSERT_CRS_ON_TX, align 4
  %110 = load i32, i32* %3, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %3, align 4
  br label %138

112:                                              ; preds = %74
  %113 = load i32, i32* @E1000_SCR_AUTO_MDIX, align 4
  %114 = load i32, i32* %3, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %3, align 4
  %116 = load i32, i32* @E1000_SCR_EN_DETECT, align 4
  %117 = load i32, i32* @E1000_SCR_SCRAMBLER_DISABLE, align 4
  %118 = or i32 %116, %117
  %119 = xor i32 %118, -1
  %120 = load i32, i32* %3, align 4
  %121 = and i32 %120, %119
  store i32 %121, i32* %3, align 4
  %122 = load i32, i32* @E1000_SCR_LPNP, align 4
  %123 = load i32, i32* %3, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %3, align 4
  %125 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %126 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %127 = call i32 @PHY_READ(%struct.mii_softc* %126, i32 28)
  %128 = or i32 %127, 1
  %129 = call i32 @PHY_WRITE(%struct.mii_softc* %125, i32 28, i32 %128)
  br label %138

130:                                              ; preds = %74
  %131 = load i32, i32* @E1000_SCR_AUTO_X_MODE, align 4
  %132 = xor i32 %131, -1
  %133 = load i32, i32* %3, align 4
  %134 = and i32 %133, %132
  store i32 %134, i32* %3, align 4
  %135 = load i32, i32* @E1000_SCR_ASSERT_CRS_ON_TX, align 4
  %136 = load i32, i32* %3, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %3, align 4
  br label %138

138:                                              ; preds = %130, %112, %104, %100
  %139 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %140 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %141, 130
  br i1 %142, label %143, label %148

143:                                              ; preds = %138
  %144 = load i32, i32* @E1000_SCR_POLARITY_REVERSAL, align 4
  %145 = xor i32 %144, -1
  %146 = load i32, i32* %3, align 4
  %147 = and i32 %146, %145
  store i32 %147, i32* %3, align 4
  br label %148

148:                                              ; preds = %143, %138
  %149 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %150 = load i32, i32* @E1000_SCR, align 4
  %151 = load i32, i32* %3, align 4
  %152 = call i32 @PHY_WRITE(%struct.mii_softc* %149, i32 %150, i32 %151)
  %153 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %154 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = icmp eq i32 %155, 135
  br i1 %156, label %172, label %157

157:                                              ; preds = %148
  %158 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %159 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = icmp eq i32 %160, 134
  br i1 %161, label %172, label %162

162:                                              ; preds = %157
  %163 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %164 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = icmp eq i32 %165, 132
  br i1 %166, label %172, label %167

167:                                              ; preds = %162
  %168 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %169 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = icmp eq i32 %170, 131
  br i1 %171, label %172, label %189

172:                                              ; preds = %167, %162, %157, %148
  %173 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %174 = load i32, i32* @E1000_EADR, align 4
  %175 = call i32 @PHY_WRITE(%struct.mii_softc* %173, i32 %174, i32 2)
  %176 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %177 = load i32, i32* @E1000_SCR, align 4
  %178 = call i32 @PHY_READ(%struct.mii_softc* %176, i32 %177)
  store i32 %178, i32* %3, align 4
  %179 = load i32, i32* @E1000_SCR_RGMII_POWER_UP, align 4
  %180 = load i32, i32* %3, align 4
  %181 = or i32 %180, %179
  store i32 %181, i32* %3, align 4
  %182 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %183 = load i32, i32* @E1000_SCR, align 4
  %184 = load i32, i32* %3, align 4
  %185 = call i32 @PHY_WRITE(%struct.mii_softc* %182, i32 %183, i32 %184)
  %186 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %187 = load i32, i32* @E1000_EADR, align 4
  %188 = call i32 @PHY_WRITE(%struct.mii_softc* %186, i32 %187, i32 0)
  br label %189

189:                                              ; preds = %172, %167
  br label %190

190:                                              ; preds = %189, %73
  %191 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %192 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  switch i32 %193, label %231 [
    i32 129, label %194
    i32 136, label %194
    i32 133, label %194
    i32 135, label %195
    i32 134, label %195
    i32 130, label %224
  ]

194:                                              ; preds = %190, %190, %190
  br label %242

195:                                              ; preds = %190, %190
  %196 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %197 = load i32, i32* @E1000_EADR, align 4
  %198 = call i32 @PHY_READ(%struct.mii_softc* %196, i32 %197)
  store i32 %198, i32* %4, align 4
  %199 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %200 = load i32, i32* @E1000_EADR, align 4
  %201 = call i32 @PHY_WRITE(%struct.mii_softc* %199, i32 %200, i32 3)
  %202 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %203 = load i32, i32* @E1000_SCR, align 4
  %204 = call i32 @E1000_SCR_LED_LOS(i32 1)
  %205 = call i32 @E1000_SCR_LED_INIT(i32 8)
  %206 = or i32 %204, %205
  %207 = call i32 @E1000_SCR_LED_STAT1(i32 7)
  %208 = or i32 %206, %207
  %209 = call i32 @E1000_SCR_LED_STAT0(i32 7)
  %210 = or i32 %208, %209
  %211 = call i32 @PHY_WRITE(%struct.mii_softc* %202, i32 %203, i32 %210)
  %212 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %213 = load i32, i32* @E1000_IER, align 4
  %214 = load i32, i32* @E1000_PULSE_170MS, align 4
  %215 = call i32 @E1000_PULSE_DUR(i32 %214)
  %216 = load i32, i32* @E1000_BLINK_84MS, align 4
  %217 = call i32 @E1000_BLINK_RATE(i32 %216)
  %218 = or i32 %215, %217
  %219 = call i32 @PHY_WRITE(%struct.mii_softc* %212, i32 %213, i32 %218)
  %220 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %221 = load i32, i32* @E1000_EADR, align 4
  %222 = load i32, i32* %4, align 4
  %223 = call i32 @PHY_WRITE(%struct.mii_softc* %220, i32 %221, i32 %222)
  br label %242

224:                                              ; preds = %190
  %225 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %226 = call i32 @PHY_WRITE(%struct.mii_softc* %225, i32 22, i32 2900)
  %227 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %228 = call i32 @PHY_WRITE(%struct.mii_softc* %227, i32 29, i32 17)
  %229 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %230 = call i32 @PHY_WRITE(%struct.mii_softc* %229, i32 30, i32 16224)
  br label %242

231:                                              ; preds = %190
  %232 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %233 = load i32, i32* @E1000_ESCR, align 4
  %234 = call i32 @PHY_READ(%struct.mii_softc* %232, i32 %233)
  store i32 %234, i32* %3, align 4
  %235 = load i32, i32* @E1000_ESCR_TX_CLK_25, align 4
  %236 = load i32, i32* %3, align 4
  %237 = or i32 %236, %235
  store i32 %237, i32* %3, align 4
  %238 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %239 = load i32, i32* @E1000_ESCR, align 4
  %240 = load i32, i32* %3, align 4
  %241 = call i32 @PHY_WRITE(%struct.mii_softc* %238, i32 %239, i32 %240)
  br label %242

242:                                              ; preds = %231, %224, %195, %194
  %243 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %244 = load i32, i32* @E1000_CR, align 4
  %245 = call i32 @PHY_READ(%struct.mii_softc* %243, i32 %244)
  store i32 %245, i32* %3, align 4
  %246 = load i32, i32* @E1000_CR_RESET, align 4
  %247 = load i32, i32* %3, align 4
  %248 = or i32 %247, %246
  store i32 %248, i32* %3, align 4
  %249 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %250 = load i32, i32* @E1000_CR, align 4
  %251 = load i32, i32* %3, align 4
  %252 = call i32 @PHY_WRITE(%struct.mii_softc* %249, i32 %250, i32 %251)
  ret void
}

declare dso_local i32 @PHY_READ(%struct.mii_softc*, i32) #1

declare dso_local i32 @PHY_WRITE(%struct.mii_softc*, i32, i32) #1

declare dso_local i32 @E1000_SCR_LED_LOS(i32) #1

declare dso_local i32 @E1000_SCR_LED_INIT(i32) #1

declare dso_local i32 @E1000_SCR_LED_STAT1(i32) #1

declare dso_local i32 @E1000_SCR_LED_STAT0(i32) #1

declare dso_local i32 @E1000_PULSE_DUR(i32) #1

declare dso_local i32 @E1000_BLINK_RATE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
