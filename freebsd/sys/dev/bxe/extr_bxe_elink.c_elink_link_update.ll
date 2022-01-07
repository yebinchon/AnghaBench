; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_link_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_link_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elink_params = type { i64, i64, i64, i32, %struct.elink_phy*, %struct.bxe_softc* }
%struct.elink_phy = type { i64 (%struct.elink_phy*, %struct.elink_params.0*, %struct.elink_vars*)*, i32, i32, i32 (%struct.elink_phy*, %struct.elink_params.1*, %struct.elink_vars*)*, i32 (%struct.elink_phy*, %struct.elink_params.2*, i32)* }
%struct.elink_params.0 = type opaque
%struct.elink_params.1 = type opaque
%struct.elink_params.2 = type opaque
%struct.bxe_softc = type { i32 }
%struct.elink_vars = type { i32, i64, i32, i64, i64, i64, i64, i32, i64, i32, i32, i64, i64, i32, i64, i64, i64 }

@ELINK_MAX_PHYS = common dso_local global i32 0, align 4
@ELINK_STATUS_OK = common dso_local global i32 0, align 4
@ELINK_INT_PHY = common dso_local global i64 0, align 8
@PHY_HALF_OPEN_CONN_FLAG = common dso_local global i32 0, align 4
@ELINK_LINK_UPDATE_MASK = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"port %x, XGXS?%x, int_status 0x%x\0A\00", align 1
@PHY_XGXS_FLAG = common dso_local global i32 0, align 4
@NIG_REG_STATUS_INTERRUPT_PORT0 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"int_mask 0x%x MI_INT %x, SERDES_LINK %x\0A\00", align 1
@NIG_REG_MASK_INTERRUPT_PORT0 = common dso_local global i64 0, align 8
@NIG_REG_EMAC0_STATUS_MISC_MI_INT = common dso_local global i64 0, align 8
@NIG_REG_SERDES0_STATUS_LINK_STATUS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c" 10G %x, XGXS_LINK %x\0A\00", align 1
@NIG_REG_XGXS0_STATUS_LINK10G = common dso_local global i64 0, align 8
@NIG_REG_XGXS0_STATUS_LINK_STATUS = common dso_local global i64 0, align 8
@NIG_REG_NIG_EMAC0_EN = common dso_local global i64 0, align 8
@ELINK_EXT_PHY1 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"phy in index %d link is up\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"phy in index %d link is down\0A\00", align 1
@ELINK_EXT_PHY2 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [53 x i8] c"Invalid link indicationmpc=0x%x. DISABLING LINK !!!\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Disabling TX on EXT_PHY2\0A\00", align 1
@ELINK_DISABLE_TX = common dso_local global i32 0, align 4
@ELINK_SUPPORTED_FIBRE = common dso_local global i32 0, align 4
@LINK_STATUS_SERDES_LINK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"Active external phy selected: %x\0A\00", align 1
@.str.8 = private unnamed_addr constant [56 x i8] c"vars : phy_flags = %x, mac_type = %x, phy_link_up = %x\0A\00", align 1
@.str.9 = private unnamed_addr constant [51 x i8] c"vars : link_up = %x, line_speed = %x, duplex = %x\0A\00", align 1
@.str.10 = private unnamed_addr constant [55 x i8] c"vars : flow_ctrl = %x, ieee_fc = %x, link_status = %x\0A\00", align 1
@.str.11 = private unnamed_addr constant [74 x i8] c"vars : eee_status = %x, fault_detected = %x, check_kr2_recovery_cnt = %x\0A\00", align 1
@.str.12 = private unnamed_addr constant [68 x i8] c"vars : periodic_flags = %x, aeu_int_mask = %x, rx_tx_asic_rst = %x\0A\00", align 1
@.str.13 = private unnamed_addr constant [43 x i8] c"vars : turn_to_run_wc_rt = %x, rsrv2 = %x\0A\00", align 1
@ELINK_FLAGS_REARM_LATCH_SIGNAL = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [75 x i8] c"vars->flow_ctrl = 0x%x, vars->link_status = 0x%x, ext_phy_line_speed = %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [69 x i8] c"Internal link speed %d is different than the external link speed %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"phy_link_up set to 0\0A\00", align 1
@NIG_REG_EGRESS_DRAIN0_MODE = common dso_local global i64 0, align 8
@ELINK_SPEED_10000 = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [61 x i8] c"ext_phy_link_up = %d, int_link_up = %d, init_preceding = %d\0A\00", align 1
@ELINK_FLAGS_INIT_XGXS_FIRST = common dso_local global i64 0, align 8
@ELINK_SPEED_1000 = common dso_local global i64 0, align 8
@PHY_SGMII_FLAG = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [35 x i8] c"local phy and external phy are up\0A\00", align 1
@.str.19 = private unnamed_addr constant [51 x i8] c"either local phy or external phy or both are down\0A\00", align 1
@ELINK_FEATURE_CONFIG_PFC_ENABLED = common dso_local global i32 0, align 4
@LINK_STATUS_PFC_ENABLED = common dso_local global i32 0, align 4
@LINK_STATUS_LINK_UP = common dso_local global i32 0, align 4
@ELINK_FEATURE_CONFIG_BC_SUPPORTS_AFEX = common dso_local global i32 0, align 4
@DRV_MSG_CODE_LINK_STATUS_CHANGED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @elink_link_update(%struct.elink_params* %0, %struct.elink_vars* %1) #0 {
  %3 = alloca %struct.elink_params*, align 8
  %4 = alloca %struct.elink_vars*, align 8
  %5 = alloca %struct.bxe_softc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.elink_phy*, align 8
  store %struct.elink_params* %0, %struct.elink_params** %3, align 8
  store %struct.elink_vars* %1, %struct.elink_vars** %4, align 8
  %19 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %20 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %19, i32 0, i32 5
  %21 = load %struct.bxe_softc*, %struct.bxe_softc** %20, align 8
  store %struct.bxe_softc* %21, %struct.bxe_softc** %5, align 8
  %22 = load i32, i32* @ELINK_MAX_PHYS, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %6, align 8
  %25 = alloca %struct.elink_vars, i64 %23, align 16
  store i64 %23, i64* %7, align 8
  %26 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %27 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %8, align 8
  %29 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %30 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %11, align 4
  store i64 0, i64* %12, align 8
  %32 = load i32, i32* @ELINK_STATUS_OK, align 4
  store i32 %32, i32* %14, align 4
  store i64 0, i64* %15, align 8
  %33 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %34 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %16, align 8
  %36 = load i64, i64* @ELINK_INT_PHY, align 8
  store i64 %36, i64* %17, align 8
  %37 = load i32, i32* @PHY_HALF_OPEN_CONN_FLAG, align 4
  %38 = xor i32 %37, -1
  %39 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %40 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = and i32 %41, %38
  store i32 %42, i32* %40, align 8
  %43 = load i32, i32* @ELINK_LINK_UPDATE_MASK, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %46 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 8
  %49 = load i64, i64* @ELINK_INT_PHY, align 8
  store i64 %49, i64* %10, align 8
  br label %50

