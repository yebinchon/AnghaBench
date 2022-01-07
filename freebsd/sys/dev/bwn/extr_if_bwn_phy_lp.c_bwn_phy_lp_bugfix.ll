; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_lp.c_bwn_phy_lp_bugfix.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_lp.c_bwn_phy_lp_bugfix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.TYPE_2__, %struct.bwn_softc* }
%struct.TYPE_2__ = type { i32, %struct.bwn_phy_lp }
%struct.bwn_phy_lp = type { i64, i32, i32, i32, i32, i64, i32 }
%struct.bwn_softc = type { i32 }
%struct.bwn_txgain = type { i32, i32, i32, i32 }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to allocate buffer.\0A\00", align 1
@BWN_PHYLP_TXPCTL_OFF = common dso_local global i64 0, align 8
@BWN_CHANNEL = common dso_local global i32 0, align 4
@BWN_PHYLP_TXPCTL_ON_SW = common dso_local global i64 0, align 8
@BWN_PHY_TX_GAIN_CTL_OVERRIDE_VAL = common dso_local global i32 0, align 4
@BWN_PHY_RF_PWR_OVERRIDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*)* @bwn_phy_lp_bugfix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_phy_lp_bugfix(%struct.bwn_mac* %0) #0 {
  %2 = alloca %struct.bwn_mac*, align 8
  %3 = alloca %struct.bwn_phy_lp*, align 8
  %4 = alloca %struct.bwn_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bwn_txgain, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [2 x i32], align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %2, align 8
  %17 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %18 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  store %struct.bwn_phy_lp* %19, %struct.bwn_phy_lp** %3, align 8
  %20 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %21 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %20, i32 0, i32 1
  %22 = load %struct.bwn_softc*, %struct.bwn_softc** %21, align 8
  store %struct.bwn_softc* %22, %struct.bwn_softc** %4, align 8
  store i32 256, i32* %5, align 4
  %23 = load i32, i32* @M_DEVBUF, align 4
  %24 = load i32, i32* @M_NOWAIT, align 4
  %25 = load i32, i32* @M_ZERO, align 4
  %26 = or i32 %24, %25
  %27 = call i64 @malloc(i32 1024, i32 %23, i32 %26)
  %28 = inttoptr i64 %27 to i32*
  store i32* %28, i32** %11, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %1
  %32 = load %struct.bwn_softc*, %struct.bwn_softc** %4, align 8
  %33 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @device_printf(i32 %34, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %262

36:                                               ; preds = %1
  %37 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %38 = call i32 @bwn_phy_lp_get_txpctlmode(%struct.bwn_mac* %37)
  %39 = load %struct.bwn_phy_lp*, %struct.bwn_phy_lp** %3, align 8
  %40 = getelementptr inbounds %struct.bwn_phy_lp, %struct.bwn_phy_lp* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %15, align 8
  %42 = load %struct.bwn_phy_lp*, %struct.bwn_phy_lp** %3, align 8
  %43 = getelementptr inbounds %struct.bwn_phy_lp, %struct.bwn_phy_lp* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %16, align 4
  %45 = load %struct.bwn_phy_lp*, %struct.bwn_phy_lp** %3, align 8
  %46 = getelementptr inbounds %struct.bwn_phy_lp, %struct.bwn_phy_lp* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %12, align 4
  %48 = load %struct.bwn_phy_lp*, %struct.bwn_phy_lp** %3, align 8
  %49 = getelementptr inbounds %struct.bwn_phy_lp, %struct.bwn_phy_lp* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %13, align 4
  %51 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %52 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %53 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %55, 2
  br i1 %56, label %57, label %59

57:                                               ; preds = %36
  %58 = call i32 @BWN_TAB_4(i32 10, i32 320)
  br label %61

59:                                               ; preds = %36
  %60 = call i32 @BWN_TAB_4(i32 7, i32 320)
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i32 [ %58, %57 ], [ %60, %59 ]
  %63 = load i32*, i32** %11, align 8
  %64 = call i32 @bwn_tab_read_multi(%struct.bwn_mac* %51, i32 %62, i32 256, i32* %63)
  %65 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %66 = call i32 @bwn_phy_lp_tblinit(%struct.bwn_mac* %65)
  %67 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %68 = call i32 @bwn_phy_lp_bbinit(%struct.bwn_mac* %67)
  %69 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %70 = call i32 @bwn_phy_lp_txpctl_init(%struct.bwn_mac* %69)
  %71 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %72 = call i32 @bwn_phy_lp_rf_onoff(%struct.bwn_mac* %71, i32 1)
  %73 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %74 = load i64, i64* @BWN_PHYLP_TXPCTL_OFF, align 8
  %75 = call i32 @bwn_phy_lp_set_txpctlmode(%struct.bwn_mac* %73, i64 %74)
  %76 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %77 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %78 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp slt i32 %80, 2
  br i1 %81, label %82, label %84

82:                                               ; preds = %61
  %83 = call i32 @BWN_TAB_4(i32 10, i32 320)
  br label %86

84:                                               ; preds = %61
  %85 = call i32 @BWN_TAB_4(i32 7, i32 320)
  br label %86

86:                                               ; preds = %84, %82
  %87 = phi i32 [ %83, %82 ], [ %85, %84 ]
  %88 = load i32*, i32** %11, align 8
  %89 = call i32 @bwn_tab_write_multi(%struct.bwn_mac* %76, i32 %87, i32 256, i32* %88)
  %90 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %91 = load i32, i32* @BWN_CHANNEL, align 4
  %92 = load %struct.bwn_phy_lp*, %struct.bwn_phy_lp** %3, align 8
  %93 = getelementptr inbounds %struct.bwn_phy_lp, %struct.bwn_phy_lp* %92, i32 0, i32 6
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @BWN_WRITE_2(%struct.bwn_mac* %90, i32 %91, i32 %94)
  %96 = load i32, i32* %12, align 4
  %97 = load %struct.bwn_phy_lp*, %struct.bwn_phy_lp** %3, align 8
  %98 = getelementptr inbounds %struct.bwn_phy_lp, %struct.bwn_phy_lp* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* %13, align 4
  %100 = load %struct.bwn_phy_lp*, %struct.bwn_phy_lp** %3, align 8
  %101 = getelementptr inbounds %struct.bwn_phy_lp, %struct.bwn_phy_lp* %100, i32 0, i32 3
  store i32 %99, i32* %101, align 8
  %102 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %103 = load %struct.bwn_phy_lp*, %struct.bwn_phy_lp** %3, align 8
  %104 = getelementptr inbounds %struct.bwn_phy_lp, %struct.bwn_phy_lp* %103, i32 0, i32 6
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @bwn_phy_lp_set_anafilter(%struct.bwn_mac* %102, i32 %105)
  %107 = load i32, i32* %16, align 4
  %108 = icmp ne i32 %107, -1
  br i1 %108, label %109, label %242

109:                                              ; preds = %86
  %110 = load i32, i32* %16, align 4
  %111 = load %struct.bwn_phy_lp*, %struct.bwn_phy_lp** %3, align 8
  %112 = getelementptr inbounds %struct.bwn_phy_lp, %struct.bwn_phy_lp* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 8
  %113 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %114 = call i32 @bwn_phy_lp_get_txpctlmode(%struct.bwn_mac* %113)
  %115 = load %struct.bwn_phy_lp*, %struct.bwn_phy_lp** %3, align 8
  %116 = getelementptr inbounds %struct.bwn_phy_lp, %struct.bwn_phy_lp* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @BWN_PHYLP_TXPCTL_OFF, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %109
  %121 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %122 = load i64, i64* @BWN_PHYLP_TXPCTL_ON_SW, align 8
  %123 = call i32 @bwn_phy_lp_set_txpctlmode(%struct.bwn_mac* %121, i64 %122)
  br label %124

124:                                              ; preds = %120, %109
  %125 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %126 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp sge i32 %128, 2
  br i1 %129, label %130, label %158

130:                                              ; preds = %124
  %131 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %132 = load i32, i32* %16, align 4
  %133 = add nsw i32 %132, 320
  %134 = call i32 @BWN_TAB_4(i32 7, i32 %133)
  %135 = call i32 @bwn_tab_read(%struct.bwn_mac* %131, i32 %134)
  store i32 %135, i32* %7, align 4
  %136 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %137 = load i32, i32* %16, align 4
  %138 = add nsw i32 %137, 192
  %139 = call i32 @BWN_TAB_4(i32 7, i32 %138)
  %140 = call i32 @bwn_tab_read(%struct.bwn_mac* %136, i32 %139)
  store i32 %140, i32* %8, align 4
  %141 = load i32, i32* %8, align 4
  %142 = ashr i32 %141, 16
  %143 = and i32 %142, 255
  %144 = getelementptr inbounds %struct.bwn_txgain, %struct.bwn_txgain* %6, i32 0, i32 0
  store i32 %143, i32* %144, align 4
  %145 = load i32, i32* %8, align 4
  %146 = and i32 %145, 255
  %147 = getelementptr inbounds %struct.bwn_txgain, %struct.bwn_txgain* %6, i32 0, i32 1
  store i32 %146, i32* %147, align 4
  %148 = load i32, i32* %8, align 4
  %149 = ashr i32 %148, 8
  %150 = and i32 %149, 255
  %151 = getelementptr inbounds %struct.bwn_txgain, %struct.bwn_txgain* %6, i32 0, i32 2
  store i32 %150, i32* %151, align 4
  %152 = load i32, i32* %7, align 4
  %153 = ashr i32 %152, 28
  %154 = and i32 %153, 255
  %155 = getelementptr inbounds %struct.bwn_txgain, %struct.bwn_txgain* %6, i32 0, i32 3
  store i32 %154, i32* %155, align 4
  %156 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %157 = call i32 @bwn_phy_lp_set_txgain(%struct.bwn_mac* %156, %struct.bwn_txgain* %6)
  br label %184

158:                                              ; preds = %124
  %159 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %160 = load i32, i32* %16, align 4
  %161 = add nsw i32 %160, 320
  %162 = call i32 @BWN_TAB_4(i32 10, i32 %161)
  %163 = call i32 @bwn_tab_read(%struct.bwn_mac* %159, i32 %162)
  store i32 %163, i32* %7, align 4
  %164 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %165 = load i32, i32* %16, align 4
  %166 = add nsw i32 %165, 192
  %167 = call i32 @BWN_TAB_4(i32 10, i32 %166)
  %168 = call i32 @bwn_tab_read(%struct.bwn_mac* %164, i32 %167)
  store i32 %168, i32* %8, align 4
  %169 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %170 = load i32, i32* @BWN_PHY_TX_GAIN_CTL_OVERRIDE_VAL, align 4
  %171 = load i32, i32* %8, align 4
  %172 = ashr i32 %171, 4
  %173 = and i32 %172, 32767
  %174 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %169, i32 %170, i32 63488, i32 %173)
  %175 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %176 = load i32, i32* %8, align 4
  %177 = and i32 %176, 7
  %178 = call i32 @bwn_phy_lp_set_txgain_dac(%struct.bwn_mac* %175, i32 %177)
  %179 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %180 = load i32, i32* %8, align 4
  %181 = ashr i32 %180, 24
  %182 = and i32 %181, 127
  %183 = call i32 @bwn_phy_lp_set_txgain_pa(%struct.bwn_mac* %179, i32 %182)
  br label %184

