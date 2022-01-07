; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_poll_rssi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_poll_rssi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@BWN_NPHY_AFECTL_C1 = common dso_local global i32 0, align 4
@BWN_NPHY_AFECTL_C2 = common dso_local global i32 0, align 4
@BWN_NPHY_RFCTL_LUT_TRSW_UP1 = common dso_local global i32 0, align 4
@BWN_NPHY_RFCTL_LUT_TRSW_UP2 = common dso_local global i32 0, align 4
@BWN_NPHY_AFECTL_OVER1 = common dso_local global i32 0, align 4
@BWN_NPHY_AFECTL_OVER = common dso_local global i32 0, align 4
@BWN_NPHY_TXF_40CO_B1S0 = common dso_local global i32 0, align 4
@BWN_NPHY_TXF_40CO_B32S1 = common dso_local global i32 0, align 4
@BWN_NPHY_RFCTL_CMD = common dso_local global i32 0, align 4
@BWN_NPHY_RFCTL_OVER = common dso_local global i32 0, align 4
@BWN_NPHY_RFCTL_RSSIO1 = common dso_local global i32 0, align 4
@BWN_NPHY_RFCTL_RSSIO2 = common dso_local global i32 0, align 4
@BWN_NPHY_GPIO_SEL = common dso_local global i32 0, align 4
@BWN_NPHY_GPIO_LOOUT = common dso_local global i32 0, align 4
@BWN_NPHY_GPIO_HIOUT = common dso_local global i32 0, align 4
@BWN_NPHY_RSSI1 = common dso_local global i32 0, align 4
@BWN_NPHY_RSSI2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bwn_mac*, i32, i32*, i32)* @bwn_nphy_poll_rssi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwn_nphy_poll_rssi(%struct.bwn_mac* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.bwn_mac*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [9 x i32], align 16
  %12 = alloca [2 x i32], align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %14 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp sge i32 %16, 3
  br i1 %17, label %18, label %52

18:                                               ; preds = %4
  %19 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %20 = load i32, i32* @BWN_NPHY_AFECTL_C1, align 4
  %21 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %19, i32 %20)
  %22 = getelementptr inbounds [9 x i32], [9 x i32]* %11, i64 0, i64 0
  store i32 %21, i32* %22, align 16
  %23 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %24 = load i32, i32* @BWN_NPHY_AFECTL_C2, align 4
  %25 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %23, i32 %24)
  %26 = getelementptr inbounds [9 x i32], [9 x i32]* %11, i64 0, i64 1
  store i32 %25, i32* %26, align 4
  %27 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %28 = load i32, i32* @BWN_NPHY_RFCTL_LUT_TRSW_UP1, align 4
  %29 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %27, i32 %28)
  %30 = getelementptr inbounds [9 x i32], [9 x i32]* %11, i64 0, i64 2
  store i32 %29, i32* %30, align 8
  %31 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %32 = load i32, i32* @BWN_NPHY_RFCTL_LUT_TRSW_UP2, align 4
  %33 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %31, i32 %32)
  %34 = getelementptr inbounds [9 x i32], [9 x i32]* %11, i64 0, i64 3
  store i32 %33, i32* %34, align 4
  %35 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %36 = load i32, i32* @BWN_NPHY_AFECTL_OVER1, align 4
  %37 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %35, i32 %36)
  %38 = getelementptr inbounds [9 x i32], [9 x i32]* %11, i64 0, i64 4
  store i32 %37, i32* %38, align 16
  %39 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %40 = load i32, i32* @BWN_NPHY_AFECTL_OVER, align 4
  %41 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %39, i32 %40)
  %42 = getelementptr inbounds [9 x i32], [9 x i32]* %11, i64 0, i64 5
  store i32 %41, i32* %42, align 4
  %43 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %44 = load i32, i32* @BWN_NPHY_TXF_40CO_B1S0, align 4
  %45 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %43, i32 %44)
  %46 = getelementptr inbounds [9 x i32], [9 x i32]* %11, i64 0, i64 6
  store i32 %45, i32* %46, align 8
  %47 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %48 = load i32, i32* @BWN_NPHY_TXF_40CO_B32S1, align 4
  %49 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %47, i32 %48)
  %50 = getelementptr inbounds [9 x i32], [9 x i32]* %11, i64 0, i64 7
  store i32 %49, i32* %50, align 4
  %51 = getelementptr inbounds [9 x i32], [9 x i32]* %11, i64 0, i64 8
  store i32 0, i32* %51, align 16
  br label %83

