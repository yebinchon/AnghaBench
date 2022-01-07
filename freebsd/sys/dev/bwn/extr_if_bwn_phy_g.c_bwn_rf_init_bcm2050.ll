; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_g.c_bwn_rf_init_bcm2050.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_g.c_bwn_rf_init_bcm2050.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.bwn_phy }
%struct.bwn_phy = type { i64, i32, i32, i32, i64, i32 }

@bwn_rf_init_bcm2050.rcc_table = internal constant [16 x i32] [i32 2, i32 3, i32 1, i32 15, i32 6, i32 7, i32 5, i32 15, i32 10, i32 11, i32 9, i32 15, i32 14, i32 15, i32 13, i32 15], align 16
@BWN_PHY_PGACTL = common dso_local global i32 0, align 4
@BWN_PHYTYPE_B = common dso_local global i64 0, align 8
@BWN_PHY_RFOVER = common dso_local global i32 0, align 4
@BWN_PHY_RFOVERVAL = common dso_local global i32 0, align 4
@BWN_PHY_ANALOGOVER = common dso_local global i32 0, align 4
@BWN_PHY_ANALOGOVERVAL = common dso_local global i32 0, align 4
@BWN_PHY_CRS0 = common dso_local global i32 0, align 4
@BWN_PHY_CLASSCTL = common dso_local global i32 0, align 4
@BWN_PHY_LO_MASK = common dso_local global i32 0, align 4
@BWN_PHY_LO_CTL = common dso_local global i32 0, align 4
@BWN_PHY_SYNCCTL = common dso_local global i32 0, align 4
@BWN_CHANNEL_EXT = common dso_local global i32 0, align 4
@BWN_PHY_LO_LEAKAGE = common dso_local global i32 0, align 4
@BWN_PHY_RADIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bwn_mac*)* @bwn_rf_init_bcm2050 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwn_rf_init_bcm2050(%struct.bwn_mac* %0) #0 {
  %2 = alloca %struct.bwn_mac*, align 8
  %3 = alloca %struct.bwn_phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %2, align 8
  %32 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %33 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %32, i32 0, i32 0
  store %struct.bwn_phy* %33, %struct.bwn_phy** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %26, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %34 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %35 = call i32 @BWN_RF_READ(%struct.bwn_mac* %34, i32 67)
  store i32 %35, i32* %23, align 4
  %36 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %37 = call i32 @BWN_RF_READ(%struct.bwn_mac* %36, i32 81)
  store i32 %37, i32* %24, align 4
  %38 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %39 = call i32 @BWN_RF_READ(%struct.bwn_mac* %38, i32 82)
  store i32 %39, i32* %25, align 4
  %40 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %41 = load i32, i32* @BWN_PHY_PGACTL, align 4
  %42 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %40, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %44 = call i32 @BWN_PHY_CCK(i32 90)
  %45 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %43, i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %47 = call i32 @BWN_PHY_CCK(i32 89)
  %48 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %46, i32 %47)
  store i32 %48, i32* %11, align 4
  %49 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %50 = call i32 @BWN_PHY_CCK(i32 88)
  %51 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %49, i32 %50)
  store i32 %51, i32* %12, align 4
  %52 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %53 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @BWN_PHYTYPE_B, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %1
  %58 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %59 = call i32 @BWN_PHY_CCK(i32 48)
  %60 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %58, i32 %59)
  store i32 %60, i32* %13, align 4
  %61 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %62 = call i32 @BWN_READ_2(%struct.bwn_mac* %61, i32 1004)
  store i32 %62, i32* %26, align 4
  %63 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %64 = call i32 @BWN_PHY_CCK(i32 48)
  %65 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %63, i32 %64, i32 255)
  %66 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %67 = call i32 @BWN_WRITE_2(%struct.bwn_mac* %66, i32 1004, i32 16191)
  br label %150

68:                                               ; preds = %1
  %69 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %70 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %68
  %74 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %75 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = icmp sge i32 %76, 2
  br i1 %77, label %78, label %149

