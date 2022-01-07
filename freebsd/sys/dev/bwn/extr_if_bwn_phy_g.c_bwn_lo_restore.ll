; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_g.c_bwn_lo_restore.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_g.c_bwn_lo_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.bwn_phy }
%struct.bwn_phy = type { i32, i64, i32, i32, %struct.bwn_phy_g }
%struct.bwn_phy_g = type { i32 }
%struct.bwn_lo_g_value = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@BWN_PHY_PGACTL = common dso_local global i32 0, align 4
@BWN_PHY_RFOVERVAL = common dso_local global i32 0, align 4
@BWN_PHYTYPE_G = common dso_local global i64 0, align 8
@BWN_PHY_SYNCCTL = common dso_local global i32 0, align 4
@BWN_PHY_DACCTL = common dso_local global i32 0, align 4
@BWN_PHYTYPE_B = common dso_local global i64 0, align 8
@BWN_PHY_ANALOGOVER = common dso_local global i32 0, align 4
@BWN_PHY_ANALOGOVERVAL = common dso_local global i32 0, align 4
@BWN_PHY_CLASSCTL = common dso_local global i32 0, align 4
@BWN_PHY_RFOVER = common dso_local global i32 0, align 4
@BWN_PHY_CRS0 = common dso_local global i32 0, align 4
@BWN_PHY_LO_MASK = common dso_local global i32 0, align 4
@BWN_PHY_HPWR_TSSICTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*, %struct.bwn_lo_g_value*)* @bwn_lo_restore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_lo_restore(%struct.bwn_mac* %0, %struct.bwn_lo_g_value* %1) #0 {
  %3 = alloca %struct.bwn_mac*, align 8
  %4 = alloca %struct.bwn_lo_g_value*, align 8
  %5 = alloca %struct.bwn_phy*, align 8
  %6 = alloca %struct.bwn_phy_g*, align 8
  %7 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %3, align 8
  store %struct.bwn_lo_g_value* %1, %struct.bwn_lo_g_value** %4, align 8
  %8 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %9 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %8, i32 0, i32 0
  store %struct.bwn_phy* %9, %struct.bwn_phy** %5, align 8
  %10 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %11 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %10, i32 0, i32 4
  store %struct.bwn_phy_g* %11, %struct.bwn_phy_g** %6, align 8
  %12 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %13 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp sge i32 %14, 2
  br i1 %15, label %16, label %41

16:                                               ; preds = %2
  %17 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %18 = load i32, i32* @BWN_PHY_PGACTL, align 4
  %19 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %17, i32 %18, i32 58112)
  %20 = load %struct.bwn_phy_g*, %struct.bwn_phy_g** %6, align 8
  %21 = getelementptr inbounds %struct.bwn_phy_g, %struct.bwn_phy_g* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = shl i32 %22, 8
  store i32 %23, i32* %7, align 4
  %24 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %25 = load i32, i32* @BWN_PHY_RFOVERVAL, align 4
  %26 = load i32, i32* %7, align 4
  %27 = or i32 %26, 160
  %28 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %24, i32 %25, i32 %27)
  %29 = call i32 @DELAY(i32 5)
  %30 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %31 = load i32, i32* @BWN_PHY_RFOVERVAL, align 4
  %32 = load i32, i32* %7, align 4
  %33 = or i32 %32, 162
  %34 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %30, i32 %31, i32 %33)
  %35 = call i32 @DELAY(i32 2)
  %36 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %37 = load i32, i32* @BWN_PHY_RFOVERVAL, align 4
  %38 = load i32, i32* %7, align 4
  %39 = or i32 %38, 163
  %40 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %36, i32 %37, i32 %39)
  br label %50

41:                                               ; preds = %2
  %42 = load %struct.bwn_phy_g*, %struct.bwn_phy_g** %6, align 8
  %43 = getelementptr inbounds %struct.bwn_phy_g, %struct.bwn_phy_g* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, 61344
  store i32 %45, i32* %7, align 4
  %46 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %47 = load i32, i32* @BWN_PHY_PGACTL, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %46, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %41, %16
  %51 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %52 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @BWN_PHYTYPE_G, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %83

