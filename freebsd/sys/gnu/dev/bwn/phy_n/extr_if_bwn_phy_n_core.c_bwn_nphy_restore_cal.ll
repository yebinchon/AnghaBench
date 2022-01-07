; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_restore_cal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_restore_cal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.bwn_phy }
%struct.bwn_phy = type { i32, %struct.bwn_phy_n* }
%struct.bwn_phy_n = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.bwn_phy_n_iq_comp, i64*, %struct.bwn_phy_n_iq_comp, i64*, i64*, i64* }
%struct.bwn_phy_n_iq_comp = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@BWN_BAND_2G = common dso_local global i64 0, align 8
@R2057_TX0_LOFT_FINE_I = common dso_local global i32 0, align 4
@R2057_TX0_LOFT_FINE_Q = common dso_local global i32 0, align 4
@R2057_TX0_LOFT_COARSE_I = common dso_local global i32 0, align 4
@R2057_TX0_LOFT_COARSE_Q = common dso_local global i32 0, align 4
@R2057_TX1_LOFT_FINE_I = common dso_local global i32 0, align 4
@R2057_TX1_LOFT_FINE_Q = common dso_local global i32 0, align 4
@R2057_TX1_LOFT_COARSE_I = common dso_local global i32 0, align 4
@R2057_TX1_LOFT_COARSE_Q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*)* @bwn_nphy_restore_cal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_nphy_restore_cal(%struct.bwn_mac* %0) #0 {
  %2 = alloca %struct.bwn_mac*, align 8
  %3 = alloca %struct.bwn_phy*, align 8
  %4 = alloca %struct.bwn_phy_n*, align 8
  %5 = alloca [4 x i64], align 16
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.bwn_phy_n_iq_comp*, align 8
  store %struct.bwn_mac* %0, %struct.bwn_mac** %2, align 8
  %11 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %12 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %11, i32 0, i32 0
  store %struct.bwn_phy* %12, %struct.bwn_phy** %3, align 8
  %13 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %14 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %14, i32 0, i32 1
  %16 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %15, align 8
  store %struct.bwn_phy_n* %16, %struct.bwn_phy_n** %4, align 8
  store i64* null, i64** %6, align 8
  store i64* null, i64** %7, align 8
  store i64* null, i64** %9, align 8
  store %struct.bwn_phy_n_iq_comp* null, %struct.bwn_phy_n_iq_comp** %10, align 8
  %17 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %18 = call i64 @bwn_current_band(%struct.bwn_mac* %17)
  %19 = load i64, i64* @BWN_BAND_2G, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %38

21:                                               ; preds = %1
  %22 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %4, align 8
  %23 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  br label %261

28:                                               ; preds = %21
  %29 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %4, align 8
  %30 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 5
  %32 = load i64*, i64** %31, align 8
  store i64* %32, i64** %7, align 8
  %33 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %4, align 8
  %34 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 5
  %36 = load i64*, i64** %35, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 5
  store i64* %37, i64** %6, align 8
  br label %55

38:                                               ; preds = %1
  %39 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %4, align 8
  %40 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  br label %261

45:                                               ; preds = %38
  %46 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %4, align 8
  %47 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 4
  %49 = load i64*, i64** %48, align 8
  store i64* %49, i64** %7, align 8
  %50 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %4, align 8
  %51 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 4
  %53 = load i64*, i64** %52, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 5
  store i64* %54, i64** %6, align 8
  br label %55

55:                                               ; preds = %45, %28
  %56 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %57 = call i32 @BWN_NTAB16(i32 15, i32 80)
  %58 = load i64*, i64** %7, align 8
  %59 = call i32 @bwn_ntab_write_bulk(%struct.bwn_mac* %56, i32 %57, i32 4, i64* %58)
  store i32 0, i32* %8, align 4
  br label %60

60:                                               ; preds = %83, %55
  %61 = load i32, i32* %8, align 4
  %62 = icmp slt i32 %61, 4
  br i1 %62, label %63, label %86

63:                                               ; preds = %60
  %64 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %65 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp sge i32 %67, 3
  br i1 %68, label %69, label %78

69:                                               ; preds = %63
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = load i64*, i64** %7, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  store i64 %73, i64* %77, align 8
  br label %82

78:                                               ; preds = %63
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 %80
  store i64 0, i64* %81, align 8
  br label %82

82:                                               ; preds = %78, %69
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %8, align 4
  br label %60

