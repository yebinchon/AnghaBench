; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_tx_power_ctrl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_tx_power_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.bwn_phy }
%struct.bwn_phy = type { i32, %struct.bwn_phy_n* }
%struct.bwn_phy_n = type { i32, i32*, i64, i32 }

@BWN_NPHY_TXPCTL_CMD = common dso_local global i32 0, align 4
@BWN_NPHY_TXPCTL_CMD_COEFF = common dso_local global i32 0, align 4
@BWN_NPHY_TXPCTL_CMD_HWPCTLEN = common dso_local global i32 0, align 4
@BWN_NPHY_TXPCTL_CMD_PCTLEN = common dso_local global i32 0, align 4
@BWN_NPHY_C1_TXPCTL_STAT = common dso_local global i32 0, align 4
@BWN_NPHY_C2_TXPCTL_STAT = common dso_local global i32 0, align 4
@BWN_NPHY_TABLE_ADDR = common dso_local global i32 0, align 4
@BWN_NPHY_TABLE_DATALO = common dso_local global i32 0, align 4
@BWN_NPHY_AFECTL_OVER1 = common dso_local global i32 0, align 4
@BWN_NPHY_AFECTL_OVER = common dso_local global i32 0, align 4
@BWN_NPHY_BPHY_CTL3 = common dso_local global i32 0, align 4
@BWN_NPHY_BPHY_CTL3_SCALE = common dso_local global i32 0, align 4
@BWN_HF_TSSI_RESET_PSM_WORKAROUN = common dso_local global i32 0, align 4
@BWN_BAND_5G = common dso_local global i64 0, align 8
@BWN_NPHY_TXPCTL_CMD_INIT = common dso_local global i32 0, align 4
@BWN_NPHY_TXPCTL_INIT = common dso_local global i32 0, align 4
@BWN_NPHY_TXPCTL_INIT_PIDXI1 = common dso_local global i32 0, align 4
@BWN_NPHY_PAPD_EN0 = common dso_local global i32 0, align 4
@BWN_NPHY_PAPD_EN1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*, i32)* @bwn_nphy_tx_power_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_nphy_tx_power_ctrl(%struct.bwn_mac* %0, i32 %1) #0 {
  %3 = alloca %struct.bwn_mac*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bwn_phy*, align 8
  %6 = alloca %struct.bwn_phy_n*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.bwn_mac* %0, %struct.bwn_mac** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %13 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %12, i32 0, i32 0
  store %struct.bwn_phy* %13, %struct.bwn_phy** %5, align 8
  %14 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %15 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %15, i32 0, i32 1
  %17 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %16, align 8
  store %struct.bwn_phy_n* %17, %struct.bwn_phy_n** %6, align 8
  %18 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %19 = call i64 @bwn_current_band(%struct.bwn_mac* %18)
  store i64 %19, i64* %11, align 8
  %20 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %6, align 8
  %21 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %26 = call i32 @bwn_nphy_stay_in_carrier_search(%struct.bwn_mac* %25, i32 1)
  br label %27

27:                                               ; preds = %24, %2
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %6, align 8
  %30 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %173, label %33

33:                                               ; preds = %27
  %34 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %35 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp sge i32 %37, 3
  br i1 %38, label %39, label %67

39:                                               ; preds = %33
  %40 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %41 = load i32, i32* @BWN_NPHY_TXPCTL_CMD, align 4
  %42 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %40, i32 %41)
  %43 = load i32, i32* @BWN_NPHY_TXPCTL_CMD_COEFF, align 4
  %44 = load i32, i32* @BWN_NPHY_TXPCTL_CMD_HWPCTLEN, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @BWN_NPHY_TXPCTL_CMD_PCTLEN, align 4
  %47 = or i32 %45, %46
  %48 = and i32 %42, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %67

50:                                               ; preds = %39
  %51 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %52 = load i32, i32* @BWN_NPHY_C1_TXPCTL_STAT, align 4
  %53 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %51, i32 %52)
  %54 = and i32 %53, 127
  %55 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %6, align 8
  %56 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  store i32 %54, i32* %58, align 4
  %59 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %60 = load i32, i32* @BWN_NPHY_C2_TXPCTL_STAT, align 4
  %61 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %59, i32 %60)
  %62 = and i32 %61, 127
  %63 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %6, align 8
  %64 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  store i32 %62, i32* %66, align 4
  br label %67

