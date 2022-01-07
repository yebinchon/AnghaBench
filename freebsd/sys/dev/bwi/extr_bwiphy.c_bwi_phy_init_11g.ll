; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwiphy.c_bwi_phy_init_11g.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwiphy.c_bwi_phy_init_11g.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_mac = type { %struct.bwi_tpctl, %struct.bwi_rf, %struct.bwi_phy, %struct.bwi_softc* }
%struct.bwi_tpctl = type { i32, i32 }
%struct.bwi_rf = type { i32, i64, i64* }
%struct.bwi_phy = type { i32, i32 }
%struct.bwi_softc = type { i32, i64, i32 }

@BWI_PHY_F_LINKED = common dso_local global i32 0, align 4
@BWI_RF_T_BCM2050 = common dso_local global i64 0, align 8
@BWI_CARD_F_PA_GPIO9 = common dso_local global i32 0, align 4
@BWI_CARD_F_SW_NRSSI = common dso_local global i32 0, align 4
@BWI_INVALID_NRSSI = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"rf_nrssi[1] %d\00", align 1
@BWI_BBPID_BCM4306 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwi_mac*)* @bwi_phy_init_11g to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwi_phy_init_11g(%struct.bwi_mac* %0) #0 {
  %2 = alloca %struct.bwi_mac*, align 8
  %3 = alloca %struct.bwi_softc*, align 8
  %4 = alloca %struct.bwi_phy*, align 8
  %5 = alloca %struct.bwi_rf*, align 8
  %6 = alloca %struct.bwi_tpctl*, align 8
  %7 = alloca i32, align 4
  store %struct.bwi_mac* %0, %struct.bwi_mac** %2, align 8
  %8 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %9 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %8, i32 0, i32 3
  %10 = load %struct.bwi_softc*, %struct.bwi_softc** %9, align 8
  store %struct.bwi_softc* %10, %struct.bwi_softc** %3, align 8
  %11 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %12 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %11, i32 0, i32 2
  store %struct.bwi_phy* %12, %struct.bwi_phy** %4, align 8
  %13 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %14 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %13, i32 0, i32 1
  store %struct.bwi_rf* %14, %struct.bwi_rf** %5, align 8
  %15 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %16 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %15, i32 0, i32 0
  store %struct.bwi_tpctl* %16, %struct.bwi_tpctl** %6, align 8
  %17 = load %struct.bwi_phy*, %struct.bwi_phy** %4, align 8
  %18 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %23 = call i32 @bwi_phy_init_11b_rev5(%struct.bwi_mac* %22)
  br label %27

24:                                               ; preds = %1
  %25 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %26 = call i32 @bwi_phy_init_11b_rev6(%struct.bwi_mac* %25)
  br label %27

27:                                               ; preds = %24, %21
  %28 = load %struct.bwi_phy*, %struct.bwi_phy** %4, align 8
  %29 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp sge i32 %30, 2
  br i1 %31, label %39, label %32

32:                                               ; preds = %27
  %33 = load %struct.bwi_phy*, %struct.bwi_phy** %4, align 8
  %34 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @BWI_PHY_F_LINKED, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32, %27
  %40 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %41 = call i32 @bwi_phy_config_11g(%struct.bwi_mac* %40)
  br label %42

42:                                               ; preds = %39, %32
  %43 = load %struct.bwi_phy*, %struct.bwi_phy** %4, align 8
  %44 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp sge i32 %45, 2
  br i1 %46, label %47, label %73

47:                                               ; preds = %42
  %48 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %49 = call i32 @PHY_WRITE(%struct.bwi_mac* %48, i32 2068, i32 0)
  %50 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %51 = call i32 @PHY_WRITE(%struct.bwi_mac* %50, i32 2069, i32 0)
  %52 = load %struct.bwi_phy*, %struct.bwi_phy** %4, align 8
  %53 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 2
  br i1 %55, label %56, label %61

