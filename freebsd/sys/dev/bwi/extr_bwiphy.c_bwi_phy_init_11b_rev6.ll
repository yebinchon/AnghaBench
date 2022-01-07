; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwiphy.c_bwi_phy_init_11b_rev6.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwiphy.c_bwi_phy_init_11b_rev6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_mac = type { %struct.bwi_phy, %struct.bwi_rf, %struct.bwi_softc* }
%struct.bwi_phy = type { i64, i32 }
%struct.bwi_rf = type { i32, i32 }
%struct.bwi_softc = type { i32 }

@BWI_HFLAG_MAGIC1 = common dso_local global i32 0, align 4
@BWI_CARD_F_ALT_IQ = common dso_local global i32 0, align 4
@IEEE80211_MODE_11G = common dso_local global i64 0, align 8
@BWI_PHY_MAGIC_REG1 = common dso_local global i32 0, align 4
@BWI_PHY_MAGIC_REG1_VAL2 = common dso_local global i32 0, align 4
@IEEE80211_MODE_11B = common dso_local global i64 0, align 8
@BWI_BBP_ATTEN = common dso_local global i32 0, align 4
@BWI_BBP_ATTEN_MAGIC2 = common dso_local global i32 0, align 4
@BWI_CARD_F_SW_NRSSI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwi_mac*)* @bwi_phy_init_11b_rev6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwi_phy_init_11b_rev6(%struct.bwi_mac* %0) #0 {
  %2 = alloca %struct.bwi_mac*, align 8
  %3 = alloca %struct.bwi_softc*, align 8
  %4 = alloca %struct.bwi_rf*, align 8
  %5 = alloca %struct.bwi_phy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bwi_mac* %0, %struct.bwi_mac** %2, align 8
  %9 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %10 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %9, i32 0, i32 2
  %11 = load %struct.bwi_softc*, %struct.bwi_softc** %10, align 8
  store %struct.bwi_softc* %11, %struct.bwi_softc** %3, align 8
  %12 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %13 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %12, i32 0, i32 1
  store %struct.bwi_rf* %13, %struct.bwi_rf** %4, align 8
  %14 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %15 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %14, i32 0, i32 0
  store %struct.bwi_phy* %15, %struct.bwi_phy** %5, align 8
  %16 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %17 = call i32 @PHY_WRITE(%struct.bwi_mac* %16, i32 62, i32 33146)
  %18 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %19 = call i32 @RF_SETBITS(%struct.bwi_mac* %18, i32 122, i32 88)
  %20 = load %struct.bwi_rf*, %struct.bwi_rf** %4, align 8
  %21 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 4
  br i1 %23, label %29, label %24

24:                                               ; preds = %1
  %25 = load %struct.bwi_rf*, %struct.bwi_rf** %4, align 8
  %26 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 5
  br i1 %28, label %29, label %51

29:                                               ; preds = %24, %1
  %30 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %31 = call i32 @RF_WRITE(%struct.bwi_mac* %30, i32 81, i32 55)
  %32 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %33 = call i32 @RF_WRITE(%struct.bwi_mac* %32, i32 82, i32 112)
  %34 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %35 = call i32 @RF_WRITE(%struct.bwi_mac* %34, i32 83, i32 179)
  %36 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %37 = call i32 @RF_WRITE(%struct.bwi_mac* %36, i32 84, i32 155)
  %38 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %39 = call i32 @RF_WRITE(%struct.bwi_mac* %38, i32 90, i32 136)
  %40 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %41 = call i32 @RF_WRITE(%struct.bwi_mac* %40, i32 91, i32 136)
  %42 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %43 = call i32 @RF_WRITE(%struct.bwi_mac* %42, i32 93, i32 136)
  %44 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %45 = call i32 @RF_WRITE(%struct.bwi_mac* %44, i32 94, i32 136)
  %46 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %47 = call i32 @RF_WRITE(%struct.bwi_mac* %46, i32 125, i32 136)
  %48 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %49 = load i32, i32* @BWI_HFLAG_MAGIC1, align 4
  %50 = call i32 @HFLAGS_SETBITS(%struct.bwi_mac* %48, i32 %49)
  br label %97

51:                                               ; preds = %24
  %52 = load %struct.bwi_rf*, %struct.bwi_rf** %4, align 8
  %53 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 8
  br i1 %55, label %56, label %96

