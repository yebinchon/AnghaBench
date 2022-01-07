; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_phy_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elink_params = type { i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, %struct.bxe_softc* }
%struct.bxe_softc = type { i32 }
%struct.elink_vars = type { i32, i32, i64, i64, i32, i32, i32, i64, i64, i64 }

@.str = private unnamed_addr constant [28 x i8] c"Phy Initialization started\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"(1) req_speed %d, req_flowctrl %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"(2) req_speed %d, req_flowctrl %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"req_adv_flow_ctrl 0x%x\0A\00", align 1
@DUPLEX_FULL = common dso_local global i32 0, align 4
@ELINK_FLOW_CTRL_NONE = common dso_local global i32 0, align 4
@ELINK_MAC_TYPE_NONE = common dso_local global i32 0, align 4
@ELINK_PHY_INITIALIZED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [57 x i8] c" params : port = %x, loopback_mode = %x req_duplex = %x\0A\00", align 1
@.str.5 = private unnamed_addr constant [64 x i8] c" params : switch_cfg = %x, lane_config = %x req_duplex[1] = %x\0A\00", align 1
@.str.6 = private unnamed_addr constant [66 x i8] c" params : chip_id = %x, feature_config_flags = %x, num_phys = %x\0A\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c" params : rsrv = %x, eee_mode = %x, hw_led_mode = x\0A\00", align 1
@.str.8 = private unnamed_addr constant [65 x i8] c" params : multi_phy = %x, req_fc_auto_adv = %x, link_flags = %x\0A\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c" params : lfa_base = %x, link_attr = %x\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"Link Flap Avoidance in progress\0A\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"Cannot avoid link flap lfa_sta=0x%x\0A\00", align 1
@NIG_REG_MASK_INTERRUPT_PORT0 = common dso_local global i64 0, align 8
@ELINK_NIG_MASK_XGXS0_LINK_STATUS = common dso_local global i32 0, align 4
@ELINK_NIG_MASK_XGXS0_LINK10G = common dso_local global i32 0, align 4
@ELINK_NIG_MASK_SERDES0_LINK_STATUS = common dso_local global i32 0, align 4
@ELINK_NIG_MASK_MI_INT = common dso_local global i32 0, align 4
@ELINK_FEATURE_CONFIG_PFC_ENABLED = common dso_local global i32 0, align 4
@LINK_STATUS_PFC_ENABLED = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [36 x i8] c"No phy found for initialization !!\0A\00", align 1
@ELINK_STATUS_ERROR = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [26 x i8] c"Num of phys on board: %d\0A\00", align 1
@ELINK_SWITCH_CFG_10G = common dso_local global i32 0, align 4
@ELINK_STATUS_OK = common dso_local global i32 0, align 4
@ELINK_FEATURE_CONFIG_EMUL_DISABLE_EMAC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @elink_phy_init(%struct.elink_params* %0, %struct.elink_vars* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.elink_params*, align 8
  %5 = alloca %struct.elink_vars*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bxe_softc*, align 8
  store %struct.elink_params* %0, %struct.elink_params** %4, align 8
  store %struct.elink_vars* %1, %struct.elink_vars** %5, align 8
  %8 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %9 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %8, i32 0, i32 18
  %10 = load %struct.bxe_softc*, %struct.bxe_softc** %9, align 8
  store %struct.bxe_softc* %10, %struct.bxe_softc** %7, align 8
  %11 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %12 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %11, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %14 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %15 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %14, i32 0, i32 17
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %20 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %19, i32 0, i32 16
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ELINK_DEBUG_P2(%struct.bxe_softc* %13, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %18, i32 %23)
  %25 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %26 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %27 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %26, i32 0, i32 17
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %32 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %31, i32 0, i32 16
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ELINK_DEBUG_P2(%struct.bxe_softc* %25, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %30, i32 %35)
  %37 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %38 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %39 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @ELINK_DEBUG_P1(%struct.bxe_softc* %37, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %40)
  %42 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %43 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %42, i32 0, i32 1
  store i32 0, i32* %43, align 4
  %44 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %45 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %44, i32 0, i32 9
  store i64 0, i64* %45, align 8
  %46 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %47 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %46, i32 0, i32 8
  store i64 0, i64* %47, align 8
  %48 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %49 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %48, i32 0, i32 7
  store i64 0, i64* %49, align 8
  %50 = load i32, i32* @DUPLEX_FULL, align 4
  %51 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %52 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %51, i32 0, i32 6
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* @ELINK_FLOW_CTRL_NONE, align 4
  %54 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %55 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %54, i32 0, i32 5
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @ELINK_MAC_TYPE_NONE, align 4
  %57 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %58 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 8
  %59 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %60 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %59, i32 0, i32 3
  store i64 0, i64* %60, align 8
  %61 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %62 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %61, i32 0, i32 2
  store i64 0, i64* %62, align 8
  %63 = load i32, i32* @ELINK_PHY_INITIALIZED, align 4
  %64 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %65 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %67 = call i32 @elink_set_rx_filter(%struct.elink_params* %66, i32 1)
  %68 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %69 = call i32 @elink_chng_link_count(%struct.elink_params* %68, i32 1)
  %70 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %71 = call i32 @elink_check_lfa(%struct.elink_params* %70)
  store i32 %71, i32* %6, align 4
  %72 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %73 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %74 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %77 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %80 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %79, i32 0, i32 4
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @ELINK_DEBUG_P3(%struct.bxe_softc* %72, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), i32 %75, i32 %78, i32 %83)
  %85 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %86 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %87 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %90 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %93 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %92, i32 0, i32 4
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @ELINK_DEBUG_P3(%struct.bxe_softc* %85, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i64 0, i64 0), i32 %88, i32 %91, i32 %96)
  %98 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %99 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %100 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %99, i32 0, i32 7
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %103 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %102, i32 0, i32 8
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %106 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %105, i32 0, i32 9
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @ELINK_DEBUG_P3(%struct.bxe_softc* %98, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.6, i64 0, i64 0), i32 %101, i32 %104, i32 %107)
  %109 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %110 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %111 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %110, i32 0, i32 10
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %114 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %113, i32 0, i32 11
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %117 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %116, i32 0, i32 12
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @ELINK_DEBUG_P3(%struct.bxe_softc* %109, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i32 %112, i32 %115, i32 %118)
  %120 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %121 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %122 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %121, i32 0, i32 13
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %125 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %128 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @ELINK_DEBUG_P3(%struct.bxe_softc* %120, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.8, i64 0, i64 0), i32 %123, i32 %126, i32 %129)
  %131 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %132 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %133 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %132, i32 0, i32 15
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %136 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %135, i32 0, i32 14
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @ELINK_DEBUG_P2(%struct.bxe_softc* %131, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0), i32 %134, i32 %137)
  %139 = load i32, i32* %6, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %2
  %142 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %143 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %142, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0))
  %144 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %145 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %146 = call i32 @elink_avoid_link_flap(%struct.elink_params* %144, %struct.elink_vars* %145)
  store i32 %146, i32* %3, align 4
  br label %270

