; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_lp.c_bwn_phy_lp_rccal_r12.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_lp.c_bwn_phy_lp_rccal_r12.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.bwn_softc*, %struct.TYPE_2__ }
%struct.bwn_softc = type { i32 }
%struct.TYPE_2__ = type { %struct.bwn_phy_lp }
%struct.bwn_phy_lp = type { i32, i32 }
%struct.bwn_phy_lp_iq_est = type { i32, i32 }
%struct.bwn_txgain = type { i32 }

@bwn_phy_lp_rccal_r12.pwrtbl = internal constant [21 x i32] [i32 65536, i32 66903, i32 69165, i32 70624, i32 69410, i32 65380, i32 60834, i32 58836, i32 61393, i32 64488, i32 47032, i32 19253, i32 6750, i32 2571, i32 1092, i32 509, i32 255, i32 136, i32 76, i32 44, i32 26], align 16
@.str = private unnamed_addr constant [36 x i8] c"failed to change channel to 7 (%d)\0A\00", align 1
@BWN_PHY_AFE_CTL_OVR = common dso_local global i32 0, align 4
@BWN_PHY_RF_OVERRIDE_0 = common dso_local global i32 0, align 4
@BWN_PHY_RF_OVERRIDE_VAL_0 = common dso_local global i32 0, align 4
@BWN_PHY_AFE_CTL_OVRVAL = common dso_local global i32 0, align 4
@BWN_PHY_RF_OVERRIDE_2 = common dso_local global i32 0, align 4
@BWN_PHY_RF_OVERRIDE_2_VAL = common dso_local global i32 0, align 4
@BWN_PHY_LP_PHY_CTL = common dso_local global i32 0, align 4
@BWN_PHYLP_TXPCTL_OFF = common dso_local global i32 0, align 4
@BWN_PHY_PS_CTL_OVERRIDE_VAL0 = common dso_local global i32 0, align 4
@BWN_PHY_PS_CTL_OVERRIDE_VAL1 = common dso_local global i32 0, align 4
@BWN_PHY_PS_CTL_OVERRIDE_VAL2 = common dso_local global i32 0, align 4
@BWN_PHY_TX_GAIN_CTL_OVERRIDE_VAL = common dso_local global i32 0, align 4
@BWN_PHY_RX_GAIN_CTL_OVERRIDE_VAL = common dso_local global i32 0, align 4
@BWN_B2062_N_RXBB_CALIB2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bwn_mac*)* @bwn_phy_lp_rccal_r12 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwn_phy_lp_rccal_r12(%struct.bwn_mac* %0) #0 {
  %2 = alloca %struct.bwn_mac*, align 8
  %3 = alloca %struct.bwn_phy_lp*, align 8
  %4 = alloca %struct.bwn_softc*, align 8
  %5 = alloca %struct.bwn_phy_lp_iq_est, align 4
  %6 = alloca %struct.bwn_txgain, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [7 x i32], align 16
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.bwn_txgain, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %2, align 8
  %21 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %22 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store %struct.bwn_phy_lp* %23, %struct.bwn_phy_lp** %3, align 8
  %24 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %25 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %24, i32 0, i32 0
  %26 = load %struct.bwn_softc*, %struct.bwn_softc** %25, align 8
  store %struct.bwn_softc* %26, %struct.bwn_softc** %4, align 8
  %27 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %28 = call i32 @bwn_phy_lp_switch_channel(%struct.bwn_mac* %27, i32 7)
  store i32 %28, i32* %15, align 4
  %29 = load i32, i32* %15, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %1
  %32 = load %struct.bwn_softc*, %struct.bwn_softc** %4, align 8
  %33 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %15, align 4
  %36 = call i32 @device_printf(i32 %34, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %31, %1
  %38 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %39 = load i32, i32* @BWN_PHY_AFE_CTL_OVR, align 4
  %40 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %38, i32 %39)
  %41 = and i32 %40, 64
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 1, i32 0
  store i32 %44, i32* %17, align 4
  %45 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %46 = call i32 @bwn_phy_lp_get_bbmult(%struct.bwn_mac* %45)
  store i32 %46, i32* %18, align 4
  %47 = load i32, i32* %17, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %37
  %50 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %51 = call i32 @bwn_phy_lp_get_txgain(%struct.bwn_mac* %50)
  %52 = getelementptr inbounds %struct.bwn_txgain, %struct.bwn_txgain* %20, i32 0, i32 0
  store i32 %51, i32* %52, align 4
  %53 = bitcast %struct.bwn_txgain* %6 to i8*
  %54 = bitcast %struct.bwn_txgain* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %53, i8* align 4 %54, i64 4, i1 false)
  br label %55

