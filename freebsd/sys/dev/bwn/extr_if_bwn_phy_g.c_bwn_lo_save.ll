; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_g.c_bwn_lo_save.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_g.c_bwn_lo_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.bwn_softc*, %struct.bwn_phy }
%struct.bwn_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.bwn_phy = type { i64, i32, i32, i32, %struct.bwn_phy_g }
%struct.bwn_phy_g = type { %struct.bwn_txpwr_loctl }
%struct.bwn_txpwr_loctl = type { i32 }
%struct.bwn_lo_g_value = type { i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.timespec = type { i32, i32 }

@BWN_PHY_LO_MASK = common dso_local global i32 0, align 4
@BWN_PHY_DACCTL = common dso_local global i32 0, align 4
@BWN_PHY_HPWR_TSSICTL = common dso_local global i32 0, align 4
@BWN_PHYTYPE_B = common dso_local global i64 0, align 8
@BWN_PHY_ANALOGOVER = common dso_local global i32 0, align 4
@BWN_PHY_ANALOGOVERVAL = common dso_local global i32 0, align 4
@BWN_PHY_RFOVER = common dso_local global i32 0, align 4
@BWN_PHY_RFOVERVAL = common dso_local global i32 0, align 4
@BWN_PHY_CLASSCTL = common dso_local global i32 0, align 4
@BWN_PHY_CRS0 = common dso_local global i32 0, align 4
@BWN_PHYTYPE_G = common dso_local global i64 0, align 8
@BHND_BFL_EXTLNA = common dso_local global i32 0, align 4
@BWN_PHY_PGACTL = common dso_local global i32 0, align 4
@BWN_PHY_SYNCCTL = common dso_local global i32 0, align 4
@BWN_LO_TXCTL_EXPIRE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*, %struct.bwn_lo_g_value*)* @bwn_lo_save to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_lo_save(%struct.bwn_mac* %0, %struct.bwn_lo_g_value* %1) #0 {
  %3 = alloca %struct.bwn_mac*, align 8
  %4 = alloca %struct.bwn_lo_g_value*, align 8
  %5 = alloca %struct.bwn_phy*, align 8
  %6 = alloca %struct.bwn_phy_g*, align 8
  %7 = alloca %struct.bwn_softc*, align 8
  %8 = alloca %struct.bwn_txpwr_loctl*, align 8
  %9 = alloca %struct.timespec, align 4
  %10 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %3, align 8
  store %struct.bwn_lo_g_value* %1, %struct.bwn_lo_g_value** %4, align 8
  %11 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %12 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %11, i32 0, i32 1
  store %struct.bwn_phy* %12, %struct.bwn_phy** %5, align 8
  %13 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %14 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %13, i32 0, i32 4
  store %struct.bwn_phy_g* %14, %struct.bwn_phy_g** %6, align 8
  %15 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %16 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %15, i32 0, i32 0
  %17 = load %struct.bwn_softc*, %struct.bwn_softc** %16, align 8
  store %struct.bwn_softc* %17, %struct.bwn_softc** %7, align 8
  %18 = load %struct.bwn_phy_g*, %struct.bwn_phy_g** %6, align 8
  %19 = getelementptr inbounds %struct.bwn_phy_g, %struct.bwn_phy_g* %18, i32 0, i32 0
  store %struct.bwn_txpwr_loctl* %19, %struct.bwn_txpwr_loctl** %8, align 8
  %20 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %21 = call i64 @bwn_has_hwpctl(%struct.bwn_mac* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %61

23:                                               ; preds = %2
  %24 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %25 = load i32, i32* @BWN_PHY_LO_MASK, align 4
  %26 = call i8* @BWN_PHY_READ(%struct.bwn_mac* %24, i32 %25)
  %27 = load %struct.bwn_lo_g_value*, %struct.bwn_lo_g_value** %4, align 8
  %28 = getelementptr inbounds %struct.bwn_lo_g_value, %struct.bwn_lo_g_value* %27, i32 0, i32 22
  store i8* %26, i8** %28, align 8
  %29 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %30 = call i32 @BWN_PHY_EXTG(i32 1)
  %31 = call i8* @BWN_PHY_READ(%struct.bwn_mac* %29, i32 %30)
  %32 = load %struct.bwn_lo_g_value*, %struct.bwn_lo_g_value** %4, align 8
  %33 = getelementptr inbounds %struct.bwn_lo_g_value, %struct.bwn_lo_g_value* %32, i32 0, i32 21
  store i8* %31, i8** %33, align 8
  %34 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %35 = load i32, i32* @BWN_PHY_DACCTL, align 4
  %36 = call i8* @BWN_PHY_READ(%struct.bwn_mac* %34, i32 %35)
  %37 = load %struct.bwn_lo_g_value*, %struct.bwn_lo_g_value** %4, align 8
  %38 = getelementptr inbounds %struct.bwn_lo_g_value, %struct.bwn_lo_g_value* %37, i32 0, i32 20
  store i8* %36, i8** %38, align 8
  %39 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %40 = call i32 @BWN_PHY_CCK(i32 20)
  %41 = call i8* @BWN_PHY_READ(%struct.bwn_mac* %39, i32 %40)
  %42 = load %struct.bwn_lo_g_value*, %struct.bwn_lo_g_value** %4, align 8
  %43 = getelementptr inbounds %struct.bwn_lo_g_value, %struct.bwn_lo_g_value* %42, i32 0, i32 19
  store i8* %41, i8** %43, align 8
  %44 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %45 = load i32, i32* @BWN_PHY_HPWR_TSSICTL, align 4
  %46 = call i8* @BWN_PHY_READ(%struct.bwn_mac* %44, i32 %45)
  %47 = load %struct.bwn_lo_g_value*, %struct.bwn_lo_g_value** %4, align 8
  %48 = getelementptr inbounds %struct.bwn_lo_g_value, %struct.bwn_lo_g_value* %47, i32 0, i32 18
  store i8* %46, i8** %48, align 8
  %49 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %50 = load i32, i32* @BWN_PHY_HPWR_TSSICTL, align 4
  %51 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %49, i32 %50, i32 256)
  %52 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %53 = call i32 @BWN_PHY_EXTG(i32 1)
  %54 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %52, i32 %53, i32 64)
  %55 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %56 = load i32, i32* @BWN_PHY_DACCTL, align 4
  %57 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %55, i32 %56, i32 64)
  %58 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %59 = call i32 @BWN_PHY_CCK(i32 20)
  %60 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %58, i32 %59, i32 512)
  br label %61

