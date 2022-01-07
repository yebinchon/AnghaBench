; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwiphy.c_bwi_phy_config_11g.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwiphy.c_bwi_phy_config_11g.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_mac = type { %struct.bwi_phy, %struct.bwi_softc* }
%struct.bwi_phy = type { i32 }
%struct.bwi_softc = type { i32, i32 }

@bwi_phy_freq_11g_rev1 = common dso_local global i32* null, align 8
@BWI_PHYTBL_FREQ = common dso_local global i32 0, align 4
@bwi_phy_noise_11g_rev1 = common dso_local global i32* null, align 8
@BWI_PHYTBL_NOISE = common dso_local global i32 0, align 4
@bwi_phy_rotor_11g_rev1 = common dso_local global i32* null, align 8
@BWI_PHYTBL_ROTOR = common dso_local global i64 0, align 8
@BWI_PHYTBL_RSSI = common dso_local global i32 0, align 4
@bwi_phy_noise_11g = common dso_local global i32* null, align 8
@bwi_phy_noise_scale_11g_rev2 = common dso_local global i32* null, align 8
@bwi_phy_noise_scale_11g_rev7 = common dso_local global i32* null, align 8
@bwi_phy_noise_scale_11g = common dso_local global i32* null, align 8
@BWI_PHYTBL_NOISE_SCALE = common dso_local global i32 0, align 4
@bwi_phy_sigma_sq_11g_rev2 = common dso_local global i32* null, align 8
@bwi_phy_sigma_sq_11g_rev7 = common dso_local global i32* null, align 8
@BWI_PHYTBL_SIGMA_SQ = common dso_local global i32 0, align 4
@bwi_phy_delay_11g_rev1 = common dso_local global i32* null, align 8
@BWI_PHYTBL_DELAY = common dso_local global i64 0, align 8
@BWI_PHYTBL_WRSSI_REV1 = common dso_local global i32 0, align 4
@BWI_PHYTBL_WRSSI = common dso_local global i32 0, align 4
@BWI_CARD_F_PA_GPIO9 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwi_mac*)* @bwi_phy_config_11g to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwi_phy_config_11g(%struct.bwi_mac* %0) #0 {
  %2 = alloca %struct.bwi_mac*, align 8
  %3 = alloca %struct.bwi_softc*, align 8
  %4 = alloca %struct.bwi_phy*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bwi_mac* %0, %struct.bwi_mac** %2, align 8
  %10 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %11 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %10, i32 0, i32 1
  %12 = load %struct.bwi_softc*, %struct.bwi_softc** %11, align 8
  store %struct.bwi_softc* %12, %struct.bwi_softc** %3, align 8
  %13 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %14 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %13, i32 0, i32 0
  store %struct.bwi_phy* %14, %struct.bwi_phy** %4, align 8
  %15 = load %struct.bwi_phy*, %struct.bwi_phy** %4, align 8
  %16 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %89

19:                                               ; preds = %1
  %20 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %21 = call i32 @PHY_WRITE(%struct.bwi_mac* %20, i32 1030, i32 20249)
  %22 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %23 = call i32 @PHY_FILT_SETBITS(%struct.bwi_mac* %22, i32 1065, i32 64575, i32 832)
  %24 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %25 = call i32 @PHY_WRITE(%struct.bwi_mac* %24, i32 1068, i32 90)
  %26 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %27 = call i32 @PHY_WRITE(%struct.bwi_mac* %26, i32 1063, i32 26)
  store i32 0, i32* %8, align 4
  br label %28

28:                                               ; preds = %44, %19
  %29 = load i32, i32* %8, align 4
  %30 = load i32*, i32** @bwi_phy_freq_11g_rev1, align 8
  %31 = call i32 @nitems(i32* %30)
  %32 = icmp slt i32 %29, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %28
  %34 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %35 = load i32, i32* @BWI_PHYTBL_FREQ, align 4
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %35, %36
  %38 = load i32*, i32** @bwi_phy_freq_11g_rev1, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @bwi_tbl_write_2(%struct.bwi_mac* %34, i32 %37, i32 %42)
  br label %44

