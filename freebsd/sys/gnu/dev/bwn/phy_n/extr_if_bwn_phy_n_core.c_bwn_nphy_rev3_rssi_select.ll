; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_rev3_rssi_select.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_rev3_rssi_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@BWN_NPHY_AFECTL_OVER1 = common dso_local global i32 0, align 4
@BWN_NPHY_AFECTL_OVER = common dso_local global i32 0, align 4
@BWN_NPHY_AFECTL_C1 = common dso_local global i32 0, align 4
@BWN_NPHY_AFECTL_C2 = common dso_local global i32 0, align 4
@BWN_NPHY_TXF_40CO_B1S0 = common dso_local global i32 0, align 4
@BWN_NPHY_TXF_40CO_B32S1 = common dso_local global i32 0, align 4
@BWN_NPHY_RFCTL_LUT_TRSW_UP1 = common dso_local global i32 0, align 4
@BWN_NPHY_RFCTL_LUT_TRSW_UP2 = common dso_local global i32 0, align 4
@N_RSSI_W1 = common dso_local global i32 0, align 4
@N_RSSI_W2 = common dso_local global i32 0, align 4
@N_RSSI_NB = common dso_local global i32 0, align 4
@BWN_BAND_5G = common dso_local global i64 0, align 8
@N_RSSI_TBD = common dso_local global i32 0, align 4
@N_RSSI_IQ = common dso_local global i32 0, align 4
@B2056_TX0 = common dso_local global i32 0, align 4
@B2056_TX1 = common dso_local global i32 0, align 4
@B2056_TX_TX_SSI_MUX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*, i32, i32)* @bwn_nphy_rev3_rssi_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_nphy_rev3_rssi_select(%struct.bwn_mac* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bwn_mac*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.bwn_mac* %0, %struct.bwn_mac** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %38

13:                                               ; preds = %3
  %14 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %15 = load i32, i32* @BWN_NPHY_AFECTL_OVER1, align 4
  %16 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %14, i32 %15, i32 65023)
  %17 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %18 = load i32, i32* @BWN_NPHY_AFECTL_OVER, align 4
  %19 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %17, i32 %18, i32 65023)
  %20 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %21 = load i32, i32* @BWN_NPHY_AFECTL_C1, align 4
  %22 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %20, i32 %21, i32 64767)
  %23 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %24 = load i32, i32* @BWN_NPHY_AFECTL_C2, align 4
  %25 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %23, i32 %24, i32 64767)
  %26 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %27 = load i32, i32* @BWN_NPHY_TXF_40CO_B1S0, align 4
  %28 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %26, i32 %27, i32 65503)
  %29 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %30 = load i32, i32* @BWN_NPHY_TXF_40CO_B32S1, align 4
  %31 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %29, i32 %30, i32 65503)
  %32 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %33 = load i32, i32* @BWN_NPHY_RFCTL_LUT_TRSW_UP1, align 4
  %34 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %32, i32 %33, i32 65475)
  %35 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %36 = load i32, i32* @BWN_NPHY_RFCTL_LUT_TRSW_UP2, align 4
  %37 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %35, i32 %36, i32 65475)
  br label %224

38:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %220, %38
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %40, 2
  br i1 %41, label %42, label %223

42:                                               ; preds = %39
  %43 = load i32, i32* %5, align 4
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, i32* %7, align 4
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %54, label %48

48:                                               ; preds = %45, %42
  %49 = load i32, i32* %5, align 4
  %50 = icmp eq i32 %49, 2
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %51, %45
  br label %220

55:                                               ; preds = %51, %48
  %56 = load i32, i32* %7, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load i32, i32* @BWN_NPHY_AFECTL_OVER1, align 4
  br label %62

60:                                               ; preds = %55
  %61 = load i32, i32* @BWN_NPHY_AFECTL_OVER, align 4
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi i32 [ %59, %58 ], [ %61, %60 ]
  store i32 %63, i32* %8, align 4
  %64 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %64, i32 %65, i32 65023, i32 512)
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @N_RSSI_W1, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %78, label %70