78:                                               ; preds = %73, %68
  %79 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %80 = load i32, i32* @BWN_PHY_RFOVER, align 4
  %81 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %79, i32 %80)
  store i32 %81, i32* %14, align 4
  %82 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %83 = load i32, i32* @BWN_PHY_RFOVERVAL, align 4
  %84 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %82, i32 %83)
  store i32 %84, i32* %15, align 4
  %85 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %86 = load i32, i32* @BWN_PHY_ANALOGOVER, align 4
  %87 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %85, i32 %86)
  store i32 %87, i32* %16, align 4
  %88 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %89 = load i32, i32* @BWN_PHY_ANALOGOVERVAL, align 4
  %90 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %88, i32 %89)
  store i32 %90, i32* %17, align 4
  %91 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %92 = load i32, i32* @BWN_PHY_CRS0, align 4
  %93 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %91, i32 %92)
  store i32 %93, i32* %18, align 4
  %94 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %95 = load i32, i32* @BWN_PHY_CLASSCTL, align 4
  %96 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %94, i32 %95)
  store i32 %96, i32* %19, align 4
  %97 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %98 = load i32, i32* @BWN_PHY_ANALOGOVER, align 4
  %99 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %97, i32 %98, i32 3)
  %100 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %101 = load i32, i32* @BWN_PHY_ANALOGOVERVAL, align 4
  %102 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %100, i32 %101, i32 65532)
  %103 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %104 = load i32, i32* @BWN_PHY_CRS0, align 4
  %105 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %103, i32 %104, i32 32767)
  %106 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %107 = load i32, i32* @BWN_PHY_CLASSCTL, align 4
  %108 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %106, i32 %107, i32 65532)
  %109 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %110 = call i64 @BWN_HAS_LOOPBACK(%struct.bwn_phy* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %135

112:                                              ; preds = %78
  %113 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %114 = load i32, i32* @BWN_PHY_LO_MASK, align 4
  %115 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %113, i32 %114)
  store i32 %115, i32* %20, align 4
  %116 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %117 = load i32, i32* @BWN_PHY_LO_CTL, align 4
  %118 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %116, i32 %117)
  store i32 %118, i32* %21, align 4
  %119 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %120 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = icmp sge i32 %121, 3
  br i1 %122, label %123, label %127

123:                                              ; preds = %112
  %124 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %125 = load i32, i32* @BWN_PHY_LO_MASK, align 4
  %126 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %124, i32 %125, i32 49184)
  br label %131

127:                                              ; preds = %112
  %128 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %129 = load i32, i32* @BWN_PHY_LO_MASK, align 4
  %130 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %128, i32 %129, i32 32800)
  br label %131

131:                                              ; preds = %127, %123
  %132 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %133 = load i32, i32* @BWN_PHY_LO_CTL, align 4
  %134 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %132, i32 %133, i32 0)
  br label %135

135:                                              ; preds = %131, %78
  %136 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %137 = load i32, i32* @BWN_PHY_RFOVERVAL, align 4
  %138 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %139 = load i32, i32* @BWN_PHY_RFOVERVAL, align 4
  %140 = call i32 @BWN_LPD(i32 0, i32 1, i32 1)
  %141 = call i32 @bwn_rf_2050_rfoverval(%struct.bwn_mac* %138, i32 %139, i32 %140)
  %142 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %136, i32 %137, i32 %141)
  %143 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %144 = load i32, i32* @BWN_PHY_RFOVER, align 4
  %145 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %146 = load i32, i32* @BWN_PHY_RFOVER, align 4
  %147 = call i32 @bwn_rf_2050_rfoverval(%struct.bwn_mac* %145, i32 %146, i32 0)
  %148 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %143, i32 %144, i32 %147)
  br label %149

149:                                              ; preds = %135, %73
  br label %150

150:                                              ; preds = %149, %57
  %151 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %152 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %153 = call i32 @BWN_READ_2(%struct.bwn_mac* %152, i32 994)
  %154 = or i32 %153, 32768
  %155 = call i32 @BWN_WRITE_2(%struct.bwn_mac* %151, i32 994, i32 %154)
  %156 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %157 = load i32, i32* @BWN_PHY_SYNCCTL, align 4
  %158 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %156, i32 %157)
  store i32 %158, i32* %22, align 4
  %159 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %160 = load i32, i32* @BWN_PHY_SYNCCTL, align 4
  %161 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %159, i32 %160, i32 65407)
  %162 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %163 = call i32 @BWN_READ_2(%struct.bwn_mac* %162, i32 998)
  store i32 %163, i32* %27, align 4
  %164 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %165 = call i32 @BWN_READ_2(%struct.bwn_mac* %164, i32 1012)
  store i32 %165, i32* %28, align 4
  %166 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %167 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %150
  %171 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %172 = call i32 @BWN_WRITE_2(%struct.bwn_mac* %171, i32 998, i32 290)
  br label %190

