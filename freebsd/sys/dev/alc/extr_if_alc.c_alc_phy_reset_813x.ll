; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_phy_reset_813x.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_phy_reset_813x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alc_softc = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@ALC_GPHY_CFG = common dso_local global i32 0, align 4
@GPHY_CFG_SEL_ANA_RESET = common dso_local global i32 0, align 4
@GPHY_CFG_EXT_RESET = common dso_local global i32 0, align 4
@DEVICEID_ATHEROS_AR8152_B = common dso_local global i64 0, align 8
@ALC_MII_DBG_ADDR = common dso_local global i32 0, align 4
@ALC_MII_DBG_DATA = common dso_local global i32 0, align 4
@DEVICEID_ATHEROS_AR8151 = common dso_local global i64 0, align 8
@DEVICEID_ATHEROS_AR8151_V2 = common dso_local global i64 0, align 8
@DEVICEID_ATHEROS_AR8152_B2 = common dso_local global i64 0, align 8
@DEVICEID_ATHEROS_AR8131 = common dso_local global i64 0, align 8
@DEVICEID_ATHEROS_AR8132 = common dso_local global i64 0, align 8
@ANA_LOOP_SEL_10BT = common dso_local global i32 0, align 4
@ANA_EN_MASK_TB = common dso_local global i32 0, align 4
@ANA_EN_10BT_IDLE = common dso_local global i32 0, align 4
@ANA_INTERVAL_SEL_TIMER_SHIFT = common dso_local global i32 0, align 4
@ANA_INTERVAL_SEL_TIMER_MASK = common dso_local global i32 0, align 4
@MII_ANA_CFG18 = common dso_local global i32 0, align 4
@ANA_SERDES_CDR_BW_SHIFT = common dso_local global i32 0, align 4
@ANA_SERDES_CDR_BW_MASK = common dso_local global i32 0, align 4
@ANA_SERDES_EN_DEEM = common dso_local global i32 0, align 4
@ANA_SERDES_SEL_HSP = common dso_local global i32 0, align 4
@ANA_SERDES_EN_PLL = common dso_local global i32 0, align 4
@ANA_SERDES_EN_LCKDT = common dso_local global i32 0, align 4
@MII_ANA_CFG5 = common dso_local global i32 0, align 4
@ANA_LONG_CABLE_TH_100_SHIFT = common dso_local global i32 0, align 4
@ANA_LONG_CABLE_TH_100_MASK = common dso_local global i32 0, align 4
@ANA_SHORT_CABLE_TH_100_SHIFT = common dso_local global i32 0, align 4
@ANA_BP_BAD_LINK_ACCUM = common dso_local global i32 0, align 4
@ANA_BP_SMALL_BW = common dso_local global i32 0, align 4
@MII_ANA_CFG54 = common dso_local global i32 0, align 4
@ANA_IECHO_ADJ_3_SHIFT = common dso_local global i32 0, align 4
@ANA_IECHO_ADJ_3_MASK = common dso_local global i32 0, align 4
@ANA_IECHO_ADJ_2_SHIFT = common dso_local global i32 0, align 4
@ANA_IECHO_ADJ_2_MASK = common dso_local global i32 0, align 4
@ANA_IECHO_ADJ_1_SHIFT = common dso_local global i32 0, align 4
@ANA_IECHO_ADJ_1_MASK = common dso_local global i32 0, align 4
@ANA_IECHO_ADJ_0_SHIFT = common dso_local global i32 0, align 4
@ANA_IECHO_ADJ_0_MASK = common dso_local global i32 0, align 4
@MII_ANA_CFG4 = common dso_local global i32 0, align 4
@ANA_MANUL_SWICH_ON_SHIFT = common dso_local global i32 0, align 4
@ANA_MANUL_SWICH_ON_MASK = common dso_local global i32 0, align 4
@ANA_RESTART_CAL = common dso_local global i32 0, align 4
@ANA_MAN_ENABLE = common dso_local global i32 0, align 4
@ANA_SEL_HSP = common dso_local global i32 0, align 4
@ANA_EN_HB = common dso_local global i32 0, align 4
@ANA_OEN_125M = common dso_local global i32 0, align 4
@MII_ANA_CFG0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alc_softc*)* @alc_phy_reset_813x to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc_phy_reset_813x(%struct.alc_softc* %0) #0 {
  %2 = alloca %struct.alc_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.alc_softc* %0, %struct.alc_softc** %2, align 8
  %4 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %5 = load i32, i32* @ALC_GPHY_CFG, align 4
  %6 = load i32, i32* @GPHY_CFG_SEL_ANA_RESET, align 4
  %7 = call i32 @CSR_WRITE_2(%struct.alc_softc* %4, i32 %5, i32 %6)
  %8 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %9 = load i32, i32* @ALC_GPHY_CFG, align 4
  %10 = call i32 @CSR_READ_2(%struct.alc_softc* %8, i32 %9)
  %11 = call i32 @DELAY(i32 10000)
  %12 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %13 = load i32, i32* @ALC_GPHY_CFG, align 4
  %14 = load i32, i32* @GPHY_CFG_EXT_RESET, align 4
  %15 = load i32, i32* @GPHY_CFG_SEL_ANA_RESET, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @CSR_WRITE_2(%struct.alc_softc* %12, i32 %13, i32 %16)
  %18 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %19 = load i32, i32* @ALC_GPHY_CFG, align 4
  %20 = call i32 @CSR_READ_2(%struct.alc_softc* %18, i32 %19)
  %21 = call i32 @DELAY(i32 10000)
  %22 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %23 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @DEVICEID_ATHEROS_AR8152_B, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %56

