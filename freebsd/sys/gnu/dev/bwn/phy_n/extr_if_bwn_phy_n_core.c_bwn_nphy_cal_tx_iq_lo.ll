; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_cal_tx_iq_lo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_cal_tx_iq_lo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.bwn_phy }
%struct.bwn_phy = type { i32, %struct.bwn_phy_n* }
%struct.bwn_phy_n = type { i32, i32, i64*, i32, i64*, i64, %struct.TYPE_2__, i64, i64 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.bwn_nphy_txgains = type { i32 }
%struct.bwn_nphy_iqcal_params = type { i64, i32* }

@BWN_BAND_2G = common dso_local global i64 0, align 8
@tbl_tx_iqlo_cal_loft_ladder_40 = common dso_local global i64* null, align 8
@tbl_tx_iqlo_cal_iqimb_ladder_40 = common dso_local global i64* null, align 8
@tbl_tx_iqlo_cal_loft_ladder_20 = common dso_local global i64* null, align 8
@tbl_tx_iqlo_cal_iqimb_ladder_20 = common dso_local global i64* null, align 8
@BWN_NPHY_IQLOCAL_CMDGCTL = common dso_local global i32 0, align 4
@tbl_tx_iqlo_cal_startcoefs_nphyrev3 = common dso_local global i64* null, align 8
@BWN_NTAB_TX_IQLO_CAL_STARTCOEFS_REV3 = common dso_local global i32 0, align 4
@tbl_tx_iqlo_cal_startcoefs = common dso_local global i64* null, align 8
@BWN_NTAB_TX_IQLO_CAL_STARTCOEFS = common dso_local global i32 0, align 4
@BWN_NTAB_TX_IQLO_CAL_CMDS_FULLCAL_REV3 = common dso_local global i64 0, align 8
@BWN_NTAB_TX_IQLO_CAL_CMDS_FULLCAL = common dso_local global i64 0, align 8
@BWN_NTAB_TX_IQLO_CAL_CMDS_RECAL_REV3 = common dso_local global i64 0, align 8
@BWN_NTAB_TX_IQLO_CAL_CMDS_RECAL = common dso_local global i64 0, align 8
@tbl_tx_iqlo_cal_cmds_fullcal_nphyrev3 = common dso_local global i64* null, align 8
@tbl_tx_iqlo_cal_cmds_fullcal = common dso_local global i64* null, align 8
@tbl_tx_iqlo_cal_cmds_recal_nphyrev3 = common dso_local global i64* null, align 8
@tbl_tx_iqlo_cal_cmds_recal = common dso_local global i64* null, align 8
@BWN_NPHY_IQLOCAL_CMDNNUM = common dso_local global i32 0, align 4
@BWN_NPHY_IQLOCAL_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bwn_mac*, i32, i32, i32)* @bwn_nphy_cal_tx_iq_lo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwn_nphy_cal_tx_iq_lo(%struct.bwn_mac* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.bwn_nphy_txgains, align 4
  %6 = alloca %struct.bwn_mac*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bwn_phy*, align 8
  %10 = alloca %struct.bwn_phy_n*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64*, align 8
  %25 = alloca i32, align 4
  %26 = alloca [11 x i64], align 16
  %27 = alloca i64, align 8
  %28 = alloca [2 x i64], align 16
  %29 = alloca [2 x i64], align 16
  %30 = alloca [2 x %struct.bwn_nphy_iqcal_params], align 16
  %31 = alloca [2 x i32], align 4
  %32 = getelementptr inbounds %struct.bwn_nphy_txgains, %struct.bwn_nphy_txgains* %5, i32 0, i32 0
  store i32 %1, i32* %32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %33 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %34 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %33, i32 0, i32 0
  store %struct.bwn_phy* %34, %struct.bwn_phy** %9, align 8
  %35 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %36 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %36, i32 0, i32 1
  %38 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %37, align 8
  store %struct.bwn_phy_n* %38, %struct.bwn_phy_n** %10, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %14, align 4
  store i64 0, i64* %22, align 8
  store i64 0, i64* %27, align 8
  %39 = bitcast [2 x i32]* %31 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %39, i8 0, i64 8, i1 false)
  %40 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %41 = call i32 @bwn_nphy_stay_in_carrier_search(%struct.bwn_mac* %40, i32 1)
  %42 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %43 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp sge i32 %45, 4
  br i1 %46, label %47, label %53

47:                                               ; preds = %4
  %48 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %10, align 8
  %49 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %14, align 4
  %51 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %10, align 8
  %52 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %51, i32 0, i32 0
  store i32 0, i32* %52, align 8
  br label %53

