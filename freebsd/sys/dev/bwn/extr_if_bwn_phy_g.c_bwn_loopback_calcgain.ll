; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_g.c_bwn_loopback_calcgain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_g.c_bwn_loopback_calcgain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.bwn_softc*, %struct.bwn_phy }
%struct.bwn_softc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.bwn_phy = type { i32, i32, %struct.bwn_phy_g }
%struct.bwn_phy_g = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@BWN_PHY_CRS0 = common dso_local global i32 0, align 4
@BWN_PHY_CCKBBANDCFG = common dso_local global i32 0, align 4
@BWN_PHY_RFOVER = common dso_local global i32 0, align 4
@BWN_PHY_RFOVERVAL = common dso_local global i32 0, align 4
@BWN_PHY_ANALOGOVER = common dso_local global i32 0, align 4
@BWN_PHY_ANALOGOVERVAL = common dso_local global i32 0, align 4
@BWN_PHY_LO_MASK = common dso_local global i32 0, align 4
@BWN_PHY_LO_CTL = common dso_local global i32 0, align 4
@BWN_PHY_PGACTL = common dso_local global i32 0, align 4
@BWN_PHY_LO_LEAKAGE = common dso_local global i32 0, align 4
@BHND_BFL_EXTLNA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*)* @bwn_loopback_calcgain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_loopback_calcgain(%struct.bwn_mac* %0) #0 {
  %2 = alloca %struct.bwn_mac*, align 8
  %3 = alloca %struct.bwn_phy*, align 8
  %4 = alloca %struct.bwn_phy_g*, align 8
  %5 = alloca %struct.bwn_softc*, align 8
  %6 = alloca [16 x i32], align 16
  %7 = alloca [3 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %2, align 8
  %15 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %16 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %15, i32 0, i32 1
  store %struct.bwn_phy* %16, %struct.bwn_phy** %3, align 8
  %17 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %18 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %17, i32 0, i32 2
  store %struct.bwn_phy_g* %18, %struct.bwn_phy_g** %4, align 8
  %19 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %20 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %19, i32 0, i32 0
  %21 = load %struct.bwn_softc*, %struct.bwn_softc** %20, align 8
  store %struct.bwn_softc* %21, %struct.bwn_softc** %5, align 8
  %22 = bitcast [16 x i32]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %22, i8 0, i64 64, i1 false)
  %23 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %24 = load i32, i32* @BWN_PHY_CRS0, align 4
  %25 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %23, i32 %24)
  %26 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  store i32 %25, i32* %26, align 16
  %27 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %28 = load i32, i32* @BWN_PHY_CCKBBANDCFG, align 4
  %29 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %27, i32 %28)
  %30 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 1
  store i32 %29, i32* %30, align 4
  %31 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %32 = load i32, i32* @BWN_PHY_RFOVER, align 4
  %33 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %31, i32 %32)
  %34 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 2
  store i32 %33, i32* %34, align 8
  %35 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %36 = load i32, i32* @BWN_PHY_RFOVERVAL, align 4
  %37 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %35, i32 %36)
  %38 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 3
  store i32 %37, i32* %38, align 4
  %39 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %40 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 1
  br i1 %42, label %43, label %52

43:                                               ; preds = %1
  %44 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %45 = load i32, i32* @BWN_PHY_ANALOGOVER, align 4
  %46 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %44, i32 %45)
  %47 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 4
  store i32 %46, i32* %47, align 16
  %48 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %49 = load i32, i32* @BWN_PHY_ANALOGOVERVAL, align 4
  %50 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %48, i32 %49)
  %51 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 5
  store i32 %50, i32* %51, align 4
  br label %52

