; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_rev2_cal_rx_iq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_rev2_cal_rx_iq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.bwn_phy_n* }
%struct.bwn_phy_n = type { i32 }
%struct.bwn_nphy_txgains = type { i32 }
%struct.bwn_nphy_iqcal_params = type { i32 }
%struct.bwn_nphy_iq_est = type { i32, i32, i32, i32 }

@__const.bwn_nphy_rev2_cal_rx_iq.lna = private unnamed_addr constant [3 x i32] [i32 3, i32 3, i32 1], align 4
@__const.bwn_nphy_rev2_cal_rx_iq.hpf1 = private unnamed_addr constant [3 x i32] [i32 7, i32 2, i32 0], align 4
@__const.bwn_nphy_rev2_cal_rx_iq.hpf2 = private unnamed_addr constant [3 x i32] [i32 2, i32 0, i32 0], align 4
@BWN_NPHY_RFCTL_INTC1 = common dso_local global i32 0, align 4
@BWN_NPHY_RFCTL_INTC2 = common dso_local global i32 0, align 4
@BWN_NPHY_AFECTL_C1 = common dso_local global i32 0, align 4
@BWN_NPHY_AFECTL_C2 = common dso_local global i32 0, align 4
@BWN_NPHY_RFSEQCA = common dso_local global i32 0, align 4
@BWN_NPHY_AFECTL_OVER = common dso_local global i32 0, align 4
@BWN_NPHY_RFSEQCA_RXDIS = common dso_local global i32 0, align 4
@BWN_NPHY_RFSEQCA_RXDIS_SHIFT = common dso_local global i32 0, align 4
@BWN_NPHY_RFSEQCA_TXEN = common dso_local global i32 0, align 4
@BWN_BAND_5G = common dso_local global i64 0, align 8
@B2055_C1_GENSPARE2 = common dso_local global i32 0, align 4
@B2055_C2_GENSPARE2 = common dso_local global i32 0, align 4
@BWN_RFSEQ_RESET2RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bwn_mac*, i32, i32, i32)* @bwn_nphy_rev2_cal_rx_iq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwn_nphy_rev2_cal_rx_iq(%struct.bwn_mac* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.bwn_nphy_txgains, align 4
  %6 = alloca %struct.bwn_mac*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bwn_phy_n*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [2 x i32], align 4
  %14 = alloca i32, align 4
  %15 = alloca [6 x i32], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca [3 x i32], align 4
  %25 = alloca [3 x i32], align 4
  %26 = alloca [3 x i32], align 4
  %27 = alloca [3 x i32], align 4
  %28 = alloca [2 x i32], align 4
  %29 = alloca [2 x i32], align 4
  %30 = alloca [2 x %struct.bwn_nphy_iqcal_params], align 4
  %31 = alloca %struct.bwn_nphy_iq_est, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = getelementptr inbounds %struct.bwn_nphy_txgains, %struct.bwn_nphy_txgains* %5, i32 0, i32 0
  store i32 %1, i32* %35, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %36 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %37 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %38, align 8
  store %struct.bwn_phy_n* %39, %struct.bwn_phy_n** %9, align 8
  %40 = bitcast [3 x i32]* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %40, i8* align 4 bitcast ([3 x i32]* @__const.bwn_nphy_rev2_cal_rx_iq.lna to i8*), i64 12, i1 false)
  %41 = bitcast [3 x i32]* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 4 bitcast ([3 x i32]* @__const.bwn_nphy_rev2_cal_rx_iq.hpf1 to i8*), i64 12, i1 false)
  %42 = bitcast [3 x i32]* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %42, i8* align 4 bitcast ([3 x i32]* @__const.bwn_nphy_rev2_cal_rx_iq.hpf2 to i8*), i64 12, i1 false)
  %43 = bitcast [3 x i32]* %27 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %43, i8 0, i64 12, i1 false)
  store i32 0, i32* %32, align 4
  store i32 1, i32* %33, align 4
  store i32 13, i32* %34, align 4
  %44 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %45 = call i32 @bwn_nphy_stay_in_carrier_search(%struct.bwn_mac* %44, i32 1)
  %46 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %47 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %49, 2
  br i1 %50, label %51, label %54

51:                                               ; preds = %4
  %52 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %53 = call i32 @bwn_nphy_reapply_tx_cal_coeffs(%struct.bwn_mac* %52)
  br label %54