50:                                               ; preds = %85, %2
  %51 = load i64, i64* %10, align 8
  %52 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %53 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ult i64 %51, %54
  br i1 %55, label %56, label %88

56:                                               ; preds = %50
  %57 = load i64, i64* %10, align 8
  %58 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %25, i64 %57
  %59 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %58, i32 0, i32 3
  store i64 0, i64* %59, align 8
  %60 = load i64, i64* %10, align 8
  %61 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %25, i64 %60
  %62 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %61, i32 0, i32 0
  store i32 0, i32* %62, align 16
  %63 = load i64, i64* %10, align 8
  %64 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %25, i64 %63
  %65 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %64, i32 0, i32 1
  store i64 0, i64* %65, align 8
  %66 = load i64, i64* @DUPLEX_FULL, align 8
  %67 = load i64, i64* %10, align 8
  %68 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %25, i64 %67
  %69 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %68, i32 0, i32 4
  store i64 %66, i64* %69, align 16
  %70 = load i64, i64* %10, align 8
  %71 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %25, i64 %70
  %72 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %71, i32 0, i32 5
  store i64 0, i64* %72, align 8
  %73 = load i64, i64* %10, align 8
  %74 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %25, i64 %73
  %75 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %74, i32 0, i32 6
  store i64 0, i64* %75, align 16
  %76 = load i64, i64* %10, align 8
  %77 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %25, i64 %76
  %78 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %77, i32 0, i32 7
  store i32 0, i32* %78, align 8
  %79 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %80 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %79, i32 0, i32 8
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %10, align 8
  %83 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %25, i64 %82
  %84 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %83, i32 0, i32 8
  store i64 %81, i64* %84, align 16
  br label %85

85:                                               ; preds = %56
  %86 = load i64, i64* %10, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %10, align 8
  br label %50

