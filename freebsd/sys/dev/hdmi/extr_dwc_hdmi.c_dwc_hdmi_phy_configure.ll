; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hdmi/extr_dwc_hdmi.c_dwc_hdmi_phy_configure.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hdmi/extr_dwc_hdmi.c_dwc_hdmi_phy_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc_hdmi_softc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@HDMI_MC_FLOWCTRL = common dso_local global i32 0, align 4
@HDMI_MC_FLOWCTRL_FEED_THROUGH_OFF_CSC_BYPASS = common dso_local global i32 0, align 4
@HDMI_MC_PHYRSTZ = common dso_local global i32 0, align 4
@HDMI_MC_PHYRSTZ_DEASSERT = common dso_local global i32 0, align 4
@HDMI_MC_PHYRSTZ_ASSERT = common dso_local global i32 0, align 4
@HDMI_MC_HEACPHY_RST = common dso_local global i32 0, align 4
@HDMI_MC_HEACPHY_RST_ASSERT = common dso_local global i32 0, align 4
@HDMI_PHY_I2CM_SLAVE_ADDR = common dso_local global i32 0, align 4
@HDMI_PHY_I2CM_SLAVE_ADDR_PHY_GEN2 = common dso_local global i32 0, align 4
@CPCE_CTRL_45_25 = common dso_local global i32 0, align 4
@HDMI_PHY_I2C_CPCE_CTRL = common dso_local global i32 0, align 4
@GMPCTRL_45_25 = common dso_local global i32 0, align 4
@HDMI_PHY_I2C_GMPCTRL = common dso_local global i32 0, align 4
@CPCE_CTRL_92_50 = common dso_local global i32 0, align 4
@GMPCTRL_92_50 = common dso_local global i32 0, align 4
@CPCE_CTRL_185 = common dso_local global i32 0, align 4
@GMPCTRL_185 = common dso_local global i32 0, align 4
@CPCE_CTRL_370 = common dso_local global i32 0, align 4
@GMPCTRL_370 = common dso_local global i32 0, align 4
@HDMI_PHY_I2C_CURRCTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Unsupported mode\0A\00", align 1
@HDMI_PHY_I2C_PLLPHBYCTRL = common dso_local global i32 0, align 4
@MSM_CTRL_FB_CLK = common dso_local global i32 0, align 4
@HDMI_PHY_I2C_MSM_CTRL = common dso_local global i32 0, align 4
@TXTERM_133 = common dso_local global i32 0, align 4
@HDMI_PHY_I2C_TXTERM = common dso_local global i32 0, align 4
@CKCALCTRL_OVERRIDE = common dso_local global i32 0, align 4
@HDMI_PHY_I2C_CKCALCTRL = common dso_local global i32 0, align 4
@CKSYMTXCTRL_OVERRIDE = common dso_local global i32 0, align 4
@CKSYMTXCTRL_TX_SYMON = common dso_local global i32 0, align 4
@CKSYMTXCTRL_TX_TRBON = common dso_local global i32 0, align 4
@CKSYMTXCTRL_TX_CK_SYMON = common dso_local global i32 0, align 4
@HDMI_PHY_I2C_CKSYMTXCTRL = common dso_local global i32 0, align 4
@HDMI_PHY_I2C_VLEVCTRL = common dso_local global i32 0, align 4
@CKSYMTXCTRL_TX_TRAON = common dso_local global i32 0, align 4
@HDMI_PHY_STAT0 = common dso_local global i32 0, align 4
@HDMI_PHY_TX_PHY_LOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"PHY PLL not locked\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc_hdmi_softc*)* @dwc_hdmi_phy_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc_hdmi_phy_configure(%struct.dwc_hdmi_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dwc_hdmi_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dwc_hdmi_softc* %0, %struct.dwc_hdmi_softc** %3, align 8
  %6 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %3, align 8
  %7 = load i32, i32* @HDMI_MC_FLOWCTRL, align 4
  %8 = load i32, i32* @HDMI_MC_FLOWCTRL_FEED_THROUGH_OFF_CSC_BYPASS, align 4
  %9 = call i32 @WR1(%struct.dwc_hdmi_softc* %6, i32 %7, i32 %8)
  %10 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %3, align 8
  %11 = call i32 @dwc_hdmi_phy_gen2_txpwron(%struct.dwc_hdmi_softc* %10, i32 0)
  %12 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %3, align 8
  %13 = call i32 @dwc_hdmi_phy_gen2_pddq(%struct.dwc_hdmi_softc* %12, i32 1)
  %14 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %3, align 8
  %15 = load i32, i32* @HDMI_MC_PHYRSTZ, align 4
  %16 = load i32, i32* @HDMI_MC_PHYRSTZ_DEASSERT, align 4
  %17 = call i32 @WR1(%struct.dwc_hdmi_softc* %14, i32 %15, i32 %16)
  %18 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %3, align 8
  %19 = load i32, i32* @HDMI_MC_PHYRSTZ, align 4
  %20 = load i32, i32* @HDMI_MC_PHYRSTZ_ASSERT, align 4
  %21 = call i32 @WR1(%struct.dwc_hdmi_softc* %18, i32 %19, i32 %20)
  %22 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %3, align 8
  %23 = load i32, i32* @HDMI_MC_HEACPHY_RST, align 4
  %24 = load i32, i32* @HDMI_MC_HEACPHY_RST_ASSERT, align 4
  %25 = call i32 @WR1(%struct.dwc_hdmi_softc* %22, i32 %23, i32 %24)
  %26 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %3, align 8
  %27 = call i32 @dwc_hdmi_phy_test_clear(%struct.dwc_hdmi_softc* %26, i32 1)
  %28 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %3, align 8
  %29 = load i32, i32* @HDMI_PHY_I2CM_SLAVE_ADDR, align 4
  %30 = load i32, i32* @HDMI_PHY_I2CM_SLAVE_ADDR_PHY_GEN2, align 4
  %31 = call i32 @WR1(%struct.dwc_hdmi_softc* %28, i32 %29, i32 %30)
  %32 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %3, align 8
  %33 = call i32 @dwc_hdmi_phy_test_clear(%struct.dwc_hdmi_softc* %32, i32 0)
  %34 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %3, align 8
  %35 = getelementptr inbounds %struct.dwc_hdmi_softc, %struct.dwc_hdmi_softc* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 %37, 1000
  %39 = icmp sle i32 %38, 45250000
  br i1 %39, label %40, label %49