44:                                               ; preds = %33
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %8, align 4
  br label %28

47:                                               ; preds = %28
  store i32 0, i32* %8, align 4
  br label %48

48:                                               ; preds = %64, %47
  %49 = load i32, i32* %8, align 4
  %50 = load i32*, i32** @bwi_phy_noise_11g_rev1, align 8
  %51 = call i32 @nitems(i32* %50)
  %52 = icmp slt i32 %49, %51
  br i1 %52, label %53, label %67

53:                                               ; preds = %48
  %54 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %55 = load i32, i32* @BWI_PHYTBL_NOISE, align 4
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %55, %56
  %58 = load i32*, i32** @bwi_phy_noise_11g_rev1, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @bwi_tbl_write_2(%struct.bwi_mac* %54, i32 %57, i32 %62)
  br label %64

64:                                               ; preds = %53
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %48

67:                                               ; preds = %48
  store i32 0, i32* %8, align 4
  br label %68

68:                                               ; preds = %85, %67
  %69 = load i32, i32* %8, align 4
  %70 = load i32*, i32** @bwi_phy_rotor_11g_rev1, align 8
  %71 = call i32 @nitems(i32* %70)
  %72 = icmp slt i32 %69, %71
  br i1 %72, label %73, label %88

73:                                               ; preds = %68
  %74 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %75 = load i64, i64* @BWI_PHYTBL_ROTOR, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %75, %77
  %79 = load i32*, i32** @bwi_phy_rotor_11g_rev1, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @bwi_tbl_write_4(%struct.bwi_mac* %74, i64 %78, i32 %83)
  br label %85

85:                                               ; preds = %73
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %8, align 4
  br label %68

88:                                               ; preds = %68
  br label %151

89:                                               ; preds = %1
  %90 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %91 = call i32 @bwi_nrssi_write(%struct.bwi_mac* %90, i32 47768, i32 30292)
  %92 = load %struct.bwi_phy*, %struct.bwi_phy** %4, align 8
  %93 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %94, 2
  br i1 %95, label %96, label %101

96:                                               ; preds = %89
  %97 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %98 = call i32 @PHY_WRITE(%struct.bwi_mac* %97, i32 1216, i32 6241)
  %99 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %100 = call i32 @PHY_WRITE(%struct.bwi_mac* %99, i32 1217, i32 625)
  br label %114

101:                                              ; preds = %89
  %102 = load %struct.bwi_phy*, %struct.bwi_phy** %4, align 8
  %103 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp sgt i32 %104, 2
  br i1 %105, label %106, label %113

106:                                              ; preds = %101
  %107 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %108 = call i32 @PHY_WRITE(%struct.bwi_mac* %107, i32 1216, i32 152)
  %109 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %110 = call i32 @PHY_WRITE(%struct.bwi_mac* %109, i32 1217, i32 112)
  %111 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %112 = call i32 @PHY_WRITE(%struct.bwi_mac* %111, i32 1225, i32 128)
  br label %113

113:                                              ; preds = %106, %101
  br label %114

114:                                              ; preds = %113, %96
  %115 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %116 = call i32 @PHY_SETBITS(%struct.bwi_mac* %115, i32 1067, i32 2048)
  store i32 0, i32* %8, align 4
  br label %117

117:                                              ; preds = %127, %114
  %118 = load i32, i32* %8, align 4
  %119 = icmp slt i32 %118, 64
  br i1 %119, label %120, label %130

120:                                              ; preds = %117
  %121 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %122 = load i32, i32* @BWI_PHYTBL_RSSI, align 4
  %123 = load i32, i32* %8, align 4
  %124 = add nsw i32 %122, %123
  %125 = load i32, i32* %8, align 4
  %126 = call i32 @bwi_tbl_write_2(%struct.bwi_mac* %121, i32 %124, i32 %125)
  br label %127

127:                                              ; preds = %120
  %128 = load i32, i32* %8, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %8, align 4
  br label %117