88:                                               ; preds = %50
  %89 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %90 = call i64 @USES_WARPCORE(%struct.bxe_softc* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %88
  %93 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %94 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %95 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %94, i32 0, i32 4
  %96 = load %struct.elink_phy*, %struct.elink_phy** %95, align 8
  %97 = load i64, i64* @ELINK_INT_PHY, align 8
  %98 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %96, i64 %97
  %99 = call i32 @elink_set_aer_mmd(%struct.elink_params* %93, %struct.elink_phy* %98)
  br label %100

100:                                              ; preds = %92, %88
  %101 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %102 = load i64, i64* %8, align 8
  %103 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %104 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @PHY_XGXS_FLAG, align 4
  %107 = and i32 %105, %106
  %108 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %109 = load i64, i64* @NIG_REG_STATUS_INTERRUPT_PORT0, align 8
  %110 = load i64, i64* %8, align 8
  %111 = mul i64 %110, 4
  %112 = add i64 %109, %111
  %113 = call i64 @REG_RD(%struct.bxe_softc* %108, i64 %112)
  %114 = call i32 @ELINK_DEBUG_P3(%struct.bxe_softc* %101, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %102, i32 %107, i64 %113)
  %115 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %116 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %117 = load i64, i64* @NIG_REG_MASK_INTERRUPT_PORT0, align 8
  %118 = load i64, i64* %8, align 8
  %119 = mul i64 %118, 4
  %120 = add i64 %117, %119
  %121 = call i64 @REG_RD(%struct.bxe_softc* %116, i64 %120)
  %122 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %123 = load i64, i64* @NIG_REG_EMAC0_STATUS_MISC_MI_INT, align 8
  %124 = load i64, i64* %8, align 8
  %125 = mul i64 %124, 24
  %126 = add i64 %123, %125
  %127 = call i64 @REG_RD(%struct.bxe_softc* %122, i64 %126)
  %128 = icmp sgt i64 %127, 0
  %129 = zext i1 %128 to i32
  %130 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %131 = load i64, i64* @NIG_REG_SERDES0_STATUS_LINK_STATUS, align 8
  %132 = load i64, i64* %8, align 8
  %133 = mul i64 %132, 60
  %134 = add i64 %131, %133
  %135 = call i64 @REG_RD(%struct.bxe_softc* %130, i64 %134)
  %136 = call i32 @ELINK_DEBUG_P3(%struct.bxe_softc* %115, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %121, i32 %129, i64 %135)
  %137 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %138 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %139 = load i64, i64* @NIG_REG_XGXS0_STATUS_LINK10G, align 8
  %140 = load i64, i64* %8, align 8
  %141 = mul i64 %140, 104
  %142 = add i64 %139, %141
  %143 = call i64 @REG_RD(%struct.bxe_softc* %138, i64 %142)
  %144 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %145 = load i64, i64* @NIG_REG_XGXS0_STATUS_LINK_STATUS, align 8
  %146 = load i64, i64* %8, align 8
  %147 = mul i64 %146, 104
  %148 = add i64 %145, %147
  %149 = call i64 @REG_RD(%struct.bxe_softc* %144, i64 %148)
  %150 = call i32 @ELINK_DEBUG_P2(%struct.bxe_softc* %137, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i64 %143, i64 %149)
  %151 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %152 = call i32 @CHIP_IS_E3(%struct.bxe_softc* %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %161, label %154

154:                                              ; preds = %100
  %155 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %156 = load i64, i64* @NIG_REG_NIG_EMAC0_EN, align 8
  %157 = load i64, i64* %8, align 8
  %158 = mul i64 %157, 4
  %159 = add i64 %156, %158
  %160 = call i32 @REG_WR(%struct.bxe_softc* %155, i64 %159, i32 0)
  br label %161

161:                                              ; preds = %154, %100
  %162 = load i64, i64* @ELINK_EXT_PHY1, align 8
  store i64 %162, i64* %10, align 8
  br label %163

163:                                              ; preds = %220, %161
  %164 = load i64, i64* %10, align 8
  %165 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %166 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = icmp ult i64 %164, %167
  br i1 %168, label %169, label %223

169:                                              ; preds = %163
  %170 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %171 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %170, i32 0, i32 4
  %172 = load %struct.elink_phy*, %struct.elink_phy** %171, align 8
  %173 = load i64, i64* %10, align 8
  %174 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %172, i64 %173
  store %struct.elink_phy* %174, %struct.elink_phy** %18, align 8
  %175 = load %struct.elink_phy*, %struct.elink_phy** %18, align 8
  %176 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %175, i32 0, i32 0
  %177 = load i64 (%struct.elink_phy*, %struct.elink_params.0*, %struct.elink_vars*)*, i64 (%struct.elink_phy*, %struct.elink_params.0*, %struct.elink_vars*)** %176, align 8
  %178 = icmp ne i64 (%struct.elink_phy*, %struct.elink_params.0*, %struct.elink_vars*)* %177, null
  br i1 %178, label %180, label %179

179:                                              ; preds = %169
  br label %220

180:                                              ; preds = %169
  %181 = load %struct.elink_phy*, %struct.elink_phy** %18, align 8
  %182 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %181, i32 0, i32 0
  %183 = load i64 (%struct.elink_phy*, %struct.elink_params.0*, %struct.elink_vars*)*, i64 (%struct.elink_phy*, %struct.elink_params.0*, %struct.elink_vars*)** %182, align 8
  %184 = load %struct.elink_phy*, %struct.elink_phy** %18, align 8
  %185 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %186 = bitcast %struct.elink_params* %185 to %struct.elink_params.0*
  %187 = load i64, i64* %10, align 8
  %188 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %25, i64 %187
  %189 = call i64 %183(%struct.elink_phy* %184, %struct.elink_params.0* %186, %struct.elink_vars* %188)
  store i64 %189, i64* %13, align 8
  %190 = load i64, i64* %13, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %180
  %193 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %194 = load i64, i64* %10, align 8
  %195 = call i32 @ELINK_DEBUG_P1(%struct.bxe_softc* %193, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i64 %194)
  br label %200

196:                                              ; preds = %180
  %197 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %198 = load i64, i64* %10, align 8
  %199 = call i32 @ELINK_DEBUG_P1(%struct.bxe_softc* %197, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i64 %198)
  br label %220

200:                                              ; preds = %192
  %201 = load i64, i64* %12, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %205, label %203

203:                                              ; preds = %200
  store i64 1, i64* %12, align 8
  %204 = load i64, i64* %10, align 8
  store i64 %204, i64* %17, align 8
  br label %219

205:                                              ; preds = %200
  %206 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %207 = call i32 @elink_phy_selection(%struct.elink_params* %206)
  switch i32 %207, label %212 [
    i32 129, label %208
    i32 130, label %208
    i32 128, label %210
  ]

208:                                              ; preds = %205, %205
  %209 = load i64, i64* @ELINK_EXT_PHY1, align 8
  store i64 %209, i64* %17, align 8
  br label %218

210:                                              ; preds = %205
  %211 = load i64, i64* @ELINK_EXT_PHY2, align 8
  store i64 %211, i64* %17, align 8
  br label %218

212:                                              ; preds = %205
  %213 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %214 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %215 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %214, i32 0, i32 2
  %216 = load i64, i64* %215, align 8
  %217 = call i32 @ELINK_DEBUG_P1(%struct.bxe_softc* %213, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i64 %216)
  store i64 0, i64* %12, align 8
  br label %218

218:                                              ; preds = %212, %210, %208
  br label %219

219:                                              ; preds = %218, %203
  br label %220

220:                                              ; preds = %219, %196, %179
  %221 = load i64, i64* %10, align 8
  %222 = add i64 %221, 1
  store i64 %222, i64* %10, align 8
  br label %163

223:                                              ; preds = %163
  %224 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %225 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  store i64 %226, i64* %16, align 8
  %227 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %228 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %227, i32 0, i32 4
  %229 = load %struct.elink_phy*, %struct.elink_phy** %228, align 8
  %230 = load i64, i64* @ELINK_INT_PHY, align 8
  %231 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %229, i64 %230
  %232 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %231, i32 0, i32 0
  %233 = load i64 (%struct.elink_phy*, %struct.elink_params.0*, %struct.elink_vars*)*, i64 (%struct.elink_phy*, %struct.elink_params.0*, %struct.elink_vars*)** %232, align 8
  %234 = icmp ne i64 (%struct.elink_phy*, %struct.elink_params.0*, %struct.elink_vars*)* %233, null
  br i1 %234, label %235, label %252

235:                                              ; preds = %223
  %236 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %237 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %236, i32 0, i32 4
  %238 = load %struct.elink_phy*, %struct.elink_phy** %237, align 8
  %239 = load i64, i64* @ELINK_INT_PHY, align 8
  %240 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %238, i64 %239
  %241 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %240, i32 0, i32 0
  %242 = load i64 (%struct.elink_phy*, %struct.elink_params.0*, %struct.elink_vars*)*, i64 (%struct.elink_phy*, %struct.elink_params.0*, %struct.elink_vars*)** %241, align 8
  %243 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %244 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %243, i32 0, i32 4
  %245 = load %struct.elink_phy*, %struct.elink_phy** %244, align 8
  %246 = load i64, i64* @ELINK_INT_PHY, align 8
  %247 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %245, i64 %246
  %248 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %249 = bitcast %struct.elink_params* %248 to %struct.elink_params.0*
  %250 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %251 = call i64 %242(%struct.elink_phy* %247, %struct.elink_params.0* %249, %struct.elink_vars* %250)
  br label %252

252:                                              ; preds = %235, %223
  %253 = load i64, i64* %17, align 8
  %254 = load i64, i64* @ELINK_INT_PHY, align 8
  %255 = icmp ugt i64 %253, %254
  br i1 %255, label %256, label %347

256:                                              ; preds = %252
  %257 = load i64, i64* %17, align 8
  %258 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %25, i64 %257
  %259 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %258, i32 0, i32 3
  %260 = load i64, i64* %259, align 8
  %261 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %262 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %261, i32 0, i32 3
  store i64 %260, i64* %262, align 8
  %263 = load i64, i64* %17, align 8
  %264 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %25, i64 %263
  %265 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 16
  %267 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %268 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = or i32 %269, %266
  store i32 %270, i32* %268, align 8
  %271 = load i64, i64* %17, align 8
  %272 = load i64, i64* @ELINK_EXT_PHY1, align 8
  %273 = icmp eq i64 %271, %272
  br i1 %273, label %274, label %303

274:                                              ; preds = %256
  %275 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %276 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %275, i32 0, i32 4
  %277 = load %struct.elink_phy*, %struct.elink_phy** %276, align 8
  %278 = load i64, i64* @ELINK_EXT_PHY2, align 8
  %279 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %277, i64 %278
  %280 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %279, i32 0, i32 4
  %281 = load i32 (%struct.elink_phy*, %struct.elink_params.2*, i32)*, i32 (%struct.elink_phy*, %struct.elink_params.2*, i32)** %280, align 8
  %282 = icmp ne i32 (%struct.elink_phy*, %struct.elink_params.2*, i32)* %281, null
  br i1 %282, label %283, label %302

283:                                              ; preds = %274
  %284 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %285 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %284, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %286 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %287 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %286, i32 0, i32 4
  %288 = load %struct.elink_phy*, %struct.elink_phy** %287, align 8
  %289 = load i64, i64* @ELINK_EXT_PHY2, align 8
  %290 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %288, i64 %289
  %291 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %290, i32 0, i32 4
  %292 = load i32 (%struct.elink_phy*, %struct.elink_params.2*, i32)*, i32 (%struct.elink_phy*, %struct.elink_params.2*, i32)** %291, align 8
  %293 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %294 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %293, i32 0, i32 4
  %295 = load %struct.elink_phy*, %struct.elink_phy** %294, align 8
  %296 = load i64, i64* @ELINK_EXT_PHY2, align 8
  %297 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %295, i64 %296
  %298 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %299 = bitcast %struct.elink_params* %298 to %struct.elink_params.2*
  %300 = load i32, i32* @ELINK_DISABLE_TX, align 4
  %301 = call i32 %292(%struct.elink_phy* %297, %struct.elink_params.2* %299, i32 %300)
  br label %302

302:                                              ; preds = %283, %274
  br label %303

303:                                              ; preds = %302, %256
  %304 = load i64, i64* %17, align 8
  %305 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %25, i64 %304
  %306 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %305, i32 0, i32 1
  %307 = load i64, i64* %306, align 8
  store i64 %307, i64* %15, align 8
  %308 = load i64, i64* %17, align 8
  %309 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %25, i64 %308
  %310 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %309, i32 0, i32 4
  %311 = load i64, i64* %310, align 16
  %312 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %313 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %312, i32 0, i32 4
  store i64 %311, i64* %313, align 8
  %314 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %315 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %314, i32 0, i32 4
  %316 = load %struct.elink_phy*, %struct.elink_phy** %315, align 8
  %317 = load i64, i64* %17, align 8
  %318 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %316, i64 %317
  %319 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 8
  %321 = load i32, i32* @ELINK_SUPPORTED_FIBRE, align 4
  %322 = and i32 %320, %321
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %330

324:                                              ; preds = %303
  %325 = load i32, i32* @LINK_STATUS_SERDES_LINK, align 4
  %326 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %327 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 8
  %329 = or i32 %328, %325
  store i32 %329, i32* %327, align 8
  br label %337

330:                                              ; preds = %303
  %331 = load i32, i32* @LINK_STATUS_SERDES_LINK, align 4
  %332 = xor i32 %331, -1
  %333 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %334 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 8
  %336 = and i32 %335, %332
  store i32 %336, i32* %334, align 8
  br label %337

337:                                              ; preds = %330, %324
  %338 = load i64, i64* %17, align 8
  %339 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %25, i64 %338
  %340 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %339, i32 0, i32 8
  %341 = load i64, i64* %340, align 16
  %342 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %343 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %342, i32 0, i32 8
  store i64 %341, i64* %343, align 8
  %344 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %345 = load i64, i64* %17, align 8
  %346 = call i32 @ELINK_DEBUG_P1(%struct.bxe_softc* %344, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i64 %345)
  br label %347

347:                                              ; preds = %337, %252
  %348 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %349 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %350 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %349, i32 0, i32 2
  %351 = load i32, i32* %350, align 8
  %352 = sext i32 %351 to i64
  %353 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %354 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %353, i32 0, i32 9
  %355 = load i32, i32* %354, align 8
  %356 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %357 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %356, i32 0, i32 5
  %358 = load i64, i64* %357, align 8
  %359 = call i32 @ELINK_DEBUG_P3(%struct.bxe_softc* %348, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.8, i64 0, i64 0), i64 %352, i32 %355, i64 %358)
  %360 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %361 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %362 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %361, i32 0, i32 6
  %363 = load i64, i64* %362, align 8
  %364 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %365 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %364, i32 0, i32 1
  %366 = load i64, i64* %365, align 8
  %367 = trunc i64 %366 to i32
  %368 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %369 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %368, i32 0, i32 4
  %370 = load i64, i64* %369, align 8
  %371 = call i32 @ELINK_DEBUG_P3(%struct.bxe_softc* %360, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i64 0, i64 0), i64 %363, i32 %367, i64 %370)
  %372 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %373 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %374 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %373, i32 0, i32 3
  %375 = load i64, i64* %374, align 8
  %376 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %377 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %376, i32 0, i32 10
  %378 = load i32, i32* %377, align 4
  %379 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %380 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %379, i32 0, i32 0
  %381 = load i32, i32* %380, align 8
  %382 = sext i32 %381 to i64
  %383 = call i32 @ELINK_DEBUG_P3(%struct.bxe_softc* %372, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.10, i64 0, i64 0), i64 %375, i32 %378, i64 %382)
  %384 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %385 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %386 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %385, i32 0, i32 8
  %387 = load i64, i64* %386, align 8
  %388 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %389 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %388, i32 0, i32 7
  %390 = load i32, i32* %389, align 8
  %391 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %392 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %391, i32 0, i32 11
  %393 = load i64, i64* %392, align 8
  %394 = call i32 @ELINK_DEBUG_P3(%struct.bxe_softc* %384, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.11, i64 0, i64 0), i64 %387, i32 %390, i64 %393)
  %395 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %396 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %397 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %396, i32 0, i32 12
  %398 = load i64, i64* %397, align 8
  %399 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %400 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %399, i32 0, i32 13
  %401 = load i32, i32* %400, align 8
  %402 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %403 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %402, i32 0, i32 14
  %404 = load i64, i64* %403, align 8
  %405 = call i32 @ELINK_DEBUG_P3(%struct.bxe_softc* %395, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.12, i64 0, i64 0), i64 %398, i32 %401, i64 %404)
  %406 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %407 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %408 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %407, i32 0, i32 15
  %409 = load i64, i64* %408, align 8
  %410 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %411 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %410, i32 0, i32 16
  %412 = load i64, i64* %411, align 8
  %413 = call i32 @ELINK_DEBUG_P2(%struct.bxe_softc* %406, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i64 0, i64 0), i64 %409, i64 %412)
  %414 = load i64, i64* @ELINK_EXT_PHY1, align 8
  store i64 %414, i64* %10, align 8
  br label %415