53:                                               ; preds = %47, %4
  %54 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %55 = call i32 @BWN_NTAB16(i32 7, i32 272)
  %56 = getelementptr inbounds [2 x i64], [2 x i64]* %28, i64 0, i64 0
  %57 = call i32 @bwn_ntab_read_bulk(%struct.bwn_mac* %54, i32 %55, i32 2, i64* %56)
  store i32 0, i32* %11, align 4
  br label %58

58:                                               ; preds = %78, %53
  %59 = load i32, i32* %11, align 4
  %60 = icmp slt i32 %59, 2
  br i1 %60, label %61, label %81

61:                                               ; preds = %58
  %62 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [2 x %struct.bwn_nphy_iqcal_params], [2 x %struct.bwn_nphy_iqcal_params]* %30, i64 0, i64 %65
  %67 = getelementptr inbounds %struct.bwn_nphy_txgains, %struct.bwn_nphy_txgains* %5, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @bwn_nphy_iq_cal_gain_params(%struct.bwn_mac* %62, i32 %63, i32 %68, %struct.bwn_nphy_iqcal_params* %66)
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [2 x %struct.bwn_nphy_iqcal_params], [2 x %struct.bwn_nphy_iqcal_params]* %30, i64 0, i64 %71
  %73 = getelementptr inbounds %struct.bwn_nphy_iqcal_params, %struct.bwn_nphy_iqcal_params* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 16
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [2 x i64], [2 x i64]* %29, i64 0, i64 %76
  store i64 %74, i64* %77, align 8
  br label %78

78:                                               ; preds = %61
  %79 = load i32, i32* %11, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %11, align 4
  br label %58

81:                                               ; preds = %58
  %82 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %83 = call i32 @BWN_NTAB16(i32 7, i32 272)
  %84 = getelementptr inbounds [2 x i64], [2 x i64]* %29, i64 0, i64 0
  %85 = call i32 @bwn_ntab_write_bulk(%struct.bwn_mac* %82, i32 %83, i32 2, i64* %84)
  %86 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %87 = call i32 @bwn_nphy_tx_cal_radio_setup(%struct.bwn_mac* %86)
  %88 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %89 = call i32 @bwn_nphy_tx_cal_phy_setup(%struct.bwn_mac* %88)
  %90 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %91 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp sge i32 %93, 6
  br i1 %94, label %113, label %95

95:                                               ; preds = %81
  %96 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %97 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp eq i32 %99, 5
  br i1 %100, label %101, label %111

101:                                              ; preds = %95
  %102 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %10, align 8
  %103 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %102, i32 0, i32 8
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %101
  %107 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %108 = call i64 @bwn_current_band(%struct.bwn_mac* %107)
  %109 = load i64, i64* @BWN_BAND_2G, align 8
  %110 = icmp eq i64 %108, %109
  br label %111

111:                                              ; preds = %106, %101, %95
  %112 = phi i1 [ false, %101 ], [ false, %95 ], [ %110, %106 ]
  br label %113

113:                                              ; preds = %111, %81
  %114 = phi i1 [ true, %81 ], [ %112, %111 ]
  %115 = zext i1 %114 to i32
  store i32 %115, i32* %25, align 4
  %116 = load i32, i32* %25, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %141

118:                                              ; preds = %113
  %119 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %120 = call i64 @bwn_is_40mhz(%struct.bwn_mac* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %118
  %123 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %124 = call i32 @BWN_NTAB16(i32 15, i32 0)
  %125 = load i64*, i64** @tbl_tx_iqlo_cal_loft_ladder_40, align 8
  %126 = call i32 @bwn_ntab_write_bulk(%struct.bwn_mac* %123, i32 %124, i32 18, i64* %125)
  %127 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %128 = call i32 @BWN_NTAB16(i32 15, i32 32)
  %129 = load i64*, i64** @tbl_tx_iqlo_cal_iqimb_ladder_40, align 8
  %130 = call i32 @bwn_ntab_write_bulk(%struct.bwn_mac* %127, i32 %128, i32 18, i64* %129)
  br label %140

131:                                              ; preds = %118
  %132 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %133 = call i32 @BWN_NTAB16(i32 15, i32 0)
  %134 = load i64*, i64** @tbl_tx_iqlo_cal_loft_ladder_20, align 8
  %135 = call i32 @bwn_ntab_write_bulk(%struct.bwn_mac* %132, i32 %133, i32 18, i64* %134)
  %136 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %137 = call i32 @BWN_NTAB16(i32 15, i32 32)
  %138 = load i64*, i64** @tbl_tx_iqlo_cal_iqimb_ladder_20, align 8
  %139 = call i32 @bwn_ntab_write_bulk(%struct.bwn_mac* %136, i32 %137, i32 18, i64* %138)
  br label %140

140:                                              ; preds = %131, %122
  br label %141

141:                                              ; preds = %140, %113
  %142 = load %struct.bwn_phy*, %struct.bwn_phy** %9, align 8
  %143 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = icmp sge i32 %144, 19
  br i1 %145, label %146, label %147

146:                                              ; preds = %141
  br label %161

147:                                              ; preds = %141
  %148 = load %struct.bwn_phy*, %struct.bwn_phy** %9, align 8
  %149 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = icmp sge i32 %150, 7
  br i1 %151, label %152, label %156

152:                                              ; preds = %147
  %153 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %154 = load i32, i32* @BWN_NPHY_IQLOCAL_CMDGCTL, align 4
  %155 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %153, i32 %154, i64 35545)
  br label %160