61:                                               ; preds = %23, %2
  %62 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %63 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @BWN_PHYTYPE_B, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %84

67:                                               ; preds = %61
  %68 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %69 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = icmp eq i32 %70, 8272
  br i1 %71, label %72, label %84

72:                                               ; preds = %67
  %73 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %74 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = icmp slt i32 %75, 6
  br i1 %76, label %77, label %84

77:                                               ; preds = %72
  %78 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %79 = call i32 @BWN_PHY_CCK(i32 22)
  %80 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %78, i32 %79, i32 1040)
  %81 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %82 = call i32 @BWN_PHY_CCK(i32 23)
  %83 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %81, i32 %82, i32 2080)
  br label %84

84:                                               ; preds = %77, %72, %67, %61
  %85 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %86 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = icmp sge i32 %87, 2
  br i1 %88, label %89, label %172

89:                                               ; preds = %84
  %90 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %91 = load i32, i32* @BWN_PHY_ANALOGOVER, align 4
  %92 = call i8* @BWN_PHY_READ(%struct.bwn_mac* %90, i32 %91)
  %93 = load %struct.bwn_lo_g_value*, %struct.bwn_lo_g_value** %4, align 8
  %94 = getelementptr inbounds %struct.bwn_lo_g_value, %struct.bwn_lo_g_value* %93, i32 0, i32 17
  store i8* %92, i8** %94, align 8
  %95 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %96 = load i32, i32* @BWN_PHY_ANALOGOVERVAL, align 4
  %97 = call i8* @BWN_PHY_READ(%struct.bwn_mac* %95, i32 %96)
  %98 = load %struct.bwn_lo_g_value*, %struct.bwn_lo_g_value** %4, align 8
  %99 = getelementptr inbounds %struct.bwn_lo_g_value, %struct.bwn_lo_g_value* %98, i32 0, i32 16
  store i8* %97, i8** %99, align 8
  %100 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %101 = load i32, i32* @BWN_PHY_RFOVER, align 4
  %102 = call i8* @BWN_PHY_READ(%struct.bwn_mac* %100, i32 %101)
  %103 = load %struct.bwn_lo_g_value*, %struct.bwn_lo_g_value** %4, align 8
  %104 = getelementptr inbounds %struct.bwn_lo_g_value, %struct.bwn_lo_g_value* %103, i32 0, i32 15
  store i8* %102, i8** %104, align 8
  %105 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %106 = load i32, i32* @BWN_PHY_RFOVERVAL, align 4
  %107 = call i8* @BWN_PHY_READ(%struct.bwn_mac* %105, i32 %106)
  %108 = load %struct.bwn_lo_g_value*, %struct.bwn_lo_g_value** %4, align 8
  %109 = getelementptr inbounds %struct.bwn_lo_g_value, %struct.bwn_lo_g_value* %108, i32 0, i32 14
  store i8* %107, i8** %109, align 8
  %110 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %111 = load i32, i32* @BWN_PHY_CLASSCTL, align 4
  %112 = call i8* @BWN_PHY_READ(%struct.bwn_mac* %110, i32 %111)
  %113 = load %struct.bwn_lo_g_value*, %struct.bwn_lo_g_value** %4, align 8
  %114 = getelementptr inbounds %struct.bwn_lo_g_value, %struct.bwn_lo_g_value* %113, i32 0, i32 13
  store i8* %112, i8** %114, align 8
  %115 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %116 = call i32 @BWN_PHY_CCK(i32 62)
  %117 = call i8* @BWN_PHY_READ(%struct.bwn_mac* %115, i32 %116)
  %118 = load %struct.bwn_lo_g_value*, %struct.bwn_lo_g_value** %4, align 8
  %119 = getelementptr inbounds %struct.bwn_lo_g_value, %struct.bwn_lo_g_value* %118, i32 0, i32 12
  store i8* %117, i8** %119, align 8
  %120 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %121 = load i32, i32* @BWN_PHY_CRS0, align 4
  %122 = call i8* @BWN_PHY_READ(%struct.bwn_mac* %120, i32 %121)
  %123 = load %struct.bwn_lo_g_value*, %struct.bwn_lo_g_value** %4, align 8
  %124 = getelementptr inbounds %struct.bwn_lo_g_value, %struct.bwn_lo_g_value* %123, i32 0, i32 11
  store i8* %122, i8** %124, align 8
  %125 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %126 = load i32, i32* @BWN_PHY_CLASSCTL, align 4
  %127 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %125, i32 %126, i32 65532)
  %128 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %129 = load i32, i32* @BWN_PHY_CRS0, align 4
  %130 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %128, i32 %129, i32 32767)
  %131 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %132 = load i32, i32* @BWN_PHY_ANALOGOVER, align 4
  %133 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %131, i32 %132, i32 3)
  %134 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %135 = load i32, i32* @BWN_PHY_ANALOGOVERVAL, align 4
  %136 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %134, i32 %135, i32 65532)
  %137 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %138 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @BWN_PHYTYPE_G, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %164