415:                                              ; preds = %441, %347
  %416 = load i64, i64* %10, align 8
  %417 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %418 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %417, i32 0, i32 1
  %419 = load i64, i64* %418, align 8
  %420 = icmp ult i64 %416, %419
  br i1 %420, label %421, label %444

421:                                              ; preds = %415
  %422 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %423 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %422, i32 0, i32 4
  %424 = load %struct.elink_phy*, %struct.elink_phy** %423, align 8
  %425 = load i64, i64* %10, align 8
  %426 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %424, i64 %425
  %427 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %426, i32 0, i32 2
  %428 = load i32, i32* %427, align 4
  %429 = load i32, i32* @ELINK_FLAGS_REARM_LATCH_SIGNAL, align 4
  %430 = and i32 %428, %429
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %432, label %440

432:                                              ; preds = %421
  %433 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %434 = load i64, i64* %8, align 8
  %435 = load i64, i64* %10, align 8
  %436 = load i64, i64* %17, align 8
  %437 = icmp eq i64 %435, %436
  %438 = zext i1 %437 to i32
  %439 = call i32 @elink_rearm_latch_signal(%struct.bxe_softc* %433, i64 %434, i32 %438)
  br label %444

440:                                              ; preds = %421
  br label %441

441:                                              ; preds = %440
  %442 = load i64, i64* %10, align 8
  %443 = add i64 %442, 1
  store i64 %443, i64* %10, align 8
  br label %415