56:                                               ; preds = %50
  %57 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %58 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp sge i32 %59, 3
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %63 = call i32 @BWN_PHY_CCK(i32 46)
  %64 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %62, i32 %63, i32 49272)
  br label %69

65:                                               ; preds = %56
  %66 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %67 = call i32 @BWN_PHY_CCK(i32 46)
  %68 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %66, i32 %67, i32 32888)
  br label %69

69:                                               ; preds = %65, %61
  %70 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %71 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp sge i32 %72, 2
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %76 = call i32 @BWN_PHY_CCK(i32 47)
  %77 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %75, i32 %76, i32 514)
  br label %82

78:                                               ; preds = %69
  %79 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %80 = call i32 @BWN_PHY_CCK(i32 47)
  %81 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %79, i32 %80, i32 257)
  br label %82

82:                                               ; preds = %78, %74
  br label %83

83:                                               ; preds = %82, %50
  %84 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %85 = load %struct.bwn_lo_g_value*, %struct.bwn_lo_g_value** %4, align 8
  %86 = getelementptr inbounds %struct.bwn_lo_g_value, %struct.bwn_lo_g_value* %85, i32 0, i32 23
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @BWN_WRITE_2(%struct.bwn_mac* %84, i32 1012, i32 %87)
  %89 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %90 = load i32, i32* @BWN_PHY_PGACTL, align 4
  %91 = load %struct.bwn_lo_g_value*, %struct.bwn_lo_g_value** %4, align 8
  %92 = getelementptr inbounds %struct.bwn_lo_g_value, %struct.bwn_lo_g_value* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %89, i32 %90, i32 %93)
  %95 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %96 = call i32 @BWN_PHY_CCK(i32 42)
  %97 = load %struct.bwn_lo_g_value*, %struct.bwn_lo_g_value** %4, align 8
  %98 = getelementptr inbounds %struct.bwn_lo_g_value, %struct.bwn_lo_g_value* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %95, i32 %96, i32 %99)
  %101 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %102 = load i32, i32* @BWN_PHY_SYNCCTL, align 4
  %103 = load %struct.bwn_lo_g_value*, %struct.bwn_lo_g_value** %4, align 8
  %104 = getelementptr inbounds %struct.bwn_lo_g_value, %struct.bwn_lo_g_value* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %101, i32 %102, i32 %105)
  %107 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %108 = load i32, i32* @BWN_PHY_DACCTL, align 4
  %109 = load %struct.bwn_lo_g_value*, %struct.bwn_lo_g_value** %4, align 8
  %110 = getelementptr inbounds %struct.bwn_lo_g_value, %struct.bwn_lo_g_value* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %107, i32 %108, i32 %111)
  %113 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %114 = load %struct.bwn_lo_g_value*, %struct.bwn_lo_g_value** %4, align 8
  %115 = getelementptr inbounds %struct.bwn_lo_g_value, %struct.bwn_lo_g_value* %114, i32 0, i32 22
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %113, i32 67, i32 %116)
  %118 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %119 = load %struct.bwn_lo_g_value*, %struct.bwn_lo_g_value** %4, align 8
  %120 = getelementptr inbounds %struct.bwn_lo_g_value, %struct.bwn_lo_g_value* %119, i32 0, i32 21
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %118, i32 122, i32 %121)
  %123 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %124 = call i32 @BWN_HAS_TXMAG(%struct.bwn_phy* %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %133, label %126

126:                                              ; preds = %83
  %127 = load %struct.bwn_lo_g_value*, %struct.bwn_lo_g_value** %4, align 8
  %128 = getelementptr inbounds %struct.bwn_lo_g_value, %struct.bwn_lo_g_value* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %7, align 4
  %130 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %131 = load i32, i32* %7, align 4
  %132 = call i32 @BWN_RF_SETMASK(%struct.bwn_mac* %130, i32 82, i32 65295, i32 %131)
  br label %133

133:                                              ; preds = %126, %83
  %134 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %135 = load %struct.bwn_lo_g_value*, %struct.bwn_lo_g_value** %4, align 8
  %136 = getelementptr inbounds %struct.bwn_lo_g_value, %struct.bwn_lo_g_value* %135, i32 0, i32 20
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @BWN_WRITE_2(%struct.bwn_mac* %134, i32 994, i32 %137)
  %139 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %140 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @BWN_PHYTYPE_B, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %167

144:                                              ; preds = %133
  %145 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %146 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = icmp eq i32 %147, 8272
  br i1 %148, label %149, label %167

149:                                              ; preds = %144
  %150 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %151 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = icmp sle i32 %152, 5
  br i1 %153, label %154, label %167

154:                                              ; preds = %149
  %155 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %156 = call i32 @BWN_PHY_CCK(i32 48)
  %157 = load %struct.bwn_lo_g_value*, %struct.bwn_lo_g_value** %4, align 8
  %158 = getelementptr inbounds %struct.bwn_lo_g_value, %struct.bwn_lo_g_value* %157, i32 0, i32 5
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %155, i32 %156, i32 %159)
  %161 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %162 = call i32 @BWN_PHY_CCK(i32 6)
  %163 = load %struct.bwn_lo_g_value*, %struct.bwn_lo_g_value** %4, align 8
  %164 = getelementptr inbounds %struct.bwn_lo_g_value, %struct.bwn_lo_g_value* %163, i32 0, i32 6
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %161, i32 %162, i32 %165)
  br label %167

