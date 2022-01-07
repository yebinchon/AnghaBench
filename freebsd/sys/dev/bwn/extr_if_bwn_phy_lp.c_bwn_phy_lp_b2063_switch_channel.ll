; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_lp.c_bwn_phy_lp_b2063_switch_channel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_lp.c_bwn_phy_lp_b2063_switch_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_b206x_chan = type { i64, i32*, i32 }
%struct.bwn_mac = type { %struct.bwn_softc* }
%struct.bwn_softc = type { i32 }

@bwn_phy_lp_b2063_switch_channel.bc = internal global %struct.bwn_b206x_chan* null, align 8
@bwn_b2063_chantable = common dso_local global %struct.bwn_b206x_chan* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@BHND_CLOCK_ALP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"failed to fetch clock frequency: %d\00", align 1
@BWN_B2063_LOGEN_VCOBUF1 = common dso_local global i32 0, align 4
@BWN_B2063_LOGEN_MIXER2 = common dso_local global i32 0, align 4
@BWN_B2063_LOGEN_BUF2 = common dso_local global i32 0, align 4
@BWN_B2063_LOGEN_RCCR1 = common dso_local global i32 0, align 4
@BWN_B2063_A_RX_1ST3 = common dso_local global i32 0, align 4
@BWN_B2063_A_RX_2ND1 = common dso_local global i32 0, align 4
@BWN_B2063_A_RX_2ND4 = common dso_local global i32 0, align 4
@BWN_B2063_A_RX_2ND7 = common dso_local global i32 0, align 4
@BWN_B2063_A_RX_PS6 = common dso_local global i32 0, align 4
@BWN_B2063_TX_RF_CTL2 = common dso_local global i32 0, align 4
@BWN_B2063_TX_RF_CTL5 = common dso_local global i32 0, align 4
@BWN_B2063_PA_CTL11 = common dso_local global i32 0, align 4
@BWN_B2063_COM15 = common dso_local global i32 0, align 4
@BWN_B2063_JTAG_VCO_CALIB3 = common dso_local global i32 0, align 4
@BWN_B2063_JTAG_VCO_CALIB6 = common dso_local global i32 0, align 4
@BWN_B2063_JTAG_VCO_CALIB7 = common dso_local global i32 0, align 4
@BWN_B2063_JTAG_VCO_CALIB5 = common dso_local global i32 0, align 4
@BWN_B2063_JTAG_VCO_CALIB8 = common dso_local global i32 0, align 4
@BWN_B2063_JTAG_SG1 = common dso_local global i32 0, align 4
@BWN_B2063_JTAG_SG2 = common dso_local global i32 0, align 4
@BWN_B2063_JTAG_SG3 = common dso_local global i32 0, align 4
@BWN_B2063_JTAG_SG4 = common dso_local global i32 0, align 4
@BWN_B2063_JTAG_LF1 = common dso_local global i32 0, align 4
@BWN_B2063_JTAG_LF2 = common dso_local global i32 0, align 4
@BWN_B2063_JTAG_LF3 = common dso_local global i32 0, align 4
@BWN_B2063_JTAG_LF4 = common dso_local global i32 0, align 4
@BWN_B2063_JTAG_CP2 = common dso_local global i32 0, align 4
@BWN_B2063_JTAG_CP3 = common dso_local global i32 0, align 4
@BWN_B2063_JTAG_XTAL_12 = common dso_local global i32 0, align 4
@BWN_B2063_JTAG_VCO1 = common dso_local global i32 0, align 4
@BWN_B2063_PLL_SP2 = common dso_local global i32 0, align 4
@BWN_B2063_PLL_SP1 = common dso_local global i32 0, align 4
@BWN_B2063_JTAG_CALNRST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bwn_mac*, i64)* @bwn_phy_lp_b2063_switch_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwn_phy_lp_b2063_switch_channel(%struct.bwn_mac* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bwn_mac*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.bwn_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [3 x i32], align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [6 x i32], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %4, align 8
  store i64 %1, i64* %5, align 8
  %21 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %22 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %21, i32 0, i32 0
  %23 = load %struct.bwn_softc*, %struct.bwn_softc** %22, align 8
  store %struct.bwn_softc* %23, %struct.bwn_softc** %6, align 8
  store i32 0, i32* %19, align 4
  br label %24

24:                                               ; preds = %44, %2
  %25 = load i32, i32* %19, align 4
  %26 = load %struct.bwn_b206x_chan*, %struct.bwn_b206x_chan** @bwn_b2063_chantable, align 8
  %27 = call i32 @N(%struct.bwn_b206x_chan* %26)
  %28 = icmp slt i32 %25, %27
  br i1 %28, label %29, label %47

29:                                               ; preds = %24
  %30 = load %struct.bwn_b206x_chan*, %struct.bwn_b206x_chan** @bwn_b2063_chantable, align 8
  %31 = load i32, i32* %19, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.bwn_b206x_chan, %struct.bwn_b206x_chan* %30, i64 %32
  %34 = getelementptr inbounds %struct.bwn_b206x_chan, %struct.bwn_b206x_chan* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %5, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %29
  %39 = load %struct.bwn_b206x_chan*, %struct.bwn_b206x_chan** @bwn_b2063_chantable, align 8
  %40 = load i32, i32* %19, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.bwn_b206x_chan, %struct.bwn_b206x_chan* %39, i64 %41
  store %struct.bwn_b206x_chan* %42, %struct.bwn_b206x_chan** @bwn_phy_lp_b2063_switch_channel.bc, align 8
  br label %47

43:                                               ; preds = %29
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %19, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %19, align 4
  br label %24

47:                                               ; preds = %38, %24
  %48 = load %struct.bwn_b206x_chan*, %struct.bwn_b206x_chan** @bwn_phy_lp_b2063_switch_channel.bc, align 8
  %49 = icmp eq %struct.bwn_b206x_chan* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i32, i32* @EINVAL, align 4
  store i32 %51, i32* %3, align 4
  br label %479

52:                                               ; preds = %47
  %53 = load %struct.bwn_softc*, %struct.bwn_softc** %6, align 8
  %54 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @BHND_CLOCK_ALP, align 4
  %57 = call i32 @bhnd_get_clock_freq(i32 %55, i32 %56, i32* %17)
  store i32 %57, i32* %18, align 4
  %58 = load i32, i32* %18, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %52
  %61 = load %struct.bwn_softc*, %struct.bwn_softc** %6, align 8
  %62 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %18, align 4
  %65 = call i32 @device_printf(i32 %63, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* %18, align 4
  store i32 %66, i32* %3, align 4
  br label %479

67:                                               ; preds = %52
  %68 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %69 = load i32, i32* @BWN_B2063_LOGEN_VCOBUF1, align 4
  %70 = load %struct.bwn_b206x_chan*, %struct.bwn_b206x_chan** @bwn_phy_lp_b2063_switch_channel.bc, align 8
  %71 = getelementptr inbounds %struct.bwn_b206x_chan, %struct.bwn_b206x_chan* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %68, i32 %69, i32 %74)
  %76 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %77 = load i32, i32* @BWN_B2063_LOGEN_MIXER2, align 4
  %78 = load %struct.bwn_b206x_chan*, %struct.bwn_b206x_chan** @bwn_phy_lp_b2063_switch_channel.bc, align 8
  %79 = getelementptr inbounds %struct.bwn_b206x_chan, %struct.bwn_b206x_chan* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %76, i32 %77, i32 %82)
  %84 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %85 = load i32, i32* @BWN_B2063_LOGEN_BUF2, align 4
  %86 = load %struct.bwn_b206x_chan*, %struct.bwn_b206x_chan** @bwn_phy_lp_b2063_switch_channel.bc, align 8
  %87 = getelementptr inbounds %struct.bwn_b206x_chan, %struct.bwn_b206x_chan* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 2
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %84, i32 %85, i32 %90)
  %92 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %93 = load i32, i32* @BWN_B2063_LOGEN_RCCR1, align 4
  %94 = load %struct.bwn_b206x_chan*, %struct.bwn_b206x_chan** @bwn_phy_lp_b2063_switch_channel.bc, align 8
  %95 = getelementptr inbounds %struct.bwn_b206x_chan, %struct.bwn_b206x_chan* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 3
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %92, i32 %93, i32 %98)
  %100 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %101 = load i32, i32* @BWN_B2063_A_RX_1ST3, align 4
  %102 = load %struct.bwn_b206x_chan*, %struct.bwn_b206x_chan** @bwn_phy_lp_b2063_switch_channel.bc, align 8
  %103 = getelementptr inbounds %struct.bwn_b206x_chan, %struct.bwn_b206x_chan* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 4
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %100, i32 %101, i32 %106)
  %108 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %109 = load i32, i32* @BWN_B2063_A_RX_2ND1, align 4
  %110 = load %struct.bwn_b206x_chan*, %struct.bwn_b206x_chan** @bwn_phy_lp_b2063_switch_channel.bc, align 8
  %111 = getelementptr inbounds %struct.bwn_b206x_chan, %struct.bwn_b206x_chan* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 5
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %108, i32 %109, i32 %114)
  %116 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %117 = load i32, i32* @BWN_B2063_A_RX_2ND4, align 4
  %118 = load %struct.bwn_b206x_chan*, %struct.bwn_b206x_chan** @bwn_phy_lp_b2063_switch_channel.bc, align 8
  %119 = getelementptr inbounds %struct.bwn_b206x_chan, %struct.bwn_b206x_chan* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 6
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %116, i32 %117, i32 %122)
  %124 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %125 = load i32, i32* @BWN_B2063_A_RX_2ND7, align 4
  %126 = load %struct.bwn_b206x_chan*, %struct.bwn_b206x_chan** @bwn_phy_lp_b2063_switch_channel.bc, align 8
  %127 = getelementptr inbounds %struct.bwn_b206x_chan, %struct.bwn_b206x_chan* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 7
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %124, i32 %125, i32 %130)
  %132 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %133 = load i32, i32* @BWN_B2063_A_RX_PS6, align 4
  %134 = load %struct.bwn_b206x_chan*, %struct.bwn_b206x_chan** @bwn_phy_lp_b2063_switch_channel.bc, align 8
  %135 = getelementptr inbounds %struct.bwn_b206x_chan, %struct.bwn_b206x_chan* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 8
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %132, i32 %133, i32 %138)
  %140 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %141 = load i32, i32* @BWN_B2063_TX_RF_CTL2, align 4
  %142 = load %struct.bwn_b206x_chan*, %struct.bwn_b206x_chan** @bwn_phy_lp_b2063_switch_channel.bc, align 8
  %143 = getelementptr inbounds %struct.bwn_b206x_chan, %struct.bwn_b206x_chan* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 9
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %140, i32 %141, i32 %146)
  %148 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %149 = load i32, i32* @BWN_B2063_TX_RF_CTL5, align 4
  %150 = load %struct.bwn_b206x_chan*, %struct.bwn_b206x_chan** @bwn_phy_lp_b2063_switch_channel.bc, align 8
  %151 = getelementptr inbounds %struct.bwn_b206x_chan, %struct.bwn_b206x_chan* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 10
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %148, i32 %149, i32 %154)
  %156 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %157 = load i32, i32* @BWN_B2063_PA_CTL11, align 4
  %158 = load %struct.bwn_b206x_chan*, %struct.bwn_b206x_chan** @bwn_phy_lp_b2063_switch_channel.bc, align 8
  %159 = getelementptr inbounds %struct.bwn_b206x_chan, %struct.bwn_b206x_chan* %158, i32 0, i32 1
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 11
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %156, i32 %157, i32 %162)
  %164 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %165 = load i32, i32* @BWN_B2063_COM15, align 4
  %166 = call i32 @BWN_RF_READ(%struct.bwn_mac* %164, i32 %165)
  store i32 %166, i32* %14, align 4
  %167 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %168 = load i32, i32* @BWN_B2063_COM15, align 4
  %169 = call i32 @BWN_RF_SET(%struct.bwn_mac* %167, i32 %168, i32 30)
  %170 = load %struct.bwn_b206x_chan*, %struct.bwn_b206x_chan** @bwn_phy_lp_b2063_switch_channel.bc, align 8
  %171 = getelementptr inbounds %struct.bwn_b206x_chan, %struct.bwn_b206x_chan* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.bwn_b206x_chan*, %struct.bwn_b206x_chan** @bwn_phy_lp_b2063_switch_channel.bc, align 8
  %174 = getelementptr inbounds %struct.bwn_b206x_chan, %struct.bwn_b206x_chan* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = icmp sgt i32 %175, 4000
  %177 = zext i1 %176 to i64
  %178 = select i1 %176, i32 1, i32 2
  %179 = shl i32 %172, %178
  store i32 %179, i32* %9, align 4
  %180 = load i32, i32* %17, align 4
  %181 = mul nsw i32 %180, 3
  store i32 %181, i32* %8, align 4
  %182 = load i32, i32* %17, align 4
  %183 = icmp sle i32 %182, 26000000
  %184 = zext i1 %183 to i64
  %185 = select i1 %183, i32 1, i32 2
  store i32 %185, i32* %20, align 4
  %186 = load i32, i32* %17, align 4
  %187 = mul nsw i32 8, %186
  %188 = load i32, i32* %20, align 4
  %189 = mul nsw i32 %188, 5000000
  %190 = sdiv i32 %187, %189
  %191 = add nsw i32 %190, 1
  %192 = ashr i32 %191, 1
  %193 = sub nsw i32 %192, 1
  store i32 %193, i32* %11, align 4
  %194 = load i32, i32* %17, align 4
  %195 = mul nsw i32 8, %194
  %196 = load i32, i32* %20, align 4
  %197 = load i32, i32* %11, align 4
  %198 = add nsw i32 %197, 1
  %199 = mul nsw i32 %196, %198
  %200 = sdiv i32 %195, %199
  %201 = add nsw i32 %200, 999999
  %202 = sdiv i32 %201, 1000000
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %12, align 4
  %204 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %205 = load i32, i32* @BWN_B2063_JTAG_VCO_CALIB3, align 4
  %206 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %204, i32 %205, i32 2)
  %207 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %208 = load i32, i32* @BWN_B2063_JTAG_VCO_CALIB6, align 4
  %209 = load i32, i32* %11, align 4
  %210 = ashr i32 %209, 2
  %211 = call i32 @BWN_RF_SETMASK(%struct.bwn_mac* %207, i32 %208, i32 65528, i32 %210)
  %212 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %213 = load i32, i32* @BWN_B2063_JTAG_VCO_CALIB7, align 4
  %214 = load i32, i32* %11, align 4
  %215 = shl i32 %214, 5
  %216 = call i32 @BWN_RF_SETMASK(%struct.bwn_mac* %212, i32 %213, i32 65439, i32 %215)
  %217 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %218 = load i32, i32* @BWN_B2063_JTAG_VCO_CALIB5, align 4
  %219 = load i32, i32* %12, align 4
  %220 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %217, i32 %218, i32 %219)
  %221 = load i32, i32* %17, align 4
  %222 = call i32 @bwn_phy_lp_roundup(i32 %221, i32 1000000, i32 16)
  %223 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  store i32 %222, i32* %223, align 4
  %224 = load i32, i32* %17, align 4
  %225 = load i32, i32* %20, align 4
  %226 = mul nsw i32 1000000, %225
  %227 = call i32 @bwn_phy_lp_roundup(i32 %224, i32 %226, i32 16)
  %228 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  store i32 %227, i32* %228, align 4
  %229 = load i32, i32* %9, align 4
  %230 = call i32 @bwn_phy_lp_roundup(i32 %229, i32 3, i32 16)
  %231 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 2
  store i32 %230, i32* %231, align 4
  %232 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 2
  %233 = load i32, i32* %232, align 4
  %234 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  %235 = load i32, i32* %234, align 4
  %236 = add nsw i32 %235, 16
  %237 = call i32 @bwn_phy_lp_roundup(i32 %233, i32 %236, i32 16)
  %238 = load i32, i32* %11, align 4
  %239 = add nsw i32 %238, 1
  %240 = mul nsw i32 %237, %239
  %241 = load i32, i32* %12, align 4
  %242 = add nsw i32 %241, 1
  %243 = mul nsw i32 %240, %242
  %244 = sub nsw i32 %243, 1
  store i32 %244, i32* %7, align 4
  %245 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %246 = load i32, i32* @BWN_B2063_JTAG_VCO_CALIB7, align 4
  %247 = load i32, i32* %7, align 4
  %248 = ashr i32 %247, 8
  %249 = call i32 @BWN_RF_SETMASK(%struct.bwn_mac* %245, i32 %246, i32 240, i32 %248)
  %250 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %251 = load i32, i32* @BWN_B2063_JTAG_VCO_CALIB8, align 4
  %252 = load i32, i32* %7, align 4
  %253 = and i32 %252, 255
  %254 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %250, i32 %251, i32 %253)
  %255 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 2
  %256 = load i32, i32* %255, align 4
  %257 = mul nsw i32 %256, 62500
  %258 = load i32, i32* %8, align 4
  %259 = sdiv i32 %257, %258
  %260 = shl i32 %259, 4
  %261 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 0
  store i32 %260, i32* %261, align 16
  %262 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 2
  %263 = load i32, i32* %262, align 4
  %264 = mul nsw i32 %263, 62500
  %265 = load i32, i32* %8, align 4
  %266 = srem i32 %264, %265
  %267 = shl i32 %266, 4
  %268 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 1
  store i32 %267, i32* %268, align 4
  br label %269