67:                                               ; preds = %50, %39, %33
  %68 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %69 = load i32, i32* @BWN_NPHY_TABLE_ADDR, align 4
  %70 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %68, i32 %69, i32 26688)
  store i32 0, i32* %7, align 4
  br label %71

71:                                               ; preds = %78, %67
  %72 = load i32, i32* %7, align 4
  %73 = icmp slt i32 %72, 84
  br i1 %73, label %74, label %81

74:                                               ; preds = %71
  %75 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %76 = load i32, i32* @BWN_NPHY_TABLE_DATALO, align 4
  %77 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %75, i32 %76, i32 0)
  br label %78

78:                                               ; preds = %74
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %7, align 4
  br label %71

81:                                               ; preds = %71
  %82 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %83 = load i32, i32* @BWN_NPHY_TABLE_ADDR, align 4
  %84 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %82, i32 %83, i32 27712)
  store i32 0, i32* %7, align 4
  br label %85

85:                                               ; preds = %92, %81
  %86 = load i32, i32* %7, align 4
  %87 = icmp slt i32 %86, 84
  br i1 %87, label %88, label %95

88:                                               ; preds = %85
  %89 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %90 = load i32, i32* @BWN_NPHY_TABLE_DATALO, align 4
  %91 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %89, i32 %90, i32 0)
  br label %92

92:                                               ; preds = %88
  %93 = load i32, i32* %7, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %7, align 4
  br label %85

95:                                               ; preds = %85
  %96 = load i32, i32* @BWN_NPHY_TXPCTL_CMD_COEFF, align 4
  %97 = load i32, i32* @BWN_NPHY_TXPCTL_CMD_HWPCTLEN, align 4
  %98 = or i32 %96, %97
  store i32 %98, i32* %10, align 4
  %99 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %100 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp sge i32 %102, 3
  br i1 %103, label %104, label %108

104:                                              ; preds = %95
  %105 = load i32, i32* @BWN_NPHY_TXPCTL_CMD_PCTLEN, align 4
  %106 = load i32, i32* %10, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %10, align 4
  br label %108

108:                                              ; preds = %104, %95
  %109 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %110 = load i32, i32* @BWN_NPHY_TXPCTL_CMD, align 4
  %111 = load i32, i32* %10, align 4
  %112 = xor i32 %111, -1
  %113 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %109, i32 %110, i32 %112)
  %114 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %115 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp sge i32 %117, 3
  br i1 %118, label %119, label %126

119:                                              ; preds = %108
  %120 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %121 = load i32, i32* @BWN_NPHY_AFECTL_OVER1, align 4
  %122 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %120, i32 %121, i32 256)
  %123 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %124 = load i32, i32* @BWN_NPHY_AFECTL_OVER, align 4
  %125 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %123, i32 %124, i32 256)
  br label %130

126:                                              ; preds = %108
  %127 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %128 = load i32, i32* @BWN_NPHY_AFECTL_OVER, align 4
  %129 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %127, i32 %128, i32 16384)
  br label %130

130:                                              ; preds = %126, %119
  %131 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %132 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp eq i32 %134, 2
  br i1 %135, label %136, label %142

136:                                              ; preds = %130
  %137 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %138 = load i32, i32* @BWN_NPHY_BPHY_CTL3, align 4
  %139 = load i32, i32* @BWN_NPHY_BPHY_CTL3_SCALE, align 4
  %140 = xor i32 %139, -1
  %141 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %137, i32 %138, i32 %140, i32 83)
  br label %155

142:                                              ; preds = %130
  %143 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %144 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = icmp slt i32 %146, 2
  br i1 %147, label %148, label %154

148:                                              ; preds = %142
  %149 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %150 = load i32, i32* @BWN_NPHY_BPHY_CTL3, align 4
  %151 = load i32, i32* @BWN_NPHY_BPHY_CTL3_SCALE, align 4
  %152 = xor i32 %151, -1
  %153 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %149, i32 %150, i32 %152, i32 90)
  br label %154