156:                                              ; preds = %147
  %157 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %158 = load i32, i32* @BWN_NPHY_IQLOCAL_CMDGCTL, align 4
  %159 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %157, i32 %158, i64 35497)
  br label %160

160:                                              ; preds = %156, %152
  br label %161

161:                                              ; preds = %160, %146
  %162 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %163 = call i64 @bwn_is_40mhz(%struct.bwn_mac* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %166, label %165

165:                                              ; preds = %161
  store i32 2500, i32* %13, align 4
  br label %167

166:                                              ; preds = %161
  store i32 5000, i32* %13, align 4
  br label %167

167:                                              ; preds = %166, %165
  %168 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %10, align 8
  %169 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = icmp sgt i32 %170, 2
  br i1 %171, label %172, label %181

172:                                              ; preds = %167
  %173 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %174 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %175 = call i64 @bwn_is_40mhz(%struct.bwn_mac* %174)
  %176 = icmp ne i64 %175, 0
  %177 = zext i1 %176 to i64
  %178 = select i1 %176, i32 40, i32 20
  %179 = mul nsw i32 %178, 8
  %180 = call i32 @bwn_nphy_run_samples(%struct.bwn_mac* %173, i32 %179, i32 65535, i32 0, i32 1, i32 0, i32 0)
  br label %185

181:                                              ; preds = %167
  %182 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %183 = load i32, i32* %13, align 4
  %184 = call i32 @bwn_nphy_tx_tone(%struct.bwn_mac* %182, i32 %183, i32 250, i32 1, i32 0, i32 0)
  store i32 %184, i32* %12, align 4
  br label %185

185:                                              ; preds = %181, %172
  %186 = load i32, i32* %12, align 4
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %555

188:                                              ; preds = %185
  %189 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %10, align 8
  %190 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = icmp sgt i32 %191, 2
  br i1 %192, label %193, label %206

193:                                              ; preds = %188
  %194 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %10, align 8
  %195 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %194, i32 0, i32 2
  %196 = load i64*, i64** %195, align 8
  store i64* %196, i64** %24, align 8
  store i32 11, i32* %15, align 4
  %197 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %198 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = icmp slt i32 %200, 3
  br i1 %201, label %202, label %205

202:                                              ; preds = %193
  %203 = load i32, i32* %15, align 4
  %204 = sub nsw i32 %203, 2
  store i32 %204, i32* %15, align 4
  br label %205

205:                                              ; preds = %202, %193
  br label %241

206:                                              ; preds = %188
  %207 = load i32, i32* %7, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %227, label %209

209:                                              ; preds = %206
  %210 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %10, align 8
  %211 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 8
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %227

214:                                              ; preds = %209
  %215 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %10, align 8
  %216 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %215, i32 0, i32 4
  %217 = load i64*, i64** %216, align 8
  store i64* %217, i64** %24, align 8
  store i32 11, i32* %15, align 4
  %218 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %219 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = icmp slt i32 %221, 3
  br i1 %222, label %223, label %226

223:                                              ; preds = %214
  %224 = load i32, i32* %15, align 4
  %225 = sub nsw i32 %224, 2
  store i32 %225, i32* %15, align 4
  br label %226

226:                                              ; preds = %223, %214
  br label %240

227:                                              ; preds = %209, %206
  store i32 1, i32* %7, align 4
  %228 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %229 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = icmp sge i32 %231, 3
  br i1 %232, label %233, label %236

233:                                              ; preds = %227
  %234 = load i64*, i64** @tbl_tx_iqlo_cal_startcoefs_nphyrev3, align 8
  store i64* %234, i64** %24, align 8
  %235 = load i32, i32* @BWN_NTAB_TX_IQLO_CAL_STARTCOEFS_REV3, align 4
  store i32 %235, i32* %15, align 4
  br label %239

236:                                              ; preds = %227
  %237 = load i64*, i64** @tbl_tx_iqlo_cal_startcoefs, align 8
  store i64* %237, i64** %24, align 8
  %238 = load i32, i32* @BWN_NTAB_TX_IQLO_CAL_STARTCOEFS, align 4
  store i32 %238, i32* %15, align 4
  br label %239

239:                                              ; preds = %236, %233
  br label %240

240:                                              ; preds = %239, %226
  br label %241

241:                                              ; preds = %240, %205
  %242 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %243 = call i32 @BWN_NTAB16(i32 15, i32 64)
  %244 = load i32, i32* %15, align 4
  %245 = load i64*, i64** %24, align 8
  %246 = call i32 @bwn_ntab_write_bulk(%struct.bwn_mac* %242, i32 %243, i32 %244, i64* %245)
  %247 = load i32, i32* %7, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %260

249:                                              ; preds = %241
  %250 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %251 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = icmp sge i32 %253, 3
  br i1 %254, label %255, label %257

255:                                              ; preds = %249
  %256 = load i64, i64* @BWN_NTAB_TX_IQLO_CAL_CMDS_FULLCAL_REV3, align 8
  store i64 %256, i64* %20, align 8
  br label %259

257:                                              ; preds = %249
  %258 = load i64, i64* @BWN_NTAB_TX_IQLO_CAL_CMDS_FULLCAL, align 8
  store i64 %258, i64* %20, align 8
  br label %259

259:                                              ; preds = %257, %255
  br label %271

260:                                              ; preds = %241
  %261 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %262 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = icmp sge i32 %264, 3
  br i1 %265, label %266, label %268

266:                                              ; preds = %260
  %267 = load i64, i64* @BWN_NTAB_TX_IQLO_CAL_CMDS_RECAL_REV3, align 8
  store i64 %267, i64* %20, align 8
  br label %270

268:                                              ; preds = %260
  %269 = load i64, i64* @BWN_NTAB_TX_IQLO_CAL_CMDS_RECAL, align 8
  store i64 %269, i64* %20, align 8
  br label %270

270:                                              ; preds = %268, %266
  br label %271

271:                                              ; preds = %270, %259
  %272 = load i32, i32* %8, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %285

274:                                              ; preds = %271
  %275 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %10, align 8
  %276 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %275, i32 0, i32 5
  %277 = load i64, i64* %276, align 8
  store i64 %277, i64* %19, align 8
  %278 = load i64, i64* %20, align 8
  %279 = load i64, i64* %19, align 8
  %280 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %10, align 8
  %281 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %280, i32 0, i32 7
  %282 = load i64, i64* %281, align 8
  %283 = add i64 %279, %282
  %284 = call i64 @min(i64 %278, i64 %283)
  store i64 %284, i64* %21, align 8
  br label %287

285:                                              ; preds = %271
  store i64 0, i64* %19, align 8
  %286 = load i64, i64* %20, align 8
  store i64 %286, i64* %21, align 8
  br label %287

287:                                              ; preds = %285, %274
  br label %288

288:                                              ; preds = %433, %287
  %289 = load i64, i64* %19, align 8
  %290 = load i64, i64* %21, align 8
  %291 = icmp ult i64 %289, %290
  br i1 %291, label %292, label %436

292:                                              ; preds = %288
  %293 = load i32, i32* %7, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %312

295:                                              ; preds = %292
  %296 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %297 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = icmp sge i32 %299, 3
  br i1 %300, label %301, label %306

301:                                              ; preds = %295
  %302 = load i64*, i64** @tbl_tx_iqlo_cal_cmds_fullcal_nphyrev3, align 8
  %303 = load i64, i64* %19, align 8
  %304 = getelementptr inbounds i64, i64* %302, i64 %303
  %305 = load i64, i64* %304, align 8
  store i64 %305, i64* %23, align 8
  br label %311

306:                                              ; preds = %295
  %307 = load i64*, i64** @tbl_tx_iqlo_cal_cmds_fullcal, align 8
  %308 = load i64, i64* %19, align 8
  %309 = getelementptr inbounds i64, i64* %307, i64 %308
  %310 = load i64, i64* %309, align 8
  store i64 %310, i64* %23, align 8
  br label %311

311:                                              ; preds = %306, %301
  br label %329

312:                                              ; preds = %292
  %313 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %314 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  %317 = icmp sge i32 %316, 3
  br i1 %317, label %318, label %323

318:                                              ; preds = %312
  %319 = load i64*, i64** @tbl_tx_iqlo_cal_cmds_recal_nphyrev3, align 8
  %320 = load i64, i64* %19, align 8
  %321 = getelementptr inbounds i64, i64* %319, i64 %320
  %322 = load i64, i64* %321, align 8
  store i64 %322, i64* %23, align 8
  br label %328

323:                                              ; preds = %312
  %324 = load i64*, i64** @tbl_tx_iqlo_cal_cmds_recal, align 8
  %325 = load i64, i64* %19, align 8
  %326 = getelementptr inbounds i64, i64* %324, i64 %325
  %327 = load i64, i64* %326, align 8
  store i64 %327, i64* %23, align 8
  br label %328

328:                                              ; preds = %323, %318
  br label %329

329:                                              ; preds = %328, %311
  %330 = load i64, i64* %23, align 8
  %331 = and i64 %330, 12288
  %332 = lshr i64 %331, 12
  store i64 %332, i64* %17, align 8
  %333 = load i64, i64* %23, align 8
  %334 = and i64 %333, 3840
  %335 = lshr i64 %334, 8
  store i64 %335, i64* %18, align 8
  %336 = load i32, i32* %25, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %349

338:                                              ; preds = %329
  %339 = load i64, i64* %17, align 8
  %340 = getelementptr inbounds [2 x i32], [2 x i32]* %31, i64 0, i64 %339
  %341 = load i32, i32* %340, align 4
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %343, label %349

343:                                              ; preds = %338
  %344 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %345 = load i64, i64* %17, align 8
  %346 = call i32 @bwn_nphy_update_tx_cal_ladder(%struct.bwn_mac* %344, i64 %345)
  %347 = load i64, i64* %17, align 8
  %348 = getelementptr inbounds [2 x i32], [2 x i32]* %31, i64 0, i64 %347
  store i32 1, i32* %348, align 4
  br label %349

349:                                              ; preds = %343, %338, %329
  %350 = load i64, i64* %17, align 8
  %351 = getelementptr inbounds [2 x %struct.bwn_nphy_iqcal_params], [2 x %struct.bwn_nphy_iqcal_params]* %30, i64 0, i64 %350
  %352 = getelementptr inbounds %struct.bwn_nphy_iqcal_params, %struct.bwn_nphy_iqcal_params* %351, i32 0, i32 1
  %353 = load i32*, i32** %352, align 8
  %354 = load i64, i64* %18, align 8
  %355 = getelementptr inbounds i32, i32* %353, i64 %354
  %356 = load i32, i32* %355, align 4
  %357 = shl i32 %356, 8
  %358 = or i32 %357, 102
  %359 = sext i32 %358 to i64
  store i64 %359, i64* %16, align 8
  %360 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %361 = load i32, i32* @BWN_NPHY_IQLOCAL_CMDNNUM, align 4
  %362 = load i64, i64* %16, align 8
  %363 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %360, i32 %361, i64 %362)
  %364 = load i64, i64* %18, align 8
  %365 = icmp eq i64 %364, 1
  br i1 %365, label %372, label %366

