; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_emac_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_emac_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elink_params = type { i32, i32, i32, %struct.bxe_softc* }
%struct.bxe_softc = type { i32 }
%struct.elink_vars = type { i32, i32, i32 }

@GRCBASE_EMAC1 = common dso_local global i32 0, align 4
@GRCBASE_EMAC0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"enabling EMAC\0A\00", align 1
@GRCBASE_MISC = common dso_local global i64 0, align 8
@MISC_REGISTERS_RESET_REG_2_CLEAR = common dso_local global i64 0, align 8
@MISC_REGISTERS_RESET_REG_2_RST_BMAC0 = common dso_local global i32 0, align 4
@NIG_REG_EGRESS_EMAC0_PORT = common dso_local global i64 0, align 8
@PHY_XGXS_FLAG = common dso_local global i32 0, align 4
@PORT_HW_CFG_LANE_SWAP_CFG_MASTER_MASK = common dso_local global i32 0, align 4
@PORT_HW_CFG_LANE_SWAP_CFG_MASTER_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"XGXS\0A\00", align 1
@NIG_REG_XGXS_LANE_SEL_P0 = common dso_local global i64 0, align 8
@NIG_REG_XGXS_SERDES0_MODE_SEL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"SerDes\0A\00", align 1
@EMAC_REG_EMAC_RX_MODE = common dso_local global i32 0, align 4
@EMAC_RX_MODE_RESET = common dso_local global i32 0, align 4
@EMAC_REG_EMAC_TX_MODE = common dso_local global i32 0, align 4
@EMAC_TX_MODE_RESET = common dso_local global i32 0, align 4
@EMAC_RX_MODE_FLOW_EN = common dso_local global i32 0, align 4
@EMAC_TX_MODE_EXT_PAUSE_EN = common dso_local global i32 0, align 4
@EMAC_TX_MODE_FLOW_EN = common dso_local global i32 0, align 4
@ELINK_FEATURE_CONFIG_PFC_ENABLED = common dso_local global i32 0, align 4
@ELINK_FLOW_CTRL_RX = common dso_local global i32 0, align 4
@ELINK_FLOW_CTRL_TX = common dso_local global i32 0, align 4
@EMAC_RX_MODE_KEEP_VLAN_TAG = common dso_local global i32 0, align 4
@EMAC_RX_MODE_PROMISCUOUS = common dso_local global i32 0, align 4
@EMAC_REG_RX_PFC_MODE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"PFC is enabled\0A\00", align 1
@EMAC_REG_RX_PFC_MODE_RX_EN = common dso_local global i32 0, align 4
@EMAC_REG_RX_PFC_MODE_TX_EN = common dso_local global i32 0, align 4
@EMAC_REG_RX_PFC_MODE_PRIORITIES = common dso_local global i32 0, align 4
@EMAC_REG_RX_PFC_PARAM = common dso_local global i32 0, align 4
@EMAC_REG_RX_PFC_PARAM_OPCODE_BITSHIFT = common dso_local global i32 0, align 4
@EMAC_REG_RX_PFC_PARAM_PRIORITY_EN_BITSHIFT = common dso_local global i32 0, align 4
@EMAC_RX_MODE_KEEP_MAC_CONTROL = common dso_local global i32 0, align 4
@EMAC_REG_EMAC_MODE = common dso_local global i32 0, align 4
@NIG_REG_NIG_EMAC0_EN = common dso_local global i64 0, align 8
@EMAC_REG_EMAC_RX_MTU_SIZE = common dso_local global i32 0, align 4
@EMAC_RX_MTU_SIZE_JUMBO_ENA = common dso_local global i32 0, align 4
@ELINK_ETH_MAX_JUMBO_PACKET_SIZE = common dso_local global i32 0, align 4
@ELINK_ETH_OVREHEAD = common dso_local global i32 0, align 4
@NIG_REG_NIG_INGRESS_EMAC0_NO_CRC = common dso_local global i64 0, align 8
@NIG_REG_BMAC0_IN_EN = common dso_local global i64 0, align 8
@NIG_REG_BMAC0_PAUSE_OUT_EN = common dso_local global i64 0, align 8
@NIG_REG_BMAC0_OUT_EN = common dso_local global i64 0, align 8
@NIG_REG_EMAC0_IN_EN = common dso_local global i64 0, align 8
@NIG_REG_EMAC0_PAUSE_OUT_EN = common dso_local global i64 0, align 8
@NIG_REG_EGRESS_EMAC0_OUT_EN = common dso_local global i64 0, align 8
@NIG_REG_BMAC0_REGS_OUT_EN = common dso_local global i64 0, align 8
@ELINK_MAC_TYPE_EMAC = common dso_local global i32 0, align 4
@ELINK_STATUS_OK = common dso_local global i32 0, align 4
@EMAC_MODE_PORT_GMII = common dso_local global i32 0, align 4
@MISC_REGISTERS_RESET_REG_2_SET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elink_params*, %struct.elink_vars*, i32)* @elink_emac_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elink_emac_enable(%struct.elink_params* %0, %struct.elink_vars* %1, i32 %2) #0 {
  %4 = alloca %struct.elink_params*, align 8
  %5 = alloca %struct.elink_vars*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bxe_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.elink_params* %0, %struct.elink_params** %4, align 8
  store %struct.elink_vars* %1, %struct.elink_vars** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %13 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %12, i32 0, i32 3
  %14 = load %struct.bxe_softc*, %struct.bxe_softc** %13, align 8
  store %struct.bxe_softc* %14, %struct.bxe_softc** %7, align 8
  %15 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %16 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @GRCBASE_EMAC1, align 4
  br label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @GRCBASE_EMAC0, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  store i32 %25, i32* %9, align 4
  %26 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %27 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %26, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %29 = load i64, i64* @GRCBASE_MISC, align 8
  %30 = load i64, i64* @MISC_REGISTERS_RESET_REG_2_CLEAR, align 8
  %31 = add nsw i64 %29, %30
  %32 = load i32, i32* @MISC_REGISTERS_RESET_REG_2_RST_BMAC0, align 4
  %33 = load i32, i32* %8, align 4
  %34 = shl i32 %32, %33
  %35 = call i32 @REG_WR(%struct.bxe_softc* %28, i64 %31, i32 %34)
  %36 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %37 = load i64, i64* @NIG_REG_EGRESS_EMAC0_PORT, align 8
  %38 = load i32, i32* %8, align 4
  %39 = mul nsw i32 %38, 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %37, %40
  %42 = call i32 @REG_WR(%struct.bxe_softc* %36, i64 %41, i32 1)
  %43 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %44 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @PHY_XGXS_FLAG, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %74