29:                                               ; preds = %1
  %30 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %31 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %34 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @ALC_MII_DBG_ADDR, align 4
  %37 = call i32 @alc_miibus_writereg(i32 %32, i32 %35, i32 %36, i32 10)
  %38 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %39 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %42 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @ALC_MII_DBG_DATA, align 4
  %45 = call i32 @alc_miibus_readreg(i32 %40, i32 %43, i32 %44)
  store i32 %45, i32* %3, align 4
  %46 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %47 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %50 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @ALC_MII_DBG_DATA, align 4
  %53 = load i32, i32* %3, align 4
  %54 = and i32 %53, 57343
  %55 = call i32 @alc_miibus_writereg(i32 %48, i32 %51, i32 %52, i32 %54)
  br label %56

56:                                               ; preds = %29, %1
  %57 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %58 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %57, i32 0, i32 2
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @DEVICEID_ATHEROS_AR8151, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %88, label %64

64:                                               ; preds = %56
  %65 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %66 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %65, i32 0, i32 2
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @DEVICEID_ATHEROS_AR8151_V2, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %88, label %72

72:                                               ; preds = %64
  %73 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %74 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %73, i32 0, i32 2
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @DEVICEID_ATHEROS_AR8152_B, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %88, label %80

80:                                               ; preds = %72
  %81 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %82 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %81, i32 0, i32 2
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @DEVICEID_ATHEROS_AR8152_B2, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %116

88:                                               ; preds = %80, %72, %64, %56
  %89 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %90 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %93 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @ALC_MII_DBG_ADDR, align 4
  %96 = call i32 @alc_miibus_writereg(i32 %91, i32 %94, i32 %95, i32 59)
  %97 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %98 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %101 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @ALC_MII_DBG_DATA, align 4
  %104 = call i32 @alc_miibus_readreg(i32 %99, i32 %102, i32 %103)
  store i32 %104, i32* %3, align 4
  %105 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %106 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %109 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @ALC_MII_DBG_DATA, align 4
  %112 = load i32, i32* %3, align 4
  %113 = and i32 %112, 65527
  %114 = call i32 @alc_miibus_writereg(i32 %107, i32 %110, i32 %111, i32 %113)
  %115 = call i32 @DELAY(i32 20000)
  br label %116

116:                                              ; preds = %88, %80
  %117 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %118 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %117, i32 0, i32 2
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @DEVICEID_ATHEROS_AR8151, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %141