154:                                              ; preds = %148, %142
  br label %155

155:                                              ; preds = %154, %136
  %156 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %157 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = icmp slt i32 %159, 2
  br i1 %160, label %161, label %172

161:                                              ; preds = %155
  %162 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %163 = call i64 @bwn_is_40mhz(%struct.bwn_mac* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %172

165:                                              ; preds = %161
  %166 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %167 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %168 = call i32 @bwn_hf_read(%struct.bwn_mac* %167)
  %169 = load i32, i32* @BWN_HF_TSSI_RESET_PSM_WORKAROUN, align 4
  %170 = or i32 %168, %169
  %171 = call i32 @bwn_hf_write(%struct.bwn_mac* %166, i32 %170)
  br label %172

172:                                              ; preds = %165, %161, %155
  br label %380

173:                                              ; preds = %27
  %174 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %175 = call i32 @BWN_NTAB16(i32 26, i32 64)
  %176 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %6, align 8
  %177 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @bwn_ntab_write_bulk(%struct.bwn_mac* %174, i32 %175, i32 84, i32 %178)
  %180 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %181 = call i32 @BWN_NTAB16(i32 27, i32 64)
  %182 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %6, align 8
  %183 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @bwn_ntab_write_bulk(%struct.bwn_mac* %180, i32 %181, i32 84, i32 %184)
  %186 = load i32, i32* @BWN_NPHY_TXPCTL_CMD_COEFF, align 4
  %187 = load i32, i32* @BWN_NPHY_TXPCTL_CMD_HWPCTLEN, align 4
  %188 = or i32 %186, %187
  store i32 %188, i32* %8, align 4
  %189 = load i32, i32* @BWN_NPHY_TXPCTL_CMD_COEFF, align 4
  %190 = load i32, i32* @BWN_NPHY_TXPCTL_CMD_HWPCTLEN, align 4
  %191 = or i32 %189, %190
  store i32 %191, i32* %9, align 4
  %192 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %193 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = icmp sge i32 %195, 3
  br i1 %196, label %197, label %208

197:                                              ; preds = %173
  %198 = load i32, i32* @BWN_NPHY_TXPCTL_CMD_PCTLEN, align 4
  %199 = load i32, i32* %8, align 4
  %200 = or i32 %199, %198
  store i32 %200, i32* %8, align 4
  %201 = load i32, i32* %9, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %197
  %204 = load i32, i32* @BWN_NPHY_TXPCTL_CMD_PCTLEN, align 4
  %205 = load i32, i32* %9, align 4
  %206 = or i32 %205, %204
  store i32 %206, i32* %9, align 4
  br label %207

207:                                              ; preds = %203, %197
  br label %208

208:                                              ; preds = %207, %173
  %209 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %210 = load i32, i32* @BWN_NPHY_TXPCTL_CMD, align 4
  %211 = load i32, i32* %8, align 4
  %212 = xor i32 %211, -1
  %213 = load i32, i32* %9, align 4
  %214 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %209, i32 %210, i32 %212, i32 %213)
  %215 = load i64, i64* %11, align 8
  %216 = load i64, i64* @BWN_BAND_5G, align 8
  %217 = icmp eq i64 %215, %216
  br i1 %217, label %218, label %259

218:                                              ; preds = %208
  %219 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %220 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = icmp sge i32 %221, 19
  br i1 %222, label %223, label %224

223:                                              ; preds = %218
  br label %258

224:                                              ; preds = %218
  %225 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %226 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = icmp sge i32 %227, 7
  br i1 %228, label %229, label %240

229:                                              ; preds = %224
  %230 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %231 = load i32, i32* @BWN_NPHY_TXPCTL_CMD, align 4
  %232 = load i32, i32* @BWN_NPHY_TXPCTL_CMD_INIT, align 4
  %233 = xor i32 %232, -1
  %234 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %230, i32 %231, i32 %233, i32 50)
  %235 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %236 = load i32, i32* @BWN_NPHY_TXPCTL_INIT, align 4
  %237 = load i32, i32* @BWN_NPHY_TXPCTL_INIT_PIDXI1, align 4
  %238 = xor i32 %237, -1
  %239 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %235, i32 %236, i32 %238, i32 50)
  br label %257