173:                                              ; preds = %150
  %174 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %175 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = icmp sge i32 %176, 2
  br i1 %177, label %178, label %182

178:                                              ; preds = %173
  %179 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %180 = call i32 @BWN_PHY_CCK(i32 3)
  %181 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %179, i32 %180, i32 65471, i32 64)
  br label %182

182:                                              ; preds = %178, %173
  %183 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %184 = load i32, i32* @BWN_CHANNEL_EXT, align 4
  %185 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %186 = load i32, i32* @BWN_CHANNEL_EXT, align 4
  %187 = call i32 @BWN_READ_2(%struct.bwn_mac* %185, i32 %186)
  %188 = or i32 %187, 8192
  %189 = call i32 @BWN_WRITE_2(%struct.bwn_mac* %183, i32 %184, i32 %188)
  br label %190

190:                                              ; preds = %182, %170
  %191 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %192 = call i32 @BWN_RF_READ(%struct.bwn_mac* %191, i32 96)
  store i32 %192, i32* %30, align 4
  %193 = load i32, i32* %30, align 4
  %194 = and i32 %193, 30
  %195 = ashr i32 %194, 1
  store i32 %195, i32* %31, align 4
  %196 = load i32, i32* %31, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [16 x i32], [16 x i32]* @bwn_rf_init_bcm2050.rcc_table, i64 0, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = shl i32 %199, 1
  %201 = load i32, i32* %30, align 4
  %202 = and i32 %201, 1
  %203 = or i32 %200, %202
  %204 = or i32 %203, 32
  store i32 %204, i32* %6, align 4
  %205 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %206 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @BWN_PHYTYPE_B, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %210, label %213

210:                                              ; preds = %190
  %211 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %212 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %211, i32 120, i32 38)
  br label %213

213:                                              ; preds = %210, %190
  %214 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %215 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %214, i32 0, i32 4
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %223, label %218

218:                                              ; preds = %213
  %219 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %220 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = icmp sge i32 %221, 2
  br i1 %222, label %223, label %231

223:                                              ; preds = %218, %213
  %224 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %225 = load i32, i32* @BWN_PHY_RFOVERVAL, align 4
  %226 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %227 = load i32, i32* @BWN_PHY_RFOVERVAL, align 4
  %228 = call i32 @BWN_LPD(i32 0, i32 1, i32 1)
  %229 = call i32 @bwn_rf_2050_rfoverval(%struct.bwn_mac* %226, i32 %227, i32 %228)
  %230 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %224, i32 %225, i32 %229)
  br label %231

231:                                              ; preds = %223, %218
  %232 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %233 = load i32, i32* @BWN_PHY_PGACTL, align 4
  %234 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %232, i32 %233, i32 49071)
  %235 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %236 = call i32 @BWN_PHY_CCK(i32 43)
  %237 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %235, i32 %236, i32 5123)
  %238 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %239 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %238, i32 0, i32 4
  %240 = load i64, i64* %239, align 8
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %247, label %242

242:                                              ; preds = %231
  %243 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %244 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 8
  %246 = icmp sge i32 %245, 2
  br i1 %246, label %247, label %255

247:                                              ; preds = %242, %231
  %248 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %249 = load i32, i32* @BWN_PHY_RFOVERVAL, align 4
  %250 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %251 = load i32, i32* @BWN_PHY_RFOVERVAL, align 4
  %252 = call i32 @BWN_LPD(i32 0, i32 0, i32 1)
  %253 = call i32 @bwn_rf_2050_rfoverval(%struct.bwn_mac* %250, i32 %251, i32 %252)
  %254 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %248, i32 %249, i32 %253)
  br label %255

