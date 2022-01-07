; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_lp.c_bwn_phy_lp_b2062_switch_channel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_lp.c_bwn_phy_lp_b2062_switch_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_b206x_chan = type { i64, i32* }
%struct.bwn_mac = type { %struct.TYPE_2__, %struct.bwn_softc* }
%struct.TYPE_2__ = type { %struct.bwn_phy_lp }
%struct.bwn_phy_lp = type { i32 }
%struct.bwn_softc = type { i32 }

@bwn_b2062_chantable = common dso_local global %struct.bwn_b206x_chan* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@BHND_CLOCK_ALP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"failed to fetch clock frequency: %d\00", align 1
@BWN_B2062_S_RFPLLCTL14 = common dso_local global i32 0, align 4
@BWN_B2062_N_LGENATUNE0 = common dso_local global i32 0, align 4
@BWN_B2062_N_LGENATUNE2 = common dso_local global i32 0, align 4
@BWN_B2062_N_LGENATUNE3 = common dso_local global i32 0, align 4
@BWN_B2062_N_TX_TUNE = common dso_local global i32 0, align 4
@BWN_B2062_S_LGENG_CTL1 = common dso_local global i32 0, align 4
@BWN_B2062_N_LGENACTL5 = common dso_local global i32 0, align 4
@BWN_B2062_N_LGENACTL6 = common dso_local global i32 0, align 4
@BWN_B2062_N_TX_PGA = common dso_local global i32 0, align 4
@BWN_B2062_N_TX_PAD = common dso_local global i32 0, align 4
@BWN_B2062_S_RFPLLCTL33 = common dso_local global i32 0, align 4
@BWN_B2062_S_RFPLLCTL34 = common dso_local global i32 0, align 4
@BWN_B2062_S_RFPLLCTL26 = common dso_local global i32 0, align 4
@BWN_B2062_S_RFPLLCTL27 = common dso_local global i32 0, align 4
@BWN_B2062_S_RFPLLCTL28 = common dso_local global i32 0, align 4
@BWN_B2062_S_RFPLLCTL29 = common dso_local global i32 0, align 4
@BWN_B2062_S_RFPLLCTL19 = common dso_local global i32 0, align 4
@BWN_B2062_S_RFPLLCTL23 = common dso_local global i32 0, align 4
@BWN_B2062_S_RFPLLCTL24 = common dso_local global i32 0, align 4
@BWN_B2062_S_RFPLLCTL3 = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bwn_mac*, i64)* @bwn_phy_lp_b2062_switch_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwn_phy_lp_b2062_switch_channel(%struct.bwn_mac* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bwn_mac*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.bwn_softc*, align 8
  %7 = alloca %struct.bwn_phy_lp*, align 8
  %8 = alloca %struct.bwn_b206x_chan*, align 8
  %9 = alloca [9 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %14 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %13, i32 0, i32 1
  %15 = load %struct.bwn_softc*, %struct.bwn_softc** %14, align 8
  store %struct.bwn_softc* %15, %struct.bwn_softc** %6, align 8
  %16 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %17 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store %struct.bwn_phy_lp* %18, %struct.bwn_phy_lp** %7, align 8
  store %struct.bwn_b206x_chan* null, %struct.bwn_b206x_chan** %8, align 8
  store i32 0, i32* %12, align 4
  br label %19

19:                                               ; preds = %39, %2
  %20 = load i32, i32* %12, align 4
  %21 = load %struct.bwn_b206x_chan*, %struct.bwn_b206x_chan** @bwn_b2062_chantable, align 8
  %22 = call i32 @N(%struct.bwn_b206x_chan* %21)
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %42

24:                                               ; preds = %19
  %25 = load %struct.bwn_b206x_chan*, %struct.bwn_b206x_chan** @bwn_b2062_chantable, align 8
  %26 = load i32, i32* %12, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.bwn_b206x_chan, %struct.bwn_b206x_chan* %25, i64 %27
  %29 = getelementptr inbounds %struct.bwn_b206x_chan, %struct.bwn_b206x_chan* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %5, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %24
  %34 = load %struct.bwn_b206x_chan*, %struct.bwn_b206x_chan** @bwn_b2062_chantable, align 8
  %35 = load i32, i32* %12, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.bwn_b206x_chan, %struct.bwn_b206x_chan* %34, i64 %36
  store %struct.bwn_b206x_chan* %37, %struct.bwn_b206x_chan** %8, align 8
  br label %42

38:                                               ; preds = %24
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %12, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %12, align 4
  br label %19

42:                                               ; preds = %33, %19
  %43 = load %struct.bwn_b206x_chan*, %struct.bwn_b206x_chan** %8, align 8
  %44 = icmp eq %struct.bwn_b206x_chan* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i32, i32* @EINVAL, align 4
  store i32 %46, i32* %3, align 4
  br label %325

47:                                               ; preds = %42
  %48 = load %struct.bwn_softc*, %struct.bwn_softc** %6, align 8
  %49 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @BHND_CLOCK_ALP, align 4
  %52 = call i32 @bhnd_get_clock_freq(i32 %50, i32 %51, i32* %10)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %47
  %56 = load %struct.bwn_softc*, %struct.bwn_softc** %6, align 8
  %57 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @device_printf(i32 %58, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* %11, align 4
  store i32 %61, i32* %3, align 4
  br label %325

62:                                               ; preds = %47
  %63 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %64 = load i32, i32* @BWN_B2062_S_RFPLLCTL14, align 4
  %65 = call i32 @BWN_RF_SET(%struct.bwn_mac* %63, i32 %64, i32 4)
  %66 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %67 = load i32, i32* @BWN_B2062_N_LGENATUNE0, align 4
  %68 = load %struct.bwn_b206x_chan*, %struct.bwn_b206x_chan** %8, align 8
  %69 = getelementptr inbounds %struct.bwn_b206x_chan, %struct.bwn_b206x_chan* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %66, i32 %67, i32 %72)
  %74 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %75 = load i32, i32* @BWN_B2062_N_LGENATUNE2, align 4
  %76 = load %struct.bwn_b206x_chan*, %struct.bwn_b206x_chan** %8, align 8
  %77 = getelementptr inbounds %struct.bwn_b206x_chan, %struct.bwn_b206x_chan* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %74, i32 %75, i32 %80)
  %82 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %83 = load i32, i32* @BWN_B2062_N_LGENATUNE3, align 4
  %84 = load %struct.bwn_b206x_chan*, %struct.bwn_b206x_chan** %8, align 8
  %85 = getelementptr inbounds %struct.bwn_b206x_chan, %struct.bwn_b206x_chan* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 2
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %82, i32 %83, i32 %88)
  %90 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %91 = load i32, i32* @BWN_B2062_N_TX_TUNE, align 4
  %92 = load %struct.bwn_b206x_chan*, %struct.bwn_b206x_chan** %8, align 8
  %93 = getelementptr inbounds %struct.bwn_b206x_chan, %struct.bwn_b206x_chan* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 3
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %90, i32 %91, i32 %96)
  %98 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %99 = load i32, i32* @BWN_B2062_S_LGENG_CTL1, align 4
  %100 = load %struct.bwn_b206x_chan*, %struct.bwn_b206x_chan** %8, align 8
  %101 = getelementptr inbounds %struct.bwn_b206x_chan, %struct.bwn_b206x_chan* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 4
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %98, i32 %99, i32 %104)
  %106 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %107 = load i32, i32* @BWN_B2062_N_LGENACTL5, align 4
  %108 = load %struct.bwn_b206x_chan*, %struct.bwn_b206x_chan** %8, align 8
  %109 = getelementptr inbounds %struct.bwn_b206x_chan, %struct.bwn_b206x_chan* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 5
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %106, i32 %107, i32 %112)
  %114 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %115 = load i32, i32* @BWN_B2062_N_LGENACTL6, align 4
  %116 = load %struct.bwn_b206x_chan*, %struct.bwn_b206x_chan** %8, align 8
  %117 = getelementptr inbounds %struct.bwn_b206x_chan, %struct.bwn_b206x_chan* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 6
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %114, i32 %115, i32 %120)
  %122 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %123 = load i32, i32* @BWN_B2062_N_TX_PGA, align 4
  %124 = load %struct.bwn_b206x_chan*, %struct.bwn_b206x_chan** %8, align 8
  %125 = getelementptr inbounds %struct.bwn_b206x_chan, %struct.bwn_b206x_chan* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 7
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %122, i32 %123, i32 %128)
  %130 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %131 = load i32, i32* @BWN_B2062_N_TX_PAD, align 4
  %132 = load %struct.bwn_b206x_chan*, %struct.bwn_b206x_chan** %8, align 8
  %133 = getelementptr inbounds %struct.bwn_b206x_chan, %struct.bwn_b206x_chan* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 8
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %130, i32 %131, i32 %136)
  %138 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %139 = load i32, i32* @BWN_B2062_S_RFPLLCTL33, align 4
  %140 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %138, i32 %139, i32 204)
  %141 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %142 = load i32, i32* @BWN_B2062_S_RFPLLCTL34, align 4
  %143 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %141, i32 %142, i32 7)
  %144 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %145 = call i32 @bwn_phy_lp_b2062_reset_pllbias(%struct.bwn_mac* %144)
  %146 = load i32, i32* %10, align 4
  %147 = sdiv i32 %146, 1000
  %148 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 0
  store i32 %147, i32* %148, align 16
  %149 = load %struct.bwn_phy_lp*, %struct.bwn_phy_lp** %7, align 8
  %150 = getelementptr inbounds %struct.bwn_phy_lp, %struct.bwn_phy_lp* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = mul nsw i32 %151, 1000
  %153 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 1
  store i32 %152, i32* %153, align 4
  %154 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 1
  %155 = load i32, i32* %154, align 4
  %156 = load i64, i64* %5, align 8
  %157 = call i32 @ieee80211_ieee2mhz(i64 %156, i32 0)
  %158 = mul nsw i32 %155, %157
  %159 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 2
  store i32 %158, i32* %159, align 8
  %160 = load i64, i64* %5, align 8
  %161 = call i32 @ieee80211_ieee2mhz(i64 %160, i32 0)
  %162 = icmp slt i32 %161, 4000
  br i1 %162, label %163, label %167