444:                                              ; preds = %432, %415
  %445 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %446 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %447 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %446, i32 0, i32 3
  %448 = load i64, i64* %447, align 8
  %449 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %450 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %449, i32 0, i32 0
  %451 = load i32, i32* %450, align 8
  %452 = load i64, i64* %15, align 8
  %453 = call i32 @ELINK_DEBUG_P3(%struct.bxe_softc* %445, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.14, i64 0, i64 0), i64 %448, i32 %451, i64 %452)
  %454 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %455 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %454, i32 0, i32 5
  %456 = load i64, i64* %455, align 8
  %457 = icmp ne i64 %456, 0
  br i1 %457, label %458, label %500

458:                                              ; preds = %444
  %459 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %460 = call i64 @ELINK_SINGLE_MEDIA_DIRECT(%struct.elink_params* %459)
  %461 = icmp ne i64 %460, 0
  br i1 %461, label %482, label %462

462:                                              ; preds = %458
  %463 = load i64, i64* %12, align 8
  %464 = icmp ne i64 %463, 0
  br i1 %464, label %465, label %482

465:                                              ; preds = %462
  %466 = load i64, i64* %15, align 8
  %467 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %468 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %467, i32 0, i32 1
  %469 = load i64, i64* %468, align 8
  %470 = icmp ne i64 %466, %469
  br i1 %470, label %471, label %482

