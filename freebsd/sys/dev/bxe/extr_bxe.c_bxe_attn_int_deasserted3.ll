; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_attn_int_deasserted3.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_attn_int_deasserted3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.bxe_softc = type { i32, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }

@EVEREST_GEN_ATTN_IN_USE_MASK = common dso_local global i32 0, align 4
@MISC_REG_AEU_GENERAL_ATTN_12 = common dso_local global i64 0, align 8
@func_mf_config = common dso_local global %struct.TYPE_11__* null, align 8
@func_mb = common dso_local global %struct.TYPE_12__* null, align 8
@DRV_STATUS_DCC_EVENT_MASK = common dso_local global i32 0, align 4
@DRV_STATUS_SET_MF_BW = common dso_local global i32 0, align 4
@DRV_STATUS_DRV_INFO_REQ = common dso_local global i32 0, align 4
@DRV_STATUS_PMF = common dso_local global i32 0, align 4
@DRV_STATUS_EEE_NEGOTIATION_RESULTS = common dso_local global i32 0, align 4
@ELINK_PERIODIC_FLAGS_LINK_EVENT = common dso_local global i32 0, align 4
@BXE_MC_ASSERT_BITS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"MC assert!\0A\00", align 1
@MISC_REG_AEU_GENERAL_ATTN_10 = common dso_local global i64 0, align 8
@MISC_REG_AEU_GENERAL_ATTN_9 = common dso_local global i64 0, align 8
@MISC_REG_AEU_GENERAL_ATTN_8 = common dso_local global i64 0, align 8
@MISC_REG_AEU_GENERAL_ATTN_7 = common dso_local global i64 0, align 8
@BXE_ERR_MC_ASSERT = common dso_local global i32 0, align 4
@taskqueue_thread = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@BXE_MCP_ASSERT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"MCP assert!\0A\00", align 1
@MISC_REG_AEU_GENERAL_ATTN_11 = common dso_local global i64 0, align 8
@BXE_ERR_MCP_ASSERT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Unknown HW assert! (attn 0x%08x)\0A\00", align 1
@EVEREST_LATCHED_ATTN_IN_USE_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"LATCHED attention 0x%08x (masked)\0A\00", align 1
@BXE_GRC_TIMEOUT = common dso_local global i32 0, align 4
@MISC_REG_GRC_TIMEOUT_ATTN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"GRC time-out 0x%08x\0A\00", align 1
@BXE_GRC_RSV = common dso_local global i32 0, align 4
@MISC_REG_GRC_RSV_ATTN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"GRC reserved 0x%08x\0A\00", align 1
@MISC_REG_AEU_CLR_LATCH_SIGNAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*, i32)* @bxe_attn_int_deasserted3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_attn_int_deasserted3(%struct.bxe_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.bxe_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %8 = call i32 @SC_FUNC(%struct.bxe_softc* %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @EVEREST_GEN_ATTN_IN_USE_MASK, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %193

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %16 = call i32 @BXE_PMF_LINK_ASSERT(%struct.bxe_softc* %15)
  %17 = and i32 %14, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %131

19:                                               ; preds = %13
  %20 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %21 = load i64, i64* @MISC_REG_AEU_GENERAL_ATTN_12, align 8
  %22 = load i32, i32* %5, align 4
  %23 = mul nsw i32 %22, 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %21, %24
  %26 = call i32 @REG_WR(%struct.bxe_softc* %20, i64 %25, i32 0)
  %27 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %28 = call i32 @bxe_read_mf_cfg(%struct.bxe_softc* %27)
  %29 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** @func_mf_config, align 8
  %31 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %32 = call i64 @SC_ABS_FUNC(%struct.bxe_softc* %31)
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @MFCFG_RD(%struct.bxe_softc* %29, i32 %35)
  %37 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %38 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %43 = call i64 @SC_VN(%struct.bxe_softc* %42)
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32 %36, i32* %44, align 4
  %45 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** @func_mb, align 8
  %47 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %48 = call i64 @SC_FW_MB_IDX(%struct.bxe_softc* %47)
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @SHMEM_RD(%struct.bxe_softc* %45, i32 %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @DRV_STATUS_DCC_EVENT_MASK, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %19
  %58 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @DRV_STATUS_DCC_EVENT_MASK, align 4
  %61 = and i32 %59, %60
  %62 = call i32 @bxe_dcc_event(%struct.bxe_softc* %58, i32 %61)
  br label %63

63:                                               ; preds = %57, %19
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @DRV_STATUS_SET_MF_BW, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %70 = call i32 @bxe_set_mf_bw(%struct.bxe_softc* %69)
  br label %71

71:                                               ; preds = %68, %63
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @DRV_STATUS_DRV_INFO_REQ, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %78 = call i32 @bxe_handle_drv_info_req(%struct.bxe_softc* %77)
  br label %79

79:                                               ; preds = %76, %71
  %80 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %81 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %79
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @DRV_STATUS_PMF, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %92 = call i32 @bxe_pmf_update(%struct.bxe_softc* %91)
  br label %93

93:                                               ; preds = %90, %85, %79
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* @DRV_STATUS_EEE_NEGOTIATION_RESULTS, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %100 = call i32 @bxe_handle_eee_event(%struct.bxe_softc* %99)
  br label %101

101:                                              ; preds = %98, %93
  %102 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %103 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @ELINK_PERIODIC_FLAGS_LINK_EVENT, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %128

109:                                              ; preds = %101
  %110 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %111 = call i32 @bxe_acquire_phy_lock(%struct.bxe_softc* %110)
  %112 = load i32, i32* @ELINK_PERIODIC_FLAGS_LINK_EVENT, align 4
  %113 = xor i32 %112, -1
  %114 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %115 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = and i32 %117, %113
  store i32 %118, i32* %116, align 4
  %119 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %120 = call i32 @bxe_release_phy_lock(%struct.bxe_softc* %119)
  %121 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %122 = call i64 @IS_MF(%struct.bxe_softc* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %109
  br label %125

125:                                              ; preds = %124, %109
  %126 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %127 = call i32 @bxe_link_report(%struct.bxe_softc* %126)
  br label %128

128:                                              ; preds = %125, %101
  %129 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %130 = call i32 @bxe_link_status_update(%struct.bxe_softc* %129)
  br label %192

131:                                              ; preds = %13
  %132 = load i32, i32* %4, align 4
  %133 = load i32, i32* @BXE_MC_ASSERT_BITS, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %164

136:                                              ; preds = %131
  %137 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %138 = call i32 (%struct.bxe_softc*, i8*, ...) @BLOGE(%struct.bxe_softc* %137, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %139 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %140 = call i32 @bxe_mc_assert(%struct.bxe_softc* %139)
  %141 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %142 = load i64, i64* @MISC_REG_AEU_GENERAL_ATTN_10, align 8
  %143 = call i32 @REG_WR(%struct.bxe_softc* %141, i64 %142, i32 0)
  %144 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %145 = load i64, i64* @MISC_REG_AEU_GENERAL_ATTN_9, align 8
  %146 = call i32 @REG_WR(%struct.bxe_softc* %144, i64 %145, i32 0)
  %147 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %148 = load i64, i64* @MISC_REG_AEU_GENERAL_ATTN_8, align 8
  %149 = call i32 @REG_WR(%struct.bxe_softc* %147, i64 %148, i32 0)
  %150 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %151 = load i64, i64* @MISC_REG_AEU_GENERAL_ATTN_7, align 8
  %152 = call i32 @REG_WR(%struct.bxe_softc* %150, i64 %151, i32 0)
  %153 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %154 = call i32 @bxe_int_disable(%struct.bxe_softc* %153)
  %155 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %156 = load i32, i32* @BXE_ERR_MC_ASSERT, align 4
  %157 = call i32 @BXE_SET_ERROR_BIT(%struct.bxe_softc* %155, i32 %156)
  %158 = load i32, i32* @taskqueue_thread, align 4
  %159 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %160 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %159, i32 0, i32 0
  %161 = load i32, i32* @hz, align 4
  %162 = sdiv i32 %161, 10
  %163 = call i32 @taskqueue_enqueue_timeout(i32 %158, i32* %160, i32 %162)
  br label %191

164:                                              ; preds = %131
  %165 = load i32, i32* %4, align 4
  %166 = load i32, i32* @BXE_MCP_ASSERT, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %186

169:                                              ; preds = %164
  %170 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %171 = call i32 (%struct.bxe_softc*, i8*, ...) @BLOGE(%struct.bxe_softc* %170, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %172 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %173 = load i64, i64* @MISC_REG_AEU_GENERAL_ATTN_11, align 8
  %174 = call i32 @REG_WR(%struct.bxe_softc* %172, i64 %173, i32 0)
  %175 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %176 = load i32, i32* @BXE_ERR_MCP_ASSERT, align 4
  %177 = call i32 @BXE_SET_ERROR_BIT(%struct.bxe_softc* %175, i32 %176)
  %178 = load i32, i32* @taskqueue_thread, align 4
  %179 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %180 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %179, i32 0, i32 0
  %181 = load i32, i32* @hz, align 4
  %182 = sdiv i32 %181, 10
  %183 = call i32 @taskqueue_enqueue_timeout(i32 %178, i32* %180, i32 %182)
  %184 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %185 = call i32 @bxe_int_disable(%struct.bxe_softc* %184)
  br label %190

186:                                              ; preds = %164
  %187 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %188 = load i32, i32* %4, align 4
  %189 = call i32 (%struct.bxe_softc*, i8*, ...) @BLOGE(%struct.bxe_softc* %187, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %188)
  br label %190

190:                                              ; preds = %186, %169
  br label %191

191:                                              ; preds = %190, %136
  br label %192

192:                                              ; preds = %191, %128
  br label %193

193:                                              ; preds = %192, %2
  %194 = load i32, i32* %4, align 4
  %195 = load i32, i32* @EVEREST_LATCHED_ATTN_IN_USE_MASK, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %243

198:                                              ; preds = %193
  %199 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %200 = load i32, i32* %4, align 4
  %201 = call i32 (%struct.bxe_softc*, i8*, ...) @BLOGE(%struct.bxe_softc* %199, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %200)
  %202 = load i32, i32* %4, align 4
  %203 = load i32, i32* @BXE_GRC_TIMEOUT, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %220

206:                                              ; preds = %198
  %207 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %208 = call i64 @CHIP_IS_E1(%struct.bxe_softc* %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %206
  br label %215

211:                                              ; preds = %206
  %212 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %213 = load i32, i32* @MISC_REG_GRC_TIMEOUT_ATTN, align 4
  %214 = call i32 @REG_RD(%struct.bxe_softc* %212, i32 %213)
  br label %215

215:                                              ; preds = %211, %210
  %216 = phi i32 [ 0, %210 ], [ %214, %211 ]
  store i32 %216, i32* %6, align 4
  %217 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %218 = load i32, i32* %6, align 4
  %219 = call i32 (%struct.bxe_softc*, i8*, ...) @BLOGE(%struct.bxe_softc* %217, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %218)
  br label %220

220:                                              ; preds = %215, %198
  %221 = load i32, i32* %4, align 4
  %222 = load i32, i32* @BXE_GRC_RSV, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %239

225:                                              ; preds = %220
  %226 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %227 = call i64 @CHIP_IS_E1(%struct.bxe_softc* %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %225
  br label %234

230:                                              ; preds = %225
  %231 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %232 = load i32, i32* @MISC_REG_GRC_RSV_ATTN, align 4
  %233 = call i32 @REG_RD(%struct.bxe_softc* %231, i32 %232)
  br label %234

234:                                              ; preds = %230, %229
  %235 = phi i32 [ 0, %229 ], [ %233, %230 ]
  store i32 %235, i32* %6, align 4
  %236 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %237 = load i32, i32* %6, align 4
  %238 = call i32 (%struct.bxe_softc*, i8*, ...) @BLOGE(%struct.bxe_softc* %236, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %237)
  br label %239

239:                                              ; preds = %234, %220
  %240 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %241 = load i64, i64* @MISC_REG_AEU_CLR_LATCH_SIGNAL, align 8
  %242 = call i32 @REG_WR(%struct.bxe_softc* %240, i64 %241, i32 2047)
  br label %243

243:                                              ; preds = %239, %193
  ret void
}

declare dso_local i32 @SC_FUNC(%struct.bxe_softc*) #1

declare dso_local i32 @BXE_PMF_LINK_ASSERT(%struct.bxe_softc*) #1

declare dso_local i32 @REG_WR(%struct.bxe_softc*, i64, i32) #1

declare dso_local i32 @bxe_read_mf_cfg(%struct.bxe_softc*) #1

declare dso_local i32 @MFCFG_RD(%struct.bxe_softc*, i32) #1

declare dso_local i64 @SC_ABS_FUNC(%struct.bxe_softc*) #1

declare dso_local i64 @SC_VN(%struct.bxe_softc*) #1

declare dso_local i32 @SHMEM_RD(%struct.bxe_softc*, i32) #1

declare dso_local i64 @SC_FW_MB_IDX(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_dcc_event(%struct.bxe_softc*, i32) #1

declare dso_local i32 @bxe_set_mf_bw(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_handle_drv_info_req(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_pmf_update(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_handle_eee_event(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_acquire_phy_lock(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_release_phy_lock(%struct.bxe_softc*) #1

declare dso_local i64 @IS_MF(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_link_report(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_link_status_update(%struct.bxe_softc*) #1

declare dso_local i32 @BLOGE(%struct.bxe_softc*, i8*, ...) #1

declare dso_local i32 @bxe_mc_assert(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_int_disable(%struct.bxe_softc*) #1

declare dso_local i32 @BXE_SET_ERROR_BIT(%struct.bxe_softc*, i32) #1

declare dso_local i32 @taskqueue_enqueue_timeout(i32, i32*, i32) #1

declare dso_local i64 @CHIP_IS_E1(%struct.bxe_softc*) #1

declare dso_local i32 @REG_RD(%struct.bxe_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