52:                                               ; preds = %43, %1
  %53 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %54 = call i32 @BWN_PHY_CCK(i32 90)
  %55 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %53, i32 %54)
  %56 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 6
  store i32 %55, i32* %56, align 8
  %57 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %58 = call i32 @BWN_PHY_CCK(i32 89)
  %59 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %57, i32 %58)
  %60 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 7
  store i32 %59, i32* %60, align 4
  %61 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %62 = call i32 @BWN_PHY_CCK(i32 88)
  %63 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %61, i32 %62)
  %64 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 8
  store i32 %63, i32* %64, align 16
  %65 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %66 = call i32 @BWN_PHY_CCK(i32 10)
  %67 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %65, i32 %66)
  %68 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 9
  store i32 %67, i32* %68, align 4
  %69 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %70 = call i32 @BWN_PHY_CCK(i32 3)
  %71 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %69, i32 %70)
  %72 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 10
  store i32 %71, i32* %72, align 8
  %73 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %74 = load i32, i32* @BWN_PHY_LO_MASK, align 4
  %75 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %73, i32 %74)
  %76 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 11
  store i32 %75, i32* %76, align 4
  %77 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %78 = load i32, i32* @BWN_PHY_LO_CTL, align 4
  %79 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %77, i32 %78)
  %80 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 12
  store i32 %79, i32* %80, align 16
  %81 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %82 = call i32 @BWN_PHY_CCK(i32 43)
  %83 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %81, i32 %82)
  %84 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 13
  store i32 %83, i32* %84, align 4
  %85 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %86 = load i32, i32* @BWN_PHY_PGACTL, align 4
  %87 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %85, i32 %86)
  %88 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 14
  store i32 %87, i32* %88, align 8
  %89 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %90 = load i32, i32* @BWN_PHY_LO_LEAKAGE, align 4
  %91 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %89, i32 %90)
  %92 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 15
  store i32 %91, i32* %92, align 4
  %93 = load %struct.bwn_phy_g*, %struct.bwn_phy_g** %4, align 8
  %94 = getelementptr inbounds %struct.bwn_phy_g, %struct.bwn_phy_g* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %8, align 4
  %97 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %98 = call i32 @BWN_RF_READ(%struct.bwn_mac* %97, i32 82)
  %99 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  store i32 %98, i32* %99, align 4
  %100 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %101 = call i32 @BWN_RF_READ(%struct.bwn_mac* %100, i32 67)
  %102 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  store i32 %101, i32* %102, align 4
  %103 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %104 = call i32 @BWN_RF_READ(%struct.bwn_mac* %103, i32 122)
  %105 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 2
  store i32 %104, i32* %105, align 4
  %106 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %107 = load i32, i32* @BWN_PHY_CRS0, align 4
  %108 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %106, i32 %107, i32 16383)
  %109 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %110 = load i32, i32* @BWN_PHY_CCKBBANDCFG, align 4
  %111 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %109, i32 %110, i32 32768)
  %112 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %113 = load i32, i32* @BWN_PHY_RFOVER, align 4
  %114 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %112, i32 %113, i32 2)
  %115 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %116 = load i32, i32* @BWN_PHY_RFOVERVAL, align 4
  %117 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %115, i32 %116, i32 65533)
  %118 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %119 = load i32, i32* @BWN_PHY_RFOVER, align 4
  %120 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %118, i32 %119, i32 1)
  %121 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %122 = load i32, i32* @BWN_PHY_RFOVERVAL, align 4
  %123 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %121, i32 %122, i32 65534)
  %124 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %125 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 1
  br i1 %127, label %128, label %141

128:                                              ; preds = %52
  %129 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %130 = load i32, i32* @BWN_PHY_ANALOGOVER, align 4
  %131 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %129, i32 %130, i32 1)
  %132 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %133 = load i32, i32* @BWN_PHY_ANALOGOVERVAL, align 4
  %134 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %132, i32 %133, i32 65534)
  %135 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %136 = load i32, i32* @BWN_PHY_ANALOGOVER, align 4
  %137 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %135, i32 %136, i32 2)
  %138 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %139 = load i32, i32* @BWN_PHY_ANALOGOVERVAL, align 4
  %140 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %138, i32 %139, i32 65533)
  br label %141

141:                                              ; preds = %128, %52
  %142 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %143 = load i32, i32* @BWN_PHY_RFOVER, align 4
  %144 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %142, i32 %143, i32 12)
  %145 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %146 = load i32, i32* @BWN_PHY_RFOVERVAL, align 4
  %147 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %145, i32 %146, i32 12)
  %148 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %149 = load i32, i32* @BWN_PHY_RFOVER, align 4
  %150 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %148, i32 %149, i32 48)
  %151 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %152 = load i32, i32* @BWN_PHY_RFOVERVAL, align 4
  %153 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %151, i32 %152, i32 65487, i32 16)
  %154 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %155 = call i32 @BWN_PHY_CCK(i32 90)
  %156 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %154, i32 %155, i32 1920)
  %157 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %158 = call i32 @BWN_PHY_CCK(i32 89)
  %159 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %157, i32 %158, i32 51216)
  %160 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %161 = call i32 @BWN_PHY_CCK(i32 88)
  %162 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %160, i32 %161, i32 13)
  %163 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %164 = call i32 @BWN_PHY_CCK(i32 10)
  %165 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %163, i32 %164, i32 8192)
  %166 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %167 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = icmp ne i32 %168, 1
  br i1 %169, label %170, label %177