52:                                               ; preds = %4
  %53 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %54 = load i32, i32* @BWN_NPHY_AFECTL_C1, align 4
  %55 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %53, i32 %54)
  %56 = getelementptr inbounds [9 x i32], [9 x i32]* %11, i64 0, i64 0
  store i32 %55, i32* %56, align 16
  %57 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %58 = load i32, i32* @BWN_NPHY_AFECTL_C2, align 4
  %59 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %57, i32 %58)
  %60 = getelementptr inbounds [9 x i32], [9 x i32]* %11, i64 0, i64 1
  store i32 %59, i32* %60, align 4
  %61 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %62 = load i32, i32* @BWN_NPHY_AFECTL_OVER, align 4
  %63 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %61, i32 %62)
  %64 = getelementptr inbounds [9 x i32], [9 x i32]* %11, i64 0, i64 2
  store i32 %63, i32* %64, align 8
  %65 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %66 = load i32, i32* @BWN_NPHY_RFCTL_CMD, align 4
  %67 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %65, i32 %66)
  %68 = getelementptr inbounds [9 x i32], [9 x i32]* %11, i64 0, i64 3
  store i32 %67, i32* %68, align 4
  %69 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %70 = load i32, i32* @BWN_NPHY_RFCTL_OVER, align 4
  %71 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %69, i32 %70)
  %72 = getelementptr inbounds [9 x i32], [9 x i32]* %11, i64 0, i64 4
  store i32 %71, i32* %72, align 16
  %73 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %74 = load i32, i32* @BWN_NPHY_RFCTL_RSSIO1, align 4
  %75 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %73, i32 %74)
  %76 = getelementptr inbounds [9 x i32], [9 x i32]* %11, i64 0, i64 5
  store i32 %75, i32* %76, align 4
  %77 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %78 = load i32, i32* @BWN_NPHY_RFCTL_RSSIO2, align 4
  %79 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %77, i32 %78)
  %80 = getelementptr inbounds [9 x i32], [9 x i32]* %11, i64 0, i64 6
  store i32 %79, i32* %80, align 8
  %81 = getelementptr inbounds [9 x i32], [9 x i32]* %11, i64 0, i64 7
  store i32 0, i32* %81, align 4
  %82 = getelementptr inbounds [9 x i32], [9 x i32]* %11, i64 0, i64 8
  store i32 0, i32* %82, align 16
  br label %83

83:                                               ; preds = %52, %18
  %84 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @bwn_nphy_rssi_select(%struct.bwn_mac* %84, i32 5, i32 %85)
  %87 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %88 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp slt i32 %90, 2
  br i1 %91, label %92, label %100

92:                                               ; preds = %83
  %93 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %94 = load i32, i32* @BWN_NPHY_GPIO_SEL, align 4
  %95 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %93, i32 %94)
  %96 = getelementptr inbounds [9 x i32], [9 x i32]* %11, i64 0, i64 8
  store i32 %95, i32* %96, align 16
  %97 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %98 = load i32, i32* @BWN_NPHY_GPIO_SEL, align 4
  %99 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %97, i32 %98, i32 5)
  br label %100

100:                                              ; preds = %92, %83
  store i32 0, i32* %9, align 4
  br label %101

101:                                              ; preds = %109, %100
  %102 = load i32, i32* %9, align 4
  %103 = icmp slt i32 %102, 4
  br i1 %103, label %104, label %112

104:                                              ; preds = %101
  %105 = load i32*, i32** %7, align 8
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  store i32 0, i32* %108, align 4
  br label %109

109:                                              ; preds = %104
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %9, align 4
  br label %101

112:                                              ; preds = %101
  store i32 0, i32* %9, align 4
  br label %113

113:                                              ; preds = %180, %112
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* %8, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %183

117:                                              ; preds = %113
  %118 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %119 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp slt i32 %121, 2
  br i1 %122, label %123, label %132

123:                                              ; preds = %117
  %124 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %125 = load i32, i32* @BWN_NPHY_GPIO_LOOUT, align 4
  %126 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %124, i32 %125)
  %127 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32 %126, i32* %127, align 4
  %128 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %129 = load i32, i32* @BWN_NPHY_GPIO_HIOUT, align 4
  %130 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %128, i32 %129)
  %131 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  store i32 %130, i32* %131, align 4
  br label %141