54:                                               ; preds = %51, %4
  %55 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %56 = call i32 @BWN_NTAB16(i32 7, i32 272)
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* %28, i64 0, i64 0
  %58 = call i32 @bwn_ntab_read_bulk(%struct.bwn_mac* %55, i32 %56, i32 2, i32* %57)
  store i32 0, i32* %10, align 4
  br label %59

59:                                               ; preds = %79, %54
  %60 = load i32, i32* %10, align 4
  %61 = icmp slt i32 %60, 2
  br i1 %61, label %62, label %82

62:                                               ; preds = %59
  %63 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [2 x %struct.bwn_nphy_iqcal_params], [2 x %struct.bwn_nphy_iqcal_params]* %30, i64 0, i64 %66
  %68 = getelementptr inbounds %struct.bwn_nphy_txgains, %struct.bwn_nphy_txgains* %5, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @bwn_nphy_iq_cal_gain_params(%struct.bwn_mac* %63, i32 %64, i32 %69, %struct.bwn_nphy_iqcal_params* %67)
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [2 x %struct.bwn_nphy_iqcal_params], [2 x %struct.bwn_nphy_iqcal_params]* %30, i64 0, i64 %72
  %74 = getelementptr inbounds %struct.bwn_nphy_iqcal_params, %struct.bwn_nphy_iqcal_params* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 %77
  store i32 %75, i32* %78, align 4
  br label %79

79:                                               ; preds = %62
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %10, align 4
  br label %59

82:                                               ; preds = %59
  %83 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %84 = call i32 @BWN_NTAB16(i32 7, i32 272)
  %85 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 0
  %86 = call i32 @bwn_ntab_write_bulk(%struct.bwn_mac* %83, i32 %84, i32 2, i32* %85)
  store i32 0, i32* %10, align 4
  br label %87

87:                                               ; preds = %400, %82
  %88 = load i32, i32* %10, align 4
  %89 = icmp slt i32 %88, 2
  br i1 %89, label %90, label %403

90:                                               ; preds = %87
  %91 = load i32, i32* %10, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %90
  %94 = load i32, i32* @BWN_NPHY_RFCTL_INTC1, align 4
  %95 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  store i32 %94, i32* %95, align 4
  %96 = load i32, i32* @BWN_NPHY_RFCTL_INTC2, align 4
  %97 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  store i32 %96, i32* %97, align 4
  %98 = load i32, i32* @BWN_NPHY_AFECTL_C1, align 4
  store i32 %98, i32* %14, align 4
  br label %105

99:                                               ; preds = %90
  %100 = load i32, i32* @BWN_NPHY_RFCTL_INTC2, align 4
  %101 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  store i32 %100, i32* %101, align 4
  %102 = load i32, i32* @BWN_NPHY_RFCTL_INTC1, align 4
  %103 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  store i32 %102, i32* %103, align 4
  %104 = load i32, i32* @BWN_NPHY_AFECTL_C2, align 4
  store i32 %104, i32* %14, align 4
  br label %105

105:                                              ; preds = %99, %93
  %106 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %107 = load i32, i32* @BWN_NPHY_RFSEQCA, align 4
  %108 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %106, i32 %107)
  %109 = getelementptr inbounds [6 x i32], [6 x i32]* %15, i64 0, i64 1
  store i32 %108, i32* %109, align 4
  %110 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %111 = load i32, i32* %14, align 4
  %112 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %110, i32 %111)
  %113 = getelementptr inbounds [6 x i32], [6 x i32]* %15, i64 0, i64 2
  store i32 %112, i32* %113, align 8
  %114 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %115 = load i32, i32* @BWN_NPHY_AFECTL_OVER, align 4
  %116 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %114, i32 %115)
  %117 = getelementptr inbounds [6 x i32], [6 x i32]* %15, i64 0, i64 3
  store i32 %116, i32* %117, align 4
  %118 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %119 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %118, i32 %120)
  %122 = getelementptr inbounds [6 x i32], [6 x i32]* %15, i64 0, i64 4
  store i32 %121, i32* %122, align 16
  %123 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %124 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %123, i32 %125)
  %127 = getelementptr inbounds [6 x i32], [6 x i32]* %15, i64 0, i64 5
  store i32 %126, i32* %127, align 4
  %128 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %129 = load i32, i32* @BWN_NPHY_RFSEQCA, align 4
  %130 = load i32, i32* @BWN_NPHY_RFSEQCA_RXDIS, align 4
  %131 = xor i32 %130, -1
  %132 = and i32 %131, 65535
  %133 = load i32, i32* %10, align 4
  %134 = sub nsw i32 1, %133
  %135 = load i32, i32* @BWN_NPHY_RFSEQCA_RXDIS_SHIFT, align 4
  %136 = shl i32 %134, %135
  %137 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %128, i32 %129, i32 %132, i32 %136)
  %138 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %139 = load i32, i32* @BWN_NPHY_RFSEQCA, align 4
  %140 = load i32, i32* @BWN_NPHY_RFSEQCA_TXEN, align 4
  %141 = xor i32 %140, -1
  %142 = load i32, i32* %10, align 4
  %143 = sub nsw i32 1, %142
  %144 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %138, i32 %139, i32 %141, i32 %143)
  %145 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %146 = load i32, i32* %14, align 4
  %147 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %145, i32 %146, i32 6)
  %148 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %149 = load i32, i32* @BWN_NPHY_AFECTL_OVER, align 4
  %150 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %148, i32 %149, i32 6)
  %151 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %152 = call i64 @bwn_current_band(%struct.bwn_mac* %151)
  store i64 %152, i64* %21, align 8
  %153 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %9, align 8
  %154 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = and i32 %155, -16777216
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %173