56:                                               ; preds = %51
  %57 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %58 = call i32 @RF_WRITE(%struct.bwi_mac* %57, i32 81, i32 0)
  %59 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %60 = call i32 @RF_WRITE(%struct.bwi_mac* %59, i32 82, i32 64)
  %61 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %62 = call i32 @RF_WRITE(%struct.bwi_mac* %61, i32 83, i32 183)
  %63 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %64 = call i32 @RF_WRITE(%struct.bwi_mac* %63, i32 84, i32 152)
  %65 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %66 = call i32 @RF_WRITE(%struct.bwi_mac* %65, i32 90, i32 136)
  %67 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %68 = call i32 @RF_WRITE(%struct.bwi_mac* %67, i32 91, i32 107)
  %69 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %70 = call i32 @RF_WRITE(%struct.bwi_mac* %69, i32 92, i32 15)
  %71 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %72 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @BWI_CARD_F_ALT_IQ, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %56
  %78 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %79 = call i32 @RF_WRITE(%struct.bwi_mac* %78, i32 93, i32 250)
  %80 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %81 = call i32 @RF_WRITE(%struct.bwi_mac* %80, i32 94, i32 216)
  br label %87

82:                                               ; preds = %56
  %83 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %84 = call i32 @RF_WRITE(%struct.bwi_mac* %83, i32 93, i32 245)
  %85 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %86 = call i32 @RF_WRITE(%struct.bwi_mac* %85, i32 94, i32 184)
  br label %87

87:                                               ; preds = %82, %77
  %88 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %89 = call i32 @RF_WRITE(%struct.bwi_mac* %88, i32 115, i32 3)
  %90 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %91 = call i32 @RF_WRITE(%struct.bwi_mac* %90, i32 125, i32 168)
  %92 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %93 = call i32 @RF_WRITE(%struct.bwi_mac* %92, i32 124, i32 1)
  %94 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %95 = call i32 @RF_WRITE(%struct.bwi_mac* %94, i32 126, i32 8)
  br label %96

96:                                               ; preds = %87, %51
  br label %97

97:                                               ; preds = %96, %29
  store i32 7711, i32* %6, align 4
  store i32 136, i32* %7, align 4
  br label %98

98:                                               ; preds = %108, %97
  %99 = load i32, i32* %7, align 4
  %100 = icmp slt i32 %99, 152
  br i1 %100, label %101, label %111

101:                                              ; preds = %98
  %102 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @PHY_WRITE(%struct.bwi_mac* %102, i32 %103, i32 %104)
  %106 = load i32, i32* %6, align 4
  %107 = sub nsw i32 %106, 514
  store i32 %107, i32* %6, align 4
  br label %108

108:                                              ; preds = %101
  %109 = load i32, i32* %7, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %7, align 4
  br label %98

111:                                              ; preds = %98
  store i32 15935, i32* %6, align 4
  store i32 152, i32* %7, align 4
  br label %112

112:                                              ; preds = %122, %111
  %113 = load i32, i32* %7, align 4
  %114 = icmp slt i32 %113, 168
  br i1 %114, label %115, label %125

115:                                              ; preds = %112
  %116 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* %6, align 4
  %119 = call i32 @PHY_WRITE(%struct.bwi_mac* %116, i32 %117, i32 %118)
  %120 = load i32, i32* %6, align 4
  %121 = sub nsw i32 %120, 514
  store i32 %121, i32* %6, align 4
  br label %122

122:                                              ; preds = %115
  %123 = load i32, i32* %7, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %7, align 4
  br label %112

125:                                              ; preds = %112
  store i32 8480, i32* %6, align 4
  store i32 168, i32* %7, align 4
  br label %126

126:                                              ; preds = %138, %125
  %127 = load i32, i32* %7, align 4
  %128 = icmp slt i32 %127, 200
  br i1 %128, label %129, label %141

129:                                              ; preds = %126
  %130 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* %6, align 4
  %133 = and i32 %132, 16191
  %134 = call i32 @PHY_WRITE(%struct.bwi_mac* %130, i32 %131, i32 %133)
  %135 = load i32, i32* %6, align 4
  %136 = add nsw i32 %135, 514
  store i32 %136, i32* %6, align 4
  %137 = call i32 @DELAY(i32 10)
  br label %138

138:                                              ; preds = %129
  %139 = load i32, i32* %7, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %7, align 4
  br label %126

141:                                              ; preds = %126
  %142 = load %struct.bwi_phy*, %struct.bwi_phy** %5, align 8
  %143 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @IEEE80211_MODE_11G, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %160

147:                                              ; preds = %141
  %148 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %149 = call i32 @RF_SETBITS(%struct.bwi_mac* %148, i32 122, i32 32)
  %150 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %151 = call i32 @RF_SETBITS(%struct.bwi_mac* %150, i32 81, i32 4)
  %152 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %153 = call i32 @PHY_SETBITS(%struct.bwi_mac* %152, i32 2050, i32 256)
  %154 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %155 = call i32 @PHY_SETBITS(%struct.bwi_mac* %154, i32 1067, i32 8192)
  %156 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %157 = call i32 @PHY_WRITE(%struct.bwi_mac* %156, i32 91, i32 0)
  %158 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %159 = call i32 @PHY_WRITE(%struct.bwi_mac* %158, i32 92, i32 0)
  br label %160