70:                                               ; preds = %62
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @N_RSSI_W2, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %78, label %74

74:                                               ; preds = %70
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @N_RSSI_NB, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %134

78:                                               ; preds = %74, %70, %62
  %79 = load i32, i32* %7, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = load i32, i32* @BWN_NPHY_AFECTL_C1, align 4
  br label %85

83:                                               ; preds = %78
  %84 = load i32, i32* @BWN_NPHY_AFECTL_C2, align 4
  br label %85

85:                                               ; preds = %83, %81
  %86 = phi i32 [ %82, %81 ], [ %84, %83 ]
  store i32 %86, i32* %8, align 4
  %87 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %87, i32 %88, i32 64767, i32 0)
  %90 = load i32, i32* %7, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %85
  %93 = load i32, i32* @BWN_NPHY_RFCTL_LUT_TRSW_UP1, align 4
  br label %96

94:                                               ; preds = %85
  %95 = load i32, i32* @BWN_NPHY_RFCTL_LUT_TRSW_UP2, align 4
  br label %96

96:                                               ; preds = %94, %92
  %97 = phi i32 [ %93, %92 ], [ %95, %94 ]
  store i32 %97, i32* %8, align 4
  %98 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %98, i32 %99, i32 65475, i32 0)
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* @N_RSSI_W1, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %111

104:                                              ; preds = %96
  %105 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %106 = call i64 @bwn_current_band(%struct.bwn_mac* %105)
  %107 = load i64, i64* @BWN_BAND_5G, align 8
  %108 = icmp eq i64 %106, %107
  %109 = zext i1 %108 to i64
  %110 = select i1 %108, i32 4, i32 8
  store i32 %110, i32* %9, align 4
  br label %118

111:                                              ; preds = %96
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* @N_RSSI_W2, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %111
  store i32 16, i32* %9, align 4
  br label %117

116:                                              ; preds = %111
  store i32 32, i32* %9, align 4
  br label %117

117:                                              ; preds = %116, %115
  br label %118

118:                                              ; preds = %117, %104
  %119 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* %9, align 4
  %122 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %119, i32 %120, i32 %121)
  %123 = load i32, i32* %7, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %118
  %126 = load i32, i32* @BWN_NPHY_TXF_40CO_B1S0, align 4
  br label %129

127:                                              ; preds = %118
  %128 = load i32, i32* @BWN_NPHY_TXF_40CO_B32S1, align 4
  br label %129

129:                                              ; preds = %127, %125
  %130 = phi i32 [ %126, %125 ], [ %128, %127 ]
  store i32 %130, i32* %8, align 4
  %131 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %132 = load i32, i32* %8, align 4
  %133 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %131, i32 %132, i32 32)
  br label %219

134:                                              ; preds = %74
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* @N_RSSI_TBD, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %134
  store i32 256, i32* %9, align 4
  br label %146

139:                                              ; preds = %134
  %140 = load i32, i32* %6, align 4
  %141 = load i32, i32* @N_RSSI_IQ, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %139
  store i32 512, i32* %9, align 4
  br label %145

144:                                              ; preds = %139
  store i32 768, i32* %9, align 4
  br label %145

145:                                              ; preds = %144, %143
  br label %146

146:                                              ; preds = %145, %138
  %147 = load i32, i32* %7, align 4
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %146
  %150 = load i32, i32* @BWN_NPHY_AFECTL_C1, align 4
  br label %153

151:                                              ; preds = %146
  %152 = load i32, i32* @BWN_NPHY_AFECTL_C2, align 4
  br label %153

