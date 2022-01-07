; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_848xx_set_link_led.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_848xx_set_link_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elink_phy = type { i32 }
%struct.elink_params = type { i32, i32, i32, %struct.bxe_softc* }
%struct.bxe_softc = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Port 0x%x: LED MODE OFF\0A\00", align 1
@SHARED_HW_CFG_LED_MODE_SHIFT = common dso_local global i32 0, align 4
@SHARED_HW_CFG_LED_EXTPHY1 = common dso_local global i32 0, align 4
@MDIO_PMA_DEVAD = common dso_local global i32 0, align 4
@MDIO_PMA_REG_8481_LED1_MASK = common dso_local global i32 0, align 4
@MDIO_PMA_REG_8481_LED2_MASK = common dso_local global i32 0, align 4
@MDIO_PMA_REG_8481_LED3_MASK = common dso_local global i32 0, align 4
@MDIO_PMA_REG_8481_LED5_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Port 0x%x: LED MODE FRONT PANEL OFF\0A\00", align 1
@PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84834 = common dso_local global i32 0, align 4
@NIG_REG_MASK_INTERRUPT_PORT0 = common dso_local global i32 0, align 4
@ELINK_NIG_MASK_MI_INT = common dso_local global i32 0, align 4
@ELINK_LINK_FLAGS_INT_DISABLED = common dso_local global i32 0, align 4
@MDIO_PMA_REG_8481_SIGNAL_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Port 0x%x: LED MODE ON\0A\00", align 1
@MDIO_PMA_REG_8481_LINK_SIGNAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Port 0x%x: LED MODE OPER\0A\00", align 1
@MDIO_PMA_REG_8481_LINK_SIGNAL_LED4_ENABLE_MASK = common dso_local global i32 0, align 4
@MDIO_PMA_REG_8481_LINK_SIGNAL_LED4_ENABLE_SHIFT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"Setting LINK_SIGNAL\0A\00", align 1
@SHARED_HW_CFG_LED_EXTPHY2 = common dso_local global i32 0, align 4
@MDIO_WC_DEVAD = common dso_local global i32 0, align 4
@MDIO_WC_REG_GP2_STATUS_GP_2_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elink_phy*, %struct.elink_params*, i32)* @elink_848xx_set_link_led to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elink_848xx_set_link_led(%struct.elink_phy* %0, %struct.elink_params* %1, i32 %2) #0 {
  %4 = alloca %struct.elink_phy*, align 8
  %5 = alloca %struct.elink_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bxe_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.elink_phy* %0, %struct.elink_phy** %4, align 8
  store %struct.elink_params* %1, %struct.elink_params** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %11 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %10, i32 0, i32 3
  %12 = load %struct.bxe_softc*, %struct.bxe_softc** %11, align 8
  store %struct.bxe_softc* %12, %struct.bxe_softc** %7, align 8
  %13 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %14 = call i32 @CHIP_IS_E1x(%struct.bxe_softc* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %18 = call i32 @SC_PATH(%struct.bxe_softc* %17)
  store i32 %18, i32* %9, align 4
  br label %23

19:                                               ; preds = %3
  %20 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %21 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %9, align 4
  br label %23

23:                                               ; preds = %19, %16
  %24 = load i32, i32* %6, align 4
  switch i32 %24, label %347 [
    i32 130, label %25
    i32 131, label %64
    i32 129, label %142
    i32 128, label %235
  ]

25:                                               ; preds = %23
  %26 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @ELINK_DEBUG_P1(%struct.bxe_softc* %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %30 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @SHARED_HW_CFG_LED_MODE_SHIFT, align 4
  %33 = shl i32 %31, %32
  %34 = load i32, i32* @SHARED_HW_CFG_LED_EXTPHY1, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %57

36:                                               ; preds = %25
  %37 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %38 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %39 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %40 = load i32, i32* @MDIO_PMA_REG_8481_LED1_MASK, align 4
  %41 = call i32 @elink_cl45_write(%struct.bxe_softc* %37, %struct.elink_phy* %38, i32 %39, i32 %40, i32 0)
  %42 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %43 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %44 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %45 = load i32, i32* @MDIO_PMA_REG_8481_LED2_MASK, align 4
  %46 = call i32 @elink_cl45_write(%struct.bxe_softc* %42, %struct.elink_phy* %43, i32 %44, i32 %45, i32 0)
  %47 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %48 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %49 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %50 = load i32, i32* @MDIO_PMA_REG_8481_LED3_MASK, align 4
  %51 = call i32 @elink_cl45_write(%struct.bxe_softc* %47, %struct.elink_phy* %48, i32 %49, i32 %50, i32 0)
  %52 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %53 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %54 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %55 = load i32, i32* @MDIO_PMA_REG_8481_LED5_MASK, align 4
  %56 = call i32 @elink_cl45_write(%struct.bxe_softc* %52, %struct.elink_phy* %53, i32 %54, i32 %55, i32 0)
  br label %63

57:                                               ; preds = %25
  %58 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %59 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %60 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %61 = load i32, i32* @MDIO_PMA_REG_8481_LED1_MASK, align 4
  %62 = call i32 @elink_cl45_write(%struct.bxe_softc* %58, %struct.elink_phy* %59, i32 %60, i32 %61, i32 0)
  br label %63

63:                                               ; preds = %57, %36
  br label %347

64:                                               ; preds = %23
  %65 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @ELINK_DEBUG_P1(%struct.bxe_softc* %65, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  %68 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %69 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @SHARED_HW_CFG_LED_MODE_SHIFT, align 4
  %72 = shl i32 %70, %71
  %73 = load i32, i32* @SHARED_HW_CFG_LED_EXTPHY1, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %96

75:                                               ; preds = %64
  %76 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %77 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %78 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %79 = load i32, i32* @MDIO_PMA_REG_8481_LED1_MASK, align 4
  %80 = call i32 @elink_cl45_write(%struct.bxe_softc* %76, %struct.elink_phy* %77, i32 %78, i32 %79, i32 0)
  %81 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %82 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %83 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %84 = load i32, i32* @MDIO_PMA_REG_8481_LED2_MASK, align 4
  %85 = call i32 @elink_cl45_write(%struct.bxe_softc* %81, %struct.elink_phy* %82, i32 %83, i32 %84, i32 0)
  %86 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %87 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %88 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %89 = load i32, i32* @MDIO_PMA_REG_8481_LED3_MASK, align 4
  %90 = call i32 @elink_cl45_write(%struct.bxe_softc* %86, %struct.elink_phy* %87, i32 %88, i32 %89, i32 0)
  %91 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %92 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %93 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %94 = load i32, i32* @MDIO_PMA_REG_8481_LED5_MASK, align 4
  %95 = call i32 @elink_cl45_write(%struct.bxe_softc* %91, %struct.elink_phy* %92, i32 %93, i32 %94, i32 32)
  br label %141

96:                                               ; preds = %64
  %97 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %98 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %99 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %100 = load i32, i32* @MDIO_PMA_REG_8481_LED1_MASK, align 4
  %101 = call i32 @elink_cl45_write(%struct.bxe_softc* %97, %struct.elink_phy* %98, i32 %99, i32 %100, i32 0)
  %102 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %103 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84834, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %140

107:                                              ; preds = %96
  %108 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %109 = load i32, i32* @NIG_REG_MASK_INTERRUPT_PORT0, align 4
  %110 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %111 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = mul nsw i32 %112, 4
  %114 = add nsw i32 %109, %113
  %115 = call i32 @REG_RD(%struct.bxe_softc* %108, i32 %114)
  %116 = load i32, i32* @ELINK_NIG_MASK_MI_INT, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %134

119:                                              ; preds = %107
  %120 = load i32, i32* @ELINK_LINK_FLAGS_INT_DISABLED, align 4
  %121 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %122 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = or i32 %123, %120
  store i32 %124, i32* %122, align 8
  %125 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %126 = load i32, i32* @NIG_REG_MASK_INTERRUPT_PORT0, align 4
  %127 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %128 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = mul nsw i32 %129, 4
  %131 = add nsw i32 %126, %130
  %132 = load i32, i32* @ELINK_NIG_MASK_MI_INT, align 4
  %133 = call i32 @elink_bits_dis(%struct.bxe_softc* %125, i32 %131, i32 %132)
  br label %134

134:                                              ; preds = %119, %107
  %135 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %136 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %137 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %138 = load i32, i32* @MDIO_PMA_REG_8481_SIGNAL_MASK, align 4
  %139 = call i32 @elink_cl45_write(%struct.bxe_softc* %135, %struct.elink_phy* %136, i32 %137, i32 %138, i32 0)
  br label %140

140:                                              ; preds = %134, %96
  br label %141

141:                                              ; preds = %140, %75
  br label %347

142:                                              ; preds = %23
  %143 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %144 = load i32, i32* %9, align 4
  %145 = call i32 @ELINK_DEBUG_P1(%struct.bxe_softc* %143, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %144)
  %146 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %147 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @SHARED_HW_CFG_LED_MODE_SHIFT, align 4
  %150 = shl i32 %148, %149
  %151 = load i32, i32* @SHARED_HW_CFG_LED_EXTPHY1, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %189

153:                                              ; preds = %142
  %154 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %155 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %156 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %157 = load i32, i32* @MDIO_PMA_REG_8481_LINK_SIGNAL, align 4
  %158 = call i32 @elink_cl45_read(%struct.bxe_softc* %154, %struct.elink_phy* %155, i32 %156, i32 %157, i32* %8)
  %159 = load i32, i32* %8, align 4
  %160 = and i32 %159, 32768
  store i32 %160, i32* %8, align 4
  %161 = load i32, i32* %8, align 4
  %162 = or i32 %161, 9362
  store i32 %162, i32* %8, align 4
  %163 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %164 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %165 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %166 = load i32, i32* @MDIO_PMA_REG_8481_LINK_SIGNAL, align 4
  %167 = load i32, i32* %8, align 4
  %168 = call i32 @elink_cl45_write(%struct.bxe_softc* %163, %struct.elink_phy* %164, i32 %165, i32 %166, i32 %167)
  %169 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %170 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %171 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %172 = load i32, i32* @MDIO_PMA_REG_8481_LED1_MASK, align 4
  %173 = call i32 @elink_cl45_write(%struct.bxe_softc* %169, %struct.elink_phy* %170, i32 %171, i32 %172, i32 0)
  %174 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %175 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %176 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %177 = load i32, i32* @MDIO_PMA_REG_8481_LED2_MASK, align 4
  %178 = call i32 @elink_cl45_write(%struct.bxe_softc* %174, %struct.elink_phy* %175, i32 %176, i32 %177, i32 32)
  %179 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %180 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %181 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %182 = load i32, i32* @MDIO_PMA_REG_8481_LED3_MASK, align 4
  %183 = call i32 @elink_cl45_write(%struct.bxe_softc* %179, %struct.elink_phy* %180, i32 %181, i32 %182, i32 32)
  %184 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %185 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %186 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %187 = load i32, i32* @MDIO_PMA_REG_8481_LED5_MASK, align 4
  %188 = call i32 @elink_cl45_write(%struct.bxe_softc* %184, %struct.elink_phy* %185, i32 %186, i32 %187, i32 0)
  br label %234

189:                                              ; preds = %142
  %190 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %191 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %192 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %193 = load i32, i32* @MDIO_PMA_REG_8481_LED1_MASK, align 4
  %194 = call i32 @elink_cl45_write(%struct.bxe_softc* %190, %struct.elink_phy* %191, i32 %192, i32 %193, i32 32)
  %195 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %196 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84834, align 4
  %199 = icmp eq i32 %197, %198
  br i1 %199, label %200, label %233

200:                                              ; preds = %189
  %201 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %202 = load i32, i32* @NIG_REG_MASK_INTERRUPT_PORT0, align 4
  %203 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %204 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = mul nsw i32 %205, 4
  %207 = add nsw i32 %202, %206
  %208 = call i32 @REG_RD(%struct.bxe_softc* %201, i32 %207)
  %209 = load i32, i32* @ELINK_NIG_MASK_MI_INT, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %227

212:                                              ; preds = %200
  %213 = load i32, i32* @ELINK_LINK_FLAGS_INT_DISABLED, align 4
  %214 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %215 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = or i32 %216, %213
  store i32 %217, i32* %215, align 8
  %218 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %219 = load i32, i32* @NIG_REG_MASK_INTERRUPT_PORT0, align 4
  %220 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %221 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = mul nsw i32 %222, 4
  %224 = add nsw i32 %219, %223
  %225 = load i32, i32* @ELINK_NIG_MASK_MI_INT, align 4
  %226 = call i32 @elink_bits_dis(%struct.bxe_softc* %218, i32 %224, i32 %225)
  br label %227

227:                                              ; preds = %212, %200
  %228 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %229 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %230 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %231 = load i32, i32* @MDIO_PMA_REG_8481_SIGNAL_MASK, align 4
  %232 = call i32 @elink_cl45_write(%struct.bxe_softc* %228, %struct.elink_phy* %229, i32 %230, i32 %231, i32 32)
  br label %233

233:                                              ; preds = %227, %189
  br label %234

234:                                              ; preds = %233, %153
  br label %347

235:                                              ; preds = %23
  %236 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %237 = load i32, i32* %9, align 4
  %238 = call i32 @ELINK_DEBUG_P1(%struct.bxe_softc* %236, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %237)
  %239 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %240 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* @SHARED_HW_CFG_LED_MODE_SHIFT, align 4
  %243 = shl i32 %241, %242
  %244 = load i32, i32* @SHARED_HW_CFG_LED_EXTPHY1, align 4
  %245 = icmp eq i32 %243, %244
  br i1 %245, label %246, label %287

246:                                              ; preds = %235
  %247 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %248 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %249 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %250 = load i32, i32* @MDIO_PMA_REG_8481_LINK_SIGNAL, align 4
  %251 = call i32 @elink_cl45_read(%struct.bxe_softc* %247, %struct.elink_phy* %248, i32 %249, i32 %250, i32* %8)
  %252 = load i32, i32* %8, align 4
  %253 = load i32, i32* @MDIO_PMA_REG_8481_LINK_SIGNAL_LED4_ENABLE_MASK, align 4
  %254 = and i32 %252, %253
  %255 = load i32, i32* @MDIO_PMA_REG_8481_LINK_SIGNAL_LED4_ENABLE_SHIFT, align 4
  %256 = ashr i32 %254, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %266, label %258

258:                                              ; preds = %246
  %259 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %260 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %259, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %261 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %262 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %263 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %264 = load i32, i32* @MDIO_PMA_REG_8481_LINK_SIGNAL, align 4
  %265 = call i32 @elink_cl45_write(%struct.bxe_softc* %261, %struct.elink_phy* %262, i32 %263, i32 %264, i32 42130)
  br label %266

266:                                              ; preds = %258, %246
  %267 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %268 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %269 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %270 = load i32, i32* @MDIO_PMA_REG_8481_LED1_MASK, align 4
  %271 = call i32 @elink_cl45_write(%struct.bxe_softc* %267, %struct.elink_phy* %268, i32 %269, i32 %270, i32 16)
  %272 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %273 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %274 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %275 = load i32, i32* @MDIO_PMA_REG_8481_LED2_MASK, align 4
  %276 = call i32 @elink_cl45_write(%struct.bxe_softc* %272, %struct.elink_phy* %273, i32 %274, i32 %275, i32 128)
  %277 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %278 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %279 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %280 = load i32, i32* @MDIO_PMA_REG_8481_LED3_MASK, align 4
  %281 = call i32 @elink_cl45_write(%struct.bxe_softc* %277, %struct.elink_phy* %278, i32 %279, i32 %280, i32 152)
  %282 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %283 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %284 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %285 = load i32, i32* @MDIO_PMA_REG_8481_LED5_MASK, align 4
  %286 = call i32 @elink_cl45_write(%struct.bxe_softc* %282, %struct.elink_phy* %283, i32 %284, i32 %285, i32 64)
  br label %346

287:                                              ; preds = %235
  %288 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %289 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = load i32, i32* @SHARED_HW_CFG_LED_MODE_SHIFT, align 4
  %292 = shl i32 %290, %291
  %293 = load i32, i32* @SHARED_HW_CFG_LED_EXTPHY2, align 4
  %294 = icmp eq i32 %292, %293
  %295 = zext i1 %294 to i64
  %296 = select i1 %294, i32 152, i32 128
  store i32 %296, i32* %8, align 4
  %297 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %298 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %299 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %300 = load i32, i32* @MDIO_PMA_REG_8481_LED1_MASK, align 4
  %301 = load i32, i32* %8, align 4
  %302 = call i32 @elink_cl45_write(%struct.bxe_softc* %297, %struct.elink_phy* %298, i32 %299, i32 %300, i32 %301)
  %303 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %304 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %305 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %306 = load i32, i32* @MDIO_PMA_REG_8481_LINK_SIGNAL, align 4
  %307 = call i32 @elink_cl45_read(%struct.bxe_softc* %303, %struct.elink_phy* %304, i32 %305, i32 %306, i32* %8)
  %308 = load i32, i32* %8, align 4
  %309 = and i32 %308, -449
  store i32 %309, i32* %8, align 4
  %310 = load i32, i32* %8, align 4
  %311 = or i32 %310, 64
  store i32 %311, i32* %8, align 4
  %312 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %313 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %314 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %315 = load i32, i32* @MDIO_PMA_REG_8481_LINK_SIGNAL, align 4
  %316 = load i32, i32* %8, align 4
  %317 = call i32 @elink_cl45_write(%struct.bxe_softc* %312, %struct.elink_phy* %313, i32 %314, i32 %315, i32 %316)
  %318 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %319 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 4
  %321 = load i32, i32* @PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84834, align 4
  %322 = icmp eq i32 %320, %321
  br i1 %322, label %323, label %345

323:                                              ; preds = %287
  %324 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %325 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %326 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %327 = load i32, i32* @MDIO_PMA_REG_8481_SIGNAL_MASK, align 4
  %328 = call i32 @elink_cl45_write(%struct.bxe_softc* %324, %struct.elink_phy* %325, i32 %326, i32 %327, i32 64)
  %329 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %330 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %329, i32 0, i32 2
  %331 = load i32, i32* %330, align 8
  %332 = load i32, i32* @ELINK_LINK_FLAGS_INT_DISABLED, align 4
  %333 = and i32 %331, %332
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %344

335:                                              ; preds = %323
  %336 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %337 = call i32 @elink_link_int_enable(%struct.elink_params* %336)
  %338 = load i32, i32* @ELINK_LINK_FLAGS_INT_DISABLED, align 4
  %339 = xor i32 %338, -1
  %340 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %341 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %340, i32 0, i32 2
  %342 = load i32, i32* %341, align 8
  %343 = and i32 %342, %339
  store i32 %343, i32* %341, align 8
  br label %344

344:                                              ; preds = %335, %323
  br label %345

345:                                              ; preds = %344, %287
  br label %346

346:                                              ; preds = %345, %266
  br label %347

347:                                              ; preds = %23, %346, %234, %141, %63
  %348 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %349 = call i64 @CHIP_IS_E3(%struct.bxe_softc* %348)
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %351, label %357

351:                                              ; preds = %347
  %352 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %353 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %354 = load i32, i32* @MDIO_WC_DEVAD, align 4
  %355 = load i32, i32* @MDIO_WC_REG_GP2_STATUS_GP_2_1, align 4
  %356 = call i32 @elink_cl45_read(%struct.bxe_softc* %352, %struct.elink_phy* %353, i32 %354, i32 %355, i32* %8)
  br label %357

357:                                              ; preds = %351, %347
  ret void
}

declare dso_local i32 @CHIP_IS_E1x(%struct.bxe_softc*) #1

declare dso_local i32 @SC_PATH(%struct.bxe_softc*) #1

declare dso_local i32 @ELINK_DEBUG_P1(%struct.bxe_softc*, i8*, i32) #1

declare dso_local i32 @elink_cl45_write(%struct.bxe_softc*, %struct.elink_phy*, i32, i32, i32) #1

declare dso_local i32 @REG_RD(%struct.bxe_softc*, i32) #1

declare dso_local i32 @elink_bits_dis(%struct.bxe_softc*, i32, i32) #1

declare dso_local i32 @elink_cl45_read(%struct.bxe_softc*, %struct.elink_phy*, i32, i32, i32*) #1

declare dso_local i32 @ELINK_DEBUG_P0(%struct.bxe_softc*, i8*) #1

declare dso_local i32 @elink_link_int_enable(%struct.elink_params*) #1

declare dso_local i64 @CHIP_IS_E3(%struct.bxe_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
