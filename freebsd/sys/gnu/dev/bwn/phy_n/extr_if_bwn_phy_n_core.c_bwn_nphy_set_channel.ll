; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_set_channel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_set_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.bwn_phy }
%struct.bwn_phy = type { i32, i64, i32, i32 }
%struct.ieee80211_channel = type { i32 }
%struct.bwn_nphy_channeltab_entry_rev2 = type { %struct.bwn_phy_n_sfo_cfg }
%struct.bwn_phy_n_sfo_cfg = type { i32 }
%struct.bwn_nphy_channeltab_entry_rev3 = type { %struct.bwn_phy_n_sfo_cfg }
%struct.bwn_nphy_chantabent_rev7 = type { %struct.bwn_phy_n_sfo_cfg }
%struct.bwn_nphy_chantabent_rev7_2g = type { %struct.bwn_phy_n_sfo_cfg }

@ESRCH = common dso_local global i32 0, align 4
@BWN_CHAN_TYPE_40_HT_U = common dso_local global i64 0, align 8
@BWN_NPHY_RXCTL = common dso_local global i32 0, align 4
@BWN_NPHY_RXCTL_BSELU20 = common dso_local global i32 0, align 4
@BWN_CHAN_TYPE_40_HT_D = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@BWN_BAND_5G = common dso_local global i64 0, align 8
@R2057_TIA_CONFIG_CORE0 = common dso_local global i32 0, align 4
@R2057_TIA_CONFIG_CORE1 = common dso_local global i32 0, align 4
@B2055_MASTER1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bwn_mac*, %struct.ieee80211_channel*, i64)* @bwn_nphy_set_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwn_nphy_set_channel(%struct.bwn_mac* %0, %struct.ieee80211_channel* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bwn_mac*, align 8
  %6 = alloca %struct.ieee80211_channel*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.bwn_phy*, align 8
  %9 = alloca %struct.bwn_nphy_channeltab_entry_rev2*, align 8
  %10 = alloca %struct.bwn_nphy_channeltab_entry_rev3*, align 8
  %11 = alloca %struct.bwn_nphy_chantabent_rev7*, align 8
  %12 = alloca %struct.bwn_nphy_chantabent_rev7_2g*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.bwn_phy_n_sfo_cfg*, align 8
  store %struct.bwn_mac* %0, %struct.bwn_mac** %5, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %6, align 8
  store i64 %2, i64* %7, align 8
  %16 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %17 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %16, i32 0, i32 0
  store %struct.bwn_phy* %17, %struct.bwn_phy** %8, align 8
  store %struct.bwn_nphy_channeltab_entry_rev2* null, %struct.bwn_nphy_channeltab_entry_rev2** %9, align 8
  store %struct.bwn_nphy_channeltab_entry_rev3* null, %struct.bwn_nphy_channeltab_entry_rev3** %10, align 8
  store %struct.bwn_nphy_chantabent_rev7* null, %struct.bwn_nphy_chantabent_rev7** %11, align 8
  store %struct.bwn_nphy_chantabent_rev7_2g* null, %struct.bwn_nphy_chantabent_rev7_2g** %12, align 8
  %18 = load %struct.bwn_phy*, %struct.bwn_phy** %8, align 8
  %19 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp sge i32 %20, 19
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @ESRCH, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %217

25:                                               ; preds = %3
  %26 = load %struct.bwn_phy*, %struct.bwn_phy** %8, align 8
  %27 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp sge i32 %28, 7
  br i1 %29, label %30, label %45

30:                                               ; preds = %25
  %31 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %32 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %33 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %34 = call i32 @bwn_get_chan_centre_freq(%struct.bwn_mac* %32, %struct.ieee80211_channel* %33)
  %35 = call i32 @r2057_get_chantabent_rev7(%struct.bwn_mac* %31, i32 %34, %struct.bwn_nphy_chantabent_rev7** %11, %struct.bwn_nphy_chantabent_rev7_2g** %12)
  %36 = load %struct.bwn_nphy_chantabent_rev7*, %struct.bwn_nphy_chantabent_rev7** %11, align 8
  %37 = icmp ne %struct.bwn_nphy_chantabent_rev7* %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %30
  %39 = load %struct.bwn_nphy_chantabent_rev7_2g*, %struct.bwn_nphy_chantabent_rev7_2g** %12, align 8
  %40 = icmp ne %struct.bwn_nphy_chantabent_rev7_2g* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* @ESRCH, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %217

44:                                               ; preds = %38, %30
  br label %75

45:                                               ; preds = %25
  %46 = load %struct.bwn_phy*, %struct.bwn_phy** %8, align 8
  %47 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp sge i32 %48, 3
  br i1 %49, label %50, label %62

50:                                               ; preds = %45
  %51 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %52 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %53 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %54 = call i32 @bwn_get_chan_centre_freq(%struct.bwn_mac* %52, %struct.ieee80211_channel* %53)
  %55 = call %struct.bwn_nphy_channeltab_entry_rev3* @bwn_nphy_get_chantabent_rev3(%struct.bwn_mac* %51, i32 %54)
  store %struct.bwn_nphy_channeltab_entry_rev3* %55, %struct.bwn_nphy_channeltab_entry_rev3** %10, align 8
  %56 = load %struct.bwn_nphy_channeltab_entry_rev3*, %struct.bwn_nphy_channeltab_entry_rev3** %10, align 8
  %57 = icmp ne %struct.bwn_nphy_channeltab_entry_rev3* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %50
  %59 = load i32, i32* @ESRCH, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %217

61:                                               ; preds = %50
  br label %74

62:                                               ; preds = %45
  %63 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %64 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %65 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call %struct.bwn_nphy_channeltab_entry_rev2* @bwn_nphy_get_chantabent_rev2(%struct.bwn_mac* %63, i32 %66)
  store %struct.bwn_nphy_channeltab_entry_rev2* %67, %struct.bwn_nphy_channeltab_entry_rev2** %9, align 8
  %68 = load %struct.bwn_nphy_channeltab_entry_rev2*, %struct.bwn_nphy_channeltab_entry_rev2** %9, align 8
  %69 = icmp ne %struct.bwn_nphy_channeltab_entry_rev2* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %62
  %71 = load i32, i32* @ESRCH, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %4, align 4
  br label %217

73:                                               ; preds = %62
  br label %74

74:                                               ; preds = %73, %61
  br label %75

75:                                               ; preds = %74, %44
  br label %76

76:                                               ; preds = %75
  %77 = load i64, i64* %7, align 8
  %78 = load i64, i64* @BWN_CHAN_TYPE_40_HT_U, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %93

80:                                               ; preds = %76
  %81 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %82 = load i32, i32* @BWN_NPHY_RXCTL, align 4
  %83 = load i32, i32* @BWN_NPHY_RXCTL_BSELU20, align 4
  %84 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %81, i32 %82, i32 %83)
  %85 = load %struct.bwn_phy*, %struct.bwn_phy** %8, align 8
  %86 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp sge i32 %87, 7
  br i1 %88, label %89, label %92

