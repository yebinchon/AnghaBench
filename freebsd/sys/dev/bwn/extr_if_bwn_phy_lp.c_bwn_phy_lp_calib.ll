; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_lp.c_bwn_phy_lp_calib.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_lp.c_bwn_phy_lp_calib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_rxcompco = type { i64, i32, i32 }
%struct.bwn_mac = type { %struct.TYPE_4__, %struct.bwn_softc* }
%struct.TYPE_4__ = type { i32, %struct.bwn_phy_lp }
%struct.bwn_phy_lp = type { i64, i64, i32 }
%struct.bwn_softc = type { %struct.TYPE_3__, %struct.ieee80211com }
%struct.TYPE_3__ = type { i64 }
%struct.ieee80211com = type { i32 }
%struct.bwn_txgain = type { i32 }

@BWN_BTCOEX_CTL = common dso_local global i32 0, align 4
@BWN_BTCOEX_TXCTL = common dso_local global i32 0, align 4
@BWN_PHYLP_TXPCTL_OFF = common dso_local global i32 0, align 4
@BWN_PHY_AFE_CTL_OVR = common dso_local global i32 0, align 4
@BWN_PHY_RF_PWR_OVERRIDE = common dso_local global i32 0, align 4
@BHND_CHIPID_BCM5354 = common dso_local global i64 0, align 8
@bwn_rxcompco_5354 = common dso_local global %struct.bwn_rxcompco* null, align 8
@bwn_rxcompco_r2 = common dso_local global %struct.bwn_rxcompco zeroinitializer, align 8
@bwn_rxcompco_r12 = common dso_local global %struct.bwn_rxcompco* null, align 8
@BWN_PHY_RX_COMP_COEFF_S = common dso_local global i32 0, align 4
@BWN_PHY_RF_OVERRIDE_0 = common dso_local global i32 0, align 4
@BWN_PHY_RF_OVERRIDE_VAL_0 = common dso_local global i32 0, align 4
@BWN_PHY_AFE_CTL_OVRVAL = common dso_local global i32 0, align 4
@BWN_PHY_RF_OVERRIDE_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*)* @bwn_phy_lp_calib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_phy_lp_calib(%struct.bwn_mac* %0) #0 {
  %2 = alloca %struct.bwn_mac*, align 8
  %3 = alloca %struct.bwn_phy_lp*, align 8
  %4 = alloca %struct.bwn_softc*, align 8
  %5 = alloca %struct.ieee80211com*, align 8
  %6 = alloca %struct.bwn_rxcompco*, align 8
  %7 = alloca %struct.bwn_txgain, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.bwn_txgain, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %2, align 8
  %16 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %17 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  store %struct.bwn_phy_lp* %18, %struct.bwn_phy_lp** %3, align 8
  %19 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %20 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %19, i32 0, i32 1
  %21 = load %struct.bwn_softc*, %struct.bwn_softc** %20, align 8
  store %struct.bwn_softc* %21, %struct.bwn_softc** %4, align 8
  %22 = load %struct.bwn_softc*, %struct.bwn_softc** %4, align 8
  %23 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %22, i32 0, i32 1
  store %struct.ieee80211com* %23, %struct.ieee80211com** %5, align 8
  store %struct.bwn_rxcompco* null, %struct.bwn_rxcompco** %6, align 8
  store i32 0, i32* %14, align 4
  %24 = load %struct.bwn_phy_lp*, %struct.bwn_phy_lp** %3, align 8
  %25 = getelementptr inbounds %struct.bwn_phy_lp, %struct.bwn_phy_lp* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.bwn_phy_lp*, %struct.bwn_phy_lp** %3, align 8
  %28 = getelementptr inbounds %struct.bwn_phy_lp, %struct.bwn_phy_lp* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %1
  %32 = load %struct.bwn_phy_lp*, %struct.bwn_phy_lp** %3, align 8
  %33 = getelementptr inbounds %struct.bwn_phy_lp, %struct.bwn_phy_lp* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.bwn_phy_lp*, %struct.bwn_phy_lp** %3, align 8
  %36 = getelementptr inbounds %struct.bwn_phy_lp, %struct.bwn_phy_lp* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  store i32 1, i32* %14, align 4
  br label %37