163:                                              ; preds = %62
  %164 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 2
  %165 = load i32, i32* %164, align 8
  %166 = mul nsw i32 %165, 2
  store i32 %166, i32* %164, align 8
  br label %167

167:                                              ; preds = %163, %62
  %168 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 0
  %169 = load i32, i32* %168, align 16
  %170 = mul nsw i32 48, %169
  %171 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 3
  store i32 %170, i32* %171, align 4
  %172 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 2
  %173 = load i32, i32* %172, align 8
  %174 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 3
  %175 = load i32, i32* %174, align 4
  %176 = sdiv i32 %173, %175
  %177 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 5
  store i32 %176, i32* %177, align 4
  %178 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 2
  %179 = load i32, i32* %178, align 8
  %180 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 3
  %181 = load i32, i32* %180, align 4
  %182 = srem i32 %179, %181
  %183 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 6
  store i32 %182, i32* %183, align 8
  %184 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %185 = load i32, i32* @BWN_B2062_S_RFPLLCTL26, align 4
  %186 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 5
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %184, i32 %185, i32 %187)
  %189 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 6
  %190 = load i32, i32* %189, align 8
  %191 = mul nsw i32 %190, 256
  %192 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 4
  store i32 %191, i32* %192, align 16
  %193 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 4
  %194 = load i32, i32* %193, align 16
  %195 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 3
  %196 = load i32, i32* %195, align 4
  %197 = sdiv i32 %194, %196
  %198 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 5
  store i32 %197, i32* %198, align 4
  %199 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 4
  %200 = load i32, i32* %199, align 16
  %201 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 3
  %202 = load i32, i32* %201, align 4
  %203 = srem i32 %200, %202
  %204 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 6
  store i32 %203, i32* %204, align 8
  %205 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %206 = load i32, i32* @BWN_B2062_S_RFPLLCTL27, align 4
  %207 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 5
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %205, i32 %206, i32 %208)
  %210 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 6
  %211 = load i32, i32* %210, align 8
  %212 = mul nsw i32 %211, 256
  %213 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 4
  store i32 %212, i32* %213, align 16
  %214 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 4
  %215 = load i32, i32* %214, align 16
  %216 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 3
  %217 = load i32, i32* %216, align 4
  %218 = sdiv i32 %215, %217
  %219 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 5
  store i32 %218, i32* %219, align 4
  %220 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 4
  %221 = load i32, i32* %220, align 16
  %222 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 3
  %223 = load i32, i32* %222, align 4
  %224 = srem i32 %221, %223
  %225 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 6
  store i32 %224, i32* %225, align 8
  %226 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %227 = load i32, i32* @BWN_B2062_S_RFPLLCTL28, align 4
  %228 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 5
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %226, i32 %227, i32 %229)
  %231 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 6
  %232 = load i32, i32* %231, align 8
  %233 = mul nsw i32 %232, 256
  %234 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 4
  store i32 %233, i32* %234, align 16
  %235 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 4
  %236 = load i32, i32* %235, align 16
  %237 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 3
  %238 = load i32, i32* %237, align 4
  %239 = sdiv i32 %236, %238
  %240 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 5
  store i32 %239, i32* %240, align 4
  %241 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 4
  %242 = load i32, i32* %241, align 16
  %243 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 3
  %244 = load i32, i32* %243, align 4
  %245 = srem i32 %242, %244
  %246 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 6
  store i32 %245, i32* %246, align 8
  %247 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %248 = load i32, i32* @BWN_B2062_S_RFPLLCTL29, align 4
  %249 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 5
  %250 = load i32, i32* %249, align 4
  %251 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 6
  %252 = load i32, i32* %251, align 8
  %253 = mul nsw i32 2, %252
  %254 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 3
  %255 = load i32, i32* %254, align 4
  %256 = sdiv i32 %253, %255
  %257 = add nsw i32 %250, %256
  %258 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %247, i32 %248, i32 %257)
  %259 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %260 = load i32, i32* @BWN_B2062_S_RFPLLCTL19, align 4
  %261 = call i32 @BWN_RF_READ(%struct.bwn_mac* %259, i32 %260)
  %262 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 7
  store i32 %261, i32* %262, align 4
  %263 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 2
  %264 = load i32, i32* %263, align 8
  %265 = mul nsw i32 2, %264
  %266 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 7
  %267 = load i32, i32* %266, align 4
  %268 = add nsw i32 %267, 1
  %269 = mul nsw i32 %265, %268
  %270 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 0
  %271 = load i32, i32* %270, align 16
  %272 = mul nsw i32 3, %271
  %273 = add nsw i32 %269, %272
  %274 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 0
  %275 = load i32, i32* %274, align 16
  %276 = mul nsw i32 6, %275
  %277 = sdiv i32 %273, %276
  %278 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 8
  store i32 %277, i32* %278, align 16
  %279 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %280 = load i32, i32* @BWN_B2062_S_RFPLLCTL23, align 4
  %281 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 8
  %282 = load i32, i32* %281, align 16
  %283 = ashr i32 %282, 8
  %284 = add nsw i32 %283, 16
  %285 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %279, i32 %280, i32 %284)
  %286 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %287 = load i32, i32* @BWN_B2062_S_RFPLLCTL24, align 4
  %288 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 8
  %289 = load i32, i32* %288, align 16
  %290 = and i32 %289, 255
  %291 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %286, i32 %287, i32 %290)
  %292 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %293 = call i32 @bwn_phy_lp_b2062_vco_calib(%struct.bwn_mac* %292)
  %294 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %295 = load i32, i32* @BWN_B2062_S_RFPLLCTL3, align 4
  %296 = call i32 @BWN_RF_READ(%struct.bwn_mac* %294, i32 %295)
  %297 = and i32 %296, 16
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %321