55:                                               ; preds = %49, %37
  %56 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %57 = load i32, i32* @BWN_PHY_RF_OVERRIDE_0, align 4
  %58 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %56, i32 %57)
  %59 = getelementptr inbounds [7 x i32], [7 x i32]* %16, i64 0, i64 0
  store i32 %58, i32* %59, align 16
  %60 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %61 = load i32, i32* @BWN_PHY_RF_OVERRIDE_VAL_0, align 4
  %62 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %60, i32 %61)
  %63 = getelementptr inbounds [7 x i32], [7 x i32]* %16, i64 0, i64 1
  store i32 %62, i32* %63, align 4
  %64 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %65 = load i32, i32* @BWN_PHY_AFE_CTL_OVR, align 4
  %66 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %64, i32 %65)
  %67 = getelementptr inbounds [7 x i32], [7 x i32]* %16, i64 0, i64 2
  store i32 %66, i32* %67, align 8
  %68 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %69 = load i32, i32* @BWN_PHY_AFE_CTL_OVRVAL, align 4
  %70 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %68, i32 %69)
  %71 = getelementptr inbounds [7 x i32], [7 x i32]* %16, i64 0, i64 3
  store i32 %70, i32* %71, align 4
  %72 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %73 = load i32, i32* @BWN_PHY_RF_OVERRIDE_2, align 4
  %74 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %72, i32 %73)
  %75 = getelementptr inbounds [7 x i32], [7 x i32]* %16, i64 0, i64 4
  store i32 %74, i32* %75, align 16
  %76 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %77 = load i32, i32* @BWN_PHY_RF_OVERRIDE_2_VAL, align 4
  %78 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %76, i32 %77)
  %79 = getelementptr inbounds [7 x i32], [7 x i32]* %16, i64 0, i64 5
  store i32 %78, i32* %79, align 4
  %80 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %81 = load i32, i32* @BWN_PHY_LP_PHY_CTL, align 4
  %82 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %80, i32 %81)
  %83 = getelementptr inbounds [7 x i32], [7 x i32]* %16, i64 0, i64 6
  store i32 %82, i32* %83, align 8
  %84 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %85 = call i32 @bwn_phy_lp_get_txpctlmode(%struct.bwn_mac* %84)
  %86 = load %struct.bwn_phy_lp*, %struct.bwn_phy_lp** %3, align 8
  %87 = getelementptr inbounds %struct.bwn_phy_lp, %struct.bwn_phy_lp* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %19, align 4
  %89 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %90 = load i32, i32* @BWN_PHYLP_TXPCTL_OFF, align 4
  %91 = call i32 @bwn_phy_lp_set_txpctlmode(%struct.bwn_mac* %89, i32 %90)
  %92 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %93 = call i32 @bwn_phy_lp_set_deaf(%struct.bwn_mac* %92, i32 1)
  %94 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %95 = call i32 @bwn_phy_lp_set_trsw_over(%struct.bwn_mac* %94, i32 0, i32 1)
  %96 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %97 = load i32, i32* @BWN_PHY_RF_OVERRIDE_VAL_0, align 4
  %98 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %96, i32 %97, i32 65531)
  %99 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %100 = load i32, i32* @BWN_PHY_RF_OVERRIDE_0, align 4
  %101 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %99, i32 %100, i32 4)
  %102 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %103 = load i32, i32* @BWN_PHY_RF_OVERRIDE_VAL_0, align 4
  %104 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %102, i32 %103, i32 65527)
  %105 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %106 = load i32, i32* @BWN_PHY_RF_OVERRIDE_0, align 4
  %107 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %105, i32 %106, i32 8)
  %108 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %109 = load i32, i32* @BWN_PHY_RF_OVERRIDE_VAL_0, align 4
  %110 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %108, i32 %109, i32 16)
  %111 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %112 = load i32, i32* @BWN_PHY_RF_OVERRIDE_0, align 4
  %113 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %111, i32 %112, i32 16)
  %114 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %115 = load i32, i32* @BWN_PHY_RF_OVERRIDE_VAL_0, align 4
  %116 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %114, i32 %115, i32 65503)
  %117 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %118 = load i32, i32* @BWN_PHY_RF_OVERRIDE_0, align 4
  %119 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %117, i32 %118, i32 32)
  %120 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %121 = load i32, i32* @BWN_PHY_RF_OVERRIDE_VAL_0, align 4
  %122 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %120, i32 %121, i32 65471)
  %123 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %124 = load i32, i32* @BWN_PHY_RF_OVERRIDE_0, align 4
  %125 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %123, i32 %124, i32 64)
  %126 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %127 = load i32, i32* @BWN_PHY_RF_OVERRIDE_2_VAL, align 4
  %128 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %126, i32 %127, i32 7)
  %129 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %130 = load i32, i32* @BWN_PHY_RF_OVERRIDE_2_VAL, align 4
  %131 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %129, i32 %130, i32 56)
  %132 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %133 = load i32, i32* @BWN_PHY_RF_OVERRIDE_2_VAL, align 4
  %134 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %132, i32 %133, i32 65343)
  %135 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %136 = load i32, i32* @BWN_PHY_RF_OVERRIDE_2_VAL, align 4
  %137 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %135, i32 %136, i32 256)
  %138 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %139 = load i32, i32* @BWN_PHY_RF_OVERRIDE_2_VAL, align 4
  %140 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %138, i32 %139, i32 65023)
  %141 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %142 = load i32, i32* @BWN_PHY_PS_CTL_OVERRIDE_VAL0, align 4
  %143 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %141, i32 %142, i32 0)
  %144 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %145 = load i32, i32* @BWN_PHY_PS_CTL_OVERRIDE_VAL1, align 4
  %146 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %144, i32 %145, i32 1)
  %147 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %148 = load i32, i32* @BWN_PHY_PS_CTL_OVERRIDE_VAL2, align 4
  %149 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %147, i32 %148, i32 32)
  %150 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %151 = load i32, i32* @BWN_PHY_RF_OVERRIDE_2_VAL, align 4
  %152 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %150, i32 %151, i32 64511)
  %153 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %154 = load i32, i32* @BWN_PHY_RF_OVERRIDE_2_VAL, align 4
  %155 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %153, i32 %154, i32 63487)
  %156 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %157 = load i32, i32* @BWN_PHY_TX_GAIN_CTL_OVERRIDE_VAL, align 4
  %158 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %156, i32 %157, i32 0)
  %159 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %160 = load i32, i32* @BWN_PHY_RX_GAIN_CTL_OVERRIDE_VAL, align 4
  %161 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %159, i32 %160, i32 17839)
  %162 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %163 = load i32, i32* @BWN_PHY_RF_OVERRIDE_2, align 4
  %164 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %162, i32 %163, i32 1023)
  %165 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %166 = call i32 @bwn_phy_lp_loopback(%struct.bwn_mac* %165)
  store i32 %166, i32* %11, align 4
  %167 = load i32, i32* %11, align 4
  %168 = icmp eq i32 %167, -1
  br i1 %168, label %169, label %170