255:                                              ; preds = %247, %242
  %256 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %257 = load i32, i32* @BWN_PHY_PGACTL, align 4
  %258 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %256, i32 %257, i32 49056)
  %259 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %260 = call i32 @BWN_RF_SET(%struct.bwn_mac* %259, i32 81, i32 4)
  %261 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %262 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %261, i32 0, i32 3
  %263 = load i32, i32* %262, align 8
  %264 = icmp eq i32 %263, 8
  br i1 %264, label %265, label %268

265:                                              ; preds = %255
  %266 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %267 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %266, i32 67, i32 31)
  br label %273

268:                                              ; preds = %255
  %269 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %270 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %269, i32 82, i32 0)
  %271 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %272 = call i32 @BWN_RF_SETMASK(%struct.bwn_mac* %271, i32 67, i32 65520, i32 9)
  br label %273

273:                                              ; preds = %268, %265
  %274 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %275 = call i32 @BWN_PHY_CCK(i32 88)
  %276 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %274, i32 %275, i32 0)
  store i32 0, i32* %7, align 4
  br label %277

277:                                              ; preds = %385, %273
  %278 = load i32, i32* %7, align 4
  %279 = icmp slt i32 %278, 16
  br i1 %279, label %280, label %388

280:                                              ; preds = %277
  %281 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %282 = call i32 @BWN_PHY_CCK(i32 90)
  %283 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %281, i32 %282, i32 1152)
  %284 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %285 = call i32 @BWN_PHY_CCK(i32 89)
  %286 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %284, i32 %285, i32 51216)
  %287 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %288 = call i32 @BWN_PHY_CCK(i32 88)
  %289 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %287, i32 %288, i32 13)
  %290 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %291 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %290, i32 0, i32 4
  %292 = load i64, i64* %291, align 8
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %299, label %294

294:                                              ; preds = %280
  %295 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %296 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 8
  %298 = icmp sge i32 %297, 2
  br i1 %298, label %299, label %307

299:                                              ; preds = %294, %280
  %300 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %301 = load i32, i32* @BWN_PHY_RFOVERVAL, align 4
  %302 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %303 = load i32, i32* @BWN_PHY_RFOVERVAL, align 4
  %304 = call i32 @BWN_LPD(i32 1, i32 0, i32 1)
  %305 = call i32 @bwn_rf_2050_rfoverval(%struct.bwn_mac* %302, i32 %303, i32 %304)
  %306 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %300, i32 %301, i32 %305)
  br label %307

307:                                              ; preds = %299, %294
  %308 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %309 = load i32, i32* @BWN_PHY_PGACTL, align 4
  %310 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %308, i32 %309, i32 44976)
  %311 = call i32 @DELAY(i32 10)
  %312 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %313 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %312, i32 0, i32 4
  %314 = load i64, i64* %313, align 8
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %321, label %316

316:                                              ; preds = %307
  %317 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %318 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 8
  %320 = icmp sge i32 %319, 2
  br i1 %320, label %321, label %329

321:                                              ; preds = %316, %307
  %322 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %323 = load i32, i32* @BWN_PHY_RFOVERVAL, align 4
  %324 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %325 = load i32, i32* @BWN_PHY_RFOVERVAL, align 4
  %326 = call i32 @BWN_LPD(i32 1, i32 0, i32 1)
  %327 = call i32 @bwn_rf_2050_rfoverval(%struct.bwn_mac* %324, i32 %325, i32 %326)
  %328 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %322, i32 %323, i32 %327)
  br label %329

329:                                              ; preds = %321, %316
  %330 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %331 = load i32, i32* @BWN_PHY_PGACTL, align 4
  %332 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %330, i32 %331, i32 61360)
  %333 = call i32 @DELAY(i32 10)
  %334 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %335 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %334, i32 0, i32 4
  %336 = load i64, i64* %335, align 8
  %337 = icmp ne i64 %336, 0
  br i1 %337, label %343, label %338

338:                                              ; preds = %329
  %339 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %340 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 8
  %342 = icmp sge i32 %341, 2
  br i1 %342, label %343, label %351

343:                                              ; preds = %338, %329
  %344 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %345 = load i32, i32* @BWN_PHY_RFOVERVAL, align 4
  %346 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %347 = load i32, i32* @BWN_PHY_RFOVERVAL, align 4
  %348 = call i32 @BWN_LPD(i32 1, i32 0, i32 0)
  %349 = call i32 @bwn_rf_2050_rfoverval(%struct.bwn_mac* %346, i32 %347, i32 %348)
  %350 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %344, i32 %345, i32 %349)
  br label %351