269:                                              ; preds = %274, %67
  %270 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 1
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* %8, align 4
  %273 = icmp sge i32 %271, %272
  br i1 %273, label %274, label %282

274:                                              ; preds = %269
  %275 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 0
  %276 = load i32, i32* %275, align 16
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %275, align 16
  %278 = load i32, i32* %8, align 4
  %279 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 1
  %280 = load i32, i32* %279, align 4
  %281 = sub nsw i32 %280, %278
  store i32 %281, i32* %279, align 4
  br label %269

282:                                              ; preds = %269
  %283 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %284 = load i32, i32* @BWN_B2063_JTAG_SG1, align 4
  %285 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 0
  %286 = load i32, i32* %285, align 16
  %287 = ashr i32 %286, 4
  %288 = call i32 @BWN_RF_SETMASK(%struct.bwn_mac* %283, i32 %284, i32 65504, i32 %287)
  %289 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %290 = load i32, i32* @BWN_B2063_JTAG_SG2, align 4
  %291 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 0
  %292 = load i32, i32* %291, align 16
  %293 = shl i32 %292, 4
  %294 = call i32 @BWN_RF_SETMASK(%struct.bwn_mac* %289, i32 %290, i32 65039, i32 %293)
  %295 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %296 = load i32, i32* @BWN_B2063_JTAG_SG2, align 4
  %297 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 0
  %298 = load i32, i32* %297, align 16
  %299 = ashr i32 %298, 16
  %300 = call i32 @BWN_RF_SETMASK(%struct.bwn_mac* %295, i32 %296, i32 65520, i32 %299)
  %301 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %302 = load i32, i32* @BWN_B2063_JTAG_SG3, align 4
  %303 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 1
  %304 = load i32, i32* %303, align 4
  %305 = ashr i32 %304, 8
  %306 = and i32 %305, 255
  %307 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %301, i32 %302, i32 %306)
  %308 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %309 = load i32, i32* @BWN_B2063_JTAG_SG4, align 4
  %310 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 1
  %311 = load i32, i32* %310, align 4
  %312 = and i32 %311, 255
  %313 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %308, i32 %309, i32 %312)
  %314 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %315 = load i32, i32* @BWN_B2063_JTAG_LF1, align 4
  %316 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %314, i32 %315, i32 185)
  %317 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %318 = load i32, i32* @BWN_B2063_JTAG_LF2, align 4
  %319 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %317, i32 %318, i32 136)
  %320 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %321 = load i32, i32* @BWN_B2063_JTAG_LF3, align 4
  %322 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %320, i32 %321, i32 40)
  %323 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %324 = load i32, i32* @BWN_B2063_JTAG_LF4, align 4
  %325 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %323, i32 %324, i32 99)
  %326 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 2
  %327 = load i32, i32* %326, align 4
  %328 = sub nsw i32 %327, 3000
  %329 = mul nsw i32 41, %328
  %330 = sdiv i32 %329, 1200
  %331 = add nsw i32 %330, 27
  %332 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 2
  store i32 %331, i32* %332, align 8
  %333 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 0
  %334 = load i32, i32* %333, align 16
  %335 = mul nsw i32 132000, %334
  %336 = call i32 @bwn_phy_lp_roundup(i32 %335, i32 8451, i32 16)
  %337 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 3
  store i32 %336, i32* %337, align 4
  %338 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 3
  %339 = load i32, i32* %338, align 4
  %340 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 2
  %341 = load i32, i32* %340, align 8
  %342 = call i32 @howmany(i32 %339, i32 %341)
  %343 = icmp sgt i32 %342, 60
  br i1 %343, label %344, label %356