130:                                              ; preds = %117
  store i32 0, i32* %8, align 4
  br label %131

131:                                              ; preds = %147, %130
  %132 = load i32, i32* %8, align 4
  %133 = load i32*, i32** @bwi_phy_noise_11g, align 8
  %134 = call i32 @nitems(i32* %133)
  %135 = icmp slt i32 %132, %134
  br i1 %135, label %136, label %150

136:                                              ; preds = %131
  %137 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %138 = load i32, i32* @BWI_PHYTBL_NOISE, align 4
  %139 = load i32, i32* %8, align 4
  %140 = add nsw i32 %138, %139
  %141 = load i32*, i32** @bwi_phy_noise_11g, align 8
  %142 = load i32, i32* %8, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @bwi_tbl_write_2(%struct.bwi_mac* %137, i32 %140, i32 %145)
  br label %147

147:                                              ; preds = %136
  %148 = load i32, i32* %8, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %8, align 4
  br label %131

150:                                              ; preds = %131
  br label %151

151:                                              ; preds = %150, %88
  %152 = load %struct.bwi_phy*, %struct.bwi_phy** %4, align 8
  %153 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = icmp sle i32 %154, 2
  br i1 %155, label %156, label %160

156:                                              ; preds = %151
  %157 = load i32*, i32** @bwi_phy_noise_scale_11g_rev2, align 8
  store i32* %157, i32** %5, align 8
  %158 = load i32*, i32** @bwi_phy_noise_scale_11g_rev2, align 8
  %159 = call i32 @nitems(i32* %158)
  store i32 %159, i32* %9, align 4
  br label %179

160:                                              ; preds = %151
  %161 = load %struct.bwi_phy*, %struct.bwi_phy** %4, align 8
  %162 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = icmp sge i32 %163, 7
  br i1 %164, label %165, label %174

165:                                              ; preds = %160
  %166 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %167 = call i32 @PHY_READ(%struct.bwi_mac* %166, i32 1097)
  %168 = and i32 %167, 512
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %165
  %171 = load i32*, i32** @bwi_phy_noise_scale_11g_rev7, align 8
  store i32* %171, i32** %5, align 8
  %172 = load i32*, i32** @bwi_phy_noise_scale_11g_rev7, align 8
  %173 = call i32 @nitems(i32* %172)
  store i32 %173, i32* %9, align 4
  br label %178

174:                                              ; preds = %165, %160
  %175 = load i32*, i32** @bwi_phy_noise_scale_11g, align 8
  store i32* %175, i32** %5, align 8
  %176 = load i32*, i32** @bwi_phy_noise_scale_11g, align 8
  %177 = call i32 @nitems(i32* %176)
  store i32 %177, i32* %9, align 4
  br label %178

178:                                              ; preds = %174, %170
  br label %179

179:                                              ; preds = %178, %156
  store i32 0, i32* %8, align 4
  br label %180

180:                                              ; preds = %195, %179
  %181 = load i32, i32* %8, align 4
  %182 = load i32, i32* %9, align 4
  %183 = icmp slt i32 %181, %182
  br i1 %183, label %184, label %198

184:                                              ; preds = %180
  %185 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %186 = load i32, i32* @BWI_PHYTBL_NOISE_SCALE, align 4
  %187 = load i32, i32* %8, align 4
  %188 = add nsw i32 %186, %187
  %189 = load i32*, i32** %5, align 8
  %190 = load i32, i32* %8, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @bwi_tbl_write_2(%struct.bwi_mac* %185, i32 %188, i32 %193)
  br label %195

195:                                              ; preds = %184
  %196 = load i32, i32* %8, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %8, align 4
  br label %180

198:                                              ; preds = %180
  %199 = load %struct.bwi_phy*, %struct.bwi_phy** %4, align 8
  %200 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = icmp eq i32 %201, 2
  br i1 %202, label %203, label %207