169:                                              ; preds = %55
  br label %261

170:                                              ; preds = %55
  %171 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %172 = load i32, i32* %11, align 4
  %173 = call i32 @bwn_phy_lp_set_rxgain_idx(%struct.bwn_mac* %171, i32 %172)
  %174 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %175 = load i32, i32* @BWN_PHY_LP_PHY_CTL, align 4
  %176 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %174, i32 %175, i32 65471, i32 64)
  %177 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %178 = load i32, i32* @BWN_PHY_RF_OVERRIDE_2_VAL, align 4
  %179 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %177, i32 %178, i32 65528, i32 1)
  %180 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %181 = load i32, i32* @BWN_PHY_RF_OVERRIDE_2_VAL, align 4
  %182 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %180, i32 %181, i32 65479, i32 8)
  %183 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %184 = load i32, i32* @BWN_PHY_RF_OVERRIDE_2_VAL, align 4
  %185 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %183, i32 %184, i32 65343, i32 192)
  store i32 0, i32* %10, align 4
  %186 = call i32 @memset(%struct.bwn_phy_lp_iq_est* %5, i32 0, i32 8)
  store i32 128, i32* %12, align 4
  br label %187

187:                                              ; preds = %255, %170
  %188 = load i32, i32* %12, align 4
  %189 = icmp sle i32 %188, 159
  br i1 %189, label %190, label %258