158:                                              ; preds = %105
  %159 = load i64, i64* %21, align 8
  %160 = load i64, i64* @BWN_BAND_5G, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %167

162:                                              ; preds = %158
  %163 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %164 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %163, i32 %165, i32 320)
  br label %172

167:                                              ; preds = %158
  %168 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %169 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %168, i32 %170, i32 272)
  br label %172

172:                                              ; preds = %167, %162
  br label %188

173:                                              ; preds = %105
  %174 = load i64, i64* %21, align 8
  %175 = load i64, i64* @BWN_BAND_5G, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %182

177:                                              ; preds = %173
  %178 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %179 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %178, i32 %180, i32 384)
  br label %187

182:                                              ; preds = %173
  %183 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %184 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %183, i32 %185, i32 288)
  br label %187

187:                                              ; preds = %182, %177
  br label %188

188:                                              ; preds = %187, %172
  %189 = load i64, i64* %21, align 8
  %190 = load i64, i64* @BWN_BAND_5G, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %197

192:                                              ; preds = %188
  %193 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %194 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %193, i32 %195, i32 328)
  br label %202

197:                                              ; preds = %188
  %198 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %199 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %198, i32 %200, i32 276)
  br label %202

202:                                              ; preds = %197, %192
  %203 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %9, align 8
  %204 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = and i32 %205, 65536
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %219

208:                                              ; preds = %202
  %209 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %210 = load i32, i32* @B2055_C1_GENSPARE2, align 4
  %211 = load i32, i32* %10, align 4
  %212 = add nsw i32 %211, 1
  %213 = call i32 @BWN_RF_SETMASK(%struct.bwn_mac* %209, i32 %210, i32 252, i32 %212)
  %214 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %215 = load i32, i32* @B2055_C2_GENSPARE2, align 4
  %216 = load i32, i32* %10, align 4
  %217 = sub nsw i32 2, %216
  %218 = call i32 @BWN_RF_SETMASK(%struct.bwn_mac* %214, i32 %215, i32 252, i32 %217)
  br label %219

219:                                              ; preds = %208, %202
  store i32 0, i32* %11, align 4
  br label %220

220:                                              ; preds = %359, %219
  %221 = load i32, i32* %11, align 4
  %222 = icmp slt i32 %221, 4
  br i1 %222, label %223, label %362

223:                                              ; preds = %220
  %224 = load i32, i32* %11, align 4
  %225 = icmp slt i32 %224, 3
  br i1 %225, label %226, label %239

226:                                              ; preds = %223
  %227 = load i32, i32* %11, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds [3 x i32], [3 x i32]* %24, i64 0, i64 %228
  %230 = load i32, i32* %229, align 4
  store i32 %230, i32* %18, align 4
  %231 = load i32, i32* %11, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds [3 x i32], [3 x i32]* %25, i64 0, i64 %232
  %234 = load i32, i32* %233, align 4
  store i32 %234, i32* %16, align 4
  %235 = load i32, i32* %11, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds [3 x i32], [3 x i32]* %26, i64 0, i64 %236
  %238 = load i32, i32* %237, align 4
  store i32 %238, i32* %17, align 4
  br label %285