56:                                               ; preds = %47
  %57 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %58 = call i32 @PHY_WRITE(%struct.bwi_mac* %57, i32 2065, i32 0)
  %59 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %60 = call i32 @PHY_WRITE(%struct.bwi_mac* %59, i32 21, i32 192)
  br label %72

61:                                               ; preds = %47
  %62 = load %struct.bwi_phy*, %struct.bwi_phy** %4, align 8
  %63 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp sgt i32 %64, 5
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %68 = call i32 @PHY_WRITE(%struct.bwi_mac* %67, i32 2065, i32 1024)
  %69 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %70 = call i32 @PHY_WRITE(%struct.bwi_mac* %69, i32 21, i32 192)
  br label %71

71:                                               ; preds = %66, %61
  br label %72

72:                                               ; preds = %71, %56
  br label %73

73:                                               ; preds = %72, %42
  %74 = load %struct.bwi_phy*, %struct.bwi_phy** %4, align 8
  %75 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp sge i32 %76, 2
  br i1 %77, label %85, label %78

78:                                               ; preds = %73
  %79 = load %struct.bwi_phy*, %struct.bwi_phy** %4, align 8
  %80 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @BWI_PHY_F_LINKED, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %106

85:                                               ; preds = %78, %73
  %86 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %87 = call i32 @PHY_READ(%struct.bwi_mac* %86, i32 1024)
  %88 = and i32 %87, 255
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp eq i32 %89, 3
  br i1 %90, label %94, label %91

91:                                               ; preds = %85
  %92 = load i32, i32* %7, align 4
  %93 = icmp eq i32 %92, 5
  br i1 %93, label %94, label %105

94:                                               ; preds = %91, %85
  %95 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %96 = call i32 @PHY_WRITE(%struct.bwi_mac* %95, i32 1218, i32 6166)
  %97 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %98 = call i32 @PHY_WRITE(%struct.bwi_mac* %97, i32 1219, i32 32774)
  %99 = load i32, i32* %7, align 4
  %100 = icmp eq i32 %99, 5
  br i1 %100, label %101, label %104

101:                                              ; preds = %94
  %102 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %103 = call i32 @PHY_FILT_SETBITS(%struct.bwi_mac* %102, i32 1228, i32 255, i32 7936)
  br label %104

104:                                              ; preds = %101, %94
  br label %105

105:                                              ; preds = %104, %91
  br label %106

106:                                              ; preds = %105, %78
  %107 = load %struct.bwi_phy*, %struct.bwi_phy** %4, align 8
  %108 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp sle i32 %109, 2
  br i1 %110, label %111, label %118

111:                                              ; preds = %106
  %112 = load %struct.bwi_phy*, %struct.bwi_phy** %4, align 8
  %113 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @BWI_PHY_F_LINKED, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %123, label %118

118:                                              ; preds = %111, %106
  %119 = load %struct.bwi_phy*, %struct.bwi_phy** %4, align 8
  %120 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp sge i32 %121, 2
  br i1 %122, label %123, label %126

123:                                              ; preds = %118, %111
  %124 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %125 = call i32 @PHY_WRITE(%struct.bwi_mac* %124, i32 1150, i32 120)
  br label %126

126:                                              ; preds = %123, %118
  %127 = load %struct.bwi_rf*, %struct.bwi_rf** %5, align 8
  %128 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp eq i32 %129, 8
  br i1 %130, label %131, label %136

131:                                              ; preds = %126
  %132 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %133 = call i32 @PHY_SETBITS(%struct.bwi_mac* %132, i32 2049, i32 128)
  %134 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %135 = call i32 @PHY_SETBITS(%struct.bwi_mac* %134, i32 1086, i32 4)
  br label %136

136:                                              ; preds = %131, %126
  %137 = load %struct.bwi_phy*, %struct.bwi_phy** %4, align 8
  %138 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = icmp sge i32 %139, 2
  br i1 %140, label %141, label %151