471:                                              ; preds = %465
  %472 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %473 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %474 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %473, i32 0, i32 1
  %475 = load i64, i64* %474, align 8
  %476 = load i64, i64* %15, align 8
  %477 = call i32 @ELINK_DEBUG_P2(%struct.bxe_softc* %472, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.15, i64 0, i64 0), i64 %475, i64 %476)
  %478 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %479 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %478, i32 0, i32 5
  store i64 0, i64* %479, align 8
  %480 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %481 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %480, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0))
  br label %499

482:                                              ; preds = %465, %462, %458
  %483 = load i64, i64* %16, align 8
  %484 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %485 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %484, i32 0, i32 1
  %486 = load i64, i64* %485, align 8
  %487 = icmp ne i64 %483, %486
  br i1 %487, label %488, label %498

488:                                              ; preds = %482
  %489 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %490 = load i64, i64* @NIG_REG_EGRESS_DRAIN0_MODE, align 8
  %491 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %492 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %491, i32 0, i32 0
  %493 = load i64, i64* %492, align 8
  %494 = mul i64 %493, 4
  %495 = add i64 %490, %494
  %496 = call i32 @REG_WR(%struct.bxe_softc* %489, i64 %495, i32 0)
  %497 = call i32 @DELAY(i32 1000)
  br label %498

498:                                              ; preds = %488, %482
  br label %499

499:                                              ; preds = %498, %471
  br label %500

500:                                              ; preds = %499, %444
  %501 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %502 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %501, i32 0, i32 1
  %503 = load i64, i64* %502, align 8
  %504 = load i64, i64* @ELINK_SPEED_10000, align 8
  %505 = icmp sge i64 %503, %504
  %506 = zext i1 %505 to i32
  %507 = sext i32 %506 to i64
  store i64 %507, i64* %9, align 8
  %508 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %509 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %510 = load i64, i64* %9, align 8
  %511 = call i32 @elink_link_int_ack(%struct.elink_params* %508, %struct.elink_vars* %509, i64 %510)
  %512 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %513 = call i64 @ELINK_SINGLE_MEDIA_DIRECT(%struct.elink_params* %512)
  %514 = icmp ne i64 %513, 0
  br i1 %514, label %606, label %515

515:                                              ; preds = %500
  %516 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %517 = load i64, i64* %12, align 8
  %518 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %519 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %518, i32 0, i32 5
  %520 = load i64, i64* %519, align 8
  %521 = trunc i64 %520 to i32
  %522 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %523 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %522, i32 0, i32 4
  %524 = load %struct.elink_phy*, %struct.elink_phy** %523, align 8
  %525 = load i64, i64* @ELINK_EXT_PHY1, align 8
  %526 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %524, i64 %525
  %527 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %526, i32 0, i32 2
  %528 = load i32, i32* %527, align 4
  %529 = sext i32 %528 to i64
  %530 = load i64, i64* @ELINK_FLAGS_INIT_XGXS_FIRST, align 8
  %531 = and i64 %529, %530
  %532 = call i32 @ELINK_DEBUG_P3(%struct.bxe_softc* %516, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.17, i64 0, i64 0), i64 %517, i32 %521, i64 %531)
  %533 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %534 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %533, i32 0, i32 4
  %535 = load %struct.elink_phy*, %struct.elink_phy** %534, align 8
  %536 = load i64, i64* @ELINK_EXT_PHY1, align 8
  %537 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %535, i64 %536
  %538 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %537, i32 0, i32 2
  %539 = load i32, i32* %538, align 4
  %540 = sext i32 %539 to i64
  %541 = load i64, i64* @ELINK_FLAGS_INIT_XGXS_FIRST, align 8
  %542 = and i64 %540, %541
  %543 = icmp ne i64 %542, 0
  br i1 %543, label %605, label %544