132:                                              ; preds = %117
  %133 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %134 = load i32, i32* @BWN_NPHY_RSSI1, align 4
  %135 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %133, i32 %134)
  %136 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32 %135, i32* %136, align 4
  %137 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %138 = load i32, i32* @BWN_NPHY_RSSI2, align 4
  %139 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %137, i32 %138)
  %140 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  store i32 %139, i32* %140, align 4
  br label %141

141:                                              ; preds = %132, %123
  %142 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %143 = load i32, i32* %142, align 4
  %144 = and i32 %143, 63
  %145 = shl i32 %144, 2
  %146 = ashr i32 %145, 2
  %147 = load i32*, i32** %7, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 0
  %149 = load i32, i32* %148, align 4
  %150 = add nsw i32 %149, %146
  store i32 %150, i32* %148, align 4
  %151 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %152 = load i32, i32* %151, align 4
  %153 = ashr i32 %152, 8
  %154 = and i32 %153, 63
  %155 = shl i32 %154, 2
  %156 = ashr i32 %155, 2
  %157 = load i32*, i32** %7, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 1
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 %159, %156
  store i32 %160, i32* %158, align 4
  %161 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %162 = load i32, i32* %161, align 4
  %163 = and i32 %162, 63
  %164 = shl i32 %163, 2
  %165 = ashr i32 %164, 2
  %166 = load i32*, i32** %7, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 2
  %168 = load i32, i32* %167, align 4
  %169 = add nsw i32 %168, %165
  store i32 %169, i32* %167, align 4
  %170 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %171 = load i32, i32* %170, align 4
  %172 = ashr i32 %171, 8
  %173 = and i32 %172, 63
  %174 = shl i32 %173, 2
  %175 = ashr i32 %174, 2
  %176 = load i32*, i32** %7, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 3
  %178 = load i32, i32* %177, align 4
  %179 = add nsw i32 %178, %175
  store i32 %179, i32* %177, align 4
  br label %180

180:                                              ; preds = %141
  %181 = load i32, i32* %9, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %9, align 4
  br label %113

183:                                              ; preds = %113
  %184 = load i32*, i32** %7, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 0
  %186 = load i32, i32* %185, align 4
  %187 = and i32 %186, 255
  %188 = shl i32 %187, 24
  %189 = load i32*, i32** %7, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 1
  %191 = load i32, i32* %190, align 4
  %192 = and i32 %191, 255
  %193 = shl i32 %192, 16
  %194 = or i32 %188, %193
  %195 = load i32*, i32** %7, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 2
  %197 = load i32, i32* %196, align 4
  %198 = and i32 %197, 255
  %199 = shl i32 %198, 8
  %200 = or i32 %194, %199
  %201 = load i32*, i32** %7, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 3
  %203 = load i32, i32* %202, align 4
  %204 = and i32 %203, 255
  %205 = or i32 %200, %204
  store i32 %205, i32* %10, align 4
  %206 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %207 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = icmp slt i32 %209, 2
  br i1 %210, label %211, label %217

211:                                              ; preds = %183
  %212 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %213 = load i32, i32* @BWN_NPHY_GPIO_SEL, align 4
  %214 = getelementptr inbounds [9 x i32], [9 x i32]* %11, i64 0, i64 8
  %215 = load i32, i32* %214, align 16
  %216 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %212, i32 %213, i32 %215)
  br label %217

217:                                              ; preds = %211, %183
  %218 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %219 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = icmp sge i32 %221, 3
  br i1 %222, label %223, label %264

