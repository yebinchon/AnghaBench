; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_msk_phy_power.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_msk_phy_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msk_softc = type { i32, i32, i32 }

@B0_POWER_CTRL = common dso_local global i32 0, align 4
@PC_VAUX_ENA = common dso_local global i32 0, align 4
@PC_VCC_ENA = common dso_local global i32 0, align 4
@PC_VAUX_OFF = common dso_local global i32 0, align 4
@PC_VCC_ON = common dso_local global i32 0, align 4
@B2_Y2_CLK_CTRL = common dso_local global i32 0, align 4
@Y2_CLK_DIV_DIS = common dso_local global i32 0, align 4
@CHIP_ID_YUKON_XL = common dso_local global i32 0, align 4
@CHIP_REV_YU_XL_A1 = common dso_local global i32 0, align 4
@Y2_PCI_CLK_LNK1_DIS = common dso_local global i32 0, align 4
@Y2_COR_CLK_LNK1_DIS = common dso_local global i32 0, align 4
@Y2_CLK_GAT_LNK1_DIS = common dso_local global i32 0, align 4
@Y2_PCI_CLK_LNK2_DIS = common dso_local global i32 0, align 4
@Y2_COR_CLK_LNK2_DIS = common dso_local global i32 0, align 4
@Y2_CLK_GAT_LNK2_DIS = common dso_local global i32 0, align 4
@B2_Y2_CLK_GATE = common dso_local global i32 0, align 4
@PCI_OUR_REG_1 = common dso_local global i32 0, align 4
@PCI_Y2_PHY1_POWD = common dso_local global i32 0, align 4
@PCI_Y2_PHY2_POWD = common dso_local global i32 0, align 4
@PCI_Y2_PHY1_COMA = common dso_local global i32 0, align 4
@PCI_Y2_PHY2_COMA = common dso_local global i32 0, align 4
@CHIP_ID_YUKON_EC_U = common dso_local global i32 0, align 4
@CHIP_ID_YUKON_EX = common dso_local global i32 0, align 4
@CHIP_ID_YUKON_FE_P = common dso_local global i32 0, align 4
@PCI_OUR_REG_4 = common dso_local global i32 0, align 4
@PCI_FORCE_ASPM_REQUEST = common dso_local global i32 0, align 4
@PCI_ASPM_GPHY_LINK_DOWN = common dso_local global i32 0, align 4
@PCI_ASPM_INT_FIFO_EMPTY = common dso_local global i32 0, align 4
@PCI_ASPM_CLKRUN_REQUEST = common dso_local global i32 0, align 4
@PCI_OUR_REG_5 = common dso_local global i32 0, align 4
@PCI_CTL_TIM_VMAIN_AV_MSK = common dso_local global i32 0, align 4
@PCI_CFG_REG_1 = common dso_local global i32 0, align 4
@B0_CTST = common dso_local global i32 0, align 4
@Y2_HW_WOL_ON = common dso_local global i32 0, align 4
@B2_GP_IO = common dso_local global i32 0, align 4
@GLB_GPIO_STAT_RACE_DIS = common dso_local global i32 0, align 4
@GMAC_LINK_CTRL = common dso_local global i32 0, align 4
@GMLC_RST_SET = common dso_local global i32 0, align 4
@GMLC_RST_CLR = common dso_local global i32 0, align 4
@PC_VAUX_ON = common dso_local global i32 0, align 4
@PC_VCC_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msk_softc*, i32)* @msk_phy_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msk_phy_power(%struct.msk_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.msk_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.msk_softc* %0, %struct.msk_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %257 [
    i32 128, label %9
    i32 129, label %179
  ]

9:                                                ; preds = %2
  %10 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %11 = load i32, i32* @B0_POWER_CTRL, align 4
  %12 = load i32, i32* @PC_VAUX_ENA, align 4
  %13 = load i32, i32* @PC_VCC_ENA, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @PC_VAUX_OFF, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @PC_VCC_ON, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @CSR_WRITE_1(%struct.msk_softc* %10, i32 %11, i32 %18)
  %20 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %21 = load i32, i32* @B2_Y2_CLK_CTRL, align 4
  %22 = load i32, i32* @Y2_CLK_DIV_DIS, align 4
  %23 = call i32 @CSR_WRITE_4(%struct.msk_softc* %20, i32 %21, i32 %22)
  store i32 0, i32* %6, align 4
  %24 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %25 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @CHIP_ID_YUKON_XL, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %47

29:                                               ; preds = %9
  %30 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %31 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @CHIP_REV_YU_XL_A1, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %29
  %36 = load i32, i32* @Y2_PCI_CLK_LNK1_DIS, align 4
  %37 = load i32, i32* @Y2_COR_CLK_LNK1_DIS, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @Y2_CLK_GAT_LNK1_DIS, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @Y2_PCI_CLK_LNK2_DIS, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @Y2_COR_CLK_LNK2_DIS, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @Y2_CLK_GAT_LNK2_DIS, align 4
  %46 = or i32 %44, %45
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %35, %29, %9
  %48 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %49 = load i32, i32* @B2_Y2_CLK_GATE, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @CSR_WRITE_1(%struct.msk_softc* %48, i32 %49, i32 %50)
  %52 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %53 = load i32, i32* @PCI_OUR_REG_1, align 4
  %54 = call i32 @CSR_PCI_READ_4(%struct.msk_softc* %52, i32 %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* @PCI_Y2_PHY1_POWD, align 4
  %56 = load i32, i32* @PCI_Y2_PHY2_POWD, align 4
  %57 = or i32 %55, %56
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %5, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %5, align 4
  %61 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %62 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @CHIP_ID_YUKON_XL, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %86

66:                                               ; preds = %47
  %67 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %68 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @CHIP_REV_YU_XL_A1, align 4
  %71 = icmp sgt i32 %69, %70
  br i1 %71, label %72, label %85

72:                                               ; preds = %66
  %73 = load i32, i32* @PCI_Y2_PHY1_COMA, align 4
  %74 = load i32, i32* %5, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %5, align 4
  %76 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %77 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp sgt i32 %78, 1
  br i1 %79, label %80, label %84

80:                                               ; preds = %72
  %81 = load i32, i32* @PCI_Y2_PHY2_COMA, align 4
  %82 = load i32, i32* %5, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %80, %72
  br label %85

85:                                               ; preds = %84, %66
  br label %86

86:                                               ; preds = %85, %47
  %87 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %88 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @CHIP_ID_YUKON_EC_U, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %104, label %92

92:                                               ; preds = %86
  %93 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %94 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @CHIP_ID_YUKON_EX, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %104, label %98

98:                                               ; preds = %92
  %99 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %100 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @CHIP_ID_YUKON_FE_P, align 4
  %103 = icmp sge i32 %101, %102
  br i1 %103, label %104, label %151

104:                                              ; preds = %98, %92, %86
  %105 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %106 = load i32, i32* @PCI_OUR_REG_4, align 4
  %107 = call i32 @CSR_PCI_READ_4(%struct.msk_softc* %105, i32 %106)
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* @PCI_FORCE_ASPM_REQUEST, align 4
  %109 = load i32, i32* @PCI_ASPM_GPHY_LINK_DOWN, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @PCI_ASPM_INT_FIFO_EMPTY, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* @PCI_ASPM_CLKRUN_REQUEST, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* %6, align 4
  %116 = and i32 %115, %114
  store i32 %116, i32* %6, align 4
  %117 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %118 = load i32, i32* @PCI_OUR_REG_4, align 4
  %119 = load i32, i32* %6, align 4
  %120 = call i32 @CSR_PCI_WRITE_4(%struct.msk_softc* %117, i32 %118, i32 %119)
  %121 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %122 = load i32, i32* @PCI_OUR_REG_5, align 4
  %123 = call i32 @CSR_PCI_READ_4(%struct.msk_softc* %121, i32 %122)
  store i32 %123, i32* %6, align 4
  %124 = load i32, i32* @PCI_CTL_TIM_VMAIN_AV_MSK, align 4
  %125 = load i32, i32* %6, align 4
  %126 = and i32 %125, %124
  store i32 %126, i32* %6, align 4
  %127 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %128 = load i32, i32* @PCI_OUR_REG_5, align 4
  %129 = load i32, i32* %6, align 4
  %130 = call i32 @CSR_PCI_WRITE_4(%struct.msk_softc* %127, i32 %128, i32 %129)
  %131 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %132 = load i32, i32* @PCI_CFG_REG_1, align 4
  %133 = call i32 @CSR_PCI_WRITE_4(%struct.msk_softc* %131, i32 %132, i32 0)
  %134 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %135 = load i32, i32* @B0_CTST, align 4
  %136 = load i32, i32* @Y2_HW_WOL_ON, align 4
  %137 = call i32 @CSR_WRITE_2(%struct.msk_softc* %134, i32 %135, i32 %136)
  %138 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %139 = load i32, i32* @B2_GP_IO, align 4
  %140 = call i32 @CSR_READ_4(%struct.msk_softc* %138, i32 %139)
  store i32 %140, i32* %6, align 4
  %141 = load i32, i32* @GLB_GPIO_STAT_RACE_DIS, align 4
  %142 = load i32, i32* %6, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %6, align 4
  %144 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %145 = load i32, i32* @B2_GP_IO, align 4
  %146 = load i32, i32* %6, align 4
  %147 = call i32 @CSR_WRITE_4(%struct.msk_softc* %144, i32 %145, i32 %146)
  %148 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %149 = load i32, i32* @B2_GP_IO, align 4
  %150 = call i32 @CSR_READ_4(%struct.msk_softc* %148, i32 %149)
  br label %151

151:                                              ; preds = %104, %98
  %152 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %153 = load i32, i32* @PCI_OUR_REG_1, align 4
  %154 = load i32, i32* %5, align 4
  %155 = call i32 @CSR_PCI_WRITE_4(%struct.msk_softc* %152, i32 %153, i32 %154)
  store i32 0, i32* %7, align 4
  br label %156

156:                                              ; preds = %175, %151
  %157 = load i32, i32* %7, align 4
  %158 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %159 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = icmp slt i32 %157, %160
  br i1 %161, label %162, label %178

162:                                              ; preds = %156
  %163 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %164 = load i32, i32* %7, align 4
  %165 = load i32, i32* @GMAC_LINK_CTRL, align 4
  %166 = call i32 @MR_ADDR(i32 %164, i32 %165)
  %167 = load i32, i32* @GMLC_RST_SET, align 4
  %168 = call i32 @CSR_WRITE_2(%struct.msk_softc* %163, i32 %166, i32 %167)
  %169 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %170 = load i32, i32* %7, align 4
  %171 = load i32, i32* @GMAC_LINK_CTRL, align 4
  %172 = call i32 @MR_ADDR(i32 %170, i32 %171)
  %173 = load i32, i32* @GMLC_RST_CLR, align 4
  %174 = call i32 @CSR_WRITE_2(%struct.msk_softc* %169, i32 %172, i32 %173)
  br label %175

175:                                              ; preds = %162
  %176 = load i32, i32* %7, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %7, align 4
  br label %156

178:                                              ; preds = %156
  br label %258

179:                                              ; preds = %2
  %180 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %181 = load i32, i32* @PCI_OUR_REG_1, align 4
  %182 = call i32 @CSR_PCI_READ_4(%struct.msk_softc* %180, i32 %181)
  store i32 %182, i32* %6, align 4
  %183 = load i32, i32* @PCI_Y2_PHY1_POWD, align 4
  %184 = load i32, i32* @PCI_Y2_PHY2_POWD, align 4
  %185 = or i32 %183, %184
  %186 = load i32, i32* %6, align 4
  %187 = or i32 %186, %185
  store i32 %187, i32* %6, align 4
  %188 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %189 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @CHIP_ID_YUKON_XL, align 4
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %193, label %214

193:                                              ; preds = %179
  %194 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %195 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @CHIP_REV_YU_XL_A1, align 4
  %198 = icmp sgt i32 %196, %197
  br i1 %198, label %199, label %214

199:                                              ; preds = %193
  %200 = load i32, i32* @PCI_Y2_PHY1_COMA, align 4
  %201 = xor i32 %200, -1
  %202 = load i32, i32* %6, align 4
  %203 = and i32 %202, %201
  store i32 %203, i32* %6, align 4
  %204 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %205 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = icmp sgt i32 %206, 1
  br i1 %207, label %208, label %213

208:                                              ; preds = %199
  %209 = load i32, i32* @PCI_Y2_PHY2_COMA, align 4
  %210 = xor i32 %209, -1
  %211 = load i32, i32* %6, align 4
  %212 = and i32 %211, %210
  store i32 %212, i32* %6, align 4
  br label %213

213:                                              ; preds = %208, %199
  br label %214

214:                                              ; preds = %213, %193, %179
  %215 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %216 = load i32, i32* @PCI_OUR_REG_1, align 4
  %217 = load i32, i32* %6, align 4
  %218 = call i32 @CSR_PCI_WRITE_4(%struct.msk_softc* %215, i32 %216, i32 %217)
  %219 = load i32, i32* @Y2_PCI_CLK_LNK1_DIS, align 4
  %220 = load i32, i32* @Y2_COR_CLK_LNK1_DIS, align 4
  %221 = or i32 %219, %220
  %222 = load i32, i32* @Y2_CLK_GAT_LNK1_DIS, align 4
  %223 = or i32 %221, %222
  %224 = load i32, i32* @Y2_PCI_CLK_LNK2_DIS, align 4
  %225 = or i32 %223, %224
  %226 = load i32, i32* @Y2_COR_CLK_LNK2_DIS, align 4
  %227 = or i32 %225, %226
  %228 = load i32, i32* @Y2_CLK_GAT_LNK2_DIS, align 4
  %229 = or i32 %227, %228
  store i32 %229, i32* %6, align 4
  %230 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %231 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* @CHIP_ID_YUKON_XL, align 4
  %234 = icmp eq i32 %232, %233
  br i1 %234, label %235, label %242

235:                                              ; preds = %214
  %236 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %237 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* @CHIP_REV_YU_XL_A1, align 4
  %240 = icmp sgt i32 %238, %239
  br i1 %240, label %241, label %242

241:                                              ; preds = %235
  store i32 0, i32* %6, align 4
  br label %242

242:                                              ; preds = %241, %235, %214
  %243 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %244 = load i32, i32* @B2_Y2_CLK_GATE, align 4
  %245 = load i32, i32* %6, align 4
  %246 = call i32 @CSR_WRITE_1(%struct.msk_softc* %243, i32 %244, i32 %245)
  %247 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %248 = load i32, i32* @B0_POWER_CTRL, align 4
  %249 = load i32, i32* @PC_VAUX_ENA, align 4
  %250 = load i32, i32* @PC_VCC_ENA, align 4
  %251 = or i32 %249, %250
  %252 = load i32, i32* @PC_VAUX_ON, align 4
  %253 = or i32 %251, %252
  %254 = load i32, i32* @PC_VCC_OFF, align 4
  %255 = or i32 %253, %254
  %256 = call i32 @CSR_WRITE_1(%struct.msk_softc* %247, i32 %248, i32 %255)
  br label %258

257:                                              ; preds = %2
  br label %258

258:                                              ; preds = %257, %242, %178
  ret void
}

declare dso_local i32 @CSR_WRITE_1(%struct.msk_softc*, i32, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.msk_softc*, i32, i32) #1

declare dso_local i32 @CSR_PCI_READ_4(%struct.msk_softc*, i32) #1

declare dso_local i32 @CSR_PCI_WRITE_4(%struct.msk_softc*, i32, i32) #1

declare dso_local i32 @CSR_WRITE_2(%struct.msk_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.msk_softc*, i32) #1

declare dso_local i32 @MR_ADDR(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