142:                                              ; preds = %89
  %143 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %144 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 8
  %146 = icmp sge i32 %145, 7
  br i1 %146, label %147, label %159

147:                                              ; preds = %142
  %148 = load %struct.bwn_softc*, %struct.bwn_softc** %7, align 8
  %149 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @BHND_BFL_EXTLNA, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %147
  %156 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %157 = load i32, i32* @BWN_PHY_RFOVER, align 4
  %158 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %156, i32 %157, i32 2355)
  br label %163

159:                                              ; preds = %147, %142
  %160 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %161 = load i32, i32* @BWN_PHY_RFOVER, align 4
  %162 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %160, i32 %161, i32 307)
  br label %163

163:                                              ; preds = %159, %155
  br label %168

164:                                              ; preds = %89
  %165 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %166 = load i32, i32* @BWN_PHY_RFOVER, align 4
  %167 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %165, i32 %166, i32 0)
  br label %168

168:                                              ; preds = %164, %163
  %169 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %170 = call i32 @BWN_PHY_CCK(i32 62)
  %171 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %169, i32 %170, i32 0)
  br label %172

172:                                              ; preds = %168, %84
  %173 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %174 = call i32 @BWN_READ_2(%struct.bwn_mac* %173, i32 1012)
  %175 = load %struct.bwn_lo_g_value*, %struct.bwn_lo_g_value** %4, align 8
  %176 = getelementptr inbounds %struct.bwn_lo_g_value, %struct.bwn_lo_g_value* %175, i32 0, i32 0
  store i32 %174, i32* %176, align 8
  %177 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %178 = call i32 @BWN_READ_2(%struct.bwn_mac* %177, i32 994)
  %179 = load %struct.bwn_lo_g_value*, %struct.bwn_lo_g_value** %4, align 8
  %180 = getelementptr inbounds %struct.bwn_lo_g_value, %struct.bwn_lo_g_value* %179, i32 0, i32 1
  store i32 %178, i32* %180, align 4
  %181 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %182 = call i8* @BWN_RF_READ(%struct.bwn_mac* %181, i32 67)
  %183 = load %struct.bwn_lo_g_value*, %struct.bwn_lo_g_value** %4, align 8
  %184 = getelementptr inbounds %struct.bwn_lo_g_value, %struct.bwn_lo_g_value* %183, i32 0, i32 10
  store i8* %182, i8** %184, align 8
  %185 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %186 = call i8* @BWN_RF_READ(%struct.bwn_mac* %185, i32 122)
  %187 = ptrtoint i8* %186 to i32
  %188 = load %struct.bwn_lo_g_value*, %struct.bwn_lo_g_value** %4, align 8
  %189 = getelementptr inbounds %struct.bwn_lo_g_value, %struct.bwn_lo_g_value* %188, i32 0, i32 2
  store i32 %187, i32* %189, align 8
  %190 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %191 = load i32, i32* @BWN_PHY_PGACTL, align 4
  %192 = call i8* @BWN_PHY_READ(%struct.bwn_mac* %190, i32 %191)
  %193 = load %struct.bwn_lo_g_value*, %struct.bwn_lo_g_value** %4, align 8
  %194 = getelementptr inbounds %struct.bwn_lo_g_value, %struct.bwn_lo_g_value* %193, i32 0, i32 9
  store i8* %192, i8** %194, align 8
  %195 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %196 = call i32 @BWN_PHY_CCK(i32 42)
  %197 = call i8* @BWN_PHY_READ(%struct.bwn_mac* %195, i32 %196)
  %198 = load %struct.bwn_lo_g_value*, %struct.bwn_lo_g_value** %4, align 8
  %199 = getelementptr inbounds %struct.bwn_lo_g_value, %struct.bwn_lo_g_value* %198, i32 0, i32 8
  store i8* %197, i8** %199, align 8
  %200 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %201 = load i32, i32* @BWN_PHY_SYNCCTL, align 4
  %202 = call i8* @BWN_PHY_READ(%struct.bwn_mac* %200, i32 %201)
  %203 = ptrtoint i8* %202 to i32
  %204 = load %struct.bwn_lo_g_value*, %struct.bwn_lo_g_value** %4, align 8
  %205 = getelementptr inbounds %struct.bwn_lo_g_value, %struct.bwn_lo_g_value* %204, i32 0, i32 3
  store i32 %203, i32* %205, align 4
  %206 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %207 = load i32, i32* @BWN_PHY_DACCTL, align 4
  %208 = call i8* @BWN_PHY_READ(%struct.bwn_mac* %206, i32 %207)
  %209 = load %struct.bwn_lo_g_value*, %struct.bwn_lo_g_value** %4, align 8
  %210 = getelementptr inbounds %struct.bwn_lo_g_value, %struct.bwn_lo_g_value* %209, i32 0, i32 7
  store i8* %208, i8** %210, align 8
  %211 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %212 = call i32 @BWN_HAS_TXMAG(%struct.bwn_phy* %211)
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %224, label %214