239:                                              ; preds = %223
  %240 = getelementptr inbounds [3 x i32], [3 x i32]* %27, i64 0, i64 1
  %241 = load i32, i32* %240, align 4
  %242 = icmp sgt i32 %241, 10000
  br i1 %242, label %243, label %245

243:                                              ; preds = %239
  store i32 1, i32* %22, align 4
  %244 = load i32, i32* %16, align 4
  store i32 %244, i32* %23, align 4
  store i32 2, i32* %12, align 4
  br label %254

245:                                              ; preds = %239
  %246 = getelementptr inbounds [3 x i32], [3 x i32]* %27, i64 0, i64 0
  %247 = load i32, i32* %246, align 4
  %248 = icmp sgt i32 %247, 10000
  br i1 %248, label %249, label %251

249:                                              ; preds = %245
  store i32 1, i32* %22, align 4
  %250 = load i32, i32* %16, align 4
  store i32 %250, i32* %23, align 4
  store i32 1, i32* %12, align 4
  br label %253

251:                                              ; preds = %245
  store i32 0, i32* %12, align 4
  store i32 2, i32* %22, align 4
  %252 = load i32, i32* %17, align 4
  store i32 %252, i32* %23, align 4
  br label %253

253:                                              ; preds = %251, %249
  br label %254

254:                                              ; preds = %253, %243
  %255 = load i32, i32* %12, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds [3 x i32], [3 x i32]* %24, i64 0, i64 %256
  %258 = load i32, i32* %257, align 4
  store i32 %258, i32* %18, align 4
  %259 = load i32, i32* %12, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds [3 x i32], [3 x i32]* %25, i64 0, i64 %260
  %262 = load i32, i32* %261, align 4
  store i32 %262, i32* %16, align 4
  %263 = load i32, i32* %12, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds [3 x i32], [3 x i32]* %26, i64 0, i64 %264
  %266 = load i32, i32* %265, align 4
  store i32 %266, i32* %17, align 4
  %267 = load i32, i32* %34, align 4
  %268 = load i32, i32* %12, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds [3 x i32], [3 x i32]* %27, i64 0, i64 %269
  %271 = load i32, i32* %270, align 4
  %272 = call i32 @bwn_hweight32(i32 %271)
  %273 = sub nsw i32 %267, %272
  %274 = load i32, i32* %23, align 4
  %275 = add nsw i32 %274, %273
  store i32 %275, i32* %23, align 4
  %276 = load i32, i32* %23, align 4
  %277 = call i32 @bwn_clamp_val(i32 %276, i32 0, i32 10)
  store i32 %277, i32* %23, align 4
  %278 = load i32, i32* %22, align 4
  %279 = icmp eq i32 %278, 1
  br i1 %279, label %280, label %282

280:                                              ; preds = %254
  %281 = load i32, i32* %23, align 4
  store i32 %281, i32* %16, align 4
  br label %284

282:                                              ; preds = %254
  %283 = load i32, i32* %23, align 4
  store i32 %283, i32* %17, align 4
  br label %284

284:                                              ; preds = %282, %280
  br label %285

285:                                              ; preds = %284, %226
  %286 = load i32, i32* %17, align 4
  %287 = shl i32 %286, 8
  %288 = load i32, i32* %16, align 4
  %289 = shl i32 %288, 4
  %290 = or i32 %287, %289
  %291 = load i32, i32* %18, align 4
  %292 = shl i32 %291, 2
  %293 = or i32 %290, %292
  %294 = getelementptr inbounds [6 x i32], [6 x i32]* %15, i64 0, i64 0
  store i32 %293, i32* %294, align 16
  %295 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %296 = getelementptr inbounds [6 x i32], [6 x i32]* %15, i64 0, i64 0
  %297 = load i32, i32* %296, align 16
  %298 = call i32 @bwn_nphy_rf_ctl_override(%struct.bwn_mac* %295, i32 1024, i32 %297, i32 3, i32 0)
  %299 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %300 = load i32, i32* @BWN_RFSEQ_RESET2RX, align 4
  %301 = call i32 @bwn_nphy_force_rf_sequence(%struct.bwn_mac* %299, i32 %300)
  %302 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %303 = call i32 @bwn_nphy_stop_playback(%struct.bwn_mac* %302)
  %304 = load i32, i32* %33, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %313

306:                                              ; preds = %285
  %307 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %308 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %9, align 8
  %309 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 4
  %311 = and i32 %310, 65535
  %312 = call i32 @bwn_nphy_tx_tone(%struct.bwn_mac* %307, i32 4000, i32 %311, i32 0, i32 0, i32 1)
  store i32 %312, i32* %32, align 4
  store i32 0, i32* %33, align 4
  br label %316