49:                                               ; preds = %24
  %50 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %51 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @PORT_HW_CFG_LANE_SWAP_CFG_MASTER_MASK, align 4
  %54 = and i32 %52, %53
  %55 = load i32, i32* @PORT_HW_CFG_LANE_SWAP_CFG_MASTER_SHIFT, align 4
  %56 = ashr i32 %54, %55
  store i32 %56, i32* %11, align 4
  %57 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %58 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %59 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %60 = load i64, i64* @NIG_REG_XGXS_LANE_SEL_P0, align 8
  %61 = load i32, i32* %8, align 4
  %62 = mul nsw i32 %61, 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %60, %63
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @REG_WR(%struct.bxe_softc* %59, i64 %64, i32 %65)
  %67 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %68 = load i64, i64* @NIG_REG_XGXS_SERDES0_MODE_SEL, align 8
  %69 = load i32, i32* %8, align 4
  %70 = mul nsw i32 %69, 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %68, %71
  %73 = call i32 @REG_WR(%struct.bxe_softc* %67, i64 %72, i32 1)
  br label %84

74:                                               ; preds = %24
  %75 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %76 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %75, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %77 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %78 = load i64, i64* @NIG_REG_XGXS_SERDES0_MODE_SEL, align 8
  %79 = load i32, i32* %8, align 4
  %80 = mul nsw i32 %79, 4
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %78, %81
  %83 = call i32 @REG_WR(%struct.bxe_softc* %77, i64 %82, i32 0)
  br label %84

