; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_init_hw_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_init_hw_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }

@PHASE_PORT1 = common dso_local global i32 0, align 4
@PHASE_PORT0 = common dso_local global i32 0, align 4
@DBG_LOAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"starting port init for port %d\0A\00", align 1
@NIG_REG_MASK_INTERRUPT_PORT0 = common dso_local global i32 0, align 4
@BLOCK_MISC = common dso_local global i32 0, align 4
@BLOCK_PXP = common dso_local global i32 0, align 4
@BLOCK_PXP2 = common dso_local global i32 0, align 4
@PGLUE_B_REG_INTERNAL_PFID_ENABLE_MASTER = common dso_local global i32 0, align 4
@BLOCK_ATC = common dso_local global i32 0, align 4
@BLOCK_DMAE = common dso_local global i32 0, align 4
@BLOCK_PGLUE_B = common dso_local global i32 0, align 4
@BLOCK_QM = common dso_local global i32 0, align 4
@BLOCK_TCM = common dso_local global i32 0, align 4
@BLOCK_UCM = common dso_local global i32 0, align 4
@BLOCK_CCM = common dso_local global i32 0, align 4
@BLOCK_XCM = common dso_local global i32 0, align 4
@INITOP_SET = common dso_local global i32 0, align 4
@BLOCK_TM = common dso_local global i32 0, align 4
@TM_REG_LIN0_SCAN_TIME = common dso_local global i32 0, align 4
@TM_REG_LIN0_MAX_ACTIVE_CID = common dso_local global i32 0, align 4
@BLOCK_DORQ = common dso_local global i32 0, align 4
@BLOCK_BRB1 = common dso_local global i32 0, align 4
@BRB1_REG_PAUSE_LOW_THRESHOLD_0 = common dso_local global i32 0, align 4
@BRB1_REG_PAUSE_HIGH_THRESHOLD_0 = common dso_local global i32 0, align 4
@BRB1_REG_MAC_GUARANTIED_1 = common dso_local global i32 0, align 4
@BRB1_REG_MAC_GUARANTIED_0 = common dso_local global i32 0, align 4
@BLOCK_PRS = common dso_local global i32 0, align 4
@PRS_REG_HDRS_AFTER_BASIC_PORT_1 = common dso_local global i32 0, align 4
@PRS_REG_HDRS_AFTER_BASIC_PORT_0 = common dso_local global i32 0, align 4
@PRS_REG_HDRS_AFTER_TAG_0_PORT_1 = common dso_local global i32 0, align 4
@PRS_REG_HDRS_AFTER_TAG_0_PORT_0 = common dso_local global i32 0, align 4
@PRS_REG_MUST_HAVE_HDRS_PORT_1 = common dso_local global i32 0, align 4
@PRS_REG_MUST_HAVE_HDRS_PORT_0 = common dso_local global i32 0, align 4
@BLOCK_TSDM = common dso_local global i32 0, align 4
@BLOCK_CSDM = common dso_local global i32 0, align 4
@BLOCK_USDM = common dso_local global i32 0, align 4
@BLOCK_XSDM = common dso_local global i32 0, align 4
@BLOCK_TSEM = common dso_local global i32 0, align 4
@BLOCK_USEM = common dso_local global i32 0, align 4
@BLOCK_CSEM = common dso_local global i32 0, align 4
@BLOCK_XSEM = common dso_local global i32 0, align 4
@BLOCK_UPB = common dso_local global i32 0, align 4
@BLOCK_XPB = common dso_local global i32 0, align 4
@BLOCK_PBF = common dso_local global i32 0, align 4
@PBF_REG_P0_PAUSE_ENABLE = common dso_local global i32 0, align 4
@PBF_REG_P0_ARB_THRSH = common dso_local global i32 0, align 4
@PBF_REG_P0_INIT_CRD = common dso_local global i32 0, align 4
@PBF_REG_INIT_P0 = common dso_local global i32 0, align 4
@BLOCK_SRC = common dso_local global i32 0, align 4
@BLOCK_CDU = common dso_local global i32 0, align 4
@BLOCK_CFC = common dso_local global i32 0, align 4
@HC_REG_LEADING_EDGE_0 = common dso_local global i32 0, align 4
@HC_REG_TRAILING_EDGE_0 = common dso_local global i32 0, align 4
@BLOCK_HC = common dso_local global i32 0, align 4
@BLOCK_IGU = common dso_local global i32 0, align 4
@BLOCK_MISC_AEU = common dso_local global i32 0, align 4
@MISC_REG_AEU_MASK_ATTN_FUNC_0 = common dso_local global i32 0, align 4
@BLOCK_NIG = common dso_local global i32 0, align 4
@NIG_REG_P1_HDRS_AFTER_BASIC = common dso_local global i32 0, align 4
@NIG_REG_P0_HDRS_AFTER_BASIC = common dso_local global i32 0, align 4
@NIG_REG_LLH1_MF_MODE = common dso_local global i32 0, align 4
@NIG_REG_LLH_MF_MODE = common dso_local global i32 0, align 4
@NIG_REG_XGXS_SERDES0_MODE_SEL = common dso_local global i32 0, align 4
@NIG_REG_LLH0_BRB1_DRV_MASK_MF = common dso_local global i32 0, align 4
@NIG_REG_LLH1_CLS_TYPE = common dso_local global i32 0, align 4
@NIG_REG_LLH0_CLS_TYPE = common dso_local global i32 0, align 4
@NIG_REG_LLFC_ENABLE_0 = common dso_local global i32 0, align 4
@NIG_REG_LLFC_OUT_EN_0 = common dso_local global i32 0, align 4
@NIG_REG_PAUSE_ENABLE_0 = common dso_local global i32 0, align 4
@MISC_REG_SPIO_EVENT_EN = common dso_local global i32 0, align 4
@MISC_SPIO_SPIO5 = common dso_local global i32 0, align 4
@MISC_REG_AEU_ENABLE1_FUNC_1_OUT_0 = common dso_local global i32 0, align 4
@MISC_REG_AEU_ENABLE1_FUNC_0_OUT_0 = common dso_local global i32 0, align 4
@AEU_INPUTS_ATTN_BITS_SPIO5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*)* @bxe_init_hw_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_init_hw_port(%struct.bxe_softc* %0) #0 {
  %2 = alloca %struct.bxe_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %2, align 8
  %9 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %10 = call i32 @SC_PORT(%struct.bxe_softc* %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @PHASE_PORT1, align 4
  br label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @PHASE_PORT0, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  store i32 %18, i32* %4, align 4
  %19 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %20 = load i32, i32* @DBG_LOAD, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @BLOGD(%struct.bxe_softc* %19, i32 %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %24 = load i32, i32* @NIG_REG_MASK_INTERRUPT_PORT0, align 4
  %25 = load i32, i32* %3, align 4
  %26 = mul nsw i32 %25, 4
  %27 = add nsw i32 %24, %26
  %28 = call i32 @REG_WR(%struct.bxe_softc* %23, i32 %27, i32 0)
  %29 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %30 = load i32, i32* @BLOCK_MISC, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @ecore_init_block(%struct.bxe_softc* %29, i32 %30, i32 %31)
  %33 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %34 = load i32, i32* @BLOCK_PXP, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @ecore_init_block(%struct.bxe_softc* %33, i32 %34, i32 %35)
  %37 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %38 = load i32, i32* @BLOCK_PXP2, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @ecore_init_block(%struct.bxe_softc* %37, i32 %38, i32 %39)
  %41 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %42 = call i64 @CHIP_IS_E1x(%struct.bxe_softc* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %17
  %45 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %46 = load i32, i32* @PGLUE_B_REG_INTERNAL_PFID_ENABLE_MASTER, align 4
  %47 = call i32 @REG_WR(%struct.bxe_softc* %45, i32 %46, i32 1)
  br label %48

48:                                               ; preds = %44, %17
  %49 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %50 = load i32, i32* @BLOCK_ATC, align 4
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @ecore_init_block(%struct.bxe_softc* %49, i32 %50, i32 %51)
  %53 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %54 = load i32, i32* @BLOCK_DMAE, align 4
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @ecore_init_block(%struct.bxe_softc* %53, i32 %54, i32 %55)
  %57 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %58 = load i32, i32* @BLOCK_PGLUE_B, align 4
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @ecore_init_block(%struct.bxe_softc* %57, i32 %58, i32 %59)
  %61 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %62 = load i32, i32* @BLOCK_QM, align 4
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @ecore_init_block(%struct.bxe_softc* %61, i32 %62, i32 %63)
  %65 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %66 = load i32, i32* @BLOCK_TCM, align 4
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @ecore_init_block(%struct.bxe_softc* %65, i32 %66, i32 %67)
  %69 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %70 = load i32, i32* @BLOCK_UCM, align 4
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @ecore_init_block(%struct.bxe_softc* %69, i32 %70, i32 %71)
  %73 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %74 = load i32, i32* @BLOCK_CCM, align 4
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @ecore_init_block(%struct.bxe_softc* %73, i32 %74, i32 %75)
  %77 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %78 = load i32, i32* @BLOCK_XCM, align 4
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @ecore_init_block(%struct.bxe_softc* %77, i32 %78, i32 %79)
  %81 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %82 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %83 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @INITOP_SET, align 4
  %86 = call i32 @ecore_qm_init_cid_count(%struct.bxe_softc* %81, i32 %84, i32 %85)
  %87 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %88 = call i64 @CNIC_SUPPORT(%struct.bxe_softc* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %107

90:                                               ; preds = %48
  %91 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %92 = load i32, i32* @BLOCK_TM, align 4
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @ecore_init_block(%struct.bxe_softc* %91, i32 %92, i32 %93)
  %95 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %96 = load i32, i32* @TM_REG_LIN0_SCAN_TIME, align 4
  %97 = load i32, i32* %3, align 4
  %98 = mul nsw i32 %97, 4
  %99 = add nsw i32 %96, %98
  %100 = call i32 @REG_WR(%struct.bxe_softc* %95, i32 %99, i32 20)
  %101 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %102 = load i32, i32* @TM_REG_LIN0_MAX_ACTIVE_CID, align 4
  %103 = load i32, i32* %3, align 4
  %104 = mul nsw i32 %103, 4
  %105 = add nsw i32 %102, %104
  %106 = call i32 @REG_WR(%struct.bxe_softc* %101, i32 %105, i32 31)
  br label %107

107:                                              ; preds = %90, %48
  %108 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %109 = load i32, i32* @BLOCK_DORQ, align 4
  %110 = load i32, i32* %4, align 4
  %111 = call i32 @ecore_init_block(%struct.bxe_softc* %108, i32 %109, i32 %110)
  %112 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %113 = load i32, i32* @BLOCK_BRB1, align 4
  %114 = load i32, i32* %4, align 4
  %115 = call i32 @ecore_init_block(%struct.bxe_softc* %112, i32 %113, i32 %114)
  %116 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %117 = call i64 @CHIP_IS_E1(%struct.bxe_softc* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %107
  %120 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %121 = call i64 @CHIP_IS_E1H(%struct.bxe_softc* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %181

123:                                              ; preds = %119, %107
  %124 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %125 = call i32 @IS_MF(%struct.bxe_softc* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %123
  %128 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %129 = call i64 @BXE_ONE_PORT(%struct.bxe_softc* %128)
  %130 = icmp ne i64 %129, 0
  %131 = zext i1 %130 to i64
  %132 = select i1 %130, i32 160, i32 246
  store i32 %132, i32* %5, align 4
  br label %164

133:                                              ; preds = %123
  %134 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %135 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp sgt i32 %136, 4096
  br i1 %137, label %138, label %157

138:                                              ; preds = %133
  %139 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %140 = call i64 @BXE_ONE_PORT(%struct.bxe_softc* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %138
  store i32 160, i32* %5, align 4
  br label %156

143:                                              ; preds = %138
  %144 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %145 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  store i32 %146, i32* %7, align 4
  %147 = load i32, i32* %7, align 4
  %148 = sdiv i32 %147, 64
  %149 = add nsw i32 96, %148
  %150 = load i32, i32* %7, align 4
  %151 = srem i32 %150, 64
  %152 = icmp ne i32 %151, 0
  %153 = zext i1 %152 to i64
  %154 = select i1 %152, i32 1, i32 0
  %155 = add nsw i32 %149, %154
  store i32 %155, i32* %5, align 4
  br label %156

156:                                              ; preds = %143, %142
  br label %163

157:                                              ; preds = %133
  %158 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %159 = call i64 @BXE_ONE_PORT(%struct.bxe_softc* %158)
  %160 = icmp ne i64 %159, 0
  %161 = zext i1 %160 to i64
  %162 = select i1 %160, i32 80, i32 160
  store i32 %162, i32* %5, align 4
  br label %163

163:                                              ; preds = %157, %156
  br label %164

164:                                              ; preds = %163, %127
  %165 = load i32, i32* %5, align 4
  %166 = add nsw i32 %165, 56
  store i32 %166, i32* %6, align 4
  %167 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %168 = load i32, i32* @BRB1_REG_PAUSE_LOW_THRESHOLD_0, align 4
  %169 = load i32, i32* %3, align 4
  %170 = mul nsw i32 %169, 4
  %171 = add nsw i32 %168, %170
  %172 = load i32, i32* %5, align 4
  %173 = call i32 @REG_WR(%struct.bxe_softc* %167, i32 %171, i32 %172)
  %174 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %175 = load i32, i32* @BRB1_REG_PAUSE_HIGH_THRESHOLD_0, align 4
  %176 = load i32, i32* %3, align 4
  %177 = mul nsw i32 %176, 4
  %178 = add nsw i32 %175, %177
  %179 = load i32, i32* %6, align 4
  %180 = call i32 @REG_WR(%struct.bxe_softc* %174, i32 %178, i32 %179)
  br label %181

181:                                              ; preds = %164, %119
  %182 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %183 = call i64 @CHIP_IS_MODE_4_PORT(%struct.bxe_softc* %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %197

185:                                              ; preds = %181
  %186 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %187 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %188 = call i32 @SC_PORT(%struct.bxe_softc* %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %185
  %191 = load i32, i32* @BRB1_REG_MAC_GUARANTIED_1, align 4
  br label %194

192:                                              ; preds = %185
  %193 = load i32, i32* @BRB1_REG_MAC_GUARANTIED_0, align 4
  br label %194

194:                                              ; preds = %192, %190
  %195 = phi i32 [ %191, %190 ], [ %193, %192 ]
  %196 = call i32 @REG_WR(%struct.bxe_softc* %186, i32 %195, i32 40)
  br label %197

197:                                              ; preds = %194, %181
  %198 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %199 = load i32, i32* @BLOCK_PRS, align 4
  %200 = load i32, i32* %4, align 4
  %201 = call i32 @ecore_init_block(%struct.bxe_softc* %198, i32 %199, i32 %200)
  %202 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %203 = call i64 @CHIP_IS_E3B0(%struct.bxe_softc* %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %264

205:                                              ; preds = %197
  %206 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %207 = call i64 @IS_MF_AFEX(%struct.bxe_softc* %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %243

209:                                              ; preds = %205
  %210 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %211 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %212 = call i32 @SC_PORT(%struct.bxe_softc* %211)
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %216

214:                                              ; preds = %209
  %215 = load i32, i32* @PRS_REG_HDRS_AFTER_BASIC_PORT_1, align 4
  br label %218

216:                                              ; preds = %209
  %217 = load i32, i32* @PRS_REG_HDRS_AFTER_BASIC_PORT_0, align 4
  br label %218

218:                                              ; preds = %216, %214
  %219 = phi i32 [ %215, %214 ], [ %217, %216 ]
  %220 = call i32 @REG_WR(%struct.bxe_softc* %210, i32 %219, i32 14)
  %221 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %222 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %223 = call i32 @SC_PORT(%struct.bxe_softc* %222)
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %227

225:                                              ; preds = %218
  %226 = load i32, i32* @PRS_REG_HDRS_AFTER_TAG_0_PORT_1, align 4
  br label %229

227:                                              ; preds = %218
  %228 = load i32, i32* @PRS_REG_HDRS_AFTER_TAG_0_PORT_0, align 4
  br label %229

229:                                              ; preds = %227, %225
  %230 = phi i32 [ %226, %225 ], [ %228, %227 ]
  %231 = call i32 @REG_WR(%struct.bxe_softc* %221, i32 %230, i32 6)
  %232 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %233 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %234 = call i32 @SC_PORT(%struct.bxe_softc* %233)
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %238

236:                                              ; preds = %229
  %237 = load i32, i32* @PRS_REG_MUST_HAVE_HDRS_PORT_1, align 4
  br label %240

238:                                              ; preds = %229
  %239 = load i32, i32* @PRS_REG_MUST_HAVE_HDRS_PORT_0, align 4
  br label %240

240:                                              ; preds = %238, %236
  %241 = phi i32 [ %237, %236 ], [ %239, %238 ]
  %242 = call i32 @REG_WR(%struct.bxe_softc* %232, i32 %241, i32 10)
  br label %263

243:                                              ; preds = %205
  %244 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %245 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %246 = call i32 @SC_PORT(%struct.bxe_softc* %245)
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %250

248:                                              ; preds = %243
  %249 = load i32, i32* @PRS_REG_HDRS_AFTER_BASIC_PORT_1, align 4
  br label %252

250:                                              ; preds = %243
  %251 = load i32, i32* @PRS_REG_HDRS_AFTER_BASIC_PORT_0, align 4
  br label %252

252:                                              ; preds = %250, %248
  %253 = phi i32 [ %249, %248 ], [ %251, %250 ]
  %254 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %255 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %254, i32 0, i32 1
  %256 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %256, i32 0, i32 1
  %258 = load i64, i64* %257, align 8
  %259 = icmp ne i64 %258, 0
  %260 = zext i1 %259 to i64
  %261 = select i1 %259, i32 7, i32 6
  %262 = call i32 @REG_WR(%struct.bxe_softc* %244, i32 %253, i32 %261)
  br label %263

263:                                              ; preds = %252, %240
  br label %264

264:                                              ; preds = %263, %197
  %265 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %266 = load i32, i32* @BLOCK_TSDM, align 4
  %267 = load i32, i32* %4, align 4
  %268 = call i32 @ecore_init_block(%struct.bxe_softc* %265, i32 %266, i32 %267)
  %269 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %270 = load i32, i32* @BLOCK_CSDM, align 4
  %271 = load i32, i32* %4, align 4
  %272 = call i32 @ecore_init_block(%struct.bxe_softc* %269, i32 %270, i32 %271)
  %273 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %274 = load i32, i32* @BLOCK_USDM, align 4
  %275 = load i32, i32* %4, align 4
  %276 = call i32 @ecore_init_block(%struct.bxe_softc* %273, i32 %274, i32 %275)
  %277 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %278 = load i32, i32* @BLOCK_XSDM, align 4
  %279 = load i32, i32* %4, align 4
  %280 = call i32 @ecore_init_block(%struct.bxe_softc* %277, i32 %278, i32 %279)
  %281 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %282 = load i32, i32* @BLOCK_TSEM, align 4
  %283 = load i32, i32* %4, align 4
  %284 = call i32 @ecore_init_block(%struct.bxe_softc* %281, i32 %282, i32 %283)
  %285 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %286 = load i32, i32* @BLOCK_USEM, align 4
  %287 = load i32, i32* %4, align 4
  %288 = call i32 @ecore_init_block(%struct.bxe_softc* %285, i32 %286, i32 %287)
  %289 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %290 = load i32, i32* @BLOCK_CSEM, align 4
  %291 = load i32, i32* %4, align 4
  %292 = call i32 @ecore_init_block(%struct.bxe_softc* %289, i32 %290, i32 %291)
  %293 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %294 = load i32, i32* @BLOCK_XSEM, align 4
  %295 = load i32, i32* %4, align 4
  %296 = call i32 @ecore_init_block(%struct.bxe_softc* %293, i32 %294, i32 %295)
  %297 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %298 = load i32, i32* @BLOCK_UPB, align 4
  %299 = load i32, i32* %4, align 4
  %300 = call i32 @ecore_init_block(%struct.bxe_softc* %297, i32 %298, i32 %299)
  %301 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %302 = load i32, i32* @BLOCK_XPB, align 4
  %303 = load i32, i32* %4, align 4
  %304 = call i32 @ecore_init_block(%struct.bxe_softc* %301, i32 %302, i32 %303)
  %305 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %306 = load i32, i32* @BLOCK_PBF, align 4
  %307 = load i32, i32* %4, align 4
  %308 = call i32 @ecore_init_block(%struct.bxe_softc* %305, i32 %306, i32 %307)
  %309 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %310 = call i64 @CHIP_IS_E1x(%struct.bxe_softc* %309)
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %344

312:                                              ; preds = %264
  %313 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %314 = load i32, i32* @PBF_REG_P0_PAUSE_ENABLE, align 4
  %315 = load i32, i32* %3, align 4
  %316 = mul nsw i32 %315, 4
  %317 = add nsw i32 %314, %316
  %318 = call i32 @REG_WR(%struct.bxe_softc* %313, i32 %317, i32 0)
  %319 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %320 = load i32, i32* @PBF_REG_P0_ARB_THRSH, align 4
  %321 = load i32, i32* %3, align 4
  %322 = mul nsw i32 %321, 4
  %323 = add nsw i32 %320, %322
  %324 = call i32 @REG_WR(%struct.bxe_softc* %319, i32 %323, i32 565)
  %325 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %326 = load i32, i32* @PBF_REG_P0_INIT_CRD, align 4
  %327 = load i32, i32* %3, align 4
  %328 = mul nsw i32 %327, 4
  %329 = add nsw i32 %326, %328
  %330 = call i32 @REG_WR(%struct.bxe_softc* %325, i32 %329, i32 1096)
  %331 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %332 = load i32, i32* @PBF_REG_INIT_P0, align 4
  %333 = load i32, i32* %3, align 4
  %334 = mul nsw i32 %333, 4
  %335 = add nsw i32 %332, %334
  %336 = call i32 @REG_WR(%struct.bxe_softc* %331, i32 %335, i32 1)
  %337 = call i32 @DELAY(i32 50)
  %338 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %339 = load i32, i32* @PBF_REG_INIT_P0, align 4
  %340 = load i32, i32* %3, align 4
  %341 = mul nsw i32 %340, 4
  %342 = add nsw i32 %339, %341
  %343 = call i32 @REG_WR(%struct.bxe_softc* %338, i32 %342, i32 0)
  br label %344

344:                                              ; preds = %312, %264
  %345 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %346 = call i64 @CNIC_SUPPORT(%struct.bxe_softc* %345)
  %347 = icmp ne i64 %346, 0
  br i1 %347, label %348, label %353

348:                                              ; preds = %344
  %349 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %350 = load i32, i32* @BLOCK_SRC, align 4
  %351 = load i32, i32* %4, align 4
  %352 = call i32 @ecore_init_block(%struct.bxe_softc* %349, i32 %350, i32 %351)
  br label %353

353:                                              ; preds = %348, %344
  %354 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %355 = load i32, i32* @BLOCK_CDU, align 4
  %356 = load i32, i32* %4, align 4
  %357 = call i32 @ecore_init_block(%struct.bxe_softc* %354, i32 %355, i32 %356)
  %358 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %359 = load i32, i32* @BLOCK_CFC, align 4
  %360 = load i32, i32* %4, align 4
  %361 = call i32 @ecore_init_block(%struct.bxe_softc* %358, i32 %359, i32 %360)
  %362 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %363 = call i64 @CHIP_IS_E1(%struct.bxe_softc* %362)
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %365, label %378

365:                                              ; preds = %353
  %366 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %367 = load i32, i32* @HC_REG_LEADING_EDGE_0, align 4
  %368 = load i32, i32* %3, align 4
  %369 = mul nsw i32 %368, 8
  %370 = add nsw i32 %367, %369
  %371 = call i32 @REG_WR(%struct.bxe_softc* %366, i32 %370, i32 0)
  %372 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %373 = load i32, i32* @HC_REG_TRAILING_EDGE_0, align 4
  %374 = load i32, i32* %3, align 4
  %375 = mul nsw i32 %374, 8
  %376 = add nsw i32 %373, %375
  %377 = call i32 @REG_WR(%struct.bxe_softc* %372, i32 %376, i32 0)
  br label %378

378:                                              ; preds = %365, %353
  %379 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %380 = load i32, i32* @BLOCK_HC, align 4
  %381 = load i32, i32* %4, align 4
  %382 = call i32 @ecore_init_block(%struct.bxe_softc* %379, i32 %380, i32 %381)
  %383 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %384 = load i32, i32* @BLOCK_IGU, align 4
  %385 = load i32, i32* %4, align 4
  %386 = call i32 @ecore_init_block(%struct.bxe_softc* %383, i32 %384, i32 %385)
  %387 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %388 = load i32, i32* @BLOCK_MISC_AEU, align 4
  %389 = load i32, i32* %4, align 4
  %390 = call i32 @ecore_init_block(%struct.bxe_softc* %387, i32 %388, i32 %389)
  %391 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %392 = call i32 @IS_MF(%struct.bxe_softc* %391)
  %393 = icmp ne i32 %392, 0
  %394 = zext i1 %393 to i64
  %395 = select i1 %393, i32 247, i32 7
  store i32 %395, i32* %7, align 4
  %396 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %397 = call i64 @CHIP_IS_E1(%struct.bxe_softc* %396)
  %398 = icmp ne i64 %397, 0
  %399 = zext i1 %398 to i64
  %400 = select i1 %398, i32 0, i32 16
  %401 = load i32, i32* %7, align 4
  %402 = or i32 %401, %400
  store i32 %402, i32* %7, align 4
  %403 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %404 = load i32, i32* @MISC_REG_AEU_MASK_ATTN_FUNC_0, align 4
  %405 = load i32, i32* %3, align 4
  %406 = mul nsw i32 %405, 4
  %407 = add nsw i32 %404, %406
  %408 = load i32, i32* %7, align 4
  %409 = call i32 @REG_WR(%struct.bxe_softc* %403, i32 %407, i32 %408)
  %410 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %411 = load i32, i32* @BLOCK_NIG, align 4
  %412 = load i32, i32* %4, align 4
  %413 = call i32 @ecore_init_block(%struct.bxe_softc* %410, i32 %411, i32 %412)
  %414 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %415 = call i64 @CHIP_IS_E1x(%struct.bxe_softc* %414)
  %416 = icmp ne i64 %415, 0
  br i1 %416, label %469, label %417

417:                                              ; preds = %378
  %418 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %419 = call i64 @IS_MF_AFEX(%struct.bxe_softc* %418)
  %420 = icmp ne i64 %419, 0
  br i1 %420, label %421, label %433

421:                                              ; preds = %417
  %422 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %423 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %424 = call i32 @SC_PORT(%struct.bxe_softc* %423)
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %426, label %428

426:                                              ; preds = %421
  %427 = load i32, i32* @NIG_REG_P1_HDRS_AFTER_BASIC, align 4
  br label %430

428:                                              ; preds = %421
  %429 = load i32, i32* @NIG_REG_P0_HDRS_AFTER_BASIC, align 4
  br label %430

430:                                              ; preds = %428, %426
  %431 = phi i32 [ %427, %426 ], [ %429, %428 ]
  %432 = call i32 @REG_WR(%struct.bxe_softc* %422, i32 %431, i32 14)
  br label %450

433:                                              ; preds = %417
  %434 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %435 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %436 = call i32 @SC_PORT(%struct.bxe_softc* %435)
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %438, label %440

438:                                              ; preds = %433
  %439 = load i32, i32* @NIG_REG_P1_HDRS_AFTER_BASIC, align 4
  br label %442

440:                                              ; preds = %433
  %441 = load i32, i32* @NIG_REG_P0_HDRS_AFTER_BASIC, align 4
  br label %442

442:                                              ; preds = %440, %438
  %443 = phi i32 [ %439, %438 ], [ %441, %440 ]
  %444 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %445 = call i64 @IS_MF_SD(%struct.bxe_softc* %444)
  %446 = icmp ne i64 %445, 0
  %447 = zext i1 %446 to i64
  %448 = select i1 %446, i32 7, i32 6
  %449 = call i32 @REG_WR(%struct.bxe_softc* %434, i32 %443, i32 %448)
  br label %450

450:                                              ; preds = %442, %430
  %451 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %452 = call i64 @CHIP_IS_E3(%struct.bxe_softc* %451)
  %453 = icmp ne i64 %452, 0
  br i1 %453, label %454, label %468

454:                                              ; preds = %450
  %455 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %456 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %457 = call i32 @SC_PORT(%struct.bxe_softc* %456)
  %458 = icmp ne i32 %457, 0
  br i1 %458, label %459, label %461

459:                                              ; preds = %454
  %460 = load i32, i32* @NIG_REG_LLH1_MF_MODE, align 4
  br label %463

461:                                              ; preds = %454
  %462 = load i32, i32* @NIG_REG_LLH_MF_MODE, align 4
  br label %463

463:                                              ; preds = %461, %459
  %464 = phi i32 [ %460, %459 ], [ %462, %461 ]
  %465 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %466 = call i32 @IS_MF(%struct.bxe_softc* %465)
  %467 = call i32 @REG_WR(%struct.bxe_softc* %455, i32 %464, i32 %466)
  br label %468

468:                                              ; preds = %463, %450
  br label %469

469:                                              ; preds = %468, %378
  %470 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %471 = call i64 @CHIP_IS_E3(%struct.bxe_softc* %470)
  %472 = icmp ne i64 %471, 0
  br i1 %472, label %480, label %473

473:                                              ; preds = %469
  %474 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %475 = load i32, i32* @NIG_REG_XGXS_SERDES0_MODE_SEL, align 4
  %476 = load i32, i32* %3, align 4
  %477 = mul nsw i32 %476, 4
  %478 = add nsw i32 %475, %477
  %479 = call i32 @REG_WR(%struct.bxe_softc* %474, i32 %478, i32 1)
  br label %480

480:                                              ; preds = %473, %469
  %481 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %482 = call i64 @CHIP_IS_E1(%struct.bxe_softc* %481)
  %483 = icmp ne i64 %482, 0
  br i1 %483, label %539, label %484

484:                                              ; preds = %480
  %485 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %486 = load i32, i32* @NIG_REG_LLH0_BRB1_DRV_MASK_MF, align 4
  %487 = load i32, i32* %3, align 4
  %488 = mul nsw i32 %487, 4
  %489 = add nsw i32 %486, %488
  %490 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %491 = call i64 @IS_MF_SD(%struct.bxe_softc* %490)
  %492 = icmp ne i64 %491, 0
  %493 = zext i1 %492 to i64
  %494 = select i1 %492, i32 1, i32 2
  %495 = call i32 @REG_WR(%struct.bxe_softc* %485, i32 %489, i32 %494)
  %496 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %497 = call i64 @CHIP_IS_E1x(%struct.bxe_softc* %496)
  %498 = icmp ne i64 %497, 0
  br i1 %498, label %520, label %499

499:                                              ; preds = %484
  store i32 0, i32* %7, align 4
  %500 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %501 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %500, i32 0, i32 1
  %502 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %501, i32 0, i32 0
  %503 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %502, i32 0, i32 0
  %504 = load i32, i32* %503, align 8
  switch i32 %504, label %507 [
    i32 129, label %505
    i32 128, label %506
    i32 130, label %506
  ]

505:                                              ; preds = %499
  store i32 1, i32* %7, align 4
  br label %507

506:                                              ; preds = %499, %499
  store i32 2, i32* %7, align 4
  br label %507

507:                                              ; preds = %499, %506, %505
  %508 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %509 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %510 = call i32 @SC_PORT(%struct.bxe_softc* %509)
  %511 = icmp ne i32 %510, 0
  br i1 %511, label %512, label %514

512:                                              ; preds = %507
  %513 = load i32, i32* @NIG_REG_LLH1_CLS_TYPE, align 4
  br label %516

514:                                              ; preds = %507
  %515 = load i32, i32* @NIG_REG_LLH0_CLS_TYPE, align 4
  br label %516

516:                                              ; preds = %514, %512
  %517 = phi i32 [ %513, %512 ], [ %515, %514 ]
  %518 = load i32, i32* %7, align 4
  %519 = call i32 @REG_WR(%struct.bxe_softc* %508, i32 %517, i32 %518)
  br label %520

520:                                              ; preds = %516, %484
  %521 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %522 = load i32, i32* @NIG_REG_LLFC_ENABLE_0, align 4
  %523 = load i32, i32* %3, align 4
  %524 = mul nsw i32 %523, 4
  %525 = add nsw i32 %522, %524
  %526 = call i32 @REG_WR(%struct.bxe_softc* %521, i32 %525, i32 0)
  %527 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %528 = load i32, i32* @NIG_REG_LLFC_OUT_EN_0, align 4
  %529 = load i32, i32* %3, align 4
  %530 = mul nsw i32 %529, 4
  %531 = add nsw i32 %528, %530
  %532 = call i32 @REG_WR(%struct.bxe_softc* %527, i32 %531, i32 0)
  %533 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %534 = load i32, i32* @NIG_REG_PAUSE_ENABLE_0, align 4
  %535 = load i32, i32* %3, align 4
  %536 = mul nsw i32 %535, 4
  %537 = add nsw i32 %534, %536
  %538 = call i32 @REG_WR(%struct.bxe_softc* %533, i32 %537, i32 1)
  br label %539

539:                                              ; preds = %520, %480
  %540 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %541 = load i32, i32* @MISC_REG_SPIO_EVENT_EN, align 4
  %542 = call i32 @REG_RD(%struct.bxe_softc* %540, i32 %541)
  store i32 %542, i32* %7, align 4
  %543 = load i32, i32* %7, align 4
  %544 = load i32, i32* @MISC_SPIO_SPIO5, align 4
  %545 = and i32 %543, %544
  %546 = icmp ne i32 %545, 0
  br i1 %546, label %547, label %566

547:                                              ; preds = %539
  %548 = load i32, i32* %3, align 4
  %549 = icmp ne i32 %548, 0
  br i1 %549, label %550, label %552

550:                                              ; preds = %547
  %551 = load i32, i32* @MISC_REG_AEU_ENABLE1_FUNC_1_OUT_0, align 4
  br label %554

552:                                              ; preds = %547
  %553 = load i32, i32* @MISC_REG_AEU_ENABLE1_FUNC_0_OUT_0, align 4
  br label %554

554:                                              ; preds = %552, %550
  %555 = phi i32 [ %551, %550 ], [ %553, %552 ]
  store i32 %555, i32* %8, align 4
  %556 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %557 = load i32, i32* %8, align 4
  %558 = call i32 @REG_RD(%struct.bxe_softc* %556, i32 %557)
  store i32 %558, i32* %7, align 4
  %559 = load i32, i32* @AEU_INPUTS_ATTN_BITS_SPIO5, align 4
  %560 = load i32, i32* %7, align 4
  %561 = or i32 %560, %559
  store i32 %561, i32* %7, align 4
  %562 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %563 = load i32, i32* %8, align 4
  %564 = load i32, i32* %7, align 4
  %565 = call i32 @REG_WR(%struct.bxe_softc* %562, i32 %563, i32 %564)
  br label %566

566:                                              ; preds = %554, %539
  ret i32 0
}

declare dso_local i32 @SC_PORT(%struct.bxe_softc*) #1

declare dso_local i32 @BLOGD(%struct.bxe_softc*, i32, i8*, i32) #1

declare dso_local i32 @REG_WR(%struct.bxe_softc*, i32, i32) #1

declare dso_local i32 @ecore_init_block(%struct.bxe_softc*, i32, i32) #1

declare dso_local i64 @CHIP_IS_E1x(%struct.bxe_softc*) #1

declare dso_local i32 @ecore_qm_init_cid_count(%struct.bxe_softc*, i32, i32) #1

declare dso_local i64 @CNIC_SUPPORT(%struct.bxe_softc*) #1

declare dso_local i64 @CHIP_IS_E1(%struct.bxe_softc*) #1

declare dso_local i64 @CHIP_IS_E1H(%struct.bxe_softc*) #1

declare dso_local i32 @IS_MF(%struct.bxe_softc*) #1

declare dso_local i64 @BXE_ONE_PORT(%struct.bxe_softc*) #1

declare dso_local i64 @CHIP_IS_MODE_4_PORT(%struct.bxe_softc*) #1

declare dso_local i64 @CHIP_IS_E3B0(%struct.bxe_softc*) #1

declare dso_local i64 @IS_MF_AFEX(%struct.bxe_softc*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i64 @IS_MF_SD(%struct.bxe_softc*) #1

declare dso_local i64 @CHIP_IS_E3(%struct.bxe_softc*) #1

declare dso_local i32 @REG_RD(%struct.bxe_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