313:                                              ; preds = %285
  %314 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %315 = call i32 @bwn_nphy_run_samples(%struct.bwn_mac* %314, i32 160, i32 65535, i32 0, i32 0, i32 0, i32 1)
  br label %316

316:                                              ; preds = %313, %306
  %317 = load i32, i32* %32, align 4
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %319, label %354

319:                                              ; preds = %316
  %320 = load i32, i32* %11, align 4
  %321 = icmp slt i32 %320, 3
  br i1 %321, label %322, label %346

322:                                              ; preds = %319
  %323 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %324 = call i32 @bwn_nphy_rx_iq_est(%struct.bwn_mac* %323, %struct.bwn_nphy_iq_est* %31, i32 1024, i32 32, i32 0)
  %325 = load i32, i32* %10, align 4
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %327, label %332

327:                                              ; preds = %322
  %328 = getelementptr inbounds %struct.bwn_nphy_iq_est, %struct.bwn_nphy_iq_est* %31, i32 0, i32 0
  %329 = load i32, i32* %328, align 4
  store i32 %329, i32* %19, align 4
  %330 = getelementptr inbounds %struct.bwn_nphy_iq_est, %struct.bwn_nphy_iq_est* %31, i32 0, i32 1
  %331 = load i32, i32* %330, align 4
  store i32 %331, i32* %20, align 4
  br label %337

332:                                              ; preds = %322
  %333 = getelementptr inbounds %struct.bwn_nphy_iq_est, %struct.bwn_nphy_iq_est* %31, i32 0, i32 2
  %334 = load i32, i32* %333, align 4
  store i32 %334, i32* %19, align 4
  %335 = getelementptr inbounds %struct.bwn_nphy_iq_est, %struct.bwn_nphy_iq_est* %31, i32 0, i32 3
  %336 = load i32, i32* %335, align 4
  store i32 %336, i32* %20, align 4
  br label %337

337:                                              ; preds = %332, %327
  %338 = load i32, i32* %19, align 4
  %339 = load i32, i32* %20, align 4
  %340 = add nsw i32 %338, %339
  %341 = sdiv i32 %340, 1024
  %342 = add nsw i32 %341, 1
  %343 = load i32, i32* %10, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds [3 x i32], [3 x i32]* %27, i64 0, i64 %344
  store i32 %342, i32* %345, align 4
  br label %351

346:                                              ; preds = %319
  %347 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %348 = load i32, i32* %10, align 4
  %349 = shl i32 1, %348
  %350 = call i32 @bwn_nphy_calc_rx_iq_comp(%struct.bwn_mac* %347, i32 %349)
  br label %351

351:                                              ; preds = %346, %337
  %352 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %353 = call i32 @bwn_nphy_stop_playback(%struct.bwn_mac* %352)
  br label %354

354:                                              ; preds = %351, %316
  %355 = load i32, i32* %32, align 4
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %358

357:                                              ; preds = %354
  br label %362

358:                                              ; preds = %354
  br label %359

359:                                              ; preds = %358
  %360 = load i32, i32* %11, align 4
  %361 = add nsw i32 %360, 1
  store i32 %361, i32* %11, align 4
  br label %220

362:                                              ; preds = %357, %220
  %363 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %364 = load i32, i32* @B2055_C1_GENSPARE2, align 4
  %365 = call i32 @BWN_RF_MASK(%struct.bwn_mac* %363, i32 %364, i32 252)
  %366 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %367 = load i32, i32* @B2055_C2_GENSPARE2, align 4
  %368 = call i32 @BWN_RF_MASK(%struct.bwn_mac* %366, i32 %367, i32 252)
  %369 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %370 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %371 = load i32, i32* %370, align 4
  %372 = getelementptr inbounds [6 x i32], [6 x i32]* %15, i64 0, i64 5
  %373 = load i32, i32* %372, align 4
  %374 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %369, i32 %371, i32 %373)
  %375 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %376 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %377 = load i32, i32* %376, align 4
  %378 = getelementptr inbounds [6 x i32], [6 x i32]* %15, i64 0, i64 4
  %379 = load i32, i32* %378, align 16
  %380 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %375, i32 %377, i32 %379)
  %381 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %382 = load i32, i32* @BWN_NPHY_AFECTL_OVER, align 4
  %383 = getelementptr inbounds [6 x i32], [6 x i32]* %15, i64 0, i64 3
  %384 = load i32, i32* %383, align 4
  %385 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %381, i32 %382, i32 %384)
  %386 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %387 = load i32, i32* %14, align 4
  %388 = getelementptr inbounds [6 x i32], [6 x i32]* %15, i64 0, i64 2
  %389 = load i32, i32* %388, align 8
  %390 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %386, i32 %387, i32 %389)
  %391 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %392 = load i32, i32* @BWN_NPHY_RFSEQCA, align 4
  %393 = getelementptr inbounds [6 x i32], [6 x i32]* %15, i64 0, i64 1
  %394 = load i32, i32* %393, align 4
  %395 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %391, i32 %392, i32 %394)
  %396 = load i32, i32* %32, align 4
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %398, label %399