170:                                              ; preds = %141
  %171 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %172 = load i32, i32* @BWN_PHY_ANALOGOVER, align 4
  %173 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %171, i32 %172, i32 4)
  %174 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %175 = load i32, i32* @BWN_PHY_ANALOGOVERVAL, align 4
  %176 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %174, i32 %175, i32 65531)
  br label %177

177:                                              ; preds = %170, %141
  %178 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %179 = call i32 @BWN_PHY_CCK(i32 3)
  %180 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %178, i32 %179, i32 65439, i32 64)
  %181 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %182 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = icmp eq i32 %183, 8
  br i1 %184, label %185, label %188

185:                                              ; preds = %177
  %186 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %187 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %186, i32 67, i32 15)
  br label %193

188:                                              ; preds = %177
  %189 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %190 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %189, i32 82, i32 0)
  %191 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %192 = call i32 @BWN_RF_SETMASK(%struct.bwn_mac* %191, i32 67, i32 65520, i32 9)
  br label %193

193:                                              ; preds = %188, %185
  %194 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %195 = call i32 @bwn_phy_g_set_bbatt(%struct.bwn_mac* %194, i32 11)
  %196 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %197 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = icmp sge i32 %198, 3
  br i1 %199, label %200, label %204

200:                                              ; preds = %193
  %201 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %202 = load i32, i32* @BWN_PHY_LO_MASK, align 4
  %203 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %201, i32 %202, i32 49184)
  br label %208

204:                                              ; preds = %193
  %205 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %206 = load i32, i32* @BWN_PHY_LO_MASK, align 4
  %207 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %205, i32 %206, i32 32800)
  br label %208

208:                                              ; preds = %204, %200
  %209 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %210 = load i32, i32* @BWN_PHY_LO_CTL, align 4
  %211 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %209, i32 %210, i32 0)
  %212 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %213 = call i32 @BWN_PHY_CCK(i32 43)
  %214 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %212, i32 %213, i32 65472, i32 1)
  %215 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %216 = call i32 @BWN_PHY_CCK(i32 43)
  %217 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %215, i32 %216, i32 49407, i32 2048)
  %218 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %219 = load i32, i32* @BWN_PHY_RFOVER, align 4
  %220 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %218, i32 %219, i32 256)
  %221 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %222 = load i32, i32* @BWN_PHY_RFOVERVAL, align 4
  %223 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %221, i32 %222, i32 53247)
  %224 = load %struct.bwn_softc*, %struct.bwn_softc** %5, align 8
  %225 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* @BHND_BFL_EXTLNA, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %244

231:                                              ; preds = %208
  %232 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %233 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = icmp sge i32 %234, 7
  br i1 %235, label %236, label %243

236:                                              ; preds = %231
  %237 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %238 = load i32, i32* @BWN_PHY_RFOVER, align 4
  %239 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %237, i32 %238, i32 2048)
  %240 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %241 = load i32, i32* @BWN_PHY_RFOVERVAL, align 4
  %242 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %240, i32 %241, i32 32768)
  br label %243

243:                                              ; preds = %236, %231
  br label %244

244:                                              ; preds = %243, %208
  %245 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %246 = call i32 @BWN_RF_MASK(%struct.bwn_mac* %245, i32 122, i32 247)
  store i32 0, i32* %10, align 4
  %247 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %248 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = icmp eq i32 %249, 8
  %251 = zext i1 %250 to i64
  %252 = select i1 %250, i32 15, i32 9
  store i32 %252, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %253

253:                                              ; preds = %287, %244
  %254 = load i32, i32* %9, align 4
  %255 = load i32, i32* %11, align 4
  %256 = icmp slt i32 %254, %255
  br i1 %256, label %257, label %290

257:                                              ; preds = %253
  store i32 0, i32* %10, align 4
  br label %258

258:                                              ; preds = %283, %257
  %259 = load i32, i32* %10, align 4
  %260 = icmp slt i32 %259, 16
  br i1 %260, label %261, label %286

261:                                              ; preds = %258
  %262 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %263 = load i32, i32* %9, align 4
  %264 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %262, i32 67, i32 %263)
  %265 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %266 = load i32, i32* @BWN_PHY_RFOVERVAL, align 4
  %267 = load i32, i32* %10, align 4
  %268 = shl i32 %267, 8
  %269 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %265, i32 %266, i32 61695, i32 %268)
  %270 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %271 = load i32, i32* @BWN_PHY_PGACTL, align 4
  %272 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %270, i32 %271, i32 4095, i32 40960)
  %273 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %274 = load i32, i32* @BWN_PHY_PGACTL, align 4
  %275 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %273, i32 %274, i32 61440)
  %276 = call i32 @DELAY(i32 20)
  %277 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %278 = load i32, i32* @BWN_PHY_LO_LEAKAGE, align 4
  %279 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %277, i32 %278)
  %280 = icmp sge i32 %279, 3580
  br i1 %280, label %281, label %282

