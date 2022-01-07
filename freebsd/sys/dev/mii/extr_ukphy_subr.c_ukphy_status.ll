; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_ukphy_subr.c_ukphy_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_ukphy_subr.c_ukphy_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_softc = type { i32, i32, %struct.mii_data* }
%struct.mii_data = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ifmedia_entry* }
%struct.ifmedia_entry = type { i32 }

@IFM_AVALID = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i32 0, align 4
@MII_BMSR = common dso_local global i32 0, align 4
@BMSR_LINK = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_ISO = common dso_local global i32 0, align 4
@IFM_NONE = common dso_local global i32 0, align 4
@BMCR_LOOP = common dso_local global i32 0, align 4
@IFM_LOOP = common dso_local global i32 0, align 4
@BMCR_AUTOEN = common dso_local global i32 0, align 4
@BMSR_ACOMP = common dso_local global i32 0, align 4
@MII_ANAR = common dso_local global i32 0, align 4
@MII_ANLPAR = common dso_local global i32 0, align 4
@MIIF_HAVE_GTCR = common dso_local global i32 0, align 4
@EXTSR_1000THDX = common dso_local global i32 0, align 4
@EXTSR_1000TFDX = common dso_local global i32 0, align 4
@MII_100T2CR = common dso_local global i32 0, align 4
@MII_100T2SR = common dso_local global i32 0, align 4
@GTCR_ADV_1000TFDX = common dso_local global i32 0, align 4
@GTSR_LP_1000TFDX = common dso_local global i32 0, align 4
@IFM_1000_T = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@GTCR_ADV_1000THDX = common dso_local global i32 0, align 4
@GTSR_LP_1000THDX = common dso_local global i32 0, align 4
@IFM_HDX = common dso_local global i32 0, align 4
@ANLPAR_TX_FD = common dso_local global i32 0, align 4
@IFM_100_TX = common dso_local global i32 0, align 4
@ANLPAR_T4 = common dso_local global i32 0, align 4
@IFM_100_T4 = common dso_local global i32 0, align 4
@ANLPAR_TX = common dso_local global i32 0, align 4
@ANLPAR_10_FD = common dso_local global i32 0, align 4
@IFM_10_T = common dso_local global i32 0, align 4
@ANLPAR_10 = common dso_local global i32 0, align 4
@GTSR_MS_RES = common dso_local global i32 0, align 4
@IFM_ETH_MASTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ukphy_status(%struct.mii_softc* %0) #0 {
  %2 = alloca %struct.mii_softc*, align 8
  %3 = alloca %struct.mii_data*, align 8
  %4 = alloca %struct.ifmedia_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mii_softc* %0, %struct.mii_softc** %2, align 8
  %10 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %11 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %10, i32 0, i32 2
  %12 = load %struct.mii_data*, %struct.mii_data** %11, align 8
  store %struct.mii_data* %12, %struct.mii_data** %3, align 8
  %13 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %14 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %15, align 8
  store %struct.ifmedia_entry* %16, %struct.ifmedia_entry** %4, align 8
  %17 = load i32, i32* @IFM_AVALID, align 4
  %18 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %19 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @IFM_ETHER, align 4
  %21 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %22 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %24 = load i32, i32* @MII_BMSR, align 4
  %25 = call i32 @PHY_READ(%struct.mii_softc* %23, i32 %24)
  %26 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %27 = load i32, i32* @MII_BMSR, align 4
  %28 = call i32 @PHY_READ(%struct.mii_softc* %26, i32 %27)
  %29 = or i32 %25, %28
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @BMSR_LINK, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %1
  %35 = load i32, i32* @IFM_ACTIVE, align 4
  %36 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %37 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %34, %1
  %41 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %42 = load i32, i32* @MII_BMCR, align 4
  %43 = call i32 @PHY_READ(%struct.mii_softc* %41, i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @BMCR_ISO, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %40
  %49 = load i32, i32* @IFM_NONE, align 4
  %50 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %51 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  %54 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %55 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %54, i32 0, i32 1
  store i32 0, i32* %55, align 4
  br label %266

56:                                               ; preds = %40
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @BMCR_LOOP, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load i32, i32* @IFM_LOOP, align 4
  %63 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %64 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 8
  br label %67

67:                                               ; preds = %61, %56
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @BMCR_AUTOEN, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %260

72:                                               ; preds = %67
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @BMSR_ACOMP, align 4
  %75 = and i32 %73, %74
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %72
  %78 = load i32, i32* @IFM_NONE, align 4
  %79 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %80 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 8
  br label %266

83:                                               ; preds = %72
  %84 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %85 = load i32, i32* @MII_ANAR, align 4
  %86 = call i32 @PHY_READ(%struct.mii_softc* %84, i32 %85)
  %87 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %88 = load i32, i32* @MII_ANLPAR, align 4
  %89 = call i32 @PHY_READ(%struct.mii_softc* %87, i32 %88)
  %90 = and i32 %86, %89
  store i32 %90, i32* %7, align 4
  %91 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %92 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @MIIF_HAVE_GTCR, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %113

97:                                               ; preds = %83
  %98 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %99 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @EXTSR_1000THDX, align 4
  %102 = load i32, i32* @EXTSR_1000TFDX, align 4
  %103 = or i32 %101, %102
  %104 = and i32 %100, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %97
  %107 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %108 = load i32, i32* @MII_100T2CR, align 4
  %109 = call i32 @PHY_READ(%struct.mii_softc* %107, i32 %108)
  store i32 %109, i32* %8, align 4
  %110 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %111 = load i32, i32* @MII_100T2SR, align 4
  %112 = call i32 @PHY_READ(%struct.mii_softc* %110, i32 %111)
  store i32 %112, i32* %9, align 4
  br label %114

113:                                              ; preds = %97, %83
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %114

114:                                              ; preds = %113, %106
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* @GTCR_ADV_1000TFDX, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %132

119:                                              ; preds = %114
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* @GTSR_LP_1000TFDX, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %119
  %125 = load i32, i32* @IFM_1000_T, align 4
  %126 = load i32, i32* @IFM_FDX, align 4
  %127 = or i32 %125, %126
  %128 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %129 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 8
  br label %227

132:                                              ; preds = %119, %114
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* @GTCR_ADV_1000THDX, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %150

137:                                              ; preds = %132
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* @GTSR_LP_1000THDX, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %150

142:                                              ; preds = %137
  %143 = load i32, i32* @IFM_1000_T, align 4
  %144 = load i32, i32* @IFM_HDX, align 4
  %145 = or i32 %143, %144
  %146 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %147 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = or i32 %148, %145
  store i32 %149, i32* %147, align 8
  br label %226

150:                                              ; preds = %137, %132
  %151 = load i32, i32* %7, align 4
  %152 = load i32, i32* @ANLPAR_TX_FD, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %163

155:                                              ; preds = %150
  %156 = load i32, i32* @IFM_100_TX, align 4
  %157 = load i32, i32* @IFM_FDX, align 4
  %158 = or i32 %156, %157
  %159 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %160 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = or i32 %161, %158
  store i32 %162, i32* %160, align 8
  br label %225

163:                                              ; preds = %150
  %164 = load i32, i32* %7, align 4
  %165 = load i32, i32* @ANLPAR_T4, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %176

168:                                              ; preds = %163
  %169 = load i32, i32* @IFM_100_T4, align 4
  %170 = load i32, i32* @IFM_HDX, align 4
  %171 = or i32 %169, %170
  %172 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %173 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = or i32 %174, %171
  store i32 %175, i32* %173, align 8
  br label %224

176:                                              ; preds = %163
  %177 = load i32, i32* %7, align 4
  %178 = load i32, i32* @ANLPAR_TX, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %189

181:                                              ; preds = %176
  %182 = load i32, i32* @IFM_100_TX, align 4
  %183 = load i32, i32* @IFM_HDX, align 4
  %184 = or i32 %182, %183
  %185 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %186 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = or i32 %187, %184
  store i32 %188, i32* %186, align 8
  br label %223

189:                                              ; preds = %176
  %190 = load i32, i32* %7, align 4
  %191 = load i32, i32* @ANLPAR_10_FD, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %202

194:                                              ; preds = %189
  %195 = load i32, i32* @IFM_10_T, align 4
  %196 = load i32, i32* @IFM_FDX, align 4
  %197 = or i32 %195, %196
  %198 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %199 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = or i32 %200, %197
  store i32 %201, i32* %199, align 8
  br label %222

202:                                              ; preds = %189
  %203 = load i32, i32* %7, align 4
  %204 = load i32, i32* @ANLPAR_10, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %215

207:                                              ; preds = %202
  %208 = load i32, i32* @IFM_10_T, align 4
  %209 = load i32, i32* @IFM_HDX, align 4
  %210 = or i32 %208, %209
  %211 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %212 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = or i32 %213, %210
  store i32 %214, i32* %212, align 8
  br label %221

215:                                              ; preds = %202
  %216 = load i32, i32* @IFM_NONE, align 4
  %217 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %218 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = or i32 %219, %216
  store i32 %220, i32* %218, align 8
  br label %221

221:                                              ; preds = %215, %207
  br label %222

222:                                              ; preds = %221, %194
  br label %223

223:                                              ; preds = %222, %181
  br label %224

224:                                              ; preds = %223, %168
  br label %225

225:                                              ; preds = %224, %155
  br label %226

226:                                              ; preds = %225, %142
  br label %227

227:                                              ; preds = %226, %124
  %228 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %229 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* @IFM_1000_T, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %245

234:                                              ; preds = %227
  %235 = load i32, i32* %9, align 4
  %236 = load i32, i32* @GTSR_MS_RES, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %245

239:                                              ; preds = %234
  %240 = load i32, i32* @IFM_ETH_MASTER, align 4
  %241 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %242 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = or i32 %243, %240
  store i32 %244, i32* %242, align 8
  br label %245

245:                                              ; preds = %239, %234, %227
  %246 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %247 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = load i32, i32* @IFM_FDX, align 4
  %250 = and i32 %248, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %259

252:                                              ; preds = %245
  %253 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %254 = call i32 @mii_phy_flowstatus(%struct.mii_softc* %253)
  %255 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %256 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = or i32 %257, %254
  store i32 %258, i32* %256, align 8
  br label %259

259:                                              ; preds = %252, %245
  br label %266

260:                                              ; preds = %67
  %261 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %4, align 8
  %262 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %265 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %264, i32 0, i32 0
  store i32 %263, i32* %265, align 8
  br label %266

266:                                              ; preds = %48, %77, %260, %259
  ret void
}

declare dso_local i32 @PHY_READ(%struct.mii_softc*, i32) #1

declare dso_local i32 @mii_phy_flowstatus(%struct.mii_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