190:                                              ; preds = %187
  %191 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %192 = load i32, i32* @BWN_B2062_N_RXBB_CALIB2, align 4
  %193 = load i32, i32* %12, align 4
  %194 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %191, i32 %192, i32 %193)
  store i32 0, i32* %14, align 4
  store i32 5, i32* %13, align 4
  br label %195

195:                                              ; preds = %251, %190
  %196 = load i32, i32* %13, align 4
  %197 = icmp sle i32 %196, 25
  br i1 %197, label %198, label %254

198:                                              ; preds = %195
  %199 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %200 = load i32, i32* %13, align 4
  %201 = load i32, i32* %13, align 4
  %202 = call i32 @bwn_phy_lp_ddfs_turnon(%struct.bwn_mac* %199, i32 1, i32 1, i32 %200, i32 %201, i32 0)
  %203 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %204 = call i32 @bwn_phy_lp_rx_iq_est(%struct.bwn_mac* %203, i32 1000, i32 32, %struct.bwn_phy_lp_iq_est* %5)
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %207, label %206

206:                                              ; preds = %198
  br label %261

207:                                              ; preds = %198
  %208 = getelementptr inbounds %struct.bwn_phy_lp_iq_est, %struct.bwn_phy_lp_iq_est* %5, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = getelementptr inbounds %struct.bwn_phy_lp_iq_est, %struct.bwn_phy_lp_iq_est* %5, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = add nsw i32 %209, %211
  store i32 %212, i32* %9, align 4
  %213 = load i32, i32* %13, align 4
  %214 = sub nsw i32 %213, 5
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds [21 x i32], [21 x i32]* @bwn_phy_lp_rccal_r12.pwrtbl, i64 0, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = ashr i32 %217, 3
  %219 = add nsw i32 %218, 1
  %220 = ashr i32 %219, 1
  store i32 %220, i32* %8, align 4
  %221 = load i32, i32* %9, align 4
  %222 = load i32, i32* %13, align 4
  %223 = icmp eq i32 %222, 5
  br i1 %223, label %224, label %226

224:                                              ; preds = %207
  %225 = load i32, i32* %9, align 4
  br label %227

226:                                              ; preds = %207
  br label %227