153:                                              ; preds = %151, %149
  %154 = phi i32 [ %150, %149 ], [ %152, %151 ]
  store i32 %154, i32* %8, align 4
  %155 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %156 = load i32, i32* %8, align 4
  %157 = load i32, i32* %9, align 4
  %158 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %155, i32 %156, i32 64767, i32 %157)
  %159 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %160 = load i32, i32* %8, align 4
  %161 = load i32, i32* %9, align 4
  %162 = shl i32 %161, 2
  %163 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %159, i32 %160, i32 62463, i32 %162)
  %164 = load i32, i32* %6, align 4
  %165 = load i32, i32* @N_RSSI_IQ, align 4
  %166 = icmp ne i32 %164, %165
  br i1 %166, label %167, label %218

167:                                              ; preds = %153
  %168 = load i32, i32* %6, align 4
  %169 = load i32, i32* @N_RSSI_TBD, align 4
  %170 = icmp ne i32 %168, %169
  br i1 %170, label %171, label %218

171:                                              ; preds = %167
  %172 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %173 = call i64 @bwn_current_band(%struct.bwn_mac* %172)
  store i64 %173, i64* %10, align 8
  %174 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %175 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = icmp slt i32 %177, 7
  br i1 %178, label %179, label %206

179:                                              ; preds = %171
  %180 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %181 = call i64 @bwn_nphy_ipa(%struct.bwn_mac* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %189

183:                                              ; preds = %179
  %184 = load i64, i64* %10, align 8
  %185 = load i64, i64* @BWN_BAND_5G, align 8
  %186 = icmp eq i64 %184, %185
  %187 = zext i1 %186 to i64
  %188 = select i1 %186, i32 12, i32 14
  store i32 %188, i32* %9, align 4
  br label %190

189:                                              ; preds = %179
  store i32 17, i32* %9, align 4
  br label %190

190:                                              ; preds = %189, %183
  %191 = load i32, i32* %7, align 4
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %190
  %194 = load i32, i32* @B2056_TX0, align 4
  br label %197

195:                                              ; preds = %190
  %196 = load i32, i32* @B2056_TX1, align 4
  br label %197

197:                                              ; preds = %195, %193
  %198 = phi i32 [ %194, %193 ], [ %196, %195 ]
  store i32 %198, i32* %8, align 4
  %199 = load i32, i32* @B2056_TX_TX_SSI_MUX, align 4
  %200 = load i32, i32* %8, align 4
  %201 = or i32 %200, %199
  store i32 %201, i32* %8, align 4
  %202 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %203 = load i32, i32* %8, align 4
  %204 = load i32, i32* %9, align 4
  %205 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %202, i32 %203, i32 %204)
  br label %206

206:                                              ; preds = %197, %171
  %207 = load i32, i32* %7, align 4
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %206
  %210 = load i32, i32* @BWN_NPHY_AFECTL_OVER1, align 4
  br label %213

211:                                              ; preds = %206
  %212 = load i32, i32* @BWN_NPHY_AFECTL_OVER, align 4
  br label %213

213:                                              ; preds = %211, %209
  %214 = phi i32 [ %210, %209 ], [ %212, %211 ]
  store i32 %214, i32* %8, align 4
  %215 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %216 = load i32, i32* %8, align 4
  %217 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %215, i32 %216, i32 512)
  br label %218

218:                                              ; preds = %213, %167, %153
  br label %219

219:                                              ; preds = %218, %129
  br label %220

220:                                              ; preds = %219, %54
  %221 = load i32, i32* %7, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %7, align 4
  br label %39

223:                                              ; preds = %39
  br label %224

224:                                              ; preds = %223, %13
  ret void
}

declare dso_local i32 @BWN_PHY_MASK(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @BWN_PHY_SETMASK(%struct.bwn_mac*, i32, i32, i32) #1

declare dso_local i64 @bwn_current_band(%struct.bwn_mac*) #1

declare dso_local i32 @BWN_PHY_SET(%struct.bwn_mac*, i32, i32) #1

declare dso_local i64 @bwn_nphy_ipa(%struct.bwn_mac*) #1

declare dso_local i32 @BWN_RF_WRITE(%struct.bwn_mac*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