351:                                              ; preds = %343, %338
  %352 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %353 = load i32, i32* @BWN_PHY_PGACTL, align 4
  %354 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %352, i32 %353, i32 65520)
  %355 = call i32 @DELAY(i32 20)
  %356 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %357 = load i32, i32* @BWN_PHY_LO_LEAKAGE, align 4
  %358 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %356, i32 %357)
  %359 = load i32, i32* %4, align 4
  %360 = add nsw i32 %359, %358
  store i32 %360, i32* %4, align 4
  %361 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %362 = call i32 @BWN_PHY_CCK(i32 88)
  %363 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %361, i32 %362, i32 0)
  %364 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %365 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %364, i32 0, i32 4
  %366 = load i64, i64* %365, align 8
  %367 = icmp ne i64 %366, 0
  br i1 %367, label %373, label %368

368:                                              ; preds = %351
  %369 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %370 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %369, i32 0, i32 1
  %371 = load i32, i32* %370, align 8
  %372 = icmp sge i32 %371, 2
  br i1 %372, label %373, label %381

373:                                              ; preds = %368, %351
  %374 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %375 = load i32, i32* @BWN_PHY_RFOVERVAL, align 4
  %376 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %377 = load i32, i32* @BWN_PHY_RFOVERVAL, align 4
  %378 = call i32 @BWN_LPD(i32 1, i32 0, i32 1)
  %379 = call i32 @bwn_rf_2050_rfoverval(%struct.bwn_mac* %376, i32 %377, i32 %378)
  %380 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %374, i32 %375, i32 %379)
  br label %381

381:                                              ; preds = %373, %368
  %382 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %383 = load i32, i32* @BWN_PHY_PGACTL, align 4
  %384 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %382, i32 %383, i32 44976)
  br label %385

385:                                              ; preds = %381
  %386 = load i32, i32* %7, align 4
  %387 = add nsw i32 %386, 1
  store i32 %387, i32* %7, align 4
  br label %277

388:                                              ; preds = %277
  %389 = call i32 @DELAY(i32 10)
  %390 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %391 = call i32 @BWN_PHY_CCK(i32 88)
  %392 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %390, i32 %391, i32 0)
  %393 = load i32, i32* %4, align 4
  %394 = add nsw i32 %393, 1
  store i32 %394, i32* %4, align 4
  %395 = load i32, i32* %4, align 4
  %396 = ashr i32 %395, 9
  store i32 %396, i32* %4, align 4
  store i32 0, i32* %7, align 4
  br label %397

397:                                              ; preds = %530, %388
  %398 = load i32, i32* %7, align 4
  %399 = icmp slt i32 %398, 16
  br i1 %399, label %400, label %533

400:                                              ; preds = %397
  %401 = load i32, i32* %7, align 4
  %402 = call i32 @BWN_BITREV4(i32 %401)
  %403 = shl i32 %402, 1
  %404 = or i32 %403, 32
  store i32 %404, i32* %29, align 4
  %405 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %406 = load i32, i32* %29, align 4
  %407 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %405, i32 120, i32 %406)
  %408 = call i32 @DELAY(i32 10)
  store i32 0, i32* %8, align 4
  br label %409

409:                                              ; preds = %517, %400
  %410 = load i32, i32* %8, align 4
  %411 = icmp slt i32 %410, 16
  br i1 %411, label %412, label %520

412:                                              ; preds = %409
  %413 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %414 = call i32 @BWN_PHY_CCK(i32 90)
  %415 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %413, i32 %414, i32 3456)
  %416 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %417 = call i32 @BWN_PHY_CCK(i32 89)
  %418 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %416, i32 %417, i32 51216)
  %419 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %420 = call i32 @BWN_PHY_CCK(i32 88)
  %421 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %419, i32 %420, i32 13)
  %422 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %423 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %422, i32 0, i32 4
  %424 = load i64, i64* %423, align 8
  %425 = icmp ne i64 %424, 0
  br i1 %425, label %431, label %426

426:                                              ; preds = %412
  %427 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %428 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %427, i32 0, i32 1
  %429 = load i32, i32* %428, align 8
  %430 = icmp sge i32 %429, 2
  br i1 %430, label %431, label %439