203:                                              ; preds = %198
  %204 = load i32*, i32** @bwi_phy_sigma_sq_11g_rev2, align 8
  store i32* %204, i32** %5, align 8
  %205 = load i32*, i32** @bwi_phy_sigma_sq_11g_rev2, align 8
  %206 = call i32 @nitems(i32* %205)
  store i32 %206, i32* %9, align 4
  br label %223

207:                                              ; preds = %198
  %208 = load %struct.bwi_phy*, %struct.bwi_phy** %4, align 8
  %209 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = icmp sgt i32 %210, 2
  br i1 %211, label %212, label %221

212:                                              ; preds = %207
  %213 = load %struct.bwi_phy*, %struct.bwi_phy** %4, align 8
  %214 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = icmp sle i32 %215, 8
  br i1 %216, label %217, label %221

217:                                              ; preds = %212
  %218 = load i32*, i32** @bwi_phy_sigma_sq_11g_rev7, align 8
  store i32* %218, i32** %5, align 8
  %219 = load i32*, i32** @bwi_phy_sigma_sq_11g_rev7, align 8
  %220 = call i32 @nitems(i32* %219)
  store i32 %220, i32* %9, align 4
  br label %222

221:                                              ; preds = %212, %207
  store i32* null, i32** %5, align 8
  store i32 0, i32* %9, align 4
  br label %222

222:                                              ; preds = %221, %217
  br label %223

223:                                              ; preds = %222, %203
  store i32 0, i32* %8, align 4
  br label %224

224:                                              ; preds = %239, %223
  %225 = load i32, i32* %8, align 4
  %226 = load i32, i32* %9, align 4
  %227 = icmp slt i32 %225, %226
  br i1 %227, label %228, label %242

228:                                              ; preds = %224
  %229 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %230 = load i32, i32* @BWI_PHYTBL_SIGMA_SQ, align 4
  %231 = load i32, i32* %8, align 4
  %232 = add nsw i32 %230, %231
  %233 = load i32*, i32** %5, align 8
  %234 = load i32, i32* %8, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %233, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @bwi_tbl_write_2(%struct.bwi_mac* %229, i32 %232, i32 %237)
  br label %239

239:                                              ; preds = %228
  %240 = load i32, i32* %8, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %8, align 4
  br label %224

242:                                              ; preds = %224
  %243 = load %struct.bwi_phy*, %struct.bwi_phy** %4, align 8
  %244 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = icmp eq i32 %245, 1
  br i1 %246, label %247, label %284

247:                                              ; preds = %242
  store i32 0, i32* %8, align 4
  br label %248

248:                                              ; preds = %265, %247
  %249 = load i32, i32* %8, align 4
  %250 = load i32*, i32** @bwi_phy_delay_11g_rev1, align 8
  %251 = call i32 @nitems(i32* %250)
  %252 = icmp slt i32 %249, %251
  br i1 %252, label %253, label %268

253:                                              ; preds = %248
  %254 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %255 = load i64, i64* @BWI_PHYTBL_DELAY, align 8
  %256 = load i32, i32* %8, align 4
  %257 = sext i32 %256 to i64
  %258 = add nsw i64 %255, %257
  %259 = load i32*, i32** @bwi_phy_delay_11g_rev1, align 8
  %260 = load i32, i32* %8, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %259, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = call i32 @bwi_tbl_write_4(%struct.bwi_mac* %254, i64 %258, i32 %263)
  br label %265

265:                                              ; preds = %253
  %266 = load i32, i32* %8, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %8, align 4
  br label %248

268:                                              ; preds = %248
  store i32 4, i32* %8, align 4
  br label %269

269:                                              ; preds = %278, %268
  %270 = load i32, i32* %8, align 4
  %271 = icmp slt i32 %270, 20
  br i1 %271, label %272, label %281

272:                                              ; preds = %269
  %273 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %274 = load i32, i32* @BWI_PHYTBL_WRSSI_REV1, align 4
  %275 = load i32, i32* %8, align 4
  %276 = add nsw i32 %274, %275
  %277 = call i32 @bwi_tbl_write_2(%struct.bwi_mac* %273, i32 %276, i32 32)
  br label %278