214:                                              ; preds = %172
  %215 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %216 = call i8* @BWN_RF_READ(%struct.bwn_mac* %215, i32 82)
  %217 = ptrtoint i8* %216 to i32
  %218 = load %struct.bwn_lo_g_value*, %struct.bwn_lo_g_value** %4, align 8
  %219 = getelementptr inbounds %struct.bwn_lo_g_value, %struct.bwn_lo_g_value* %218, i32 0, i32 4
  store i32 %217, i32* %219, align 8
  %220 = load %struct.bwn_lo_g_value*, %struct.bwn_lo_g_value** %4, align 8
  %221 = getelementptr inbounds %struct.bwn_lo_g_value, %struct.bwn_lo_g_value* %220, i32 0, i32 4
  %222 = load i32, i32* %221, align 8
  %223 = and i32 %222, 240
  store i32 %223, i32* %221, align 8
  br label %224

224:                                              ; preds = %214, %172
  %225 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %226 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = load i64, i64* @BWN_PHYTYPE_B, align 8
  %229 = icmp eq i64 %227, %228
  br i1 %229, label %230, label %247

230:                                              ; preds = %224
  %231 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %232 = call i32 @BWN_PHY_CCK(i32 48)
  %233 = call i8* @BWN_PHY_READ(%struct.bwn_mac* %231, i32 %232)
  %234 = load %struct.bwn_lo_g_value*, %struct.bwn_lo_g_value** %4, align 8
  %235 = getelementptr inbounds %struct.bwn_lo_g_value, %struct.bwn_lo_g_value* %234, i32 0, i32 6
  store i8* %233, i8** %235, align 8
  %236 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %237 = call i32 @BWN_PHY_CCK(i32 6)
  %238 = call i8* @BWN_PHY_READ(%struct.bwn_mac* %236, i32 %237)
  %239 = load %struct.bwn_lo_g_value*, %struct.bwn_lo_g_value** %4, align 8
  %240 = getelementptr inbounds %struct.bwn_lo_g_value, %struct.bwn_lo_g_value* %239, i32 0, i32 5
  store i8* %238, i8** %240, align 8
  %241 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %242 = call i32 @BWN_PHY_CCK(i32 48)
  %243 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %241, i32 %242, i32 255)
  %244 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %245 = call i32 @BWN_PHY_CCK(i32 6)
  %246 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %244, i32 %245, i32 16191)
  br label %253