281:                                              ; preds = %261
  br label %291

282:                                              ; preds = %261
  br label %283

283:                                              ; preds = %282
  %284 = load i32, i32* %10, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %10, align 4
  br label %258

286:                                              ; preds = %258
  br label %287

287:                                              ; preds = %286
  %288 = load i32, i32* %9, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %9, align 4
  br label %253

290:                                              ; preds = %253
  br label %291

291:                                              ; preds = %290, %281
  %292 = load i32, i32* %9, align 4
  store i32 %292, i32* %13, align 4
  %293 = load i32, i32* %10, align 4
  store i32 %293, i32* %14, align 4
  %294 = load i32, i32* %10, align 4
  %295 = icmp sge i32 %294, 8
  br i1 %295, label %296, label %330

296:                                              ; preds = %291
  %297 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %298 = load i32, i32* @BWN_PHY_RFOVERVAL, align 4
  %299 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %297, i32 %298, i32 48)
  store i32 27, i32* %12, align 4
  %300 = load i32, i32* %10, align 4
  %301 = sub nsw i32 %300, 8
  store i32 %301, i32* %10, align 4
  br label %302

302:                                              ; preds = %326, %296
  %303 = load i32, i32* %10, align 4
  %304 = icmp slt i32 %303, 16
  br i1 %304, label %305, label %329

305:                                              ; preds = %302
  %306 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %307 = load i32, i32* @BWN_PHY_RFOVERVAL, align 4
  %308 = load i32, i32* %10, align 4
  %309 = shl i32 %308, 8
  %310 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %306, i32 %307, i32 61695, i32 %309)
  %311 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %312 = load i32, i32* @BWN_PHY_PGACTL, align 4
  %313 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %311, i32 %312, i32 4095, i32 40960)
  %314 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %315 = load i32, i32* @BWN_PHY_PGACTL, align 4
  %316 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %314, i32 %315, i32 61440)
  %317 = call i32 @DELAY(i32 20)
  %318 = load i32, i32* %12, align 4
  %319 = sub nsw i32 %318, 3
  store i32 %319, i32* %12, align 4
  %320 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %321 = load i32, i32* @BWN_PHY_LO_LEAKAGE, align 4
  %322 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %320, i32 %321)
  %323 = icmp sge i32 %322, 3580
  br i1 %323, label %324, label %325

324:                                              ; preds = %305
  br label %332

325:                                              ; preds = %305
  br label %326

326:                                              ; preds = %325
  %327 = load i32, i32* %10, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %10, align 4
  br label %302

329:                                              ; preds = %302
  br label %331

330:                                              ; preds = %291
  store i32 24, i32* %12, align 4
  br label %331

331:                                              ; preds = %330, %329
  br label %332

332:                                              ; preds = %331, %324
  %333 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %334 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 4
  %336 = icmp ne i32 %335, 1
  br i1 %336, label %337, label %348

337:                                              ; preds = %332
  %338 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %339 = load i32, i32* @BWN_PHY_ANALOGOVER, align 4
  %340 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 4
  %341 = load i32, i32* %340, align 16
  %342 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %338, i32 %339, i32 %341)
  %343 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %344 = load i32, i32* @BWN_PHY_ANALOGOVERVAL, align 4
  %345 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 5
  %346 = load i32, i32* %345, align 4
  %347 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %343, i32 %344, i32 %346)
  br label %348