40:                                               ; preds = %1
  %41 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %3, align 8
  %42 = load i32, i32* @CPCE_CTRL_45_25, align 4
  %43 = load i32, i32* @HDMI_PHY_I2C_CPCE_CTRL, align 4
  %44 = call i32 @dwc_hdmi_phy_i2c_write(%struct.dwc_hdmi_softc* %41, i32 %42, i32 %43)
  %45 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %3, align 8
  %46 = load i32, i32* @GMPCTRL_45_25, align 4
  %47 = load i32, i32* @HDMI_PHY_I2C_GMPCTRL, align 4
  %48 = call i32 @dwc_hdmi_phy_i2c_write(%struct.dwc_hdmi_softc* %45, i32 %46, i32 %47)
  br label %92

49:                                               ; preds = %1
  %50 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %3, align 8
  %51 = getelementptr inbounds %struct.dwc_hdmi_softc, %struct.dwc_hdmi_softc* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 %53, 1000
  %55 = icmp sle i32 %54, 92500000
  br i1 %55, label %56, label %65

56:                                               ; preds = %49
  %57 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %3, align 8
  %58 = load i32, i32* @CPCE_CTRL_92_50, align 4
  %59 = load i32, i32* @HDMI_PHY_I2C_CPCE_CTRL, align 4
  %60 = call i32 @dwc_hdmi_phy_i2c_write(%struct.dwc_hdmi_softc* %57, i32 %58, i32 %59)
  %61 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %3, align 8
  %62 = load i32, i32* @GMPCTRL_92_50, align 4
  %63 = load i32, i32* @HDMI_PHY_I2C_GMPCTRL, align 4
  %64 = call i32 @dwc_hdmi_phy_i2c_write(%struct.dwc_hdmi_softc* %61, i32 %62, i32 %63)
  br label %91

65:                                               ; preds = %49
  %66 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %3, align 8
  %67 = getelementptr inbounds %struct.dwc_hdmi_softc, %struct.dwc_hdmi_softc* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = mul nsw i32 %69, 1000
  %71 = icmp sle i32 %70, 185000000
  br i1 %71, label %72, label %81