37:                                               ; preds = %31, %1
  %38 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %39 = call i32 @bwn_mac_suspend(%struct.bwn_mac* %38)
  %40 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %41 = load i32, i32* @BWN_BTCOEX_CTL, align 4
  %42 = call i32 @BWN_WRITE_2(%struct.bwn_mac* %40, i32 %41, i32 3)
  %43 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %44 = load i32, i32* @BWN_BTCOEX_TXCTL, align 4
  %45 = call i32 @BWN_WRITE_2(%struct.bwn_mac* %43, i32 %44, i32 255)
  %46 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %47 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp sge i32 %49, 2
  br i1 %50, label %51, label %54

51:                                               ; preds = %37
  %52 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %53 = call i32 @bwn_phy_lp_digflt_save(%struct.bwn_mac* %52)
  br label %54

54:                                               ; preds = %51, %37
  %55 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %56 = call i32 @bwn_phy_lp_get_txpctlmode(%struct.bwn_mac* %55)
  %57 = load %struct.bwn_phy_lp*, %struct.bwn_phy_lp** %3, align 8
  %58 = getelementptr inbounds %struct.bwn_phy_lp, %struct.bwn_phy_lp* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %13, align 4
  %60 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %61 = load i32, i32* @BWN_PHYLP_TXPCTL_OFF, align 4
  %62 = call i32 @bwn_phy_lp_set_txpctlmode(%struct.bwn_mac* %60, i32 %61)
  %63 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %64 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %54
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* @BWN_PHYLP_TXPCTL_OFF, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %74 = call i32 @bwn_phy_lp_bugfix(%struct.bwn_mac* %73)
  br label %75

75:                                               ; preds = %72, %68, %54
  %76 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %77 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp sge i32 %79, 2
  br i1 %80, label %81, label %128

81:                                               ; preds = %75
  %82 = load i32, i32* %14, align 4
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %84, label %128

84:                                               ; preds = %81
  %85 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %86 = call i32 @bwn_phy_lp_get_txpctlmode(%struct.bwn_mac* %85)
  %87 = load %struct.bwn_phy_lp*, %struct.bwn_phy_lp** %3, align 8
  %88 = getelementptr inbounds %struct.bwn_phy_lp, %struct.bwn_phy_lp* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  store i32 %89, i32* %9, align 4
  %90 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %91 = load i32, i32* @BWN_PHY_AFE_CTL_OVR, align 4
  %92 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %90, i32 %91)
  %93 = and i32 %92, 64
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %84
  %97 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %98 = call i32 @bwn_phy_lp_get_txgain(%struct.bwn_mac* %97)
  %99 = getelementptr inbounds %struct.bwn_txgain, %struct.bwn_txgain* %15, i32 0, i32 0
  store i32 %98, i32* %99, align 4
  %100 = bitcast %struct.bwn_txgain* %7 to i8*
  %101 = bitcast %struct.bwn_txgain* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %100, i8* align 4 %101, i64 4, i1 false)
  br label %102

102:                                              ; preds = %96, %84
  %103 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %104 = load i32, i32* @BWN_PHY_RF_PWR_OVERRIDE, align 4
  %105 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %103, i32 %104)
  %106 = and i32 %105, 255
  store i32 %106, i32* %11, align 4
  %107 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %108 = call i32 @bwn_phy_lp_get_bbmult(%struct.bwn_mac* %107)
  store i32 %108, i32* %12, align 4
  %109 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %110 = load i32, i32* @BWN_PHYLP_TXPCTL_OFF, align 4
  %111 = call i32 @bwn_phy_lp_set_txpctlmode(%struct.bwn_mac* %109, i32 %110)
  %112 = load i32, i32* %10, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %102
  %115 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %116 = call i32 @bwn_phy_lp_set_txgain(%struct.bwn_mac* %115, %struct.bwn_txgain* %7)
  br label %117

117:                                              ; preds = %114, %102
  %118 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %119 = load i32, i32* %12, align 4
  %120 = call i32 @bwn_phy_lp_set_bbmult(%struct.bwn_mac* %118, i32 %119)
  %121 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %122 = load i32, i32* %9, align 4
  %123 = call i32 @bwn_phy_lp_set_txpctlmode(%struct.bwn_mac* %121, i32 %122)
  %124 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %125 = load i32, i32* @BWN_PHY_RF_PWR_OVERRIDE, align 4
  %126 = load i32, i32* %11, align 4
  %127 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %124, i32 %125, i32 65280, i32 %126)
  br label %128