247:                                              ; preds = %224
  %248 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %249 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %250 = call i32 @BWN_READ_2(%struct.bwn_mac* %249, i32 994)
  %251 = or i32 %250, 32768
  %252 = call i32 @BWN_WRITE_2(%struct.bwn_mac* %248, i32 994, i32 %251)
  br label %253

253:                                              ; preds = %247, %230
  %254 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %255 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %256 = call i32 @BWN_READ_2(%struct.bwn_mac* %255, i32 1012)
  %257 = and i32 %256, 61440
  %258 = call i32 @BWN_WRITE_2(%struct.bwn_mac* %254, i32 1012, i32 %257)
  %259 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %260 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = load i64, i64* @BWN_PHYTYPE_G, align 8
  %263 = icmp eq i64 %261, %262
  br i1 %263, label %264, label %266

264:                                              ; preds = %253
  %265 = load i32, i32* @BWN_PHY_LO_MASK, align 4
  br label %268

266:                                              ; preds = %253
  %267 = call i32 @BWN_PHY_CCK(i32 46)
  br label %268

268:                                              ; preds = %266, %264
  %269 = phi i32 [ %265, %264 ], [ %267, %266 ]
  store i32 %269, i32* %10, align 4
  %270 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %271 = load i32, i32* %10, align 4
  %272 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %270, i32 %271, i32 127)
  %273 = load %struct.bwn_lo_g_value*, %struct.bwn_lo_g_value** %4, align 8
  %274 = getelementptr inbounds %struct.bwn_lo_g_value, %struct.bwn_lo_g_value* %273, i32 0, i32 3
  %275 = load i32, i32* %274, align 4
  store i32 %275, i32* %10, align 4
  %276 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %277 = load i32, i32* @BWN_PHY_SYNCCTL, align 4
  %278 = load i32, i32* %10, align 4
  %279 = and i32 %278, 65407
  %280 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %276, i32 %277, i32 %279)
  %281 = load %struct.bwn_lo_g_value*, %struct.bwn_lo_g_value** %4, align 8
  %282 = getelementptr inbounds %struct.bwn_lo_g_value, %struct.bwn_lo_g_value* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 8
  store i32 %283, i32* %10, align 4
  %284 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %285 = load i32, i32* %10, align 4
  %286 = and i32 %285, 65520
  %287 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %284, i32 122, i32 %286)
  %288 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %289 = call i32 @BWN_PHY_CCK(i32 42)
  %290 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %288, i32 %289, i32 2211)
  %291 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %292 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = load i64, i64* @BWN_PHYTYPE_G, align 8
  %295 = icmp eq i64 %293, %294
  br i1 %295, label %312, label %296