147:                                              ; preds = %2
  %148 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %149 = load i32, i32* %6, align 4
  %150 = call i32 @ELINK_DEBUG_P1(%struct.bxe_softc* %148, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i64 0, i64 0), i32 %149)
  %151 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %152 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %153 = load i32, i32* %6, align 4
  %154 = call i32 @elink_cannot_avoid_link_flap(%struct.elink_params* %151, %struct.elink_vars* %152, i32 %153)
  %155 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %156 = load i64, i64* @NIG_REG_MASK_INTERRUPT_PORT0, align 8
  %157 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %158 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = mul nsw i32 %159, 4
  %161 = sext i32 %160 to i64
  %162 = add nsw i64 %156, %161
  %163 = load i32, i32* @ELINK_NIG_MASK_XGXS0_LINK_STATUS, align 4
  %164 = load i32, i32* @ELINK_NIG_MASK_XGXS0_LINK10G, align 4
  %165 = or i32 %163, %164
  %166 = load i32, i32* @ELINK_NIG_MASK_SERDES0_LINK_STATUS, align 4
  %167 = or i32 %165, %166
  %168 = load i32, i32* @ELINK_NIG_MASK_MI_INT, align 4
  %169 = or i32 %167, %168
  %170 = call i32 @elink_bits_dis(%struct.bxe_softc* %155, i64 %162, i32 %169)
  %171 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %172 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %173 = call i32 @elink_emac_init(%struct.elink_params* %171, %struct.elink_vars* %172)
  %174 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %175 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %174, i32 0, i32 8
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @ELINK_FEATURE_CONFIG_PFC_ENABLED, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %186