128:                                              ; preds = %117, %81, %75
  %129 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %130 = load i32, i32* %13, align 4
  %131 = call i32 @bwn_phy_lp_set_txpctlmode(%struct.bwn_mac* %129, i32 %130)
  %132 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %133 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp sge i32 %135, 2
  br i1 %136, label %137, label %140

137:                                              ; preds = %128
  %138 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %139 = call i32 @bwn_phy_lp_digflt_restore(%struct.bwn_mac* %138)
  br label %140

140:                                              ; preds = %137, %128
  %141 = load %struct.bwn_softc*, %struct.bwn_softc** %4, align 8
  %142 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @BHND_CHIPID_BCM5354, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %174

147:                                              ; preds = %140
  store i32 0, i32* %8, align 4
  br label %148

148:                                              ; preds = %170, %147
  %149 = load i32, i32* %8, align 4
  %150 = load %struct.bwn_rxcompco*, %struct.bwn_rxcompco** @bwn_rxcompco_5354, align 8
  %151 = call i32 @N(%struct.bwn_rxcompco* %150)
  %152 = icmp slt i32 %149, %151
  br i1 %152, label %153, label %173

153:                                              ; preds = %148
  %154 = load %struct.bwn_rxcompco*, %struct.bwn_rxcompco** @bwn_rxcompco_5354, align 8
  %155 = load i32, i32* %8, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.bwn_rxcompco, %struct.bwn_rxcompco* %154, i64 %156
  %158 = getelementptr inbounds %struct.bwn_rxcompco, %struct.bwn_rxcompco* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.bwn_phy_lp*, %struct.bwn_phy_lp** %3, align 8
  %161 = getelementptr inbounds %struct.bwn_phy_lp, %struct.bwn_phy_lp* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = icmp eq i64 %159, %162
  br i1 %163, label %164, label %169

164:                                              ; preds = %153
  %165 = load %struct.bwn_rxcompco*, %struct.bwn_rxcompco** @bwn_rxcompco_5354, align 8
  %166 = load i32, i32* %8, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.bwn_rxcompco, %struct.bwn_rxcompco* %165, i64 %167
  store %struct.bwn_rxcompco* %168, %struct.bwn_rxcompco** %6, align 8
  br label %169

169:                                              ; preds = %164, %153
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %8, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %8, align 4
  br label %148

173:                                              ; preds = %148
  br label %209

174:                                              ; preds = %140
  %175 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %176 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = icmp sge i32 %178, 2
  br i1 %179, label %180, label %181

180:                                              ; preds = %174
  store %struct.bwn_rxcompco* @bwn_rxcompco_r2, %struct.bwn_rxcompco** %6, align 8
  br label %208

181:                                              ; preds = %174
  store i32 0, i32* %8, align 4
  br label %182

182:                                              ; preds = %204, %181
  %183 = load i32, i32* %8, align 4
  %184 = load %struct.bwn_rxcompco*, %struct.bwn_rxcompco** @bwn_rxcompco_r12, align 8
  %185 = call i32 @N(%struct.bwn_rxcompco* %184)
  %186 = icmp slt i32 %183, %185
  br i1 %186, label %187, label %207

187:                                              ; preds = %182
  %188 = load %struct.bwn_rxcompco*, %struct.bwn_rxcompco** @bwn_rxcompco_r12, align 8
  %189 = load i32, i32* %8, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.bwn_rxcompco, %struct.bwn_rxcompco* %188, i64 %190
  %192 = getelementptr inbounds %struct.bwn_rxcompco, %struct.bwn_rxcompco* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.bwn_phy_lp*, %struct.bwn_phy_lp** %3, align 8
  %195 = getelementptr inbounds %struct.bwn_phy_lp, %struct.bwn_phy_lp* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = icmp eq i64 %193, %196
  br i1 %197, label %198, label %203

198:                                              ; preds = %187
  %199 = load %struct.bwn_rxcompco*, %struct.bwn_rxcompco** @bwn_rxcompco_r12, align 8
  %200 = load i32, i32* %8, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.bwn_rxcompco, %struct.bwn_rxcompco* %199, i64 %201
  store %struct.bwn_rxcompco* %202, %struct.bwn_rxcompco** %6, align 8
  br label %203