544:                                              ; preds = %515
  %545 = load i64, i64* %12, align 8
  %546 = icmp ne i64 %545, 0
  br i1 %546, label %547, label %605

547:                                              ; preds = %544
  %548 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %549 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %548, i32 0, i32 5
  %550 = load i64, i64* %549, align 8
  %551 = icmp ne i64 %550, 0
  br i1 %551, label %605, label %552

552:                                              ; preds = %547
  %553 = load i64, i64* %15, align 8
  %554 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %555 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %554, i32 0, i32 1
  store i64 %553, i64* %555, align 8
  %556 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %557 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %556, i32 0, i32 1
  %558 = load i64, i64* %557, align 8
  %559 = load i64, i64* @ELINK_SPEED_1000, align 8
  %560 = icmp slt i64 %558, %559
  br i1 %560, label %561, label %569

561:                                              ; preds = %552
  %562 = load i64, i64* @PHY_SGMII_FLAG, align 8
  %563 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %564 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %563, i32 0, i32 2
  %565 = load i32, i32* %564, align 8
  %566 = sext i32 %565 to i64
  %567 = or i64 %566, %562
  %568 = trunc i64 %567 to i32
  store i32 %568, i32* %564, align 8
  br label %578

569:                                              ; preds = %552
  %570 = load i64, i64* @PHY_SGMII_FLAG, align 8
  %571 = xor i64 %570, -1
  %572 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %573 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %572, i32 0, i32 2
  %574 = load i32, i32* %573, align 8
  %575 = sext i32 %574 to i64
  %576 = and i64 %575, %571
  %577 = trunc i64 %576 to i32
  store i32 %577, i32* %573, align 8
  br label %578

578:                                              ; preds = %569, %561
  %579 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %580 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %579, i32 0, i32 4
  %581 = load %struct.elink_phy*, %struct.elink_phy** %580, align 8
  %582 = load i64, i64* @ELINK_INT_PHY, align 8
  %583 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %581, i64 %582
  %584 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %583, i32 0, i32 3
  %585 = load i32 (%struct.elink_phy*, %struct.elink_params.1*, %struct.elink_vars*)*, i32 (%struct.elink_phy*, %struct.elink_params.1*, %struct.elink_vars*)** %584, align 8
  %586 = icmp ne i32 (%struct.elink_phy*, %struct.elink_params.1*, %struct.elink_vars*)* %585, null
  br i1 %586, label %587, label %604

587:                                              ; preds = %578
  %588 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %589 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %588, i32 0, i32 4
  %590 = load %struct.elink_phy*, %struct.elink_phy** %589, align 8
  %591 = load i64, i64* @ELINK_INT_PHY, align 8
  %592 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %590, i64 %591
  %593 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %592, i32 0, i32 3
  %594 = load i32 (%struct.elink_phy*, %struct.elink_params.1*, %struct.elink_vars*)*, i32 (%struct.elink_phy*, %struct.elink_params.1*, %struct.elink_vars*)** %593, align 8
  %595 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %596 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %595, i32 0, i32 4
  %597 = load %struct.elink_phy*, %struct.elink_phy** %596, align 8
  %598 = load i64, i64* @ELINK_INT_PHY, align 8
  %599 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %597, i64 %598
  %600 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %601 = bitcast %struct.elink_params* %600 to %struct.elink_params.1*
  %602 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %603 = call i32 %594(%struct.elink_phy* %599, %struct.elink_params.1* %601, %struct.elink_vars* %602)
  br label %604

604:                                              ; preds = %587, %578
  br label %605

605:                                              ; preds = %604, %547, %544, %515
  br label %606

606:                                              ; preds = %605, %500
  %607 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %608 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %607, i32 0, i32 5
  %609 = load i64, i64* %608, align 8
  %610 = icmp ne i64 %609, 0
  br i1 %610, label %611, label %624

611:                                              ; preds = %606
  %612 = load i64, i64* %12, align 8
  %613 = icmp ne i64 %612, 0
  br i1 %613, label %618, label %614

614:                                              ; preds = %611
  %615 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %616 = call i64 @ELINK_SINGLE_MEDIA_DIRECT(%struct.elink_params* %615)
  %617 = icmp ne i64 %616, 0
  br i1 %617, label %618, label %624

618:                                              ; preds = %614, %611
  %619 = load i64, i64* %17, align 8
  %620 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %25, i64 %619
  %621 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %620, i32 0, i32 7
  %622 = load i32, i32* %621, align 8
  %623 = icmp eq i32 %622, 0
  br label %624

624:                                              ; preds = %618, %614, %606
  %625 = phi i1 [ false, %614 ], [ false, %606 ], [ %623, %618 ]
  %626 = zext i1 %625 to i32
  %627 = sext i32 %626 to i64
  %628 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %629 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %628, i32 0, i32 6
  store i64 %627, i64* %629, align 8
  %630 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %631 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %630, i32 0, i32 6
  %632 = load i64, i64* %631, align 8
  %633 = icmp ne i64 %632, 0
  br i1 %633, label %634, label %637

