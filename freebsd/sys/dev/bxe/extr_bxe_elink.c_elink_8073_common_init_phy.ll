; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_8073_common_init_phy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_8073_common_init_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.elink_phy = type { i32 }

@PORT_MAX = common dso_local global i32 0, align 4
@NIG_REG_PORT_SWAP = common dso_local global i32 0, align 4
@NIG_REG_STRAP_OVERRIDE = common dso_local global i32 0, align 4
@PORT_0 = common dso_local global i32 0, align 4
@ELINK_STATUS_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"populate_phy failed\0A\00", align 1
@ELINK_STATUS_ERROR = common dso_local global i64 0, align 8
@NIG_REG_MASK_INTERRUPT_PORT0 = common dso_local global i64 0, align 8
@ELINK_NIG_MASK_XGXS0_LINK_STATUS = common dso_local global i32 0, align 4
@ELINK_NIG_MASK_XGXS0_LINK10G = common dso_local global i32 0, align 4
@ELINK_NIG_MASK_SERDES0_LINK_STATUS = common dso_local global i32 0, align 4
@ELINK_NIG_MASK_MI_INT = common dso_local global i32 0, align 4
@MISC_REGISTERS_GPIO_2 = common dso_local global i32 0, align 4
@MISC_REGISTERS_GPIO_OUTPUT_HIGH = common dso_local global i32 0, align 4
@MDIO_PMA_DEVAD = common dso_local global i32 0, align 4
@MDIO_PMA_REG_CTRL = common dso_local global i32 0, align 4
@PORT_1 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"Loading spirom for phy address 0x%x\0A\00", align 1
@MDIO_PMA_REG_TX_POWER_DOWN = common dso_local global i32 0, align 4
@MDIO_PMA_REG_EDC_FFE_MAIN = common dso_local global i32 0, align 4
@MISC_REGISTERS_GPIO_OUTPUT_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.bxe_softc*, i64*, i64*, i32, i64)* @elink_8073_common_init_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @elink_8073_common_init_phy(%struct.bxe_softc* %0, i64* %1, i64* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.bxe_softc*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %7, align 8
  store i64* %1, i64** %8, align 8
  store i64* %2, i64** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %23 = load i32, i32* @PORT_MAX, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %12, align 8
  %26 = alloca %struct.elink_phy, i64 %24, align 16
  store i64 %24, i64* %13, align 8
  %27 = load i32, i32* @PORT_MAX, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca %struct.elink_phy*, i64 %28, align 16
  store i64 %28, i64* %14, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %30 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %31 = load i32, i32* @NIG_REG_PORT_SWAP, align 4
  %32 = call i64 @REG_RD(%struct.bxe_softc* %30, i32 %31)
  store i64 %32, i64* %18, align 8
  %33 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %34 = load i32, i32* @NIG_REG_STRAP_OVERRIDE, align 4
  %35 = call i64 @REG_RD(%struct.bxe_softc* %33, i32 %34)
  store i64 %35, i64* %19, align 8
  %36 = load i64, i64* %18, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %5
  %39 = load i64, i64* %19, align 8
  %40 = icmp ne i64 %39, 0
  br label %41

41:                                               ; preds = %38, %5
  %42 = phi i1 [ false, %5 ], [ %40, %38 ]
  %43 = zext i1 %42 to i32
  %44 = load i32, i32* %16, align 4
  %45 = xor i32 %44, %43
  store i32 %45, i32* %16, align 4
  %46 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %47 = load i32, i32* %16, align 4
  %48 = call i32 @elink_ext_phy_hw_reset(%struct.bxe_softc* %46, i32 %47)
  %49 = load i32, i32* @PORT_MAX, align 4
  %50 = sub nsw i32 %49, 1
  store i32 %50, i32* %16, align 4
  br label %51

51:                                               ; preds = %121, %41
  %52 = load i32, i32* %16, align 4
  %53 = load i32, i32* @PORT_0, align 4
  %54 = icmp sge i32 %52, %53
  br i1 %54, label %55, label %124

55:                                               ; preds = %51
  %56 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %57 = call i64 @CHIP_IS_E1x(%struct.bxe_softc* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %55
  %60 = load i64*, i64** %8, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 0
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %20, align 8
  %63 = load i64*, i64** %9, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 0
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %21, align 8
  %66 = load i32, i32* %16, align 4
  store i32 %66, i32* %17, align 4
  br label %78

67:                                               ; preds = %55
  %68 = load i64*, i64** %8, align 8
  %69 = load i32, i32* %16, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %20, align 8
  %73 = load i64*, i64** %9, align 8
  %74 = load i32, i32* %16, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %21, align 8
  store i32 0, i32* %17, align 4
  br label %78

78:                                               ; preds = %67, %59
  %79 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %80 = load i32, i32* %10, align 4
  %81 = load i64, i64* %20, align 8
  %82 = load i64, i64* %21, align 8
  %83 = load i32, i32* %17, align 4
  %84 = load i32, i32* %16, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %26, i64 %85
  %87 = call i64 @elink_populate_phy(%struct.bxe_softc* %79, i32 %80, i64 %81, i64 %82, i32 %83, %struct.elink_phy* %86)
  %88 = load i64, i64* @ELINK_STATUS_OK, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %78
  %91 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %92 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %91, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %93 = load i64, i64* @ELINK_STATUS_ERROR, align 8
  store i64 %93, i64* %6, align 8
  store i32 1, i32* %22, align 4
  br label %266

94:                                               ; preds = %78
  %95 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %96 = load i64, i64* @NIG_REG_MASK_INTERRUPT_PORT0, align 8
  %97 = load i32, i32* %17, align 4
  %98 = mul nsw i32 %97, 4
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %96, %99
  %101 = load i32, i32* @ELINK_NIG_MASK_XGXS0_LINK_STATUS, align 4
  %102 = load i32, i32* @ELINK_NIG_MASK_XGXS0_LINK10G, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @ELINK_NIG_MASK_SERDES0_LINK_STATUS, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @ELINK_NIG_MASK_MI_INT, align 4
  %107 = or i32 %105, %106
  %108 = call i32 @elink_bits_dis(%struct.bxe_softc* %95, i64 %100, i32 %107)
  %109 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %110 = load i32, i32* @MISC_REGISTERS_GPIO_2, align 4
  %111 = load i32, i32* @MISC_REGISTERS_GPIO_OUTPUT_HIGH, align 4
  %112 = load i32, i32* %16, align 4
  %113 = call i32 @elink_cb_gpio_write(%struct.bxe_softc* %109, i32 %110, i32 %111, i32 %112)
  %114 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %115 = load i32, i32* %16, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %26, i64 %116
  %118 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %119 = load i32, i32* @MDIO_PMA_REG_CTRL, align 4
  %120 = call i32 @elink_cl45_write(%struct.bxe_softc* %114, %struct.elink_phy* %117, i32 %118, i32 %119, i32 32768)
  br label %121

121:                                              ; preds = %94
  %122 = load i32, i32* %16, align 4
  %123 = add nsw i32 %122, -1
  store i32 %123, i32* %16, align 4
  br label %51

124:                                              ; preds = %51
  %125 = call i32 @DELAY(i32 150000)
  %126 = load i32, i32* @PORT_0, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %26, i64 %127
  %129 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = and i32 %130, 1
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %144

133:                                              ; preds = %124
  %134 = load i64, i64* @PORT_1, align 8
  %135 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %26, i64 %134
  %136 = load i32, i32* @PORT_0, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.elink_phy*, %struct.elink_phy** %29, i64 %137
  store %struct.elink_phy* %135, %struct.elink_phy** %138, align 8
  %139 = load i32, i32* @PORT_0, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %26, i64 %140
  %142 = load i64, i64* @PORT_1, align 8
  %143 = getelementptr inbounds %struct.elink_phy*, %struct.elink_phy** %29, i64 %142
  store %struct.elink_phy* %141, %struct.elink_phy** %143, align 8
  br label %155

144:                                              ; preds = %124
  %145 = load i32, i32* @PORT_0, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %26, i64 %146
  %148 = load i32, i32* @PORT_0, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.elink_phy*, %struct.elink_phy** %29, i64 %149
  store %struct.elink_phy* %147, %struct.elink_phy** %150, align 8
  %151 = load i64, i64* @PORT_1, align 8
  %152 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %26, i64 %151
  %153 = load i64, i64* @PORT_1, align 8
  %154 = getelementptr inbounds %struct.elink_phy*, %struct.elink_phy** %29, i64 %153
  store %struct.elink_phy* %152, %struct.elink_phy** %154, align 8
  br label %155

155:                                              ; preds = %144, %133
  %156 = load i32, i32* @PORT_MAX, align 4
  %157 = sub nsw i32 %156, 1
  store i32 %157, i32* %16, align 4
  br label %158

158:                                              ; preds = %207, %155
  %159 = load i32, i32* %16, align 4
  %160 = load i32, i32* @PORT_0, align 4
  %161 = icmp sge i32 %159, %160
  br i1 %161, label %162, label %210

162:                                              ; preds = %158
  %163 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %164 = call i64 @CHIP_IS_E1x(%struct.bxe_softc* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %162
  %167 = load i32, i32* %16, align 4
  store i32 %167, i32* %17, align 4
  br label %169

168:                                              ; preds = %162
  store i32 0, i32* %17, align 4
  br label %169

169:                                              ; preds = %168, %166
  %170 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %171 = load i32, i32* %16, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.elink_phy*, %struct.elink_phy** %29, i64 %172
  %174 = load %struct.elink_phy*, %struct.elink_phy** %173, align 8
  %175 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @ELINK_DEBUG_P1(%struct.bxe_softc* %170, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %176)
  %178 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %179 = load i32, i32* %16, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.elink_phy*, %struct.elink_phy** %29, i64 %180
  %182 = load %struct.elink_phy*, %struct.elink_phy** %181, align 8
  %183 = load i32, i32* %17, align 4
  %184 = call i64 @elink_8073_8727_external_rom_boot(%struct.bxe_softc* %178, %struct.elink_phy* %182, i32 %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %169
  %187 = load i64, i64* @ELINK_STATUS_ERROR, align 8
  store i64 %187, i64* %6, align 8
  store i32 1, i32* %22, align 4
  br label %266

188:                                              ; preds = %169
  %189 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %190 = load i32, i32* %16, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.elink_phy*, %struct.elink_phy** %29, i64 %191
  %193 = load %struct.elink_phy*, %struct.elink_phy** %192, align 8
  %194 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %195 = load i32, i32* @MDIO_PMA_REG_TX_POWER_DOWN, align 4
  %196 = call i32 @elink_cl45_read(%struct.bxe_softc* %189, %struct.elink_phy* %193, i32 %194, i32 %195, i32* %15)
  %197 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %198 = load i32, i32* %16, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.elink_phy*, %struct.elink_phy** %29, i64 %199
  %201 = load %struct.elink_phy*, %struct.elink_phy** %200, align 8
  %202 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %203 = load i32, i32* @MDIO_PMA_REG_TX_POWER_DOWN, align 4
  %204 = load i32, i32* %15, align 4
  %205 = or i32 %204, 1024
  %206 = call i32 @elink_cl45_write(%struct.bxe_softc* %197, %struct.elink_phy* %201, i32 %202, i32 %203, i32 %205)
  br label %207

207:                                              ; preds = %188
  %208 = load i32, i32* %16, align 4
  %209 = add nsw i32 %208, -1
  store i32 %209, i32* %16, align 4
  br label %158

210:                                              ; preds = %158
  %211 = call i32 @DELAY(i32 600000)
  %212 = load i32, i32* @PORT_MAX, align 4
  %213 = sub nsw i32 %212, 1
  store i32 %213, i32* %16, align 4
  br label %214

214:                                              ; preds = %261, %210
  %215 = load i32, i32* %16, align 4
  %216 = load i32, i32* @PORT_0, align 4
  %217 = icmp sge i32 %215, %216
  br i1 %217, label %218, label %264

218:                                              ; preds = %214
  %219 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %220 = load i32, i32* %16, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.elink_phy*, %struct.elink_phy** %29, i64 %221
  %223 = load %struct.elink_phy*, %struct.elink_phy** %222, align 8
  %224 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %225 = load i32, i32* @MDIO_PMA_REG_TX_POWER_DOWN, align 4
  %226 = call i32 @elink_cl45_read(%struct.bxe_softc* %219, %struct.elink_phy* %223, i32 %224, i32 %225, i32* %15)
  %227 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %228 = load i32, i32* %16, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.elink_phy*, %struct.elink_phy** %29, i64 %229
  %231 = load %struct.elink_phy*, %struct.elink_phy** %230, align 8
  %232 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %233 = load i32, i32* @MDIO_PMA_REG_TX_POWER_DOWN, align 4
  %234 = load i32, i32* %15, align 4
  %235 = and i32 %234, -1025
  %236 = call i32 @elink_cl45_write(%struct.bxe_softc* %227, %struct.elink_phy* %231, i32 %232, i32 %233, i32 %235)
  %237 = call i32 @DELAY(i32 15000)
  %238 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %239 = load i32, i32* %16, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.elink_phy*, %struct.elink_phy** %29, i64 %240
  %242 = load %struct.elink_phy*, %struct.elink_phy** %241, align 8
  %243 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %244 = load i32, i32* @MDIO_PMA_REG_EDC_FFE_MAIN, align 4
  %245 = call i32 @elink_cl45_read(%struct.bxe_softc* %238, %struct.elink_phy* %242, i32 %243, i32 %244, i32* %15)
  %246 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %247 = load i32, i32* %16, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.elink_phy*, %struct.elink_phy** %29, i64 %248
  %250 = load %struct.elink_phy*, %struct.elink_phy** %249, align 8
  %251 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %252 = load i32, i32* @MDIO_PMA_REG_EDC_FFE_MAIN, align 4
  %253 = load i32, i32* %15, align 4
  %254 = or i32 %253, 4096
  %255 = call i32 @elink_cl45_write(%struct.bxe_softc* %246, %struct.elink_phy* %250, i32 %251, i32 %252, i32 %254)
  %256 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %257 = load i32, i32* @MISC_REGISTERS_GPIO_2, align 4
  %258 = load i32, i32* @MISC_REGISTERS_GPIO_OUTPUT_LOW, align 4
  %259 = load i32, i32* %16, align 4
  %260 = call i32 @elink_cb_gpio_write(%struct.bxe_softc* %256, i32 %257, i32 %258, i32 %259)
  br label %261

261:                                              ; preds = %218
  %262 = load i32, i32* %16, align 4
  %263 = add nsw i32 %262, -1
  store i32 %263, i32* %16, align 4
  br label %214

264:                                              ; preds = %214
  %265 = load i64, i64* @ELINK_STATUS_OK, align 8
  store i64 %265, i64* %6, align 8
  store i32 1, i32* %22, align 4
  br label %266

266:                                              ; preds = %264, %186, %90
  %267 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %267)
  %268 = load i64, i64* %6, align 8
  ret i64 %268
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @REG_RD(%struct.bxe_softc*, i32) #2

declare dso_local i32 @elink_ext_phy_hw_reset(%struct.bxe_softc*, i32) #2

declare dso_local i64 @CHIP_IS_E1x(%struct.bxe_softc*) #2

declare dso_local i64 @elink_populate_phy(%struct.bxe_softc*, i32, i64, i64, i32, %struct.elink_phy*) #2

declare dso_local i32 @ELINK_DEBUG_P0(%struct.bxe_softc*, i8*) #2

declare dso_local i32 @elink_bits_dis(%struct.bxe_softc*, i64, i32) #2

declare dso_local i32 @elink_cb_gpio_write(%struct.bxe_softc*, i32, i32, i32) #2

declare dso_local i32 @elink_cl45_write(%struct.bxe_softc*, %struct.elink_phy*, i32, i32, i32) #2

declare dso_local i32 @DELAY(i32) #2

declare dso_local i32 @ELINK_DEBUG_P1(%struct.bxe_softc*, i8*, i32) #2

declare dso_local i64 @elink_8073_8727_external_rom_boot(%struct.bxe_softc*, %struct.elink_phy*, i32) #2

declare dso_local i32 @elink_cl45_read(%struct.bxe_softc*, %struct.elink_phy*, i32, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