240:                                              ; preds = %224
  %241 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %242 = load i32, i32* @BWN_NPHY_TXPCTL_CMD, align 4
  %243 = load i32, i32* @BWN_NPHY_TXPCTL_CMD_INIT, align 4
  %244 = xor i32 %243, -1
  %245 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %241, i32 %242, i32 %244, i32 100)
  %246 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %247 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = icmp sgt i32 %248, 1
  br i1 %249, label %250, label %256

250:                                              ; preds = %240
  %251 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %252 = load i32, i32* @BWN_NPHY_TXPCTL_INIT, align 4
  %253 = load i32, i32* @BWN_NPHY_TXPCTL_INIT_PIDXI1, align 4
  %254 = xor i32 %253, -1
  %255 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %251, i32 %252, i32 %254, i32 100)
  br label %256

256:                                              ; preds = %250, %240
  br label %257

257:                                              ; preds = %256, %229
  br label %258

258:                                              ; preds = %257, %223
  br label %259

259:                                              ; preds = %258, %208
  %260 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %261 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = icmp sge i32 %263, 3
  br i1 %264, label %265, label %306

265:                                              ; preds = %259
  %266 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %6, align 8
  %267 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %266, i32 0, i32 1
  %268 = load i32*, i32** %267, align 8
  %269 = getelementptr inbounds i32, i32* %268, i64 0
  %270 = load i32, i32* %269, align 4
  %271 = icmp ne i32 %270, 128
  br i1 %271, label %272, label %305

272:                                              ; preds = %265
  %273 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %6, align 8
  %274 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %273, i32 0, i32 1
  %275 = load i32*, i32** %274, align 8
  %276 = getelementptr inbounds i32, i32* %275, i64 1
  %277 = load i32, i32* %276, align 4
  %278 = icmp ne i32 %277, 128
  br i1 %278, label %279, label %305

279:                                              ; preds = %272
  %280 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %281 = load i32, i32* @BWN_NPHY_TXPCTL_CMD, align 4
  %282 = load i32, i32* @BWN_NPHY_TXPCTL_CMD_INIT, align 4
  %283 = xor i32 %282, -1
  %284 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %6, align 8
  %285 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %284, i32 0, i32 1
  %286 = load i32*, i32** %285, align 8
  %287 = getelementptr inbounds i32, i32* %286, i64 0
  %288 = load i32, i32* %287, align 4
  %289 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %280, i32 %281, i32 %283, i32 %288)
  %290 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %291 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = icmp sgt i32 %293, 1
  br i1 %294, label %295, label %304

295:                                              ; preds = %279
  %296 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %297 = load i32, i32* @BWN_NPHY_TXPCTL_INIT, align 4
  %298 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %6, align 8
  %299 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %298, i32 0, i32 1
  %300 = load i32*, i32** %299, align 8
  %301 = getelementptr inbounds i32, i32* %300, i64 1
  %302 = load i32, i32* %301, align 4
  %303 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %296, i32 %297, i32 -256, i32 %302)
  br label %304

304:                                              ; preds = %295, %279
  br label %305

305:                                              ; preds = %304, %272, %265
  br label %306

306:                                              ; preds = %305, %259
  %307 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %308 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = icmp sge i32 %309, 7
  br i1 %310, label %311, label %312

311:                                              ; preds = %306
  br label %312

312:                                              ; preds = %311, %306
  %313 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %314 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  %317 = icmp sge i32 %316, 3
  br i1 %317, label %318, label %325

318:                                              ; preds = %312
  %319 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %320 = load i32, i32* @BWN_NPHY_AFECTL_OVER1, align 4
  %321 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %319, i32 %320, i32 -257)
  %322 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %323 = load i32, i32* @BWN_NPHY_AFECTL_OVER, align 4
  %324 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %322, i32 %323, i32 -257)
  br label %329