160:                                              ; preds = %147, %141
  %161 = load %struct.bwi_rf*, %struct.bwi_rf** %4, align 8
  %162 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  store i32 %163, i32* %8, align 4
  %164 = load i32, i32* %8, align 4
  %165 = icmp sge i32 %164, 8
  br i1 %165, label %166, label %169

166:                                              ; preds = %160
  %167 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %168 = call i32 @bwi_rf_set_chan(%struct.bwi_mac* %167, i32 1, i32 0)
  br label %172

169:                                              ; preds = %160
  %170 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %171 = call i32 @bwi_rf_set_chan(%struct.bwi_mac* %170, i32 13, i32 0)
  br label %172

172:                                              ; preds = %169, %166
  %173 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %174 = call i32 @RF_WRITE(%struct.bwi_mac* %173, i32 80, i32 32)
  %175 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %176 = call i32 @RF_WRITE(%struct.bwi_mac* %175, i32 80, i32 35)
  %177 = call i32 @DELAY(i32 40)
  %178 = load %struct.bwi_rf*, %struct.bwi_rf** %4, align 8
  %179 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = icmp slt i32 %180, 6
  br i1 %181, label %187, label %182

182:                                              ; preds = %172
  %183 = load %struct.bwi_rf*, %struct.bwi_rf** %4, align 8
  %184 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = icmp eq i32 %185, 8
  br i1 %186, label %187, label %192

187:                                              ; preds = %182, %172
  %188 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %189 = call i32 @RF_SETBITS(%struct.bwi_mac* %188, i32 124, i32 2)
  %190 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %191 = call i32 @RF_WRITE(%struct.bwi_mac* %190, i32 80, i32 32)
  br label %192

192:                                              ; preds = %187, %182
  %193 = load %struct.bwi_rf*, %struct.bwi_rf** %4, align 8
  %194 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = icmp sle i32 %195, 2
  br i1 %196, label %197, label %206

197:                                              ; preds = %192
  %198 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %199 = call i32 @RF_WRITE(%struct.bwi_mac* %198, i32 124, i32 32)
  %200 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %201 = call i32 @RF_WRITE(%struct.bwi_mac* %200, i32 90, i32 112)
  %202 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %203 = call i32 @RF_WRITE(%struct.bwi_mac* %202, i32 91, i32 123)
  %204 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %205 = call i32 @RF_WRITE(%struct.bwi_mac* %204, i32 92, i32 176)
  br label %206

206:                                              ; preds = %197, %192
  %207 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %208 = call i32 @RF_FILT_SETBITS(%struct.bwi_mac* %207, i32 122, i32 248, i32 7)
  %209 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %210 = load i32, i32* %8, align 4
  %211 = call i32 @bwi_rf_set_chan(%struct.bwi_mac* %209, i32 %210, i32 0)
  %212 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %213 = call i32 @PHY_WRITE(%struct.bwi_mac* %212, i32 20, i32 512)
  %214 = load %struct.bwi_rf*, %struct.bwi_rf** %4, align 8
  %215 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = icmp sge i32 %216, 6
  br i1 %217, label %218, label %221

218:                                              ; preds = %206
  %219 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %220 = call i32 @PHY_WRITE(%struct.bwi_mac* %219, i32 42, i32 35010)
  br label %224

221:                                              ; preds = %206
  %222 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %223 = call i32 @PHY_WRITE(%struct.bwi_mac* %222, i32 42, i32 35520)
  br label %224

224:                                              ; preds = %221, %218
  %225 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %226 = call i32 @PHY_WRITE(%struct.bwi_mac* %225, i32 56, i32 1640)
  %227 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %228 = call i32 @bwi_mac_set_tpctl_11bg(%struct.bwi_mac* %227, i32* null)
  %229 = load %struct.bwi_rf*, %struct.bwi_rf** %4, align 8
  %230 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = icmp sle i32 %231, 5
  br i1 %232, label %233, label %244

233:                                              ; preds = %224
  %234 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %235 = call i32 @PHY_FILT_SETBITS(%struct.bwi_mac* %234, i32 93, i32 65408, i32 3)
  %236 = load %struct.bwi_rf*, %struct.bwi_rf** %4, align 8
  %237 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = icmp sle i32 %238, 2
  br i1 %239, label %240, label %243

240:                                              ; preds = %233
  %241 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %242 = call i32 @RF_WRITE(%struct.bwi_mac* %241, i32 93, i32 13)
  br label %243

243:                                              ; preds = %240, %233
  br label %244