344:                                              ; preds = %282
  store i32 1, i32* %15, align 4
  %345 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 3
  %346 = load i32, i32* %345, align 4
  %347 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 2
  %348 = load i32, i32* %347, align 8
  %349 = add nsw i32 %346, %348
  %350 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 2
  %351 = load i32, i32* %350, align 8
  %352 = shl i32 %351, 1
  %353 = sdiv i32 %349, %352
  %354 = sub nsw i32 %353, 8
  %355 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 4
  store i32 %354, i32* %355, align 16
  br label %368

356:                                              ; preds = %282
  store i32 0, i32* %15, align 4
  %357 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 3
  %358 = load i32, i32* %357, align 4
  %359 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 2
  %360 = load i32, i32* %359, align 8
  %361 = ashr i32 %360, 1
  %362 = add nsw i32 %358, %361
  %363 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 2
  %364 = load i32, i32* %363, align 8
  %365 = sdiv i32 %362, %364
  %366 = sub nsw i32 %365, 8
  %367 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 4
  store i32 %366, i32* %367, align 16
  br label %368

368:                                              ; preds = %356, %344
  %369 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %370 = load i32, i32* @BWN_B2063_JTAG_CP2, align 4
  %371 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 4
  %372 = load i32, i32* %371, align 16
  %373 = call i32 @BWN_RF_SETMASK(%struct.bwn_mac* %369, i32 %370, i32 65472, i32 %372)
  %374 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %375 = load i32, i32* @BWN_B2063_JTAG_CP2, align 4
  %376 = load i32, i32* %15, align 4
  %377 = shl i32 %376, 6
  %378 = call i32 @BWN_RF_SETMASK(%struct.bwn_mac* %374, i32 %375, i32 65471, i32 %377)
  %379 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %380 = load i32, i32* %379, align 4
  %381 = mul nsw i32 100, %380
  %382 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 2
  %383 = load i32, i32* %382, align 4
  %384 = call i32 @bwn_phy_lp_roundup(i32 %381, i32 %383, i32 16)
  %385 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 4
  %386 = load i32, i32* %385, align 16
  %387 = mul nsw i32 %386, 8
  %388 = mul nsw i32 %384, %387
  %389 = load i32, i32* %15, align 4
  %390 = add nsw i32 %389, 1
  %391 = mul nsw i32 %388, %390
  %392 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 5
  store i32 %391, i32* %392, align 4
  %393 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 5
  %394 = load i32, i32* %393, align 4
  %395 = icmp sgt i32 %394, 150
  br i1 %395, label %396, label %398