366:                                              ; preds = %349
  %367 = load i64, i64* %18, align 8
  %368 = icmp eq i64 %367, 3
  br i1 %368, label %372, label %369

369:                                              ; preds = %366
  %370 = load i64, i64* %18, align 8
  %371 = icmp eq i64 %370, 4
  br i1 %371, label %372, label %389

372:                                              ; preds = %369, %366, %349
  %373 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %374 = load i64, i64* %17, align 8
  %375 = add i64 69, %374
  %376 = trunc i64 %375 to i32
  %377 = call i32 @BWN_NTAB16(i32 15, i32 %376)
  %378 = call i64 @bwn_ntab_read(%struct.bwn_mac* %373, i32 %377)
  %379 = getelementptr inbounds [11 x i64], [11 x i64]* %26, i64 0, i64 0
  store i64 %378, i64* %379, align 16
  %380 = getelementptr inbounds [11 x i64], [11 x i64]* %26, i64 0, i64 0
  %381 = load i64, i64* %380, align 16
  store i64 %381, i64* %27, align 8
  %382 = getelementptr inbounds [11 x i64], [11 x i64]* %26, i64 0, i64 0
  store i64 0, i64* %382, align 16
  %383 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %384 = load i64, i64* %17, align 8
  %385 = add i64 69, %384
  %386 = trunc i64 %385 to i32
  %387 = call i32 @BWN_NTAB16(i32 15, i32 %386)
  %388 = call i32 @bwn_ntab_write(%struct.bwn_mac* %383, i32 %387, i32 0)
  br label %389