184:                                              ; preds = %158, %130
  %185 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %186 = load i32, i32* %7, align 4
  %187 = ashr i32 %186, 20
  %188 = and i32 %187, 255
  %189 = call i32 @bwn_phy_lp_set_bbmult(%struct.bwn_mac* %185, i32 %188)
  %190 = load i32, i32* %7, align 4
  %191 = ashr i32 %190, 10
  %192 = and i32 %191, 1023
  %193 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  store i32 %192, i32* %193, align 4
  %194 = load i32, i32* %7, align 4
  %195 = and i32 %194, 1023
  %196 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  store i32 %195, i32* %196, align 4
  %197 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %198 = call i32 @BWN_TAB_2(i32 0, i32 80)
  %199 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %200 = call i32 @bwn_tab_write_multi(%struct.bwn_mac* %197, i32 %198, i32 2, i32* %199)
  %201 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %202 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %203 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = icmp sge i32 %205, 2
  br i1 %206, label %207, label %211

207:                                              ; preds = %184
  %208 = load i32, i32* %16, align 4
  %209 = add nsw i32 %208, 448
  %210 = call i32 @BWN_TAB_4(i32 7, i32 %209)
  br label %215

211:                                              ; preds = %184
  %212 = load i32, i32* %16, align 4
  %213 = add nsw i32 %212, 448
  %214 = call i32 @BWN_TAB_4(i32 10, i32 %213)
  br label %215

