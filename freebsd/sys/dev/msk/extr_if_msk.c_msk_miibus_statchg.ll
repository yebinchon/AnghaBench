; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_msk_miibus_statchg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_msk_miibus_statchg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msk_softc = type { i32 }
%struct.msk_if_softc = type { i32, i32, %struct.ifnet*, i32, %struct.msk_softc* }
%struct.ifnet = type { i32 }
%struct.mii_data = type { i32, i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@MSK_FLAG_LINK = common dso_local global i32 0, align 4
@IFM_AVALID = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@MSK_FLAG_FASTETHER = common dso_local global i32 0, align 4
@GMAC_IRQ_MSK = common dso_local global i32 0, align 4
@GM_IS_TX_FF_UR = common dso_local global i32 0, align 4
@GM_IS_RX_FF_OR = common dso_local global i32 0, align 4
@GM_GPCR_AU_ALL_DIS = common dso_local global i32 0, align 4
@GM_GPCR_SPEED_1000 = common dso_local global i32 0, align 4
@GM_GPCR_SPEED_100 = common dso_local global i32 0, align 4
@IFM_ETH_RXPAUSE = common dso_local global i32 0, align 4
@GM_GPCR_FC_RX_DIS = common dso_local global i32 0, align 4
@IFM_ETH_TXPAUSE = common dso_local global i32 0, align 4
@GM_GPCR_FC_TX_DIS = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@GM_GPCR_DUP_FULL = common dso_local global i32 0, align 4
@GM_GPCR_RX_ENA = common dso_local global i32 0, align 4
@GM_GPCR_TX_ENA = common dso_local global i32 0, align 4
@GM_GP_CTRL = common dso_local global i32 0, align 4
@GMC_PAUSE_OFF = common dso_local global i32 0, align 4
@GMC_PAUSE_ON = common dso_local global i32 0, align 4
@GMAC_CTRL = common dso_local global i32 0, align 4
@PHY_ADDR_MARV = common dso_local global i32 0, align 4
@PHY_MARV_INT_MASK = common dso_local global i32 0, align 4
@PHY_M_IS_FIFO_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @msk_miibus_statchg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msk_miibus_statchg(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.msk_softc*, align 8
  %4 = alloca %struct.msk_if_softc*, align 8
  %5 = alloca %struct.mii_data*, align 8
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call i8* @device_get_softc(i32 %8)
  %10 = bitcast i8* %9 to %struct.msk_if_softc*
  store %struct.msk_if_softc* %10, %struct.msk_if_softc** %4, align 8
  %11 = load %struct.msk_if_softc*, %struct.msk_if_softc** %4, align 8
  %12 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %11, i32 0, i32 4
  %13 = load %struct.msk_softc*, %struct.msk_softc** %12, align 8
  store %struct.msk_softc* %13, %struct.msk_softc** %3, align 8
  %14 = load %struct.msk_if_softc*, %struct.msk_if_softc** %4, align 8
  %15 = call i32 @MSK_IF_LOCK_ASSERT(%struct.msk_if_softc* %14)
  %16 = load %struct.msk_if_softc*, %struct.msk_if_softc** %4, align 8
  %17 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i8* @device_get_softc(i32 %18)
  %20 = bitcast i8* %19 to %struct.mii_data*
  store %struct.mii_data* %20, %struct.mii_data** %5, align 8
  %21 = load %struct.msk_if_softc*, %struct.msk_if_softc** %4, align 8
  %22 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %21, i32 0, i32 2
  %23 = load %struct.ifnet*, %struct.ifnet** %22, align 8
  store %struct.ifnet* %23, %struct.ifnet** %6, align 8
  %24 = load %struct.mii_data*, %struct.mii_data** %5, align 8
  %25 = icmp eq %struct.mii_data* %24, null
  br i1 %25, label %36, label %26

26:                                               ; preds = %1
  %27 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %28 = icmp eq %struct.ifnet* %27, null
  br i1 %28, label %36, label %29

29:                                               ; preds = %26
  %30 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %31 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29, %26, %1
  br label %246

37:                                               ; preds = %29
  %38 = load i32, i32* @MSK_FLAG_LINK, align 4
  %39 = xor i32 %38, -1
  %40 = load %struct.msk_if_softc*, %struct.msk_if_softc** %4, align 8
  %41 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %42, %39
  store i32 %43, i32* %41, align 8
  %44 = load %struct.mii_data*, %struct.mii_data** %5, align 8
  %45 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @IFM_AVALID, align 4
  %48 = load i32, i32* @IFM_ACTIVE, align 4
  %49 = or i32 %47, %48
  %50 = and i32 %46, %49
  %51 = load i32, i32* @IFM_AVALID, align 4
  %52 = load i32, i32* @IFM_ACTIVE, align 4
  %53 = or i32 %51, %52
  %54 = icmp eq i32 %50, %53
  br i1 %54, label %55, label %82

55:                                               ; preds = %37
  %56 = load %struct.mii_data*, %struct.mii_data** %5, align 8
  %57 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @IFM_SUBTYPE(i32 %58)
  switch i32 %59, label %80 [
    i32 128, label %60
    i32 129, label %60
    i32 130, label %66
    i32 131, label %66
    i32 132, label %66
    i32 133, label %66
  ]

60:                                               ; preds = %55, %55
  %61 = load i32, i32* @MSK_FLAG_LINK, align 4
  %62 = load %struct.msk_if_softc*, %struct.msk_if_softc** %4, align 8
  %63 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 8
  br label %81

66:                                               ; preds = %55, %55, %55, %55
  %67 = load %struct.msk_if_softc*, %struct.msk_if_softc** %4, align 8
  %68 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @MSK_FLAG_FASTETHER, align 4
  %71 = and i32 %69, %70
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %66
  %74 = load i32, i32* @MSK_FLAG_LINK, align 4
  %75 = load %struct.msk_if_softc*, %struct.msk_if_softc** %4, align 8
  %76 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 8
  br label %79

79:                                               ; preds = %73, %66
  br label %81

80:                                               ; preds = %55
  br label %81

81:                                               ; preds = %80, %79, %60
  br label %82

82:                                               ; preds = %81, %37
  %83 = load %struct.msk_if_softc*, %struct.msk_if_softc** %4, align 8
  %84 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @MSK_FLAG_LINK, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %208

89:                                               ; preds = %82
  %90 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %91 = load %struct.msk_if_softc*, %struct.msk_if_softc** %4, align 8
  %92 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @GMAC_IRQ_MSK, align 4
  %95 = call i32 @MR_ADDR(i32 %93, i32 %94)
  %96 = load i32, i32* @GM_IS_TX_FF_UR, align 4
  %97 = load i32, i32* @GM_IS_RX_FF_OR, align 4
  %98 = or i32 %96, %97
  %99 = call i32 @CSR_WRITE_1(%struct.msk_softc* %90, i32 %95, i32 %98)
  %100 = load i32, i32* @GM_GPCR_AU_ALL_DIS, align 4
  store i32 %100, i32* %7, align 4
  %101 = load %struct.mii_data*, %struct.mii_data** %5, align 8
  %102 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @IFM_SUBTYPE(i32 %103)
  switch i32 %104, label %114 [
    i32 131, label %105
    i32 130, label %105
    i32 129, label %109
    i32 128, label %113
  ]

105:                                              ; preds = %89, %89
  %106 = load i32, i32* @GM_GPCR_SPEED_1000, align 4
  %107 = load i32, i32* %7, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %7, align 4
  br label %114

109:                                              ; preds = %89
  %110 = load i32, i32* @GM_GPCR_SPEED_100, align 4
  %111 = load i32, i32* %7, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %7, align 4
  br label %114

113:                                              ; preds = %89
  br label %114

114:                                              ; preds = %89, %113, %109, %105
  %115 = load %struct.mii_data*, %struct.mii_data** %5, align 8
  %116 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @IFM_OPTIONS(i32 %117)
  %119 = load i32, i32* @IFM_ETH_RXPAUSE, align 4
  %120 = and i32 %118, %119
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %114
  %123 = load i32, i32* @GM_GPCR_FC_RX_DIS, align 4
  %124 = load i32, i32* %7, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %7, align 4
  br label %126

126:                                              ; preds = %122, %114
  %127 = load %struct.mii_data*, %struct.mii_data** %5, align 8
  %128 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @IFM_OPTIONS(i32 %129)
  %131 = load i32, i32* @IFM_ETH_TXPAUSE, align 4
  %132 = and i32 %130, %131
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %126
  %135 = load i32, i32* @GM_GPCR_FC_TX_DIS, align 4
  %136 = load i32, i32* %7, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %7, align 4
  br label %138

138:                                              ; preds = %134, %126
  %139 = load %struct.mii_data*, %struct.mii_data** %5, align 8
  %140 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @IFM_OPTIONS(i32 %141)
  %143 = load i32, i32* @IFM_FDX, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %138
  %147 = load i32, i32* @GM_GPCR_DUP_FULL, align 4
  %148 = load i32, i32* %7, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %7, align 4
  br label %156

150:                                              ; preds = %138
  %151 = load i32, i32* @GM_GPCR_FC_RX_DIS, align 4
  %152 = load i32, i32* @GM_GPCR_FC_TX_DIS, align 4
  %153 = or i32 %151, %152
  %154 = load i32, i32* %7, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %7, align 4
  br label %156

156:                                              ; preds = %150, %146
  %157 = load i32, i32* @GM_GPCR_RX_ENA, align 4
  %158 = load i32, i32* @GM_GPCR_TX_ENA, align 4
  %159 = or i32 %157, %158
  %160 = load i32, i32* %7, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %7, align 4
  %162 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %163 = load %struct.msk_if_softc*, %struct.msk_if_softc** %4, align 8
  %164 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @GM_GP_CTRL, align 4
  %167 = load i32, i32* %7, align 4
  %168 = call i32 @GMAC_WRITE_2(%struct.msk_softc* %162, i32 %165, i32 %166, i32 %167)
  %169 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %170 = load %struct.msk_if_softc*, %struct.msk_if_softc** %4, align 8
  %171 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @GM_GP_CTRL, align 4
  %174 = call i32 @GMAC_READ_2(%struct.msk_softc* %169, i32 %172, i32 %173)
  %175 = load i32, i32* @GMC_PAUSE_OFF, align 4
  store i32 %175, i32* %7, align 4
  %176 = load %struct.mii_data*, %struct.mii_data** %5, align 8
  %177 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @IFM_OPTIONS(i32 %178)
  %180 = load i32, i32* @IFM_FDX, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %194

183:                                              ; preds = %156
  %184 = load %struct.mii_data*, %struct.mii_data** %5, align 8
  %185 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @IFM_OPTIONS(i32 %186)
  %188 = load i32, i32* @IFM_ETH_RXPAUSE, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %183
  %192 = load i32, i32* @GMC_PAUSE_ON, align 4
  store i32 %192, i32* %7, align 4
  br label %193

193:                                              ; preds = %191, %183
  br label %194

194:                                              ; preds = %193, %156
  %195 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %196 = load %struct.msk_if_softc*, %struct.msk_if_softc** %4, align 8
  %197 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @GMAC_CTRL, align 4
  %200 = call i32 @MR_ADDR(i32 %198, i32 %199)
  %201 = load i32, i32* %7, align 4
  %202 = call i32 @CSR_WRITE_4(%struct.msk_softc* %195, i32 %200, i32 %201)
  %203 = load %struct.msk_if_softc*, %struct.msk_if_softc** %4, align 8
  %204 = load i32, i32* @PHY_ADDR_MARV, align 4
  %205 = load i32, i32* @PHY_MARV_INT_MASK, align 4
  %206 = load i32, i32* @PHY_M_IS_FIFO_ERROR, align 4
  %207 = call i32 @msk_phy_writereg(%struct.msk_if_softc* %203, i32 %204, i32 %205, i32 %206)
  br label %246

208:                                              ; preds = %82
  %209 = load %struct.msk_if_softc*, %struct.msk_if_softc** %4, align 8
  %210 = load i32, i32* @PHY_ADDR_MARV, align 4
  %211 = load i32, i32* @PHY_MARV_INT_MASK, align 4
  %212 = call i32 @msk_phy_writereg(%struct.msk_if_softc* %209, i32 %210, i32 %211, i32 0)
  %213 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %214 = load %struct.msk_if_softc*, %struct.msk_if_softc** %4, align 8
  %215 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @GM_GP_CTRL, align 4
  %218 = call i32 @GMAC_READ_2(%struct.msk_softc* %213, i32 %216, i32 %217)
  store i32 %218, i32* %7, align 4
  %219 = load i32, i32* %7, align 4
  %220 = load i32, i32* @GM_GPCR_RX_ENA, align 4
  %221 = load i32, i32* @GM_GPCR_TX_ENA, align 4
  %222 = or i32 %220, %221
  %223 = and i32 %219, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %245

225:                                              ; preds = %208
  %226 = load i32, i32* @GM_GPCR_RX_ENA, align 4
  %227 = load i32, i32* @GM_GPCR_TX_ENA, align 4
  %228 = or i32 %226, %227
  %229 = xor i32 %228, -1
  %230 = load i32, i32* %7, align 4
  %231 = and i32 %230, %229
  store i32 %231, i32* %7, align 4
  %232 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %233 = load %struct.msk_if_softc*, %struct.msk_if_softc** %4, align 8
  %234 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* @GM_GP_CTRL, align 4
  %237 = load i32, i32* %7, align 4
  %238 = call i32 @GMAC_WRITE_2(%struct.msk_softc* %232, i32 %235, i32 %236, i32 %237)
  %239 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %240 = load %struct.msk_if_softc*, %struct.msk_if_softc** %4, align 8
  %241 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* @GM_GP_CTRL, align 4
  %244 = call i32 @GMAC_READ_2(%struct.msk_softc* %239, i32 %242, i32 %243)
  br label %245

245:                                              ; preds = %225, %208
  br label %246

246:                                              ; preds = %36, %245, %194
  ret void
}

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @MSK_IF_LOCK_ASSERT(%struct.msk_if_softc*) #1

declare dso_local i32 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @CSR_WRITE_1(%struct.msk_softc*, i32, i32) #1

declare dso_local i32 @MR_ADDR(i32, i32) #1

declare dso_local i32 @IFM_OPTIONS(i32) #1

declare dso_local i32 @GMAC_WRITE_2(%struct.msk_softc*, i32, i32, i32) #1

declare dso_local i32 @GMAC_READ_2(%struct.msk_softc*, i32, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.msk_softc*, i32, i32) #1

declare dso_local i32 @msk_phy_writereg(%struct.msk_if_softc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