634:                                              ; preds = %624
  %635 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %636 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %635, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.18, i64 0, i64 0))
  br label %640

637:                                              ; preds = %624
  %638 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %639 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %638, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.19, i64 0, i64 0))
  br label %640

640:                                              ; preds = %637, %634
  %641 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %642 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %641, i32 0, i32 3
  %643 = load i32, i32* %642, align 8
  %644 = load i32, i32* @ELINK_FEATURE_CONFIG_PFC_ENABLED, align 4
  %645 = and i32 %643, %644
  %646 = icmp ne i32 %645, 0
  br i1 %646, label %647, label %653

647:                                              ; preds = %640
  %648 = load i32, i32* @LINK_STATUS_PFC_ENABLED, align 4
  %649 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %650 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %649, i32 0, i32 0
  %651 = load i32, i32* %650, align 8
  %652 = or i32 %651, %648
  store i32 %652, i32* %650, align 8
  br label %660

653:                                              ; preds = %640
  %654 = load i32, i32* @LINK_STATUS_PFC_ENABLED, align 4
  %655 = xor i32 %654, -1
  %656 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %657 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %656, i32 0, i32 0
  %658 = load i32, i32* %657, align 8
  %659 = and i32 %658, %655
  store i32 %659, i32* %657, align 8
  br label %660

660:                                              ; preds = %653, %647
  %661 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %662 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %661, i32 0, i32 6
  %663 = load i64, i64* %662, align 8
  %664 = icmp ne i64 %663, 0
  br i1 %664, label %665, label %670

665:                                              ; preds = %660
  %666 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %667 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %668 = load i64, i64* %9, align 8
  %669 = call i32 @elink_update_link_up(%struct.elink_params* %666, %struct.elink_vars* %667, i64 %668)
  store i32 %669, i32* %14, align 4
  br label %674

670:                                              ; preds = %660
  %671 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %672 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %673 = call i32 @elink_update_link_down(%struct.elink_params* %671, %struct.elink_vars* %672)
  store i32 %673, i32* %14, align 4
  br label %674

674:                                              ; preds = %670, %665
  %675 = load i32, i32* %11, align 4
  %676 = load %struct.elink_vars*, %struct.elink_vars** %4, align 8
  %677 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %676, i32 0, i32 0
  %678 = load i32, i32* %677, align 8
  %679 = xor i32 %675, %678
  %680 = load i32, i32* @LINK_STATUS_LINK_UP, align 4
  %681 = and i32 %679, %680
  %682 = icmp ne i32 %681, 0
  br i1 %682, label %683, label %686

683:                                              ; preds = %674
  %684 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %685 = call i32 @elink_chng_link_count(%struct.elink_params* %684, i32 0)
  br label %686

686:                                              ; preds = %683, %674
  %687 = load %struct.elink_params*, %struct.elink_params** %3, align 8
  %688 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %687, i32 0, i32 3
  %689 = load i32, i32* %688, align 8
  %690 = load i32, i32* @ELINK_FEATURE_CONFIG_BC_SUPPORTS_AFEX, align 4
  %691 = and i32 %689, %690
  %692 = icmp ne i32 %691, 0
  br i1 %692, label %693, label %697

693:                                              ; preds = %686
  %694 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %695 = load i32, i32* @DRV_MSG_CODE_LINK_STATUS_CHANGED, align 4
  %696 = call i32 @elink_cb_fw_command(%struct.bxe_softc* %694, i32 %695, i32 0)
  br label %697

697:                                              ; preds = %693, %686
  %698 = load i32, i32* %14, align 4
  %699 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %699)
  ret i32 %698
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @USES_WARPCORE(%struct.bxe_softc*) #2

declare dso_local i32 @elink_set_aer_mmd(%struct.elink_params*, %struct.elink_phy*) #2

declare dso_local i32 @ELINK_DEBUG_P3(%struct.bxe_softc*, i8*, i64, i32, i64) #2

declare dso_local i64 @REG_RD(%struct.bxe_softc*, i64) #2

declare dso_local i32 @ELINK_DEBUG_P2(%struct.bxe_softc*, i8*, i64, i64) #2

declare dso_local i32 @CHIP_IS_E3(%struct.bxe_softc*) #2

declare dso_local i32 @REG_WR(%struct.bxe_softc*, i64, i32) #2

declare dso_local i32 @ELINK_DEBUG_P1(%struct.bxe_softc*, i8*, i64) #2

declare dso_local i32 @elink_phy_selection(%struct.elink_params*) #2

declare dso_local i32 @ELINK_DEBUG_P0(%struct.bxe_softc*, i8*) #2

declare dso_local i32 @elink_rearm_latch_signal(%struct.bxe_softc*, i64, i32) #2

declare dso_local i64 @ELINK_SINGLE_MEDIA_DIRECT(%struct.elink_params*) #2

declare dso_local i32 @DELAY(i32) #2

declare dso_local i32 @elink_link_int_ack(%struct.elink_params*, %struct.elink_vars*, i64) #2

declare dso_local i32 @elink_update_link_up(%struct.elink_params*, %struct.elink_vars*, i64) #2

declare dso_local i32 @elink_update_link_down(%struct.elink_params*, %struct.elink_vars*) #2

declare dso_local i32 @elink_chng_link_count(%struct.elink_params*, i32) #2

declare dso_local i32 @elink_cb_fw_command(%struct.bxe_softc*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