215:                                              ; preds = %211, %207
  %216 = phi i32 [ %210, %207 ], [ %214, %211 ]
  %217 = call i32 @bwn_tab_read(%struct.bwn_mac* %201, i32 %216)
  store i32 %217, i32* %9, align 4
  %218 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %219 = call i32 @BWN_TAB_2(i32 0, i32 85)
  %220 = load i32, i32* %9, align 4
  %221 = and i32 %220, 65535
  %222 = call i32 @bwn_tab_write(%struct.bwn_mac* %218, i32 %219, i32 %221)
  %223 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %224 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = icmp sge i32 %226, 2
  br i1 %227, label %228, label %239

228:                                              ; preds = %215
  %229 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %230 = load i32, i32* %16, align 4
  %231 = add nsw i32 %230, 576
  %232 = call i32 @BWN_TAB_4(i32 7, i32 %231)
  %233 = call i32 @bwn_tab_read(%struct.bwn_mac* %229, i32 %232)
  store i32 %233, i32* %10, align 4
  %234 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %235 = load i32, i32* @BWN_PHY_RF_PWR_OVERRIDE, align 4
  %236 = load i32, i32* %10, align 4
  %237 = and i32 %236, 65535
  %238 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %234, i32 %235, i32 65280, i32 %237)
  br label %239