180:                                              ; preds = %147
  %181 = load i32, i32* @LINK_STATUS_PFC_ENABLED, align 4
  %182 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %183 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = or i32 %184, %181
  store i32 %185, i32* %183, align 4
  br label %186

186:                                              ; preds = %180, %147
  %187 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %188 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %187, i32 0, i32 9
  %189 = load i32, i32* %188, align 8
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %199

191:                                              ; preds = %186
  %192 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %193 = call i32 @CHIP_REV_IS_SLOW(%struct.bxe_softc* %192)
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %199, label %195

195:                                              ; preds = %191
  %196 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %197 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %196, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0))
  %198 = load i32, i32* @ELINK_STATUS_ERROR, align 4
  store i32 %198, i32* %3, align 4
  br label %270

199:                                              ; preds = %191, %186
  %200 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %201 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %202 = call i32 @set_phy_vars(%struct.elink_params* %200, %struct.elink_vars* %201)
  %203 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %204 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %205 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %204, i32 0, i32 9
  %206 = load i32, i32* %205, align 8
  %207 = call i32 @ELINK_DEBUG_P1(%struct.bxe_softc* %203, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i32 %206)
  %208 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %209 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 4
  switch i32 %210, label %231 [
    i32 133, label %211
    i32 132, label %215
    i32 128, label %219
    i32 130, label %223
    i32 129, label %227
    i32 131, label %227
  ]

211:                                              ; preds = %199
  %212 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %213 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %214 = call i32 @elink_init_bmac_loopback(%struct.elink_params* %212, %struct.elink_vars* %213)
  br label %258

215:                                              ; preds = %199
  %216 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %217 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %218 = call i32 @elink_init_emac_loopback(%struct.elink_params* %216, %struct.elink_vars* %217)
  br label %258

219:                                              ; preds = %199
  %220 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %221 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %222 = call i32 @elink_init_xmac_loopback(%struct.elink_params* %220, %struct.elink_vars* %221)
  br label %258

223:                                              ; preds = %199
  %224 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %225 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %226 = call i32 @elink_init_umac_loopback(%struct.elink_params* %224, %struct.elink_vars* %225)
  br label %258

227:                                              ; preds = %199, %199
  %228 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %229 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %230 = call i32 @elink_init_xgxs_loopback(%struct.elink_params* %228, %struct.elink_vars* %229)
  br label %258

231:                                              ; preds = %199
  %232 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %233 = call i32 @CHIP_IS_E3(%struct.bxe_softc* %232)
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %251, label %235

235:                                              ; preds = %231
  %236 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %237 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %236, i32 0, i32 5
  %238 = load i32, i32* %237, align 8
  %239 = load i32, i32* @ELINK_SWITCH_CFG_10G, align 4
  %240 = icmp eq i32 %238, %239
  br i1 %240, label %241, label %244

241:                                              ; preds = %235
  %242 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %243 = call i32 @elink_xgxs_deassert(%struct.elink_params* %242)
  br label %250