141:                                              ; preds = %136
  %142 = load %struct.bwi_phy*, %struct.bwi_phy** %4, align 8
  %143 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @BWI_PHY_F_LINKED, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %141
  %149 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %150 = call i32 @bwi_rf_get_gains(%struct.bwi_mac* %149)
  br label %151

151:                                              ; preds = %148, %141, %136
  %152 = load %struct.bwi_rf*, %struct.bwi_rf** %5, align 8
  %153 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = icmp ne i32 %154, 8
  br i1 %155, label %156, label %159

156:                                              ; preds = %151
  %157 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %158 = call i32 @bwi_rf_init(%struct.bwi_mac* %157)
  br label %159

159:                                              ; preds = %156, %151
  %160 = load %struct.bwi_tpctl*, %struct.bwi_tpctl** %6, align 8
  %161 = getelementptr inbounds %struct.bwi_tpctl, %struct.bwi_tpctl* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = icmp eq i32 %162, 65535
  br i1 %163, label %164, label %167

164:                                              ; preds = %159
  %165 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %166 = call i32 @bwi_rf_lo_update(%struct.bwi_mac* %165)
  br label %232

167:                                              ; preds = %159
  %168 = load %struct.bwi_rf*, %struct.bwi_rf** %5, align 8
  %169 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @BWI_RF_T_BCM2050, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %189

173:                                              ; preds = %167
  %174 = load %struct.bwi_rf*, %struct.bwi_rf** %5, align 8
  %175 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = icmp eq i32 %176, 8
  br i1 %177, label %178, label %189

178:                                              ; preds = %173
  %179 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %180 = load %struct.bwi_tpctl*, %struct.bwi_tpctl** %6, align 8
  %181 = getelementptr inbounds %struct.bwi_tpctl, %struct.bwi_tpctl* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = shl i32 %182, 4
  %184 = load %struct.bwi_tpctl*, %struct.bwi_tpctl** %6, align 8
  %185 = getelementptr inbounds %struct.bwi_tpctl, %struct.bwi_tpctl* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = or i32 %183, %186
  %188 = call i32 @RF_WRITE(%struct.bwi_mac* %179, i32 82, i32 %187)
  br label %195

189:                                              ; preds = %173, %167
  %190 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %191 = load %struct.bwi_tpctl*, %struct.bwi_tpctl** %6, align 8
  %192 = getelementptr inbounds %struct.bwi_tpctl, %struct.bwi_tpctl* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @RF_FILT_SETBITS(%struct.bwi_mac* %190, i32 82, i32 65520, i32 %193)
  br label %195

195:                                              ; preds = %189, %178
  %196 = load %struct.bwi_phy*, %struct.bwi_phy** %4, align 8
  %197 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = icmp sge i32 %198, 6
  br i1 %199, label %200, label %207

200:                                              ; preds = %195
  %201 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %202 = load %struct.bwi_tpctl*, %struct.bwi_tpctl** %6, align 8
  %203 = getelementptr inbounds %struct.bwi_tpctl, %struct.bwi_tpctl* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = shl i32 %204, 12
  %206 = call i32 @PHY_FILT_SETBITS(%struct.bwi_mac* %201, i32 54, i32 4095, i32 %205)
  br label %207

207:                                              ; preds = %200, %195
  %208 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %209 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @BWI_CARD_F_PA_GPIO9, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %207
  %215 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %216 = call i32 @PHY_WRITE(%struct.bwi_mac* %215, i32 46, i32 32885)
  br label %220

217:                                              ; preds = %207
  %218 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %219 = call i32 @PHY_WRITE(%struct.bwi_mac* %218, i32 46, i32 32895)
  br label %220

220:                                              ; preds = %217, %214
  %221 = load %struct.bwi_phy*, %struct.bwi_phy** %4, align 8
  %222 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = icmp slt i32 %223, 2
  br i1 %224, label %225, label %228

225:                                              ; preds = %220
  %226 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %227 = call i32 @PHY_WRITE(%struct.bwi_mac* %226, i32 47, i32 257)
  br label %231