389:                                              ; preds = %372, %369
  %390 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %391 = load i32, i32* @BWN_NPHY_IQLOCAL_CMD, align 4
  %392 = load i64, i64* %23, align 8
  %393 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %390, i32 %391, i64 %392)
  store i32 0, i32* %11, align 4
  br label %394

394:                                              ; preds = %407, %389
  %395 = load i32, i32* %11, align 4
  %396 = icmp slt i32 %395, 2000
  br i1 %396, label %397, label %410

397:                                              ; preds = %394
  %398 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %399 = load i32, i32* @BWN_NPHY_IQLOCAL_CMD, align 4
  %400 = call i64 @BWN_PHY_READ(%struct.bwn_mac* %398, i32 %399)
  store i64 %400, i64* %16, align 8
  %401 = load i64, i64* %16, align 8
  %402 = and i64 %401, 49152
  %403 = icmp ne i64 %402, 0
  br i1 %403, label %404, label %405

404:                                              ; preds = %397
  br label %410

405:                                              ; preds = %397
  %406 = call i32 @DELAY(i32 10)
  br label %407

407:                                              ; preds = %405
  %408 = load i32, i32* %11, align 4
  %409 = add nsw i32 %408, 1
  store i32 %409, i32* %11, align 4
  br label %394

410:                                              ; preds = %404, %394
  %411 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %412 = call i32 @BWN_NTAB16(i32 15, i32 96)
  %413 = load i32, i32* %15, align 4
  %414 = getelementptr inbounds [11 x i64], [11 x i64]* %26, i64 0, i64 0
  %415 = call i32 @bwn_ntab_read_bulk(%struct.bwn_mac* %411, i32 %412, i32 %413, i64* %414)
  %416 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %417 = call i32 @BWN_NTAB16(i32 15, i32 64)
  %418 = load i32, i32* %15, align 4
  %419 = getelementptr inbounds [11 x i64], [11 x i64]* %26, i64 0, i64 0
  %420 = call i32 @bwn_ntab_write_bulk(%struct.bwn_mac* %416, i32 %417, i32 %418, i64* %419)
  %421 = load i64, i64* %18, align 8
  %422 = icmp eq i64 %421, 1
  br i1 %422, label %429, label %423