398:                                              ; preds = %362
  br label %403

399:                                              ; preds = %362
  br label %400

400:                                              ; preds = %399
  %401 = load i32, i32* %10, align 4
  %402 = add nsw i32 %401, 1
  store i32 %402, i32* %10, align 4
  br label %87

403:                                              ; preds = %398, %87
  %404 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %405 = call i32 @bwn_nphy_rf_ctl_override(%struct.bwn_mac* %404, i32 1024, i32 0, i32 3, i32 1)
  %406 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %407 = load i32, i32* @BWN_RFSEQ_RESET2RX, align 4
  %408 = call i32 @bwn_nphy_force_rf_sequence(%struct.bwn_mac* %406, i32 %407)
  %409 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %410 = call i32 @BWN_NTAB16(i32 7, i32 272)
  %411 = getelementptr inbounds [2 x i32], [2 x i32]* %28, i64 0, i64 0
  %412 = call i32 @bwn_ntab_write_bulk(%struct.bwn_mac* %409, i32 %410, i32 2, i32* %411)
  %413 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %414 = call i32 @bwn_nphy_stay_in_carrier_search(%struct.bwn_mac* %413, i32 0)
  %415 = load i32, i32* %32, align 4
  ret i32 %415
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bwn_nphy_stay_in_carrier_search(%struct.bwn_mac*, i32) #2

declare dso_local i32 @bwn_nphy_reapply_tx_cal_coeffs(%struct.bwn_mac*) #2

declare dso_local i32 @bwn_ntab_read_bulk(%struct.bwn_mac*, i32, i32, i32*) #2

declare dso_local i32 @BWN_NTAB16(i32, i32) #2

declare dso_local i32 @bwn_nphy_iq_cal_gain_params(%struct.bwn_mac*, i32, i32, %struct.bwn_nphy_iqcal_params*) #2

declare dso_local i32 @bwn_ntab_write_bulk(%struct.bwn_mac*, i32, i32, i32*) #2

declare dso_local i32 @BWN_PHY_READ(%struct.bwn_mac*, i32) #2

declare dso_local i32 @BWN_PHY_SETMASK(%struct.bwn_mac*, i32, i32, i32) #2

declare dso_local i32 @BWN_PHY_SET(%struct.bwn_mac*, i32, i32) #2

declare dso_local i64 @bwn_current_band(%struct.bwn_mac*) #2

declare dso_local i32 @BWN_PHY_WRITE(%struct.bwn_mac*, i32, i32) #2

declare dso_local i32 @BWN_RF_SETMASK(%struct.bwn_mac*, i32, i32, i32) #2

declare dso_local i32 @bwn_hweight32(i32) #2

declare dso_local i32 @bwn_clamp_val(i32, i32, i32) #2

declare dso_local i32 @bwn_nphy_rf_ctl_override(%struct.bwn_mac*, i32, i32, i32, i32) #2

declare dso_local i32 @bwn_nphy_force_rf_sequence(%struct.bwn_mac*, i32) #2

declare dso_local i32 @bwn_nphy_stop_playback(%struct.bwn_mac*) #2

declare dso_local i32 @bwn_nphy_tx_tone(%struct.bwn_mac*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @bwn_nphy_run_samples(%struct.bwn_mac*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @bwn_nphy_rx_iq_est(%struct.bwn_mac*, %struct.bwn_nphy_iq_est*, i32, i32, i32) #2

declare dso_local i32 @bwn_nphy_calc_rx_iq_comp(%struct.bwn_mac*, i32) #2

declare dso_local i32 @BWN_RF_MASK(%struct.bwn_mac*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