348:                                              ; preds = %337, %332
  %349 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %350 = call i32 @BWN_PHY_CCK(i32 90)
  %351 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 6
  %352 = load i32, i32* %351, align 8
  %353 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %349, i32 %350, i32 %352)
  %354 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %355 = call i32 @BWN_PHY_CCK(i32 89)
  %356 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 7
  %357 = load i32, i32* %356, align 4
  %358 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %354, i32 %355, i32 %357)
  %359 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %360 = call i32 @BWN_PHY_CCK(i32 88)
  %361 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 8
  %362 = load i32, i32* %361, align 16
  %363 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %359, i32 %360, i32 %362)
  %364 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %365 = call i32 @BWN_PHY_CCK(i32 10)
  %366 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 9
  %367 = load i32, i32* %366, align 4
  %368 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %364, i32 %365, i32 %367)
  %369 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %370 = call i32 @BWN_PHY_CCK(i32 3)
  %371 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 10
  %372 = load i32, i32* %371, align 8
  %373 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %369, i32 %370, i32 %372)
  %374 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %375 = load i32, i32* @BWN_PHY_LO_MASK, align 4
  %376 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 11
  %377 = load i32, i32* %376, align 4
  %378 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %374, i32 %375, i32 %377)
  %379 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %380 = load i32, i32* @BWN_PHY_LO_CTL, align 4
  %381 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 12
  %382 = load i32, i32* %381, align 16
  %383 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %379, i32 %380, i32 %382)
  %384 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %385 = call i32 @BWN_PHY_CCK(i32 43)
  %386 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 13
  %387 = load i32, i32* %386, align 4
  %388 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %384, i32 %385, i32 %387)
  %389 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %390 = load i32, i32* @BWN_PHY_PGACTL, align 4
  %391 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 14
  %392 = load i32, i32* %391, align 8
  %393 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %389, i32 %390, i32 %392)
  %394 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %395 = load i32, i32* %8, align 4
  %396 = call i32 @bwn_phy_g_set_bbatt(%struct.bwn_mac* %394, i32 %395)
  %397 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %398 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %399 = load i32, i32* %398, align 4
  %400 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %397, i32 82, i32 %399)
  %401 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %402 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  %403 = load i32, i32* %402, align 4
  %404 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %401, i32 67, i32 %403)
  %405 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %406 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 2
  %407 = load i32, i32* %406, align 4
  %408 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %405, i32 122, i32 %407)
  %409 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %410 = load i32, i32* @BWN_PHY_RFOVER, align 4
  %411 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 2
  %412 = load i32, i32* %411, align 8
  %413 = or i32 %412, 3
  %414 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %409, i32 %410, i32 %413)
  %415 = call i32 @DELAY(i32 10)
  %416 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %417 = load i32, i32* @BWN_PHY_RFOVER, align 4
  %418 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 2
  %419 = load i32, i32* %418, align 8
  %420 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %416, i32 %417, i32 %419)
  %421 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %422 = load i32, i32* @BWN_PHY_RFOVERVAL, align 4
  %423 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 3
  %424 = load i32, i32* %423, align 4
  %425 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %421, i32 %422, i32 %424)
  %426 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %427 = load i32, i32* @BWN_PHY_CRS0, align 4
  %428 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %429 = load i32, i32* %428, align 16
  %430 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %426, i32 %427, i32 %429)
  %431 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %432 = load i32, i32* @BWN_PHY_CCKBBANDCFG, align 4
  %433 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 1
  %434 = load i32, i32* %433, align 4
  %435 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %431, i32 %432, i32 %434)
  %436 = load i32, i32* %14, align 4
  %437 = mul nsw i32 %436, 6
  %438 = load i32, i32* %13, align 4
  %439 = mul nsw i32 %438, 4
  %440 = sub nsw i32 %437, %439
  %441 = sub nsw i32 %440, 11
  %442 = load %struct.bwn_phy_g*, %struct.bwn_phy_g** %4, align 8
  %443 = getelementptr inbounds %struct.bwn_phy_g, %struct.bwn_phy_g* %442, i32 0, i32 0
  store i32 %441, i32* %443, align 4
  %444 = load i32, i32* %12, align 4
  %445 = mul nsw i32 %444, 2
  %446 = load %struct.bwn_phy_g*, %struct.bwn_phy_g** %4, align 8
  %447 = getelementptr inbounds %struct.bwn_phy_g, %struct.bwn_phy_g* %446, i32 0, i32 1
  store i32 %445, i32* %447, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @BWN_PHY_READ(%struct.bwn_mac*, i32) #2

declare dso_local i32 @BWN_PHY_CCK(i32) #2

declare dso_local i32 @BWN_RF_READ(%struct.bwn_mac*, i32) #2

declare dso_local i32 @BWN_PHY_MASK(%struct.bwn_mac*, i32, i32) #2

declare dso_local i32 @BWN_PHY_SET(%struct.bwn_mac*, i32, i32) #2

declare dso_local i32 @BWN_PHY_SETMASK(%struct.bwn_mac*, i32, i32, i32) #2

declare dso_local i32 @BWN_PHY_WRITE(%struct.bwn_mac*, i32, i32) #2

declare dso_local i32 @BWN_RF_WRITE(%struct.bwn_mac*, i32, i32) #2

declare dso_local i32 @BWN_RF_SETMASK(%struct.bwn_mac*, i32, i32, i32) #2

declare dso_local i32 @bwn_phy_g_set_bbatt(%struct.bwn_mac*, i32) #2

declare dso_local i32 @BWN_RF_MASK(%struct.bwn_mac*, i32, i32) #2

declare dso_local i32 @DELAY(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