227:                                              ; preds = %226, %224
  %228 = phi i32 [ %225, %224 ], [ 0, %226 ]
  %229 = call i32 @bwn_phy_lp_roundup(i32 %221, i32 %228, i32 12)
  store i32 %229, i32* %7, align 4
  %230 = load i32, i32* %8, align 4
  %231 = load i32, i32* %7, align 4
  %232 = sub nsw i32 %230, %231
  %233 = load i32, i32* %8, align 4
  %234 = load i32, i32* %7, align 4
  %235 = sub nsw i32 %233, %234
  %236 = mul nsw i32 %232, %235
  %237 = load i32, i32* %14, align 4
  %238 = add nsw i32 %237, %236
  store i32 %238, i32* %14, align 4
  %239 = load i32, i32* %12, align 4
  %240 = icmp eq i32 %239, 128
  br i1 %240, label %245, label %241

241:                                              ; preds = %227
  %242 = load i32, i32* %14, align 4
  %243 = load i32, i32* %10, align 4
  %244 = icmp slt i32 %242, %243
  br i1 %244, label %245, label %250

245:                                              ; preds = %241, %227
  %246 = load i32, i32* %12, align 4
  %247 = load %struct.bwn_phy_lp*, %struct.bwn_phy_lp** %3, align 8
  %248 = getelementptr inbounds %struct.bwn_phy_lp, %struct.bwn_phy_lp* %247, i32 0, i32 1
  store i32 %246, i32* %248, align 4
  %249 = load i32, i32* %14, align 4
  store i32 %249, i32* %10, align 4
  br label %250

250:                                              ; preds = %245, %241
  br label %251

251:                                              ; preds = %250
  %252 = load i32, i32* %13, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %13, align 4
  br label %195

254:                                              ; preds = %195
  br label %255

255:                                              ; preds = %254
  %256 = load i32, i32* %12, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %12, align 4
  br label %187

258:                                              ; preds = %187
  %259 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %260 = call i32 @bwn_phy_lp_ddfs_turnoff(%struct.bwn_mac* %259)
  br label %261

261:                                              ; preds = %258, %206, %169
  %262 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %263 = call i32 @bwn_phy_lp_clear_deaf(%struct.bwn_mac* %262, i32 1)
  %264 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %265 = load i32, i32* @BWN_PHY_RF_OVERRIDE_0, align 4
  %266 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %264, i32 %265, i32 65408)
  %267 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %268 = load i32, i32* @BWN_PHY_RF_OVERRIDE_2, align 4
  %269 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %267, i32 %268, i32 64512)
  %270 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %271 = load i32, i32* @BWN_PHY_RF_OVERRIDE_VAL_0, align 4
  %272 = getelementptr inbounds [7 x i32], [7 x i32]* %16, i64 0, i64 1
  %273 = load i32, i32* %272, align 4
  %274 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %270, i32 %271, i32 %273)
  %275 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %276 = load i32, i32* @BWN_PHY_RF_OVERRIDE_0, align 4
  %277 = getelementptr inbounds [7 x i32], [7 x i32]* %16, i64 0, i64 0
  %278 = load i32, i32* %277, align 16
  %279 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %275, i32 %276, i32 %278)
  %280 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %281 = load i32, i32* @BWN_PHY_AFE_CTL_OVRVAL, align 4
  %282 = getelementptr inbounds [7 x i32], [7 x i32]* %16, i64 0, i64 3
  %283 = load i32, i32* %282, align 4
  %284 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %280, i32 %281, i32 %283)
  %285 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %286 = load i32, i32* @BWN_PHY_AFE_CTL_OVR, align 4
  %287 = getelementptr inbounds [7 x i32], [7 x i32]* %16, i64 0, i64 2
  %288 = load i32, i32* %287, align 8
  %289 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %285, i32 %286, i32 %288)
  %290 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %291 = load i32, i32* @BWN_PHY_RF_OVERRIDE_2_VAL, align 4
  %292 = getelementptr inbounds [7 x i32], [7 x i32]* %16, i64 0, i64 5
  %293 = load i32, i32* %292, align 4
  %294 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %290, i32 %291, i32 %293)
  %295 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %296 = load i32, i32* @BWN_PHY_RF_OVERRIDE_2, align 4
  %297 = getelementptr inbounds [7 x i32], [7 x i32]* %16, i64 0, i64 4
  %298 = load i32, i32* %297, align 16
  %299 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %295, i32 %296, i32 %298)
  %300 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %301 = load i32, i32* @BWN_PHY_LP_PHY_CTL, align 4
  %302 = getelementptr inbounds [7 x i32], [7 x i32]* %16, i64 0, i64 6
  %303 = load i32, i32* %302, align 8
  %304 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %300, i32 %301, i32 %303)
  %305 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %306 = load i32, i32* %18, align 4
  %307 = call i32 @bwn_phy_lp_set_bbmult(%struct.bwn_mac* %305, i32 %306)
  %308 = load i32, i32* %17, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %313

