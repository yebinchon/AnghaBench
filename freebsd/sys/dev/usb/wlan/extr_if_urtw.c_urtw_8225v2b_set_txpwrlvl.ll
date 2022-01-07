; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_8225v2b_set_txpwrlvl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_8225v2b_set_txpwrlvl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urtw_softc = type { i32*, i32*, i32, i32, i64, i64 }

@URTW_RTL8187B_REV_B = common dso_local global i32 0, align 4
@urtw_8225v2b_txpwr_cck_ch14 = common dso_local global i32* null, align 8
@urtw_8225v2b_txpwr_cck = common dso_local global i32* null, align 8
@URTW_TX_GAIN_CCK = common dso_local global i32 0, align 4
@urtw_8225v2_tx_gain_cck_ofdm = common dso_local global i32* null, align 8
@URTW_TX_GAIN_OFDM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.urtw_softc*, i32)* @urtw_8225v2b_set_txpwrlvl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @urtw_8225v2b_set_txpwrlvl(%struct.urtw_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.urtw_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.urtw_softc* %0, %struct.urtw_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 15, i32* %7, align 4
  %11 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %12 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 255
  store i32 %18, i32* %8, align 4
  %19 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %20 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 255
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %2
  %31 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %32 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @URTW_RTL8187B_REV_B, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* %7, align 4
  br label %40

39:                                               ; preds = %30
  br label %40

40:                                               ; preds = %39, %37
  %41 = phi i32 [ %38, %37 ], [ 22, %39 ]
  br label %53

42:                                               ; preds = %2
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %45 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @URTW_RTL8187B_REV_B, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 0, i32 7
  %52 = add nsw i32 %43, %51
  br label %53

53:                                               ; preds = %42, %40
  %54 = phi i32 [ %41, %40 ], [ %52, %42 ]
  store i32 %54, i32* %8, align 4
  %55 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %56 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %55, i32 0, i32 5
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %59, %57
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp sgt i32 %62, 35
  br i1 %63, label %64, label %65

64:                                               ; preds = %53
  br label %67

65:                                               ; preds = %53
  %66 = load i32, i32* %8, align 4
  br label %67

67:                                               ; preds = %65, %64
  %68 = phi i32 [ 35, %64 ], [ %66, %65 ]
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp eq i32 %69, 14
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load i32*, i32** @urtw_8225v2b_txpwr_cck_ch14, align 8
  br label %75

73:                                               ; preds = %67
  %74 = load i32*, i32** @urtw_8225v2b_txpwr_cck, align 8
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi i32* [ %72, %71 ], [ %74, %73 ]
  store i32* %76, i32** %6, align 8
  %77 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %78 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @URTW_RTL8187B_REV_B, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %97

83:                                               ; preds = %75
  %84 = load i32, i32* %8, align 4
  %85 = icmp sle i32 %84, 6
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  br label %92

87:                                               ; preds = %83
  %88 = load i32, i32* %8, align 4
  %89 = icmp sle i32 %88, 11
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i32 8, i32 16
  br label %92

92:                                               ; preds = %87, %86
  %93 = phi i32 [ 0, %86 ], [ %91, %87 ]
  %94 = load i32*, i32** %6, align 8
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  store i32* %96, i32** %6, align 8
  br label %117

97:                                               ; preds = %75
  %98 = load i32, i32* %8, align 4
  %99 = icmp sle i32 %98, 5
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  br label %112

101:                                              ; preds = %97
  %102 = load i32, i32* %8, align 4
  %103 = icmp sle i32 %102, 11
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  br label %110

105:                                              ; preds = %101
  %106 = load i32, i32* %8, align 4
  %107 = icmp sle i32 %106, 17
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i32 16, i32 24
  br label %110

110:                                              ; preds = %105, %104
  %111 = phi i32 [ 8, %104 ], [ %109, %105 ]
  br label %112

112:                                              ; preds = %110, %100
  %113 = phi i32 [ 0, %100 ], [ %111, %110 ]
  %114 = load i32*, i32** %6, align 8
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  store i32* %116, i32** %6, align 8
  br label %117

117:                                              ; preds = %112, %92
  store i32 0, i32* %5, align 4
  br label %118

118:                                              ; preds = %131, %117
  %119 = load i32, i32* %5, align 4
  %120 = icmp slt i32 %119, 8
  br i1 %120, label %121, label %134

121:                                              ; preds = %118
  %122 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %123 = load i32, i32* %5, align 4
  %124 = add nsw i32 68, %123
  %125 = load i32*, i32** %6, align 8
  %126 = load i32, i32* %5, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @urtw_8187_write_phy_cck(%struct.urtw_softc* %122, i32 %124, i32 %129)
  br label %131

131:                                              ; preds = %121
  %132 = load i32, i32* %5, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %5, align 4
  br label %118

134:                                              ; preds = %118
  %135 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %136 = load i32, i32* @URTW_TX_GAIN_CCK, align 4
  %137 = load i32*, i32** @urtw_8225v2_tx_gain_cck_ofdm, align 8
  %138 = load i32, i32* %8, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = shl i32 %141, 1
  %143 = call i32 @urtw_write8_m(%struct.urtw_softc* %135, i32 %136, i32 %142)
  %144 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %145 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %144, i32 0, i32 3
  %146 = call i32 @usb_pause_mtx(i32* %145, i32 1)
  %147 = load i32, i32* %9, align 4
  %148 = icmp sgt i32 %147, 15
  br i1 %148, label %149, label %158

149:                                              ; preds = %134
  %150 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %151 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @URTW_RTL8187B_REV_B, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  %156 = zext i1 %155 to i64
  %157 = select i1 %155, i32 17, i32 25
  br label %169

158:                                              ; preds = %134
  %159 = load i32, i32* %9, align 4
  %160 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %161 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @URTW_RTL8187B_REV_B, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  %166 = zext i1 %165 to i64
  %167 = select i1 %165, i32 2, i32 10
  %168 = add nsw i32 %159, %167
  br label %169

169:                                              ; preds = %158, %149
  %170 = phi i32 [ %157, %149 ], [ %168, %158 ]
  store i32 %170, i32* %9, align 4
  %171 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %172 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %171, i32 0, i32 4
  %173 = load i64, i64* %172, align 8
  %174 = load i32, i32* %9, align 4
  %175 = sext i32 %174 to i64
  %176 = add nsw i64 %175, %173
  %177 = trunc i64 %176 to i32
  store i32 %177, i32* %9, align 4
  %178 = load i32, i32* %9, align 4
  %179 = icmp sgt i32 %178, 35
  br i1 %179, label %180, label %181

180:                                              ; preds = %169
  br label %183

181:                                              ; preds = %169
  %182 = load i32, i32* %9, align 4
  br label %183

183:                                              ; preds = %181, %180
  %184 = phi i32 [ 35, %180 ], [ %182, %181 ]
  store i32 %184, i32* %9, align 4
  %185 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %186 = load i32, i32* @URTW_TX_GAIN_OFDM, align 4
  %187 = load i32*, i32** @urtw_8225v2_tx_gain_cck_ofdm, align 8
  %188 = load i32, i32* %9, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %187, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = shl i32 %191, 1
  %193 = call i32 @urtw_write8_m(%struct.urtw_softc* %185, i32 %186, i32 %192)
  %194 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %195 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @URTW_RTL8187B_REV_B, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %214

200:                                              ; preds = %183
  %201 = load i32, i32* %9, align 4
  %202 = icmp sle i32 %201, 11
  br i1 %202, label %203, label %208

203:                                              ; preds = %200
  %204 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %205 = call i32 @urtw_8187_write_phy_ofdm(%struct.urtw_softc* %204, i32 135, i32 96)
  %206 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %207 = call i32 @urtw_8187_write_phy_ofdm(%struct.urtw_softc* %206, i32 137, i32 96)
  br label %213

208:                                              ; preds = %200
  %209 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %210 = call i32 @urtw_8187_write_phy_ofdm(%struct.urtw_softc* %209, i32 135, i32 92)
  %211 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %212 = call i32 @urtw_8187_write_phy_ofdm(%struct.urtw_softc* %211, i32 137, i32 92)
  br label %213

213:                                              ; preds = %208, %203
  br label %237

214:                                              ; preds = %183
  %215 = load i32, i32* %9, align 4
  %216 = icmp sle i32 %215, 11
  br i1 %216, label %217, label %222

217:                                              ; preds = %214
  %218 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %219 = call i32 @urtw_8187_write_phy_ofdm(%struct.urtw_softc* %218, i32 135, i32 92)
  %220 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %221 = call i32 @urtw_8187_write_phy_ofdm(%struct.urtw_softc* %220, i32 137, i32 92)
  br label %236

222:                                              ; preds = %214
  %223 = load i32, i32* %9, align 4
  %224 = icmp sle i32 %223, 17
  br i1 %224, label %225, label %230

225:                                              ; preds = %222
  %226 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %227 = call i32 @urtw_8187_write_phy_ofdm(%struct.urtw_softc* %226, i32 135, i32 84)
  %228 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %229 = call i32 @urtw_8187_write_phy_ofdm(%struct.urtw_softc* %228, i32 137, i32 84)
  br label %235

230:                                              ; preds = %222
  %231 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %232 = call i32 @urtw_8187_write_phy_ofdm(%struct.urtw_softc* %231, i32 135, i32 80)
  %233 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %234 = call i32 @urtw_8187_write_phy_ofdm(%struct.urtw_softc* %233, i32 137, i32 80)
  br label %235

235:                                              ; preds = %230, %225
  br label %236

236:                                              ; preds = %235, %217
  br label %237

237:                                              ; preds = %236, %213
  %238 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %239 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %238, i32 0, i32 3
  %240 = call i32 @usb_pause_mtx(i32* %239, i32 1)
  br label %241

241:                                              ; preds = %237
  %242 = load i32, i32* %10, align 4
  ret i32 %242
}

declare dso_local i32 @urtw_8187_write_phy_cck(%struct.urtw_softc*, i32, i32) #1

declare dso_local i32 @urtw_write8_m(%struct.urtw_softc*, i32, i32) #1

declare dso_local i32 @usb_pause_mtx(i32*, i32) #1

declare dso_local i32 @urtw_8187_write_phy_ofdm(%struct.urtw_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
