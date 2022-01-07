; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_brgphy.c_brgphy_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_brgphy.c_brgphy_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_softc = type { i32, %struct.mii_data* }
%struct.mii_data = type { i64, i32 }
%struct.brgphy_softc = type { i32 }

@IFM_AVALID = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i64 0, align 8
@BRGPHY_MII_BMSR = common dso_local global i32 0, align 4
@BRGPHY_MII_BMCR = common dso_local global i32 0, align 4
@BRGPHY_BMCR_LOOP = common dso_local global i32 0, align 4
@IFM_LOOP = common dso_local global i64 0, align 8
@BRGPHY_BMCR_AUTOEN = common dso_local global i32 0, align 4
@BRGPHY_BMSR_ACOMP = common dso_local global i32 0, align 4
@BRGPHY_NOANWAIT = common dso_local global i32 0, align 4
@IFM_NONE = common dso_local global i64 0, align 8
@MIIF_HAVEFIBER = common dso_local global i32 0, align 4
@BRGPHY_MII_1000STS = common dso_local global i32 0, align 4
@BRGPHY_MII_AUXSTS = common dso_local global i32 0, align 4
@BRGPHY_AUXSTS_LINK = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@BRGPHY_AUXSTS_AN_RES = common dso_local global i32 0, align 4
@IFM_1000_T = common dso_local global i64 0, align 8
@IFM_FDX = common dso_local global i64 0, align 8
@IFM_HDX = common dso_local global i64 0, align 8
@IFM_100_TX = common dso_local global i64 0, align 8
@IFM_100_T4 = common dso_local global i64 0, align 8
@IFM_10_T = common dso_local global i64 0, align 8
@BRGPHY_1000STS_MSR = common dso_local global i32 0, align 4
@IFM_ETH_MASTER = common dso_local global i64 0, align 8
@BRGPHY_BMSR_LINK = common dso_local global i32 0, align 4
@BRGPHY_5706S = common dso_local global i32 0, align 4
@IFM_1000_SX = common dso_local global i64 0, align 8
@BRGPHY_SERDES_ANAR = common dso_local global i32 0, align 4
@BRGPHY_SERDES_ANLPAR = common dso_local global i32 0, align 4
@BRGPHY_SERDES_ANAR_FDX = common dso_local global i32 0, align 4
@BRGPHY_5708S = common dso_local global i32 0, align 4
@BRGPHY_5708S_BLOCK_ADDR = common dso_local global i32 0, align 4
@BRGPHY_5708S_DIG_PG0 = common dso_local global i32 0, align 4
@BRGPHY_5708S_PG0_1000X_STAT1 = common dso_local global i32 0, align 4
@BRGPHY_5708S_PG0_1000X_STAT1_SPEED_MASK = common dso_local global i32 0, align 4
@IFM_10_FL = common dso_local global i64 0, align 8
@IFM_100_FX = common dso_local global i64 0, align 8
@IFM_2500_SX = common dso_local global i64 0, align 8
@BRGPHY_5708S_PG0_1000X_STAT1_FDX = common dso_local global i32 0, align 4
@BRGPHY_5709S = common dso_local global i32 0, align 4
@BRGPHY_BLOCK_ADDR = common dso_local global i32 0, align 4
@BRGPHY_BLOCK_ADDR_GP_STATUS = common dso_local global i32 0, align 4
@BRGPHY_GP_STATUS_TOP_ANEG_STATUS = common dso_local global i32 0, align 4
@BRGPHY_BLOCK_ADDR_COMBO_IEEE0 = common dso_local global i32 0, align 4
@BRGPHY_GP_STATUS_TOP_ANEG_SPEED_MASK = common dso_local global i32 0, align 4
@BRGPHY_GP_STATUS_TOP_ANEG_FDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mii_softc*)* @brgphy_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brgphy_status(%struct.mii_softc* %0) #0 {
  %2 = alloca %struct.mii_softc*, align 8
  %3 = alloca %struct.brgphy_softc*, align 8
  %4 = alloca %struct.mii_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.mii_softc* %0, %struct.mii_softc** %2, align 8
  %11 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %12 = bitcast %struct.mii_softc* %11 to %struct.brgphy_softc*
  store %struct.brgphy_softc* %12, %struct.brgphy_softc** %3, align 8
  %13 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %14 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %13, i32 0, i32 1
  %15 = load %struct.mii_data*, %struct.mii_data** %14, align 8
  store %struct.mii_data* %15, %struct.mii_data** %4, align 8
  %16 = load i32, i32* @IFM_AVALID, align 4
  %17 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %18 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  %19 = load i64, i64* @IFM_ETHER, align 8
  %20 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %21 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %23 = load i32, i32* @BRGPHY_MII_BMSR, align 4
  %24 = call i32 @PHY_READ(%struct.mii_softc* %22, i32 %23)
  %25 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %26 = load i32, i32* @BRGPHY_MII_BMSR, align 4
  %27 = call i32 @PHY_READ(%struct.mii_softc* %25, i32 %26)
  %28 = or i32 %24, %27
  store i32 %28, i32* %7, align 4
  %29 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %30 = load i32, i32* @BRGPHY_MII_BMCR, align 4
  %31 = call i32 @PHY_READ(%struct.mii_softc* %29, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @BRGPHY_BMCR_LOOP, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %1
  %37 = load i64, i64* @IFM_LOOP, align 8
  %38 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %39 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = or i64 %40, %37
  store i64 %41, i64* %39, align 8
  br label %42

42:                                               ; preds = %36, %1
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @BRGPHY_BMCR_AUTOEN, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %65

47:                                               ; preds = %42
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @BRGPHY_BMSR_ACOMP, align 4
  %50 = and i32 %48, %49
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %47
  %53 = load %struct.brgphy_softc*, %struct.brgphy_softc** %3, align 8
  %54 = getelementptr inbounds %struct.brgphy_softc, %struct.brgphy_softc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @BRGPHY_NOANWAIT, align 4
  %57 = and i32 %55, %56
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %52
  %60 = load i64, i64* @IFM_NONE, align 8
  %61 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %62 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = or i64 %63, %60
  store i64 %64, i64* %62, align 8
  br label %368

65:                                               ; preds = %52, %47, %42
  %66 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %67 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @MIIF_HAVEFIBER, align 4
  %70 = and i32 %68, %69
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %187

72:                                               ; preds = %65
  %73 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %74 = call i64 @mii_phy_flowstatus(%struct.mii_softc* %73)
  store i64 %74, i64* %10, align 8
  %75 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %76 = load i32, i32* @BRGPHY_MII_1000STS, align 4
  %77 = call i32 @PHY_READ(%struct.mii_softc* %75, i32 %76)
  store i32 %77, i32* %9, align 4
  %78 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %79 = load i32, i32* @BRGPHY_MII_AUXSTS, align 4
  %80 = call i32 @PHY_READ(%struct.mii_softc* %78, i32 %79)
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @BRGPHY_AUXSTS_LINK, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %186

85:                                               ; preds = %72
  %86 = load i32, i32* @IFM_ACTIVE, align 4
  %87 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %88 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 8
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @BRGPHY_AUXSTS_AN_RES, align 4
  %93 = and i32 %91, %92
  switch i32 %93, label %148 [
    i32 134, label %94
    i32 133, label %102
    i32 132, label %110
    i32 130, label %118
    i32 131, label %124
    i32 129, label %132
    i32 128, label %140
  ]

94:                                               ; preds = %85
  %95 = load i64, i64* @IFM_1000_T, align 8
  %96 = load i64, i64* @IFM_FDX, align 8
  %97 = or i64 %95, %96
  %98 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %99 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = or i64 %100, %97
  store i64 %101, i64* %99, align 8
  br label %154

102:                                              ; preds = %85
  %103 = load i64, i64* @IFM_1000_T, align 8
  %104 = load i64, i64* @IFM_HDX, align 8
  %105 = or i64 %103, %104
  %106 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %107 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = or i64 %108, %105
  store i64 %109, i64* %107, align 8
  br label %154

110:                                              ; preds = %85
  %111 = load i64, i64* @IFM_100_TX, align 8
  %112 = load i64, i64* @IFM_FDX, align 8
  %113 = or i64 %111, %112
  %114 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %115 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = or i64 %116, %113
  store i64 %117, i64* %115, align 8
  br label %154

118:                                              ; preds = %85
  %119 = load i64, i64* @IFM_100_T4, align 8
  %120 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %121 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = or i64 %122, %119
  store i64 %123, i64* %121, align 8
  br label %154

124:                                              ; preds = %85
  %125 = load i64, i64* @IFM_100_TX, align 8
  %126 = load i64, i64* @IFM_HDX, align 8
  %127 = or i64 %125, %126
  %128 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %129 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = or i64 %130, %127
  store i64 %131, i64* %129, align 8
  br label %154

132:                                              ; preds = %85
  %133 = load i64, i64* @IFM_10_T, align 8
  %134 = load i64, i64* @IFM_FDX, align 8
  %135 = or i64 %133, %134
  %136 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %137 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = or i64 %138, %135
  store i64 %139, i64* %137, align 8
  br label %154

140:                                              ; preds = %85
  %141 = load i64, i64* @IFM_10_T, align 8
  %142 = load i64, i64* @IFM_HDX, align 8
  %143 = or i64 %141, %142
  %144 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %145 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = or i64 %146, %143
  store i64 %147, i64* %145, align 8
  br label %154

148:                                              ; preds = %85
  %149 = load i64, i64* @IFM_NONE, align 8
  %150 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %151 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = or i64 %152, %149
  store i64 %153, i64* %151, align 8
  br label %154

154:                                              ; preds = %148, %140, %132, %124, %118, %110, %102, %94
  %155 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %156 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @IFM_FDX, align 8
  %159 = and i64 %157, %158
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %154
  %162 = load i64, i64* %10, align 8
  %163 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %164 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = or i64 %165, %162
  store i64 %166, i64* %164, align 8
  br label %167

167:                                              ; preds = %161, %154
  %168 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %169 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = call i64 @IFM_SUBTYPE(i64 %170)
  %172 = load i64, i64* @IFM_1000_T, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %185

174:                                              ; preds = %167
  %175 = load i32, i32* %9, align 4
  %176 = load i32, i32* @BRGPHY_1000STS_MSR, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %174
  %180 = load i64, i64* @IFM_ETH_MASTER, align 8
  %181 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %182 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = or i64 %183, %180
  store i64 %184, i64* %182, align 8
  br label %185

185:                                              ; preds = %179, %174, %167
  br label %186

186:                                              ; preds = %185, %72
  br label %368

187:                                              ; preds = %65
  %188 = load i32, i32* %7, align 4
  %189 = load i32, i32* @BRGPHY_BMSR_LINK, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %198

192:                                              ; preds = %187
  %193 = load i32, i32* @IFM_ACTIVE, align 4
  %194 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %195 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = or i32 %196, %193
  store i32 %197, i32* %195, align 8
  br label %198

198:                                              ; preds = %192, %187
  %199 = load %struct.brgphy_softc*, %struct.brgphy_softc** %3, align 8
  %200 = getelementptr inbounds %struct.brgphy_softc, %struct.brgphy_softc* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @BRGPHY_5706S, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %241

205:                                              ; preds = %198
  %206 = load i64, i64* @IFM_1000_SX, align 8
  %207 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %208 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = or i64 %209, %206
  store i64 %210, i64* %208, align 8
  %211 = load i32, i32* %6, align 4
  %212 = load i32, i32* @BRGPHY_BMCR_AUTOEN, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %240

215:                                              ; preds = %205
  %216 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %217 = load i32, i32* @BRGPHY_SERDES_ANAR, align 4
  %218 = call i32 @PHY_READ(%struct.mii_softc* %216, i32 %217)
  %219 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %220 = load i32, i32* @BRGPHY_SERDES_ANLPAR, align 4
  %221 = call i32 @PHY_READ(%struct.mii_softc* %219, i32 %220)
  %222 = and i32 %218, %221
  store i32 %222, i32* %8, align 4
  %223 = load i32, i32* %8, align 4
  %224 = load i32, i32* @BRGPHY_SERDES_ANAR_FDX, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %233

227:                                              ; preds = %215
  %228 = load i64, i64* @IFM_FDX, align 8
  %229 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %230 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = or i64 %231, %228
  store i64 %232, i64* %230, align 8
  br label %239

233:                                              ; preds = %215
  %234 = load i64, i64* @IFM_HDX, align 8
  %235 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %236 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = or i64 %237, %234
  store i64 %238, i64* %236, align 8
  br label %239

239:                                              ; preds = %233, %227
  br label %240

240:                                              ; preds = %239, %205
  br label %367

241:                                              ; preds = %198
  %242 = load %struct.brgphy_softc*, %struct.brgphy_softc** %3, align 8
  %243 = getelementptr inbounds %struct.brgphy_softc, %struct.brgphy_softc* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* @BRGPHY_5708S, align 4
  %246 = and i32 %244, %245
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %301

248:                                              ; preds = %241
  %249 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %250 = load i32, i32* @BRGPHY_5708S_BLOCK_ADDR, align 4
  %251 = load i32, i32* @BRGPHY_5708S_DIG_PG0, align 4
  %252 = call i32 @PHY_WRITE(%struct.mii_softc* %249, i32 %250, i32 %251)
  %253 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %254 = load i32, i32* @BRGPHY_5708S_PG0_1000X_STAT1, align 4
  %255 = call i32 @PHY_READ(%struct.mii_softc* %253, i32 %254)
  store i32 %255, i32* %9, align 4
  %256 = load i32, i32* %9, align 4
  %257 = load i32, i32* @BRGPHY_5708S_PG0_1000X_STAT1_SPEED_MASK, align 4
  %258 = and i32 %256, %257
  switch i32 %258, label %283 [
    i32 142, label %259
    i32 141, label %265
    i32 140, label %271
    i32 139, label %277
  ]

259:                                              ; preds = %248
  %260 = load i64, i64* @IFM_10_FL, align 8
  %261 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %262 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = or i64 %263, %260
  store i64 %264, i64* %262, align 8
  br label %283

265:                                              ; preds = %248
  %266 = load i64, i64* @IFM_100_FX, align 8
  %267 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %268 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = or i64 %269, %266
  store i64 %270, i64* %268, align 8
  br label %283

271:                                              ; preds = %248
  %272 = load i64, i64* @IFM_1000_SX, align 8
  %273 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %274 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = or i64 %275, %272
  store i64 %276, i64* %274, align 8
  br label %283

277:                                              ; preds = %248
  %278 = load i64, i64* @IFM_2500_SX, align 8
  %279 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %280 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %279, i32 0, i32 0
  %281 = load i64, i64* %280, align 8
  %282 = or i64 %281, %278
  store i64 %282, i64* %280, align 8
  br label %283

283:                                              ; preds = %248, %277, %271, %265, %259
  %284 = load i32, i32* %9, align 4
  %285 = load i32, i32* @BRGPHY_5708S_PG0_1000X_STAT1_FDX, align 4
  %286 = and i32 %284, %285
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %294

288:                                              ; preds = %283
  %289 = load i64, i64* @IFM_FDX, align 8
  %290 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %291 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %290, i32 0, i32 0
  %292 = load i64, i64* %291, align 8
  %293 = or i64 %292, %289
  store i64 %293, i64* %291, align 8
  br label %300

294:                                              ; preds = %283
  %295 = load i64, i64* @IFM_HDX, align 8
  %296 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %297 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %296, i32 0, i32 0
  %298 = load i64, i64* %297, align 8
  %299 = or i64 %298, %295
  store i64 %299, i64* %297, align 8
  br label %300

300:                                              ; preds = %294, %288
  br label %366

301:                                              ; preds = %241
  %302 = load %struct.brgphy_softc*, %struct.brgphy_softc** %3, align 8
  %303 = getelementptr inbounds %struct.brgphy_softc, %struct.brgphy_softc* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 4
  %305 = load i32, i32* @BRGPHY_5709S, align 4
  %306 = and i32 %304, %305
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %365

308:                                              ; preds = %301
  %309 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %310 = load i32, i32* @BRGPHY_BLOCK_ADDR, align 4
  %311 = load i32, i32* @BRGPHY_BLOCK_ADDR_GP_STATUS, align 4
  %312 = call i32 @PHY_WRITE(%struct.mii_softc* %309, i32 %310, i32 %311)
  %313 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %314 = load i32, i32* @BRGPHY_GP_STATUS_TOP_ANEG_STATUS, align 4
  %315 = call i32 @PHY_READ(%struct.mii_softc* %313, i32 %314)
  store i32 %315, i32* %9, align 4
  %316 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %317 = load i32, i32* @BRGPHY_BLOCK_ADDR, align 4
  %318 = load i32, i32* @BRGPHY_BLOCK_ADDR_COMBO_IEEE0, align 4
  %319 = call i32 @PHY_WRITE(%struct.mii_softc* %316, i32 %317, i32 %318)
  %320 = load i32, i32* %9, align 4
  %321 = load i32, i32* @BRGPHY_GP_STATUS_TOP_ANEG_SPEED_MASK, align 4
  %322 = and i32 %320, %321
  switch i32 %322, label %347 [
    i32 138, label %323
    i32 137, label %329
    i32 136, label %335
    i32 135, label %341
  ]

323:                                              ; preds = %308
  %324 = load i64, i64* @IFM_10_FL, align 8
  %325 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %326 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %325, i32 0, i32 0
  %327 = load i64, i64* %326, align 8
  %328 = or i64 %327, %324
  store i64 %328, i64* %326, align 8
  br label %347

329:                                              ; preds = %308
  %330 = load i64, i64* @IFM_100_FX, align 8
  %331 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %332 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %331, i32 0, i32 0
  %333 = load i64, i64* %332, align 8
  %334 = or i64 %333, %330
  store i64 %334, i64* %332, align 8
  br label %347

335:                                              ; preds = %308
  %336 = load i64, i64* @IFM_1000_SX, align 8
  %337 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %338 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %337, i32 0, i32 0
  %339 = load i64, i64* %338, align 8
  %340 = or i64 %339, %336
  store i64 %340, i64* %338, align 8
  br label %347

341:                                              ; preds = %308
  %342 = load i64, i64* @IFM_2500_SX, align 8
  %343 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %344 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %343, i32 0, i32 0
  %345 = load i64, i64* %344, align 8
  %346 = or i64 %345, %342
  store i64 %346, i64* %344, align 8
  br label %347

347:                                              ; preds = %308, %341, %335, %329, %323
  %348 = load i32, i32* %9, align 4
  %349 = load i32, i32* @BRGPHY_GP_STATUS_TOP_ANEG_FDX, align 4
  %350 = and i32 %348, %349
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %358

352:                                              ; preds = %347
  %353 = load i64, i64* @IFM_FDX, align 8
  %354 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %355 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %354, i32 0, i32 0
  %356 = load i64, i64* %355, align 8
  %357 = or i64 %356, %353
  store i64 %357, i64* %355, align 8
  br label %364

358:                                              ; preds = %347
  %359 = load i64, i64* @IFM_HDX, align 8
  %360 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %361 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %360, i32 0, i32 0
  %362 = load i64, i64* %361, align 8
  %363 = or i64 %362, %359
  store i64 %363, i64* %361, align 8
  br label %364

364:                                              ; preds = %358, %352
  br label %365

365:                                              ; preds = %364, %301
  br label %366

366:                                              ; preds = %365, %300
  br label %367

367:                                              ; preds = %366, %240
  br label %368

368:                                              ; preds = %59, %367, %186
  ret void
}

declare dso_local i32 @PHY_READ(%struct.mii_softc*, i32) #1

declare dso_local i64 @mii_phy_flowstatus(%struct.mii_softc*) #1

declare dso_local i64 @IFM_SUBTYPE(i64) #1

declare dso_local i32 @PHY_WRITE(%struct.mii_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
