; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_ipa_internal_tssi_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_ipa_internal_tssi_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.bwn_phy }
%struct.bwn_phy = type { i32 }

@BWN_BAND_2G = common dso_local global i64 0, align 8
@B2056_SYN_RESERVED_ADDR31 = common dso_local global i32 0, align 4
@B2056_SYN_RESERVED_ADDR30 = common dso_local global i32 0, align 4
@B2056_SYN_GPIO_MASTER1 = common dso_local global i32 0, align 4
@B2056_TX1 = common dso_local global i32 0, align 4
@B2056_TX0 = common dso_local global i32 0, align 4
@B2056_TX_IQCAL_VCM_HG = common dso_local global i32 0, align 4
@B2056_TX_IQCAL_IDAC = common dso_local global i32 0, align 4
@B2056_TX_TSSI_VCM = common dso_local global i32 0, align 4
@B2056_TX_TX_AMP_DET = common dso_local global i32 0, align 4
@B2056_TX_TSSI_MISC1 = common dso_local global i32 0, align 4
@B2056_TX_TSSI_MISC2 = common dso_local global i32 0, align 4
@B2056_TX_TSSI_MISC3 = common dso_local global i32 0, align 4
@B2056_TX_TX_SSI_MASTER = common dso_local global i32 0, align 4
@B2056_TX_TSSIA = common dso_local global i32 0, align 4
@B2056_TX_TSSIG = common dso_local global i32 0, align 4
@B2056_TX_TX_SSI_MUX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*)* @bwn_nphy_ipa_internal_tssi_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_nphy_ipa_internal_tssi_setup(%struct.bwn_mac* %0) #0 {
  %2 = alloca %struct.bwn_mac*, align 8
  %3 = alloca %struct.bwn_phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %2, align 8
  %6 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %7 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %6, i32 0, i32 0
  store %struct.bwn_phy* %7, %struct.bwn_phy** %3, align 8
  %8 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %9 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp sge i32 %10, 19
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %251

13:                                               ; preds = %1
  %14 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %15 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp sge i32 %16, 7
  br i1 %17, label %18, label %114

18:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %110, %18
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %20, 2
  br i1 %21, label %22, label %113

22:                                               ; preds = %19
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 400, i32 368
  store i32 %26, i32* %5, align 4
  %27 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %28 = call i64 @bwn_current_band(%struct.bwn_mac* %27)
  %29 = load i64, i64* @BWN_BAND_2G, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %65

31:                                               ; preds = %22
  %32 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 5
  %35 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %32, i32 %34, i32 5)
  %36 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 9
  %39 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %36, i32 %38, i32 14)
  %40 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %41 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 5
  br i1 %43, label %44, label %49

44:                                               ; preds = %31
  %45 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 10
  %48 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %45, i32 %47, i32 0)
  br label %49

49:                                               ; preds = %44, %31
  %50 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %51 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 7
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 11
  %58 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %55, i32 %57, i32 1)
  br label %64

59:                                               ; preds = %49
  %60 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 11
  %63 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %60, i32 %62, i32 49)
  br label %64

64:                                               ; preds = %59, %54
  br label %93

65:                                               ; preds = %22
  %66 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 5
  %69 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %66, i32 %68, i32 9)
  %70 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 9
  %73 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %70, i32 %72, i32 12)
  %74 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 11
  %77 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %74, i32 %76, i32 0)
  %78 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %79 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 5
  br i1 %81, label %82, label %87

82:                                               ; preds = %65
  %83 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, 10
  %86 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %83, i32 %85, i32 1)
  br label %92

87:                                               ; preds = %65
  %88 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %89 = load i32, i32* %5, align 4
  %90 = add nsw i32 %89, 10
  %91 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %88, i32 %90, i32 49)
  br label %92

92:                                               ; preds = %87, %82
  br label %93

93:                                               ; preds = %92, %64
  %94 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %95 = load i32, i32* %5, align 4
  %96 = add nsw i32 %95, 6
  %97 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %94, i32 %96, i32 0)
  %98 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %99 = load i32, i32* %5, align 4
  %100 = add nsw i32 %99, 7
  %101 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %98, i32 %100, i32 0)
  %102 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %103 = load i32, i32* %5, align 4
  %104 = add nsw i32 %103, 8
  %105 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %102, i32 %104, i32 3)
  %106 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %107 = load i32, i32* %5, align 4
  %108 = add nsw i32 %107, 12
  %109 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %106, i32 %108, i32 0)
  br label %110

110:                                              ; preds = %93
  %111 = load i32, i32* %4, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %4, align 4
  br label %19

113:                                              ; preds = %19
  br label %250

114:                                              ; preds = %13
  %115 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %116 = call i64 @bwn_current_band(%struct.bwn_mac* %115)
  %117 = load i64, i64* @BWN_BAND_2G, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %114
  %120 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %121 = load i32, i32* @B2056_SYN_RESERVED_ADDR31, align 4
  %122 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %120, i32 %121, i32 296)
  br label %127

123:                                              ; preds = %114
  %124 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %125 = load i32, i32* @B2056_SYN_RESERVED_ADDR31, align 4
  %126 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %124, i32 %125, i32 128)
  br label %127

127:                                              ; preds = %123, %119
  %128 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %129 = load i32, i32* @B2056_SYN_RESERVED_ADDR30, align 4
  %130 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %128, i32 %129, i32 0)
  %131 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %132 = load i32, i32* @B2056_SYN_GPIO_MASTER1, align 4
  %133 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %131, i32 %132, i32 41)
  store i32 0, i32* %4, align 4
  br label %134