296:                                              ; preds = %268
  %297 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %298 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %297, i32 0, i32 0
  %299 = load i64, i64* %298, align 8
  %300 = load i64, i64* @BWN_PHYTYPE_B, align 8
  %301 = icmp eq i64 %299, %300
  br i1 %301, label %302, label %316

302:                                              ; preds = %296
  %303 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %304 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 8
  %306 = icmp eq i32 %305, 8272
  br i1 %306, label %307, label %316

307:                                              ; preds = %302
  %308 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %309 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %308, i32 0, i32 2
  %310 = load i32, i32* %309, align 4
  %311 = icmp sge i32 %310, 6
  br i1 %311, label %312, label %316

312:                                              ; preds = %307, %268
  %313 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %314 = call i32 @BWN_PHY_CCK(i32 43)
  %315 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %313, i32 %314, i32 4099)
  br label %320

316:                                              ; preds = %307, %302, %296
  %317 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %318 = call i32 @BWN_PHY_CCK(i32 43)
  %319 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %317, i32 %318, i32 2050)
  br label %320

320:                                              ; preds = %316, %312
  %321 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %322 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %321, i32 0, i32 3
  %323 = load i32, i32* %322, align 8
  %324 = icmp sge i32 %323, 2
  br i1 %324, label %325, label %328

325:                                              ; preds = %320
  %326 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %327 = call i32 @bwn_dummy_transmission(%struct.bwn_mac* %326, i32 0, i32 1)
  br label %328

328:                                              ; preds = %325, %320
  %329 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %330 = call i32 @bwn_phy_g_switch_chan(%struct.bwn_mac* %329, i32 6, i32 0)
  %331 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %332 = call i8* @BWN_RF_READ(%struct.bwn_mac* %331, i32 81)
  %333 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %334 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %333, i32 0, i32 0
  %335 = load i64, i64* %334, align 8
  %336 = load i64, i64* @BWN_PHYTYPE_G, align 8
  %337 = icmp eq i64 %335, %336
  br i1 %337, label %338, label %342

338:                                              ; preds = %328
  %339 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %340 = call i32 @BWN_PHY_CCK(i32 47)
  %341 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %339, i32 %340, i32 0)
  br label %342