431:                                              ; preds = %426, %412
  %432 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %433 = load i32, i32* @BWN_PHY_RFOVERVAL, align 4
  %434 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %435 = load i32, i32* @BWN_PHY_RFOVERVAL, align 4
  %436 = call i32 @BWN_LPD(i32 1, i32 0, i32 1)
  %437 = call i32 @bwn_rf_2050_rfoverval(%struct.bwn_mac* %434, i32 %435, i32 %436)
  %438 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %432, i32 %433, i32 %437)
  br label %439

439:                                              ; preds = %431, %426
  %440 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %441 = load i32, i32* @BWN_PHY_PGACTL, align 4
  %442 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %440, i32 %441, i32 44976)
  %443 = call i32 @DELAY(i32 10)
  %444 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %445 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %444, i32 0, i32 4
  %446 = load i64, i64* %445, align 8
  %447 = icmp ne i64 %446, 0
  br i1 %447, label %453, label %448

448:                                              ; preds = %439
  %449 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %450 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %449, i32 0, i32 1
  %451 = load i32, i32* %450, align 8
  %452 = icmp sge i32 %451, 2
  br i1 %452, label %453, label %461

453:                                              ; preds = %448, %439
  %454 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %455 = load i32, i32* @BWN_PHY_RFOVERVAL, align 4
  %456 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %457 = load i32, i32* @BWN_PHY_RFOVERVAL, align 4
  %458 = call i32 @BWN_LPD(i32 1, i32 0, i32 1)
  %459 = call i32 @bwn_rf_2050_rfoverval(%struct.bwn_mac* %456, i32 %457, i32 %458)
  %460 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %454, i32 %455, i32 %459)
  br label %461

461:                                              ; preds = %453, %448
  %462 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %463 = load i32, i32* @BWN_PHY_PGACTL, align 4
  %464 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %462, i32 %463, i32 61360)
  %465 = call i32 @DELAY(i32 10)
  %466 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %467 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %466, i32 0, i32 4
  %468 = load i64, i64* %467, align 8
  %469 = icmp ne i64 %468, 0
  br i1 %469, label %475, label %470

470:                                              ; preds = %461
  %471 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %472 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %471, i32 0, i32 1
  %473 = load i32, i32* %472, align 8
  %474 = icmp sge i32 %473, 2
  br i1 %474, label %475, label %483

475:                                              ; preds = %470, %461
  %476 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %477 = load i32, i32* @BWN_PHY_RFOVERVAL, align 4
  %478 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %479 = load i32, i32* @BWN_PHY_RFOVERVAL, align 4
  %480 = call i32 @BWN_LPD(i32 1, i32 0, i32 0)
  %481 = call i32 @bwn_rf_2050_rfoverval(%struct.bwn_mac* %478, i32 %479, i32 %480)
  %482 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %476, i32 %477, i32 %481)
  br label %483

483:                                              ; preds = %475, %470
  %484 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %485 = load i32, i32* @BWN_PHY_PGACTL, align 4
  %486 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %484, i32 %485, i32 65520)
  %487 = call i32 @DELAY(i32 10)
  %488 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %489 = load i32, i32* @BWN_PHY_LO_LEAKAGE, align 4
  %490 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %488, i32 %489)
  %491 = load i32, i32* %5, align 4
  %492 = add nsw i32 %491, %490
  store i32 %492, i32* %5, align 4
  %493 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %494 = call i32 @BWN_PHY_CCK(i32 88)
  %495 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %493, i32 %494, i32 0)
  %496 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %497 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %496, i32 0, i32 4
  %498 = load i64, i64* %497, align 8
  %499 = icmp ne i64 %498, 0
  br i1 %499, label %505, label %500

500:                                              ; preds = %483
  %501 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %502 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %501, i32 0, i32 1
  %503 = load i32, i32* %502, align 8
  %504 = icmp sge i32 %503, 2
  br i1 %504, label %505, label %513

505:                                              ; preds = %500, %483
  %506 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %507 = load i32, i32* @BWN_PHY_RFOVERVAL, align 4
  %508 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %509 = load i32, i32* @BWN_PHY_RFOVERVAL, align 4
  %510 = call i32 @BWN_LPD(i32 1, i32 0, i32 1)
  %511 = call i32 @bwn_rf_2050_rfoverval(%struct.bwn_mac* %508, i32 %509, i32 %510)
  %512 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %506, i32 %507, i32 %511)
  br label %513