134:                                              ; preds = %246, %127
  %135 = load i32, i32* %4, align 4
  %136 = icmp slt i32 %135, 2
  br i1 %136, label %137, label %249

137:                                              ; preds = %134
  %138 = load i32, i32* %4, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %137
  %141 = load i32, i32* @B2056_TX1, align 4
  br label %144

142:                                              ; preds = %137
  %143 = load i32, i32* @B2056_TX0, align 4
  br label %144

144:                                              ; preds = %142, %140
  %145 = phi i32 [ %141, %140 ], [ %143, %142 ]
  store i32 %145, i32* %5, align 4
  %146 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %147 = load i32, i32* %5, align 4
  %148 = load i32, i32* @B2056_TX_IQCAL_VCM_HG, align 4
  %149 = or i32 %147, %148
  %150 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %146, i32 %149, i32 0)
  %151 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %152 = load i32, i32* %5, align 4
  %153 = load i32, i32* @B2056_TX_IQCAL_IDAC, align 4
  %154 = or i32 %152, %153
  %155 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %151, i32 %154, i32 0)
  %156 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %157 = load i32, i32* %5, align 4
  %158 = load i32, i32* @B2056_TX_TSSI_VCM, align 4
  %159 = or i32 %157, %158
  %160 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %156, i32 %159, i32 3)
  %161 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %162 = load i32, i32* %5, align 4
  %163 = load i32, i32* @B2056_TX_TX_AMP_DET, align 4
  %164 = or i32 %162, %163
  %165 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %161, i32 %164, i32 0)
  %166 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %167 = load i32, i32* %5, align 4
  %168 = load i32, i32* @B2056_TX_TSSI_MISC1, align 4
  %169 = or i32 %167, %168
  %170 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %166, i32 %169, i32 8)
  %171 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %172 = load i32, i32* %5, align 4
  %173 = load i32, i32* @B2056_TX_TSSI_MISC2, align 4
  %174 = or i32 %172, %173
  %175 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %171, i32 %174, i32 0)
  %176 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %177 = load i32, i32* %5, align 4
  %178 = load i32, i32* @B2056_TX_TSSI_MISC3, align 4
  %179 = or i32 %177, %178
  %180 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %176, i32 %179, i32 0)
  %181 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %182 = call i64 @bwn_current_band(%struct.bwn_mac* %181)
  %183 = load i64, i64* @BWN_BAND_2G, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %224

185:                                              ; preds = %144
  %186 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %187 = load i32, i32* %5, align 4
  %188 = load i32, i32* @B2056_TX_TX_SSI_MASTER, align 4
  %189 = or i32 %187, %188
  %190 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %186, i32 %189, i32 5)
  %191 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %192 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = icmp ne i32 %193, 5
  br i1 %194, label %195, label %201

195:                                              ; preds = %185
  %196 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %197 = load i32, i32* %5, align 4
  %198 = load i32, i32* @B2056_TX_TSSIA, align 4
  %199 = or i32 %197, %198
  %200 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %196, i32 %199, i32 0)
  br label %201

201:                                              ; preds = %195, %185
  %202 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %203 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = icmp sge i32 %204, 5
  br i1 %205, label %206, label %212

206:                                              ; preds = %201
  %207 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %208 = load i32, i32* %5, align 4
  %209 = load i32, i32* @B2056_TX_TSSIG, align 4
  %210 = or i32 %208, %209
  %211 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %207, i32 %210, i32 49)
  br label %218

212:                                              ; preds = %201
  %213 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %214 = load i32, i32* %5, align 4
  %215 = load i32, i32* @B2056_TX_TSSIG, align 4
  %216 = or i32 %214, %215
  %217 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %213, i32 %216, i32 17)
  br label %218

218:                                              ; preds = %212, %206
  %219 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %220 = load i32, i32* %5, align 4
  %221 = load i32, i32* @B2056_TX_TX_SSI_MUX, align 4
  %222 = or i32 %220, %221
  %223 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %219, i32 %222, i32 14)
  br label %245

224:                                              ; preds = %144
  %225 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %226 = load i32, i32* %5, align 4
  %227 = load i32, i32* @B2056_TX_TX_SSI_MASTER, align 4
  %228 = or i32 %226, %227
  %229 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %225, i32 %228, i32 9)
  %230 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %231 = load i32, i32* %5, align 4
  %232 = load i32, i32* @B2056_TX_TSSIA, align 4
  %233 = or i32 %231, %232
  %234 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %230, i32 %233, i32 49)
  %235 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %236 = load i32, i32* %5, align 4
  %237 = load i32, i32* @B2056_TX_TSSIG, align 4
  %238 = or i32 %236, %237
  %239 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %235, i32 %238, i32 0)
  %240 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %241 = load i32, i32* %5, align 4
  %242 = load i32, i32* @B2056_TX_TX_SSI_MUX, align 4
  %243 = or i32 %241, %242
  %244 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %240, i32 %243, i32 12)
  br label %245

245:                                              ; preds = %224, %218
  br label %246

246:                                              ; preds = %245
  %247 = load i32, i32* %4, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %4, align 4
  br label %134

249:                                              ; preds = %134
  br label %250

250:                                              ; preds = %249, %113
  br label %251

251:                                              ; preds = %250, %12
  ret void
}

declare dso_local i64 @bwn_current_band(%struct.bwn_mac*) #1

declare dso_local i32 @BWN_RF_WRITE(%struct.bwn_mac*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