239:                                              ; preds = %228, %215
  %240 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %241 = call i32 @bwn_phy_lp_set_txgain_override(%struct.bwn_mac* %240)
  br label %242

242:                                              ; preds = %239, %86
  %243 = load %struct.bwn_phy_lp*, %struct.bwn_phy_lp** %3, align 8
  %244 = getelementptr inbounds %struct.bwn_phy_lp, %struct.bwn_phy_lp* %243, i32 0, i32 5
  %245 = load i64, i64* %244, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %250

247:                                              ; preds = %242
  %248 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %249 = call i32 @bwn_phy_lp_set_rccap(%struct.bwn_mac* %248)
  br label %250

250:                                              ; preds = %247, %242
  %251 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %252 = load %struct.bwn_phy_lp*, %struct.bwn_phy_lp** %3, align 8
  %253 = getelementptr inbounds %struct.bwn_phy_lp, %struct.bwn_phy_lp* %252, i32 0, i32 4
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @bwn_phy_lp_set_antenna(%struct.bwn_mac* %251, i32 %254)
  %256 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %257 = load i64, i64* %15, align 8
  %258 = call i32 @bwn_phy_lp_set_txpctlmode(%struct.bwn_mac* %256, i64 %257)
  %259 = load i32*, i32** %11, align 8
  %260 = load i32, i32* @M_DEVBUF, align 4
  %261 = call i32 @free(i32* %259, i32 %260)
  br label %262

262:                                              ; preds = %250, %31
  ret void
}

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bwn_phy_lp_get_txpctlmode(%struct.bwn_mac*) #1

declare dso_local i32 @bwn_tab_read_multi(%struct.bwn_mac*, i32, i32, i32*) #1

declare dso_local i32 @BWN_TAB_4(i32, i32) #1

declare dso_local i32 @bwn_phy_lp_tblinit(%struct.bwn_mac*) #1

declare dso_local i32 @bwn_phy_lp_bbinit(%struct.bwn_mac*) #1

declare dso_local i32 @bwn_phy_lp_txpctl_init(%struct.bwn_mac*) #1

declare dso_local i32 @bwn_phy_lp_rf_onoff(%struct.bwn_mac*, i32) #1

declare dso_local i32 @bwn_phy_lp_set_txpctlmode(%struct.bwn_mac*, i64) #1

declare dso_local i32 @bwn_tab_write_multi(%struct.bwn_mac*, i32, i32, i32*) #1

declare dso_local i32 @BWN_WRITE_2(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @bwn_phy_lp_set_anafilter(%struct.bwn_mac*, i32) #1

declare dso_local i32 @bwn_tab_read(%struct.bwn_mac*, i32) #1

declare dso_local i32 @bwn_phy_lp_set_txgain(%struct.bwn_mac*, %struct.bwn_txgain*) #1

declare dso_local i32 @BWN_PHY_SETMASK(%struct.bwn_mac*, i32, i32, i32) #1

declare dso_local i32 @bwn_phy_lp_set_txgain_dac(%struct.bwn_mac*, i32) #1

declare dso_local i32 @bwn_phy_lp_set_txgain_pa(%struct.bwn_mac*, i32) #1

declare dso_local i32 @bwn_phy_lp_set_bbmult(%struct.bwn_mac*, i32) #1

declare dso_local i32 @BWN_TAB_2(i32, i32) #1

declare dso_local i32 @bwn_tab_write(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @bwn_phy_lp_set_txgain_override(%struct.bwn_mac*) #1

declare dso_local i32 @bwn_phy_lp_set_rccap(%struct.bwn_mac*) #1

declare dso_local i32 @bwn_phy_lp_set_antenna(%struct.bwn_mac*, i32) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