86:                                               ; preds = %60
  %87 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %88 = call i32 @BWN_NTAB16(i32 15, i32 88)
  %89 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0
  %90 = call i32 @bwn_ntab_write_bulk(%struct.bwn_mac* %87, i32 %88, i32 4, i64* %89)
  %91 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %92 = call i32 @BWN_NTAB16(i32 15, i32 85)
  %93 = load i64*, i64** %6, align 8
  %94 = call i32 @bwn_ntab_write_bulk(%struct.bwn_mac* %91, i32 %92, i32 2, i64* %93)
  %95 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %96 = call i32 @BWN_NTAB16(i32 15, i32 93)
  %97 = load i64*, i64** %6, align 8
  %98 = call i32 @bwn_ntab_write_bulk(%struct.bwn_mac* %95, i32 %96, i32 2, i64* %97)
  %99 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %100 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp slt i32 %102, 2
  br i1 %103, label %104, label %107

104:                                              ; preds = %86
  %105 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %106 = call i32 @bwn_nphy_tx_iq_workaround(%struct.bwn_mac* %105)
  br label %107

107:                                              ; preds = %104, %86
  %108 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %109 = call i64 @bwn_current_band(%struct.bwn_mac* %108)
  %110 = load i64, i64* @BWN_BAND_2G, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %120

112:                                              ; preds = %107
  %113 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %4, align 8
  %114 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 3
  %116 = load i64*, i64** %115, align 8
  store i64* %116, i64** %9, align 8
  %117 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %4, align 8
  %118 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 2
  store %struct.bwn_phy_n_iq_comp* %119, %struct.bwn_phy_n_iq_comp** %10, align 8
  br label %128

120:                                              ; preds = %107
  %121 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %4, align 8
  %122 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 1
  %124 = load i64*, i64** %123, align 8
  store i64* %124, i64** %9, align 8
  %125 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %4, align 8
  %126 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  store %struct.bwn_phy_n_iq_comp* %127, %struct.bwn_phy_n_iq_comp** %10, align 8
  br label %128

128:                                              ; preds = %120, %112
  %129 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %130 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp sge i32 %131, 19
  br i1 %132, label %133, label %134

133:                                              ; preds = %128
  br label %257

134:                                              ; preds = %128
  %135 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %136 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp sge i32 %137, 7
  br i1 %138, label %139, label %188

139:                                              ; preds = %134
  %140 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %141 = load i32, i32* @R2057_TX0_LOFT_FINE_I, align 4
  %142 = load i64*, i64** %9, align 8
  %143 = getelementptr inbounds i64, i64* %142, i64 0
  %144 = load i64, i64* %143, align 8
  %145 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %140, i32 %141, i64 %144)
  %146 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %147 = load i32, i32* @R2057_TX0_LOFT_FINE_Q, align 4
  %148 = load i64*, i64** %9, align 8
  %149 = getelementptr inbounds i64, i64* %148, i64 1
  %150 = load i64, i64* %149, align 8
  %151 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %146, i32 %147, i64 %150)
  %152 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %153 = load i32, i32* @R2057_TX0_LOFT_COARSE_I, align 4
  %154 = load i64*, i64** %9, align 8
  %155 = getelementptr inbounds i64, i64* %154, i64 4
  %156 = load i64, i64* %155, align 8
  %157 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %152, i32 %153, i64 %156)
  %158 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %159 = load i32, i32* @R2057_TX0_LOFT_COARSE_Q, align 4
  %160 = load i64*, i64** %9, align 8
  %161 = getelementptr inbounds i64, i64* %160, i64 5
  %162 = load i64, i64* %161, align 8
  %163 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %158, i32 %159, i64 %162)
  %164 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %165 = load i32, i32* @R2057_TX1_LOFT_FINE_I, align 4
  %166 = load i64*, i64** %9, align 8
  %167 = getelementptr inbounds i64, i64* %166, i64 2
  %168 = load i64, i64* %167, align 8
  %169 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %164, i32 %165, i64 %168)
  %170 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %171 = load i32, i32* @R2057_TX1_LOFT_FINE_Q, align 4
  %172 = load i64*, i64** %9, align 8
  %173 = getelementptr inbounds i64, i64* %172, i64 3
  %174 = load i64, i64* %173, align 8
  %175 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %170, i32 %171, i64 %174)
  %176 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %177 = load i32, i32* @R2057_TX1_LOFT_COARSE_I, align 4
  %178 = load i64*, i64** %9, align 8
  %179 = getelementptr inbounds i64, i64* %178, i64 6
  %180 = load i64, i64* %179, align 8
  %181 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %176, i32 %177, i64 %180)
  %182 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %183 = load i32, i32* @R2057_TX1_LOFT_COARSE_Q, align 4
  %184 = load i64*, i64** %9, align 8
  %185 = getelementptr inbounds i64, i64* %184, i64 7
  %186 = load i64, i64* %185, align 8
  %187 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %182, i32 %183, i64 %186)
  br label %256