342:                                              ; preds = %338, %328
  %343 = call i32 @nanouptime(%struct.timespec* %9)
  %344 = load %struct.bwn_txpwr_loctl*, %struct.bwn_txpwr_loctl** %8, align 8
  %345 = getelementptr inbounds %struct.bwn_txpwr_loctl, %struct.bwn_txpwr_loctl* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 4
  %347 = getelementptr inbounds %struct.timespec, %struct.timespec* %9, i32 0, i32 0
  %348 = load i32, i32* %347, align 4
  %349 = sdiv i32 %348, 1000000
  %350 = getelementptr inbounds %struct.timespec, %struct.timespec* %9, i32 0, i32 1
  %351 = load i32, i32* %350, align 4
  %352 = mul nsw i32 %351, 1000
  %353 = add nsw i32 %349, %352
  %354 = sext i32 %353 to i64
  %355 = load i64, i64* @BWN_LO_TXCTL_EXPIRE, align 8
  %356 = sub nsw i64 %354, %355
  %357 = call i64 @ieee80211_time_before(i32 %346, i64 %356)
  %358 = icmp ne i64 %357, 0
  br i1 %358, label %359, label %362

359:                                              ; preds = %342
  %360 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %361 = call i32 @bwn_lo_measure_txctl_values(%struct.bwn_mac* %360)
  br label %362

362:                                              ; preds = %359, %342
  %363 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %364 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %363, i32 0, i32 0
  %365 = load i64, i64* %364, align 8
  %366 = load i64, i64* @BWN_PHYTYPE_G, align 8
  %367 = icmp eq i64 %365, %366
  br i1 %367, label %368, label %377

368:                                              ; preds = %362
  %369 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %370 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %369, i32 0, i32 3
  %371 = load i32, i32* %370, align 8
  %372 = icmp sge i32 %371, 3
  br i1 %372, label %373, label %377

373:                                              ; preds = %368
  %374 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %375 = load i32, i32* @BWN_PHY_LO_MASK, align 4
  %376 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %374, i32 %375, i32 49272)
  br label %392

377:                                              ; preds = %368, %362
  %378 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %379 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %378, i32 0, i32 0
  %380 = load i64, i64* %379, align 8
  %381 = load i64, i64* @BWN_PHYTYPE_B, align 8
  %382 = icmp eq i64 %380, %381
  br i1 %382, label %383, label %387

383:                                              ; preds = %377
  %384 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %385 = call i32 @BWN_PHY_CCK(i32 46)
  %386 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %384, i32 %385, i32 32888)
  br label %391

387:                                              ; preds = %377
  %388 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %389 = load i32, i32* @BWN_PHY_LO_MASK, align 4
  %390 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %388, i32 %389, i32 32888)
  br label %391

391:                                              ; preds = %387, %383
  br label %392

392:                                              ; preds = %391, %373
  ret void
}

declare dso_local i64 @bwn_has_hwpctl(%struct.bwn_mac*) #1

declare dso_local i8* @BWN_PHY_READ(%struct.bwn_mac*, i32) #1

declare dso_local i32 @BWN_PHY_EXTG(i32) #1

declare dso_local i32 @BWN_PHY_CCK(i32) #1

declare dso_local i32 @BWN_PHY_SET(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @BWN_PHY_WRITE(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @BWN_PHY_MASK(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @BWN_READ_2(%struct.bwn_mac*, i32) #1

declare dso_local i8* @BWN_RF_READ(%struct.bwn_mac*, i32) #1

declare dso_local i32 @BWN_HAS_TXMAG(%struct.bwn_phy*) #1

declare dso_local i32 @BWN_WRITE_2(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @BWN_RF_WRITE(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @bwn_dummy_transmission(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @bwn_phy_g_switch_chan(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @nanouptime(%struct.timespec*) #1

declare dso_local i64 @ieee80211_time_before(i32, i64) #1

declare dso_local i32 @bwn_lo_measure_txctl_values(%struct.bwn_mac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