299:                                              ; preds = %167
  %300 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %301 = load i32, i32* @BWN_B2062_S_RFPLLCTL33, align 4
  %302 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %300, i32 %301, i32 252)
  %303 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %304 = load i32, i32* @BWN_B2062_S_RFPLLCTL34, align 4
  %305 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %303, i32 %304, i32 0)
  %306 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %307 = call i32 @bwn_phy_lp_b2062_reset_pllbias(%struct.bwn_mac* %306)
  %308 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %309 = call i32 @bwn_phy_lp_b2062_vco_calib(%struct.bwn_mac* %308)
  %310 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %311 = load i32, i32* @BWN_B2062_S_RFPLLCTL3, align 4
  %312 = call i32 @BWN_RF_READ(%struct.bwn_mac* %310, i32 %311)
  %313 = and i32 %312, 16
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %320

315:                                              ; preds = %299
  %316 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %317 = load i32, i32* @BWN_B2062_S_RFPLLCTL14, align 4
  %318 = call i32 @BWN_RF_MASK(%struct.bwn_mac* %316, i32 %317, i32 -5)
  %319 = load i32, i32* @EIO, align 4
  store i32 %319, i32* %3, align 4
  br label %325

320:                                              ; preds = %299
  br label %321

321:                                              ; preds = %320, %167
  %322 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %323 = load i32, i32* @BWN_B2062_S_RFPLLCTL14, align 4
  %324 = call i32 @BWN_RF_MASK(%struct.bwn_mac* %322, i32 %323, i32 -5)
  store i32 0, i32* %3, align 4
  br label %325

325:                                              ; preds = %321, %315, %55, %45
  %326 = load i32, i32* %3, align 4
  ret i32 %326
}

declare dso_local i32 @N(%struct.bwn_b206x_chan*) #1

declare dso_local i32 @bhnd_get_clock_freq(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @BWN_RF_SET(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @BWN_RF_WRITE(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @bwn_phy_lp_b2062_reset_pllbias(%struct.bwn_mac*) #1

declare dso_local i32 @ieee80211_ieee2mhz(i64, i32) #1

declare dso_local i32 @BWN_RF_READ(%struct.bwn_mac*, i32) #1

declare dso_local i32 @bwn_phy_lp_b2062_vco_calib(%struct.bwn_mac*) #1

declare dso_local i32 @BWN_RF_MASK(%struct.bwn_mac*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