84:                                               ; preds = %74, %49
  %85 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* @EMAC_REG_EMAC_RX_MODE, align 4
  %88 = add nsw i32 %86, %87
  %89 = load i32, i32* @EMAC_RX_MODE_RESET, align 4
  %90 = call i32 @elink_bits_en(%struct.bxe_softc* %85, i32 %88, i32 %89)
  %91 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* @EMAC_REG_EMAC_TX_MODE, align 4
  %94 = add nsw i32 %92, %93
  %95 = load i32, i32* @EMAC_TX_MODE_RESET, align 4
  %96 = call i32 @elink_bits_en(%struct.bxe_softc* %91, i32 %94, i32 %95)
  %97 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* @EMAC_REG_EMAC_RX_MODE, align 4
  %100 = add nsw i32 %98, %99
  %101 = load i32, i32* @EMAC_RX_MODE_FLOW_EN, align 4
  %102 = call i32 @elink_bits_dis(%struct.bxe_softc* %97, i32 %100, i32 %101)
  %103 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* @EMAC_REG_EMAC_TX_MODE, align 4
  %106 = add nsw i32 %104, %105
  %107 = load i32, i32* @EMAC_TX_MODE_EXT_PAUSE_EN, align 4
  %108 = load i32, i32* @EMAC_TX_MODE_FLOW_EN, align 4
  %109 = or i32 %107, %108
  %110 = call i32 @elink_bits_dis(%struct.bxe_softc* %103, i32 %106, i32 %109)
  %111 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %112 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @ELINK_FEATURE_CONFIG_PFC_ENABLED, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %148, label %117

117:                                              ; preds = %84
  %118 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %119 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @ELINK_FLOW_CTRL_RX, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %117
  %125 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* @EMAC_REG_EMAC_RX_MODE, align 4
  %128 = add nsw i32 %126, %127
  %129 = load i32, i32* @EMAC_RX_MODE_FLOW_EN, align 4
  %130 = call i32 @elink_bits_en(%struct.bxe_softc* %125, i32 %128, i32 %129)
  br label %131

131:                                              ; preds = %124, %117
  %132 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %133 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @ELINK_FLOW_CTRL_TX, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %147

138:                                              ; preds = %131
  %139 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %140 = load i32, i32* %9, align 4
  %141 = load i32, i32* @EMAC_REG_EMAC_TX_MODE, align 4
  %142 = add nsw i32 %140, %141
  %143 = load i32, i32* @EMAC_TX_MODE_EXT_PAUSE_EN, align 4
  %144 = load i32, i32* @EMAC_TX_MODE_FLOW_EN, align 4
  %145 = or i32 %143, %144
  %146 = call i32 @elink_bits_en(%struct.bxe_softc* %139, i32 %142, i32 %145)
  br label %147

147:                                              ; preds = %138, %131
  br label %155

148:                                              ; preds = %84
  %149 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %150 = load i32, i32* %9, align 4
  %151 = load i32, i32* @EMAC_REG_EMAC_TX_MODE, align 4
  %152 = add nsw i32 %150, %151
  %153 = load i32, i32* @EMAC_TX_MODE_FLOW_EN, align 4
  %154 = call i32 @elink_bits_en(%struct.bxe_softc* %149, i32 %152, i32 %153)
  br label %155

155:                                              ; preds = %148, %147
  %156 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %157 = load i32, i32* %9, align 4
  %158 = load i32, i32* @EMAC_REG_EMAC_RX_MODE, align 4
  %159 = add nsw i32 %157, %158
  %160 = call i32 @REG_RD(%struct.bxe_softc* %156, i32 %159)
  store i32 %160, i32* %10, align 4
  %161 = load i32, i32* @EMAC_RX_MODE_KEEP_VLAN_TAG, align 4
  %162 = load i32, i32* @EMAC_RX_MODE_PROMISCUOUS, align 4
  %163 = or i32 %161, %162
  %164 = load i32, i32* %10, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %10, align 4
  %166 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %167 = load i32, i32* %9, align 4
  %168 = load i32, i32* @EMAC_REG_RX_PFC_MODE, align 4
  %169 = add nsw i32 %167, %168
  %170 = call i32 @elink_cb_reg_write(%struct.bxe_softc* %166, i32 %169, i32 0)
  %171 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %172 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @ELINK_FEATURE_CONFIG_PFC_ENABLED, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %203