223:                                              ; preds = %217
  %224 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %225 = load i32, i32* @BWN_NPHY_AFECTL_C1, align 4
  %226 = getelementptr inbounds [9 x i32], [9 x i32]* %11, i64 0, i64 0
  %227 = load i32, i32* %226, align 16
  %228 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %224, i32 %225, i32 %227)
  %229 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %230 = load i32, i32* @BWN_NPHY_AFECTL_C2, align 4
  %231 = getelementptr inbounds [9 x i32], [9 x i32]* %11, i64 0, i64 1
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %229, i32 %230, i32 %232)
  %234 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %235 = load i32, i32* @BWN_NPHY_RFCTL_LUT_TRSW_UP1, align 4
  %236 = getelementptr inbounds [9 x i32], [9 x i32]* %11, i64 0, i64 2
  %237 = load i32, i32* %236, align 8
  %238 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %234, i32 %235, i32 %237)
  %239 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %240 = load i32, i32* @BWN_NPHY_RFCTL_LUT_TRSW_UP2, align 4
  %241 = getelementptr inbounds [9 x i32], [9 x i32]* %11, i64 0, i64 3
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %239, i32 %240, i32 %242)
  %244 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %245 = load i32, i32* @BWN_NPHY_AFECTL_OVER1, align 4
  %246 = getelementptr inbounds [9 x i32], [9 x i32]* %11, i64 0, i64 4
  %247 = load i32, i32* %246, align 16
  %248 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %244, i32 %245, i32 %247)
  %249 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %250 = load i32, i32* @BWN_NPHY_AFECTL_OVER, align 4
  %251 = getelementptr inbounds [9 x i32], [9 x i32]* %11, i64 0, i64 5
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %249, i32 %250, i32 %252)
  %254 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %255 = load i32, i32* @BWN_NPHY_TXF_40CO_B1S0, align 4
  %256 = getelementptr inbounds [9 x i32], [9 x i32]* %11, i64 0, i64 6
  %257 = load i32, i32* %256, align 8
  %258 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %254, i32 %255, i32 %257)
  %259 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %260 = load i32, i32* @BWN_NPHY_TXF_40CO_B32S1, align 4
  %261 = getelementptr inbounds [9 x i32], [9 x i32]* %11, i64 0, i64 7
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %259, i32 %260, i32 %262)
  br label %300

264:                                              ; preds = %217
  %265 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %266 = load i32, i32* @BWN_NPHY_AFECTL_C1, align 4
  %267 = getelementptr inbounds [9 x i32], [9 x i32]* %11, i64 0, i64 0
  %268 = load i32, i32* %267, align 16
  %269 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %265, i32 %266, i32 %268)
  %270 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %271 = load i32, i32* @BWN_NPHY_AFECTL_C2, align 4
  %272 = getelementptr inbounds [9 x i32], [9 x i32]* %11, i64 0, i64 1
  %273 = load i32, i32* %272, align 4
  %274 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %270, i32 %271, i32 %273)
  %275 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %276 = load i32, i32* @BWN_NPHY_AFECTL_OVER, align 4
  %277 = getelementptr inbounds [9 x i32], [9 x i32]* %11, i64 0, i64 2
  %278 = load i32, i32* %277, align 8
  %279 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %275, i32 %276, i32 %278)
  %280 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %281 = load i32, i32* @BWN_NPHY_RFCTL_CMD, align 4
  %282 = getelementptr inbounds [9 x i32], [9 x i32]* %11, i64 0, i64 3
  %283 = load i32, i32* %282, align 4
  %284 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %280, i32 %281, i32 %283)
  %285 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %286 = load i32, i32* @BWN_NPHY_RFCTL_OVER, align 4
  %287 = getelementptr inbounds [9 x i32], [9 x i32]* %11, i64 0, i64 4
  %288 = load i32, i32* %287, align 16
  %289 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %285, i32 %286, i32 %288)
  %290 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %291 = load i32, i32* @BWN_NPHY_RFCTL_RSSIO1, align 4
  %292 = getelementptr inbounds [9 x i32], [9 x i32]* %11, i64 0, i64 5
  %293 = load i32, i32* %292, align 4
  %294 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %290, i32 %291, i32 %293)
  %295 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %296 = load i32, i32* @BWN_NPHY_RFCTL_RSSIO2, align 4
  %297 = getelementptr inbounds [9 x i32], [9 x i32]* %11, i64 0, i64 6
  %298 = load i32, i32* %297, align 8
  %299 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %295, i32 %296, i32 %298)
  br label %300

300:                                              ; preds = %264, %223
  %301 = load i32, i32* %10, align 4
  ret i32 %301
}

declare dso_local i32 @BWN_PHY_READ(%struct.bwn_mac*, i32) #1

declare dso_local i32 @bwn_nphy_rssi_select(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @BWN_PHY_WRITE(%struct.bwn_mac*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