124:                                              ; preds = %116
  %125 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %126 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %129 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @ALC_MII_DBG_ADDR, align 4
  %132 = call i32 @alc_miibus_writereg(i32 %127, i32 %130, i32 %131, i32 41)
  %133 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %134 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %137 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @ALC_MII_DBG_DATA, align 4
  %140 = call i32 @alc_miibus_writereg(i32 %135, i32 %138, i32 %139, i32 37533)
  br label %141

141:                                              ; preds = %124, %116
  %142 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %143 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %142, i32 0, i32 2
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @DEVICEID_ATHEROS_AR8131, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %173, label %149

149:                                              ; preds = %141
  %150 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %151 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %150, i32 0, i32 2
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @DEVICEID_ATHEROS_AR8132, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %173, label %157

157:                                              ; preds = %149
  %158 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %159 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %158, i32 0, i32 2
  %160 = load %struct.TYPE_2__*, %struct.TYPE_2__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @DEVICEID_ATHEROS_AR8151_V2, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %173, label %165

165:                                              ; preds = %157
  %166 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %167 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %166, i32 0, i32 2
  %168 = load %struct.TYPE_2__*, %struct.TYPE_2__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @DEVICEID_ATHEROS_AR8152_B2, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %190

173:                                              ; preds = %165, %157, %149, %141
  %174 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %175 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %178 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @ALC_MII_DBG_ADDR, align 4
  %181 = call i32 @alc_miibus_writereg(i32 %176, i32 %179, i32 %180, i32 41)
  %182 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %183 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %186 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @ALC_MII_DBG_DATA, align 4
  %189 = call i32 @alc_miibus_writereg(i32 %184, i32 %187, i32 %188, i32 46813)
  br label %190