310:                                              ; preds = %261
  %311 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %312 = call i32 @bwn_phy_lp_set_txgain(%struct.bwn_mac* %311, %struct.bwn_txgain* %6)
  br label %313

313:                                              ; preds = %310, %261
  %314 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %315 = load i32, i32* %19, align 4
  %316 = call i32 @bwn_phy_lp_set_txpctlmode(%struct.bwn_mac* %314, i32 %315)
  %317 = load %struct.bwn_phy_lp*, %struct.bwn_phy_lp** %3, align 8
  %318 = getelementptr inbounds %struct.bwn_phy_lp, %struct.bwn_phy_lp* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %324

321:                                              ; preds = %313
  %322 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %323 = call i32 @bwn_phy_lp_set_rccap(%struct.bwn_mac* %322)
  br label %324

324:                                              ; preds = %321, %313
  ret i32 0
}

declare dso_local i32 @bwn_phy_lp_switch_channel(%struct.bwn_mac*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @BWN_PHY_READ(%struct.bwn_mac*, i32) #1

declare dso_local i32 @bwn_phy_lp_get_bbmult(%struct.bwn_mac*) #1

declare dso_local i32 @bwn_phy_lp_get_txgain(%struct.bwn_mac*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @bwn_phy_lp_get_txpctlmode(%struct.bwn_mac*) #1

declare dso_local i32 @bwn_phy_lp_set_txpctlmode(%struct.bwn_mac*, i32) #1

declare dso_local i32 @bwn_phy_lp_set_deaf(%struct.bwn_mac*, i32) #1

declare dso_local i32 @bwn_phy_lp_set_trsw_over(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @BWN_PHY_MASK(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @BWN_PHY_SET(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @BWN_PHY_WRITE(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @bwn_phy_lp_loopback(%struct.bwn_mac*) #1

declare dso_local i32 @bwn_phy_lp_set_rxgain_idx(%struct.bwn_mac*, i32) #1

declare dso_local i32 @BWN_PHY_SETMASK(%struct.bwn_mac*, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.bwn_phy_lp_iq_est*, i32, i32) #1

declare dso_local i32 @BWN_RF_WRITE(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @bwn_phy_lp_ddfs_turnon(%struct.bwn_mac*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @bwn_phy_lp_rx_iq_est(%struct.bwn_mac*, i32, i32, %struct.bwn_phy_lp_iq_est*) #1

declare dso_local i32 @bwn_phy_lp_roundup(i32, i32, i32) #1

declare dso_local i32 @bwn_phy_lp_ddfs_turnoff(%struct.bwn_mac*) #1

declare dso_local i32 @bwn_phy_lp_clear_deaf(%struct.bwn_mac*, i32) #1

declare dso_local i32 @bwn_phy_lp_set_bbmult(%struct.bwn_mac*, i32) #1

declare dso_local i32 @bwn_phy_lp_set_txgain(%struct.bwn_mac*, %struct.bwn_txgain*) #1

declare dso_local i32 @bwn_phy_lp_set_rccap(%struct.bwn_mac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
