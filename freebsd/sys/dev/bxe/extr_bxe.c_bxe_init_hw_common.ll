; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_init_hw_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_init_hw_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ilt_client_info = type { i32, i64, i64 }
%struct.ecore_ilt = type { i32, i64, i64 }

@DBG_LOAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"starting common init for func %d\0A\00", align 1
@HW_LOCK_RESOURCE_RESET = common dso_local global i32 0, align 4
@GRCBASE_MISC = common dso_local global i32 0, align 4
@MISC_REGISTERS_RESET_REG_1_SET = common dso_local global i32 0, align 4
@MISC_REGISTERS_RESET_REG_2_MSTAT0 = common dso_local global i32 0, align 4
@MISC_REGISTERS_RESET_REG_2_MSTAT1 = common dso_local global i32 0, align 4
@MISC_REGISTERS_RESET_REG_2_SET = common dso_local global i32 0, align 4
@BLOCK_MISC = common dso_local global i32 0, align 4
@PHASE_COMMON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"after misc block init\0A\00", align 1
@E2_FUNC_MAX = common dso_local global i32 0, align 4
@PGLUE_B_REG_INTERNAL_PFID_ENABLE_MASTER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"after pf disable\0A\00", align 1
@BLOCK_PXP = common dso_local global i32 0, align 4
@PXP_REG_PXP_INT_MASK_0 = common dso_local global i32 0, align 4
@BLOCK_PXP2 = common dso_local global i32 0, align 4
@INITOP_SET = common dso_local global i32 0, align 4
@PXP2_REG_PGL_TAGS_LIMIT = common dso_local global i32 0, align 4
@PXP2_REG_RQ_CFG_DONE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"PXP2 CFG failed PXP2_REG_RQ_CFG_DONE val = 0x%x\0A\00", align 1
@PXP2_REG_RD_INIT_DONE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"PXP2 RD_INIT failed val = 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"after pxp init\0A\00", align 1
@ILT_NUM_PAGE_ENTRIES = common dso_local global i64 0, align 8
@ILT_CLIENT_TM = common dso_local global i32 0, align 4
@INITOP_CLEAR = common dso_local global i32 0, align 4
@PXP2_REG_RQ_DRAM_ALIGN = common dso_local global i32 0, align 4
@BXE_PXP_DRAM_ALIGN = common dso_local global i32 0, align 4
@PXP2_REG_RQ_DRAM_ALIGN_RD = common dso_local global i32 0, align 4
@PXP2_REG_RQ_DRAM_ALIGN_SEL = common dso_local global i32 0, align 4
@PXP2_REG_RQ_DISABLE_INPUTS = common dso_local global i32 0, align 4
@PXP2_REG_RD_DISABLE_INPUTS = common dso_local global i32 0, align 4
@BLOCK_PGLUE_B = common dso_local global i32 0, align 4
@BLOCK_ATC = common dso_local global i32 0, align 4
@ATC_REG_ATC_INIT_DONE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"ATC_INIT failed val = 0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"after pglue and atc init\0A\00", align 1
@BLOCK_DMAE = common dso_local global i32 0, align 4
@TSEM_REG_PRAM = common dso_local global i32 0, align 4
@BLOCK_TCM = common dso_local global i32 0, align 4
@BLOCK_UCM = common dso_local global i32 0, align 4
@BLOCK_CCM = common dso_local global i32 0, align 4
@BLOCK_XCM = common dso_local global i32 0, align 4
@XSEM_REG_PASSIVE_BUFFER = common dso_local global i32 0, align 4
@CSEM_REG_PASSIVE_BUFFER = common dso_local global i32 0, align 4
@TSEM_REG_PASSIVE_BUFFER = common dso_local global i32 0, align 4
@USEM_REG_PASSIVE_BUFFER = common dso_local global i32 0, align 4
@BLOCK_QM = common dso_local global i32 0, align 4
@QM_REG_SOFT_RESET = common dso_local global i32 0, align 4
@BLOCK_TM = common dso_local global i32 0, align 4
@BLOCK_DORQ = common dso_local global i32 0, align 4
@DORQ_REG_DPM_CID_OFST = common dso_local global i32 0, align 4
@BXE_DB_SHIFT = common dso_local global i32 0, align 4
@DORQ_REG_DORQ_INT_MASK = common dso_local global i32 0, align 4
@BLOCK_BRB1 = common dso_local global i32 0, align 4
@BLOCK_PRS = common dso_local global i32 0, align 4
@PRS_REG_A_PRSU_20 = common dso_local global i32 0, align 4
@PRS_REG_E1HOV_MODE = common dso_local global i32 0, align 4
@PRS_REG_HDRS_AFTER_BASIC = common dso_local global i32 0, align 4
@PRS_REG_MUST_HAVE_HDRS = common dso_local global i32 0, align 4
@PRS_REG_HDRS_AFTER_TAG_0 = common dso_local global i32 0, align 4
@PRS_REG_TAG_ETHERTYPE_0 = common dso_local global i32 0, align 4
@PRS_REG_TAG_LEN_0 = common dso_local global i32 0, align 4
@BLOCK_TSDM = common dso_local global i32 0, align 4
@BLOCK_CSDM = common dso_local global i32 0, align 4
@BLOCK_USDM = common dso_local global i32 0, align 4
@BLOCK_XSDM = common dso_local global i32 0, align 4
@TSEM_REG_FAST_MEMORY = common dso_local global i32 0, align 4
@VFC_REG_MEMORIES_RST = common dso_local global i32 0, align 4
@VFC_MEMORIES_RST_REG_CAM_RST = common dso_local global i32 0, align 4
@VFC_MEMORIES_RST_REG_RAM_RST = common dso_local global i32 0, align 4
@XSEM_REG_FAST_MEMORY = common dso_local global i32 0, align 4
@BLOCK_TSEM = common dso_local global i32 0, align 4
@BLOCK_USEM = common dso_local global i32 0, align 4
@BLOCK_CSEM = common dso_local global i32 0, align 4
@BLOCK_XSEM = common dso_local global i32 0, align 4
@MISC_REGISTERS_RESET_REG_1_CLEAR = common dso_local global i32 0, align 4
@BLOCK_UPB = common dso_local global i32 0, align 4
@BLOCK_XPB = common dso_local global i32 0, align 4
@BLOCK_PBF = common dso_local global i32 0, align 4
@PBF_REG_HDRS_AFTER_BASIC = common dso_local global i32 0, align 4
@PBF_REG_MUST_HAVE_HDRS = common dso_local global i32 0, align 4
@PBF_REG_HDRS_AFTER_TAG_0 = common dso_local global i32 0, align 4
@PBF_REG_TAG_ETHERTYPE_0 = common dso_local global i32 0, align 4
@PBF_REG_TAG_LEN_0 = common dso_local global i32 0, align 4
@SRC_REG_SOFT_RST = common dso_local global i32 0, align 4
@BLOCK_SRC = common dso_local global i32 0, align 4
@SRC_REG_KEYSEARCH_0 = common dso_local global i32 0, align 4
@SRC_REG_KEYSEARCH_1 = common dso_local global i32 0, align 4
@SRC_REG_KEYSEARCH_2 = common dso_local global i32 0, align 4
@SRC_REG_KEYSEARCH_3 = common dso_local global i32 0, align 4
@SRC_REG_KEYSEARCH_4 = common dso_local global i32 0, align 4
@SRC_REG_KEYSEARCH_5 = common dso_local global i32 0, align 4
@SRC_REG_KEYSEARCH_6 = common dso_local global i32 0, align 4
@SRC_REG_KEYSEARCH_7 = common dso_local global i32 0, align 4
@SRC_REG_KEYSEARCH_8 = common dso_local global i32 0, align 4
@SRC_REG_KEYSEARCH_9 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [44 x i8] c"please adjust the size of cdu_context(%ld)\0A\00", align 1
@BLOCK_CDU = common dso_local global i32 0, align 4
@CDU_REG_CDU_GLOBAL_PARAMS = common dso_local global i32 0, align 4
@BLOCK_CFC = common dso_local global i32 0, align 4
@CFC_REG_INIT_REG = common dso_local global i32 0, align 4
@CFC_REG_CFC_INT_MASK = common dso_local global i32 0, align 4
@CFC_REG_DEBUG0 = common dso_local global i32 0, align 4
@BLOCK_HC = common dso_local global i32 0, align 4
@IGU_REG_RESET_MEMORIES = common dso_local global i32 0, align 4
@BLOCK_IGU = common dso_local global i32 0, align 4
@BLOCK_MISC_AEU = common dso_local global i32 0, align 4
@PCICFG_OFFSET = common dso_local global i32 0, align 4
@PXPCS_TL_CONTROL_5 = common dso_local global i32 0, align 4
@PXPCS_TL_CONTROL_5_ERR_UNSPPORT1 = common dso_local global i32 0, align 4
@PXPCS_TL_CONTROL_5_ERR_UNSPPORT = common dso_local global i32 0, align 4
@PXPCS_TL_FUNC345_STAT = common dso_local global i32 0, align 4
@PXPCS_TL_FUNC345_STAT_ERR_UNSPPORT4 = common dso_local global i32 0, align 4
@PXPCS_TL_FUNC345_STAT_ERR_UNSPPORT3 = common dso_local global i32 0, align 4
@PXPCS_TL_FUNC345_STAT_ERR_UNSPPORT2 = common dso_local global i32 0, align 4
@PXPCS_TL_FUNC678_STAT = common dso_local global i32 0, align 4
@PXPCS_TL_FUNC678_STAT_ERR_UNSPPORT7 = common dso_local global i32 0, align 4
@PXPCS_TL_FUNC678_STAT_ERR_UNSPPORT6 = common dso_local global i32 0, align 4
@PXPCS_TL_FUNC678_STAT_ERR_UNSPPORT5 = common dso_local global i32 0, align 4
@BLOCK_NIG = common dso_local global i32 0, align 4
@NIG_REG_LLH_MF_MODE = common dso_local global i32 0, align 4
@NIG_REG_LLH_E1HOV_MODE = common dso_local global i32 0, align 4
@CFC_REG_LL_INIT_DONE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [29 x i8] c"CFC LL_INIT failed val=0x%x\0A\00", align 1
@CFC_REG_AC_INIT_DONE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [29 x i8] c"CFC AC_INIT failed val=0x%x\0A\00", align 1
@CFC_REG_CAM_INIT_DONE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [30 x i8] c"CFC CAM_INIT failed val=0x%x\0A\00", align 1
@NIG_REG_STAT2_BRB_OCTET = common dso_local global i32 0, align 4
@wb_data = common dso_local global i32* null, align 8
@.str.12 = private unnamed_addr constant [40 x i8] c"internal mem self test failed val=0x%x\0A\00", align 1
@PXP2_REG_PXP2_INT_STS_CLR_0 = common dso_local global i32 0, align 4
@PXP2_REG_RD_CDURD_SWAP_MODE = common dso_local global i32 0, align 4
@PXP2_REG_RD_QM_SWAP_MODE = common dso_local global i32 0, align 4
@PXP2_REG_RD_SRC_SWAP_MODE = common dso_local global i32 0, align 4
@PXP2_REG_RD_TM_SWAP_MODE = common dso_local global i32 0, align 4
@PXP2_REG_RQ_CDU_ENDIAN_M = common dso_local global i32 0, align 4
@PXP2_REG_RQ_DBG_ENDIAN_M = common dso_local global i32 0, align 4
@PXP2_REG_RQ_HC_ENDIAN_M = common dso_local global i32 0, align 4
@PXP2_REG_RQ_QM_ENDIAN_M = common dso_local global i32 0, align 4
@PXP2_REG_RQ_SRC_ENDIAN_M = common dso_local global i32 0, align 4
@PXP2_REG_RQ_TM_ENDIAN_M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*)* @bxe_init_hw_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_init_hw_common(%struct.bxe_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bxe_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ilt_client_info, align 8
  %7 = alloca %struct.ecore_ilt, align 8
  %8 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %3, align 8
  %9 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %10 = load i32, i32* @DBG_LOAD, align 4
  %11 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %12 = call i32 @SC_ABS_FUNC(%struct.bxe_softc* %11)
  %13 = call i32 (%struct.bxe_softc*, i32, i8*, ...) @BLOGD(%struct.bxe_softc* %9, i32 %10, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %15 = load i32, i32* @HW_LOCK_RESOURCE_RESET, align 4
  %16 = call i32 @bxe_acquire_hw_lock(%struct.bxe_softc* %14, i32 %15)
  %17 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %18 = call i32 @bxe_reset_common(%struct.bxe_softc* %17)
  %19 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %20 = load i32, i32* @GRCBASE_MISC, align 4
  %21 = load i32, i32* @MISC_REGISTERS_RESET_REG_1_SET, align 4
  %22 = add nsw i32 %20, %21
  %23 = call i32 @REG_WR(%struct.bxe_softc* %19, i32 %22, i32 -1)
  store i32 65532, i32* %5, align 4
  %24 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %25 = call i64 @CHIP_IS_E3(%struct.bxe_softc* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %1
  %28 = load i32, i32* @MISC_REGISTERS_RESET_REG_2_MSTAT0, align 4
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* @MISC_REGISTERS_RESET_REG_2_MSTAT1, align 4
  %32 = load i32, i32* %5, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %27, %1
  %35 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %36 = load i32, i32* @GRCBASE_MISC, align 4
  %37 = load i32, i32* @MISC_REGISTERS_RESET_REG_2_SET, align 4
  %38 = add nsw i32 %36, %37
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @REG_WR(%struct.bxe_softc* %35, i32 %38, i32 %39)
  %41 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %42 = load i32, i32* @HW_LOCK_RESOURCE_RESET, align 4
  %43 = call i32 @bxe_release_hw_lock(%struct.bxe_softc* %41, i32 %42)
  %44 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %45 = load i32, i32* @BLOCK_MISC, align 4
  %46 = load i32, i32* @PHASE_COMMON, align 4
  %47 = call i32 @ecore_init_block(%struct.bxe_softc* %44, i32 %45, i32 %46)
  %48 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %49 = load i32, i32* @DBG_LOAD, align 4
  %50 = call i32 (%struct.bxe_softc*, i32, i8*, ...) @BLOGD(%struct.bxe_softc* %48, i32 %49, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %51 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %52 = call i64 @CHIP_IS_E1x(%struct.bxe_softc* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %85, label %54

54:                                               ; preds = %34
  %55 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %56 = call i32 @SC_PATH(%struct.bxe_softc* %55)
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %81, %54
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @E2_FUNC_MAX, align 4
  %60 = mul nsw i32 %59, 2
  %61 = icmp slt i32 %58, %60
  br i1 %61, label %62, label %84

62:                                               ; preds = %57
  %63 = load i32, i32* %4, align 4
  %64 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %65 = call i32 @SC_ABS_FUNC(%struct.bxe_softc* %64)
  %66 = icmp eq i32 %63, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %69 = load i32, i32* @PGLUE_B_REG_INTERNAL_PFID_ENABLE_MASTER, align 4
  %70 = call i32 @REG_WR(%struct.bxe_softc* %68, i32 %69, i32 1)
  br label %81

71:                                               ; preds = %62
  %72 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @bxe_pretend_func(%struct.bxe_softc* %72, i32 %73)
  %75 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %76 = call i32 @bxe_pf_disable(%struct.bxe_softc* %75)
  %77 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %78 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %79 = call i32 @SC_ABS_FUNC(%struct.bxe_softc* %78)
  %80 = call i32 @bxe_pretend_func(%struct.bxe_softc* %77, i32 %79)
  br label %81

81:                                               ; preds = %71, %67
  %82 = load i32, i32* %4, align 4
  %83 = add nsw i32 %82, 2
  store i32 %83, i32* %4, align 4
  br label %57

84:                                               ; preds = %57
  br label %85

85:                                               ; preds = %84, %34
  %86 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %87 = load i32, i32* @DBG_LOAD, align 4
  %88 = call i32 (%struct.bxe_softc*, i32, i8*, ...) @BLOGD(%struct.bxe_softc* %86, i32 %87, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %89 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %90 = load i32, i32* @BLOCK_PXP, align 4
  %91 = load i32, i32* @PHASE_COMMON, align 4
  %92 = call i32 @ecore_init_block(%struct.bxe_softc* %89, i32 %90, i32 %91)
  %93 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %94 = call i64 @CHIP_IS_E1(%struct.bxe_softc* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %85
  %97 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %98 = load i32, i32* @PXP_REG_PXP_INT_MASK_0, align 4
  %99 = call i32 @REG_WR(%struct.bxe_softc* %97, i32 %98, i32 0)
  br label %100

100:                                              ; preds = %96, %85
  %101 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %102 = load i32, i32* @BLOCK_PXP2, align 4
  %103 = load i32, i32* @PHASE_COMMON, align 4
  %104 = call i32 @ecore_init_block(%struct.bxe_softc* %101, i32 %102, i32 %103)
  %105 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %106 = call i32 @bxe_init_pxp(%struct.bxe_softc* %105)
  %107 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %108 = load i32, i32* @INITOP_SET, align 4
  %109 = call i32 @ecore_ilt_init_page_size(%struct.bxe_softc* %107, i32 %108)
  %110 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %111 = call i64 @CHIP_REV_IS_FPGA(%struct.bxe_softc* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %100
  %114 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %115 = call i64 @CHIP_IS_E1H(%struct.bxe_softc* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %113
  %118 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %119 = load i32, i32* @PXP2_REG_PGL_TAGS_LIMIT, align 4
  %120 = call i32 @REG_WR(%struct.bxe_softc* %118, i32 %119, i32 1)
  br label %121

121:                                              ; preds = %117, %113, %100
  %122 = call i32 @DELAY(i32 100000)
  %123 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %124 = load i32, i32* @PXP2_REG_RQ_CFG_DONE, align 4
  %125 = call i32 @REG_RD(%struct.bxe_softc* %123, i32 %124)
  store i32 %125, i32* %5, align 4
  %126 = load i32, i32* %5, align 4
  %127 = icmp ne i32 %126, 1
  br i1 %127, label %128, label %132

128:                                              ; preds = %121
  %129 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %130 = load i32, i32* %5, align 4
  %131 = call i32 @BLOGE(%struct.bxe_softc* %129, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %130)
  store i32 -1, i32* %2, align 4
  br label %746

132:                                              ; preds = %121
  %133 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %134 = load i32, i32* @PXP2_REG_RD_INIT_DONE, align 4
  %135 = call i32 @REG_RD(%struct.bxe_softc* %133, i32 %134)
  store i32 %135, i32* %5, align 4
  %136 = load i32, i32* %5, align 4
  %137 = icmp ne i32 %136, 1
  br i1 %137, label %138, label %142

138:                                              ; preds = %132
  %139 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %140 = load i32, i32* %5, align 4
  %141 = call i32 @BLOGE(%struct.bxe_softc* %139, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %140)
  store i32 -1, i32* %2, align 4
  br label %746

142:                                              ; preds = %132
  %143 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %144 = load i32, i32* @DBG_LOAD, align 4
  %145 = call i32 (%struct.bxe_softc*, i32, i8*, ...) @BLOGD(%struct.bxe_softc* %143, i32 %144, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %146 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %147 = call i64 @CHIP_IS_E1x(%struct.bxe_softc* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %183, label %149

149:                                              ; preds = %142
  %150 = call i32 @memset(%struct.ilt_client_info* %6, i32 0, i32 24)
  %151 = bitcast %struct.ecore_ilt* %7 to %struct.ilt_client_info*
  %152 = call i32 @memset(%struct.ilt_client_info* %151, i32 0, i32 24)
  %153 = getelementptr inbounds %struct.ilt_client_info, %struct.ilt_client_info* %6, i32 0, i32 2
  store i64 0, i64* %153, align 8
  %154 = load i64, i64* @ILT_NUM_PAGE_ENTRIES, align 8
  %155 = sub nsw i64 %154, 1
  %156 = getelementptr inbounds %struct.ilt_client_info, %struct.ilt_client_info* %6, i32 0, i32 1
  store i64 %155, i64* %156, align 8
  %157 = load i32, i32* @ILT_CLIENT_TM, align 4
  %158 = getelementptr inbounds %struct.ilt_client_info, %struct.ilt_client_info* %6, i32 0, i32 0
  store i32 %157, i32* %158, align 8
  %159 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %160 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %161 = call i32 @SC_PATH(%struct.bxe_softc* %160)
  %162 = add nsw i32 %161, 6
  %163 = call i32 @bxe_pretend_func(%struct.bxe_softc* %159, i32 %162)
  %164 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %165 = bitcast %struct.ecore_ilt* %7 to %struct.ilt_client_info*
  %166 = load i32, i32* @INITOP_CLEAR, align 4
  %167 = call i32 @ecore_ilt_client_init_op_ilt(%struct.bxe_softc* %164, %struct.ilt_client_info* %165, %struct.ilt_client_info* %6, i32 %166)
  %168 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %169 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %170 = call i32 @SC_ABS_FUNC(%struct.bxe_softc* %169)
  %171 = call i32 @bxe_pretend_func(%struct.bxe_softc* %168, i32 %170)
  %172 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %173 = load i32, i32* @PXP2_REG_RQ_DRAM_ALIGN, align 4
  %174 = load i32, i32* @BXE_PXP_DRAM_ALIGN, align 4
  %175 = call i32 @REG_WR(%struct.bxe_softc* %172, i32 %173, i32 %174)
  %176 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %177 = load i32, i32* @PXP2_REG_RQ_DRAM_ALIGN_RD, align 4
  %178 = load i32, i32* @BXE_PXP_DRAM_ALIGN, align 4
  %179 = call i32 @REG_WR(%struct.bxe_softc* %176, i32 %177, i32 %178)
  %180 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %181 = load i32, i32* @PXP2_REG_RQ_DRAM_ALIGN_SEL, align 4
  %182 = call i32 @REG_WR(%struct.bxe_softc* %180, i32 %181, i32 1)
  br label %183

183:                                              ; preds = %149, %142
  %184 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %185 = load i32, i32* @PXP2_REG_RQ_DISABLE_INPUTS, align 4
  %186 = call i32 @REG_WR(%struct.bxe_softc* %184, i32 %185, i32 0)
  %187 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %188 = load i32, i32* @PXP2_REG_RD_DISABLE_INPUTS, align 4
  %189 = call i32 @REG_WR(%struct.bxe_softc* %187, i32 %188, i32 0)
  %190 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %191 = call i64 @CHIP_IS_E1x(%struct.bxe_softc* %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %236, label %193

193:                                              ; preds = %183
  %194 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %195 = call i64 @CHIP_REV_IS_EMUL(%struct.bxe_softc* %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %193
  br label %204

198:                                              ; preds = %193
  %199 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %200 = call i64 @CHIP_REV_IS_FPGA(%struct.bxe_softc* %199)
  %201 = icmp ne i64 %200, 0
  %202 = zext i1 %201 to i64
  %203 = select i1 %201, i32 400, i32 0
  br label %204

204:                                              ; preds = %198, %197
  %205 = phi i32 [ 1000, %197 ], [ %203, %198 ]
  store i32 %205, i32* %8, align 4
  %206 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %207 = load i32, i32* @BLOCK_PGLUE_B, align 4
  %208 = load i32, i32* @PHASE_COMMON, align 4
  %209 = call i32 @ecore_init_block(%struct.bxe_softc* %206, i32 %207, i32 %208)
  %210 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %211 = load i32, i32* @BLOCK_ATC, align 4
  %212 = load i32, i32* @PHASE_COMMON, align 4
  %213 = call i32 @ecore_init_block(%struct.bxe_softc* %210, i32 %211, i32 %212)
  br label %214

214:                                              ; preds = %226, %204
  %215 = call i32 @DELAY(i32 200000)
  %216 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %217 = load i32, i32* @ATC_REG_ATC_INIT_DONE, align 4
  %218 = call i32 @REG_RD(%struct.bxe_softc* %216, i32 %217)
  store i32 %218, i32* %5, align 4
  br label %219

219:                                              ; preds = %214
  %220 = load i32, i32* %8, align 4
  %221 = add nsw i32 %220, -1
  store i32 %221, i32* %8, align 4
  %222 = icmp ne i32 %220, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %219
  %224 = load i32, i32* %5, align 4
  %225 = icmp ne i32 %224, 1
  br label %226

226:                                              ; preds = %223, %219
  %227 = phi i1 [ false, %219 ], [ %225, %223 ]
  br i1 %227, label %214, label %228

228:                                              ; preds = %226
  %229 = load i32, i32* %5, align 4
  %230 = icmp ne i32 %229, 1
  br i1 %230, label %231, label %235

231:                                              ; preds = %228
  %232 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %233 = load i32, i32* %5, align 4
  %234 = call i32 @BLOGE(%struct.bxe_softc* %232, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %233)
  store i32 -1, i32* %2, align 4
  br label %746

235:                                              ; preds = %228
  br label %236

236:                                              ; preds = %235, %183
  %237 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %238 = load i32, i32* @DBG_LOAD, align 4
  %239 = call i32 (%struct.bxe_softc*, i32, i8*, ...) @BLOGD(%struct.bxe_softc* %237, i32 %238, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %240 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %241 = load i32, i32* @BLOCK_DMAE, align 4
  %242 = load i32, i32* @PHASE_COMMON, align 4
  %243 = call i32 @ecore_init_block(%struct.bxe_softc* %240, i32 %241, i32 %242)
  %244 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %245 = call i32 @bxe_iov_init_dmae(%struct.bxe_softc* %244)
  %246 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %247 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %246, i32 0, i32 0
  store i32 1, i32* %247, align 4
  %248 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %249 = load i32, i32* @TSEM_REG_PRAM, align 4
  %250 = call i32 @ecore_init_fill(%struct.bxe_softc* %248, i32 %249, i32 0, i32 8, i32 1)
  %251 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %252 = load i32, i32* @BLOCK_TCM, align 4
  %253 = load i32, i32* @PHASE_COMMON, align 4
  %254 = call i32 @ecore_init_block(%struct.bxe_softc* %251, i32 %252, i32 %253)
  %255 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %256 = load i32, i32* @BLOCK_UCM, align 4
  %257 = load i32, i32* @PHASE_COMMON, align 4
  %258 = call i32 @ecore_init_block(%struct.bxe_softc* %255, i32 %256, i32 %257)
  %259 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %260 = load i32, i32* @BLOCK_CCM, align 4
  %261 = load i32, i32* @PHASE_COMMON, align 4
  %262 = call i32 @ecore_init_block(%struct.bxe_softc* %259, i32 %260, i32 %261)
  %263 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %264 = load i32, i32* @BLOCK_XCM, align 4
  %265 = load i32, i32* @PHASE_COMMON, align 4
  %266 = call i32 @ecore_init_block(%struct.bxe_softc* %263, i32 %264, i32 %265)
  %267 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %268 = load i32, i32* @XSEM_REG_PASSIVE_BUFFER, align 4
  %269 = call i32 @bxe_read_dmae(%struct.bxe_softc* %267, i32 %268, i32 3)
  %270 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %271 = load i32, i32* @CSEM_REG_PASSIVE_BUFFER, align 4
  %272 = call i32 @bxe_read_dmae(%struct.bxe_softc* %270, i32 %271, i32 3)
  %273 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %274 = load i32, i32* @TSEM_REG_PASSIVE_BUFFER, align 4
  %275 = call i32 @bxe_read_dmae(%struct.bxe_softc* %273, i32 %274, i32 3)
  %276 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %277 = load i32, i32* @USEM_REG_PASSIVE_BUFFER, align 4
  %278 = call i32 @bxe_read_dmae(%struct.bxe_softc* %276, i32 %277, i32 3)
  %279 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %280 = load i32, i32* @BLOCK_QM, align 4
  %281 = load i32, i32* @PHASE_COMMON, align 4
  %282 = call i32 @ecore_init_block(%struct.bxe_softc* %279, i32 %280, i32 %281)
  %283 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %284 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %285 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %284, i32 0, i32 2
  %286 = load i32, i32* %285, align 4
  %287 = load i32, i32* @INITOP_SET, align 4
  %288 = call i32 @ecore_qm_init_ptr_table(%struct.bxe_softc* %283, i32 %286, i32 %287)
  %289 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %290 = load i32, i32* @QM_REG_SOFT_RESET, align 4
  %291 = call i32 @REG_WR(%struct.bxe_softc* %289, i32 %290, i32 1)
  %292 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %293 = load i32, i32* @QM_REG_SOFT_RESET, align 4
  %294 = call i32 @REG_WR(%struct.bxe_softc* %292, i32 %293, i32 0)
  %295 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %296 = call i64 @CNIC_SUPPORT(%struct.bxe_softc* %295)
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %303

298:                                              ; preds = %236
  %299 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %300 = load i32, i32* @BLOCK_TM, align 4
  %301 = load i32, i32* @PHASE_COMMON, align 4
  %302 = call i32 @ecore_init_block(%struct.bxe_softc* %299, i32 %300, i32 %301)
  br label %303

303:                                              ; preds = %298, %236
  %304 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %305 = load i32, i32* @BLOCK_DORQ, align 4
  %306 = load i32, i32* @PHASE_COMMON, align 4
  %307 = call i32 @ecore_init_block(%struct.bxe_softc* %304, i32 %305, i32 %306)
  %308 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %309 = load i32, i32* @DORQ_REG_DPM_CID_OFST, align 4
  %310 = load i32, i32* @BXE_DB_SHIFT, align 4
  %311 = call i32 @REG_WR(%struct.bxe_softc* %308, i32 %309, i32 %310)
  %312 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %313 = call i64 @CHIP_REV_IS_SLOW(%struct.bxe_softc* %312)
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %319, label %315

315:                                              ; preds = %303
  %316 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %317 = load i32, i32* @DORQ_REG_DORQ_INT_MASK, align 4
  %318 = call i32 @REG_WR(%struct.bxe_softc* %316, i32 %317, i32 0)
  br label %319

319:                                              ; preds = %315, %303
  %320 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %321 = load i32, i32* @BLOCK_BRB1, align 4
  %322 = load i32, i32* @PHASE_COMMON, align 4
  %323 = call i32 @ecore_init_block(%struct.bxe_softc* %320, i32 %321, i32 %322)
  %324 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %325 = load i32, i32* @BLOCK_PRS, align 4
  %326 = load i32, i32* @PHASE_COMMON, align 4
  %327 = call i32 @ecore_init_block(%struct.bxe_softc* %324, i32 %325, i32 %326)
  %328 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %329 = load i32, i32* @PRS_REG_A_PRSU_20, align 4
  %330 = call i32 @REG_WR(%struct.bxe_softc* %328, i32 %329, i32 15)
  %331 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %332 = call i64 @CHIP_IS_E1(%struct.bxe_softc* %331)
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %343, label %334

334:                                              ; preds = %319
  %335 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %336 = load i32, i32* @PRS_REG_E1HOV_MODE, align 4
  %337 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %338 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %337, i32 0, i32 1
  %339 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %338, i32 0, i32 0
  %340 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 4
  %342 = call i32 @REG_WR(%struct.bxe_softc* %335, i32 %336, i32 %341)
  br label %343

343:                                              ; preds = %334, %319
  %344 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %345 = call i64 @CHIP_IS_E1x(%struct.bxe_softc* %344)
  %346 = icmp ne i64 %345, 0
  br i1 %346, label %384, label %347

347:                                              ; preds = %343
  %348 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %349 = call i32 @CHIP_IS_E3B0(%struct.bxe_softc* %348)
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %384, label %351

351:                                              ; preds = %347
  %352 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %353 = call i64 @IS_MF_AFEX(%struct.bxe_softc* %352)
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %355, label %371

355:                                              ; preds = %351
  %356 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %357 = load i32, i32* @PRS_REG_HDRS_AFTER_BASIC, align 4
  %358 = call i32 @REG_WR(%struct.bxe_softc* %356, i32 %357, i32 14)
  %359 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %360 = load i32, i32* @PRS_REG_MUST_HAVE_HDRS, align 4
  %361 = call i32 @REG_WR(%struct.bxe_softc* %359, i32 %360, i32 10)
  %362 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %363 = load i32, i32* @PRS_REG_HDRS_AFTER_TAG_0, align 4
  %364 = call i32 @REG_WR(%struct.bxe_softc* %362, i32 %363, i32 6)
  %365 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %366 = load i32, i32* @PRS_REG_TAG_ETHERTYPE_0, align 4
  %367 = call i32 @REG_WR(%struct.bxe_softc* %365, i32 %366, i32 35110)
  %368 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %369 = load i32, i32* @PRS_REG_TAG_LEN_0, align 4
  %370 = call i32 @REG_WR(%struct.bxe_softc* %368, i32 %369, i32 4)
  br label %383

371:                                              ; preds = %351
  %372 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %373 = load i32, i32* @PRS_REG_HDRS_AFTER_BASIC, align 4
  %374 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %375 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %374, i32 0, i32 1
  %376 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %375, i32 0, i32 0
  %377 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 4
  %379 = icmp ne i32 %378, 0
  %380 = zext i1 %379 to i64
  %381 = select i1 %379, i32 7, i32 6
  %382 = call i32 @REG_WR(%struct.bxe_softc* %372, i32 %373, i32 %381)
  br label %383

383:                                              ; preds = %371, %355
  br label %384

384:                                              ; preds = %383, %347, %343
  %385 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %386 = load i32, i32* @BLOCK_TSDM, align 4
  %387 = load i32, i32* @PHASE_COMMON, align 4
  %388 = call i32 @ecore_init_block(%struct.bxe_softc* %385, i32 %386, i32 %387)
  %389 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %390 = load i32, i32* @BLOCK_CSDM, align 4
  %391 = load i32, i32* @PHASE_COMMON, align 4
  %392 = call i32 @ecore_init_block(%struct.bxe_softc* %389, i32 %390, i32 %391)
  %393 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %394 = load i32, i32* @BLOCK_USDM, align 4
  %395 = load i32, i32* @PHASE_COMMON, align 4
  %396 = call i32 @ecore_init_block(%struct.bxe_softc* %393, i32 %394, i32 %395)
  %397 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %398 = load i32, i32* @BLOCK_XSDM, align 4
  %399 = load i32, i32* @PHASE_COMMON, align 4
  %400 = call i32 @ecore_init_block(%struct.bxe_softc* %397, i32 %398, i32 %399)
  %401 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %402 = call i64 @CHIP_IS_E1x(%struct.bxe_softc* %401)
  %403 = icmp ne i64 %402, 0
  br i1 %403, label %422, label %404

404:                                              ; preds = %384
  %405 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %406 = load i32, i32* @TSEM_REG_FAST_MEMORY, align 4
  %407 = load i32, i32* @VFC_REG_MEMORIES_RST, align 4
  %408 = add nsw i32 %406, %407
  %409 = load i32, i32* @VFC_MEMORIES_RST_REG_CAM_RST, align 4
  %410 = load i32, i32* @VFC_MEMORIES_RST_REG_RAM_RST, align 4
  %411 = or i32 %409, %410
  %412 = call i32 @REG_WR(%struct.bxe_softc* %405, i32 %408, i32 %411)
  %413 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %414 = load i32, i32* @XSEM_REG_FAST_MEMORY, align 4
  %415 = load i32, i32* @VFC_REG_MEMORIES_RST, align 4
  %416 = add nsw i32 %414, %415
  %417 = load i32, i32* @VFC_MEMORIES_RST_REG_CAM_RST, align 4
  %418 = load i32, i32* @VFC_MEMORIES_RST_REG_RAM_RST, align 4
  %419 = or i32 %417, %418
  %420 = call i32 @REG_WR(%struct.bxe_softc* %413, i32 %416, i32 %419)
  %421 = call i32 @DELAY(i32 20000)
  br label %422

422:                                              ; preds = %404, %384
  %423 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %424 = load i32, i32* @BLOCK_TSEM, align 4
  %425 = load i32, i32* @PHASE_COMMON, align 4
  %426 = call i32 @ecore_init_block(%struct.bxe_softc* %423, i32 %424, i32 %425)
  %427 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %428 = load i32, i32* @BLOCK_USEM, align 4
  %429 = load i32, i32* @PHASE_COMMON, align 4
  %430 = call i32 @ecore_init_block(%struct.bxe_softc* %427, i32 %428, i32 %429)
  %431 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %432 = load i32, i32* @BLOCK_CSEM, align 4
  %433 = load i32, i32* @PHASE_COMMON, align 4
  %434 = call i32 @ecore_init_block(%struct.bxe_softc* %431, i32 %432, i32 %433)
  %435 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %436 = load i32, i32* @BLOCK_XSEM, align 4
  %437 = load i32, i32* @PHASE_COMMON, align 4
  %438 = call i32 @ecore_init_block(%struct.bxe_softc* %435, i32 %436, i32 %437)
  %439 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %440 = load i32, i32* @GRCBASE_MISC, align 4
  %441 = load i32, i32* @MISC_REGISTERS_RESET_REG_1_CLEAR, align 4
  %442 = add nsw i32 %440, %441
  %443 = call i32 @REG_WR(%struct.bxe_softc* %439, i32 %442, i32 -2147483648)
  %444 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %445 = load i32, i32* @GRCBASE_MISC, align 4
  %446 = load i32, i32* @MISC_REGISTERS_RESET_REG_1_SET, align 4
  %447 = add nsw i32 %445, %446
  %448 = call i32 @REG_WR(%struct.bxe_softc* %444, i32 %447, i32 -2147483648)
  %449 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %450 = load i32, i32* @BLOCK_UPB, align 4
  %451 = load i32, i32* @PHASE_COMMON, align 4
  %452 = call i32 @ecore_init_block(%struct.bxe_softc* %449, i32 %450, i32 %451)
  %453 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %454 = load i32, i32* @BLOCK_XPB, align 4
  %455 = load i32, i32* @PHASE_COMMON, align 4
  %456 = call i32 @ecore_init_block(%struct.bxe_softc* %453, i32 %454, i32 %455)
  %457 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %458 = load i32, i32* @BLOCK_PBF, align 4
  %459 = load i32, i32* @PHASE_COMMON, align 4
  %460 = call i32 @ecore_init_block(%struct.bxe_softc* %457, i32 %458, i32 %459)
  %461 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %462 = call i64 @CHIP_IS_E1x(%struct.bxe_softc* %461)
  %463 = icmp ne i64 %462, 0
  br i1 %463, label %497, label %464

464:                                              ; preds = %422
  %465 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %466 = call i64 @IS_MF_AFEX(%struct.bxe_softc* %465)
  %467 = icmp ne i64 %466, 0
  br i1 %467, label %468, label %484

468:                                              ; preds = %464
  %469 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %470 = load i32, i32* @PBF_REG_HDRS_AFTER_BASIC, align 4
  %471 = call i32 @REG_WR(%struct.bxe_softc* %469, i32 %470, i32 14)
  %472 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %473 = load i32, i32* @PBF_REG_MUST_HAVE_HDRS, align 4
  %474 = call i32 @REG_WR(%struct.bxe_softc* %472, i32 %473, i32 10)
  %475 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %476 = load i32, i32* @PBF_REG_HDRS_AFTER_TAG_0, align 4
  %477 = call i32 @REG_WR(%struct.bxe_softc* %475, i32 %476, i32 6)
  %478 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %479 = load i32, i32* @PBF_REG_TAG_ETHERTYPE_0, align 4
  %480 = call i32 @REG_WR(%struct.bxe_softc* %478, i32 %479, i32 35110)
  %481 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %482 = load i32, i32* @PBF_REG_TAG_LEN_0, align 4
  %483 = call i32 @REG_WR(%struct.bxe_softc* %481, i32 %482, i32 4)
  br label %496

484:                                              ; preds = %464
  %485 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %486 = load i32, i32* @PBF_REG_HDRS_AFTER_BASIC, align 4
  %487 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %488 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %487, i32 0, i32 1
  %489 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %488, i32 0, i32 0
  %490 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %489, i32 0, i32 0
  %491 = load i32, i32* %490, align 4
  %492 = icmp ne i32 %491, 0
  %493 = zext i1 %492 to i64
  %494 = select i1 %492, i32 7, i32 6
  %495 = call i32 @REG_WR(%struct.bxe_softc* %485, i32 %486, i32 %494)
  br label %496

496:                                              ; preds = %484, %468
  br label %497

497:                                              ; preds = %496, %422
  %498 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %499 = load i32, i32* @SRC_REG_SOFT_RST, align 4
  %500 = call i32 @REG_WR(%struct.bxe_softc* %498, i32 %499, i32 1)
  %501 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %502 = load i32, i32* @BLOCK_SRC, align 4
  %503 = load i32, i32* @PHASE_COMMON, align 4
  %504 = call i32 @ecore_init_block(%struct.bxe_softc* %501, i32 %502, i32 %503)
  %505 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %506 = call i64 @CNIC_SUPPORT(%struct.bxe_softc* %505)
  %507 = icmp ne i64 %506, 0
  br i1 %507, label %508, label %539

508:                                              ; preds = %497
  %509 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %510 = load i32, i32* @SRC_REG_KEYSEARCH_0, align 4
  %511 = call i32 @REG_WR(%struct.bxe_softc* %509, i32 %510, i32 1663587954)
  %512 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %513 = load i32, i32* @SRC_REG_KEYSEARCH_1, align 4
  %514 = call i32 @REG_WR(%struct.bxe_softc* %512, i32 %513, i32 616100556)
  %515 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %516 = load i32, i32* @SRC_REG_KEYSEARCH_2, align 4
  %517 = call i32 @REG_WR(%struct.bxe_softc* %515, i32 %516, i32 574287771)
  %518 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %519 = load i32, i32* @SRC_REG_KEYSEARCH_3, align 4
  %520 = call i32 @REG_WR(%struct.bxe_softc* %518, i32 %519, i32 637541946)
  %521 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %522 = load i32, i32* @SRC_REG_KEYSEARCH_4, align 4
  %523 = call i32 @REG_WR(%struct.bxe_softc* %521, i32 %522, i32 2062094614)
  %524 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %525 = load i32, i32* @SRC_REG_KEYSEARCH_5, align 4
  %526 = call i32 @REG_WR(%struct.bxe_softc* %524, i32 %525, i32 1558520587)
  %527 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %528 = load i32, i32* @SRC_REG_KEYSEARCH_6, align 4
  %529 = call i32 @REG_WR(%struct.bxe_softc* %527, i32 %528, i32 697141983)
  %530 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %531 = load i32, i32* @SRC_REG_KEYSEARCH_7, align 4
  %532 = call i32 @REG_WR(%struct.bxe_softc* %530, i32 %531, i32 1857093385)
  %533 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %534 = load i32, i32* @SRC_REG_KEYSEARCH_8, align 4
  %535 = call i32 @REG_WR(%struct.bxe_softc* %533, i32 %534, i32 405862447)
  %536 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %537 = load i32, i32* @SRC_REG_KEYSEARCH_9, align 4
  %538 = call i32 @REG_WR(%struct.bxe_softc* %536, i32 %537, i32 31747047)
  br label %539

539:                                              ; preds = %508, %497
  %540 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %541 = load i32, i32* @SRC_REG_SOFT_RST, align 4
  %542 = call i32 @REG_WR(%struct.bxe_softc* %540, i32 %541, i32 0)
  %543 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %544 = call i32 @BLOGE(%struct.bxe_softc* %543, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), i32 4)
  %545 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %546 = load i32, i32* @BLOCK_CDU, align 4
  %547 = load i32, i32* @PHASE_COMMON, align 4
  %548 = call i32 @ecore_init_block(%struct.bxe_softc* %545, i32 %546, i32 %547)
  store i32 67109888, i32* %5, align 4
  %549 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %550 = load i32, i32* @CDU_REG_CDU_GLOBAL_PARAMS, align 4
  %551 = load i32, i32* %5, align 4
  %552 = call i32 @REG_WR(%struct.bxe_softc* %549, i32 %550, i32 %551)
  %553 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %554 = load i32, i32* @BLOCK_CFC, align 4
  %555 = load i32, i32* @PHASE_COMMON, align 4
  %556 = call i32 @ecore_init_block(%struct.bxe_softc* %553, i32 %554, i32 %555)
  %557 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %558 = load i32, i32* @CFC_REG_INIT_REG, align 4
  %559 = call i32 @REG_WR(%struct.bxe_softc* %557, i32 %558, i32 2047)
  %560 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %561 = load i32, i32* @CFC_REG_CFC_INT_MASK, align 4
  %562 = call i32 @REG_WR(%struct.bxe_softc* %560, i32 %561, i32 0)
  %563 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %564 = load i32, i32* @CFC_REG_DEBUG0, align 4
  %565 = call i32 @REG_WR(%struct.bxe_softc* %563, i32 %564, i32 537001984)
  %566 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %567 = load i32, i32* @BLOCK_HC, align 4
  %568 = load i32, i32* @PHASE_COMMON, align 4
  %569 = call i32 @ecore_init_block(%struct.bxe_softc* %566, i32 %567, i32 %568)
  %570 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %571 = call i64 @CHIP_IS_E1x(%struct.bxe_softc* %570)
  %572 = icmp ne i64 %571, 0
  br i1 %572, label %581, label %573

573:                                              ; preds = %539
  %574 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %575 = call i64 @BXE_NOMCP(%struct.bxe_softc* %574)
  %576 = icmp ne i64 %575, 0
  br i1 %576, label %577, label %581

577:                                              ; preds = %573
  %578 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %579 = load i32, i32* @IGU_REG_RESET_MEMORIES, align 4
  %580 = call i32 @REG_WR(%struct.bxe_softc* %578, i32 %579, i32 54)
  br label %581

581:                                              ; preds = %577, %573, %539
  %582 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %583 = load i32, i32* @BLOCK_IGU, align 4
  %584 = load i32, i32* @PHASE_COMMON, align 4
  %585 = call i32 @ecore_init_block(%struct.bxe_softc* %582, i32 %583, i32 %584)
  %586 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %587 = load i32, i32* @BLOCK_MISC_AEU, align 4
  %588 = load i32, i32* @PHASE_COMMON, align 4
  %589 = call i32 @ecore_init_block(%struct.bxe_softc* %586, i32 %587, i32 %588)
  %590 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %591 = call i32 @REG_WR(%struct.bxe_softc* %590, i32 10260, i32 -1)
  %592 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %593 = call i32 @REG_WR(%struct.bxe_softc* %592, i32 14368, i32 -1)
  %594 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %595 = call i64 @CHIP_IS_E1x(%struct.bxe_softc* %594)
  %596 = icmp ne i64 %595, 0
  br i1 %596, label %626, label %597

597:                                              ; preds = %581
  %598 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %599 = load i32, i32* @PCICFG_OFFSET, align 4
  %600 = load i32, i32* @PXPCS_TL_CONTROL_5, align 4
  %601 = add nsw i32 %599, %600
  %602 = load i32, i32* @PXPCS_TL_CONTROL_5_ERR_UNSPPORT1, align 4
  %603 = load i32, i32* @PXPCS_TL_CONTROL_5_ERR_UNSPPORT, align 4
  %604 = or i32 %602, %603
  %605 = call i32 @REG_WR(%struct.bxe_softc* %598, i32 %601, i32 %604)
  %606 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %607 = load i32, i32* @PCICFG_OFFSET, align 4
  %608 = load i32, i32* @PXPCS_TL_FUNC345_STAT, align 4
  %609 = add nsw i32 %607, %608
  %610 = load i32, i32* @PXPCS_TL_FUNC345_STAT_ERR_UNSPPORT4, align 4
  %611 = load i32, i32* @PXPCS_TL_FUNC345_STAT_ERR_UNSPPORT3, align 4
  %612 = or i32 %610, %611
  %613 = load i32, i32* @PXPCS_TL_FUNC345_STAT_ERR_UNSPPORT2, align 4
  %614 = or i32 %612, %613
  %615 = call i32 @REG_WR(%struct.bxe_softc* %606, i32 %609, i32 %614)
  %616 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %617 = load i32, i32* @PCICFG_OFFSET, align 4
  %618 = load i32, i32* @PXPCS_TL_FUNC678_STAT, align 4
  %619 = add nsw i32 %617, %618
  %620 = load i32, i32* @PXPCS_TL_FUNC678_STAT_ERR_UNSPPORT7, align 4
  %621 = load i32, i32* @PXPCS_TL_FUNC678_STAT_ERR_UNSPPORT6, align 4
  %622 = or i32 %620, %621
  %623 = load i32, i32* @PXPCS_TL_FUNC678_STAT_ERR_UNSPPORT5, align 4
  %624 = or i32 %622, %623
  %625 = call i32 @REG_WR(%struct.bxe_softc* %616, i32 %619, i32 %624)
  br label %626

626:                                              ; preds = %597, %581
  %627 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %628 = load i32, i32* @BLOCK_NIG, align 4
  %629 = load i32, i32* @PHASE_COMMON, align 4
  %630 = call i32 @ecore_init_block(%struct.bxe_softc* %627, i32 %628, i32 %629)
  %631 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %632 = call i64 @CHIP_IS_E1(%struct.bxe_softc* %631)
  %633 = icmp ne i64 %632, 0
  br i1 %633, label %645, label %634

634:                                              ; preds = %626
  %635 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %636 = call i64 @CHIP_IS_E3(%struct.bxe_softc* %635)
  %637 = icmp ne i64 %636, 0
  br i1 %637, label %644, label %638

638:                                              ; preds = %634
  %639 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %640 = load i32, i32* @NIG_REG_LLH_MF_MODE, align 4
  %641 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %642 = call i32 @IS_MF(%struct.bxe_softc* %641)
  %643 = call i32 @REG_WR(%struct.bxe_softc* %639, i32 %640, i32 %642)
  br label %644

644:                                              ; preds = %638, %634
  br label %645

645:                                              ; preds = %644, %626
  %646 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %647 = call i64 @CHIP_IS_E1H(%struct.bxe_softc* %646)
  %648 = icmp ne i64 %647, 0
  br i1 %648, label %649, label %655

649:                                              ; preds = %645
  %650 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %651 = load i32, i32* @NIG_REG_LLH_E1HOV_MODE, align 4
  %652 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %653 = call i32 @IS_MF_SD(%struct.bxe_softc* %652)
  %654 = call i32 @REG_WR(%struct.bxe_softc* %650, i32 %651, i32 %653)
  br label %655

655:                                              ; preds = %649, %645
  %656 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %657 = call i64 @CHIP_REV_IS_SLOW(%struct.bxe_softc* %656)
  %658 = icmp ne i64 %657, 0
  br i1 %658, label %659, label %661

659:                                              ; preds = %655
  %660 = call i32 @DELAY(i32 200000)
  br label %661

661:                                              ; preds = %659, %655
  %662 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %663 = load i32, i32* @CFC_REG_LL_INIT_DONE, align 4
  %664 = call i32 @reg_poll(%struct.bxe_softc* %662, i32 %663, i32 1, i32 100, i32 10)
  store i32 %664, i32* %5, align 4
  %665 = load i32, i32* %5, align 4
  %666 = icmp ne i32 %665, 1
  br i1 %666, label %667, label %671

667:                                              ; preds = %661
  %668 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %669 = load i32, i32* %5, align 4
  %670 = call i32 @BLOGE(%struct.bxe_softc* %668, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i32 %669)
  store i32 -1, i32* %2, align 4
  br label %746

671:                                              ; preds = %661
  %672 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %673 = load i32, i32* @CFC_REG_AC_INIT_DONE, align 4
  %674 = call i32 @reg_poll(%struct.bxe_softc* %672, i32 %673, i32 1, i32 100, i32 10)
  store i32 %674, i32* %5, align 4
  %675 = load i32, i32* %5, align 4
  %676 = icmp ne i32 %675, 1
  br i1 %676, label %677, label %681

677:                                              ; preds = %671
  %678 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %679 = load i32, i32* %5, align 4
  %680 = call i32 @BLOGE(%struct.bxe_softc* %678, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i32 %679)
  store i32 -1, i32* %2, align 4
  br label %746

681:                                              ; preds = %671
  %682 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %683 = load i32, i32* @CFC_REG_CAM_INIT_DONE, align 4
  %684 = call i32 @reg_poll(%struct.bxe_softc* %682, i32 %683, i32 1, i32 100, i32 10)
  store i32 %684, i32* %5, align 4
  %685 = load i32, i32* %5, align 4
  %686 = icmp ne i32 %685, 1
  br i1 %686, label %687, label %691

687:                                              ; preds = %681
  %688 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %689 = load i32, i32* %5, align 4
  %690 = call i32 @BLOGE(%struct.bxe_softc* %688, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), i32 %689)
  store i32 -1, i32* %2, align 4
  br label %746

691:                                              ; preds = %681
  %692 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %693 = load i32, i32* @CFC_REG_DEBUG0, align 4
  %694 = call i32 @REG_WR(%struct.bxe_softc* %692, i32 %693, i32 0)
  %695 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %696 = call i64 @CHIP_IS_E1(%struct.bxe_softc* %695)
  %697 = icmp ne i64 %696, 0
  br i1 %697, label %698, label %719

698:                                              ; preds = %691
  %699 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %700 = load i32, i32* @NIG_REG_STAT2_BRB_OCTET, align 4
  %701 = call i32 @bxe_read_dmae(%struct.bxe_softc* %699, i32 %700, i32 2)
  %702 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %703 = load i32*, i32** @wb_data, align 8
  %704 = getelementptr inbounds i32, i32* %703, i64 0
  %705 = load i32, i32* %704, align 4
  %706 = call i32* @BXE_SP(%struct.bxe_softc* %702, i32 %705)
  %707 = load i32, i32* %706, align 4
  store i32 %707, i32* %5, align 4
  %708 = load i32, i32* %5, align 4
  %709 = icmp eq i32 %708, 0
  br i1 %709, label %710, label %718

710:                                              ; preds = %698
  %711 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %712 = call i64 @bxe_int_mem_test(%struct.bxe_softc* %711)
  %713 = icmp ne i64 %712, 0
  br i1 %713, label %714, label %718

714:                                              ; preds = %710
  %715 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %716 = load i32, i32* %5, align 4
  %717 = call i32 @BLOGE(%struct.bxe_softc* %715, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i64 0, i64 0), i32 %716)
  store i32 -1, i32* %2, align 4
  br label %746

718:                                              ; preds = %710, %698
  br label %719

719:                                              ; preds = %718, %691
  %720 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %721 = call i32 @bxe_setup_fan_failure_detection(%struct.bxe_softc* %720)
  %722 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %723 = load i32, i32* @PXP2_REG_PXP2_INT_STS_CLR_0, align 4
  %724 = call i32 @REG_RD(%struct.bxe_softc* %722, i32 %723)
  %725 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %726 = call i32 @bxe_enable_blocks_attention(%struct.bxe_softc* %725)
  %727 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %728 = call i64 @CHIP_REV_IS_SLOW(%struct.bxe_softc* %727)
  %729 = icmp ne i64 %728, 0
  br i1 %729, label %733, label %730

730:                                              ; preds = %719
  %731 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %732 = call i32 @ecore_enable_blocks_parity(%struct.bxe_softc* %731)
  br label %733

733:                                              ; preds = %730, %719
  %734 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %735 = call i64 @BXE_NOMCP(%struct.bxe_softc* %734)
  %736 = icmp ne i64 %735, 0
  br i1 %736, label %745, label %737

737:                                              ; preds = %733
  %738 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %739 = call i64 @CHIP_IS_E1x(%struct.bxe_softc* %738)
  %740 = icmp ne i64 %739, 0
  br i1 %740, label %741, label %744

741:                                              ; preds = %737
  %742 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %743 = call i32 @bxe_common_init_phy(%struct.bxe_softc* %742)
  br label %744

744:                                              ; preds = %741, %737
  br label %745

745:                                              ; preds = %744, %733
  store i32 0, i32* %2, align 4
  br label %746

746:                                              ; preds = %745, %714, %687, %677, %667, %231, %138, %128
  %747 = load i32, i32* %2, align 4
  ret i32 %747
}

declare dso_local i32 @BLOGD(%struct.bxe_softc*, i32, i8*, ...) #1

declare dso_local i32 @SC_ABS_FUNC(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_acquire_hw_lock(%struct.bxe_softc*, i32) #1

declare dso_local i32 @bxe_reset_common(%struct.bxe_softc*) #1

declare dso_local i32 @REG_WR(%struct.bxe_softc*, i32, i32) #1

declare dso_local i64 @CHIP_IS_E3(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_release_hw_lock(%struct.bxe_softc*, i32) #1

declare dso_local i32 @ecore_init_block(%struct.bxe_softc*, i32, i32) #1

declare dso_local i64 @CHIP_IS_E1x(%struct.bxe_softc*) #1

declare dso_local i32 @SC_PATH(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_pretend_func(%struct.bxe_softc*, i32) #1

declare dso_local i32 @bxe_pf_disable(%struct.bxe_softc*) #1

declare dso_local i64 @CHIP_IS_E1(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_init_pxp(%struct.bxe_softc*) #1

declare dso_local i32 @ecore_ilt_init_page_size(%struct.bxe_softc*, i32) #1

declare dso_local i64 @CHIP_REV_IS_FPGA(%struct.bxe_softc*) #1

declare dso_local i64 @CHIP_IS_E1H(%struct.bxe_softc*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @REG_RD(%struct.bxe_softc*, i32) #1

declare dso_local i32 @BLOGE(%struct.bxe_softc*, i8*, i32) #1

declare dso_local i32 @memset(%struct.ilt_client_info*, i32, i32) #1

declare dso_local i32 @ecore_ilt_client_init_op_ilt(%struct.bxe_softc*, %struct.ilt_client_info*, %struct.ilt_client_info*, i32) #1

declare dso_local i64 @CHIP_REV_IS_EMUL(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_iov_init_dmae(%struct.bxe_softc*) #1

declare dso_local i32 @ecore_init_fill(%struct.bxe_softc*, i32, i32, i32, i32) #1

declare dso_local i32 @bxe_read_dmae(%struct.bxe_softc*, i32, i32) #1

declare dso_local i32 @ecore_qm_init_ptr_table(%struct.bxe_softc*, i32, i32) #1

declare dso_local i64 @CNIC_SUPPORT(%struct.bxe_softc*) #1

declare dso_local i64 @CHIP_REV_IS_SLOW(%struct.bxe_softc*) #1

declare dso_local i32 @CHIP_IS_E3B0(%struct.bxe_softc*) #1

declare dso_local i64 @IS_MF_AFEX(%struct.bxe_softc*) #1

declare dso_local i64 @BXE_NOMCP(%struct.bxe_softc*) #1

declare dso_local i32 @IS_MF(%struct.bxe_softc*) #1

declare dso_local i32 @IS_MF_SD(%struct.bxe_softc*) #1

declare dso_local i32 @reg_poll(%struct.bxe_softc*, i32, i32, i32, i32) #1

declare dso_local i32* @BXE_SP(%struct.bxe_softc*, i32) #1

declare dso_local i64 @bxe_int_mem_test(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_setup_fan_failure_detection(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_enable_blocks_attention(%struct.bxe_softc*) #1

declare dso_local i32 @ecore_enable_blocks_parity(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_common_init_phy(%struct.bxe_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