228:                                              ; preds = %220
  %229 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %230 = call i32 @PHY_WRITE(%struct.bwi_mac* %229, i32 47, i32 514)
  br label %231

231:                                              ; preds = %228, %225
  br label %232

232:                                              ; preds = %231, %164
  %233 = load %struct.bwi_phy*, %struct.bwi_phy** %4, align 8
  %234 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* @BWI_PHY_F_LINKED, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %244, label %239

239:                                              ; preds = %232
  %240 = load %struct.bwi_phy*, %struct.bwi_phy** %4, align 8
  %241 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = icmp sge i32 %242, 2
  br i1 %243, label %244, label %250

244:                                              ; preds = %239, %232
  %245 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %246 = load %struct.bwi_tpctl*, %struct.bwi_tpctl** %6, align 8
  %247 = call i32 @bwi_rf_lo_adjust(%struct.bwi_mac* %245, %struct.bwi_tpctl* %246)
  %248 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %249 = call i32 @PHY_WRITE(%struct.bwi_mac* %248, i32 2063, i32 32888)
  br label %250

250:                                              ; preds = %244, %239
  %251 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %252 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* @BWI_CARD_F_SW_NRSSI, align 4
  %255 = and i32 %253, %254
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %257, label %262

257:                                              ; preds = %250
  %258 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %259 = call i32 @bwi_rf_init_hw_nrssi_table(%struct.bwi_mac* %258, i32 65535)
  %260 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %261 = call i32 @bwi_rf_set_nrssi_thr(%struct.bwi_mac* %260)
  br label %320

262:                                              ; preds = %250
  %263 = load %struct.bwi_phy*, %struct.bwi_phy** %4, align 8
  %264 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* @BWI_PHY_F_LINKED, align 4
  %267 = and i32 %265, %266
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %274, label %269

269:                                              ; preds = %262
  %270 = load %struct.bwi_phy*, %struct.bwi_phy** %4, align 8
  %271 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = icmp sge i32 %272, 2
  br i1 %273, label %274, label %319

274:                                              ; preds = %269, %262
  %275 = load %struct.bwi_rf*, %struct.bwi_rf** %5, align 8
  %276 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %275, i32 0, i32 2
  %277 = load i64*, i64** %276, align 8
  %278 = getelementptr inbounds i64, i64* %277, i64 0
  %279 = load i64, i64* %278, align 8
  %280 = load i64, i64* @BWI_INVALID_NRSSI, align 8
  %281 = icmp eq i64 %279, %280
  br i1 %281, label %282, label %300

282:                                              ; preds = %274
  %283 = load %struct.bwi_rf*, %struct.bwi_rf** %5, align 8
  %284 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %283, i32 0, i32 2
  %285 = load i64*, i64** %284, align 8
  %286 = getelementptr inbounds i64, i64* %285, i64 1
  %287 = load i64, i64* %286, align 8
  %288 = load i64, i64* @BWI_INVALID_NRSSI, align 8
  %289 = icmp eq i64 %287, %288
  %290 = zext i1 %289 to i32
  %291 = load %struct.bwi_rf*, %struct.bwi_rf** %5, align 8
  %292 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %291, i32 0, i32 2
  %293 = load i64*, i64** %292, align 8
  %294 = getelementptr inbounds i64, i64* %293, i64 1
  %295 = load i64, i64* %294, align 8
  %296 = inttoptr i64 %295 to i8*
  %297 = call i32 @KASSERT(i32 %290, i8* %296)
  %298 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %299 = call i32 @bwi_rf_calc_nrssi_slope(%struct.bwi_mac* %298)
  br label %318