513:                                              ; preds = %505, %500
  %514 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %515 = load i32, i32* @BWN_PHY_PGACTL, align 4
  %516 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %514, i32 %515, i32 44976)
  br label %517

517:                                              ; preds = %513
  %518 = load i32, i32* %8, align 4
  %519 = add nsw i32 %518, 1
  store i32 %519, i32* %8, align 4
  br label %409

520:                                              ; preds = %409
  %521 = load i32, i32* %5, align 4
  %522 = add nsw i32 %521, 1
  store i32 %522, i32* %5, align 4
  %523 = load i32, i32* %5, align 4
  %524 = ashr i32 %523, 8
  store i32 %524, i32* %5, align 4
  %525 = load i32, i32* %4, align 4
  %526 = load i32, i32* %5, align 4
  %527 = icmp slt i32 %525, %526
  br i1 %527, label %528, label %529

528:                                              ; preds = %520
  br label %533

529:                                              ; preds = %520
  br label %530

530:                                              ; preds = %529
  %531 = load i32, i32* %7, align 4
  %532 = add nsw i32 %531, 1
  store i32 %532, i32* %7, align 4
  br label %397

533:                                              ; preds = %528, %397
  %534 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %535 = load i32, i32* @BWN_PHY_PGACTL, align 4
  %536 = load i32, i32* %9, align 4
  %537 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %534, i32 %535, i32 %536)
  %538 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %539 = load i32, i32* %24, align 4
  %540 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %538, i32 81, i32 %539)
  %541 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %542 = load i32, i32* %25, align 4
  %543 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %541, i32 82, i32 %542)
  %544 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %545 = load i32, i32* %23, align 4
  %546 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %544, i32 67, i32 %545)
  %547 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %548 = call i32 @BWN_PHY_CCK(i32 90)
  %549 = load i32, i32* %10, align 4
  %550 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %547, i32 %548, i32 %549)
  %551 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %552 = call i32 @BWN_PHY_CCK(i32 89)
  %553 = load i32, i32* %11, align 4
  %554 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %551, i32 %552, i32 %553)
  %555 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %556 = call i32 @BWN_PHY_CCK(i32 88)
  %557 = load i32, i32* %12, align 4
  %558 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %555, i32 %556, i32 %557)
  %559 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %560 = load i32, i32* %27, align 4
  %561 = call i32 @BWN_WRITE_2(%struct.bwn_mac* %559, i32 998, i32 %560)
  %562 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %563 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %562, i32 0, i32 2
  %564 = load i32, i32* %563, align 4
  %565 = icmp ne i32 %564, 0
  br i1 %565, label %566, label %570

566:                                              ; preds = %533
  %567 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %568 = load i32, i32* %28, align 4
  %569 = call i32 @BWN_WRITE_2(%struct.bwn_mac* %567, i32 1012, i32 %568)
  br label %570

570:                                              ; preds = %566, %533
  %571 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %572 = load i32, i32* @BWN_PHY_SYNCCTL, align 4
  %573 = load i32, i32* %22, align 4
  %574 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %571, i32 %572, i32 %573)
  %575 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %576 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %577 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %576, i32 0, i32 5
  %578 = load i32, i32* %577, align 8
  %579 = call i32 @bwn_spu_workaround(%struct.bwn_mac* %575, i32 %578)
  %580 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %581 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %580, i32 0, i32 0
  %582 = load i64, i64* %581, align 8
  %583 = load i64, i64* @BWN_PHYTYPE_B, align 8
  %584 = icmp eq i64 %582, %583
  br i1 %584, label %585, label %593

585:                                              ; preds = %570
  %586 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %587 = call i32 @BWN_PHY_CCK(i32 48)
  %588 = load i32, i32* %13, align 4
  %589 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %586, i32 %587, i32 %588)
  %590 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %591 = load i32, i32* %26, align 4
  %592 = call i32 @BWN_WRITE_2(%struct.bwn_mac* %590, i32 1004, i32 %591)
  br label %644

