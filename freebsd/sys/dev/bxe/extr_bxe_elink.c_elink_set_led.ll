; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_set_led.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_set_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elink_params = type { i64, i32, i32, i32, %struct.TYPE_2__*, %struct.bxe_softc* }
%struct.TYPE_2__ = type { i32, i32 (%struct.TYPE_2__*, %struct.elink_params*, i64)* }
%struct.bxe_softc = type { i32 }
%struct.elink_vars = type { i32 }

@ELINK_STATUS_OK = common dso_local global i32 0, align 4
@GRCBASE_EMAC1 = common dso_local global i32 0, align 4
@GRCBASE_EMAC0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"elink_set_led: port %x, mode %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"speed 0x%x, hw_led_mode 0x%x\0A\00", align 1
@ELINK_EXT_PHY1 = common dso_local global i64 0, align 8
@ELINK_MAX_PHYS = common dso_local global i64 0, align 8
@NIG_REG_LED_10G_P0 = common dso_local global i64 0, align 8
@NIG_REG_LED_MODE_P0 = common dso_local global i64 0, align 8
@SHARED_HW_CFG_LED_MAC1 = common dso_local global i32 0, align 4
@EMAC_REG_EMAC_LED = common dso_local global i32 0, align 4
@PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM54618SE = common dso_local global i32 0, align 4
@EMAC_LED_1000MB_OVERRIDE = common dso_local global i32 0, align 4
@EMAC_LED_100MB_OVERRIDE = common dso_local global i32 0, align 4
@EMAC_LED_10MB_OVERRIDE = common dso_local global i32 0, align 4
@EMAC_LED_OVERRIDE = common dso_local global i32 0, align 4
@PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM8727 = common dso_local global i32 0, align 4
@PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM8722 = common dso_local global i32 0, align 4
@ELINK_SPEED_10000 = common dso_local global i32 0, align 4
@SHARED_HW_CFG_LED_MODE_SHIFT = common dso_local global i32 0, align 4
@SHARED_HW_CFG_LED_EXTPHY2 = common dso_local global i32 0, align 4
@SHARED_HW_CFG_LED_PHY1 = common dso_local global i32 0, align 4
@NIG_REG_LED_CONTROL_OVERRIDE_TRAFFIC_P0 = common dso_local global i64 0, align 8
@NIG_REG_LED_CONTROL_BLINK_RATE_P0 = common dso_local global i64 0, align 8
@LED_BLINK_RATE_VAL_E3 = common dso_local global i32 0, align 4
@LED_BLINK_RATE_VAL_E1X_E2 = common dso_local global i32 0, align 4
@NIG_REG_LED_CONTROL_BLINK_RATE_ENA_P0 = common dso_local global i64 0, align 8
@ELINK_SPEED_2500 = common dso_local global i32 0, align 4
@ELINK_SPEED_1000 = common dso_local global i32 0, align 4
@ELINK_SPEED_100 = common dso_local global i32 0, align 4
@ELINK_SPEED_10 = common dso_local global i32 0, align 4
@NIG_REG_LED_CONTROL_TRAFFIC_P0 = common dso_local global i64 0, align 8
@NIG_REG_LED_CONTROL_BLINK_TRAFFIC_P0 = common dso_local global i64 0, align 8
@ELINK_STATUS_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"elink_set_led: Invalid led mode %d\0A\00", align 1
@ELINK_FEATURE_CONFIG_EMUL_DISABLE_EMAC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @elink_set_led(%struct.elink_params* %0, %struct.elink_vars* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.elink_params*, align 8
  %7 = alloca %struct.elink_vars*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.bxe_softc*, align 8
  %17 = alloca i32, align 4
  store %struct.elink_params* %0, %struct.elink_params** %6, align 8
  store %struct.elink_vars* %1, %struct.elink_vars** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load %struct.elink_params*, %struct.elink_params** %6, align 8
  %19 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %10, align 8
  %21 = load %struct.elink_params*, %struct.elink_params** %6, align 8
  %22 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* @ELINK_STATUS_OK, align 4
  store i32 %24, i32* %12, align 4
  %25 = load i64, i64* %10, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* @GRCBASE_EMAC1, align 4
  br label %31

29:                                               ; preds = %4
  %30 = load i32, i32* @GRCBASE_EMAC0, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  store i32 %32, i32* %15, align 4
  %33 = load %struct.elink_params*, %struct.elink_params** %6, align 8
  %34 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %33, i32 0, i32 5
  %35 = load %struct.bxe_softc*, %struct.bxe_softc** %34, align 8
  store %struct.bxe_softc* %35, %struct.bxe_softc** %16, align 8
  %36 = load %struct.bxe_softc*, %struct.bxe_softc** %16, align 8
  %37 = load i64, i64* %10, align 8
  %38 = trunc i64 %37 to i32
  %39 = load i64, i64* %8, align 8
  %40 = trunc i64 %39 to i32
  %41 = call i32 @ELINK_DEBUG_P2(%struct.bxe_softc* %36, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %40)
  %42 = load %struct.bxe_softc*, %struct.bxe_softc** %16, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @ELINK_DEBUG_P2(%struct.bxe_softc* %42, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %44)
  %46 = load i64, i64* @ELINK_EXT_PHY1, align 8
  store i64 %46, i64* %13, align 8
  br label %47

47:                                               ; preds = %77, %31
  %48 = load i64, i64* %13, align 8
  %49 = load i64, i64* @ELINK_MAX_PHYS, align 8
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %51, label %80

51:                                               ; preds = %47
  %52 = load %struct.elink_params*, %struct.elink_params** %6, align 8
  %53 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %52, i32 0, i32 4
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i64, i64* %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32 (%struct.TYPE_2__*, %struct.elink_params*, i64)*, i32 (%struct.TYPE_2__*, %struct.elink_params*, i64)** %57, align 8
  %59 = icmp ne i32 (%struct.TYPE_2__*, %struct.elink_params*, i64)* %58, null
  br i1 %59, label %60, label %76

60:                                               ; preds = %51
  %61 = load %struct.elink_params*, %struct.elink_params** %6, align 8
  %62 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %61, i32 0, i32 4
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i64, i64* %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32 (%struct.TYPE_2__*, %struct.elink_params*, i64)*, i32 (%struct.TYPE_2__*, %struct.elink_params*, i64)** %66, align 8
  %68 = load %struct.elink_params*, %struct.elink_params** %6, align 8
  %69 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %68, i32 0, i32 4
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = load i64, i64* %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %71
  %73 = load %struct.elink_params*, %struct.elink_params** %6, align 8
  %74 = load i64, i64* %8, align 8
  %75 = call i32 %67(%struct.TYPE_2__* %72, %struct.elink_params* %73, i64 %74)
  br label %76

76:                                               ; preds = %60, %51
  br label %77

77:                                               ; preds = %76
  %78 = load i64, i64* %13, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %13, align 8
  br label %47

80:                                               ; preds = %47
  %81 = load i64, i64* %8, align 8
  switch i64 %81, label %400 [
    i64 131, label %82
    i64 130, label %82
    i64 128, label %130
    i64 129, label %137
  ]

82:                                               ; preds = %80, %80
  %83 = load %struct.bxe_softc*, %struct.bxe_softc** %16, align 8
  %84 = load i64, i64* @NIG_REG_LED_10G_P0, align 8
  %85 = load i64, i64* %10, align 8
  %86 = mul i64 %85, 4
  %87 = add i64 %84, %86
  %88 = call i32 @REG_WR(%struct.bxe_softc* %83, i64 %87, i32 0)
  %89 = load %struct.bxe_softc*, %struct.bxe_softc** %16, align 8
  %90 = load i64, i64* @NIG_REG_LED_MODE_P0, align 8
  %91 = load i64, i64* %10, align 8
  %92 = mul i64 %91, 4
  %93 = add i64 %90, %92
  %94 = load i32, i32* @SHARED_HW_CFG_LED_MAC1, align 4
  %95 = call i32 @REG_WR(%struct.bxe_softc* %89, i64 %93, i32 %94)
  %96 = load %struct.bxe_softc*, %struct.bxe_softc** %16, align 8
  %97 = load i32, i32* %15, align 4
  %98 = load i32, i32* @EMAC_REG_EMAC_LED, align 4
  %99 = add nsw i32 %97, %98
  %100 = call i32 @elink_cb_reg_read(%struct.bxe_softc* %96, i32 %99)
  store i32 %100, i32* %14, align 4
  %101 = load %struct.elink_params*, %struct.elink_params** %6, align 8
  %102 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %101, i32 0, i32 4
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = load i64, i64* @ELINK_EXT_PHY1, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM54618SE, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %119

110:                                              ; preds = %82
  %111 = load i32, i32* @EMAC_LED_1000MB_OVERRIDE, align 4
  %112 = load i32, i32* @EMAC_LED_100MB_OVERRIDE, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @EMAC_LED_10MB_OVERRIDE, align 4
  %115 = or i32 %113, %114
  %116 = xor i32 %115, -1
  %117 = load i32, i32* %14, align 4
  %118 = and i32 %117, %116
  store i32 %118, i32* %14, align 4
  br label %123

119:                                              ; preds = %82
  %120 = load i32, i32* @EMAC_LED_OVERRIDE, align 4
  %121 = load i32, i32* %14, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %14, align 4
  br label %123

123:                                              ; preds = %119, %110
  %124 = load %struct.bxe_softc*, %struct.bxe_softc** %16, align 8
  %125 = load i32, i32* %15, align 4
  %126 = load i32, i32* @EMAC_REG_EMAC_LED, align 4
  %127 = add nsw i32 %125, %126
  %128 = load i32, i32* %14, align 4
  %129 = call i32 @elink_cb_reg_write(%struct.bxe_softc* %124, i32 %127, i32 %128)
  br label %405

130:                                              ; preds = %80
  %131 = load %struct.elink_vars*, %struct.elink_vars** %7, align 8
  %132 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %130
  br label %405

136:                                              ; preds = %130
  br label %137

137:                                              ; preds = %80, %136
  %138 = load %struct.elink_params*, %struct.elink_params** %6, align 8
  %139 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %138, i32 0, i32 4
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %139, align 8
  %141 = load i64, i64* @ELINK_EXT_PHY1, align 8
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM8727, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %157, label %147

147:                                              ; preds = %137
  %148 = load %struct.elink_params*, %struct.elink_params** %6, align 8
  %149 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %148, i32 0, i32 4
  %150 = load %struct.TYPE_2__*, %struct.TYPE_2__** %149, align 8
  %151 = load i64, i64* @ELINK_EXT_PHY1, align 8
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM8722, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %205

157:                                              ; preds = %147, %137
  %158 = load %struct.bxe_softc*, %struct.bxe_softc** %16, align 8
  %159 = call i32 @CHIP_IS_E2(%struct.bxe_softc* %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %205

161:                                              ; preds = %157
  %162 = load %struct.elink_params*, %struct.elink_params** %6, align 8
  %163 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 8
  %165 = icmp eq i32 %164, 2
  br i1 %165, label %166, label %205

166:                                              ; preds = %161
  %167 = load i64, i64* %8, align 8
  %168 = icmp eq i64 %167, 129
  br i1 %168, label %173, label %169

169:                                              ; preds = %166
  %170 = load i32, i32* %9, align 4
  %171 = load i32, i32* @ELINK_SPEED_10000, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %204

173:                                              ; preds = %169, %166
  %174 = load %struct.bxe_softc*, %struct.bxe_softc** %16, align 8
  %175 = load i64, i64* @NIG_REG_LED_MODE_P0, align 8
  %176 = load i64, i64* %10, align 8
  %177 = mul i64 %176, 4
  %178 = add i64 %175, %177
  %179 = call i32 @REG_WR(%struct.bxe_softc* %174, i64 %178, i32 0)
  %180 = load %struct.bxe_softc*, %struct.bxe_softc** %16, align 8
  %181 = load i64, i64* @NIG_REG_LED_10G_P0, align 8
  %182 = load i64, i64* %10, align 8
  %183 = mul i64 %182, 4
  %184 = add i64 %181, %183
  %185 = call i32 @REG_WR(%struct.bxe_softc* %180, i64 %184, i32 1)
  %186 = load %struct.bxe_softc*, %struct.bxe_softc** %16, align 8
  %187 = load i32, i32* %15, align 4
  %188 = load i32, i32* @EMAC_REG_EMAC_LED, align 4
  %189 = add nsw i32 %187, %188
  %190 = call i32 @elink_cb_reg_read(%struct.bxe_softc* %186, i32 %189)
  store i32 %190, i32* %14, align 4
  %191 = load %struct.bxe_softc*, %struct.bxe_softc** %16, align 8
  %192 = load i32, i32* %15, align 4
  %193 = load i32, i32* @EMAC_REG_EMAC_LED, align 4
  %194 = add nsw i32 %192, %193
  %195 = load i32, i32* %14, align 4
  %196 = load i32, i32* @EMAC_LED_OVERRIDE, align 4
  %197 = or i32 %195, %196
  %198 = call i32 @elink_cb_reg_write(%struct.bxe_softc* %191, i32 %194, i32 %197)
  %199 = load i64, i64* %8, align 8
  %200 = icmp eq i64 %199, 129
  br i1 %200, label %201, label %203

201:                                              ; preds = %173
  %202 = load i32, i32* %12, align 4
  store i32 %202, i32* %5, align 4
  br label %407

203:                                              ; preds = %173
  br label %204

204:                                              ; preds = %203, %169
  br label %314

205:                                              ; preds = %161, %157, %147
  %206 = load %struct.elink_params*, %struct.elink_params** %6, align 8
  %207 = call i32 @ELINK_SINGLE_MEDIA_DIRECT(%struct.elink_params* %206)
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %254

209:                                              ; preds = %205
  %210 = load %struct.bxe_softc*, %struct.bxe_softc** %16, align 8
  %211 = call i32 @CHIP_IS_E3(%struct.bxe_softc* %210)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %220

213:                                              ; preds = %209
  %214 = load %struct.bxe_softc*, %struct.bxe_softc** %16, align 8
  %215 = call i32 @CHIP_IS_E3(%struct.bxe_softc* %214)
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %227

217:                                              ; preds = %213
  %218 = load i64, i64* %8, align 8
  %219 = icmp eq i64 %218, 129
  br i1 %219, label %220, label %227

220:                                              ; preds = %217, %209
  %221 = load %struct.bxe_softc*, %struct.bxe_softc** %16, align 8
  %222 = load i64, i64* @NIG_REG_LED_10G_P0, align 8
  %223 = load i64, i64* %10, align 8
  %224 = mul i64 %223, 4
  %225 = add i64 %222, %224
  %226 = call i32 @REG_WR(%struct.bxe_softc* %221, i64 %225, i32 1)
  br label %227

227:                                              ; preds = %220, %217, %213
  %228 = load %struct.bxe_softc*, %struct.bxe_softc** %16, align 8
  %229 = call i32 @CHIP_IS_E1x(%struct.bxe_softc* %228)
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %238, label %231

231:                                              ; preds = %227
  %232 = load %struct.bxe_softc*, %struct.bxe_softc** %16, align 8
  %233 = call i32 @CHIP_IS_E2(%struct.bxe_softc* %232)
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %238, label %235

235:                                              ; preds = %231
  %236 = load i64, i64* %8, align 8
  %237 = icmp eq i64 %236, 129
  br i1 %237, label %238, label %245

238:                                              ; preds = %235, %231, %227
  %239 = load %struct.bxe_softc*, %struct.bxe_softc** %16, align 8
  %240 = load i64, i64* @NIG_REG_LED_MODE_P0, align 8
  %241 = load i64, i64* %10, align 8
  %242 = mul i64 %241, 4
  %243 = add i64 %240, %242
  %244 = call i32 @REG_WR(%struct.bxe_softc* %239, i64 %243, i32 0)
  br label %253

245:                                              ; preds = %235
  %246 = load %struct.bxe_softc*, %struct.bxe_softc** %16, align 8
  %247 = load i64, i64* @NIG_REG_LED_MODE_P0, align 8
  %248 = load i64, i64* %10, align 8
  %249 = mul i64 %248, 4
  %250 = add i64 %247, %249
  %251 = load i32, i32* %11, align 4
  %252 = call i32 @REG_WR(%struct.bxe_softc* %246, i64 %250, i32 %251)
  br label %253

253:                                              ; preds = %245, %238
  br label %313

254:                                              ; preds = %205
  %255 = load %struct.elink_params*, %struct.elink_params** %6, align 8
  %256 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %255, i32 0, i32 4
  %257 = load %struct.TYPE_2__*, %struct.TYPE_2__** %256, align 8
  %258 = load i64, i64* @ELINK_EXT_PHY1, align 8
  %259 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %257, i64 %258
  %260 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = load i32, i32* @PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM54618SE, align 4
  %263 = icmp eq i32 %261, %262
  br i1 %263, label %264, label %289

264:                                              ; preds = %254
  %265 = load i64, i64* %8, align 8
  %266 = icmp eq i64 %265, 129
  br i1 %266, label %267, label %289

267:                                              ; preds = %264
  %268 = load %struct.bxe_softc*, %struct.bxe_softc** %16, align 8
  %269 = load i64, i64* @NIG_REG_LED_MODE_P0, align 8
  %270 = load i64, i64* %10, align 8
  %271 = mul i64 %270, 4
  %272 = add i64 %269, %271
  %273 = call i32 @REG_WR(%struct.bxe_softc* %268, i64 %272, i32 0)
  %274 = load %struct.bxe_softc*, %struct.bxe_softc** %16, align 8
  %275 = load i32, i32* %15, align 4
  %276 = load i32, i32* @EMAC_REG_EMAC_LED, align 4
  %277 = add nsw i32 %275, %276
  %278 = call i32 @elink_cb_reg_read(%struct.bxe_softc* %274, i32 %277)
  store i32 %278, i32* %14, align 4
  %279 = load %struct.bxe_softc*, %struct.bxe_softc** %16, align 8
  %280 = load i32, i32* %15, align 4
  %281 = load i32, i32* @EMAC_REG_EMAC_LED, align 4
  %282 = add nsw i32 %280, %281
  %283 = load i32, i32* %14, align 4
  %284 = load i32, i32* @EMAC_LED_OVERRIDE, align 4
  %285 = or i32 %283, %284
  %286 = load i32, i32* @EMAC_LED_1000MB_OVERRIDE, align 4
  %287 = or i32 %285, %286
  %288 = call i32 @elink_cb_reg_write(%struct.bxe_softc* %279, i32 %282, i32 %287)
  br label %405

289:                                              ; preds = %264, %254
  %290 = load %struct.elink_params*, %struct.elink_params** %6, align 8
  %291 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 8
  %293 = load i32, i32* @SHARED_HW_CFG_LED_MODE_SHIFT, align 4
  %294 = shl i32 %292, %293
  %295 = load i32, i32* @SHARED_HW_CFG_LED_EXTPHY2, align 4
  %296 = icmp eq i32 %294, %295
  br i1 %296, label %297, label %301

297:                                              ; preds = %289
  %298 = load i32, i32* @SHARED_HW_CFG_LED_PHY1, align 4
  %299 = load i32, i32* @SHARED_HW_CFG_LED_MODE_SHIFT, align 4
  %300 = ashr i32 %298, %299
  br label %303

301:                                              ; preds = %289
  %302 = load i32, i32* %11, align 4
  br label %303

303:                                              ; preds = %301, %297
  %304 = phi i32 [ %300, %297 ], [ %302, %301 ]
  store i32 %304, i32* %17, align 4
  %305 = load %struct.bxe_softc*, %struct.bxe_softc** %16, align 8
  %306 = load i64, i64* @NIG_REG_LED_MODE_P0, align 8
  %307 = load i64, i64* %10, align 8
  %308 = mul i64 %307, 4
  %309 = add i64 %306, %308
  %310 = load i32, i32* %17, align 4
  %311 = call i32 @REG_WR(%struct.bxe_softc* %305, i64 %309, i32 %310)
  br label %312

312:                                              ; preds = %303
  br label %313

313:                                              ; preds = %312, %253
  br label %314

314:                                              ; preds = %313, %204
  %315 = load %struct.bxe_softc*, %struct.bxe_softc** %16, align 8
  %316 = load i64, i64* @NIG_REG_LED_CONTROL_OVERRIDE_TRAFFIC_P0, align 8
  %317 = load i64, i64* %10, align 8
  %318 = mul i64 %317, 4
  %319 = add i64 %316, %318
  %320 = call i32 @REG_WR(%struct.bxe_softc* %315, i64 %319, i32 0)
  %321 = load %struct.bxe_softc*, %struct.bxe_softc** %16, align 8
  %322 = call i32 @CHIP_IS_E3(%struct.bxe_softc* %321)
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %332

324:                                              ; preds = %314
  %325 = load %struct.bxe_softc*, %struct.bxe_softc** %16, align 8
  %326 = load i64, i64* @NIG_REG_LED_CONTROL_BLINK_RATE_P0, align 8
  %327 = load i64, i64* %10, align 8
  %328 = mul i64 %327, 4
  %329 = add i64 %326, %328
  %330 = load i32, i32* @LED_BLINK_RATE_VAL_E3, align 4
  %331 = call i32 @REG_WR(%struct.bxe_softc* %325, i64 %329, i32 %330)
  br label %340

332:                                              ; preds = %314
  %333 = load %struct.bxe_softc*, %struct.bxe_softc** %16, align 8
  %334 = load i64, i64* @NIG_REG_LED_CONTROL_BLINK_RATE_P0, align 8
  %335 = load i64, i64* %10, align 8
  %336 = mul i64 %335, 4
  %337 = add i64 %334, %336
  %338 = load i32, i32* @LED_BLINK_RATE_VAL_E1X_E2, align 4
  %339 = call i32 @REG_WR(%struct.bxe_softc* %333, i64 %337, i32 %338)
  br label %340

340:                                              ; preds = %332, %324
  %341 = load %struct.bxe_softc*, %struct.bxe_softc** %16, align 8
  %342 = load i64, i64* @NIG_REG_LED_CONTROL_BLINK_RATE_ENA_P0, align 8
  %343 = load i64, i64* %10, align 8
  %344 = mul i64 %343, 4
  %345 = add i64 %342, %344
  %346 = call i32 @REG_WR(%struct.bxe_softc* %341, i64 %345, i32 1)
  %347 = load %struct.bxe_softc*, %struct.bxe_softc** %16, align 8
  %348 = load i32, i32* %15, align 4
  %349 = load i32, i32* @EMAC_REG_EMAC_LED, align 4
  %350 = add nsw i32 %348, %349
  %351 = call i32 @elink_cb_reg_read(%struct.bxe_softc* %347, i32 %350)
  store i32 %351, i32* %14, align 4
  %352 = load %struct.bxe_softc*, %struct.bxe_softc** %16, align 8
  %353 = load i32, i32* %15, align 4
  %354 = load i32, i32* @EMAC_REG_EMAC_LED, align 4
  %355 = add nsw i32 %353, %354
  %356 = load i32, i32* %14, align 4
  %357 = load i32, i32* @EMAC_LED_OVERRIDE, align 4
  %358 = xor i32 %357, -1
  %359 = and i32 %356, %358
  %360 = call i32 @elink_cb_reg_write(%struct.bxe_softc* %352, i32 %355, i32 %359)
  %361 = load %struct.bxe_softc*, %struct.bxe_softc** %16, align 8
  %362 = call i32 @CHIP_IS_E1(%struct.bxe_softc* %361)
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %399

364:                                              ; preds = %340
  %365 = load i32, i32* %9, align 4
  %366 = load i32, i32* @ELINK_SPEED_2500, align 4
  %367 = icmp eq i32 %365, %366
  br i1 %367, label %380, label %368

368:                                              ; preds = %364
  %369 = load i32, i32* %9, align 4
  %370 = load i32, i32* @ELINK_SPEED_1000, align 4
  %371 = icmp eq i32 %369, %370
  br i1 %371, label %380, label %372

372:                                              ; preds = %368
  %373 = load i32, i32* %9, align 4
  %374 = load i32, i32* @ELINK_SPEED_100, align 4
  %375 = icmp eq i32 %373, %374
  br i1 %375, label %380, label %376

376:                                              ; preds = %372
  %377 = load i32, i32* %9, align 4
  %378 = load i32, i32* @ELINK_SPEED_10, align 4
  %379 = icmp eq i32 %377, %378
  br i1 %379, label %380, label %399

380:                                              ; preds = %376, %372, %368, %364
  %381 = load %struct.bxe_softc*, %struct.bxe_softc** %16, align 8
  %382 = load i64, i64* @NIG_REG_LED_CONTROL_OVERRIDE_TRAFFIC_P0, align 8
  %383 = load i64, i64* %10, align 8
  %384 = mul i64 %383, 4
  %385 = add i64 %382, %384
  %386 = call i32 @REG_WR(%struct.bxe_softc* %381, i64 %385, i32 1)
  %387 = load %struct.bxe_softc*, %struct.bxe_softc** %16, align 8
  %388 = load i64, i64* @NIG_REG_LED_CONTROL_TRAFFIC_P0, align 8
  %389 = load i64, i64* %10, align 8
  %390 = mul i64 %389, 4
  %391 = add i64 %388, %390
  %392 = call i32 @REG_WR(%struct.bxe_softc* %387, i64 %391, i32 0)
  %393 = load %struct.bxe_softc*, %struct.bxe_softc** %16, align 8
  %394 = load i64, i64* @NIG_REG_LED_CONTROL_BLINK_TRAFFIC_P0, align 8
  %395 = load i64, i64* %10, align 8
  %396 = mul i64 %395, 4
  %397 = add i64 %394, %396
  %398 = call i32 @REG_WR(%struct.bxe_softc* %393, i64 %397, i32 1)
  br label %399

399:                                              ; preds = %380, %376, %340
  br label %405

400:                                              ; preds = %80
  %401 = load i32, i32* @ELINK_STATUS_ERROR, align 4
  store i32 %401, i32* %12, align 4
  %402 = load %struct.bxe_softc*, %struct.bxe_softc** %16, align 8
  %403 = load i64, i64* %8, align 8
  %404 = call i32 @ELINK_DEBUG_P1(%struct.bxe_softc* %402, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i64 %403)
  br label %405

405:                                              ; preds = %400, %399, %267, %135, %123
  %406 = load i32, i32* %12, align 4
  store i32 %406, i32* %5, align 4
  br label %407

407:                                              ; preds = %405, %201
  %408 = load i32, i32* %5, align 4
  ret i32 %408
}

declare dso_local i32 @ELINK_DEBUG_P2(%struct.bxe_softc*, i8*, i32, i32) #1

declare dso_local i32 @REG_WR(%struct.bxe_softc*, i64, i32) #1

declare dso_local i32 @elink_cb_reg_read(%struct.bxe_softc*, i32) #1

declare dso_local i32 @elink_cb_reg_write(%struct.bxe_softc*, i32, i32) #1

declare dso_local i32 @CHIP_IS_E2(%struct.bxe_softc*) #1

declare dso_local i32 @ELINK_SINGLE_MEDIA_DIRECT(%struct.elink_params*) #1

declare dso_local i32 @CHIP_IS_E3(%struct.bxe_softc*) #1

declare dso_local i32 @CHIP_IS_E1x(%struct.bxe_softc*) #1

declare dso_local i32 @CHIP_IS_E1(%struct.bxe_softc*) #1

declare dso_local i32 @ELINK_DEBUG_P1(%struct.bxe_softc*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