396:                                              ; preds = %368
  %397 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 5
  store i32 0, i32* %397, align 4
  br label %398

398:                                              ; preds = %396, %368
  %399 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %400 = load i32, i32* @BWN_B2063_JTAG_CP3, align 4
  %401 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 5
  %402 = load i32, i32* %401, align 4
  %403 = call i32 @BWN_RF_SETMASK(%struct.bwn_mac* %399, i32 %400, i32 65504, i32 %402)
  %404 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %405 = load i32, i32* @BWN_B2063_JTAG_CP3, align 4
  %406 = load i32, i32* %15, align 4
  %407 = shl i32 %406, 5
  %408 = call i32 @BWN_RF_SETMASK(%struct.bwn_mac* %404, i32 %405, i32 65503, i32 %407)
  %409 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %410 = load i32, i32* @BWN_B2063_JTAG_XTAL_12, align 4
  %411 = call i32 @BWN_RF_SETMASK(%struct.bwn_mac* %409, i32 %410, i32 65531, i32 4)
  %412 = load i32, i32* %17, align 4
  %413 = icmp sgt i32 %412, 26000000
  br i1 %413, label %414, label %418

414:                                              ; preds = %398
  %415 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %416 = load i32, i32* @BWN_B2063_JTAG_XTAL_12, align 4
  %417 = call i32 @BWN_RF_SET(%struct.bwn_mac* %415, i32 %416, i32 2)
  br label %422

