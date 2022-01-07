; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_link_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_link_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elink_params = type { i32, i32, i32, %struct.TYPE_4__*, i32, %struct.bxe_softc* }
%struct.TYPE_4__ = type { i32, i32 (%struct.TYPE_4__*, %struct.elink_params*)* }
%struct.bxe_softc = type { i32 }
%struct.elink_vars = type { i32, i64, i64, i64 }

@.str = private unnamed_addr constant [31 x i8] c"Resetting the link of port %d\0A\00", align 1
@SHMEM_EEE_LP_ADV_STATUS_MASK = common dso_local global i32 0, align 4
@SHMEM_EEE_ACTIVE_BIT = common dso_local global i32 0, align 4
@NIG_REG_MASK_INTERRUPT_PORT0 = common dso_local global i64 0, align 8
@ELINK_NIG_MASK_XGXS0_LINK_STATUS = common dso_local global i32 0, align 4
@ELINK_NIG_MASK_XGXS0_LINK10G = common dso_local global i32 0, align 4
@ELINK_NIG_MASK_SERDES0_LINK_STATUS = common dso_local global i32 0, align 4
@ELINK_NIG_MASK_MI_INT = common dso_local global i32 0, align 4
@NIG_REG_EGRESS_DRAIN0_MODE = common dso_local global i64 0, align 8
@NIG_REG_BMAC0_OUT_EN = common dso_local global i64 0, align 8
@NIG_REG_EGRESS_EMAC0_OUT_EN = common dso_local global i64 0, align 8
@NIG_REG_NIG_EMAC0_EN = common dso_local global i64 0, align 8
@ELINK_LED_MODE_OFF = common dso_local global i32 0, align 4
@ELINK_EXT_PHY1 = common dso_local global i32 0, align 4
@ELINK_FLAGS_REARM_LATCH_SIGNAL = common dso_local global i32 0, align 4
@NIG_REG_LATCH_BC_0 = common dso_local global i64 0, align 8
@ELINK_NIG_LATCH_BC_ENABLE_MI_INT = common dso_local global i32 0, align 4
@ELINK_INT_PHY = common dso_local global i64 0, align 8
@GRCBASE_MISC = common dso_local global i64 0, align 8
@MISC_REGISTERS_RESET_REG_2_CLEAR = common dso_local global i64 0, align 8
@MISC_REGISTERS_RESET_REG_2_RST_BMAC0 = common dso_local global i32 0, align 4
@NIG_REG_BMAC0_IN_EN = common dso_local global i64 0, align 8
@NIG_REG_EMAC0_IN_EN = common dso_local global i64 0, align 8
@GRCBASE_XMAC1 = common dso_local global i64 0, align 8
@GRCBASE_XMAC0 = common dso_local global i64 0, align 8
@MISC_REG_RESET_REG_2 = common dso_local global i32 0, align 4
@MISC_REGISTERS_RESET_REG_2_XMAC = common dso_local global i32 0, align 4
@XMAC_REG_CTRL = common dso_local global i64 0, align 8
@XMAC_CTRL_REG_SOFT_RESET = common dso_local global i32 0, align 4
@ELINK_STATUS_OK = common dso_local global i32 0, align 4
@ELINK_FEATURE_CONFIG_EMUL_DISABLE_BMAC = common dso_local global i32 0, align 4
@ELINK_FEATURE_CONFIG_EMUL_DISABLE_XMAC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @elink_link_reset(%struct.elink_params* %0, %struct.elink_vars* %1, i32 %2) #0 {
  %4 = alloca %struct.elink_params*, align 8
  %5 = alloca %struct.elink_vars*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bxe_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.elink_params* %0, %struct.elink_params** %4, align 8
  store %struct.elink_vars* %1, %struct.elink_vars** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %13 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %12, i32 0, i32 5
  %14 = load %struct.bxe_softc*, %struct.bxe_softc** %13, align 8
  store %struct.bxe_softc* %14, %struct.bxe_softc** %7, align 8
  %15 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %16 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %18 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @ELINK_DEBUG_P1(%struct.bxe_softc* %18, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %22 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %21, i32 0, i32 3
  store i64 0, i64* %22, align 8
  %23 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %24 = call i32 @elink_chng_link_count(%struct.elink_params* %23, i32 1)
  %25 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %26 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %27 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @elink_update_mng(%struct.elink_params* %25, i64 %28)
  %30 = load i32, i32* @SHMEM_EEE_LP_ADV_STATUS_MASK, align 4
  %31 = load i32, i32* @SHMEM_EEE_ACTIVE_BIT, align 4
  %32 = or i32 %30, %31
  %33 = xor i32 %32, -1
  %34 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %35 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %36, %33
  store i32 %37, i32* %35, align 8
  %38 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %39 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %40 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @elink_update_mng_eee(%struct.elink_params* %38, i32 %41)
  %43 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %44 = load i64, i64* @NIG_REG_MASK_INTERRUPT_PORT0, align 8
  %45 = load i32, i32* %9, align 4
  %46 = mul nsw i32 %45, 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %44, %47
  %49 = load i32, i32* @ELINK_NIG_MASK_XGXS0_LINK_STATUS, align 4
  %50 = load i32, i32* @ELINK_NIG_MASK_XGXS0_LINK10G, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @ELINK_NIG_MASK_SERDES0_LINK_STATUS, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @ELINK_NIG_MASK_MI_INT, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @elink_bits_dis(%struct.bxe_softc* %43, i64 %48, i32 %55)
  %57 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %58 = load i64, i64* @NIG_REG_EGRESS_DRAIN0_MODE, align 8
  %59 = load i32, i32* %9, align 4
  %60 = mul nsw i32 %59, 4
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %58, %61
  %63 = call i32 @REG_WR(%struct.bxe_softc* %57, i64 %62, i32 1)
  %64 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %65 = call i64 @CHIP_IS_E3(%struct.bxe_softc* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %82, label %67

67:                                               ; preds = %3
  %68 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %69 = load i64, i64* @NIG_REG_BMAC0_OUT_EN, align 8
  %70 = load i32, i32* %9, align 4
  %71 = mul nsw i32 %70, 4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %69, %72
  %74 = call i32 @REG_WR(%struct.bxe_softc* %68, i64 %73, i32 0)
  %75 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %76 = load i64, i64* @NIG_REG_EGRESS_EMAC0_OUT_EN, align 8
  %77 = load i32, i32* %9, align 4
  %78 = mul nsw i32 %77, 4
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %76, %79
  %81 = call i32 @REG_WR(%struct.bxe_softc* %75, i64 %80, i32 0)
  br label %82

82:                                               ; preds = %67, %3
  %83 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %84 = call i64 @CHIP_IS_E3(%struct.bxe_softc* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %93, label %86

86:                                               ; preds = %82
  %87 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %88 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %89 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @elink_set_bmac_rx(%struct.bxe_softc* %87, i32 %90, i32 %91, i32 0)
  br label %93

93:                                               ; preds = %86, %82
  %94 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %95 = call i64 @CHIP_IS_E3(%struct.bxe_softc* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %93
  %98 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %99 = call i32 @CHIP_REV_IS_FPGA(%struct.bxe_softc* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %97
  %102 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %103 = call i32 @elink_set_xmac_rxtx(%struct.elink_params* %102, i32 0)
  %104 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %105 = call i32 @elink_set_umac_rxtx(%struct.elink_params* %104, i32 0)
  br label %106

106:                                              ; preds = %101, %97, %93
  %107 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %108 = call i64 @CHIP_IS_E3(%struct.bxe_softc* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %118, label %110

110:                                              ; preds = %106
  %111 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %112 = load i64, i64* @NIG_REG_NIG_EMAC0_EN, align 8
  %113 = load i32, i32* %9, align 4
  %114 = mul nsw i32 %113, 4
  %115 = sext i32 %114 to i64
  %116 = add nsw i64 %112, %115
  %117 = call i32 @REG_WR(%struct.bxe_softc* %111, i64 %116, i32 0)
  br label %118

118:                                              ; preds = %110, %106
  %119 = call i32 @DELAY(i32 10000)
  %120 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %121 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %122 = call i32 @elink_set_mdio_emac_per_phy(%struct.bxe_softc* %120, %struct.elink_params* %121)
  %123 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %124 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %125 = load i32, i32* @ELINK_LED_MODE_OFF, align 4
  %126 = call i32 @elink_set_led(%struct.elink_params* %123, %struct.elink_vars* %124, i32 %125, i32 0)
  %127 = load i32, i32* %6, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %194

129:                                              ; preds = %118
  %130 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %131 = call i32 @CHIP_REV_IS_SLOW(%struct.bxe_softc* %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %194, label %133

133:                                              ; preds = %129
  %134 = load i32, i32* @ELINK_EXT_PHY1, align 4
  store i32 %134, i32* %8, align 4
  br label %135

135:                                              ; preds = %190, %133
  %136 = load i32, i32* %8, align 4
  %137 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %138 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = icmp slt i32 %136, %139
  br i1 %140, label %141, label %193

141:                                              ; preds = %135
  %142 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %143 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %142, i32 0, i32 3
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %143, align 8
  %145 = load i32, i32* %8, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 1
  %149 = load i32 (%struct.TYPE_4__*, %struct.elink_params*)*, i32 (%struct.TYPE_4__*, %struct.elink_params*)** %148, align 8
  %150 = icmp ne i32 (%struct.TYPE_4__*, %struct.elink_params*)* %149, null
  br i1 %150, label %151, label %176

151:                                              ; preds = %141
  %152 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %153 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %154 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %153, i32 0, i32 3
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %154, align 8
  %156 = load i32, i32* %8, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i64 %157
  %159 = call i32 @elink_set_aer_mmd(%struct.elink_params* %152, %struct.TYPE_4__* %158)
  %160 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %161 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %160, i32 0, i32 3
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %161, align 8
  %163 = load i32, i32* %8, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 1
  %167 = load i32 (%struct.TYPE_4__*, %struct.elink_params*)*, i32 (%struct.TYPE_4__*, %struct.elink_params*)** %166, align 8
  %168 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %169 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %168, i32 0, i32 3
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %169, align 8
  %171 = load i32, i32* %8, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i64 %172
  %174 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %175 = call i32 %167(%struct.TYPE_4__* %173, %struct.elink_params* %174)
  br label %176

176:                                              ; preds = %151, %141
  %177 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %178 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %177, i32 0, i32 3
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %178, align 8
  %180 = load i32, i32* %8, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @ELINK_FLAGS_REARM_LATCH_SIGNAL, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %176
  store i32 1, i32* %10, align 4
  br label %189

189:                                              ; preds = %188, %176
  br label %190

190:                                              ; preds = %189
  %191 = load i32, i32* %8, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %8, align 4
  br label %135

193:                                              ; preds = %135
  br label %194

194:                                              ; preds = %193, %129, %118
  %195 = load i32, i32* %10, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %210

197:                                              ; preds = %194
  %198 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %199 = load i32, i32* %9, align 4
  %200 = call i32 @elink_rearm_latch_signal(%struct.bxe_softc* %198, i32 %199, i32 0)
  %201 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %202 = load i64, i64* @NIG_REG_LATCH_BC_0, align 8
  %203 = load i32, i32* %9, align 4
  %204 = mul nsw i32 %203, 4
  %205 = sext i32 %204 to i64
  %206 = add nsw i64 %202, %205
  %207 = load i32, i32* @ELINK_NIG_LATCH_BC_ENABLE_MI_INT, align 4
  %208 = shl i32 1, %207
  %209 = call i32 @elink_bits_dis(%struct.bxe_softc* %201, i64 %206, i32 %208)
  br label %210

210:                                              ; preds = %197, %194
  %211 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %212 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %211, i32 0, i32 3
  %213 = load %struct.TYPE_4__*, %struct.TYPE_4__** %212, align 8
  %214 = load i64, i64* @ELINK_INT_PHY, align 8
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 1
  %217 = load i32 (%struct.TYPE_4__*, %struct.elink_params*)*, i32 (%struct.TYPE_4__*, %struct.elink_params*)** %216, align 8
  %218 = icmp ne i32 (%struct.TYPE_4__*, %struct.elink_params*)* %217, null
  br i1 %218, label %219, label %234

219:                                              ; preds = %210
  %220 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %221 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %220, i32 0, i32 3
  %222 = load %struct.TYPE_4__*, %struct.TYPE_4__** %221, align 8
  %223 = load i64, i64* @ELINK_INT_PHY, align 8
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 1
  %226 = load i32 (%struct.TYPE_4__*, %struct.elink_params*)*, i32 (%struct.TYPE_4__*, %struct.elink_params*)** %225, align 8
  %227 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %228 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %227, i32 0, i32 3
  %229 = load %struct.TYPE_4__*, %struct.TYPE_4__** %228, align 8
  %230 = load i64, i64* @ELINK_INT_PHY, align 8
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i64 %230
  %232 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %233 = call i32 %226(%struct.TYPE_4__* %231, %struct.elink_params* %232)
  br label %234

234:                                              ; preds = %219, %210
  %235 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %236 = call i64 @CHIP_IS_E3(%struct.bxe_softc* %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %261, label %238

238:                                              ; preds = %234
  %239 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %240 = load i64, i64* @GRCBASE_MISC, align 8
  %241 = load i64, i64* @MISC_REGISTERS_RESET_REG_2_CLEAR, align 8
  %242 = add nsw i64 %240, %241
  %243 = load i32, i32* @MISC_REGISTERS_RESET_REG_2_RST_BMAC0, align 4
  %244 = load i32, i32* %9, align 4
  %245 = shl i32 %243, %244
  %246 = call i32 @REG_WR(%struct.bxe_softc* %239, i64 %242, i32 %245)
  %247 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %248 = load i64, i64* @NIG_REG_BMAC0_IN_EN, align 8
  %249 = load i32, i32* %9, align 4
  %250 = mul nsw i32 %249, 4
  %251 = sext i32 %250 to i64
  %252 = add nsw i64 %248, %251
  %253 = call i32 @REG_WR(%struct.bxe_softc* %247, i64 %252, i32 0)
  %254 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %255 = load i64, i64* @NIG_REG_EMAC0_IN_EN, align 8
  %256 = load i32, i32* %9, align 4
  %257 = mul nsw i32 %256, 4
  %258 = sext i32 %257 to i64
  %259 = add nsw i64 %255, %258
  %260 = call i32 @REG_WR(%struct.bxe_softc* %254, i64 %259, i32 0)
  br label %288

261:                                              ; preds = %234
  %262 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %263 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %268

266:                                              ; preds = %261
  %267 = load i64, i64* @GRCBASE_XMAC1, align 8
  br label %270

268:                                              ; preds = %261
  %269 = load i64, i64* @GRCBASE_XMAC0, align 8
  br label %270

270:                                              ; preds = %268, %266
  %271 = phi i64 [ %267, %266 ], [ %269, %268 ]
  store i64 %271, i64* %11, align 8
  %272 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %273 = call i32 @elink_set_xumac_nig(%struct.elink_params* %272, i32 0, i32 0)
  %274 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %275 = load i32, i32* @MISC_REG_RESET_REG_2, align 4
  %276 = call i32 @REG_RD(%struct.bxe_softc* %274, i32 %275)
  %277 = load i32, i32* @MISC_REGISTERS_RESET_REG_2_XMAC, align 4
  %278 = and i32 %276, %277
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %287

280:                                              ; preds = %270
  %281 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %282 = load i64, i64* %11, align 8
  %283 = load i64, i64* @XMAC_REG_CTRL, align 8
  %284 = add nsw i64 %282, %283
  %285 = load i32, i32* @XMAC_CTRL_REG_SOFT_RESET, align 4
  %286 = call i32 @REG_WR(%struct.bxe_softc* %281, i64 %284, i32 %285)
  br label %287

287:                                              ; preds = %280, %270
  br label %288

288:                                              ; preds = %287, %238
  %289 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %290 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %289, i32 0, i32 2
  store i64 0, i64* %290, align 8
  %291 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %292 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %291, i32 0, i32 1
  store i64 0, i64* %292, align 8
  %293 = load i32, i32* @ELINK_STATUS_OK, align 4
  ret i32 %293
}

declare dso_local i32 @ELINK_DEBUG_P1(%struct.bxe_softc*, i8*, i32) #1

declare dso_local i32 @elink_chng_link_count(%struct.elink_params*, i32) #1

declare dso_local i32 @elink_update_mng(%struct.elink_params*, i64) #1

declare dso_local i32 @elink_update_mng_eee(%struct.elink_params*, i32) #1

declare dso_local i32 @elink_bits_dis(%struct.bxe_softc*, i64, i32) #1

declare dso_local i32 @REG_WR(%struct.bxe_softc*, i64, i32) #1

declare dso_local i64 @CHIP_IS_E3(%struct.bxe_softc*) #1

declare dso_local i32 @elink_set_bmac_rx(%struct.bxe_softc*, i32, i32, i32) #1

declare dso_local i32 @CHIP_REV_IS_FPGA(%struct.bxe_softc*) #1

declare dso_local i32 @elink_set_xmac_rxtx(%struct.elink_params*, i32) #1

declare dso_local i32 @elink_set_umac_rxtx(%struct.elink_params*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @elink_set_mdio_emac_per_phy(%struct.bxe_softc*, %struct.elink_params*) #1

declare dso_local i32 @elink_set_led(%struct.elink_params*, %struct.elink_vars*, i32, i32) #1

declare dso_local i32 @CHIP_REV_IS_SLOW(%struct.bxe_softc*) #1

declare dso_local i32 @elink_set_aer_mmd(%struct.elink_params*, %struct.TYPE_4__*) #1

declare dso_local i32 @elink_rearm_latch_signal(%struct.bxe_softc*, i32, i32) #1

declare dso_local i32 @elink_set_xumac_nig(%struct.elink_params*, i32, i32) #1

declare dso_local i32 @REG_RD(%struct.bxe_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
