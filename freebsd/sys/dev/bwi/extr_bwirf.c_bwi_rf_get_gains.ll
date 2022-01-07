; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwirf.c_bwi_rf_get_gains.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwirf.c_bwi_rf_get_gains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_mac = type { %struct.bwi_softc*, %struct.TYPE_2__, %struct.bwi_rf, %struct.bwi_phy }
%struct.bwi_softc = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.bwi_rf = type { i32, i32, i32 }
%struct.bwi_phy = type { i32 }

@bwi_rf_get_gains.save_rf_regs = internal constant [3 x i32] [i32 82, i32 67, i32 122], align 4
@bwi_rf_get_gains.save_phy_regs = internal constant [15 x i32] [i32 1065, i32 1, i32 2065, i32 2066, i32 2068, i32 2069, i32 90, i32 89, i32 88, i32 10, i32 3, i32 2063, i32 2064, i32 43, i32 21], align 16
@BWI_CARD_F_EXT_LNA = common dso_local global i32 0, align 4
@BWI_DBG_RF = common dso_local global i32 0, align 4
@BWI_DBG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"lo gain: %u, rx gain: %u\0A\00", align 1
@SAVE_PHY_MAX = common dso_local global i32 0, align 4
@SAVE_RF_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bwi_rf_get_gains(%struct.bwi_mac* %0) #0 {
  %2 = alloca %struct.bwi_mac*, align 8
  %3 = alloca %struct.bwi_softc*, align 8
  %4 = alloca %struct.bwi_phy*, align 8
  %5 = alloca %struct.bwi_rf*, align 8
  %6 = alloca [15 x i32], align 16
  %7 = alloca [3 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.bwi_mac* %0, %struct.bwi_mac** %2, align 8
  %14 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %15 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %14, i32 0, i32 0
  %16 = load %struct.bwi_softc*, %struct.bwi_softc** %15, align 8
  store %struct.bwi_softc* %16, %struct.bwi_softc** %3, align 8
  %17 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %18 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %17, i32 0, i32 3
  store %struct.bwi_phy* %18, %struct.bwi_phy** %4, align 8
  %19 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %20 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %19, i32 0, i32 2
  store %struct.bwi_rf* %20, %struct.bwi_rf** %5, align 8
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %34, %1
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %22, 15
  br i1 %23, label %24, label %37

24:                                               ; preds = %21
  %25 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [15 x i32], [15 x i32]* @bwi_rf_get_gains.save_phy_regs, i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @PHY_READ(%struct.bwi_mac* %25, i32 %29)
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [15 x i32], [15 x i32]* %6, i64 0, i64 %32
  store i32 %30, i32* %33, align 4
  br label %34

34:                                               ; preds = %24
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %9, align 4
  br label %21

37:                                               ; preds = %21
  %38 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %39 = call i32 @PHY_READ(%struct.bwi_mac* %38, i32 45)
  store i32 0, i32* %9, align 4
  br label %40

40:                                               ; preds = %53, %37
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %41, 3
  br i1 %42, label %43, label %56

43:                                               ; preds = %40
  %44 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [3 x i32], [3 x i32]* @bwi_rf_get_gains.save_rf_regs, i64 0, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @RF_READ(%struct.bwi_mac* %44, i32 %48)
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 %51
  store i32 %49, i32* %52, align 4
  br label %53

53:                                               ; preds = %43
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %9, align 4
  br label %40

56:                                               ; preds = %40
  %57 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %58 = call i32 @PHY_CLRBITS(%struct.bwi_mac* %57, i32 1065, i32 49152)
  %59 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %60 = call i32 @PHY_SETBITS(%struct.bwi_mac* %59, i32 1, i32 32768)
  %61 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %62 = call i32 @PHY_SETBITS(%struct.bwi_mac* %61, i32 2065, i32 2)
  %63 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %64 = call i32 @PHY_CLRBITS(%struct.bwi_mac* %63, i32 2066, i32 2)
  %65 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %66 = call i32 @PHY_SETBITS(%struct.bwi_mac* %65, i32 2065, i32 1)
  %67 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %68 = call i32 @PHY_CLRBITS(%struct.bwi_mac* %67, i32 2066, i32 1)
  %69 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %70 = call i32 @PHY_SETBITS(%struct.bwi_mac* %69, i32 2068, i32 1)
  %71 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %72 = call i32 @PHY_CLRBITS(%struct.bwi_mac* %71, i32 2069, i32 1)
  %73 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %74 = call i32 @PHY_SETBITS(%struct.bwi_mac* %73, i32 2068, i32 2)
  %75 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %76 = call i32 @PHY_CLRBITS(%struct.bwi_mac* %75, i32 2069, i32 2)
  %77 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %78 = call i32 @PHY_SETBITS(%struct.bwi_mac* %77, i32 2065, i32 12)
  %79 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %80 = call i32 @PHY_SETBITS(%struct.bwi_mac* %79, i32 2066, i32 12)
  %81 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %82 = call i32 @PHY_SETBITS(%struct.bwi_mac* %81, i32 2065, i32 48)
  %83 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %84 = call i32 @PHY_FILT_SETBITS(%struct.bwi_mac* %83, i32 2066, i32 65487, i32 16)
  %85 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %86 = call i32 @PHY_WRITE(%struct.bwi_mac* %85, i32 90, i32 1920)
  %87 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %88 = call i32 @PHY_WRITE(%struct.bwi_mac* %87, i32 89, i32 51216)
  %89 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %90 = call i32 @PHY_WRITE(%struct.bwi_mac* %89, i32 88, i32 13)
  %91 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %92 = call i32 @PHY_SETBITS(%struct.bwi_mac* %91, i32 10, i32 8192)
  %93 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %94 = call i32 @PHY_SETBITS(%struct.bwi_mac* %93, i32 2068, i32 4)
  %95 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %96 = call i32 @PHY_CLRBITS(%struct.bwi_mac* %95, i32 2069, i32 4)
  %97 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %98 = call i32 @PHY_FILT_SETBITS(%struct.bwi_mac* %97, i32 3, i32 65439, i32 64)
  %99 = load %struct.bwi_rf*, %struct.bwi_rf** %5, align 8
  %100 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp eq i32 %101, 8
  br i1 %102, label %103, label %107

103:                                              ; preds = %56
  store i32 15, i32* %11, align 4
  %104 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %105 = load i32, i32* %11, align 4
  %106 = call i32 @RF_WRITE(%struct.bwi_mac* %104, i32 67, i32 %105)
  br label %113

107:                                              ; preds = %56
  store i32 9, i32* %11, align 4
  %108 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %109 = call i32 @RF_WRITE(%struct.bwi_mac* %108, i32 82, i32 0)
  %110 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %111 = load i32, i32* %11, align 4
  %112 = call i32 @RF_FILT_SETBITS(%struct.bwi_mac* %110, i32 67, i32 65520, i32 %111)
  br label %113

113:                                              ; preds = %107, %103
  %114 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %115 = call i32 @bwi_phy_set_bbp_atten(%struct.bwi_mac* %114, i32 11)
  %116 = load %struct.bwi_phy*, %struct.bwi_phy** %4, align 8
  %117 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp sge i32 %118, 3
  br i1 %119, label %120, label %123

120:                                              ; preds = %113
  %121 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %122 = call i32 @PHY_WRITE(%struct.bwi_mac* %121, i32 2063, i32 49184)
  br label %126

123:                                              ; preds = %113
  %124 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %125 = call i32 @PHY_WRITE(%struct.bwi_mac* %124, i32 2063, i32 32800)
  br label %126

126:                                              ; preds = %123, %120
  %127 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %128 = call i32 @PHY_WRITE(%struct.bwi_mac* %127, i32 2064, i32 0)
  %129 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %130 = call i32 @PHY_FILT_SETBITS(%struct.bwi_mac* %129, i32 43, i32 65472, i32 1)
  %131 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %132 = call i32 @PHY_FILT_SETBITS(%struct.bwi_mac* %131, i32 43, i32 49407, i32 2048)
  %133 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %134 = call i32 @PHY_SETBITS(%struct.bwi_mac* %133, i32 2065, i32 256)
  %135 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %136 = call i32 @PHY_CLRBITS(%struct.bwi_mac* %135, i32 2066, i32 12288)
  %137 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %138 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @BWI_CARD_F_EXT_LNA, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %153

143:                                              ; preds = %126
  %144 = load %struct.bwi_phy*, %struct.bwi_phy** %4, align 8
  %145 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = icmp sge i32 %146, 7
  br i1 %147, label %148, label %153

148:                                              ; preds = %143
  %149 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %150 = call i32 @PHY_SETBITS(%struct.bwi_mac* %149, i32 2065, i32 2048)
  %151 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %152 = call i32 @PHY_SETBITS(%struct.bwi_mac* %151, i32 2066, i32 32768)
  br label %153

153:                                              ; preds = %148, %143, %126
  %154 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %155 = call i32 @RF_CLRBITS(%struct.bwi_mac* %154, i32 122, i32 65288)
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %156

156:                                              ; preds = %178, %153
  %157 = load i32, i32* %9, align 4
  %158 = load i32, i32* %11, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %160, label %181

160:                                              ; preds = %156
  store i32 0, i32* %10, align 4
  br label %161

161:                                              ; preds = %174, %160
  %162 = load i32, i32* %10, align 4
  %163 = icmp slt i32 %162, 16
  br i1 %163, label %164, label %177

164:                                              ; preds = %161
  %165 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %166 = load i32, i32* %9, align 4
  %167 = call i32 @RF_WRITE(%struct.bwi_mac* %165, i32 67, i32 %166)
  %168 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %169 = load i32, i32* %10, align 4
  %170 = call i64 @bwi_rf_gain_max_reached(%struct.bwi_mac* %168, i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %164
  br label %182

173:                                              ; preds = %164
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %10, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %10, align 4
  br label %161

177:                                              ; preds = %161
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %9, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %9, align 4
  br label %156

181:                                              ; preds = %156
  br label %182

182:                                              ; preds = %181, %172
  %183 = load i32, i32* %9, align 4
  store i32 %183, i32* %12, align 4
  %184 = load i32, i32* %10, align 4
  store i32 %184, i32* %13, align 4
  %185 = load i32, i32* %13, align 4
  %186 = icmp sge i32 %185, 8
  br i1 %186, label %187, label %208

187:                                              ; preds = %182
  %188 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %189 = call i32 @PHY_SETBITS(%struct.bwi_mac* %188, i32 2066, i32 48)
  store i32 27, i32* %8, align 4
  %190 = load i32, i32* %13, align 4
  %191 = sub nsw i32 %190, 8
  store i32 %191, i32* %9, align 4
  br label %192

192:                                              ; preds = %204, %187
  %193 = load i32, i32* %9, align 4
  %194 = icmp slt i32 %193, 16
  br i1 %194, label %195, label %207

195:                                              ; preds = %192
  %196 = load i32, i32* %8, align 4
  %197 = sub nsw i32 %196, 3
  store i32 %197, i32* %8, align 4
  %198 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %199 = load i32, i32* %9, align 4
  %200 = call i64 @bwi_rf_gain_max_reached(%struct.bwi_mac* %198, i32 %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %195
  br label %207

203:                                              ; preds = %195
  br label %204

204:                                              ; preds = %203
  %205 = load i32, i32* %9, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %9, align 4
  br label %192

207:                                              ; preds = %202, %192
  br label %209

208:                                              ; preds = %182
  store i32 24, i32* %8, align 4
  br label %209

209:                                              ; preds = %208, %207
  store i32 4, i32* %9, align 4
  br label %210

210:                                              ; preds = %224, %209
  %211 = load i32, i32* %9, align 4
  %212 = icmp slt i32 %211, 15
  br i1 %212, label %213, label %227

213:                                              ; preds = %210
  %214 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %215 = load i32, i32* %9, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds [15 x i32], [15 x i32]* @bwi_rf_get_gains.save_phy_regs, i64 0, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* %9, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds [15 x i32], [15 x i32]* %6, i64 0, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @PHY_WRITE(%struct.bwi_mac* %214, i32 %218, i32 %222)
  br label %224

224:                                              ; preds = %213
  %225 = load i32, i32* %9, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %9, align 4
  br label %210

227:                                              ; preds = %210
  %228 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %229 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %230 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = call i32 @bwi_phy_set_bbp_atten(%struct.bwi_mac* %228, i32 %232)
  store i32 0, i32* %9, align 4
  br label %234

234:                                              ; preds = %248, %227
  %235 = load i32, i32* %9, align 4
  %236 = icmp slt i32 %235, 3
  br i1 %236, label %237, label %251

237:                                              ; preds = %234
  %238 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %239 = load i32, i32* %9, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds [3 x i32], [3 x i32]* @bwi_rf_get_gains.save_rf_regs, i64 0, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* %9, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = call i32 @RF_WRITE(%struct.bwi_mac* %238, i32 %242, i32 %246)
  br label %248

248:                                              ; preds = %237
  %249 = load i32, i32* %9, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %9, align 4
  br label %234

251:                                              ; preds = %234
  %252 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %253 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @bwi_rf_get_gains.save_phy_regs, i64 0, i64 2), align 8
  %254 = getelementptr inbounds [15 x i32], [15 x i32]* %6, i64 0, i64 2
  %255 = load i32, i32* %254, align 8
  %256 = or i32 %255, 3
  %257 = call i32 @PHY_WRITE(%struct.bwi_mac* %252, i32 %253, i32 %256)
  %258 = call i32 @DELAY(i32 10)
  %259 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %260 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @bwi_rf_get_gains.save_phy_regs, i64 0, i64 2), align 8
  %261 = getelementptr inbounds [15 x i32], [15 x i32]* %6, i64 0, i64 2
  %262 = load i32, i32* %261, align 8
  %263 = call i32 @PHY_WRITE(%struct.bwi_mac* %259, i32 %260, i32 %262)
  %264 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %265 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @bwi_rf_get_gains.save_phy_regs, i64 0, i64 3), align 4
  %266 = getelementptr inbounds [15 x i32], [15 x i32]* %6, i64 0, i64 3
  %267 = load i32, i32* %266, align 4
  %268 = call i32 @PHY_WRITE(%struct.bwi_mac* %264, i32 %265, i32 %267)
  %269 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %270 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @bwi_rf_get_gains.save_phy_regs, i64 0, i64 0), align 16
  %271 = getelementptr inbounds [15 x i32], [15 x i32]* %6, i64 0, i64 0
  %272 = load i32, i32* %271, align 16
  %273 = call i32 @PHY_WRITE(%struct.bwi_mac* %269, i32 %270, i32 %272)
  %274 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %275 = load i32, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @bwi_rf_get_gains.save_phy_regs, i64 0, i64 1), align 4
  %276 = getelementptr inbounds [15 x i32], [15 x i32]* %6, i64 0, i64 1
  %277 = load i32, i32* %276, align 4
  %278 = call i32 @PHY_WRITE(%struct.bwi_mac* %274, i32 %275, i32 %277)
  %279 = load i32, i32* %13, align 4
  %280 = mul nsw i32 %279, 6
  %281 = load i32, i32* %12, align 4
  %282 = mul nsw i32 %281, 4
  %283 = sub nsw i32 %280, %282
  %284 = sub nsw i32 %283, 11
  %285 = load %struct.bwi_rf*, %struct.bwi_rf** %5, align 8
  %286 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %285, i32 0, i32 1
  store i32 %284, i32* %286, align 4
  %287 = load i32, i32* %8, align 4
  %288 = mul nsw i32 %287, 2
  %289 = load %struct.bwi_rf*, %struct.bwi_rf** %5, align 8
  %290 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %289, i32 0, i32 2
  store i32 %288, i32* %290, align 4
  %291 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %292 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %291, i32 0, i32 0
  %293 = load %struct.bwi_softc*, %struct.bwi_softc** %292, align 8
  %294 = load i32, i32* @BWI_DBG_RF, align 4
  %295 = load i32, i32* @BWI_DBG_INIT, align 4
  %296 = or i32 %294, %295
  %297 = load %struct.bwi_rf*, %struct.bwi_rf** %5, align 8
  %298 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = load %struct.bwi_rf*, %struct.bwi_rf** %5, align 8
  %301 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %300, i32 0, i32 2
  %302 = load i32, i32* %301, align 4
  %303 = call i32 @DPRINTF(%struct.bwi_softc* %293, i32 %296, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %299, i32 %302)
  ret void
}

declare dso_local i32 @PHY_READ(%struct.bwi_mac*, i32) #1

declare dso_local i32 @RF_READ(%struct.bwi_mac*, i32) #1

declare dso_local i32 @PHY_CLRBITS(%struct.bwi_mac*, i32, i32) #1

declare dso_local i32 @PHY_SETBITS(%struct.bwi_mac*, i32, i32) #1

declare dso_local i32 @PHY_FILT_SETBITS(%struct.bwi_mac*, i32, i32, i32) #1

declare dso_local i32 @PHY_WRITE(%struct.bwi_mac*, i32, i32) #1

declare dso_local i32 @RF_WRITE(%struct.bwi_mac*, i32, i32) #1

declare dso_local i32 @RF_FILT_SETBITS(%struct.bwi_mac*, i32, i32, i32) #1

declare dso_local i32 @bwi_phy_set_bbp_atten(%struct.bwi_mac*, i32) #1

declare dso_local i32 @RF_CLRBITS(%struct.bwi_mac*, i32, i32) #1

declare dso_local i64 @bwi_rf_gain_max_reached(%struct.bwi_mac*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @DPRINTF(%struct.bwi_softc*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