418:                                              ; preds = %398
  %419 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %420 = load i32, i32* @BWN_B2063_JTAG_XTAL_12, align 4
  %421 = call i32 @BWN_RF_MASK(%struct.bwn_mac* %419, i32 %420, i32 253)
  br label %422

422:                                              ; preds = %418, %414
  %423 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %424 = load i32, i32* %423, align 4
  %425 = icmp eq i32 %424, 45
  br i1 %425, label %426, label %430

426:                                              ; preds = %422
  %427 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %428 = load i32, i32* @BWN_B2063_JTAG_VCO1, align 4
  %429 = call i32 @BWN_RF_SET(%struct.bwn_mac* %427, i32 %428, i32 2)
  br label %434

430:                                              ; preds = %422
  %431 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %432 = load i32, i32* @BWN_B2063_JTAG_VCO1, align 4
  %433 = call i32 @BWN_RF_MASK(%struct.bwn_mac* %431, i32 %432, i32 253)
  br label %434

434:                                              ; preds = %430, %426
  %435 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %436 = load i32, i32* @BWN_B2063_PLL_SP2, align 4
  %437 = call i32 @BWN_RF_SET(%struct.bwn_mac* %435, i32 %436, i32 3)
  %438 = call i32 @DELAY(i32 1)
  %439 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %440 = load i32, i32* @BWN_B2063_PLL_SP2, align 4
  %441 = call i32 @BWN_RF_MASK(%struct.bwn_mac* %439, i32 %440, i32 65532)
  %442 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %443 = load i32, i32* @BWN_B2063_PLL_SP1, align 4
  %444 = call i32 @BWN_RF_MASK(%struct.bwn_mac* %442, i32 %443, i32 -65)
  %445 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %446 = load i32, i32* @BWN_B2063_JTAG_CALNRST, align 4
  %447 = call i32 @BWN_RF_READ(%struct.bwn_mac* %445, i32 %446)
  %448 = and i32 %447, 248
  store i32 %448, i32* %16, align 4
  %449 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %450 = load i32, i32* @BWN_B2063_JTAG_CALNRST, align 4
  %451 = load i32, i32* %16, align 4
  %452 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %449, i32 %450, i32 %451)
  %453 = call i32 @DELAY(i32 1)
  %454 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %455 = load i32, i32* @BWN_B2063_JTAG_CALNRST, align 4
  %456 = load i32, i32* %16, align 4
  %457 = or i32 %456, 4
  %458 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %454, i32 %455, i32 %457)
  %459 = call i32 @DELAY(i32 1)
  %460 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %461 = load i32, i32* @BWN_B2063_JTAG_CALNRST, align 4
  %462 = load i32, i32* %16, align 4
  %463 = or i32 %462, 6
  %464 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %460, i32 %461, i32 %463)
  %465 = call i32 @DELAY(i32 1)
  %466 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %467 = load i32, i32* @BWN_B2063_JTAG_CALNRST, align 4
  %468 = load i32, i32* %16, align 4
  %469 = or i32 %468, 7
  %470 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %466, i32 %467, i32 %469)
  %471 = call i32 @DELAY(i32 300)
  %472 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %473 = load i32, i32* @BWN_B2063_PLL_SP1, align 4
  %474 = call i32 @BWN_RF_SET(%struct.bwn_mac* %472, i32 %473, i32 64)
  %475 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %476 = load i32, i32* @BWN_B2063_COM15, align 4
  %477 = load i32, i32* %14, align 4
  %478 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %475, i32 %476, i32 %477)
  store i32 0, i32* %3, align 4
  br label %479

479:                                              ; preds = %434, %60, %50
  %480 = load i32, i32* %3, align 4
  ret i32 %480
}

declare dso_local i32 @N(%struct.bwn_b206x_chan*) #1

declare dso_local i32 @bhnd_get_clock_freq(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @BWN_RF_WRITE(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @BWN_RF_READ(%struct.bwn_mac*, i32) #1

declare dso_local i32 @BWN_RF_SET(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @BWN_RF_SETMASK(%struct.bwn_mac*, i32, i32, i32) #1

declare dso_local i32 @bwn_phy_lp_roundup(i32, i32, i32) #1

declare dso_local i32 @howmany(i32, i32) #1

declare dso_local i32 @BWN_RF_MASK(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
