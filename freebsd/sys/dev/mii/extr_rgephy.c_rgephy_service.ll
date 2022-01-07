; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_rgephy.c_rgephy_service.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_rgephy.c_rgephy_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_softc = type { i32, i64, i64, i32, i32 }
%struct.mii_data = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.ifmedia_entry* }
%struct.ifmedia_entry = type { i32 }

@RGEPHY_MII_ANAR = common dso_local global i32 0, align 4
@RGEPHY_ANAR_PC = common dso_local global i32 0, align 4
@RGEPHY_ANAR_ASP = common dso_local global i32 0, align 4
@RGEPHY_ANAR_TX_FD = common dso_local global i32 0, align 4
@RGEPHY_ANAR_TX = common dso_local global i32 0, align 4
@RGEPHY_ANAR_10_FD = common dso_local global i32 0, align 4
@RGEPHY_ANAR_10 = common dso_local global i32 0, align 4
@RGEPHY_S1000 = common dso_local global i32 0, align 4
@RGEPHY_S100 = common dso_local global i32 0, align 4
@RGEPHY_S10 = common dso_local global i32 0, align 4
@IFM_FLOW = common dso_local global i32 0, align 4
@IFM_FLAG0 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@RGEPHY_BMCR_FDX = common dso_local global i32 0, align 4
@RGEPHY_1000CTL_AFD = common dso_local global i32 0, align 4
@MIIF_FORCEPAUSE = common dso_local global i32 0, align 4
@RGEPHY_1000CTL_AHD = common dso_local global i32 0, align 4
@RGEPHY_1000CTL_MSE = common dso_local global i32 0, align 4
@IFM_ETH_MASTER = common dso_local global i32 0, align 4
@RGEPHY_1000CTL_MSC = common dso_local global i32 0, align 4
@RGEPHY_BMCR_AUTOEN = common dso_local global i32 0, align 4
@RGEPHY_BMCR_STARTNEG = common dso_local global i32 0, align 4
@RGEPHY_MII_1000CTL = common dso_local global i32 0, align 4
@RGEPHY_MII_BMCR = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_ISO = common dso_local global i32 0, align 4
@BMCR_PDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_softc*, %struct.mii_data*, i32)* @rgephy_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rgephy_service(%struct.mii_softc* %0, %struct.mii_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mii_softc*, align 8
  %6 = alloca %struct.mii_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ifmedia_entry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mii_softc* %0, %struct.mii_softc** %5, align 8
  store %struct.mii_data* %1, %struct.mii_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %13 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %14, align 8
  store %struct.ifmedia_entry* %15, %struct.ifmedia_entry** %8, align 8
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %232 [
    i32 129, label %17
    i32 130, label %18
    i32 128, label %192
  ]

17:                                               ; preds = %3
  br label %232

18:                                               ; preds = %3
  %19 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %20 = call i32 @PHY_RESET(%struct.mii_softc* %19)
  %21 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %22 = load i32, i32* @RGEPHY_MII_ANAR, align 4
  %23 = call i32 @PHY_READ(%struct.mii_softc* %21, i32 %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* @RGEPHY_ANAR_PC, align 4
  %25 = load i32, i32* @RGEPHY_ANAR_ASP, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @RGEPHY_ANAR_TX_FD, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @RGEPHY_ANAR_TX, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @RGEPHY_ANAR_10_FD, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @RGEPHY_ANAR_10, align 4
  %34 = or i32 %32, %33
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %11, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %11, align 4
  %38 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %8, align 8
  %39 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @IFM_SUBTYPE(i32 %40)
  switch i32 %41, label %189 [
    i32 132, label %42
    i32 135, label %48
    i32 134, label %50
    i32 133, label %57
    i32 131, label %182
  ]

42:                                               ; preds = %18
  %43 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %44 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %8, align 8
  %45 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @rgephy_mii_phy_auto(%struct.mii_softc* %43, i32 %46)
  br label %191

48:                                               ; preds = %18
  %49 = load i32, i32* @RGEPHY_S1000, align 4
  store i32 %49, i32* %9, align 4
  br label %64

50:                                               ; preds = %18
  %51 = load i32, i32* @RGEPHY_S100, align 4
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* @RGEPHY_ANAR_TX_FD, align 4
  %53 = load i32, i32* @RGEPHY_ANAR_TX, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* %11, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %11, align 4
  br label %64

57:                                               ; preds = %18
  %58 = load i32, i32* @RGEPHY_S10, align 4
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* @RGEPHY_ANAR_10_FD, align 4
  %60 = load i32, i32* @RGEPHY_ANAR_10, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* %11, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %11, align 4
  br label %64

64:                                               ; preds = %57, %50, %48
  %65 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %8, align 8
  %66 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @IFM_FLOW, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %64
  %72 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %73 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @IFM_FLAG0, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %71
  %80 = load i32, i32* @EINVAL, align 4
  store i32 %80, i32* %4, align 4
  br label %260

81:                                               ; preds = %71, %64
  %82 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %8, align 8
  %83 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @IFM_FDX, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %119

88:                                               ; preds = %81
  %89 = load i32, i32* @RGEPHY_BMCR_FDX, align 4
  %90 = load i32, i32* %9, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* @RGEPHY_1000CTL_AFD, align 4
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* @RGEPHY_ANAR_TX, align 4
  %94 = load i32, i32* @RGEPHY_ANAR_10, align 4
  %95 = or i32 %93, %94
  %96 = xor i32 %95, -1
  %97 = load i32, i32* %11, align 4
  %98 = and i32 %97, %96
  store i32 %98, i32* %11, align 4
  %99 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %8, align 8
  %100 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @IFM_FLOW, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %112, label %105

105:                                              ; preds = %88
  %106 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %107 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @MIIF_FORCEPAUSE, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %105, %88
  %113 = load i32, i32* @RGEPHY_ANAR_PC, align 4
  %114 = load i32, i32* @RGEPHY_ANAR_ASP, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* %11, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %11, align 4
  br label %118

118:                                              ; preds = %112, %105
  br label %127

119:                                              ; preds = %81
  %120 = load i32, i32* @RGEPHY_1000CTL_AHD, align 4
  store i32 %120, i32* %10, align 4
  %121 = load i32, i32* @RGEPHY_ANAR_TX_FD, align 4
  %122 = load i32, i32* @RGEPHY_ANAR_10_FD, align 4
  %123 = or i32 %121, %122
  %124 = xor i32 %123, -1
  %125 = load i32, i32* %11, align 4
  %126 = and i32 %125, %124
  store i32 %126, i32* %11, align 4
  br label %127

127:                                              ; preds = %119, %118
  %128 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %8, align 8
  %129 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @IFM_SUBTYPE(i32 %130)
  %132 = icmp eq i32 %131, 135
  br i1 %132, label %133, label %148

133:                                              ; preds = %127
  %134 = load i32, i32* @RGEPHY_1000CTL_MSE, align 4
  %135 = load i32, i32* %10, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %10, align 4
  %137 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %8, align 8
  %138 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @IFM_ETH_MASTER, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %133
  %144 = load i32, i32* @RGEPHY_1000CTL_MSC, align 4
  %145 = load i32, i32* %10, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %10, align 4
  br label %147

147:                                              ; preds = %143, %133
  br label %153

148:                                              ; preds = %127
  store i32 0, i32* %10, align 4
  %149 = load i32, i32* @RGEPHY_ANAR_ASP, align 4
  %150 = xor i32 %149, -1
  %151 = load i32, i32* %11, align 4
  %152 = and i32 %151, %150
  store i32 %152, i32* %11, align 4
  br label %153

153:                                              ; preds = %148, %147
  %154 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %155 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @IFM_FLAG0, align 4
  %159 = and i32 %157, %158
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %153
  %162 = load i32, i32* @RGEPHY_BMCR_AUTOEN, align 4
  %163 = load i32, i32* @RGEPHY_BMCR_STARTNEG, align 4
  %164 = or i32 %162, %163
  %165 = load i32, i32* %9, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %9, align 4
  br label %167

167:                                              ; preds = %161, %153
  %168 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %169 = call i32 @rgephy_loop(%struct.mii_softc* %168)
  %170 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %171 = load i32, i32* @RGEPHY_MII_1000CTL, align 4
  %172 = load i32, i32* %10, align 4
  %173 = call i32 @PHY_WRITE(%struct.mii_softc* %170, i32 %171, i32 %172)
  %174 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %175 = load i32, i32* @RGEPHY_MII_ANAR, align 4
  %176 = load i32, i32* %11, align 4
  %177 = call i32 @PHY_WRITE(%struct.mii_softc* %174, i32 %175, i32 %176)
  %178 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %179 = load i32, i32* @RGEPHY_MII_BMCR, align 4
  %180 = load i32, i32* %9, align 4
  %181 = call i32 @PHY_WRITE(%struct.mii_softc* %178, i32 %179, i32 %180)
  br label %191

182:                                              ; preds = %18
  %183 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %184 = load i32, i32* @MII_BMCR, align 4
  %185 = load i32, i32* @BMCR_ISO, align 4
  %186 = load i32, i32* @BMCR_PDOWN, align 4
  %187 = or i32 %185, %186
  %188 = call i32 @PHY_WRITE(%struct.mii_softc* %183, i32 %184, i32 %187)
  br label %191

189:                                              ; preds = %18
  %190 = load i32, i32* @EINVAL, align 4
  store i32 %190, i32* %4, align 4
  br label %260

191:                                              ; preds = %182, %167, %42
  br label %232

192:                                              ; preds = %3
  %193 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %8, align 8
  %194 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @IFM_SUBTYPE(i32 %195)
  %197 = icmp ne i32 %196, 132
  br i1 %197, label %198, label %201

198:                                              ; preds = %192
  %199 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %200 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %199, i32 0, i32 3
  store i32 0, i32* %200, align 8
  br label %232

201:                                              ; preds = %192
  %202 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %203 = call i32 @rgephy_linkup(%struct.mii_softc* %202)
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %201
  %206 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %207 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %206, i32 0, i32 3
  store i32 0, i32* %207, align 8
  br label %232

208:                                              ; preds = %201
  %209 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %210 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 8
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %210, align 8
  %213 = icmp eq i32 %211, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %208
  br label %232

215:                                              ; preds = %208
  %216 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %217 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %220 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %219, i32 0, i32 4
  %221 = load i32, i32* %220, align 4
  %222 = icmp sle i32 %218, %221
  br i1 %222, label %223, label %224

223:                                              ; preds = %215
  store i32 0, i32* %4, align 4
  br label %260

224:                                              ; preds = %215
  %225 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %226 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %225, i32 0, i32 3
  store i32 0, i32* %226, align 8
  %227 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %228 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %8, align 8
  %229 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @rgephy_mii_phy_auto(%struct.mii_softc* %227, i32 %230)
  br label %232

232:                                              ; preds = %3, %224, %214, %205, %198, %191, %17
  %233 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %234 = call i32 @PHY_STATUS(%struct.mii_softc* %233)
  %235 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %236 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %239 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = icmp ne i64 %237, %240
  br i1 %241, label %253, label %242

242:                                              ; preds = %232
  %243 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %244 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %243, i32 0, i32 2
  %245 = load i64, i64* %244, align 8
  %246 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %247 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %246, i32 0, i32 1
  %248 = load i64, i64* %247, align 8
  %249 = icmp ne i64 %245, %248
  br i1 %249, label %253, label %250

250:                                              ; preds = %242
  %251 = load i32, i32* %7, align 4
  %252 = icmp eq i32 %251, 130
  br i1 %252, label %253, label %256

253:                                              ; preds = %250, %242, %232
  %254 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %255 = call i32 @rgephy_load_dspcode(%struct.mii_softc* %254)
  br label %256

256:                                              ; preds = %253, %250
  %257 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %258 = load i32, i32* %7, align 4
  %259 = call i32 @mii_phy_update(%struct.mii_softc* %257, i32 %258)
  store i32 0, i32* %4, align 4
  br label %260

260:                                              ; preds = %256, %223, %189, %79
  %261 = load i32, i32* %4, align 4
  ret i32 %261
}

declare dso_local i32 @PHY_RESET(%struct.mii_softc*) #1

declare dso_local i32 @PHY_READ(%struct.mii_softc*, i32) #1

declare dso_local i32 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @rgephy_mii_phy_auto(%struct.mii_softc*, i32) #1

declare dso_local i32 @rgephy_loop(%struct.mii_softc*) #1

declare dso_local i32 @PHY_WRITE(%struct.mii_softc*, i32, i32) #1

declare dso_local i32 @rgephy_linkup(%struct.mii_softc*) #1

declare dso_local i32 @PHY_STATUS(%struct.mii_softc*) #1

declare dso_local i32 @rgephy_load_dspcode(%struct.mii_softc*) #1

declare dso_local i32 @mii_phy_update(%struct.mii_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