167:                                              ; preds = %154, %149, %144, %133
  %168 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %169 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = icmp sge i32 %170, 2
  br i1 %171, label %172, label %215

172:                                              ; preds = %167
  %173 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %174 = load i32, i32* @BWN_PHY_ANALOGOVER, align 4
  %175 = load %struct.bwn_lo_g_value*, %struct.bwn_lo_g_value** %4, align 8
  %176 = getelementptr inbounds %struct.bwn_lo_g_value, %struct.bwn_lo_g_value* %175, i32 0, i32 7
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %173, i32 %174, i32 %177)
  %179 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %180 = load i32, i32* @BWN_PHY_ANALOGOVERVAL, align 4
  %181 = load %struct.bwn_lo_g_value*, %struct.bwn_lo_g_value** %4, align 8
  %182 = getelementptr inbounds %struct.bwn_lo_g_value, %struct.bwn_lo_g_value* %181, i32 0, i32 8
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %179, i32 %180, i32 %183)
  %185 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %186 = load i32, i32* @BWN_PHY_CLASSCTL, align 4
  %187 = load %struct.bwn_lo_g_value*, %struct.bwn_lo_g_value** %4, align 8
  %188 = getelementptr inbounds %struct.bwn_lo_g_value, %struct.bwn_lo_g_value* %187, i32 0, i32 9
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %185, i32 %186, i32 %189)
  %191 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %192 = load i32, i32* @BWN_PHY_RFOVER, align 4
  %193 = load %struct.bwn_lo_g_value*, %struct.bwn_lo_g_value** %4, align 8
  %194 = getelementptr inbounds %struct.bwn_lo_g_value, %struct.bwn_lo_g_value* %193, i32 0, i32 10
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %191, i32 %192, i32 %195)
  %197 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %198 = load i32, i32* @BWN_PHY_RFOVERVAL, align 4
  %199 = load %struct.bwn_lo_g_value*, %struct.bwn_lo_g_value** %4, align 8
  %200 = getelementptr inbounds %struct.bwn_lo_g_value, %struct.bwn_lo_g_value* %199, i32 0, i32 11
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %197, i32 %198, i32 %201)
  %203 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %204 = call i32 @BWN_PHY_CCK(i32 62)
  %205 = load %struct.bwn_lo_g_value*, %struct.bwn_lo_g_value** %4, align 8
  %206 = getelementptr inbounds %struct.bwn_lo_g_value, %struct.bwn_lo_g_value* %205, i32 0, i32 12
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %203, i32 %204, i32 %207)
  %209 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %210 = load i32, i32* @BWN_PHY_CRS0, align 4
  %211 = load %struct.bwn_lo_g_value*, %struct.bwn_lo_g_value** %4, align 8
  %212 = getelementptr inbounds %struct.bwn_lo_g_value, %struct.bwn_lo_g_value* %211, i32 0, i32 13
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %209, i32 %210, i32 %213)
  br label %215