177:                                              ; preds = %155
  %178 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %179 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %178, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %180 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %181 = load i32, i32* %9, align 4
  %182 = load i32, i32* @EMAC_REG_RX_PFC_MODE, align 4
  %183 = add nsw i32 %181, %182
  %184 = load i32, i32* @EMAC_REG_RX_PFC_MODE_RX_EN, align 4
  %185 = load i32, i32* @EMAC_REG_RX_PFC_MODE_TX_EN, align 4
  %186 = or i32 %184, %185
  %187 = load i32, i32* @EMAC_REG_RX_PFC_MODE_PRIORITIES, align 4
  %188 = or i32 %186, %187
  %189 = call i32 @elink_cb_reg_write(%struct.bxe_softc* %180, i32 %183, i32 %188)
  %190 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %191 = load i32, i32* %9, align 4
  %192 = load i32, i32* @EMAC_REG_RX_PFC_PARAM, align 4
  %193 = add nsw i32 %191, %192
  %194 = load i32, i32* @EMAC_REG_RX_PFC_PARAM_OPCODE_BITSHIFT, align 4
  %195 = shl i32 257, %194
  %196 = load i32, i32* @EMAC_REG_RX_PFC_PARAM_PRIORITY_EN_BITSHIFT, align 4
  %197 = shl i32 255, %196
  %198 = or i32 %195, %197
  %199 = call i32 @elink_cb_reg_write(%struct.bxe_softc* %190, i32 %193, i32 %198)
  %200 = load i32, i32* @EMAC_RX_MODE_KEEP_MAC_CONTROL, align 4
  %201 = load i32, i32* %10, align 4
  %202 = or i32 %201, %200
  store i32 %202, i32* %10, align 4
  br label %203

203:                                              ; preds = %177, %155
  %204 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %205 = load i32, i32* %9, align 4
  %206 = load i32, i32* @EMAC_REG_EMAC_RX_MODE, align 4
  %207 = add nsw i32 %205, %206
  %208 = load i32, i32* %10, align 4
  %209 = call i32 @elink_cb_reg_write(%struct.bxe_softc* %204, i32 %207, i32 %208)
  %210 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %211 = load i32, i32* %9, align 4
  %212 = load i32, i32* @EMAC_REG_EMAC_MODE, align 4
  %213 = add nsw i32 %211, %212
  %214 = call i32 @REG_RD(%struct.bxe_softc* %210, i32 %213)
  store i32 %214, i32* %10, align 4
  %215 = load i32, i32* %6, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %203
  %218 = load i32, i32* %10, align 4
  %219 = or i32 %218, 2064
  store i32 %219, i32* %10, align 4
  br label %223

220:                                              ; preds = %203
  %221 = load i32, i32* %10, align 4
  %222 = and i32 %221, -2065
  store i32 %222, i32* %10, align 4
  br label %223

223:                                              ; preds = %220, %217
  %224 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %225 = load i32, i32* %9, align 4
  %226 = load i32, i32* @EMAC_REG_EMAC_MODE, align 4
  %227 = add nsw i32 %225, %226
  %228 = load i32, i32* %10, align 4
  %229 = call i32 @elink_cb_reg_write(%struct.bxe_softc* %224, i32 %227, i32 %228)
  %230 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %231 = load i64, i64* @NIG_REG_NIG_EMAC0_EN, align 8
  %232 = load i32, i32* %8, align 4
  %233 = mul nsw i32 %232, 4
  %234 = sext i32 %233 to i64
  %235 = add nsw i64 %231, %234
  %236 = call i32 @REG_WR(%struct.bxe_softc* %230, i64 %235, i32 1)
  %237 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %238 = load i32, i32* %9, align 4
  %239 = load i32, i32* @EMAC_REG_EMAC_RX_MTU_SIZE, align 4
  %240 = add nsw i32 %238, %239
  %241 = load i32, i32* @EMAC_RX_MTU_SIZE_JUMBO_ENA, align 4
  %242 = load i32, i32* @ELINK_ETH_MAX_JUMBO_PACKET_SIZE, align 4
  %243 = load i32, i32* @ELINK_ETH_OVREHEAD, align 4
  %244 = add nsw i32 %242, %243
  %245 = or i32 %241, %244
  %246 = call i32 @elink_cb_reg_write(%struct.bxe_softc* %237, i32 %240, i32 %245)
  %247 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %248 = load i64, i64* @NIG_REG_NIG_INGRESS_EMAC0_NO_CRC, align 8
  %249 = load i32, i32* %8, align 4
  %250 = mul nsw i32 %249, 4
  %251 = sext i32 %250 to i64
  %252 = add nsw i64 %248, %251
  %253 = call i32 @REG_WR(%struct.bxe_softc* %247, i64 %252, i32 1)
  %254 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %255 = load i64, i64* @NIG_REG_BMAC0_IN_EN, align 8
  %256 = load i32, i32* %8, align 4
  %257 = mul nsw i32 %256, 4
  %258 = sext i32 %257 to i64
  %259 = add nsw i64 %255, %258
  %260 = call i32 @REG_WR(%struct.bxe_softc* %254, i64 %259, i32 0)
  %261 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %262 = load i64, i64* @NIG_REG_BMAC0_PAUSE_OUT_EN, align 8
  %263 = load i32, i32* %8, align 4
  %264 = mul nsw i32 %263, 4
  %265 = sext i32 %264 to i64
  %266 = add nsw i64 %262, %265
  %267 = call i32 @REG_WR(%struct.bxe_softc* %261, i64 %266, i32 0)
  %268 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %269 = load i64, i64* @NIG_REG_BMAC0_OUT_EN, align 8
  %270 = load i32, i32* %8, align 4
  %271 = mul nsw i32 %270, 4
  %272 = sext i32 %271 to i64
  %273 = add nsw i64 %269, %272
  %274 = call i32 @REG_WR(%struct.bxe_softc* %268, i64 %273, i32 0)
  %275 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %276 = load i64, i64* @NIG_REG_EMAC0_IN_EN, align 8
  %277 = load i32, i32* %8, align 4
  %278 = mul nsw i32 %277, 4
  %279 = sext i32 %278 to i64
  %280 = add nsw i64 %276, %279
  %281 = call i32 @REG_WR(%struct.bxe_softc* %275, i64 %280, i32 1)
  store i32 0, i32* %10, align 4
  %282 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %283 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %282, i32 0, i32 2
  %284 = load i32, i32* %283, align 8
  %285 = load i32, i32* @ELINK_FEATURE_CONFIG_PFC_ENABLED, align 4
  %286 = and i32 %284, %285
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %295, label %288

