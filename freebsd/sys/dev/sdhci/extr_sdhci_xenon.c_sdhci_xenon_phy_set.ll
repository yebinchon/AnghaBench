; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci_xenon.c_sdhci_xenon_phy_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci_xenon.c_sdhci_xenon_phy_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_ios = type { i32 }
%struct.sdhci_xenon_softc = type { i32, i32, i32 }

@XENON_EMMC_PHY_PAD_CONTROL = common dso_local global i32 0, align 4
@XENON_FC_DQ_RECEN = common dso_local global i32 0, align 4
@XENON_FC_CMD_RECEN = common dso_local global i32 0, align 4
@XENON_FC_QSP_RECEN = common dso_local global i32 0, align 4
@XENON_OEN_QSN = common dso_local global i32 0, align 4
@XENON_FC_ALL_CMOS_RECEIVER = common dso_local global i32 0, align 4
@XENON_EMMC_PHY_PAD_CONTROL1 = common dso_local global i32 0, align 4
@XENON_EMMC_FC_CMD_PU = common dso_local global i32 0, align 4
@XENON_EMMC_FC_DQ_PU = common dso_local global i32 0, align 4
@XENON_EMMC_FC_CMD_PD = common dso_local global i32 0, align 4
@XENON_EMMC_FC_DQ_PD = common dso_local global i32 0, align 4
@bus_timing_normal = common dso_local global i32 0, align 4
@XENON_EMMC_PHY_TIMING_ADJUST = common dso_local global i32 0, align 4
@XENON_TIMING_ADJUST_SDIO_MODE = common dso_local global i32 0, align 4
@XENON_EMMC_PHY_PAD_CONTROL2 = common dso_local global i32 0, align 4
@XENON_ZNR_MASK = common dso_local global i32 0, align 4
@XENON_ZNR_SHIFT = common dso_local global i32 0, align 4
@XENON_ZPR_MASK = common dso_local global i32 0, align 4
@SDHCI_CLOCK_CONTROL = common dso_local global i32 0, align 4
@SDHCI_CLOCK_CARD_EN = common dso_local global i32 0, align 4
@XENON_EMMC_PHY_FUNC_CONTROL = common dso_local global i32 0, align 4
@XENON_DQ_DDR_MODE_MASK = common dso_local global i32 0, align 4
@XENON_DQ_DDR_MODE_SHIFT = common dso_local global i32 0, align 4
@XENON_CMD_DDR_MODE = common dso_local global i32 0, align 4
@XENON_DQ_ASYNC_MODE = common dso_local global i32 0, align 4
@XENON_EMMC_PHY_LOGIC_TIMING_ADJUST = common dso_local global i32 0, align 4
@XENON_LOGIC_TIMING_VALUE = common dso_local global i32 0, align 4
@XENON_SLOT_EMMC_CTRL = common dso_local global i32 0, align 4
@XENON_ENABLE_DATA_STROBE = common dso_local global i32 0, align 4
@XENON_ENABLE_RESP_STROBE = common dso_local global i32 0, align 4
@XENON_EMMC_FC_QSP_PD = common dso_local global i32 0, align 4
@XENON_EMMC_FC_QSP_PU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.mmc_ios*)* @sdhci_xenon_phy_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_xenon_phy_set(i32 %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.mmc_ios*, align 8
  %6 = alloca %struct.sdhci_xenon_softc*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.mmc_ios* %1, %struct.mmc_ios** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.sdhci_xenon_softc* @device_get_softc(i32 %8)
  store %struct.sdhci_xenon_softc* %9, %struct.sdhci_xenon_softc** %6, align 8
  %10 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %6, align 8
  %11 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @XENON_EMMC_PHY_PAD_CONTROL, align 4
  %14 = call i32 @bus_read_4(i32 %12, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* @XENON_FC_DQ_RECEN, align 4
  %16 = load i32, i32* @XENON_FC_CMD_RECEN, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @XENON_FC_QSP_RECEN, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @XENON_OEN_QSN, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* %7, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* @XENON_FC_ALL_CMOS_RECEIVER, align 4
  %25 = load i32, i32* %7, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %7, align 4
  %27 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %6, align 8
  %28 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @XENON_EMMC_PHY_PAD_CONTROL, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @bus_write_4(i32 %29, i32 %30, i32 %31)
  %33 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %6, align 8
  %34 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @XENON_EMMC_PHY_PAD_CONTROL1, align 4
  %37 = call i32 @bus_read_4(i32 %35, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* @XENON_EMMC_FC_CMD_PU, align 4
  %39 = load i32, i32* @XENON_EMMC_FC_DQ_PU, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* %7, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* @XENON_EMMC_FC_CMD_PD, align 4
  %44 = load i32, i32* @XENON_EMMC_FC_DQ_PD, align 4
  %45 = or i32 %43, %44
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %7, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %7, align 4
  %49 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %6, align 8
  %50 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @XENON_EMMC_PHY_PAD_CONTROL1, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @bus_write_4(i32 %51, i32 %52, i32 %53)
  %55 = load %struct.mmc_ios*, %struct.mmc_ios** %5, align 8
  %56 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @bus_timing_normal, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %2
  %61 = load i32, i32* %4, align 4
  %62 = load %struct.mmc_ios*, %struct.mmc_ios** %5, align 8
  %63 = call i32 @sdhci_xenon_phy_init(i32 %61, %struct.mmc_ios* %62)
  store i32 %63, i32* %3, align 4
  br label %238

64:                                               ; preds = %2
  %65 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %6, align 8
  %66 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @XENON_EMMC_PHY_TIMING_ADJUST, align 4
  %69 = call i32 @bus_read_4(i32 %67, i32 %68)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* @XENON_TIMING_ADJUST_SDIO_MODE, align 4
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %7, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %7, align 4
  %74 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %6, align 8
  %75 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @XENON_EMMC_PHY_TIMING_ADJUST, align 4
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @bus_write_4(i32 %76, i32 %77, i32 %78)
  %80 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %6, align 8
  %81 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @XENON_EMMC_PHY_PAD_CONTROL2, align 4
  %84 = call i32 @bus_read_4(i32 %82, i32 %83)
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* @XENON_ZNR_MASK, align 4
  %86 = load i32, i32* @XENON_ZNR_SHIFT, align 4
  %87 = shl i32 %85, %86
  %88 = load i32, i32* @XENON_ZPR_MASK, align 4
  %89 = or i32 %87, %88
  %90 = xor i32 %89, -1
  %91 = load i32, i32* %7, align 4
  %92 = and i32 %91, %90
  store i32 %92, i32* %7, align 4
  %93 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %6, align 8
  %94 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @XENON_ZNR_SHIFT, align 4
  %97 = shl i32 %95, %96
  %98 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %6, align 8
  %99 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %97, %100
  %102 = load i32, i32* %7, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %7, align 4
  %104 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %6, align 8
  %105 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @XENON_EMMC_PHY_PAD_CONTROL2, align 4
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @bus_write_4(i32 %106, i32 %107, i32 %108)
  %110 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %6, align 8
  %111 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @SDHCI_CLOCK_CONTROL, align 4
  %114 = call i32 @bus_read_4(i32 %112, i32 %113)
  store i32 %114, i32* %7, align 4
  %115 = load i32, i32* @SDHCI_CLOCK_CARD_EN, align 4
  %116 = xor i32 %115, -1
  %117 = load i32, i32* %7, align 4
  %118 = and i32 %117, %116
  store i32 %118, i32* %7, align 4
  %119 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %6, align 8
  %120 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @SDHCI_CLOCK_CONTROL, align 4
  %123 = load i32, i32* %7, align 4
  %124 = call i32 @bus_write_4(i32 %121, i32 %122, i32 %123)
  %125 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %6, align 8
  %126 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @XENON_EMMC_PHY_FUNC_CONTROL, align 4
  %129 = call i32 @bus_read_4(i32 %127, i32 %128)
  store i32 %129, i32* %7, align 4
  %130 = load %struct.mmc_ios*, %struct.mmc_ios** %5, align 8
  %131 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  switch i32 %132, label %155 [
    i32 129, label %133
    i32 128, label %145
    i32 130, label %145
  ]

133:                                              ; preds = %64
  %134 = load i32, i32* @XENON_DQ_DDR_MODE_MASK, align 4
  %135 = load i32, i32* @XENON_DQ_DDR_MODE_SHIFT, align 4
  %136 = shl i32 %134, %135
  %137 = load i32, i32* @XENON_CMD_DDR_MODE, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* %7, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %7, align 4
  %141 = load i32, i32* @XENON_DQ_ASYNC_MODE, align 4
  %142 = xor i32 %141, -1
  %143 = load i32, i32* %7, align 4
  %144 = and i32 %143, %142
  store i32 %144, i32* %7, align 4
  br label %167

145:                                              ; preds = %64, %64
  %146 = load i32, i32* @XENON_DQ_DDR_MODE_MASK, align 4
  %147 = load i32, i32* @XENON_DQ_DDR_MODE_SHIFT, align 4
  %148 = shl i32 %146, %147
  %149 = load i32, i32* @XENON_CMD_DDR_MODE, align 4
  %150 = or i32 %148, %149
  %151 = load i32, i32* @XENON_DQ_ASYNC_MODE, align 4
  %152 = or i32 %150, %151
  %153 = load i32, i32* %7, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %7, align 4
  br label %167

155:                                              ; preds = %64
  %156 = load i32, i32* @XENON_DQ_DDR_MODE_MASK, align 4
  %157 = load i32, i32* @XENON_DQ_DDR_MODE_SHIFT, align 4
  %158 = shl i32 %156, %157
  %159 = load i32, i32* @XENON_CMD_DDR_MODE, align 4
  %160 = or i32 %158, %159
  %161 = xor i32 %160, -1
  %162 = load i32, i32* %7, align 4
  %163 = and i32 %162, %161
  store i32 %163, i32* %7, align 4
  %164 = load i32, i32* @XENON_DQ_ASYNC_MODE, align 4
  %165 = load i32, i32* %7, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %7, align 4
  br label %167

167:                                              ; preds = %155, %145, %133
  %168 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %6, align 8
  %169 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @XENON_EMMC_PHY_FUNC_CONTROL, align 4
  %172 = load i32, i32* %7, align 4
  %173 = call i32 @bus_write_4(i32 %170, i32 %171, i32 %172)
  %174 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %6, align 8
  %175 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @SDHCI_CLOCK_CONTROL, align 4
  %178 = call i32 @bus_read_4(i32 %176, i32 %177)
  store i32 %178, i32* %7, align 4
  %179 = load i32, i32* @SDHCI_CLOCK_CARD_EN, align 4
  %180 = load i32, i32* %7, align 4
  %181 = or i32 %180, %179
  store i32 %181, i32* %7, align 4
  %182 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %6, align 8
  %183 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @SDHCI_CLOCK_CONTROL, align 4
  %186 = load i32, i32* %7, align 4
  %187 = call i32 @bus_write_4(i32 %184, i32 %185, i32 %186)
  %188 = load %struct.mmc_ios*, %struct.mmc_ios** %5, align 8
  %189 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = icmp eq i32 %190, 129
  br i1 %191, label %192, label %199

192:                                              ; preds = %167
  %193 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %6, align 8
  %194 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* @XENON_EMMC_PHY_LOGIC_TIMING_ADJUST, align 4
  %197 = load i32, i32* @XENON_LOGIC_TIMING_VALUE, align 4
  %198 = call i32 @bus_write_4(i32 %195, i32 %196, i32 %197)
  br label %234

199:                                              ; preds = %167
  %200 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %6, align 8
  %201 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @XENON_SLOT_EMMC_CTRL, align 4
  %204 = call i32 @bus_read_4(i32 %202, i32 %203)
  store i32 %204, i32* %7, align 4
  %205 = load i32, i32* @XENON_ENABLE_DATA_STROBE, align 4
  %206 = load i32, i32* @XENON_ENABLE_RESP_STROBE, align 4
  %207 = or i32 %205, %206
  %208 = xor i32 %207, -1
  %209 = load i32, i32* %7, align 4
  %210 = and i32 %209, %208
  store i32 %210, i32* %7, align 4
  %211 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %6, align 8
  %212 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @XENON_SLOT_EMMC_CTRL, align 4
  %215 = load i32, i32* %7, align 4
  %216 = call i32 @bus_write_4(i32 %213, i32 %214, i32 %215)
  %217 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %6, align 8
  %218 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @XENON_EMMC_PHY_PAD_CONTROL1, align 4
  %221 = call i32 @bus_read_4(i32 %219, i32 %220)
  store i32 %221, i32* %7, align 4
  %222 = load i32, i32* @XENON_EMMC_FC_QSP_PD, align 4
  %223 = load i32, i32* @XENON_EMMC_FC_QSP_PU, align 4
  %224 = or i32 %222, %223
  %225 = xor i32 %224, -1
  %226 = load i32, i32* %7, align 4
  %227 = and i32 %226, %225
  store i32 %227, i32* %7, align 4
  %228 = load %struct.sdhci_xenon_softc*, %struct.sdhci_xenon_softc** %6, align 8
  %229 = getelementptr inbounds %struct.sdhci_xenon_softc, %struct.sdhci_xenon_softc* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* @XENON_EMMC_PHY_PAD_CONTROL1, align 4
  %232 = load i32, i32* %7, align 4
  %233 = call i32 @bus_write_4(i32 %230, i32 %231, i32 %232)
  br label %234

234:                                              ; preds = %199, %192
  %235 = load i32, i32* %4, align 4
  %236 = load %struct.mmc_ios*, %struct.mmc_ios** %5, align 8
  %237 = call i32 @sdhci_xenon_phy_init(i32 %235, %struct.mmc_ios* %236)
  store i32 %237, i32* %3, align 4
  br label %238

238:                                              ; preds = %234, %60
  %239 = load i32, i32* %3, align 4
  ret i32 %239
}

declare dso_local %struct.sdhci_xenon_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_read_4(i32, i32) #1

declare dso_local i32 @bus_write_4(i32, i32, i32) #1

declare dso_local i32 @sdhci_xenon_phy_init(i32, %struct.mmc_ios*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