300:                                              ; preds = %274
  %301 = load %struct.bwi_rf*, %struct.bwi_rf** %5, align 8
  %302 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %301, i32 0, i32 2
  %303 = load i64*, i64** %302, align 8
  %304 = getelementptr inbounds i64, i64* %303, i64 1
  %305 = load i64, i64* %304, align 8
  %306 = load i64, i64* @BWI_INVALID_NRSSI, align 8
  %307 = icmp ne i64 %305, %306
  %308 = zext i1 %307 to i32
  %309 = load %struct.bwi_rf*, %struct.bwi_rf** %5, align 8
  %310 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %309, i32 0, i32 2
  %311 = load i64*, i64** %310, align 8
  %312 = getelementptr inbounds i64, i64* %311, i64 1
  %313 = load i64, i64* %312, align 8
  %314 = inttoptr i64 %313 to i8*
  %315 = call i32 @KASSERT(i32 %308, i8* %314)
  %316 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %317 = call i32 @bwi_rf_set_nrssi_thr(%struct.bwi_mac* %316)
  br label %318

318:                                              ; preds = %300, %282
  br label %319

319:                                              ; preds = %318, %269
  br label %320

320:                                              ; preds = %319, %257
  %321 = load %struct.bwi_rf*, %struct.bwi_rf** %5, align 8
  %322 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  %324 = icmp eq i32 %323, 8
  br i1 %324, label %325, label %328

325:                                              ; preds = %320
  %326 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %327 = call i32 @PHY_WRITE(%struct.bwi_mac* %326, i32 2053, i32 12848)
  br label %328

328:                                              ; preds = %325, %320
  %329 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %330 = call i32 @bwi_mac_init_tpctl_11bg(%struct.bwi_mac* %329)
  %331 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %332 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %331, i32 0, i32 1
  %333 = load i64, i64* %332, align 8
  %334 = load i64, i64* @BWI_BBPID_BCM4306, align 8
  %335 = icmp eq i64 %333, %334
  br i1 %335, label %336, label %346

336:                                              ; preds = %328
  %337 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %338 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %337, i32 0, i32 2
  %339 = load i32, i32* %338, align 8
  %340 = icmp eq i32 %339, 2
  br i1 %340, label %341, label %346

341:                                              ; preds = %336
  %342 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %343 = call i32 @PHY_CLRBITS(%struct.bwi_mac* %342, i32 1065, i32 16384)
  %344 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %345 = call i32 @PHY_CLRBITS(%struct.bwi_mac* %344, i32 1219, i32 32768)
  br label %346

346:                                              ; preds = %341, %336, %328
  ret void
}

declare dso_local i32 @bwi_phy_init_11b_rev5(%struct.bwi_mac*) #1

declare dso_local i32 @bwi_phy_init_11b_rev6(%struct.bwi_mac*) #1

declare dso_local i32 @bwi_phy_config_11g(%struct.bwi_mac*) #1

declare dso_local i32 @PHY_WRITE(%struct.bwi_mac*, i32, i32) #1

declare dso_local i32 @PHY_READ(%struct.bwi_mac*, i32) #1

declare dso_local i32 @PHY_FILT_SETBITS(%struct.bwi_mac*, i32, i32, i32) #1

declare dso_local i32 @PHY_SETBITS(%struct.bwi_mac*, i32, i32) #1

declare dso_local i32 @bwi_rf_get_gains(%struct.bwi_mac*) #1

declare dso_local i32 @bwi_rf_init(%struct.bwi_mac*) #1

declare dso_local i32 @bwi_rf_lo_update(%struct.bwi_mac*) #1

declare dso_local i32 @RF_WRITE(%struct.bwi_mac*, i32, i32) #1

declare dso_local i32 @RF_FILT_SETBITS(%struct.bwi_mac*, i32, i32, i32) #1

declare dso_local i32 @bwi_rf_lo_adjust(%struct.bwi_mac*, %struct.bwi_tpctl*) #1

declare dso_local i32 @bwi_rf_init_hw_nrssi_table(%struct.bwi_mac*, i32) #1

declare dso_local i32 @bwi_rf_set_nrssi_thr(%struct.bwi_mac*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @bwi_rf_calc_nrssi_slope(%struct.bwi_mac*) #1

declare dso_local i32 @bwi_mac_init_tpctl_11bg(%struct.bwi_mac*) #1

declare dso_local i32 @PHY_CLRBITS(%struct.bwi_mac*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