423:                                              ; preds = %410
  %424 = load i64, i64* %18, align 8
  %425 = icmp eq i64 %424, 3
  br i1 %425, label %429, label %426

426:                                              ; preds = %423
  %427 = load i64, i64* %18, align 8
  %428 = icmp eq i64 %427, 4
  br i1 %428, label %429, label %432

429:                                              ; preds = %426, %423, %410
  %430 = load i64, i64* %27, align 8
  %431 = getelementptr inbounds [11 x i64], [11 x i64]* %26, i64 0, i64 0
  store i64 %430, i64* %431, align 16
  br label %432

432:                                              ; preds = %429, %426
  br label %433

433:                                              ; preds = %432
  %434 = load i64, i64* %19, align 8
  %435 = add i64 %434, 1
  store i64 %435, i64* %19, align 8
  br label %288

436:                                              ; preds = %288
  %437 = load i32, i32* %8, align 4
  %438 = icmp ne i32 %437, 0
  br i1 %438, label %439, label %450

439:                                              ; preds = %436
  %440 = load i64, i64* %21, align 8
  %441 = load i64, i64* %20, align 8
  %442 = icmp uge i64 %440, %441
  br i1 %442, label %443, label %444

443:                                              ; preds = %439
  br label %446

444:                                              ; preds = %439
  %445 = load i64, i64* %21, align 8
  br label %446

446:                                              ; preds = %444, %443
  %447 = phi i64 [ 0, %443 ], [ %445, %444 ]
  %448 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %10, align 8
  %449 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %448, i32 0, i32 5
  store i64 %447, i64* %449, align 8
  br label %450

450:                                              ; preds = %446, %436
  %451 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %452 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %451, i32 0, i32 0
  %453 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %452, i32 0, i32 0
  %454 = load i32, i32* %453, align 8
  %455 = icmp slt i32 %454, 3
  %456 = zext i1 %455 to i64
  %457 = select i1 %455, i32 6, i32 7
  %458 = sext i32 %457 to i64
  store i64 %458, i64* %22, align 8
  %459 = load i32, i32* %8, align 4
  %460 = icmp ne i32 %459, 0
  br i1 %460, label %461, label %468

461:                                              ; preds = %450
  %462 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %10, align 8
  %463 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %462, i32 0, i32 1
  %464 = load i32, i32* %463, align 4
  %465 = sext i32 %464 to i64
  %466 = load i64, i64* %22, align 8
  %467 = icmp eq i64 %465, %466
  br i1 %467, label %468, label %532

468:                                              ; preds = %461, %450
  %469 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %470 = call i32 @BWN_NTAB16(i32 15, i32 96)
  %471 = getelementptr inbounds [11 x i64], [11 x i64]* %26, i64 0, i64 0
  %472 = call i32 @bwn_ntab_write_bulk(%struct.bwn_mac* %469, i32 %470, i32 4, i64* %471)
  %473 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %474 = call i32 @BWN_NTAB16(i32 15, i32 80)
  %475 = getelementptr inbounds [11 x i64], [11 x i64]* %26, i64 0, i64 0
  %476 = call i32 @bwn_ntab_read_bulk(%struct.bwn_mac* %473, i32 %474, i32 4, i64* %475)
  %477 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %478 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %477, i32 0, i32 0
  %479 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %478, i32 0, i32 0
  %480 = load i32, i32* %479, align 8
  %481 = icmp slt i32 %480, 3
  br i1 %481, label %482, label %487