325:                                              ; preds = %312
  %326 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %327 = load i32, i32* @BWN_NPHY_AFECTL_OVER, align 4
  %328 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %326, i32 %327, i32 -16385)
  br label %329

329:                                              ; preds = %325, %318
  %330 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %331 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %330, i32 0, i32 0
  %332 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 8
  %334 = icmp eq i32 %333, 2
  br i1 %334, label %335, label %339

335:                                              ; preds = %329
  %336 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %337 = load i32, i32* @BWN_NPHY_BPHY_CTL3, align 4
  %338 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %336, i32 %337, i32 -256, i32 59)
  br label %350

339:                                              ; preds = %329
  %340 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %341 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %340, i32 0, i32 0
  %342 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 8
  %344 = icmp slt i32 %343, 2
  br i1 %344, label %345, label %349

345:                                              ; preds = %339
  %346 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %347 = load i32, i32* @BWN_NPHY_BPHY_CTL3, align 4
  %348 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %346, i32 %347, i32 -256, i32 64)
  br label %349

349:                                              ; preds = %345, %339
  br label %350

350:                                              ; preds = %349, %335
  %351 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %352 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %351, i32 0, i32 0
  %353 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = icmp slt i32 %354, 2
  br i1 %355, label %356, label %368

356:                                              ; preds = %350
  %357 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %358 = call i64 @bwn_is_40mhz(%struct.bwn_mac* %357)
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %360, label %368

360:                                              ; preds = %356
  %361 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %362 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %363 = call i32 @bwn_hf_read(%struct.bwn_mac* %362)
  %364 = load i32, i32* @BWN_HF_TSSI_RESET_PSM_WORKAROUN, align 4
  %365 = xor i32 %364, -1
  %366 = and i32 %363, %365
  %367 = call i32 @bwn_hf_write(%struct.bwn_mac* %361, i32 %366)
  br label %368

368:                                              ; preds = %360, %356, %350
  %369 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %370 = call i64 @bwn_nphy_ipa(%struct.bwn_mac* %369)
  %371 = icmp ne i64 %370, 0
  br i1 %371, label %372, label %379

372:                                              ; preds = %368
  %373 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %374 = load i32, i32* @BWN_NPHY_PAPD_EN0, align 4
  %375 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %373, i32 %374, i32 -5)
  %376 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %377 = load i32, i32* @BWN_NPHY_PAPD_EN1, align 4
  %378 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %376, i32 %377, i32 -5)
  br label %379

379:                                              ; preds = %372, %368
  br label %380

380:                                              ; preds = %379, %172
  %381 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %6, align 8
  %382 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %381, i32 0, i32 2
  %383 = load i64, i64* %382, align 8
  %384 = icmp ne i64 %383, 0
  br i1 %384, label %385, label %388

385:                                              ; preds = %380
  %386 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %387 = call i32 @bwn_nphy_stay_in_carrier_search(%struct.bwn_mac* %386, i32 0)
  br label %388

388:                                              ; preds = %385, %380
  ret void
}

declare dso_local i64 @bwn_current_band(%struct.bwn_mac*) #1

declare dso_local i32 @bwn_nphy_stay_in_carrier_search(%struct.bwn_mac*, i32) #1

declare dso_local i32 @BWN_PHY_READ(%struct.bwn_mac*, i32) #1

declare dso_local i32 @BWN_PHY_WRITE(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @BWN_PHY_MASK(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @BWN_PHY_SET(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @BWN_PHY_SETMASK(%struct.bwn_mac*, i32, i32, i32) #1

declare dso_local i64 @bwn_is_40mhz(%struct.bwn_mac*) #1

declare dso_local i32 @bwn_hf_write(%struct.bwn_mac*, i32) #1

declare dso_local i32 @bwn_hf_read(%struct.bwn_mac*) #1

declare dso_local i32 @bwn_ntab_write_bulk(%struct.bwn_mac*, i32, i32, i32) #1

declare dso_local i32 @BWN_NTAB16(i32, i32) #1

declare dso_local i64 @bwn_nphy_ipa(%struct.bwn_mac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