89:                                               ; preds = %80
  %90 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %91 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %90, i32 784, i32 32768)
  br label %92

92:                                               ; preds = %89, %80
  br label %112

93:                                               ; preds = %76
  %94 = load i64, i64* %7, align 8
  %95 = load i64, i64* @BWN_CHAN_TYPE_40_HT_D, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %111

97:                                               ; preds = %93
  %98 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %99 = load i32, i32* @BWN_NPHY_RXCTL, align 4
  %100 = load i32, i32* @BWN_NPHY_RXCTL_BSELU20, align 4
  %101 = xor i32 %100, -1
  %102 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %98, i32 %99, i32 %101)
  %103 = load %struct.bwn_phy*, %struct.bwn_phy** %8, align 8
  %104 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp sge i32 %105, 7
  br i1 %106, label %107, label %110

107:                                              ; preds = %97
  %108 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %109 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %108, i32 784, i32 -32769)
  br label %110

110:                                              ; preds = %107, %97
  br label %111

111:                                              ; preds = %110, %93
  br label %112

112:                                              ; preds = %111, %92
  %113 = load %struct.bwn_phy*, %struct.bwn_phy** %8, align 8
  %114 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp sge i32 %115, 19
  br i1 %116, label %117, label %119

117:                                              ; preds = %112
  %118 = load i32, i32* @ENODEV, align 4
  store i32 %118, i32* %13, align 4
  br label %215

119:                                              ; preds = %112
  %120 = load %struct.bwn_phy*, %struct.bwn_phy** %8, align 8
  %121 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp sge i32 %122, 7
  br i1 %123, label %124, label %169

124:                                              ; preds = %119
  %125 = load %struct.bwn_nphy_chantabent_rev7*, %struct.bwn_nphy_chantabent_rev7** %11, align 8
  %126 = icmp ne %struct.bwn_nphy_chantabent_rev7* %125, null
  br i1 %126, label %127, label %130

