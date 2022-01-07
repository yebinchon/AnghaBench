; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_rgephy.c_rgephy_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_rgephy.c_rgephy_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_softc = type { i32, i64, %struct.mii_data* }
%struct.mii_data = type { i32, i32 }

@IFM_AVALID = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@RGEPHY_MII_BMSR = common dso_local global i32 0, align 4
@RGEPHY_MII_BMCR = common dso_local global i32 0, align 4
@RGEPHY_BMCR_ISO = common dso_local global i32 0, align 4
@IFM_NONE = common dso_local global i32 0, align 4
@RGEPHY_BMCR_LOOP = common dso_local global i32 0, align 4
@IFM_LOOP = common dso_local global i32 0, align 4
@RGEPHY_BMCR_AUTOEN = common dso_local global i32 0, align 4
@RGEPHY_BMSR_ACOMP = common dso_local global i32 0, align 4
@MIIF_PHYPRIV0 = common dso_local global i32 0, align 4
@RGEPHY_8211B = common dso_local global i64 0, align 8
@RGEPHY_8211F = common dso_local global i64 0, align 8
@RGEPHY_F_MII_SSR = common dso_local global i32 0, align 4
@RGEPHY_F_SSR_SPD_MASK = common dso_local global i32 0, align 4
@IFM_1000_T = common dso_local global i32 0, align 4
@IFM_100_TX = common dso_local global i32 0, align 4
@IFM_10_T = common dso_local global i32 0, align 4
@RGEPHY_F_SSR_FDX = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@IFM_HDX = common dso_local global i32 0, align 4
@RGEPHY_MII_SSR = common dso_local global i32 0, align 4
@RGEPHY_SSR_SPD_MASK = common dso_local global i32 0, align 4
@RGEPHY_SSR_FDX = common dso_local global i32 0, align 4
@MIIF_PHYPRIV1 = common dso_local global i32 0, align 4
@URE_GMEDIASTAT = common dso_local global i32 0, align 4
@RL_GMEDIASTAT = common dso_local global i32 0, align 4
@RL_GMEDIASTAT_1000MBPS = common dso_local global i32 0, align 4
@RL_GMEDIASTAT_100MBPS = common dso_local global i32 0, align 4
@RL_GMEDIASTAT_10MBPS = common dso_local global i32 0, align 4
@RL_GMEDIASTAT_FDX = common dso_local global i32 0, align 4
@RGEPHY_MII_1000STS = common dso_local global i32 0, align 4
@RGEPHY_1000STS_MSR = common dso_local global i32 0, align 4
@IFM_ETH_MASTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mii_softc*)* @rgephy_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rgephy_status(%struct.mii_softc* %0) #0 {
  %2 = alloca %struct.mii_softc*, align 8
  %3 = alloca %struct.mii_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mii_softc* %0, %struct.mii_softc** %2, align 8
  %7 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %8 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %7, i32 0, i32 2
  %9 = load %struct.mii_data*, %struct.mii_data** %8, align 8
  store %struct.mii_data* %9, %struct.mii_data** %3, align 8
  %10 = load i32, i32* @IFM_AVALID, align 4
  %11 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %12 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @IFM_ETHER, align 4
  %14 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %15 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %17 = call i64 @rgephy_linkup(%struct.mii_softc* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load i32, i32* @IFM_ACTIVE, align 4
  %21 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %22 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  br label %25

25:                                               ; preds = %19, %1
  %26 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %27 = load i32, i32* @RGEPHY_MII_BMSR, align 4
  %28 = call i32 @PHY_READ(%struct.mii_softc* %26, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %30 = load i32, i32* @RGEPHY_MII_BMCR, align 4
  %31 = call i32 @PHY_READ(%struct.mii_softc* %29, i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @RGEPHY_BMCR_ISO, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %25
  %37 = load i32, i32* @IFM_NONE, align 4
  %38 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %39 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %43 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %42, i32 0, i32 1
  store i32 0, i32* %43, align 4
  br label %298

44:                                               ; preds = %25
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @RGEPHY_BMCR_LOOP, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load i32, i32* @IFM_LOOP, align 4
  %51 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %52 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %49, %44
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @RGEPHY_BMCR_AUTOEN, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %55
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @RGEPHY_BMSR_ACOMP, align 4
  %63 = and i32 %61, %62
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load i32, i32* @IFM_NONE, align 4
  %67 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %68 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  br label %298

71:                                               ; preds = %60
  br label %72

72:                                               ; preds = %71, %55
  %73 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %74 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @MIIF_PHYPRIV0, align 4
  %77 = and i32 %75, %76
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %190

79:                                               ; preds = %72
  %80 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %81 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @RGEPHY_8211B, align 8
  %84 = icmp sge i64 %82, %83
  br i1 %84, label %85, label %190

85:                                               ; preds = %79
  %86 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %87 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @RGEPHY_8211F, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %140

91:                                               ; preds = %85
  %92 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %93 = load i32, i32* @RGEPHY_F_MII_SSR, align 4
  %94 = call i32 @PHY_READ(%struct.mii_softc* %92, i32 %93)
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @RGEPHY_F_SSR_SPD_MASK, align 4
  %97 = and i32 %95, %96
  switch i32 %97, label %116 [
    i32 131, label %98
    i32 132, label %104
    i32 133, label %110
  ]

98:                                               ; preds = %91
  %99 = load i32, i32* @IFM_1000_T, align 4
  %100 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %101 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 4
  br label %122

104:                                              ; preds = %91
  %105 = load i32, i32* @IFM_100_TX, align 4
  %106 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %107 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 4
  br label %122

110:                                              ; preds = %91
  %111 = load i32, i32* @IFM_10_T, align 4
  %112 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %113 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 4
  br label %122

116:                                              ; preds = %91
  %117 = load i32, i32* @IFM_NONE, align 4
  %118 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %119 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = or i32 %120, %117
  store i32 %121, i32* %119, align 4
  br label %122

122:                                              ; preds = %116, %110, %104, %98
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* @RGEPHY_F_SSR_FDX, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %122
  %128 = load i32, i32* @IFM_FDX, align 4
  %129 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %130 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %131, %128
  store i32 %132, i32* %130, align 4
  br label %139

133:                                              ; preds = %122
  %134 = load i32, i32* @IFM_HDX, align 4
  %135 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %136 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = or i32 %137, %134
  store i32 %138, i32* %136, align 4
  br label %139

139:                                              ; preds = %133, %127
  br label %189

140:                                              ; preds = %85
  %141 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %142 = load i32, i32* @RGEPHY_MII_SSR, align 4
  %143 = call i32 @PHY_READ(%struct.mii_softc* %141, i32 %142)
  store i32 %143, i32* %6, align 4
  %144 = load i32, i32* %6, align 4
  %145 = load i32, i32* @RGEPHY_SSR_SPD_MASK, align 4
  %146 = and i32 %144, %145
  switch i32 %146, label %165 [
    i32 128, label %147
    i32 129, label %153
    i32 130, label %159
  ]

147:                                              ; preds = %140
  %148 = load i32, i32* @IFM_1000_T, align 4
  %149 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %150 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = or i32 %151, %148
  store i32 %152, i32* %150, align 4
  br label %171

153:                                              ; preds = %140
  %154 = load i32, i32* @IFM_100_TX, align 4
  %155 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %156 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = or i32 %157, %154
  store i32 %158, i32* %156, align 4
  br label %171

159:                                              ; preds = %140
  %160 = load i32, i32* @IFM_10_T, align 4
  %161 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %162 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = or i32 %163, %160
  store i32 %164, i32* %162, align 4
  br label %171

165:                                              ; preds = %140
  %166 = load i32, i32* @IFM_NONE, align 4
  %167 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %168 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = or i32 %169, %166
  store i32 %170, i32* %168, align 4
  br label %171

171:                                              ; preds = %165, %159, %153, %147
  %172 = load i32, i32* %6, align 4
  %173 = load i32, i32* @RGEPHY_SSR_FDX, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %182

176:                                              ; preds = %171
  %177 = load i32, i32* @IFM_FDX, align 4
  %178 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %179 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = or i32 %180, %177
  store i32 %181, i32* %179, align 4
  br label %188

182:                                              ; preds = %171
  %183 = load i32, i32* @IFM_HDX, align 4
  %184 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %185 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = or i32 %186, %183
  store i32 %187, i32* %185, align 4
  br label %188

188:                                              ; preds = %182, %176
  br label %189

189:                                              ; preds = %188, %139
  br label %264

190:                                              ; preds = %79, %72
  %191 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %192 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @MIIF_PHYPRIV1, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %201

197:                                              ; preds = %190
  %198 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %199 = load i32, i32* @URE_GMEDIASTAT, align 4
  %200 = call i32 @PHY_READ(%struct.mii_softc* %198, i32 %199)
  store i32 %200, i32* %4, align 4
  br label %205

201:                                              ; preds = %190
  %202 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %203 = load i32, i32* @RL_GMEDIASTAT, align 4
  %204 = call i32 @PHY_READ(%struct.mii_softc* %202, i32 %203)
  store i32 %204, i32* %4, align 4
  br label %205

205:                                              ; preds = %201, %197
  %206 = load i32, i32* %4, align 4
  %207 = load i32, i32* @RL_GMEDIASTAT_1000MBPS, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %216

210:                                              ; preds = %205
  %211 = load i32, i32* @IFM_1000_T, align 4
  %212 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %213 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = or i32 %214, %211
  store i32 %215, i32* %213, align 4
  br label %246

216:                                              ; preds = %205
  %217 = load i32, i32* %4, align 4
  %218 = load i32, i32* @RL_GMEDIASTAT_100MBPS, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %227

221:                                              ; preds = %216
  %222 = load i32, i32* @IFM_100_TX, align 4
  %223 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %224 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = or i32 %225, %222
  store i32 %226, i32* %224, align 4
  br label %245

227:                                              ; preds = %216
  %228 = load i32, i32* %4, align 4
  %229 = load i32, i32* @RL_GMEDIASTAT_10MBPS, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %238

232:                                              ; preds = %227
  %233 = load i32, i32* @IFM_10_T, align 4
  %234 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %235 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = or i32 %236, %233
  store i32 %237, i32* %235, align 4
  br label %244

238:                                              ; preds = %227
  %239 = load i32, i32* @IFM_NONE, align 4
  %240 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %241 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = or i32 %242, %239
  store i32 %243, i32* %241, align 4
  br label %244

244:                                              ; preds = %238, %232
  br label %245

245:                                              ; preds = %244, %221
  br label %246

246:                                              ; preds = %245, %210
  %247 = load i32, i32* %4, align 4
  %248 = load i32, i32* @RL_GMEDIASTAT_FDX, align 4
  %249 = and i32 %247, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %257

251:                                              ; preds = %246
  %252 = load i32, i32* @IFM_FDX, align 4
  %253 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %254 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = or i32 %255, %252
  store i32 %256, i32* %254, align 4
  br label %263

257:                                              ; preds = %246
  %258 = load i32, i32* @IFM_HDX, align 4
  %259 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %260 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = or i32 %261, %258
  store i32 %262, i32* %260, align 4
  br label %263

263:                                              ; preds = %257, %251
  br label %264

264:                                              ; preds = %263, %189
  %265 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %266 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = load i32, i32* @IFM_FDX, align 4
  %269 = and i32 %267, %268
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %278

271:                                              ; preds = %264
  %272 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %273 = call i32 @mii_phy_flowstatus(%struct.mii_softc* %272)
  %274 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %275 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 4
  %277 = or i32 %276, %273
  store i32 %277, i32* %275, align 4
  br label %278

278:                                              ; preds = %271, %264
  %279 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %280 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = call i32 @IFM_SUBTYPE(i32 %281)
  %283 = load i32, i32* @IFM_1000_T, align 4
  %284 = icmp eq i32 %282, %283
  br i1 %284, label %285, label %298

285:                                              ; preds = %278
  %286 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %287 = load i32, i32* @RGEPHY_MII_1000STS, align 4
  %288 = call i32 @PHY_READ(%struct.mii_softc* %286, i32 %287)
  %289 = load i32, i32* @RGEPHY_1000STS_MSR, align 4
  %290 = and i32 %288, %289
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %298

292:                                              ; preds = %285
  %293 = load i32, i32* @IFM_ETH_MASTER, align 4
  %294 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %295 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 4
  %297 = or i32 %296, %293
  store i32 %297, i32* %295, align 4
  br label %298

298:                                              ; preds = %36, %65, %292, %285, %278
  ret void
}

declare dso_local i64 @rgephy_linkup(%struct.mii_softc*) #1

declare dso_local i32 @PHY_READ(%struct.mii_softc*, i32) #1

declare dso_local i32 @mii_phy_flowstatus(%struct.mii_softc*) #1

declare dso_local i32 @IFM_SUBTYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
