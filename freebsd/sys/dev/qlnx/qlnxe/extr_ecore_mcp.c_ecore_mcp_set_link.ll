; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_set_link.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_set_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32, %struct.ecore_mcp_link_params }
%struct.ecore_mcp_link_params = type { %struct.TYPE_8__, i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i32, i64, i64 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i64, i64, i64 }
%struct.ecore_ptt = type { i32 }
%struct.ecore_mcp_mb_params = type { i32, i32, %struct.ecore_mcp_mb_params*, i32, i32, i32, i32, i32 }
%struct.eth_phy_cfg = type { i32, i32, %struct.eth_phy_cfg*, i32, i32, i32, i32, i32 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@DRV_MSG_CODE_INIT_PHY = common dso_local global i32 0, align 4
@DRV_MSG_CODE_LINK_RESET = common dso_local global i32 0, align 4
@ETH_PAUSE_AUTONEG = common dso_local global i32 0, align 4
@ETH_PAUSE_RX = common dso_local global i32 0, align 4
@ETH_PAUSE_TX = common dso_local global i32 0, align 4
@FW_MB_PARAM_FEATURE_SUPPORT_EEE = common dso_local global i32 0, align 4
@EEE_CFG_EEE_ENABLED = common dso_local global i32 0, align 4
@EEE_CFG_TX_LPI = common dso_local global i32 0, align 4
@ECORE_EEE_1G_ADV = common dso_local global i32 0, align 4
@EEE_CFG_ADV_SPEED_1G = common dso_local global i32 0, align 4
@ECORE_EEE_10G_ADV = common dso_local global i32 0, align 4
@EEE_CFG_ADV_SPEED_10G = common dso_local global i32 0, align 4
@EEE_TX_TIMER_USEC_OFFSET = common dso_local global i32 0, align 4
@EEE_TX_TIMER_USEC_MASK = common dso_local global i32 0, align 4
@ECORE_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [81 x i8] c"Configuring Link: Speed 0x%08x, Pause 0x%08x, adv_speed 0x%08x, loopback 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Resetting link\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"MCP response failure, aborting\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_mcp_set_link(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.ecore_ptt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ecore_mcp_link_params*, align 8
  %9 = alloca %struct.ecore_mcp_mb_params, align 8
  %10 = alloca %struct.eth_phy_cfg, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %14 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %13, i32 0, i32 1
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  store %struct.ecore_mcp_link_params* %16, %struct.ecore_mcp_link_params** %8, align 8
  %17 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %17, i32* %11, align 4
  %18 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %19 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @CHIP_REV_IS_EMUL(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %24, i32* %4, align 4
  br label %212

25:                                               ; preds = %3
  %26 = call i32 @OSAL_MEM_ZERO(%struct.eth_phy_cfg* %10, i32 40)
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @DRV_MSG_CODE_INIT_PHY, align 4
  br label %33

31:                                               ; preds = %25
  %32 = load i32, i32* @DRV_MSG_CODE_LINK_RESET, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  store i32 %34, i32* %12, align 4
  %35 = load %struct.ecore_mcp_link_params*, %struct.ecore_mcp_link_params** %8, align 8
  %36 = getelementptr inbounds %struct.ecore_mcp_link_params, %struct.ecore_mcp_link_params* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %33
  %41 = load %struct.ecore_mcp_link_params*, %struct.ecore_mcp_link_params** %8, align 8
  %42 = getelementptr inbounds %struct.ecore_mcp_link_params, %struct.ecore_mcp_link_params* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.eth_phy_cfg, %struct.eth_phy_cfg* %10, i32 0, i32 7
  store i32 %44, i32* %45, align 8
  br label %46

46:                                               ; preds = %40, %33
  %47 = load %struct.ecore_mcp_link_params*, %struct.ecore_mcp_link_params** %8, align 8
  %48 = getelementptr inbounds %struct.ecore_mcp_link_params, %struct.ecore_mcp_link_params* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* @ETH_PAUSE_AUTONEG, align 4
  br label %55

54:                                               ; preds = %46
  br label %55

55:                                               ; preds = %54, %52
  %56 = phi i32 [ %53, %52 ], [ 0, %54 ]
  %57 = getelementptr inbounds %struct.eth_phy_cfg, %struct.eth_phy_cfg* %10, i32 0, i32 6
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %56
  store i32 %59, i32* %57, align 4
  %60 = load %struct.ecore_mcp_link_params*, %struct.ecore_mcp_link_params** %8, align 8
  %61 = getelementptr inbounds %struct.ecore_mcp_link_params, %struct.ecore_mcp_link_params* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %55
  %66 = load i32, i32* @ETH_PAUSE_RX, align 4
  br label %68

67:                                               ; preds = %55
  br label %68

68:                                               ; preds = %67, %65
  %69 = phi i32 [ %66, %65 ], [ 0, %67 ]
  %70 = getelementptr inbounds %struct.eth_phy_cfg, %struct.eth_phy_cfg* %10, i32 0, i32 6
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %69
  store i32 %72, i32* %70, align 4
  %73 = load %struct.ecore_mcp_link_params*, %struct.ecore_mcp_link_params** %8, align 8
  %74 = getelementptr inbounds %struct.ecore_mcp_link_params, %struct.ecore_mcp_link_params* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %68
  %79 = load i32, i32* @ETH_PAUSE_TX, align 4
  br label %81

80:                                               ; preds = %68
  br label %81

81:                                               ; preds = %80, %78
  %82 = phi i32 [ %79, %78 ], [ 0, %80 ]
  %83 = getelementptr inbounds %struct.eth_phy_cfg, %struct.eth_phy_cfg* %10, i32 0, i32 6
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %82
  store i32 %85, i32* %83, align 4
  %86 = load %struct.ecore_mcp_link_params*, %struct.ecore_mcp_link_params** %8, align 8
  %87 = getelementptr inbounds %struct.ecore_mcp_link_params, %struct.ecore_mcp_link_params* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.eth_phy_cfg, %struct.eth_phy_cfg* %10, i32 0, i32 5
  store i32 %89, i32* %90, align 8
  %91 = load %struct.ecore_mcp_link_params*, %struct.ecore_mcp_link_params** %8, align 8
  %92 = getelementptr inbounds %struct.ecore_mcp_link_params, %struct.ecore_mcp_link_params* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = getelementptr inbounds %struct.eth_phy_cfg, %struct.eth_phy_cfg* %10, i32 0, i32 4
  store i32 %93, i32* %94, align 4
  %95 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %96 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %95, i32 0, i32 1
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @FW_MB_PARAM_FEATURE_SUPPORT_EEE, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %162

103:                                              ; preds = %81
  %104 = load %struct.ecore_mcp_link_params*, %struct.ecore_mcp_link_params** %8, align 8
  %105 = getelementptr inbounds %struct.ecore_mcp_link_params, %struct.ecore_mcp_link_params* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %162

109:                                              ; preds = %103
  %110 = load i32, i32* @EEE_CFG_EEE_ENABLED, align 4
  %111 = getelementptr inbounds %struct.eth_phy_cfg, %struct.eth_phy_cfg* %10, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = or i32 %112, %110
  store i32 %113, i32* %111, align 8
  %114 = load %struct.ecore_mcp_link_params*, %struct.ecore_mcp_link_params** %8, align 8
  %115 = getelementptr inbounds %struct.ecore_mcp_link_params, %struct.ecore_mcp_link_params* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %109
  %120 = load i32, i32* @EEE_CFG_TX_LPI, align 4
  %121 = getelementptr inbounds %struct.eth_phy_cfg, %struct.eth_phy_cfg* %10, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = or i32 %122, %120
  store i32 %123, i32* %121, align 8
  br label %124

124:                                              ; preds = %119, %109
  %125 = load %struct.ecore_mcp_link_params*, %struct.ecore_mcp_link_params** %8, align 8
  %126 = getelementptr inbounds %struct.ecore_mcp_link_params, %struct.ecore_mcp_link_params* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @ECORE_EEE_1G_ADV, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %124
  %133 = load i32, i32* @EEE_CFG_ADV_SPEED_1G, align 4
  %134 = getelementptr inbounds %struct.eth_phy_cfg, %struct.eth_phy_cfg* %10, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = or i32 %135, %133
  store i32 %136, i32* %134, align 8
  br label %137

137:                                              ; preds = %132, %124
  %138 = load %struct.ecore_mcp_link_params*, %struct.ecore_mcp_link_params** %8, align 8
  %139 = getelementptr inbounds %struct.ecore_mcp_link_params, %struct.ecore_mcp_link_params* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @ECORE_EEE_10G_ADV, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %137
  %146 = load i32, i32* @EEE_CFG_ADV_SPEED_10G, align 4
  %147 = getelementptr inbounds %struct.eth_phy_cfg, %struct.eth_phy_cfg* %10, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = or i32 %148, %146
  store i32 %149, i32* %147, align 8
  br label %150

150:                                              ; preds = %145, %137
  %151 = load %struct.ecore_mcp_link_params*, %struct.ecore_mcp_link_params** %8, align 8
  %152 = getelementptr inbounds %struct.ecore_mcp_link_params, %struct.ecore_mcp_link_params* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @EEE_TX_TIMER_USEC_OFFSET, align 4
  %156 = shl i32 %154, %155
  %157 = load i32, i32* @EEE_TX_TIMER_USEC_MASK, align 4
  %158 = and i32 %156, %157
  %159 = getelementptr inbounds %struct.eth_phy_cfg, %struct.eth_phy_cfg* %10, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = or i32 %160, %158
  store i32 %161, i32* %159, align 8
  br label %162

162:                                              ; preds = %150, %103, %81
  %163 = load i32, i32* %7, align 4
  %164 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %165 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %164, i32 0, i32 0
  store i32 %163, i32* %165, align 8
  %166 = load i32, i32* %7, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %180

168:                                              ; preds = %162
  %169 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %170 = load i32, i32* @ECORE_MSG_LINK, align 4
  %171 = getelementptr inbounds %struct.eth_phy_cfg, %struct.eth_phy_cfg* %10, i32 0, i32 7
  %172 = load i32, i32* %171, align 8
  %173 = getelementptr inbounds %struct.eth_phy_cfg, %struct.eth_phy_cfg* %10, i32 0, i32 6
  %174 = load i32, i32* %173, align 4
  %175 = getelementptr inbounds %struct.eth_phy_cfg, %struct.eth_phy_cfg* %10, i32 0, i32 5
  %176 = load i32, i32* %175, align 8
  %177 = getelementptr inbounds %struct.eth_phy_cfg, %struct.eth_phy_cfg* %10, i32 0, i32 4
  %178 = load i32, i32* %177, align 4
  %179 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %169, i32 %170, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), i32 %172, i32 %174, i32 %176, i32 %178)
  br label %184

180:                                              ; preds = %162
  %181 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %182 = load i32, i32* @ECORE_MSG_LINK, align 4
  %183 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %181, i32 %182, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %184

184:                                              ; preds = %180, %168
  %185 = bitcast %struct.ecore_mcp_mb_params* %9 to %struct.eth_phy_cfg*
  %186 = call i32 @OSAL_MEM_ZERO(%struct.eth_phy_cfg* %185, i32 40)
  %187 = load i32, i32* %12, align 4
  %188 = getelementptr inbounds %struct.ecore_mcp_mb_params, %struct.ecore_mcp_mb_params* %9, i32 0, i32 3
  store i32 %187, i32* %188, align 8
  %189 = bitcast %struct.eth_phy_cfg* %10 to %struct.ecore_mcp_mb_params*
  %190 = getelementptr inbounds %struct.ecore_mcp_mb_params, %struct.ecore_mcp_mb_params* %9, i32 0, i32 2
  store %struct.ecore_mcp_mb_params* %189, %struct.ecore_mcp_mb_params** %190, align 8
  %191 = getelementptr inbounds %struct.ecore_mcp_mb_params, %struct.ecore_mcp_mb_params* %9, i32 0, i32 1
  store i32 40, i32* %191, align 4
  %192 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %193 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %194 = bitcast %struct.ecore_mcp_mb_params* %9 to %struct.eth_phy_cfg*
  %195 = call i32 @ecore_mcp_cmd_and_union(%struct.ecore_hwfn* %192, %struct.ecore_ptt* %193, %struct.eth_phy_cfg* %194)
  store i32 %195, i32* %11, align 4
  %196 = load i32, i32* %11, align 4
  %197 = load i32, i32* @ECORE_SUCCESS, align 4
  %198 = icmp ne i32 %196, %197
  br i1 %198, label %199, label %203

199:                                              ; preds = %184
  %200 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %201 = call i32 @DP_ERR(%struct.ecore_hwfn* %200, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %202 = load i32, i32* %11, align 4
  store i32 %202, i32* %4, align 4
  br label %212

203:                                              ; preds = %184
  %204 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %205 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %206 = load i32, i32* %7, align 4
  %207 = icmp ne i32 %206, 0
  %208 = xor i1 %207, true
  %209 = zext i1 %208 to i32
  %210 = call i32 @ecore_mcp_handle_link_change(%struct.ecore_hwfn* %204, %struct.ecore_ptt* %205, i32 %209)
  %211 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %211, i32* %4, align 4
  br label %212

212:                                              ; preds = %203, %199, %23
  %213 = load i32, i32* %4, align 4
  ret i32 %213
}

declare dso_local i64 @CHIP_REV_IS_EMUL(i32) #1

declare dso_local i32 @OSAL_MEM_ZERO(%struct.eth_phy_cfg*, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, ...) #1

declare dso_local i32 @ecore_mcp_cmd_and_union(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.eth_phy_cfg*) #1

declare dso_local i32 @DP_ERR(%struct.ecore_hwfn*, i8*) #1

declare dso_local i32 @ecore_mcp_handle_link_change(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