288:                                              ; preds = %223
  %289 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %290 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = load i32, i32* @ELINK_FLOW_CTRL_TX, align 4
  %293 = and i32 %291, %292
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %296

295:                                              ; preds = %288, %223
  store i32 1, i32* %10, align 4
  br label %296

296:                                              ; preds = %295, %288
  %297 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %298 = load i64, i64* @NIG_REG_EMAC0_PAUSE_OUT_EN, align 8
  %299 = load i32, i32* %8, align 4
  %300 = mul nsw i32 %299, 4
  %301 = sext i32 %300 to i64
  %302 = add nsw i64 %298, %301
  %303 = load i32, i32* %10, align 4
  %304 = call i32 @REG_WR(%struct.bxe_softc* %297, i64 %302, i32 %303)
  %305 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %306 = load i64, i64* @NIG_REG_EGRESS_EMAC0_OUT_EN, align 8
  %307 = load i32, i32* %8, align 4
  %308 = mul nsw i32 %307, 4
  %309 = sext i32 %308 to i64
  %310 = add nsw i64 %306, %309
  %311 = call i32 @REG_WR(%struct.bxe_softc* %305, i64 %310, i32 1)
  %312 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %313 = load i64, i64* @NIG_REG_BMAC0_REGS_OUT_EN, align 8
  %314 = load i32, i32* %8, align 4
  %315 = mul nsw i32 %314, 4
  %316 = sext i32 %315 to i64
  %317 = add nsw i64 %313, %316
  %318 = call i32 @REG_WR(%struct.bxe_softc* %312, i64 %317, i32 0)
  %319 = load i32, i32* @ELINK_MAC_TYPE_EMAC, align 4
  %320 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %321 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %320, i32 0, i32 2
  store i32 %319, i32* %321, align 4
  %322 = load i32, i32* @ELINK_STATUS_OK, align 4
  ret i32 %322
}

declare dso_local i32 @ELINK_DEBUG_P0(%struct.bxe_softc*, i8*) #1

declare dso_local i32 @REG_WR(%struct.bxe_softc*, i64, i32) #1

declare dso_local i32 @elink_bits_en(%struct.bxe_softc*, i32, i32) #1

declare dso_local i32 @elink_bits_dis(%struct.bxe_softc*, i32, i32) #1

declare dso_local i32 @REG_RD(%struct.bxe_softc*, i32) #1

declare dso_local i32 @elink_cb_reg_write(%struct.bxe_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