482:                                              ; preds = %468
  %483 = getelementptr inbounds [11 x i64], [11 x i64]* %26, i64 0, i64 0
  store i64 0, i64* %483, align 16
  %484 = getelementptr inbounds [11 x i64], [11 x i64]* %26, i64 0, i64 1
  store i64 0, i64* %484, align 8
  %485 = getelementptr inbounds [11 x i64], [11 x i64]* %26, i64 0, i64 2
  store i64 0, i64* %485, align 16
  %486 = getelementptr inbounds [11 x i64], [11 x i64]* %26, i64 0, i64 3
  store i64 0, i64* %486, align 8
  br label %487

487:                                              ; preds = %482, %468
  %488 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %489 = call i32 @BWN_NTAB16(i32 15, i32 88)
  %490 = getelementptr inbounds [11 x i64], [11 x i64]* %26, i64 0, i64 0
  %491 = call i32 @bwn_ntab_write_bulk(%struct.bwn_mac* %488, i32 %489, i32 4, i64* %490)
  %492 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %493 = call i32 @BWN_NTAB16(i32 15, i32 101)
  %494 = getelementptr inbounds [11 x i64], [11 x i64]* %26, i64 0, i64 0
  %495 = call i32 @bwn_ntab_read_bulk(%struct.bwn_mac* %492, i32 %493, i32 2, i64* %494)
  %496 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %497 = call i32 @BWN_NTAB16(i32 15, i32 85)
  %498 = getelementptr inbounds [11 x i64], [11 x i64]* %26, i64 0, i64 0
  %499 = call i32 @bwn_ntab_write_bulk(%struct.bwn_mac* %496, i32 %497, i32 2, i64* %498)
  %500 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %501 = call i32 @BWN_NTAB16(i32 15, i32 93)
  %502 = getelementptr inbounds [11 x i64], [11 x i64]* %26, i64 0, i64 0
  %503 = call i32 @bwn_ntab_write_bulk(%struct.bwn_mac* %500, i32 %501, i32 2, i64* %502)
  store i32 11, i32* %15, align 4
  %504 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %505 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %504, i32 0, i32 0
  %506 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %505, i32 0, i32 0
  %507 = load i32, i32* %506, align 8
  %508 = icmp slt i32 %507, 3
  br i1 %508, label %509, label %512

509:                                              ; preds = %487
  %510 = load i32, i32* %15, align 4
  %511 = sub nsw i32 %510, 2
  store i32 %511, i32* %15, align 4
  br label %512

512:                                              ; preds = %509, %487
  %513 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %514 = call i32 @BWN_NTAB16(i32 15, i32 96)
  %515 = load i32, i32* %15, align 4
  %516 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %10, align 8
  %517 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %516, i32 0, i32 4
  %518 = load i64*, i64** %517, align 8
  %519 = call i32 @bwn_ntab_read_bulk(%struct.bwn_mac* %513, i32 %514, i32 %515, i64* %518)
  %520 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %10, align 8
  %521 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %520, i32 0, i32 3
  store i32 1, i32* %521, align 8
  %522 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %523 = call i32 @bwn_get_centre_freq(%struct.bwn_mac* %522)
  %524 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %10, align 8
  %525 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %524, i32 0, i32 6
  %526 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %525, i32 0, i32 1
  store i32 %523, i32* %526, align 4
  %527 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %528 = call i32 @bwn_get_chan_type(%struct.bwn_mac* %527, i32* null)
  %529 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %10, align 8
  %530 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %529, i32 0, i32 6
  %531 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %530, i32 0, i32 0
  store i32 %528, i32* %531, align 8
  br label %549

532:                                              ; preds = %461
  store i32 11, i32* %15, align 4
  %533 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %534 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %533, i32 0, i32 0
  %535 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %534, i32 0, i32 0
  %536 = load i32, i32* %535, align 8
  %537 = icmp slt i32 %536, 3
  br i1 %537, label %538, label %541

538:                                              ; preds = %532
  %539 = load i32, i32* %15, align 4
  %540 = sub nsw i32 %539, 2
  store i32 %540, i32* %15, align 4
  br label %541

541:                                              ; preds = %538, %532
  %542 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %543 = call i32 @BWN_NTAB16(i32 15, i32 96)
  %544 = load i32, i32* %15, align 4
  %545 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %10, align 8
  %546 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %545, i32 0, i32 2
  %547 = load i64*, i64** %546, align 8
  %548 = call i32 @bwn_ntab_read_bulk(%struct.bwn_mac* %542, i32 %543, i32 %544, i64* %547)
  br label %549