215:                                              ; preds = %172, %167
  %216 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %217 = call i64 @bwn_has_hwpctl(%struct.bwn_mac* %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %252

219:                                              ; preds = %215
  %220 = load %struct.bwn_lo_g_value*, %struct.bwn_lo_g_value** %4, align 8
  %221 = getelementptr inbounds %struct.bwn_lo_g_value, %struct.bwn_lo_g_value* %220, i32 0, i32 14
  %222 = load i32, i32* %221, align 4
  %223 = and i32 %222, 49151
  store i32 %223, i32* %7, align 4
  %224 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %225 = load i32, i32* @BWN_PHY_LO_MASK, align 4
  %226 = load i32, i32* %7, align 4
  %227 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %224, i32 %225, i32 %226)
  %228 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %229 = call i32 @BWN_PHY_EXTG(i32 1)
  %230 = load %struct.bwn_lo_g_value*, %struct.bwn_lo_g_value** %4, align 8
  %231 = getelementptr inbounds %struct.bwn_lo_g_value, %struct.bwn_lo_g_value* %230, i32 0, i32 15
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %228, i32 %229, i32 %232)
  %234 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %235 = load i32, i32* @BWN_PHY_DACCTL, align 4
  %236 = load %struct.bwn_lo_g_value*, %struct.bwn_lo_g_value** %4, align 8
  %237 = getelementptr inbounds %struct.bwn_lo_g_value, %struct.bwn_lo_g_value* %236, i32 0, i32 16
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %234, i32 %235, i32 %238)
  %240 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %241 = call i32 @BWN_PHY_CCK(i32 20)
  %242 = load %struct.bwn_lo_g_value*, %struct.bwn_lo_g_value** %4, align 8
  %243 = getelementptr inbounds %struct.bwn_lo_g_value, %struct.bwn_lo_g_value* %242, i32 0, i32 17
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %240, i32 %241, i32 %244)
  %246 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %247 = load i32, i32* @BWN_PHY_HPWR_TSSICTL, align 4
  %248 = load %struct.bwn_lo_g_value*, %struct.bwn_lo_g_value** %4, align 8
  %249 = getelementptr inbounds %struct.bwn_lo_g_value, %struct.bwn_lo_g_value* %248, i32 0, i32 18
  %250 = load i32, i32* %249, align 4
  %251 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %246, i32 %247, i32 %250)
  br label %252

252:                                              ; preds = %219, %215
  %253 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %254 = load %struct.bwn_lo_g_value*, %struct.bwn_lo_g_value** %4, align 8
  %255 = getelementptr inbounds %struct.bwn_lo_g_value, %struct.bwn_lo_g_value* %254, i32 0, i32 19
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @bwn_phy_g_switch_chan(%struct.bwn_mac* %253, i32 %256, i32 1)
  ret void
}

declare dso_local i32 @BWN_PHY_WRITE(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @BWN_PHY_CCK(i32) #1

declare dso_local i32 @BWN_WRITE_2(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @BWN_RF_WRITE(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @BWN_HAS_TXMAG(%struct.bwn_phy*) #1

declare dso_local i32 @BWN_RF_SETMASK(%struct.bwn_mac*, i32, i32, i32) #1

declare dso_local i64 @bwn_has_hwpctl(%struct.bwn_mac*) #1

declare dso_local i32 @BWN_PHY_EXTG(i32) #1

declare dso_local i32 @bwn_phy_g_switch_chan(%struct.bwn_mac*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