188:                                              ; preds = %134
  %189 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %190 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = icmp sge i32 %191, 3
  br i1 %192, label %193, label %234

193:                                              ; preds = %188
  %194 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %195 = load i64*, i64** %9, align 8
  %196 = getelementptr inbounds i64, i64* %195, i64 0
  %197 = load i64, i64* %196, align 8
  %198 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %194, i32 8225, i64 %197)
  %199 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %200 = load i64*, i64** %9, align 8
  %201 = getelementptr inbounds i64, i64* %200, i64 1
  %202 = load i64, i64* %201, align 8
  %203 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %199, i32 8226, i64 %202)
  %204 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %205 = load i64*, i64** %9, align 8
  %206 = getelementptr inbounds i64, i64* %205, i64 2
  %207 = load i64, i64* %206, align 8
  %208 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %204, i32 12321, i64 %207)
  %209 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %210 = load i64*, i64** %9, align 8
  %211 = getelementptr inbounds i64, i64* %210, i64 3
  %212 = load i64, i64* %211, align 8
  %213 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %209, i32 12322, i64 %212)
  %214 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %215 = load i64*, i64** %9, align 8
  %216 = getelementptr inbounds i64, i64* %215, i64 4
  %217 = load i64, i64* %216, align 8
  %218 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %214, i32 8227, i64 %217)
  %219 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %220 = load i64*, i64** %9, align 8
  %221 = getelementptr inbounds i64, i64* %220, i64 5
  %222 = load i64, i64* %221, align 8
  %223 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %219, i32 8228, i64 %222)
  %224 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %225 = load i64*, i64** %9, align 8
  %226 = getelementptr inbounds i64, i64* %225, i64 6
  %227 = load i64, i64* %226, align 8
  %228 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %224, i32 12323, i64 %227)
  %229 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %230 = load i64*, i64** %9, align 8
  %231 = getelementptr inbounds i64, i64* %230, i64 7
  %232 = load i64, i64* %231, align 8
  %233 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %229, i32 12324, i64 %232)
  br label %255

234:                                              ; preds = %188
  %235 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %236 = load i64*, i64** %9, align 8
  %237 = getelementptr inbounds i64, i64* %236, i64 0
  %238 = load i64, i64* %237, align 8
  %239 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %235, i32 139, i64 %238)
  %240 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %241 = load i64*, i64** %9, align 8
  %242 = getelementptr inbounds i64, i64* %241, i64 1
  %243 = load i64, i64* %242, align 8
  %244 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %240, i32 186, i64 %243)
  %245 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %246 = load i64*, i64** %9, align 8
  %247 = getelementptr inbounds i64, i64* %246, i64 2
  %248 = load i64, i64* %247, align 8
  %249 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %245, i32 141, i64 %248)
  %250 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %251 = load i64*, i64** %9, align 8
  %252 = getelementptr inbounds i64, i64* %251, i64 3
  %253 = load i64, i64* %252, align 8
  %254 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %250, i32 188, i64 %253)
  br label %255

255:                                              ; preds = %234, %193
  br label %256

256:                                              ; preds = %255, %139
  br label %257

257:                                              ; preds = %256, %133
  %258 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %259 = load %struct.bwn_phy_n_iq_comp*, %struct.bwn_phy_n_iq_comp** %10, align 8
  %260 = call i32 @bwn_nphy_rx_iq_coeffs(%struct.bwn_mac* %258, i32 1, %struct.bwn_phy_n_iq_comp* %259)
  br label %261

261:                                              ; preds = %257, %44, %27
  ret void
}

declare dso_local i64 @bwn_current_band(%struct.bwn_mac*) #1

declare dso_local i32 @bwn_ntab_write_bulk(%struct.bwn_mac*, i32, i32, i64*) #1

declare dso_local i32 @BWN_NTAB16(i32, i32) #1

declare dso_local i32 @bwn_nphy_tx_iq_workaround(%struct.bwn_mac*) #1

declare dso_local i32 @BWN_RF_WRITE(%struct.bwn_mac*, i32, i64) #1

declare dso_local i32 @bwn_nphy_rx_iq_coeffs(%struct.bwn_mac*, i32, %struct.bwn_phy_n_iq_comp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