278:                                              ; preds = %272
  %279 = load i32, i32* %8, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %8, align 4
  br label %269

281:                                              ; preds = %269
  %282 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %283 = call i32 @bwi_phy_config_agc(%struct.bwi_mac* %282)
  store i32 20481, i32* %6, align 4
  store i32 20482, i32* %7, align 4
  br label %308

284:                                              ; preds = %242
  store i32 0, i32* %8, align 4
  br label %285

285:                                              ; preds = %294, %284
  %286 = load i32, i32* %8, align 4
  %287 = icmp slt i32 %286, 32
  br i1 %287, label %288, label %297

288:                                              ; preds = %285
  %289 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %290 = load i32, i32* @BWI_PHYTBL_WRSSI, align 4
  %291 = load i32, i32* %8, align 4
  %292 = add nsw i32 %290, %291
  %293 = call i32 @bwi_tbl_write_2(%struct.bwi_mac* %289, i32 %292, i32 2080)
  br label %294

294:                                              ; preds = %288
  %295 = load i32, i32* %8, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %8, align 4
  br label %285

297:                                              ; preds = %285
  %298 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %299 = call i32 @bwi_phy_config_agc(%struct.bwi_mac* %298)
  %300 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %301 = call i32 @PHY_READ(%struct.bwi_mac* %300, i32 1024)
  %302 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %303 = call i32 @PHY_WRITE(%struct.bwi_mac* %302, i32 1027, i32 4096)
  %304 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %305 = call i32 @bwi_tbl_write_2(%struct.bwi_mac* %304, i32 15362, i32 15)
  %306 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %307 = call i32 @bwi_tbl_write_2(%struct.bwi_mac* %306, i32 15363, i32 20)
  store i32 1025, i32* %6, align 4
  store i32 1026, i32* %7, align 4
  br label %308

308:                                              ; preds = %297, %281
  %309 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %310 = call i64 @BWI_IS_BRCM_BU4306(%struct.bwi_softc* %309)
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %317

312:                                              ; preds = %308
  %313 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %314 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 4
  %316 = icmp eq i32 %315, 23
  br i1 %316, label %324, label %317

317:                                              ; preds = %312, %308
  %318 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %319 = load i32, i32* %6, align 4
  %320 = call i32 @bwi_tbl_write_2(%struct.bwi_mac* %318, i32 %319, i32 2)
  %321 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %322 = load i32, i32* %7, align 4
  %323 = call i32 @bwi_tbl_write_2(%struct.bwi_mac* %321, i32 %322, i32 1)
  br label %324

324:                                              ; preds = %317, %312
  %325 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %326 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %325, i32 0, i32 1
  %327 = load i32, i32* %326, align 4
  %328 = load i32, i32* @BWI_CARD_F_PA_GPIO9, align 4
  %329 = and i32 %327, %328
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %334

331:                                              ; preds = %324
  %332 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %333 = call i32 @PHY_WRITE(%struct.bwi_mac* %332, i32 1134, i32 975)
  br label %334

334:                                              ; preds = %331, %324
  ret void
}

declare dso_local i32 @PHY_WRITE(%struct.bwi_mac*, i32, i32) #1

declare dso_local i32 @PHY_FILT_SETBITS(%struct.bwi_mac*, i32, i32, i32) #1

declare dso_local i32 @nitems(i32*) #1

declare dso_local i32 @bwi_tbl_write_2(%struct.bwi_mac*, i32, i32) #1

declare dso_local i32 @bwi_tbl_write_4(%struct.bwi_mac*, i64, i32) #1

declare dso_local i32 @bwi_nrssi_write(%struct.bwi_mac*, i32, i32) #1

declare dso_local i32 @PHY_SETBITS(%struct.bwi_mac*, i32, i32) #1

declare dso_local i32 @PHY_READ(%struct.bwi_mac*, i32) #1

declare dso_local i32 @bwi_phy_config_agc(%struct.bwi_mac*) #1

declare dso_local i64 @BWI_IS_BRCM_BU4306(%struct.bwi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