203:                                              ; preds = %198, %187
  br label %204

204:                                              ; preds = %203
  %205 = load i32, i32* %8, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %8, align 4
  br label %182

207:                                              ; preds = %182
  br label %208

208:                                              ; preds = %207, %180
  br label %209

209:                                              ; preds = %208, %173
  %210 = load %struct.bwn_rxcompco*, %struct.bwn_rxcompco** %6, align 8
  %211 = icmp eq %struct.bwn_rxcompco* %210, null
  br i1 %211, label %212, label %213

212:                                              ; preds = %209
  br label %320

213:                                              ; preds = %209
  %214 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %215 = load i32, i32* @BWN_PHY_RX_COMP_COEFF_S, align 4
  %216 = load %struct.bwn_rxcompco*, %struct.bwn_rxcompco** %6, align 8
  %217 = getelementptr inbounds %struct.bwn_rxcompco, %struct.bwn_rxcompco* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 8
  %219 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %214, i32 %215, i32 65280, i32 %218)
  %220 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %221 = load i32, i32* @BWN_PHY_RX_COMP_COEFF_S, align 4
  %222 = load %struct.bwn_rxcompco*, %struct.bwn_rxcompco** %6, align 8
  %223 = getelementptr inbounds %struct.bwn_rxcompco, %struct.bwn_rxcompco* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 4
  %225 = shl i32 %224, 8
  %226 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %220, i32 %221, i32 255, i32 %225)
  %227 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %228 = call i32 @bwn_phy_lp_set_trsw_over(%struct.bwn_mac* %227, i32 1, i32 0)
  %229 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %230 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = call i64 @IEEE80211_IS_CHAN_2GHZ(i32 %231)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %241

234:                                              ; preds = %213
  %235 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %236 = load i32, i32* @BWN_PHY_RF_OVERRIDE_0, align 4
  %237 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %235, i32 %236, i32 8)
  %238 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %239 = load i32, i32* @BWN_PHY_RF_OVERRIDE_VAL_0, align 4
  %240 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %238, i32 %239, i32 65527, i32 0)
  br label %248

241:                                              ; preds = %213
  %242 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %243 = load i32, i32* @BWN_PHY_RF_OVERRIDE_0, align 4
  %244 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %242, i32 %243, i32 32)
  %245 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %246 = load i32, i32* @BWN_PHY_RF_OVERRIDE_VAL_0, align 4
  %247 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %245, i32 %246, i32 65503, i32 0)
  br label %248

248:                                              ; preds = %241, %234
  %249 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %250 = call i32 @bwn_phy_lp_set_rxgain(%struct.bwn_mac* %249, i32 11613)
  %251 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %252 = load i32, i32* @BWN_PHY_AFE_CTL_OVR, align 4
  %253 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %251, i32 %252, i32 65534)
  %254 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %255 = load i32, i32* @BWN_PHY_AFE_CTL_OVRVAL, align 4
  %256 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %254, i32 %255, i32 65534)
  %257 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %258 = load i32, i32* @BWN_PHY_RF_OVERRIDE_0, align 4
  %259 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %257, i32 %258, i32 2048)
  %260 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %261 = load i32, i32* @BWN_PHY_RF_OVERRIDE_VAL_0, align 4
  %262 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %260, i32 %261, i32 2048)
  %263 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %264 = call i32 @bwn_phy_lp_set_deaf(%struct.bwn_mac* %263, i32 0)
  %265 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %266 = call i32 @bwn_phy_lp_calc_rx_iq_comp(%struct.bwn_mac* %265, i32 65520)
  %267 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %268 = call i32 @bwn_phy_lp_clear_deaf(%struct.bwn_mac* %267, i32 0)
  %269 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %270 = load i32, i32* @BWN_PHY_RF_OVERRIDE_0, align 4
  %271 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %269, i32 %270, i32 65532)
  %272 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %273 = load i32, i32* @BWN_PHY_RF_OVERRIDE_0, align 4
  %274 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %272, i32 %273, i32 65527)
  %275 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %276 = load i32, i32* @BWN_PHY_RF_OVERRIDE_0, align 4
  %277 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %275, i32 %276, i32 65503)
  %278 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %279 = load i32, i32* @BWN_PHY_RF_OVERRIDE_0, align 4
  %280 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %278, i32 %279, i32 65534)
  %281 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %282 = load i32, i32* @BWN_PHY_RF_OVERRIDE_0, align 4
  %283 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %281, i32 %282, i32 65519)
  %284 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %285 = load i32, i32* @BWN_PHY_RF_OVERRIDE_0, align 4
  %286 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %284, i32 %285, i32 65471)
  %287 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %288 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = icmp sge i32 %290, 2
  br i1 %291, label %292, label %309