127:                                              ; preds = %124
  %128 = load %struct.bwn_nphy_chantabent_rev7*, %struct.bwn_nphy_chantabent_rev7** %11, align 8
  %129 = getelementptr inbounds %struct.bwn_nphy_chantabent_rev7, %struct.bwn_nphy_chantabent_rev7* %128, i32 0, i32 0
  br label %133

130:                                              ; preds = %124
  %131 = load %struct.bwn_nphy_chantabent_rev7_2g*, %struct.bwn_nphy_chantabent_rev7_2g** %12, align 8
  %132 = getelementptr inbounds %struct.bwn_nphy_chantabent_rev7_2g, %struct.bwn_nphy_chantabent_rev7_2g* %131, i32 0, i32 0
  br label %133

133:                                              ; preds = %130, %127
  %134 = phi %struct.bwn_phy_n_sfo_cfg* [ %129, %127 ], [ %132, %130 ]
  store %struct.bwn_phy_n_sfo_cfg* %134, %struct.bwn_phy_n_sfo_cfg** %15, align 8
  %135 = load %struct.bwn_phy*, %struct.bwn_phy** %8, align 8
  %136 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = icmp sle i32 %137, 4
  br i1 %138, label %144, label %139

139:                                              ; preds = %133
  %140 = load %struct.bwn_phy*, %struct.bwn_phy** %8, align 8
  %141 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = icmp eq i32 %142, 6
  br i1 %143, label %144, label %160

144:                                              ; preds = %139, %133
  %145 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %146 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %147 = call i64 @bwn_channel_band(%struct.bwn_mac* %145, %struct.ieee80211_channel* %146)
  %148 = load i64, i64* @BWN_BAND_5G, align 8
  %149 = icmp eq i64 %147, %148
  %150 = zext i1 %149 to i64
  %151 = select i1 %149, i32 2, i32 0
  store i32 %151, i32* %14, align 4
  %152 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %153 = load i32, i32* @R2057_TIA_CONFIG_CORE0, align 4
  %154 = load i32, i32* %14, align 4
  %155 = call i32 @BWN_RF_SETMASK(%struct.bwn_mac* %152, i32 %153, i32 -3, i32 %154)
  %156 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %157 = load i32, i32* @R2057_TIA_CONFIG_CORE1, align 4
  %158 = load i32, i32* %14, align 4
  %159 = call i32 @BWN_RF_SETMASK(%struct.bwn_mac* %156, i32 %157, i32 -3, i32 %158)
  br label %160

160:                                              ; preds = %144, %139
  %161 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %162 = load %struct.bwn_nphy_chantabent_rev7*, %struct.bwn_nphy_chantabent_rev7** %11, align 8
  %163 = load %struct.bwn_nphy_chantabent_rev7_2g*, %struct.bwn_nphy_chantabent_rev7_2g** %12, align 8
  %164 = call i32 @bwn_radio_2057_setup(%struct.bwn_mac* %161, %struct.bwn_nphy_chantabent_rev7* %162, %struct.bwn_nphy_chantabent_rev7_2g* %163)
  %165 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %166 = load %struct.bwn_phy_n_sfo_cfg*, %struct.bwn_phy_n_sfo_cfg** %15, align 8
  %167 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %168 = call i32 @bwn_nphy_channel_setup(%struct.bwn_mac* %165, %struct.bwn_phy_n_sfo_cfg* %166, %struct.ieee80211_channel* %167)
  store i32 %168, i32* %13, align 4
  br label %214

169:                                              ; preds = %119
  %170 = load %struct.bwn_phy*, %struct.bwn_phy** %8, align 8
  %171 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = icmp sge i32 %172, 3
  br i1 %173, label %174, label %193

174:                                              ; preds = %169
  %175 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %176 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %177 = call i64 @bwn_channel_band(%struct.bwn_mac* %175, %struct.ieee80211_channel* %176)
  %178 = load i64, i64* @BWN_BAND_5G, align 8
  %179 = icmp eq i64 %177, %178
  %180 = zext i1 %179 to i64
  %181 = select i1 %179, i32 4, i32 0
  store i32 %181, i32* %14, align 4
  %182 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %183 = load i32, i32* %14, align 4
  %184 = call i32 @BWN_RF_SETMASK(%struct.bwn_mac* %182, i32 8, i32 65531, i32 %183)
  %185 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %186 = load %struct.bwn_nphy_channeltab_entry_rev3*, %struct.bwn_nphy_channeltab_entry_rev3** %10, align 8
  %187 = call i32 @bwn_radio_2056_setup(%struct.bwn_mac* %185, %struct.bwn_nphy_channeltab_entry_rev3* %186)
  %188 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %189 = load %struct.bwn_nphy_channeltab_entry_rev3*, %struct.bwn_nphy_channeltab_entry_rev3** %10, align 8
  %190 = getelementptr inbounds %struct.bwn_nphy_channeltab_entry_rev3, %struct.bwn_nphy_channeltab_entry_rev3* %189, i32 0, i32 0
  %191 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %192 = call i32 @bwn_nphy_channel_setup(%struct.bwn_mac* %188, %struct.bwn_phy_n_sfo_cfg* %190, %struct.ieee80211_channel* %191)
  store i32 %192, i32* %13, align 4
  br label %213