593:                                              ; preds = %570
  %594 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %595 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %594, i32 0, i32 4
  %596 = load i64, i64* %595, align 8
  %597 = icmp ne i64 %596, 0
  br i1 %597, label %598, label %643

598:                                              ; preds = %593
  %599 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %600 = load i32, i32* @BWN_PHY_RADIO, align 4
  %601 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %602 = load i32, i32* @BWN_PHY_RADIO, align 4
  %603 = call i32 @BWN_READ_2(%struct.bwn_mac* %601, i32 %602)
  %604 = and i32 %603, 32767
  %605 = call i32 @BWN_WRITE_2(%struct.bwn_mac* %599, i32 %600, i32 %604)
  %606 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %607 = load i32, i32* @BWN_PHY_RFOVER, align 4
  %608 = load i32, i32* %14, align 4
  %609 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %606, i32 %607, i32 %608)
  %610 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %611 = load i32, i32* @BWN_PHY_RFOVERVAL, align 4
  %612 = load i32, i32* %15, align 4
  %613 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %610, i32 %611, i32 %612)
  %614 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %615 = load i32, i32* @BWN_PHY_ANALOGOVER, align 4
  %616 = load i32, i32* %16, align 4
  %617 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %614, i32 %615, i32 %616)
  %618 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %619 = load i32, i32* @BWN_PHY_ANALOGOVERVAL, align 4
  %620 = load i32, i32* %17, align 4
  %621 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %618, i32 %619, i32 %620)
  %622 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %623 = load i32, i32* @BWN_PHY_CRS0, align 4
  %624 = load i32, i32* %18, align 4
  %625 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %622, i32 %623, i32 %624)
  %626 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %627 = load i32, i32* @BWN_PHY_CLASSCTL, align 4
  %628 = load i32, i32* %19, align 4
  %629 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %626, i32 %627, i32 %628)
  %630 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %631 = call i64 @BWN_HAS_LOOPBACK(%struct.bwn_phy* %630)
  %632 = icmp ne i64 %631, 0
  br i1 %632, label %633, label %642

633:                                              ; preds = %598
  %634 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %635 = load i32, i32* @BWN_PHY_LO_MASK, align 4
  %636 = load i32, i32* %20, align 4
  %637 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %634, i32 %635, i32 %636)
  %638 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %639 = load i32, i32* @BWN_PHY_LO_CTL, align 4
  %640 = load i32, i32* %21, align 4
  %641 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %638, i32 %639, i32 %640)
  br label %642

642:                                              ; preds = %633, %598
  br label %643

643:                                              ; preds = %642, %593
  br label %644

644:                                              ; preds = %643, %585
  %645 = load i32, i32* %7, align 4
  %646 = icmp sgt i32 %645, 15
  br i1 %646, label %647, label %649

647:                                              ; preds = %644
  %648 = load i32, i32* %29, align 4
  br label %651

649:                                              ; preds = %644
  %650 = load i32, i32* %6, align 4
  br label %651

651:                                              ; preds = %649, %647
  %652 = phi i32 [ %648, %647 ], [ %650, %649 ]
  ret i32 %652
}

declare dso_local i32 @BWN_RF_READ(%struct.bwn_mac*, i32) #1

declare dso_local i32 @BWN_PHY_READ(%struct.bwn_mac*, i32) #1

declare dso_local i32 @BWN_PHY_CCK(i32) #1

declare dso_local i32 @BWN_READ_2(%struct.bwn_mac*, i32) #1

declare dso_local i32 @BWN_PHY_WRITE(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @BWN_WRITE_2(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @BWN_PHY_SET(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @BWN_PHY_MASK(%struct.bwn_mac*, i32, i32) #1

declare dso_local i64 @BWN_HAS_LOOPBACK(%struct.bwn_phy*) #1

declare dso_local i32 @bwn_rf_2050_rfoverval(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @BWN_LPD(i32, i32, i32) #1

declare dso_local i32 @BWN_PHY_SETMASK(%struct.bwn_mac*, i32, i32, i32) #1

declare dso_local i32 @BWN_RF_WRITE(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @BWN_RF_SET(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @BWN_RF_SETMASK(%struct.bwn_mac*, i32, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @BWN_BITREV4(i32) #1

declare dso_local i32 @bwn_spu_workaround(%struct.bwn_mac*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