292:                                              ; preds = %248
  %293 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %294 = load i32, i32* @BWN_PHY_RF_OVERRIDE_2, align 4
  %295 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %293, i32 %294, i32 65279)
  %296 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %297 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = call i64 @IEEE80211_IS_CHAN_2GHZ(i32 %298)
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %308

301:                                              ; preds = %292
  %302 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %303 = load i32, i32* @BWN_PHY_RF_OVERRIDE_2, align 4
  %304 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %302, i32 %303, i32 64511)
  %305 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %306 = call i32 @BWN_PHY_OFDM(i32 229)
  %307 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %305, i32 %306, i32 65527)
  br label %308

308:                                              ; preds = %301, %292
  br label %313

309:                                              ; preds = %248
  %310 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %311 = load i32, i32* @BWN_PHY_RF_OVERRIDE_2, align 4
  %312 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %310, i32 %311, i32 65023)
  br label %313

313:                                              ; preds = %309, %308
  %314 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %315 = load i32, i32* @BWN_PHY_AFE_CTL_OVR, align 4
  %316 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %314, i32 %315, i32 65534)
  %317 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %318 = load i32, i32* @BWN_PHY_AFE_CTL_OVRVAL, align 4
  %319 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %317, i32 %318, i32 63487)
  br label %320

320:                                              ; preds = %313, %212
  %321 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %322 = call i32 @bwn_mac_enable(%struct.bwn_mac* %321)
  ret void
}

declare dso_local i32 @bwn_mac_suspend(%struct.bwn_mac*) #1

declare dso_local i32 @BWN_WRITE_2(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @bwn_phy_lp_digflt_save(%struct.bwn_mac*) #1

declare dso_local i32 @bwn_phy_lp_get_txpctlmode(%struct.bwn_mac*) #1

declare dso_local i32 @bwn_phy_lp_set_txpctlmode(%struct.bwn_mac*, i32) #1

declare dso_local i32 @bwn_phy_lp_bugfix(%struct.bwn_mac*) #1

declare dso_local i32 @BWN_PHY_READ(%struct.bwn_mac*, i32) #1

declare dso_local i32 @bwn_phy_lp_get_txgain(%struct.bwn_mac*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @bwn_phy_lp_get_bbmult(%struct.bwn_mac*) #1

declare dso_local i32 @bwn_phy_lp_set_txgain(%struct.bwn_mac*, %struct.bwn_txgain*) #1

declare dso_local i32 @bwn_phy_lp_set_bbmult(%struct.bwn_mac*, i32) #1

declare dso_local i32 @BWN_PHY_SETMASK(%struct.bwn_mac*, i32, i32, i32) #1

declare dso_local i32 @bwn_phy_lp_digflt_restore(%struct.bwn_mac*) #1

declare dso_local i32 @N(%struct.bwn_rxcompco*) #1

declare dso_local i32 @bwn_phy_lp_set_trsw_over(%struct.bwn_mac*, i32, i32) #1

declare dso_local i64 @IEEE80211_IS_CHAN_2GHZ(i32) #1

declare dso_local i32 @BWN_PHY_SET(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @bwn_phy_lp_set_rxgain(%struct.bwn_mac*, i32) #1

declare dso_local i32 @BWN_PHY_MASK(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @bwn_phy_lp_set_deaf(%struct.bwn_mac*, i32) #1

declare dso_local i32 @bwn_phy_lp_calc_rx_iq_comp(%struct.bwn_mac*, i32) #1

declare dso_local i32 @bwn_phy_lp_clear_deaf(%struct.bwn_mac*, i32) #1

declare dso_local i32 @BWN_PHY_OFDM(i32) #1

declare dso_local i32 @bwn_mac_enable(%struct.bwn_mac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