190:                                              ; preds = %173, %165
  %191 = load i32, i32* @ANA_LOOP_SEL_10BT, align 4
  %192 = load i32, i32* @ANA_EN_MASK_TB, align 4
  %193 = or i32 %191, %192
  %194 = load i32, i32* @ANA_EN_10BT_IDLE, align 4
  %195 = or i32 %193, %194
  %196 = load i32, i32* @ANA_INTERVAL_SEL_TIMER_SHIFT, align 4
  %197 = shl i32 1, %196
  %198 = load i32, i32* @ANA_INTERVAL_SEL_TIMER_MASK, align 4
  %199 = and i32 %197, %198
  %200 = or i32 %195, %199
  store i32 %200, i32* %3, align 4
  %201 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %202 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %205 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* @ALC_MII_DBG_ADDR, align 4
  %208 = load i32, i32* @MII_ANA_CFG18, align 4
  %209 = call i32 @alc_miibus_writereg(i32 %203, i32 %206, i32 %207, i32 %208)
  %210 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %211 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %214 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* @ALC_MII_DBG_DATA, align 4
  %217 = load i32, i32* %3, align 4
  %218 = call i32 @alc_miibus_writereg(i32 %212, i32 %215, i32 %216, i32 %217)
  %219 = load i32, i32* @ANA_SERDES_CDR_BW_SHIFT, align 4
  %220 = shl i32 2, %219
  %221 = load i32, i32* @ANA_SERDES_CDR_BW_MASK, align 4
  %222 = and i32 %220, %221
  %223 = load i32, i32* @ANA_SERDES_EN_DEEM, align 4
  %224 = or i32 %222, %223
  %225 = load i32, i32* @ANA_SERDES_SEL_HSP, align 4
  %226 = or i32 %224, %225
  %227 = load i32, i32* @ANA_SERDES_EN_PLL, align 4
  %228 = or i32 %226, %227
  %229 = load i32, i32* @ANA_SERDES_EN_LCKDT, align 4
  %230 = or i32 %228, %229
  store i32 %230, i32* %3, align 4
  %231 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %232 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %235 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* @ALC_MII_DBG_ADDR, align 4
  %238 = load i32, i32* @MII_ANA_CFG5, align 4
  %239 = call i32 @alc_miibus_writereg(i32 %233, i32 %236, i32 %237, i32 %238)
  %240 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %241 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %244 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = load i32, i32* @ALC_MII_DBG_DATA, align 4
  %247 = load i32, i32* %3, align 4
  %248 = call i32 @alc_miibus_writereg(i32 %242, i32 %245, i32 %246, i32 %247)
  %249 = load i32, i32* @ANA_LONG_CABLE_TH_100_SHIFT, align 4
  %250 = shl i32 44, %249
  %251 = load i32, i32* @ANA_LONG_CABLE_TH_100_MASK, align 4
  %252 = and i32 %250, %251
  %253 = load i32, i32* @ANA_SHORT_CABLE_TH_100_SHIFT, align 4
  %254 = shl i32 33, %253
  %255 = load i32, i32* @ANA_SHORT_CABLE_TH_100_SHIFT, align 4
  %256 = and i32 %254, %255
  %257 = or i32 %252, %256
  %258 = load i32, i32* @ANA_BP_BAD_LINK_ACCUM, align 4
  %259 = or i32 %257, %258
  %260 = load i32, i32* @ANA_BP_SMALL_BW, align 4
  %261 = or i32 %259, %260
  store i32 %261, i32* %3, align 4
  %262 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %263 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %266 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = load i32, i32* @ALC_MII_DBG_ADDR, align 4
  %269 = load i32, i32* @MII_ANA_CFG54, align 4
  %270 = call i32 @alc_miibus_writereg(i32 %264, i32 %267, i32 %268, i32 %269)
  %271 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %272 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %275 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = load i32, i32* @ALC_MII_DBG_DATA, align 4
  %278 = load i32, i32* %3, align 4
  %279 = call i32 @alc_miibus_writereg(i32 %273, i32 %276, i32 %277, i32 %278)
  %280 = load i32, i32* @ANA_IECHO_ADJ_3_SHIFT, align 4
  %281 = shl i32 11, %280
  %282 = load i32, i32* @ANA_IECHO_ADJ_3_MASK, align 4
  %283 = and i32 %281, %282
  %284 = load i32, i32* @ANA_IECHO_ADJ_2_SHIFT, align 4
  %285 = shl i32 11, %284
  %286 = load i32, i32* @ANA_IECHO_ADJ_2_MASK, align 4
  %287 = and i32 %285, %286
  %288 = or i32 %283, %287
  %289 = load i32, i32* @ANA_IECHO_ADJ_1_SHIFT, align 4
  %290 = shl i32 8, %289
  %291 = load i32, i32* @ANA_IECHO_ADJ_1_MASK, align 4
  %292 = and i32 %290, %291
  %293 = or i32 %288, %292
  %294 = load i32, i32* @ANA_IECHO_ADJ_0_SHIFT, align 4
  %295 = shl i32 8, %294
  %296 = load i32, i32* @ANA_IECHO_ADJ_0_MASK, align 4
  %297 = and i32 %295, %296
  %298 = or i32 %293, %297
  store i32 %298, i32* %3, align 4
  %299 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %300 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %303 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = load i32, i32* @ALC_MII_DBG_ADDR, align 4
  %306 = load i32, i32* @MII_ANA_CFG4, align 4
  %307 = call i32 @alc_miibus_writereg(i32 %301, i32 %304, i32 %305, i32 %306)
  %308 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %309 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 4
  %311 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %312 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = load i32, i32* @ALC_MII_DBG_DATA, align 4
  %315 = load i32, i32* %3, align 4
  %316 = call i32 @alc_miibus_writereg(i32 %310, i32 %313, i32 %314, i32 %315)
  %317 = load i32, i32* @ANA_MANUL_SWICH_ON_SHIFT, align 4
  %318 = and i32 7, %317
  %319 = load i32, i32* @ANA_MANUL_SWICH_ON_MASK, align 4
  %320 = and i32 %318, %319
  %321 = load i32, i32* @ANA_RESTART_CAL, align 4
  %322 = or i32 %320, %321
  %323 = load i32, i32* @ANA_MAN_ENABLE, align 4
  %324 = or i32 %322, %323
  %325 = load i32, i32* @ANA_SEL_HSP, align 4
  %326 = or i32 %324, %325
  %327 = load i32, i32* @ANA_EN_HB, align 4
  %328 = or i32 %326, %327
  %329 = load i32, i32* @ANA_OEN_125M, align 4
  %330 = or i32 %328, %329
  store i32 %330, i32* %3, align 4
  %331 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %332 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %331, i32 0, i32 1
  %333 = load i32, i32* %332, align 4
  %334 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %335 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  %337 = load i32, i32* @ALC_MII_DBG_ADDR, align 4
  %338 = load i32, i32* @MII_ANA_CFG0, align 4
  %339 = call i32 @alc_miibus_writereg(i32 %333, i32 %336, i32 %337, i32 %338)
  %340 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %341 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %340, i32 0, i32 1
  %342 = load i32, i32* %341, align 4
  %343 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %344 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 8
  %346 = load i32, i32* @ALC_MII_DBG_DATA, align 4
  %347 = load i32, i32* %3, align 4
  %348 = call i32 @alc_miibus_writereg(i32 %342, i32 %345, i32 %346, i32 %347)
  %349 = call i32 @DELAY(i32 1000)
  %350 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %351 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 4
  %353 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %354 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 8
  %356 = load i32, i32* @ALC_MII_DBG_ADDR, align 4
  %357 = call i32 @alc_miibus_writereg(i32 %352, i32 %355, i32 %356, i32 41)
  %358 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %359 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %358, i32 0, i32 1
  %360 = load i32, i32* %359, align 4
  %361 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %362 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %361, i32 0, i32 0
  %363 = load i32, i32* %362, align 8
  %364 = load i32, i32* @ALC_MII_DBG_DATA, align 4
  %365 = call i32 @alc_miibus_readreg(i32 %360, i32 %363, i32 %364)
  store i32 %365, i32* %3, align 4
  %366 = load i32, i32* %3, align 4
  %367 = and i32 %366, -32769
  store i32 %367, i32* %3, align 4
  %368 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %369 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %368, i32 0, i32 1
  %370 = load i32, i32* %369, align 4
  %371 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %372 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 8
  %374 = load i32, i32* @ALC_MII_DBG_DATA, align 4
  %375 = load i32, i32* %3, align 4
  %376 = call i32 @alc_miibus_writereg(i32 %370, i32 %373, i32 %374, i32 %375)
  %377 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %378 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %377, i32 0, i32 1
  %379 = load i32, i32* %378, align 4
  %380 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %381 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %380, i32 0, i32 0
  %382 = load i32, i32* %381, align 8
  %383 = load i32, i32* @ALC_MII_DBG_ADDR, align 4
  %384 = call i32 @alc_miibus_writereg(i32 %379, i32 %382, i32 %383, i32 11)
  %385 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %386 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %385, i32 0, i32 1
  %387 = load i32, i32* %386, align 4
  %388 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %389 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %388, i32 0, i32 0
  %390 = load i32, i32* %389, align 8
  %391 = load i32, i32* @ALC_MII_DBG_DATA, align 4
  %392 = call i32 @alc_miibus_readreg(i32 %387, i32 %390, i32 %391)
  store i32 %392, i32* %3, align 4
  %393 = load i32, i32* %3, align 4
  %394 = and i32 %393, -32769
  store i32 %394, i32* %3, align 4
  %395 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %396 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %395, i32 0, i32 1
  %397 = load i32, i32* %396, align 4
  %398 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %399 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %398, i32 0, i32 0
  %400 = load i32, i32* %399, align 8
  %401 = load i32, i32* @ALC_MII_DBG_DATA, align 4
  %402 = load i32, i32* %3, align 4
  %403 = call i32 @alc_miibus_writereg(i32 %397, i32 %400, i32 %401, i32 %402)
  ret void
}

declare dso_local i32 @CSR_WRITE_2(%struct.alc_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_2(%struct.alc_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @alc_miibus_writereg(i32, i32, i32, i32) #1

declare dso_local i32 @alc_miibus_readreg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
