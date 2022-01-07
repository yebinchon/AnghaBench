; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_init_hw_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_init_hw_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i64, i32, i32, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_10__*, %struct.ecore_ilt* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.ecore_ilt = type { %struct.TYPE_9__*, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@PHASE_PF0 = common dso_local global i32 0, align 4
@DBG_LOAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"starting func init for func %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"FLR cleanup failed!\0A\00", align 1
@INT_BLOCK_HC = common dso_local global i64 0, align 8
@HC_REG_CONFIG_1 = common dso_local global i32 0, align 4
@HC_REG_CONFIG_0 = common dso_local global i32 0, align 4
@HC_CONFIG_0_REG_MSI_ATTN_EN_0 = common dso_local global i32 0, align 4
@BLOCK_PXP = common dso_local global i32 0, align 4
@BLOCK_PXP2 = common dso_local global i32 0, align 4
@ILT_CLIENT_CDU = common dso_local global i64 0, align 8
@INITOP_SET = common dso_local global i32 0, align 4
@PRS_REG_NIC_MODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"NIC MODE configured\0A\00", align 1
@IGU_PF_CONF_FUNC_EN = common dso_local global i32 0, align 4
@INTR_MODE_MSIX = common dso_local global i64 0, align 8
@IGU_PF_CONF_SINGLE_ISR_EN = common dso_local global i32 0, align 4
@PGLUE_B_REG_INTERNAL_PFID_ENABLE_MASTER = common dso_local global i32 0, align 4
@IGU_REG_PF_CONFIGURATION = common dso_local global i32 0, align 4
@BLOCK_PGLUE_B = common dso_local global i32 0, align 4
@PGLUE_B_REG_WAS_ERROR_PF_7_0_CLR = common dso_local global i32 0, align 4
@BLOCK_ATC = common dso_local global i32 0, align 4
@BLOCK_DMAE = common dso_local global i32 0, align 4
@BLOCK_NIG = common dso_local global i32 0, align 4
@BLOCK_SRC = common dso_local global i32 0, align 4
@BLOCK_MISC = common dso_local global i32 0, align 4
@BLOCK_TCM = common dso_local global i32 0, align 4
@BLOCK_UCM = common dso_local global i32 0, align 4
@BLOCK_CCM = common dso_local global i32 0, align 4
@BLOCK_XCM = common dso_local global i32 0, align 4
@BLOCK_TSEM = common dso_local global i32 0, align 4
@BLOCK_USEM = common dso_local global i32 0, align 4
@BLOCK_CSEM = common dso_local global i32 0, align 4
@BLOCK_XSEM = common dso_local global i32 0, align 4
@QM_REG_PF_EN = common dso_local global i32 0, align 4
@TSEM_REG_VFPF_ERR_NUM = common dso_local global i32 0, align 4
@BXE_MAX_NUM_OF_VFS = common dso_local global i32 0, align 4
@USEM_REG_VFPF_ERR_NUM = common dso_local global i32 0, align 4
@CSEM_REG_VFPF_ERR_NUM = common dso_local global i32 0, align 4
@XSEM_REG_VFPF_ERR_NUM = common dso_local global i32 0, align 4
@BLOCK_QM = common dso_local global i32 0, align 4
@BLOCK_TM = common dso_local global i32 0, align 4
@BLOCK_DORQ = common dso_local global i32 0, align 4
@BLOCK_BRB1 = common dso_local global i32 0, align 4
@BLOCK_PRS = common dso_local global i32 0, align 4
@BLOCK_TSDM = common dso_local global i32 0, align 4
@BLOCK_CSDM = common dso_local global i32 0, align 4
@BLOCK_USDM = common dso_local global i32 0, align 4
@BLOCK_XSDM = common dso_local global i32 0, align 4
@BLOCK_UPB = common dso_local global i32 0, align 4
@BLOCK_XPB = common dso_local global i32 0, align 4
@BLOCK_PBF = common dso_local global i32 0, align 4
@PBF_REG_DISABLE_PF = common dso_local global i32 0, align 4
@BLOCK_CDU = common dso_local global i32 0, align 4
@BLOCK_CFC = common dso_local global i32 0, align 4
@CFC_REG_WEAK_ENABLE_PF = common dso_local global i32 0, align 4
@NIG_REG_LLH0_FUNC_EN = common dso_local global i32 0, align 4
@NIG_REG_LLH0_FUNC_VLAN_ID = common dso_local global i32 0, align 4
@BLOCK_MISC_AEU = common dso_local global i32 0, align 4
@MISC_REG_AEU_GENERAL_ATTN_12 = common dso_local global i32 0, align 4
@HC_REG_LEADING_EDGE_0 = common dso_local global i32 0, align 4
@HC_REG_TRAILING_EDGE_0 = common dso_local global i32 0, align 4
@BLOCK_HC = common dso_local global i32 0, align 4
@IGU_REG_LEADING_EDGE_LATCH = common dso_local global i32 0, align 4
@IGU_REG_TRAILING_EDGE_LATCH = common dso_local global i32 0, align 4
@BLOCK_IGU = common dso_local global i32 0, align 4
@IGU_BC_NDSB_NUM_SEGS = common dso_local global i32 0, align 4
@IGU_NORM_NDSB_NUM_SEGS = common dso_local global i32 0, align 4
@IGU_REG_PROD_CONS_MEMORY = common dso_local global i32 0, align 4
@USTORM_ID = common dso_local global i32 0, align 4
@IGU_INT_NOP = common dso_local global i32 0, align 4
@IGU_BC_DSB_NUM_SEGS = common dso_local global i32 0, align 4
@IGU_NORM_DSB_NUM_SEGS = common dso_local global i32 0, align 4
@IGU_BC_BASE_DSB_PROD = common dso_local global i32 0, align 4
@IGU_NORM_BASE_DSB_PROD = common dso_local global i32 0, align 4
@E1HVN_MAX = common dso_local global i32 0, align 4
@CSTORM_ID = common dso_local global i32 0, align 4
@XSTORM_ID = common dso_local global i32 0, align 4
@TSTORM_ID = common dso_local global i32 0, align 4
@ATTENTION_ID = common dso_local global i32 0, align 4
@IGU_REG_SB_INT_BEFORE_MASK_LSB = common dso_local global i32 0, align 4
@IGU_REG_SB_INT_BEFORE_MASK_MSB = common dso_local global i32 0, align 4
@IGU_REG_SB_MASK_LSB = common dso_local global i32 0, align 4
@IGU_REG_SB_MASK_MSB = common dso_local global i32 0, align 4
@IGU_REG_PBA_STATUS_LSB = common dso_local global i32 0, align 4
@IGU_REG_PBA_STATUS_MSB = common dso_local global i32 0, align 4
@HC_REG_MAIN_MEMORY_SIZE = common dso_local global i32 0, align 4
@HC_REG_MAIN_MEMORY = common dso_local global i32 0, align 4
@HC_REG_HC_PRTY_STS_CLR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"Parity errors in HC block during function init (0x%x)!\0A\00", align 1
@wb_data = common dso_local global i32 0, align 4
@BAR_USTRORM_INTMEM = common dso_local global i64 0, align 8
@BAR_TSTRORM_INTMEM = common dso_local global i64 0, align 8
@BAR_CSTRORM_INTMEM = common dso_local global i64 0, align 8
@BAR_XSTRORM_INTMEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*)* @bxe_init_hw_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_init_hw_func(%struct.bxe_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bxe_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ecore_ilt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %3, align 8
  %22 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %23 = call i32 @SC_PORT(%struct.bxe_softc* %22)
  store i32 %23, i32* %4, align 4
  %24 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %25 = call i32 @SC_FUNC(%struct.bxe_softc* %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* @PHASE_PF0, align 4
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %26, %27
  store i32 %28, i32* %6, align 4
  %29 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %30 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %29, i32 0, i32 8
  %31 = load %struct.ecore_ilt*, %struct.ecore_ilt** %30, align 8
  store %struct.ecore_ilt* %31, %struct.ecore_ilt** %7, align 8
  %32 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %33 = load i32, i32* @DBG_LOAD, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 (%struct.bxe_softc*, i32, i8*, ...) @BLOGD(%struct.bxe_softc* %32, i32 %33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %37 = call i64 @CHIP_IS_E1x(%struct.bxe_softc* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %1
  %40 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %41 = call i32 @bxe_pf_flr_clnup(%struct.bxe_softc* %40)
  store i32 %41, i32* %16, align 4
  %42 = load i32, i32* %16, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %46 = call i32 @BLOGE(%struct.bxe_softc* %45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* %16, align 4
  store i32 %47, i32* %2, align 4
  br label %735

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %48, %1
  %50 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %51 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %50, i32 0, i32 6
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @INT_BLOCK_HC, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %75

56:                                               ; preds = %49
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load i32, i32* @HC_REG_CONFIG_1, align 4
  br label %63

61:                                               ; preds = %56
  %62 = load i32, i32* @HC_REG_CONFIG_0, align 4
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi i32 [ %60, %59 ], [ %62, %61 ]
  store i32 %64, i32* %9, align 4
  %65 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @REG_RD(%struct.bxe_softc* %65, i32 %66)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* @HC_CONFIG_0_REG_MSI_ATTN_EN_0, align 4
  %69 = load i32, i32* %10, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %10, align 4
  %71 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @REG_WR(%struct.bxe_softc* %71, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %63, %49
  %76 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %77 = load i32, i32* @BLOCK_PXP, align 4
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @ecore_init_block(%struct.bxe_softc* %76, i32 %77, i32 %78)
  %80 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %81 = load i32, i32* @BLOCK_PXP2, align 4
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @ecore_init_block(%struct.bxe_softc* %80, i32 %81, i32 %82)
  %84 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %85 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %84, i32 0, i32 8
  %86 = load %struct.ecore_ilt*, %struct.ecore_ilt** %85, align 8
  store %struct.ecore_ilt* %86, %struct.ecore_ilt** %7, align 8
  %87 = load %struct.ecore_ilt*, %struct.ecore_ilt** %7, align 8
  %88 = getelementptr inbounds %struct.ecore_ilt, %struct.ecore_ilt* %87, i32 0, i32 1
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = load i64, i64* @ILT_CLIENT_CDU, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %8, align 4
  store i32 0, i32* %14, align 4
  br label %94

94:                                               ; preds = %152, %75
  %95 = load i32, i32* %14, align 4
  %96 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %97 = call i32 @L2_ILT_LINES(%struct.bxe_softc* %96)
  %98 = icmp slt i32 %95, %97
  br i1 %98, label %99, label %155

99:                                               ; preds = %94
  %100 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %101 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %100, i32 0, i32 7
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %101, align 8
  %103 = load i32, i32* %14, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.ecore_ilt*, %struct.ecore_ilt** %7, align 8
  %109 = getelementptr inbounds %struct.ecore_ilt, %struct.ecore_ilt* %108, i32 0, i32 0
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %109, align 8
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* %14, align 4
  %113 = add nsw i32 %111, %112
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 2
  store i32 %107, i32* %116, align 4
  %117 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %118 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %117, i32 0, i32 7
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %118, align 8
  %120 = load i32, i32* %14, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.ecore_ilt*, %struct.ecore_ilt** %7, align 8
  %127 = getelementptr inbounds %struct.ecore_ilt, %struct.ecore_ilt* %126, i32 0, i32 0
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %127, align 8
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* %14, align 4
  %131 = add nsw i32 %129, %130
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 1
  store i32 %125, i32* %134, align 4
  %135 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %136 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %135, i32 0, i32 7
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %136, align 8
  %138 = load i32, i32* %14, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.ecore_ilt*, %struct.ecore_ilt** %7, align 8
  %144 = getelementptr inbounds %struct.ecore_ilt, %struct.ecore_ilt* %143, i32 0, i32 0
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %144, align 8
  %146 = load i32, i32* %8, align 4
  %147 = load i32, i32* %14, align 4
  %148 = add nsw i32 %146, %147
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 0
  store i32 %142, i32* %151, align 4
  br label %152

152:                                              ; preds = %99
  %153 = load i32, i32* %14, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %14, align 4
  br label %94

155:                                              ; preds = %94
  %156 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %157 = load i32, i32* @INITOP_SET, align 4
  %158 = call i32 @ecore_ilt_init_op(%struct.bxe_softc* %156, i32 %157)
  %159 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %160 = load i32, i32* @PRS_REG_NIC_MODE, align 4
  %161 = call i32 @REG_WR(%struct.bxe_softc* %159, i32 %160, i32 1)
  %162 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %163 = load i32, i32* @DBG_LOAD, align 4
  %164 = call i32 (%struct.bxe_softc*, i32, i8*, ...) @BLOGD(%struct.bxe_softc* %162, i32 %163, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %165 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %166 = call i64 @CHIP_IS_E1x(%struct.bxe_softc* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %188, label %168

168:                                              ; preds = %155
  %169 = load i32, i32* @IGU_PF_CONF_FUNC_EN, align 4
  store i32 %169, i32* %17, align 4
  %170 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %171 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @INTR_MODE_MSIX, align 8
  %174 = icmp ne i64 %172, %173
  br i1 %174, label %175, label %179

175:                                              ; preds = %168
  %176 = load i32, i32* @IGU_PF_CONF_SINGLE_ISR_EN, align 4
  %177 = load i32, i32* %17, align 4
  %178 = or i32 %177, %176
  store i32 %178, i32* %17, align 4
  br label %179

179:                                              ; preds = %175, %168
  %180 = call i32 @DELAY(i32 20000)
  %181 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %182 = load i32, i32* @PGLUE_B_REG_INTERNAL_PFID_ENABLE_MASTER, align 4
  %183 = call i32 @REG_WR(%struct.bxe_softc* %181, i32 %182, i32 1)
  %184 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %185 = load i32, i32* @IGU_REG_PF_CONFIGURATION, align 4
  %186 = load i32, i32* %17, align 4
  %187 = call i32 @REG_WR(%struct.bxe_softc* %184, i32 %185, i32 %186)
  br label %188

188:                                              ; preds = %179, %155
  %189 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %190 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %189, i32 0, i32 1
  store i32 1, i32* %190, align 8
  %191 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %192 = load i32, i32* @BLOCK_PGLUE_B, align 4
  %193 = load i32, i32* %6, align 4
  %194 = call i32 @ecore_init_block(%struct.bxe_softc* %191, i32 %192, i32 %193)
  %195 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %196 = call i64 @CHIP_IS_E1x(%struct.bxe_softc* %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %203, label %198

198:                                              ; preds = %188
  %199 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %200 = load i32, i32* @PGLUE_B_REG_WAS_ERROR_PF_7_0_CLR, align 4
  %201 = load i32, i32* %5, align 4
  %202 = call i32 @REG_WR(%struct.bxe_softc* %199, i32 %200, i32 %201)
  br label %203

203:                                              ; preds = %198, %188
  %204 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %205 = load i32, i32* @BLOCK_ATC, align 4
  %206 = load i32, i32* %6, align 4
  %207 = call i32 @ecore_init_block(%struct.bxe_softc* %204, i32 %205, i32 %206)
  %208 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %209 = load i32, i32* @BLOCK_DMAE, align 4
  %210 = load i32, i32* %6, align 4
  %211 = call i32 @ecore_init_block(%struct.bxe_softc* %208, i32 %209, i32 %210)
  %212 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %213 = load i32, i32* @BLOCK_NIG, align 4
  %214 = load i32, i32* %6, align 4
  %215 = call i32 @ecore_init_block(%struct.bxe_softc* %212, i32 %213, i32 %214)
  %216 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %217 = load i32, i32* @BLOCK_SRC, align 4
  %218 = load i32, i32* %6, align 4
  %219 = call i32 @ecore_init_block(%struct.bxe_softc* %216, i32 %217, i32 %218)
  %220 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %221 = load i32, i32* @BLOCK_MISC, align 4
  %222 = load i32, i32* %6, align 4
  %223 = call i32 @ecore_init_block(%struct.bxe_softc* %220, i32 %221, i32 %222)
  %224 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %225 = load i32, i32* @BLOCK_TCM, align 4
  %226 = load i32, i32* %6, align 4
  %227 = call i32 @ecore_init_block(%struct.bxe_softc* %224, i32 %225, i32 %226)
  %228 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %229 = load i32, i32* @BLOCK_UCM, align 4
  %230 = load i32, i32* %6, align 4
  %231 = call i32 @ecore_init_block(%struct.bxe_softc* %228, i32 %229, i32 %230)
  %232 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %233 = load i32, i32* @BLOCK_CCM, align 4
  %234 = load i32, i32* %6, align 4
  %235 = call i32 @ecore_init_block(%struct.bxe_softc* %232, i32 %233, i32 %234)
  %236 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %237 = load i32, i32* @BLOCK_XCM, align 4
  %238 = load i32, i32* %6, align 4
  %239 = call i32 @ecore_init_block(%struct.bxe_softc* %236, i32 %237, i32 %238)
  %240 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %241 = load i32, i32* @BLOCK_TSEM, align 4
  %242 = load i32, i32* %6, align 4
  %243 = call i32 @ecore_init_block(%struct.bxe_softc* %240, i32 %241, i32 %242)
  %244 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %245 = load i32, i32* @BLOCK_USEM, align 4
  %246 = load i32, i32* %6, align 4
  %247 = call i32 @ecore_init_block(%struct.bxe_softc* %244, i32 %245, i32 %246)
  %248 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %249 = load i32, i32* @BLOCK_CSEM, align 4
  %250 = load i32, i32* %6, align 4
  %251 = call i32 @ecore_init_block(%struct.bxe_softc* %248, i32 %249, i32 %250)
  %252 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %253 = load i32, i32* @BLOCK_XSEM, align 4
  %254 = load i32, i32* %6, align 4
  %255 = call i32 @ecore_init_block(%struct.bxe_softc* %252, i32 %253, i32 %254)
  %256 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %257 = call i64 @CHIP_IS_E1x(%struct.bxe_softc* %256)
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %263, label %259

259:                                              ; preds = %203
  %260 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %261 = load i32, i32* @QM_REG_PF_EN, align 4
  %262 = call i32 @REG_WR(%struct.bxe_softc* %260, i32 %261, i32 1)
  br label %263

263:                                              ; preds = %259, %203
  %264 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %265 = call i64 @CHIP_IS_E1x(%struct.bxe_softc* %264)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %292, label %267

267:                                              ; preds = %263
  %268 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %269 = load i32, i32* @TSEM_REG_VFPF_ERR_NUM, align 4
  %270 = load i32, i32* @BXE_MAX_NUM_OF_VFS, align 4
  %271 = load i32, i32* %5, align 4
  %272 = add nsw i32 %270, %271
  %273 = call i32 @REG_WR(%struct.bxe_softc* %268, i32 %269, i32 %272)
  %274 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %275 = load i32, i32* @USEM_REG_VFPF_ERR_NUM, align 4
  %276 = load i32, i32* @BXE_MAX_NUM_OF_VFS, align 4
  %277 = load i32, i32* %5, align 4
  %278 = add nsw i32 %276, %277
  %279 = call i32 @REG_WR(%struct.bxe_softc* %274, i32 %275, i32 %278)
  %280 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %281 = load i32, i32* @CSEM_REG_VFPF_ERR_NUM, align 4
  %282 = load i32, i32* @BXE_MAX_NUM_OF_VFS, align 4
  %283 = load i32, i32* %5, align 4
  %284 = add nsw i32 %282, %283
  %285 = call i32 @REG_WR(%struct.bxe_softc* %280, i32 %281, i32 %284)
  %286 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %287 = load i32, i32* @XSEM_REG_VFPF_ERR_NUM, align 4
  %288 = load i32, i32* @BXE_MAX_NUM_OF_VFS, align 4
  %289 = load i32, i32* %5, align 4
  %290 = add nsw i32 %288, %289
  %291 = call i32 @REG_WR(%struct.bxe_softc* %286, i32 %287, i32 %290)
  br label %292

292:                                              ; preds = %267, %263
  %293 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %294 = load i32, i32* @BLOCK_QM, align 4
  %295 = load i32, i32* %6, align 4
  %296 = call i32 @ecore_init_block(%struct.bxe_softc* %293, i32 %294, i32 %295)
  %297 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %298 = load i32, i32* @BLOCK_TM, align 4
  %299 = load i32, i32* %6, align 4
  %300 = call i32 @ecore_init_block(%struct.bxe_softc* %297, i32 %298, i32 %299)
  %301 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %302 = load i32, i32* @BLOCK_DORQ, align 4
  %303 = load i32, i32* %6, align 4
  %304 = call i32 @ecore_init_block(%struct.bxe_softc* %301, i32 %302, i32 %303)
  %305 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %306 = call i32 @bxe_iov_init_dq(%struct.bxe_softc* %305)
  %307 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %308 = load i32, i32* @BLOCK_BRB1, align 4
  %309 = load i32, i32* %6, align 4
  %310 = call i32 @ecore_init_block(%struct.bxe_softc* %307, i32 %308, i32 %309)
  %311 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %312 = load i32, i32* @BLOCK_PRS, align 4
  %313 = load i32, i32* %6, align 4
  %314 = call i32 @ecore_init_block(%struct.bxe_softc* %311, i32 %312, i32 %313)
  %315 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %316 = load i32, i32* @BLOCK_TSDM, align 4
  %317 = load i32, i32* %6, align 4
  %318 = call i32 @ecore_init_block(%struct.bxe_softc* %315, i32 %316, i32 %317)
  %319 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %320 = load i32, i32* @BLOCK_CSDM, align 4
  %321 = load i32, i32* %6, align 4
  %322 = call i32 @ecore_init_block(%struct.bxe_softc* %319, i32 %320, i32 %321)
  %323 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %324 = load i32, i32* @BLOCK_USDM, align 4
  %325 = load i32, i32* %6, align 4
  %326 = call i32 @ecore_init_block(%struct.bxe_softc* %323, i32 %324, i32 %325)
  %327 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %328 = load i32, i32* @BLOCK_XSDM, align 4
  %329 = load i32, i32* %6, align 4
  %330 = call i32 @ecore_init_block(%struct.bxe_softc* %327, i32 %328, i32 %329)
  %331 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %332 = load i32, i32* @BLOCK_UPB, align 4
  %333 = load i32, i32* %6, align 4
  %334 = call i32 @ecore_init_block(%struct.bxe_softc* %331, i32 %332, i32 %333)
  %335 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %336 = load i32, i32* @BLOCK_XPB, align 4
  %337 = load i32, i32* %6, align 4
  %338 = call i32 @ecore_init_block(%struct.bxe_softc* %335, i32 %336, i32 %337)
  %339 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %340 = load i32, i32* @BLOCK_PBF, align 4
  %341 = load i32, i32* %6, align 4
  %342 = call i32 @ecore_init_block(%struct.bxe_softc* %339, i32 %340, i32 %341)
  %343 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %344 = call i64 @CHIP_IS_E1x(%struct.bxe_softc* %343)
  %345 = icmp ne i64 %344, 0
  br i1 %345, label %350, label %346

346:                                              ; preds = %292
  %347 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %348 = load i32, i32* @PBF_REG_DISABLE_PF, align 4
  %349 = call i32 @REG_WR(%struct.bxe_softc* %347, i32 %348, i32 0)
  br label %350

350:                                              ; preds = %346, %292
  %351 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %352 = load i32, i32* @BLOCK_CDU, align 4
  %353 = load i32, i32* %6, align 4
  %354 = call i32 @ecore_init_block(%struct.bxe_softc* %351, i32 %352, i32 %353)
  %355 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %356 = load i32, i32* @BLOCK_CFC, align 4
  %357 = load i32, i32* %6, align 4
  %358 = call i32 @ecore_init_block(%struct.bxe_softc* %355, i32 %356, i32 %357)
  %359 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %360 = call i64 @CHIP_IS_E1x(%struct.bxe_softc* %359)
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %366, label %362

362:                                              ; preds = %350
  %363 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %364 = load i32, i32* @CFC_REG_WEAK_ENABLE_PF, align 4
  %365 = call i32 @REG_WR(%struct.bxe_softc* %363, i32 %364, i32 1)
  br label %366

366:                                              ; preds = %362, %350
  %367 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %368 = call i64 @IS_MF(%struct.bxe_softc* %367)
  %369 = icmp ne i64 %368, 0
  br i1 %369, label %370, label %385

370:                                              ; preds = %366
  %371 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %372 = load i32, i32* @NIG_REG_LLH0_FUNC_EN, align 4
  %373 = load i32, i32* %4, align 4
  %374 = mul nsw i32 %373, 8
  %375 = add nsw i32 %372, %374
  %376 = call i32 @REG_WR(%struct.bxe_softc* %371, i32 %375, i32 1)
  %377 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %378 = load i32, i32* @NIG_REG_LLH0_FUNC_VLAN_ID, align 4
  %379 = load i32, i32* %4, align 4
  %380 = mul nsw i32 %379, 8
  %381 = add nsw i32 %378, %380
  %382 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %383 = call i32 @OVLAN(%struct.bxe_softc* %382)
  %384 = call i32 @REG_WR(%struct.bxe_softc* %377, i32 %381, i32 %383)
  br label %385

385:                                              ; preds = %370, %366
  %386 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %387 = load i32, i32* @BLOCK_MISC_AEU, align 4
  %388 = load i32, i32* %6, align 4
  %389 = call i32 @ecore_init_block(%struct.bxe_softc* %386, i32 %387, i32 %388)
  %390 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %391 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %390, i32 0, i32 6
  %392 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %391, i32 0, i32 0
  %393 = load i64, i64* %392, align 8
  %394 = load i64, i64* @INT_BLOCK_HC, align 8
  %395 = icmp eq i64 %393, %394
  br i1 %395, label %396, label %424

396:                                              ; preds = %385
  %397 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %398 = call i64 @CHIP_IS_E1H(%struct.bxe_softc* %397)
  %399 = icmp ne i64 %398, 0
  br i1 %399, label %400, label %419

400:                                              ; preds = %396
  %401 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %402 = load i32, i32* @MISC_REG_AEU_GENERAL_ATTN_12, align 4
  %403 = load i32, i32* %5, align 4
  %404 = mul nsw i32 %403, 4
  %405 = add nsw i32 %402, %404
  %406 = call i32 @REG_WR(%struct.bxe_softc* %401, i32 %405, i32 0)
  %407 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %408 = load i32, i32* @HC_REG_LEADING_EDGE_0, align 4
  %409 = load i32, i32* %4, align 4
  %410 = mul nsw i32 %409, 8
  %411 = add nsw i32 %408, %410
  %412 = call i32 @REG_WR(%struct.bxe_softc* %407, i32 %411, i32 0)
  %413 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %414 = load i32, i32* @HC_REG_TRAILING_EDGE_0, align 4
  %415 = load i32, i32* %4, align 4
  %416 = mul nsw i32 %415, 8
  %417 = add nsw i32 %414, %416
  %418 = call i32 @REG_WR(%struct.bxe_softc* %413, i32 %417, i32 0)
  br label %419

419:                                              ; preds = %400, %396
  %420 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %421 = load i32, i32* @BLOCK_HC, align 4
  %422 = load i32, i32* %6, align 4
  %423 = call i32 @ecore_init_block(%struct.bxe_softc* %420, i32 %421, i32 %422)
  br label %643

424:                                              ; preds = %385
  %425 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %426 = load i32, i32* @MISC_REG_AEU_GENERAL_ATTN_12, align 4
  %427 = load i32, i32* %5, align 4
  %428 = mul nsw i32 %427, 4
  %429 = add nsw i32 %426, %428
  %430 = call i32 @REG_WR(%struct.bxe_softc* %425, i32 %429, i32 0)
  %431 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %432 = call i64 @CHIP_IS_E1x(%struct.bxe_softc* %431)
  %433 = icmp ne i64 %432, 0
  br i1 %433, label %441, label %434

434:                                              ; preds = %424
  %435 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %436 = load i32, i32* @IGU_REG_LEADING_EDGE_LATCH, align 4
  %437 = call i32 @REG_WR(%struct.bxe_softc* %435, i32 %436, i32 0)
  %438 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %439 = load i32, i32* @IGU_REG_TRAILING_EDGE_LATCH, align 4
  %440 = call i32 @REG_WR(%struct.bxe_softc* %438, i32 %439, i32 0)
  br label %441

441:                                              ; preds = %434, %424
  %442 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %443 = load i32, i32* @BLOCK_IGU, align 4
  %444 = load i32, i32* %6, align 4
  %445 = call i32 @ecore_init_block(%struct.bxe_softc* %442, i32 %443, i32 %444)
  %446 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %447 = call i64 @CHIP_IS_E1x(%struct.bxe_softc* %446)
  %448 = icmp ne i64 %447, 0
  br i1 %448, label %642, label %449

449:                                              ; preds = %441
  store i32 0, i32* %21, align 4
  %450 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %451 = call i64 @CHIP_INT_MODE_IS_BC(%struct.bxe_softc* %450)
  %452 = icmp ne i64 %451, 0
  br i1 %452, label %453, label %455

453:                                              ; preds = %449
  %454 = load i32, i32* @IGU_BC_NDSB_NUM_SEGS, align 4
  br label %457

455:                                              ; preds = %449
  %456 = load i32, i32* @IGU_NORM_NDSB_NUM_SEGS, align 4
  br label %457

457:                                              ; preds = %455, %453
  %458 = phi i32 [ %454, %453 ], [ %456, %455 ]
  store i32 %458, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %459

459:                                              ; preds = %507, %457
  %460 = load i32, i32* %19, align 4
  %461 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %462 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %461, i32 0, i32 2
  %463 = load i32, i32* %462, align 4
  %464 = icmp slt i32 %460, %463
  br i1 %464, label %465, label %510

465:                                              ; preds = %459
  %466 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %467 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %466, i32 0, i32 3
  %468 = load i32, i32* %467, align 8
  %469 = load i32, i32* %19, align 4
  %470 = add nsw i32 %468, %469
  %471 = load i32, i32* %18, align 4
  %472 = mul nsw i32 %470, %471
  store i32 %472, i32* %20, align 4
  store i32 0, i32* %14, align 4
  br label %473

473:                                              ; preds = %487, %465
  %474 = load i32, i32* %14, align 4
  %475 = load i32, i32* %18, align 4
  %476 = icmp slt i32 %474, %475
  br i1 %476, label %477, label %490

477:                                              ; preds = %473
  %478 = load i32, i32* @IGU_REG_PROD_CONS_MEMORY, align 4
  %479 = load i32, i32* %20, align 4
  %480 = load i32, i32* %14, align 4
  %481 = add nsw i32 %479, %480
  %482 = mul nsw i32 %481, 4
  %483 = add nsw i32 %478, %482
  store i32 %483, i32* %9, align 4
  %484 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %485 = load i32, i32* %9, align 4
  %486 = call i32 @REG_WR(%struct.bxe_softc* %484, i32 %485, i32 0)
  br label %487

487:                                              ; preds = %477
  %488 = load i32, i32* %14, align 4
  %489 = add nsw i32 %488, 1
  store i32 %489, i32* %14, align 4
  br label %473

490:                                              ; preds = %473
  %491 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %492 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %493 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %492, i32 0, i32 3
  %494 = load i32, i32* %493, align 8
  %495 = load i32, i32* %19, align 4
  %496 = add nsw i32 %494, %495
  %497 = load i32, i32* @USTORM_ID, align 4
  %498 = load i32, i32* @IGU_INT_NOP, align 4
  %499 = call i32 @bxe_ack_sb(%struct.bxe_softc* %491, i32 %496, i32 %497, i32 0, i32 %498, i32 1)
  %500 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %501 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %502 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %501, i32 0, i32 3
  %503 = load i32, i32* %502, align 8
  %504 = load i32, i32* %19, align 4
  %505 = add nsw i32 %503, %504
  %506 = call i32 @bxe_igu_clear_sb(%struct.bxe_softc* %500, i32 %505)
  br label %507

507:                                              ; preds = %490
  %508 = load i32, i32* %19, align 4
  %509 = add nsw i32 %508, 1
  store i32 %509, i32* %19, align 4
  br label %459

510:                                              ; preds = %459
  %511 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %512 = call i64 @CHIP_INT_MODE_IS_BC(%struct.bxe_softc* %511)
  %513 = icmp ne i64 %512, 0
  br i1 %513, label %514, label %516

514:                                              ; preds = %510
  %515 = load i32, i32* @IGU_BC_DSB_NUM_SEGS, align 4
  br label %518

516:                                              ; preds = %510
  %517 = load i32, i32* @IGU_NORM_DSB_NUM_SEGS, align 4
  br label %518

518:                                              ; preds = %516, %514
  %519 = phi i32 [ %515, %514 ], [ %517, %516 ]
  store i32 %519, i32* %18, align 4
  %520 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %521 = call i64 @CHIP_IS_MODE_4_PORT(%struct.bxe_softc* %520)
  %522 = icmp ne i64 %521, 0
  br i1 %522, label %523, label %526

523:                                              ; preds = %518
  %524 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %525 = call i32 @SC_FUNC(%struct.bxe_softc* %524)
  store i32 %525, i32* %21, align 4
  br label %529

526:                                              ; preds = %518
  %527 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %528 = call i32 @SC_VN(%struct.bxe_softc* %527)
  store i32 %528, i32* %21, align 4
  br label %529

529:                                              ; preds = %526, %523
  %530 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %531 = call i64 @CHIP_INT_MODE_IS_BC(%struct.bxe_softc* %530)
  %532 = icmp ne i64 %531, 0
  br i1 %532, label %533, label %537

533:                                              ; preds = %529
  %534 = load i32, i32* @IGU_BC_BASE_DSB_PROD, align 4
  %535 = load i32, i32* %21, align 4
  %536 = add nsw i32 %534, %535
  br label %541

537:                                              ; preds = %529
  %538 = load i32, i32* @IGU_NORM_BASE_DSB_PROD, align 4
  %539 = load i32, i32* %21, align 4
  %540 = add nsw i32 %538, %539
  br label %541

541:                                              ; preds = %537, %533
  %542 = phi i32 [ %536, %533 ], [ %540, %537 ]
  store i32 %542, i32* %20, align 4
  store i32 0, i32* %14, align 4
  br label %543

543:                                              ; preds = %559, %541
  %544 = load i32, i32* %14, align 4
  %545 = load i32, i32* %18, align 4
  %546 = load i32, i32* @E1HVN_MAX, align 4
  %547 = mul nsw i32 %545, %546
  %548 = icmp slt i32 %544, %547
  br i1 %548, label %549, label %563

549:                                              ; preds = %543
  %550 = load i32, i32* @IGU_REG_PROD_CONS_MEMORY, align 4
  %551 = load i32, i32* %20, align 4
  %552 = load i32, i32* %14, align 4
  %553 = add nsw i32 %551, %552
  %554 = mul nsw i32 %553, 4
  %555 = add nsw i32 %550, %554
  store i32 %555, i32* %9, align 4
  %556 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %557 = load i32, i32* %9, align 4
  %558 = call i32 @REG_WR(%struct.bxe_softc* %556, i32 %557, i32 0)
  br label %559

559:                                              ; preds = %549
  %560 = load i32, i32* @E1HVN_MAX, align 4
  %561 = load i32, i32* %14, align 4
  %562 = add nsw i32 %561, %560
  store i32 %562, i32* %14, align 4
  br label %543

563:                                              ; preds = %543
  %564 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %565 = call i64 @CHIP_INT_MODE_IS_BC(%struct.bxe_softc* %564)
  %566 = icmp ne i64 %565, 0
  br i1 %566, label %567, label %603

567:                                              ; preds = %563
  %568 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %569 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %570 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %569, i32 0, i32 4
  %571 = load i32, i32* %570, align 4
  %572 = load i32, i32* @USTORM_ID, align 4
  %573 = load i32, i32* @IGU_INT_NOP, align 4
  %574 = call i32 @bxe_ack_sb(%struct.bxe_softc* %568, i32 %571, i32 %572, i32 0, i32 %573, i32 1)
  %575 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %576 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %577 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %576, i32 0, i32 4
  %578 = load i32, i32* %577, align 4
  %579 = load i32, i32* @CSTORM_ID, align 4
  %580 = load i32, i32* @IGU_INT_NOP, align 4
  %581 = call i32 @bxe_ack_sb(%struct.bxe_softc* %575, i32 %578, i32 %579, i32 0, i32 %580, i32 1)
  %582 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %583 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %584 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %583, i32 0, i32 4
  %585 = load i32, i32* %584, align 4
  %586 = load i32, i32* @XSTORM_ID, align 4
  %587 = load i32, i32* @IGU_INT_NOP, align 4
  %588 = call i32 @bxe_ack_sb(%struct.bxe_softc* %582, i32 %585, i32 %586, i32 0, i32 %587, i32 1)
  %589 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %590 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %591 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %590, i32 0, i32 4
  %592 = load i32, i32* %591, align 4
  %593 = load i32, i32* @TSTORM_ID, align 4
  %594 = load i32, i32* @IGU_INT_NOP, align 4
  %595 = call i32 @bxe_ack_sb(%struct.bxe_softc* %589, i32 %592, i32 %593, i32 0, i32 %594, i32 1)
  %596 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %597 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %598 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %597, i32 0, i32 4
  %599 = load i32, i32* %598, align 4
  %600 = load i32, i32* @ATTENTION_ID, align 4
  %601 = load i32, i32* @IGU_INT_NOP, align 4
  %602 = call i32 @bxe_ack_sb(%struct.bxe_softc* %596, i32 %599, i32 %600, i32 0, i32 %601, i32 1)
  br label %618

603:                                              ; preds = %563
  %604 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %605 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %606 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %605, i32 0, i32 4
  %607 = load i32, i32* %606, align 4
  %608 = load i32, i32* @USTORM_ID, align 4
  %609 = load i32, i32* @IGU_INT_NOP, align 4
  %610 = call i32 @bxe_ack_sb(%struct.bxe_softc* %604, i32 %607, i32 %608, i32 0, i32 %609, i32 1)
  %611 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %612 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %613 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %612, i32 0, i32 4
  %614 = load i32, i32* %613, align 4
  %615 = load i32, i32* @ATTENTION_ID, align 4
  %616 = load i32, i32* @IGU_INT_NOP, align 4
  %617 = call i32 @bxe_ack_sb(%struct.bxe_softc* %611, i32 %614, i32 %615, i32 0, i32 %616, i32 1)
  br label %618

618:                                              ; preds = %603, %567
  %619 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %620 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %621 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %620, i32 0, i32 4
  %622 = load i32, i32* %621, align 4
  %623 = call i32 @bxe_igu_clear_sb(%struct.bxe_softc* %619, i32 %622)
  %624 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %625 = load i32, i32* @IGU_REG_SB_INT_BEFORE_MASK_LSB, align 4
  %626 = call i32 @REG_WR(%struct.bxe_softc* %624, i32 %625, i32 0)
  %627 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %628 = load i32, i32* @IGU_REG_SB_INT_BEFORE_MASK_MSB, align 4
  %629 = call i32 @REG_WR(%struct.bxe_softc* %627, i32 %628, i32 0)
  %630 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %631 = load i32, i32* @IGU_REG_SB_MASK_LSB, align 4
  %632 = call i32 @REG_WR(%struct.bxe_softc* %630, i32 %631, i32 0)
  %633 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %634 = load i32, i32* @IGU_REG_SB_MASK_MSB, align 4
  %635 = call i32 @REG_WR(%struct.bxe_softc* %633, i32 %634, i32 0)
  %636 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %637 = load i32, i32* @IGU_REG_PBA_STATUS_LSB, align 4
  %638 = call i32 @REG_WR(%struct.bxe_softc* %636, i32 %637, i32 0)
  %639 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %640 = load i32, i32* @IGU_REG_PBA_STATUS_MSB, align 4
  %641 = call i32 @REG_WR(%struct.bxe_softc* %639, i32 %640, i32 0)
  br label %642

642:                                              ; preds = %618, %441
  br label %643

643:                                              ; preds = %642, %419
  %644 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %645 = call i32 @REG_WR(%struct.bxe_softc* %644, i32 8468, i32 -1)
  %646 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %647 = call i32 @REG_WR(%struct.bxe_softc* %646, i32 8480, i32 -1)
  %648 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %649 = call i64 @CHIP_IS_E1x(%struct.bxe_softc* %648)
  %650 = icmp ne i64 %649, 0
  br i1 %650, label %651, label %703

651:                                              ; preds = %643
  %652 = load i32, i32* @HC_REG_MAIN_MEMORY_SIZE, align 4
  %653 = sdiv i32 %652, 2
  store i32 %653, i32* %12, align 4
  %654 = load i32, i32* @HC_REG_MAIN_MEMORY, align 4
  %655 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %656 = call i32 @SC_PORT(%struct.bxe_softc* %655)
  %657 = load i32, i32* %12, align 4
  %658 = mul nsw i32 %657, 4
  %659 = mul nsw i32 %656, %658
  %660 = add nsw i32 %654, %659
  store i32 %660, i32* %11, align 4
  %661 = load i32, i32* @HC_REG_HC_PRTY_STS_CLR, align 4
  store i32 %661, i32* %13, align 4
  store i32 8, i32* %15, align 4
  %662 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %663 = load i32, i32* %13, align 4
  %664 = call i32 @REG_RD(%struct.bxe_softc* %662, i32 %663)
  store i32 %664, i32* %10, align 4
  %665 = load i32, i32* %10, align 4
  %666 = icmp ne i32 %665, 0
  br i1 %666, label %667, label %672

667:                                              ; preds = %651
  %668 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %669 = load i32, i32* @DBG_LOAD, align 4
  %670 = load i32, i32* %10, align 4
  %671 = call i32 (%struct.bxe_softc*, i32, i8*, ...) @BLOGD(%struct.bxe_softc* %668, i32 %669, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %670)
  br label %672

672:                                              ; preds = %667, %651
  %673 = load i32, i32* %11, align 4
  store i32 %673, i32* %14, align 4
  br label %674

674:                                              ; preds = %695, %672
  %675 = load i32, i32* %14, align 4
  %676 = load i32, i32* %11, align 4
  %677 = load i32, i32* %12, align 4
  %678 = mul nsw i32 %677, 4
  %679 = add nsw i32 %676, %678
  %680 = icmp slt i32 %675, %679
  br i1 %680, label %681, label %699

681:                                              ; preds = %674
  %682 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %683 = load i32, i32* %14, align 4
  %684 = load i32, i32* %15, align 4
  %685 = sdiv i32 %684, 4
  %686 = call i32 @bxe_read_dmae(%struct.bxe_softc* %682, i32 %683, i32 %685)
  %687 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %688 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %689 = load i32, i32* @wb_data, align 4
  %690 = call i32 @BXE_SP_MAPPING(%struct.bxe_softc* %688, i32 %689)
  %691 = load i32, i32* %14, align 4
  %692 = load i32, i32* %15, align 4
  %693 = sdiv i32 %692, 4
  %694 = call i32 @bxe_write_dmae(%struct.bxe_softc* %687, i32 %690, i32 %691, i32 %693)
  br label %695

695:                                              ; preds = %681
  %696 = load i32, i32* %15, align 4
  %697 = load i32, i32* %14, align 4
  %698 = add nsw i32 %697, %696
  store i32 %698, i32* %14, align 4
  br label %674

699:                                              ; preds = %674
  %700 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %701 = load i32, i32* %13, align 4
  %702 = call i32 @REG_RD(%struct.bxe_softc* %700, i32 %701)
  br label %703

703:                                              ; preds = %699, %643
  %704 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %705 = load i64, i64* @BAR_USTRORM_INTMEM, align 8
  %706 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %707 = call i32 @SC_FUNC(%struct.bxe_softc* %706)
  %708 = call i64 @USTORM_RECORD_SLOW_PATH_OFFSET(i32 %707)
  %709 = add nsw i64 %705, %708
  %710 = call i32 @REG_WR8(%struct.bxe_softc* %704, i64 %709, i32 1)
  %711 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %712 = load i64, i64* @BAR_TSTRORM_INTMEM, align 8
  %713 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %714 = call i32 @SC_FUNC(%struct.bxe_softc* %713)
  %715 = call i64 @TSTORM_RECORD_SLOW_PATH_OFFSET(i32 %714)
  %716 = add nsw i64 %712, %715
  %717 = call i32 @REG_WR8(%struct.bxe_softc* %711, i64 %716, i32 1)
  %718 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %719 = load i64, i64* @BAR_CSTRORM_INTMEM, align 8
  %720 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %721 = call i32 @SC_FUNC(%struct.bxe_softc* %720)
  %722 = call i64 @CSTORM_RECORD_SLOW_PATH_OFFSET(i32 %721)
  %723 = add nsw i64 %719, %722
  %724 = call i32 @REG_WR8(%struct.bxe_softc* %718, i64 %723, i32 1)
  %725 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %726 = load i64, i64* @BAR_XSTRORM_INTMEM, align 8
  %727 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %728 = call i32 @SC_FUNC(%struct.bxe_softc* %727)
  %729 = call i64 @XSTORM_RECORD_SLOW_PATH_OFFSET(i32 %728)
  %730 = add nsw i64 %726, %729
  %731 = call i32 @REG_WR8(%struct.bxe_softc* %725, i64 %730, i32 1)
  %732 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %733 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %732, i32 0, i32 5
  %734 = call i32 @elink_phy_probe(i32* %733)
  store i32 0, i32* %2, align 4
  br label %735

735:                                              ; preds = %703, %44
  %736 = load i32, i32* %2, align 4
  ret i32 %736
}

declare dso_local i32 @SC_PORT(%struct.bxe_softc*) #1

declare dso_local i32 @SC_FUNC(%struct.bxe_softc*) #1

declare dso_local i32 @BLOGD(%struct.bxe_softc*, i32, i8*, ...) #1

declare dso_local i64 @CHIP_IS_E1x(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_pf_flr_clnup(%struct.bxe_softc*) #1

declare dso_local i32 @BLOGE(%struct.bxe_softc*, i8*) #1

declare dso_local i32 @REG_RD(%struct.bxe_softc*, i32) #1

declare dso_local i32 @REG_WR(%struct.bxe_softc*, i32, i32) #1

declare dso_local i32 @ecore_init_block(%struct.bxe_softc*, i32, i32) #1

declare dso_local i32 @L2_ILT_LINES(%struct.bxe_softc*) #1

declare dso_local i32 @ecore_ilt_init_op(%struct.bxe_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @bxe_iov_init_dq(%struct.bxe_softc*) #1

declare dso_local i64 @IS_MF(%struct.bxe_softc*) #1

declare dso_local i32 @OVLAN(%struct.bxe_softc*) #1

declare dso_local i64 @CHIP_IS_E1H(%struct.bxe_softc*) #1

declare dso_local i64 @CHIP_INT_MODE_IS_BC(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_ack_sb(%struct.bxe_softc*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @bxe_igu_clear_sb(%struct.bxe_softc*, i32) #1

declare dso_local i64 @CHIP_IS_MODE_4_PORT(%struct.bxe_softc*) #1

declare dso_local i32 @SC_VN(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_read_dmae(%struct.bxe_softc*, i32, i32) #1

declare dso_local i32 @bxe_write_dmae(%struct.bxe_softc*, i32, i32, i32) #1

declare dso_local i32 @BXE_SP_MAPPING(%struct.bxe_softc*, i32) #1

declare dso_local i32 @REG_WR8(%struct.bxe_softc*, i64, i32) #1

declare dso_local i64 @USTORM_RECORD_SLOW_PATH_OFFSET(i32) #1

declare dso_local i64 @TSTORM_RECORD_SLOW_PATH_OFFSET(i32) #1

declare dso_local i64 @CSTORM_RECORD_SLOW_PATH_OFFSET(i32) #1

declare dso_local i64 @XSTORM_RECORD_SLOW_PATH_OFFSET(i32) #1

declare dso_local i32 @elink_phy_probe(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