72:                                               ; preds = %65
  %73 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %3, align 8
  %74 = load i32, i32* @CPCE_CTRL_185, align 4
  %75 = load i32, i32* @HDMI_PHY_I2C_CPCE_CTRL, align 4
  %76 = call i32 @dwc_hdmi_phy_i2c_write(%struct.dwc_hdmi_softc* %73, i32 %74, i32 %75)
  %77 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %3, align 8
  %78 = load i32, i32* @GMPCTRL_185, align 4
  %79 = load i32, i32* @HDMI_PHY_I2C_GMPCTRL, align 4
  %80 = call i32 @dwc_hdmi_phy_i2c_write(%struct.dwc_hdmi_softc* %77, i32 %78, i32 %79)
  br label %90

81:                                               ; preds = %65
  %82 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %3, align 8
  %83 = load i32, i32* @CPCE_CTRL_370, align 4
  %84 = load i32, i32* @HDMI_PHY_I2C_CPCE_CTRL, align 4
  %85 = call i32 @dwc_hdmi_phy_i2c_write(%struct.dwc_hdmi_softc* %82, i32 %83, i32 %84)
  %86 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %3, align 8
  %87 = load i32, i32* @GMPCTRL_370, align 4
  %88 = load i32, i32* @HDMI_PHY_I2C_GMPCTRL, align 4
  %89 = call i32 @dwc_hdmi_phy_i2c_write(%struct.dwc_hdmi_softc* %86, i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %81, %72
  br label %91

91:                                               ; preds = %90, %56
  br label %92

92:                                               ; preds = %91, %40
  %93 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %3, align 8
  %94 = getelementptr inbounds %struct.dwc_hdmi_softc, %struct.dwc_hdmi_softc* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = mul nsw i32 %96, 1000
  %98 = icmp sle i32 %97, 54000000
  br i1 %98, label %99, label %103

99:                                               ; preds = %92
  %100 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %3, align 8
  %101 = load i32, i32* @HDMI_PHY_I2C_CURRCTRL, align 4
  %102 = call i32 @dwc_hdmi_phy_i2c_write(%struct.dwc_hdmi_softc* %100, i32 2332, i32 %101)
  br label %165

103:                                              ; preds = %92
  %104 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %3, align 8
  %105 = getelementptr inbounds %struct.dwc_hdmi_softc, %struct.dwc_hdmi_softc* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = mul nsw i32 %107, 1000
  %109 = icmp sle i32 %108, 58400000
  br i1 %109, label %110, label %114

110:                                              ; preds = %103
  %111 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %3, align 8
  %112 = load i32, i32* @HDMI_PHY_I2C_CURRCTRL, align 4
  %113 = call i32 @dwc_hdmi_phy_i2c_write(%struct.dwc_hdmi_softc* %111, i32 2332, i32 %112)
  br label %164

114:                                              ; preds = %103
  %115 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %3, align 8
  %116 = getelementptr inbounds %struct.dwc_hdmi_softc, %struct.dwc_hdmi_softc* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = mul nsw i32 %118, 1000
  %120 = icmp sle i32 %119, 72000000
  br i1 %120, label %121, label %125

121:                                              ; preds = %114
  %122 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %3, align 8
  %123 = load i32, i32* @HDMI_PHY_I2C_CURRCTRL, align 4
  %124 = call i32 @dwc_hdmi_phy_i2c_write(%struct.dwc_hdmi_softc* %122, i32 1756, i32 %123)
  br label %163

125:                                              ; preds = %114
  %126 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %3, align 8
  %127 = getelementptr inbounds %struct.dwc_hdmi_softc, %struct.dwc_hdmi_softc* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = mul nsw i32 %129, 1000
  %131 = icmp sle i32 %130, 74250000
  br i1 %131, label %132, label %136

132:                                              ; preds = %125
  %133 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %3, align 8
  %134 = load i32, i32* @HDMI_PHY_I2C_CURRCTRL, align 4
  %135 = call i32 @dwc_hdmi_phy_i2c_write(%struct.dwc_hdmi_softc* %133, i32 1756, i32 %134)
  br label %162

136:                                              ; preds = %125
  %137 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %3, align 8
  %138 = getelementptr inbounds %struct.dwc_hdmi_softc, %struct.dwc_hdmi_softc* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = mul nsw i32 %140, 1000
  %142 = icmp sle i32 %141, 118800000
  br i1 %142, label %143, label %147

143:                                              ; preds = %136
  %144 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %3, align 8
  %145 = load i32, i32* @HDMI_PHY_I2C_CURRCTRL, align 4
  %146 = call i32 @dwc_hdmi_phy_i2c_write(%struct.dwc_hdmi_softc* %144, i32 2332, i32 %145)
  br label %161

147:                                              ; preds = %136
  %148 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %3, align 8
  %149 = getelementptr inbounds %struct.dwc_hdmi_softc, %struct.dwc_hdmi_softc* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = mul nsw i32 %151, 1000
  %153 = icmp sle i32 %152, 216000000
  br i1 %153, label %154, label %158

154:                                              ; preds = %147
  %155 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %3, align 8
  %156 = load i32, i32* @HDMI_PHY_I2C_CURRCTRL, align 4
  %157 = call i32 @dwc_hdmi_phy_i2c_write(%struct.dwc_hdmi_softc* %155, i32 1756, i32 %156)
  br label %160

158:                                              ; preds = %147
  %159 = call i32 @panic(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %160

160:                                              ; preds = %158, %154
  br label %161

161:                                              ; preds = %160, %143
  br label %162

162:                                              ; preds = %161, %132
  br label %163

163:                                              ; preds = %162, %121
  br label %164

164:                                              ; preds = %163, %110
  br label %165

165:                                              ; preds = %164, %99
  %166 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %3, align 8
  %167 = load i32, i32* @HDMI_PHY_I2C_PLLPHBYCTRL, align 4
  %168 = call i32 @dwc_hdmi_phy_i2c_write(%struct.dwc_hdmi_softc* %166, i32 0, i32 %167)
  %169 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %3, align 8
  %170 = load i32, i32* @MSM_CTRL_FB_CLK, align 4
  %171 = load i32, i32* @HDMI_PHY_I2C_MSM_CTRL, align 4
  %172 = call i32 @dwc_hdmi_phy_i2c_write(%struct.dwc_hdmi_softc* %169, i32 %170, i32 %171)
  %173 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %3, align 8
  %174 = load i32, i32* @TXTERM_133, align 4
  %175 = load i32, i32* @HDMI_PHY_I2C_TXTERM, align 4
  %176 = call i32 @dwc_hdmi_phy_i2c_write(%struct.dwc_hdmi_softc* %173, i32 %174, i32 %175)
  %177 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %3, align 8
  %178 = load i32, i32* @CKCALCTRL_OVERRIDE, align 4
  %179 = load i32, i32* @HDMI_PHY_I2C_CKCALCTRL, align 4
  %180 = call i32 @dwc_hdmi_phy_i2c_write(%struct.dwc_hdmi_softc* %177, i32 %178, i32 %179)
  %181 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %3, align 8
  %182 = getelementptr inbounds %struct.dwc_hdmi_softc, %struct.dwc_hdmi_softc* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = mul nsw i32 %184, 1000
  %186 = icmp sgt i32 %185, 148500000
  br i1 %186, label %187, label %204

187:                                              ; preds = %165
  %188 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %3, align 8
  %189 = load i32, i32* @CKSYMTXCTRL_OVERRIDE, align 4
  %190 = load i32, i32* @CKSYMTXCTRL_TX_SYMON, align 4
  %191 = or i32 %189, %190
  %192 = load i32, i32* @CKSYMTXCTRL_TX_TRBON, align 4
  %193 = or i32 %191, %192
  %194 = load i32, i32* @CKSYMTXCTRL_TX_CK_SYMON, align 4
  %195 = or i32 %193, %194
  %196 = load i32, i32* @HDMI_PHY_I2C_CKSYMTXCTRL, align 4
  %197 = call i32 @dwc_hdmi_phy_i2c_write(%struct.dwc_hdmi_softc* %188, i32 %195, i32 %196)
  %198 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %3, align 8
  %199 = call i32 @VLEVCTRL_TX_LVL(i32 9)
  %200 = call i32 @VLEVCTRL_CK_LVL(i32 9)
  %201 = or i32 %199, %200
  %202 = load i32, i32* @HDMI_PHY_I2C_VLEVCTRL, align 4
  %203 = call i32 @dwc_hdmi_phy_i2c_write(%struct.dwc_hdmi_softc* %198, i32 %201, i32 %202)
  br label %221

204:                                              ; preds = %165
  %205 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %3, align 8
  %206 = load i32, i32* @CKSYMTXCTRL_OVERRIDE, align 4
  %207 = load i32, i32* @CKSYMTXCTRL_TX_SYMON, align 4
  %208 = or i32 %206, %207
  %209 = load i32, i32* @CKSYMTXCTRL_TX_TRAON, align 4
  %210 = or i32 %208, %209
  %211 = load i32, i32* @CKSYMTXCTRL_TX_CK_SYMON, align 4
  %212 = or i32 %210, %211
  %213 = load i32, i32* @HDMI_PHY_I2C_CKSYMTXCTRL, align 4
  %214 = call i32 @dwc_hdmi_phy_i2c_write(%struct.dwc_hdmi_softc* %205, i32 %212, i32 %213)
  %215 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %3, align 8
  %216 = call i32 @VLEVCTRL_TX_LVL(i32 13)
  %217 = call i32 @VLEVCTRL_CK_LVL(i32 13)
  %218 = or i32 %216, %217
  %219 = load i32, i32* @HDMI_PHY_I2C_VLEVCTRL, align 4
  %220 = call i32 @dwc_hdmi_phy_i2c_write(%struct.dwc_hdmi_softc* %215, i32 %218, i32 %219)
  br label %221

221:                                              ; preds = %204, %187
  %222 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %3, align 8
  %223 = call i32 @dwc_hdmi_phy_enable_power(%struct.dwc_hdmi_softc* %222, i32 1)
  %224 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %3, align 8
  %225 = call i32 @dwc_hdmi_phy_enable_tmds(%struct.dwc_hdmi_softc* %224, i32 0)
  %226 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %3, align 8
  %227 = call i32 @dwc_hdmi_phy_enable_tmds(%struct.dwc_hdmi_softc* %226, i32 1)
  %228 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %3, align 8
  %229 = call i32 @dwc_hdmi_phy_gen2_txpwron(%struct.dwc_hdmi_softc* %228, i32 1)
  %230 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %3, align 8
  %231 = call i32 @dwc_hdmi_phy_gen2_pddq(%struct.dwc_hdmi_softc* %230, i32 0)
  store i32 4, i32* %5, align 4
  %232 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %3, align 8
  %233 = load i32, i32* @HDMI_PHY_STAT0, align 4
  %234 = call i32 @RD1(%struct.dwc_hdmi_softc* %232, i32 %233)
  %235 = load i32, i32* @HDMI_PHY_TX_PHY_LOCK, align 4
  %236 = and i32 %234, %235
  store i32 %236, i32* %4, align 4
  br label %237

237:                                              ; preds = %250, %221
  %238 = load i32, i32* %4, align 4
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %256

240:                                              ; preds = %237
  %241 = call i32 @DELAY(i32 1000)
  %242 = load i32, i32* %5, align 4
  %243 = add nsw i32 %242, -1
  store i32 %243, i32* %5, align 4
  %244 = icmp eq i32 %242, 0
  br i1 %244, label %245, label %250

245:                                              ; preds = %240
  %246 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %3, align 8
  %247 = getelementptr inbounds %struct.dwc_hdmi_softc, %struct.dwc_hdmi_softc* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @device_printf(i32 %248, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %257

250:                                              ; preds = %240
  %251 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %3, align 8
  %252 = load i32, i32* @HDMI_PHY_STAT0, align 4
  %253 = call i32 @RD1(%struct.dwc_hdmi_softc* %251, i32 %252)
  %254 = load i32, i32* @HDMI_PHY_TX_PHY_LOCK, align 4
  %255 = and i32 %253, %254
  store i32 %255, i32* %4, align 4
  br label %237

256:                                              ; preds = %237
  store i32 1, i32* %2, align 4
  br label %257

257:                                              ; preds = %256, %245
  %258 = load i32, i32* %2, align 4
  ret i32 %258
}

declare dso_local i32 @WR1(%struct.dwc_hdmi_softc*, i32, i32) #1

declare dso_local i32 @dwc_hdmi_phy_gen2_txpwron(%struct.dwc_hdmi_softc*, i32) #1

declare dso_local i32 @dwc_hdmi_phy_gen2_pddq(%struct.dwc_hdmi_softc*, i32) #1

declare dso_local i32 @dwc_hdmi_phy_test_clear(%struct.dwc_hdmi_softc*, i32) #1

declare dso_local i32 @dwc_hdmi_phy_i2c_write(%struct.dwc_hdmi_softc*, i32, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @VLEVCTRL_TX_LVL(i32) #1

declare dso_local i32 @VLEVCTRL_CK_LVL(i32) #1

declare dso_local i32 @dwc_hdmi_phy_enable_power(%struct.dwc_hdmi_softc*, i32) #1

declare dso_local i32 @dwc_hdmi_phy_enable_tmds(%struct.dwc_hdmi_softc*, i32) #1

declare dso_local i32 @RD1(%struct.dwc_hdmi_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