244:                                              ; preds = %243, %224
  %245 = load %struct.bwi_phy*, %struct.bwi_phy** %5, align 8
  %246 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 8
  %248 = icmp eq i32 %247, 4
  br i1 %248, label %249, label %256

249:                                              ; preds = %244
  %250 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %251 = load i32, i32* @BWI_PHY_MAGIC_REG1, align 4
  %252 = load i32, i32* @BWI_PHY_MAGIC_REG1_VAL2, align 4
  %253 = call i32 @CSR_WRITE_2(%struct.bwi_softc* %250, i32 %251, i32 %252)
  %254 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %255 = call i32 @PHY_CLRBITS(%struct.bwi_mac* %254, i32 97, i32 61440)
  br label %259

256:                                              ; preds = %244
  %257 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %258 = call i32 @PHY_FILT_SETBITS(%struct.bwi_mac* %257, i32 2, i32 65472, i32 4)
  br label %259

259:                                              ; preds = %256, %249
  %260 = load %struct.bwi_phy*, %struct.bwi_phy** %5, align 8
  %261 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = load i64, i64* @IEEE80211_MODE_11B, align 8
  %264 = icmp eq i64 %262, %263
  br i1 %264, label %265, label %294

265:                                              ; preds = %259
  %266 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %267 = load i32, i32* @BWI_BBP_ATTEN, align 4
  %268 = load i32, i32* @BWI_BBP_ATTEN_MAGIC2, align 4
  %269 = call i32 @CSR_WRITE_2(%struct.bwi_softc* %266, i32 %267, i32 %268)
  %270 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %271 = call i32 @PHY_WRITE(%struct.bwi_mac* %270, i32 22, i32 1040)
  %272 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %273 = call i32 @PHY_WRITE(%struct.bwi_mac* %272, i32 23, i32 2080)
  %274 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %275 = call i32 @PHY_WRITE(%struct.bwi_mac* %274, i32 98, i32 7)
  %276 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %277 = call i32 @bwi_rf_init_bcm2050(%struct.bwi_mac* %276)
  %278 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %279 = call i32 @bwi_rf_lo_update(%struct.bwi_mac* %278)
  %280 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %281 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = load i32, i32* @BWI_CARD_F_SW_NRSSI, align 4
  %284 = and i32 %282, %283
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %291

286:                                              ; preds = %265
  %287 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %288 = call i32 @bwi_rf_calc_nrssi_slope(%struct.bwi_mac* %287)
  %289 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %290 = call i32 @bwi_rf_set_nrssi_thr(%struct.bwi_mac* %289)
  br label %291

291:                                              ; preds = %286, %265
  %292 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %293 = call i32 @bwi_mac_init_tpctl_11bg(%struct.bwi_mac* %292)
  br label %298

294:                                              ; preds = %259
  %295 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %296 = load i32, i32* @BWI_BBP_ATTEN, align 4
  %297 = call i32 @CSR_WRITE_2(%struct.bwi_softc* %295, i32 %296, i32 0)
  br label %298

298:                                              ; preds = %294, %291
  ret void
}

declare dso_local i32 @PHY_WRITE(%struct.bwi_mac*, i32, i32) #1

declare dso_local i32 @RF_SETBITS(%struct.bwi_mac*, i32, i32) #1

declare dso_local i32 @RF_WRITE(%struct.bwi_mac*, i32, i32) #1

declare dso_local i32 @HFLAGS_SETBITS(%struct.bwi_mac*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @PHY_SETBITS(%struct.bwi_mac*, i32, i32) #1

declare dso_local i32 @bwi_rf_set_chan(%struct.bwi_mac*, i32, i32) #1

declare dso_local i32 @RF_FILT_SETBITS(%struct.bwi_mac*, i32, i32, i32) #1

declare dso_local i32 @bwi_mac_set_tpctl_11bg(%struct.bwi_mac*, i32*) #1

declare dso_local i32 @PHY_FILT_SETBITS(%struct.bwi_mac*, i32, i32, i32) #1

declare dso_local i32 @CSR_WRITE_2(%struct.bwi_softc*, i32, i32) #1

declare dso_local i32 @PHY_CLRBITS(%struct.bwi_mac*, i32, i32) #1

declare dso_local i32 @bwi_rf_init_bcm2050(%struct.bwi_mac*) #1

declare dso_local i32 @bwi_rf_lo_update(%struct.bwi_mac*) #1

declare dso_local i32 @bwi_rf_calc_nrssi_slope(%struct.bwi_mac*) #1

declare dso_local i32 @bwi_rf_set_nrssi_thr(%struct.bwi_mac*) #1

declare dso_local i32 @bwi_mac_init_tpctl_11bg(%struct.bwi_mac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