244:                                              ; preds = %235
  %245 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %246 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %247 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 8
  %249 = call i32 @elink_serdes_deassert(%struct.bxe_softc* %245, i32 %248)
  br label %250

250:                                              ; preds = %244, %241
  br label %251

251:                                              ; preds = %250, %231
  %252 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %253 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %254 = call i32 @elink_link_initialize(%struct.elink_params* %252, %struct.elink_vars* %253)
  %255 = call i32 @DELAY(i32 30000)
  %256 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %257 = call i32 @elink_link_int_enable(%struct.elink_params* %256)
  br label %258

258:                                              ; preds = %251, %227, %223, %219, %215, %211
  %259 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %260 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %261 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @elink_update_mng(%struct.elink_params* %259, i32 %262)
  %264 = load %struct.elink_params*, %struct.elink_params** %4, align 8
  %265 = load %struct.elink_vars*, %struct.elink_vars** %5, align 8
  %266 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = call i32 @elink_update_mng_eee(%struct.elink_params* %264, i32 %267)
  %269 = load i32, i32* @ELINK_STATUS_OK, align 4
  store i32 %269, i32* %3, align 4
  br label %270

270:                                              ; preds = %258, %195, %141
  %271 = load i32, i32* %3, align 4
  ret i32 %271
}

declare dso_local i32 @ELINK_DEBUG_P0(%struct.bxe_softc*, i8*) #1

declare dso_local i32 @ELINK_DEBUG_P2(%struct.bxe_softc*, i8*, i32, i32) #1

declare dso_local i32 @ELINK_DEBUG_P1(%struct.bxe_softc*, i8*, i32) #1

declare dso_local i32 @elink_set_rx_filter(%struct.elink_params*, i32) #1

declare dso_local i32 @elink_chng_link_count(%struct.elink_params*, i32) #1

declare dso_local i32 @elink_check_lfa(%struct.elink_params*) #1

declare dso_local i32 @ELINK_DEBUG_P3(%struct.bxe_softc*, i8*, i32, i32, i32) #1

declare dso_local i32 @elink_avoid_link_flap(%struct.elink_params*, %struct.elink_vars*) #1

declare dso_local i32 @elink_cannot_avoid_link_flap(%struct.elink_params*, %struct.elink_vars*, i32) #1

declare dso_local i32 @elink_bits_dis(%struct.bxe_softc*, i64, i32) #1

declare dso_local i32 @elink_emac_init(%struct.elink_params*, %struct.elink_vars*) #1

declare dso_local i32 @CHIP_REV_IS_SLOW(%struct.bxe_softc*) #1

declare dso_local i32 @set_phy_vars(%struct.elink_params*, %struct.elink_vars*) #1

declare dso_local i32 @elink_init_bmac_loopback(%struct.elink_params*, %struct.elink_vars*) #1

declare dso_local i32 @elink_init_emac_loopback(%struct.elink_params*, %struct.elink_vars*) #1

declare dso_local i32 @elink_init_xmac_loopback(%struct.elink_params*, %struct.elink_vars*) #1

declare dso_local i32 @elink_init_umac_loopback(%struct.elink_params*, %struct.elink_vars*) #1

declare dso_local i32 @elink_init_xgxs_loopback(%struct.elink_params*, %struct.elink_vars*) #1

declare dso_local i32 @CHIP_IS_E3(%struct.bxe_softc*) #1

declare dso_local i32 @elink_xgxs_deassert(%struct.elink_params*) #1

declare dso_local i32 @elink_serdes_deassert(%struct.bxe_softc*, i32) #1

declare dso_local i32 @elink_link_initialize(%struct.elink_params*, %struct.elink_vars*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @elink_link_int_enable(%struct.elink_params*) #1

declare dso_local i32 @elink_update_mng(%struct.elink_params*, i32) #1

declare dso_local i32 @elink_update_mng_eee(%struct.elink_params*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