193:                                              ; preds = %169
  %194 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %195 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %196 = call i64 @bwn_channel_band(%struct.bwn_mac* %194, %struct.ieee80211_channel* %195)
  %197 = load i64, i64* @BWN_BAND_5G, align 8
  %198 = icmp eq i64 %196, %197
  %199 = zext i1 %198 to i64
  %200 = select i1 %198, i32 32, i32 80
  store i32 %200, i32* %14, align 4
  %201 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %202 = load i32, i32* @B2055_MASTER1, align 4
  %203 = load i32, i32* %14, align 4
  %204 = call i32 @BWN_RF_SETMASK(%struct.bwn_mac* %201, i32 %202, i32 65423, i32 %203)
  %205 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %206 = load %struct.bwn_nphy_channeltab_entry_rev2*, %struct.bwn_nphy_channeltab_entry_rev2** %9, align 8
  %207 = call i32 @bwn_radio_2055_setup(%struct.bwn_mac* %205, %struct.bwn_nphy_channeltab_entry_rev2* %206)
  %208 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %209 = load %struct.bwn_nphy_channeltab_entry_rev2*, %struct.bwn_nphy_channeltab_entry_rev2** %9, align 8
  %210 = getelementptr inbounds %struct.bwn_nphy_channeltab_entry_rev2, %struct.bwn_nphy_channeltab_entry_rev2* %209, i32 0, i32 0
  %211 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %212 = call i32 @bwn_nphy_channel_setup(%struct.bwn_mac* %208, %struct.bwn_phy_n_sfo_cfg* %210, %struct.ieee80211_channel* %211)
  store i32 %212, i32* %13, align 4
  br label %213

213:                                              ; preds = %193, %174
  br label %214

214:                                              ; preds = %213, %160
  br label %215

215:                                              ; preds = %214, %117
  %216 = load i32, i32* %13, align 4
  store i32 %216, i32* %4, align 4
  br label %217

217:                                              ; preds = %215, %70, %58, %41, %22
  %218 = load i32, i32* %4, align 4
  ret i32 %218
}

declare dso_local i32 @r2057_get_chantabent_rev7(%struct.bwn_mac*, i32, %struct.bwn_nphy_chantabent_rev7**, %struct.bwn_nphy_chantabent_rev7_2g**) #1

declare dso_local i32 @bwn_get_chan_centre_freq(%struct.bwn_mac*, %struct.ieee80211_channel*) #1

declare dso_local %struct.bwn_nphy_channeltab_entry_rev3* @bwn_nphy_get_chantabent_rev3(%struct.bwn_mac*, i32) #1

declare dso_local %struct.bwn_nphy_channeltab_entry_rev2* @bwn_nphy_get_chantabent_rev2(%struct.bwn_mac*, i32) #1

declare dso_local i32 @BWN_PHY_SET(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @BWN_PHY_MASK(%struct.bwn_mac*, i32, i32) #1

declare dso_local i64 @bwn_channel_band(%struct.bwn_mac*, %struct.ieee80211_channel*) #1

declare dso_local i32 @BWN_RF_SETMASK(%struct.bwn_mac*, i32, i32, i32) #1

declare dso_local i32 @bwn_radio_2057_setup(%struct.bwn_mac*, %struct.bwn_nphy_chantabent_rev7*, %struct.bwn_nphy_chantabent_rev7_2g*) #1

declare dso_local i32 @bwn_nphy_channel_setup(%struct.bwn_mac*, %struct.bwn_phy_n_sfo_cfg*, %struct.ieee80211_channel*) #1

declare dso_local i32 @bwn_radio_2056_setup(%struct.bwn_mac*, %struct.bwn_nphy_channeltab_entry_rev3*) #1

declare dso_local i32 @bwn_radio_2055_setup(%struct.bwn_mac*, %struct.bwn_nphy_channeltab_entry_rev2*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