549:                                              ; preds = %541, %512
  %550 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %551 = call i32 @bwn_nphy_stop_playback(%struct.bwn_mac* %550)
  %552 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %553 = load i32, i32* @BWN_NPHY_IQLOCAL_CMDGCTL, align 4
  %554 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %552, i32 %553, i64 0)
  br label %555

555:                                              ; preds = %549, %185
  %556 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %557 = call i32 @bwn_nphy_tx_cal_phy_cleanup(%struct.bwn_mac* %556)
  %558 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %559 = call i32 @BWN_NTAB16(i32 7, i32 272)
  %560 = getelementptr inbounds [2 x i64], [2 x i64]* %28, i64 0, i64 0
  %561 = call i32 @bwn_ntab_write_bulk(%struct.bwn_mac* %558, i32 %559, i32 2, i64* %560)
  %562 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %563 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %562, i32 0, i32 0
  %564 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %563, i32 0, i32 0
  %565 = load i32, i32* %564, align 8
  %566 = icmp slt i32 %565, 2
  br i1 %566, label %567, label %580

567:                                              ; preds = %555
  %568 = load i32, i32* %8, align 4
  %569 = icmp ne i32 %568, 0
  br i1 %569, label %570, label %577

570:                                              ; preds = %567
  %571 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %10, align 8
  %572 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %571, i32 0, i32 1
  %573 = load i32, i32* %572, align 4
  %574 = sext i32 %573 to i64
  %575 = load i64, i64* %22, align 8
  %576 = icmp eq i64 %574, %575
  br i1 %576, label %577, label %580

577:                                              ; preds = %570, %567
  %578 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %579 = call i32 @bwn_nphy_tx_iq_workaround(%struct.bwn_mac* %578)
  br label %580

580:                                              ; preds = %577, %570, %555
  %581 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %582 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %581, i32 0, i32 0
  %583 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %582, i32 0, i32 0
  %584 = load i32, i32* %583, align 8
  %585 = icmp sge i32 %584, 4
  br i1 %585, label %586, label %590

586:                                              ; preds = %580
  %587 = load i32, i32* %14, align 4
  %588 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %10, align 8
  %589 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %588, i32 0, i32 0
  store i32 %587, i32* %589, align 8
  br label %590

590:                                              ; preds = %586, %580
  %591 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %592 = call i32 @bwn_nphy_stay_in_carrier_search(%struct.bwn_mac* %591, i32 0)
  %593 = load i32, i32* %12, align 4
  ret i32 %593
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bwn_nphy_stay_in_carrier_search(%struct.bwn_mac*, i32) #2

declare dso_local i32 @bwn_ntab_read_bulk(%struct.bwn_mac*, i32, i32, i64*) #2

declare dso_local i32 @BWN_NTAB16(i32, i32) #2

declare dso_local i32 @bwn_nphy_iq_cal_gain_params(%struct.bwn_mac*, i32, i32, %struct.bwn_nphy_iqcal_params*) #2

declare dso_local i32 @bwn_ntab_write_bulk(%struct.bwn_mac*, i32, i32, i64*) #2

declare dso_local i32 @bwn_nphy_tx_cal_radio_setup(%struct.bwn_mac*) #2

declare dso_local i32 @bwn_nphy_tx_cal_phy_setup(%struct.bwn_mac*) #2

declare dso_local i64 @bwn_current_band(%struct.bwn_mac*) #2

declare dso_local i64 @bwn_is_40mhz(%struct.bwn_mac*) #2

declare dso_local i32 @BWN_PHY_WRITE(%struct.bwn_mac*, i32, i64) #2

declare dso_local i32 @bwn_nphy_run_samples(%struct.bwn_mac*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @bwn_nphy_tx_tone(%struct.bwn_mac*, i32, i32, i32, i32, i32) #2

declare dso_local i64 @min(i64, i64) #2

declare dso_local i32 @bwn_nphy_update_tx_cal_ladder(%struct.bwn_mac*, i64) #2

declare dso_local i64 @bwn_ntab_read(%struct.bwn_mac*, i32) #2

declare dso_local i32 @bwn_ntab_write(%struct.bwn_mac*, i32, i32) #2

declare dso_local i64 @BWN_PHY_READ(%struct.bwn_mac*, i32) #2

declare dso_local i32 @DELAY(i32) #2

declare dso_local i32 @bwn_get_centre_freq(%struct.bwn_mac*) #2

declare dso_local i32 @bwn_get_chan_type(%struct.bwn_mac*, i32*) #2

declare dso_local i32 @bwn_nphy_stop_playback(%struct.bwn_mac*) #2

declare dso_local i32 @bwn_nphy_tx_cal_phy_cleanup(%struct.bwn_mac*) #2

declare dso_local i32 @bwn_nphy_tx_iq_workaround(%struct.bwn_mac*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
