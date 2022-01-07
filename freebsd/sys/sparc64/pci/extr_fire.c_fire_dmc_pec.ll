; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_fire.c_fire_dmc_pec.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_fire.c_fire_dmc_pec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fire_softc = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@FO_PCI_MULTI_CORE_ERR_STAT = common dso_local global i32 0, align 4
@FO_PCI_MULTI_CORE_ERR_STAT_DMC = common dso_local global i32 0, align 4
@FO_PCI_DMC_CORE_BLOCK_ERR_STAT = common dso_local global i32 0, align 4
@FO_PCI_DMC_CORE_BLOCK_INT_EN_IMU = common dso_local global i32 0, align 4
@FO_PCI_IMU_INT_STAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"IMU error %#llx\0A\00", align 1
@FO_PCI_IMU_ERR_INT_EQ_NOT_EN_P = common dso_local global i32 0, align 4
@FO_PCI_IMU_SCS_ERR_LOG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"SCS error log %#llx\0A\00", align 1
@FO_PCI_IMU_ERR_INT_EQ_OVER_P = common dso_local global i32 0, align 4
@FO_PCI_IMU_EQS_ERR_LOG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"EQS error log %#llx\0A\00", align 1
@FO_PCI_IMU_ERR_INT_MSI_MAL_ERR_P = common dso_local global i32 0, align 4
@FO_PCI_IMU_ERR_INT_MSI_PAR_ERR_P = common dso_local global i32 0, align 4
@FO_PCI_IMU_ERR_INT_PMEACK_MES_NOT_EN_P = common dso_local global i32 0, align 4
@FO_PCI_IMU_ERR_INT_PMPME_MES_NOT_EN_P = common dso_local global i32 0, align 4
@FO_PCI_IMU_ERR_INT_FATAL_MES_NOT_EN_P = common dso_local global i32 0, align 4
@FO_PCI_IMU_ERR_INT_NFATAL_MES_NOT_EN_P = common dso_local global i32 0, align 4
@FO_PCI_IMU_ERR_INT_COR_MES_NOT_EN_P = common dso_local global i32 0, align 4
@FO_PCI_IMU_ERR_INT_MSI_NOT_EN_P = common dso_local global i32 0, align 4
@FO_PCI_IMU_RDS_ERR_LOG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"RDS error log %#llx\0A\00", align 1
@FO_PCI_DMC_CORE_BLOCK_INT_EN_MMU = common dso_local global i32 0, align 4
@FO_PCI_MMU_INT_STAT = common dso_local global i32 0, align 4
@FO_PCI_MMU_TRANS_FAULT_ADDR = common dso_local global i32 0, align 4
@FO_PCI_MMU_TRANS_FAULT_STAT = common dso_local global i32 0, align 4
@FO_PCI_MMU_ERR_INT_TBW_DPE_P = common dso_local global i32 0, align 4
@FO_PCI_MMU_ERR_INT_TBW_ERR_P = common dso_local global i32 0, align 4
@FO_PCI_MMU_ERR_INT_TBW_UDE_P = common dso_local global i32 0, align 4
@FO_PCI_MMU_ERR_INT_TBW_DME_P = common dso_local global i32 0, align 4
@FO_PCI_MMU_ERR_INT_TTC_CAE_P = common dso_local global i32 0, align 4
@FIRE_PCI_MMU_ERR_INT_TTC_DPE_P = common dso_local global i32 0, align 4
@OBERON_PCI_MMU_ERR_INT_TTC_DUE_P = common dso_local global i32 0, align 4
@FO_PCI_MMU_ERR_INT_TRN_ERR_P = common dso_local global i32 0, align 4
@FO_PCI_MMU_ERR_STAT_CLR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"MMU error %#llx: TFAR %#llx TFSR %#llx\0A\00", align 1
@FO_PCI_MULTI_CORE_ERR_STAT_PEC = common dso_local global i32 0, align 4
@FO_PCI_PEC_CORE_BLOCK_INT_STAT = common dso_local global i32 0, align 4
@FO_PCI_PEC_CORE_BLOCK_INT_STAT_UERR = common dso_local global i32 0, align 4
@FO_PCI_TLU_UERR_INT_STAT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"DLU/TLU uncorrectable error %#llx\0A\00", align 1
@FO_PCI_TLU_UERR_INT_UR_P = common dso_local global i32 0, align 4
@OBERON_PCI_TLU_UERR_INT_POIS_P = common dso_local global i32 0, align 4
@FO_PCI_TLU_UERR_INT_MFP_P = common dso_local global i32 0, align 4
@FO_PCI_TLU_UERR_INT_ROF_P = common dso_local global i32 0, align 4
@FO_PCI_TLU_UERR_INT_UC_P = common dso_local global i32 0, align 4
@FIRE_PCI_TLU_UERR_INT_PP_P = common dso_local global i32 0, align 4
@FO_PCI_TLU_RX_UERR_HDR1_LOG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"receive header log %#llx\0A\00", align 1
@FO_PCI_TLU_RX_UERR_HDR2_LOG = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"receive header log 2 %#llx\0A\00", align 1
@FO_PCI_TLU_UERR_INT_CTO_P = common dso_local global i32 0, align 4
@FO_PCI_TLU_TX_UERR_HDR1_LOG = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [27 x i8] c"transmit header log %#llx\0A\00", align 1
@FO_PCI_TLU_TX_UERR_HDR2_LOG = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [29 x i8] c"transmit header log 2 %#llx\0A\00", align 1
@FO_PCI_TLU_UERR_INT_DLP_P = common dso_local global i32 0, align 4
@FO_PCI_LPU_LNK_LYR_INT_STAT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [39 x i8] c"link layer interrupt and status %#llx\0A\00", align 1
@FO_PCI_TLU_UERR_INT_TE_P = common dso_local global i32 0, align 4
@FO_PCI_LPU_PHY_LYR_INT_STAT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [38 x i8] c"phy layer interrupt and status %#llx\0A\00", align 1
@FO_PCI_PEC_CORE_BLOCK_INT_STAT_CERR = common dso_local global i32 0, align 4
@FO_PCI_TLU_CERR_INT_STAT = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [33 x i8] c"DLU/TLU correctable error %#llx\0A\00", align 1
@FO_PCI_TLU_CERR_INT_RE_P = common dso_local global i32 0, align 4
@FO_PCI_TLU_CERR_STAT_CLR = common dso_local global i32 0, align 4
@FO_PCI_PEC_CORE_BLOCK_INT_STAT_OEVENT = common dso_local global i32 0, align 4
@FO_PCI_TLU_OEVENT_INT_STAT = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [27 x i8] c"DLU/TLU other event %#llx\0A\00", align 1
@FO_PCI_TLU_OEVENT_MFC_P = common dso_local global i32 0, align 4
@FO_PCI_TLU_OEVENT_MRC_P = common dso_local global i32 0, align 4
@FO_PCI_TLU_OEVENT_WUC_P = common dso_local global i32 0, align 4
@FO_PCI_TLU_OEVENT_RUC_P = common dso_local global i32 0, align 4
@FO_PCI_TLU_OEVENT_CRS_P = common dso_local global i32 0, align 4
@FO_PCI_TLU_RX_OEVENT_HDR1_LOG = common dso_local global i32 0, align 4
@FO_PCI_TLU_RX_OEVENT_HDR2_LOG = common dso_local global i32 0, align 4
@FO_PCI_TLU_OEVENT_CTO_P = common dso_local global i32 0, align 4
@FO_PCI_TLU_TX_OEVENT_HDR1_LOG = common dso_local global i32 0, align 4
@FO_PCI_TLU_TX_OEVENT_HDR2_LOG = common dso_local global i32 0, align 4
@FO_PCI_TLU_OEVENT_ERO_P = common dso_local global i32 0, align 4
@FO_PCI_TLU_OEVENT_EMP_P = common dso_local global i32 0, align 4
@FO_PCI_TLU_OEVENT_EPE_P = common dso_local global i32 0, align 4
@FIRE_PCI_TLU_OEVENT_ERP_P = common dso_local global i32 0, align 4
@OBERON_PCI_TLU_OEVENT_ERBU_P = common dso_local global i32 0, align 4
@FIRE_PCI_TLU_OEVENT_EIP_P = common dso_local global i32 0, align 4
@OBERON_PCI_TLU_OEVENT_EIUE_P = common dso_local global i32 0, align 4
@FO_PCI_TLU_OEVENT_IIP_P = common dso_local global i32 0, align 4
@FO_PCI_TLU_OEVENT_EDP_P = common dso_local global i32 0, align 4
@FIRE_PCI_TLU_OEVENT_EHP_P = common dso_local global i32 0, align 4
@OBERON_PCI_TLU_OEVENT_TLUEITMO_S = common dso_local global i32 0, align 4
@FO_PCI_TLU_OEVENT_ERU_P = common dso_local global i32 0, align 4
@FO_PCI_TLU_OEVENT_NFP_P = common dso_local global i32 0, align 4
@FO_PCI_TLU_OEVENT_LWC_P = common dso_local global i32 0, align 4
@FO_PCI_TLU_OEVENT_LIN_P = common dso_local global i32 0, align 4
@FO_PCI_TLU_OEVENT_LRS_P = common dso_local global i32 0, align 4
@FO_PCI_TLU_OEVENT_LDN_P = common dso_local global i32 0, align 4
@FO_PCI_TLU_OEVENT_LUP_P = common dso_local global i32 0, align 4
@FO_PCI_TLU_OEVENT_STAT_CLR = common dso_local global i32 0, align 4
@FO_PCI_PEC_CORE_BLOCK_INT_STAT_ILU = common dso_local global i32 0, align 4
@FO_PCI_ILU_INT_STAT = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [17 x i8] c"ILU error %#llx\0A\00", align 1
@FIRE_PCI_ILU_ERR_INT_IHB_PE_P = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [24 x i8] c"%s: fatal DMC/PEC error\00", align 1
@FILTER_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @fire_dmc_pec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fire_dmc_pec(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.fire_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
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
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %17, align 4
  %19 = load i8*, i8** %2, align 8
  %20 = bitcast i8* %19 to %struct.fire_softc*
  store %struct.fire_softc* %20, %struct.fire_softc** %3, align 8
  %21 = load %struct.fire_softc*, %struct.fire_softc** %3, align 8
  %22 = getelementptr inbounds %struct.fire_softc, %struct.fire_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %4, align 4
  %24 = load %struct.fire_softc*, %struct.fire_softc** %3, align 8
  %25 = getelementptr inbounds %struct.fire_softc, %struct.fire_softc* %24, i32 0, i32 1
  %26 = call i32 @mtx_lock_spin(i32* %25)
  %27 = load %struct.fire_softc*, %struct.fire_softc** %3, align 8
  %28 = load i32, i32* @FO_PCI_MULTI_CORE_ERR_STAT, align 4
  %29 = call i32 @FIRE_PCI_READ_8(%struct.fire_softc* %27, i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @FO_PCI_MULTI_CORE_ERR_STAT_DMC, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %156

34:                                               ; preds = %1
  %35 = load %struct.fire_softc*, %struct.fire_softc** %3, align 8
  %36 = load i32, i32* @FO_PCI_DMC_CORE_BLOCK_ERR_STAT, align 4
  %37 = call i32 @FIRE_PCI_READ_8(%struct.fire_softc* %35, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @FO_PCI_DMC_CORE_BLOCK_INT_EN_IMU, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %103

42:                                               ; preds = %34
  %43 = load %struct.fire_softc*, %struct.fire_softc** %3, align 8
  %44 = load i32, i32* @FO_PCI_IMU_INT_STAT, align 4
  %45 = call i32 @FIRE_PCI_READ_8(%struct.fire_softc* %43, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = call i32 (i32, i8*, i64, ...) @device_printf(i32 %46, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %48)
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @FO_PCI_IMU_ERR_INT_EQ_NOT_EN_P, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %42
  store i32 1, i32* %17, align 4
  %55 = load %struct.fire_softc*, %struct.fire_softc** %3, align 8
  %56 = load i32, i32* @FO_PCI_IMU_SCS_ERR_LOG, align 4
  %57 = call i32 @FIRE_PCI_READ_8(%struct.fire_softc* %55, i32 %56)
  store i32 %57, i32* %16, align 4
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* %16, align 4
  %60 = sext i32 %59 to i64
  %61 = call i32 (i32, i8*, i64, ...) @device_printf(i32 %58, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %60)
  br label %62

62:                                               ; preds = %54, %42
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @FO_PCI_IMU_ERR_INT_EQ_OVER_P, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %62
  store i32 1, i32* %17, align 4
  %68 = load %struct.fire_softc*, %struct.fire_softc** %3, align 8
  %69 = load i32, i32* @FO_PCI_IMU_EQS_ERR_LOG, align 4
  %70 = call i32 @FIRE_PCI_READ_8(%struct.fire_softc* %68, i32 %69)
  store i32 %70, i32* %16, align 4
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* %16, align 4
  %73 = sext i32 %72 to i64
  %74 = call i32 (i32, i8*, i64, ...) @device_printf(i32 %71, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i64 %73)
  br label %75

75:                                               ; preds = %67, %62
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @FO_PCI_IMU_ERR_INT_MSI_MAL_ERR_P, align 4
  %78 = load i32, i32* @FO_PCI_IMU_ERR_INT_MSI_PAR_ERR_P, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @FO_PCI_IMU_ERR_INT_PMEACK_MES_NOT_EN_P, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @FO_PCI_IMU_ERR_INT_PMPME_MES_NOT_EN_P, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @FO_PCI_IMU_ERR_INT_FATAL_MES_NOT_EN_P, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @FO_PCI_IMU_ERR_INT_NFATAL_MES_NOT_EN_P, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @FO_PCI_IMU_ERR_INT_COR_MES_NOT_EN_P, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @FO_PCI_IMU_ERR_INT_MSI_NOT_EN_P, align 4
  %91 = or i32 %89, %90
  %92 = and i32 %76, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %75
  store i32 1, i32* %17, align 4
  %95 = load %struct.fire_softc*, %struct.fire_softc** %3, align 8
  %96 = load i32, i32* @FO_PCI_IMU_RDS_ERR_LOG, align 4
  %97 = call i32 @FIRE_PCI_READ_8(%struct.fire_softc* %95, i32 %96)
  store i32 %97, i32* %16, align 4
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* %16, align 4
  %100 = sext i32 %99 to i64
  %101 = call i32 (i32, i8*, i64, ...) @device_printf(i32 %98, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i64 %100)
  br label %102

102:                                              ; preds = %94, %75
  br label %103

103:                                              ; preds = %102, %34
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* @FO_PCI_DMC_CORE_BLOCK_INT_EN_MMU, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %155

108:                                              ; preds = %103
  store i32 1, i32* %17, align 4
  %109 = load %struct.fire_softc*, %struct.fire_softc** %3, align 8
  %110 = load i32, i32* @FO_PCI_MMU_INT_STAT, align 4
  %111 = call i32 @FIRE_PCI_READ_8(%struct.fire_softc* %109, i32 %110)
  store i32 %111, i32* %10, align 4
  %112 = load %struct.fire_softc*, %struct.fire_softc** %3, align 8
  %113 = load i32, i32* @FO_PCI_MMU_TRANS_FAULT_ADDR, align 4
  %114 = call i32 @FIRE_PCI_READ_8(%struct.fire_softc* %112, i32 %113)
  store i32 %114, i32* %11, align 4
  %115 = load %struct.fire_softc*, %struct.fire_softc** %3, align 8
  %116 = load i32, i32* @FO_PCI_MMU_TRANS_FAULT_STAT, align 4
  %117 = call i32 @FIRE_PCI_READ_8(%struct.fire_softc* %115, i32 %116)
  store i32 %117, i32* %12, align 4
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* @FO_PCI_MMU_ERR_INT_TBW_DPE_P, align 4
  %120 = load i32, i32* @FO_PCI_MMU_ERR_INT_TBW_ERR_P, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @FO_PCI_MMU_ERR_INT_TBW_UDE_P, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @FO_PCI_MMU_ERR_INT_TBW_DME_P, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @FO_PCI_MMU_ERR_INT_TTC_CAE_P, align 4
  %127 = or i32 %125, %126
  %128 = load i32, i32* @FIRE_PCI_MMU_ERR_INT_TTC_DPE_P, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* @OBERON_PCI_MMU_ERR_INT_TTC_DUE_P, align 4
  %131 = or i32 %129, %130
  %132 = load i32, i32* @FO_PCI_MMU_ERR_INT_TRN_ERR_P, align 4
  %133 = or i32 %131, %132
  %134 = and i32 %118, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %108
  store i32 1, i32* %17, align 4
  br label %146

137:                                              ; preds = %108
  %138 = load %struct.fire_softc*, %struct.fire_softc** %3, align 8
  %139 = getelementptr inbounds %struct.fire_softc, %struct.fire_softc* %138, i32 0, i32 7
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %139, align 4
  %142 = load %struct.fire_softc*, %struct.fire_softc** %3, align 8
  %143 = load i32, i32* @FO_PCI_MMU_ERR_STAT_CLR, align 4
  %144 = load i32, i32* %10, align 4
  %145 = call i32 @FIRE_PCI_WRITE_8(%struct.fire_softc* %142, i32 %143, i32 %144)
  br label %146

146:                                              ; preds = %137, %136
  %147 = load i32, i32* %4, align 4
  %148 = load i32, i32* %10, align 4
  %149 = sext i32 %148 to i64
  %150 = load i32, i32* %11, align 4
  %151 = sext i32 %150 to i64
  %152 = load i32, i32* %12, align 4
  %153 = sext i32 %152 to i64
  %154 = call i32 (i32, i8*, i64, ...) @device_printf(i32 %147, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i64 %149, i64 %151, i64 %153)
  br label %155

155:                                              ; preds = %146, %103
  br label %156

156:                                              ; preds = %155, %1
  %157 = load i32, i32* %9, align 4
  %158 = load i32, i32* @FO_PCI_MULTI_CORE_ERR_STAT_PEC, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %511

161:                                              ; preds = %156
  %162 = load %struct.fire_softc*, %struct.fire_softc** %3, align 8
  %163 = load i32, i32* @FO_PCI_PEC_CORE_BLOCK_INT_STAT, align 4
  %164 = call i32 @FIRE_PCI_READ_8(%struct.fire_softc* %162, i32 %163)
  store i32 %164, i32* %14, align 4
  %165 = load i32, i32* %14, align 4
  %166 = load i32, i32* @FO_PCI_PEC_CORE_BLOCK_INT_STAT_UERR, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %255

169:                                              ; preds = %161
  store i32 1, i32* %17, align 4
  %170 = load %struct.fire_softc*, %struct.fire_softc** %3, align 8
  %171 = load i32, i32* @FO_PCI_TLU_UERR_INT_STAT, align 4
  %172 = call i32 @FIRE_PCI_READ_8(%struct.fire_softc* %170, i32 %171)
  store i32 %172, i32* %15, align 4
  %173 = load i32, i32* %4, align 4
  %174 = load i32, i32* %15, align 4
  %175 = sext i32 %174 to i64
  %176 = call i32 (i32, i8*, i64, ...) @device_printf(i32 %173, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i64 %175)
  %177 = load i32, i32* %15, align 4
  %178 = load i32, i32* @FO_PCI_TLU_UERR_INT_UR_P, align 4
  %179 = load i32, i32* @OBERON_PCI_TLU_UERR_INT_POIS_P, align 4
  %180 = or i32 %178, %179
  %181 = load i32, i32* @FO_PCI_TLU_UERR_INT_MFP_P, align 4
  %182 = or i32 %180, %181
  %183 = load i32, i32* @FO_PCI_TLU_UERR_INT_ROF_P, align 4
  %184 = or i32 %182, %183
  %185 = load i32, i32* @FO_PCI_TLU_UERR_INT_UC_P, align 4
  %186 = or i32 %184, %185
  %187 = load i32, i32* @FIRE_PCI_TLU_UERR_INT_PP_P, align 4
  %188 = or i32 %186, %187
  %189 = load i32, i32* @OBERON_PCI_TLU_UERR_INT_POIS_P, align 4
  %190 = or i32 %188, %189
  %191 = and i32 %177, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %208

193:                                              ; preds = %169
  %194 = load %struct.fire_softc*, %struct.fire_softc** %3, align 8
  %195 = load i32, i32* @FO_PCI_TLU_RX_UERR_HDR1_LOG, align 4
  %196 = call i32 @FIRE_PCI_READ_8(%struct.fire_softc* %194, i32 %195)
  store i32 %196, i32* %16, align 4
  %197 = load i32, i32* %4, align 4
  %198 = load i32, i32* %16, align 4
  %199 = sext i32 %198 to i64
  %200 = call i32 (i32, i8*, i64, ...) @device_printf(i32 %197, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i64 %199)
  %201 = load %struct.fire_softc*, %struct.fire_softc** %3, align 8
  %202 = load i32, i32* @FO_PCI_TLU_RX_UERR_HDR2_LOG, align 4
  %203 = call i32 @FIRE_PCI_READ_8(%struct.fire_softc* %201, i32 %202)
  store i32 %203, i32* %16, align 4
  %204 = load i32, i32* %4, align 4
  %205 = load i32, i32* %16, align 4
  %206 = sext i32 %205 to i64
  %207 = call i32 (i32, i8*, i64, ...) @device_printf(i32 %204, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i64 %206)
  br label %208

208:                                              ; preds = %193, %169
  %209 = load i32, i32* %15, align 4
  %210 = load i32, i32* @FO_PCI_TLU_UERR_INT_CTO_P, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %228

213:                                              ; preds = %208
  %214 = load %struct.fire_softc*, %struct.fire_softc** %3, align 8
  %215 = load i32, i32* @FO_PCI_TLU_TX_UERR_HDR1_LOG, align 4
  %216 = call i32 @FIRE_PCI_READ_8(%struct.fire_softc* %214, i32 %215)
  store i32 %216, i32* %16, align 4
  %217 = load i32, i32* %4, align 4
  %218 = load i32, i32* %16, align 4
  %219 = sext i32 %218 to i64
  %220 = call i32 (i32, i8*, i64, ...) @device_printf(i32 %217, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i64 %219)
  %221 = load %struct.fire_softc*, %struct.fire_softc** %3, align 8
  %222 = load i32, i32* @FO_PCI_TLU_TX_UERR_HDR2_LOG, align 4
  %223 = call i32 @FIRE_PCI_READ_8(%struct.fire_softc* %221, i32 %222)
  store i32 %223, i32* %16, align 4
  %224 = load i32, i32* %4, align 4
  %225 = load i32, i32* %16, align 4
  %226 = sext i32 %225 to i64
  %227 = call i32 (i32, i8*, i64, ...) @device_printf(i32 %224, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i64 %226)
  br label %228

228:                                              ; preds = %213, %208
  %229 = load i32, i32* %15, align 4
  %230 = load i32, i32* @FO_PCI_TLU_UERR_INT_DLP_P, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %241

233:                                              ; preds = %228
  %234 = load %struct.fire_softc*, %struct.fire_softc** %3, align 8
  %235 = load i32, i32* @FO_PCI_LPU_LNK_LYR_INT_STAT, align 4
  %236 = call i32 @FIRE_PCI_READ_8(%struct.fire_softc* %234, i32 %235)
  store i32 %236, i32* %16, align 4
  %237 = load i32, i32* %4, align 4
  %238 = load i32, i32* %16, align 4
  %239 = sext i32 %238 to i64
  %240 = call i32 (i32, i8*, i64, ...) @device_printf(i32 %237, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0), i64 %239)
  br label %241

241:                                              ; preds = %233, %228
  %242 = load i32, i32* %15, align 4
  %243 = load i32, i32* @FO_PCI_TLU_UERR_INT_TE_P, align 4
  %244 = and i32 %242, %243
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %254

246:                                              ; preds = %241
  %247 = load %struct.fire_softc*, %struct.fire_softc** %3, align 8
  %248 = load i32, i32* @FO_PCI_LPU_PHY_LYR_INT_STAT, align 4
  %249 = call i32 @FIRE_PCI_READ_8(%struct.fire_softc* %247, i32 %248)
  store i32 %249, i32* %16, align 4
  %250 = load i32, i32* %4, align 4
  %251 = load i32, i32* %16, align 4
  %252 = sext i32 %251 to i64
  %253 = call i32 (i32, i8*, i64, ...) @device_printf(i32 %250, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0), i64 %252)
  br label %254

254:                                              ; preds = %246, %241
  br label %255

255:                                              ; preds = %254, %161
  %256 = load i32, i32* %14, align 4
  %257 = load i32, i32* @FO_PCI_PEC_CORE_BLOCK_INT_STAT_CERR, align 4
  %258 = and i32 %256, %257
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %300

260:                                              ; preds = %255
  %261 = load %struct.fire_softc*, %struct.fire_softc** %3, align 8
  %262 = getelementptr inbounds %struct.fire_softc, %struct.fire_softc* %261, i32 0, i32 6
  %263 = load i32, i32* %262, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %262, align 4
  %265 = load %struct.fire_softc*, %struct.fire_softc** %3, align 8
  %266 = load i32, i32* @FO_PCI_TLU_CERR_INT_STAT, align 4
  %267 = call i32 @FIRE_PCI_READ_8(%struct.fire_softc* %265, i32 %266)
  store i32 %267, i32* %5, align 4
  %268 = load i32, i32* %4, align 4
  %269 = load i32, i32* %5, align 4
  %270 = sext i32 %269 to i64
  %271 = call i32 (i32, i8*, i64, ...) @device_printf(i32 %268, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0), i64 %270)
  %272 = load %struct.fire_softc*, %struct.fire_softc** %3, align 8
  %273 = load i32, i32* @FO_PCI_LPU_LNK_LYR_INT_STAT, align 4
  %274 = call i32 @FIRE_PCI_READ_8(%struct.fire_softc* %272, i32 %273)
  store i32 %274, i32* %16, align 4
  %275 = load i32, i32* %4, align 4
  %276 = load i32, i32* %16, align 4
  %277 = sext i32 %276 to i64
  %278 = call i32 (i32, i8*, i64, ...) @device_printf(i32 %275, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0), i64 %277)
  %279 = load i32, i32* %5, align 4
  %280 = load i32, i32* @FO_PCI_TLU_CERR_INT_RE_P, align 4
  %281 = and i32 %279, %280
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %295

283:                                              ; preds = %260
  %284 = load %struct.fire_softc*, %struct.fire_softc** %3, align 8
  %285 = load i32, i32* @FO_PCI_LPU_LNK_LYR_INT_STAT, align 4
  %286 = load i32, i32* %16, align 4
  %287 = call i32 @FIRE_PCI_WRITE_8(%struct.fire_softc* %284, i32 %285, i32 %286)
  %288 = load %struct.fire_softc*, %struct.fire_softc** %3, align 8
  %289 = load i32, i32* @FO_PCI_LPU_PHY_LYR_INT_STAT, align 4
  %290 = call i32 @FIRE_PCI_READ_8(%struct.fire_softc* %288, i32 %289)
  store i32 %290, i32* %16, align 4
  %291 = load i32, i32* %4, align 4
  %292 = load i32, i32* %16, align 4
  %293 = sext i32 %292 to i64
  %294 = call i32 (i32, i8*, i64, ...) @device_printf(i32 %291, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0), i64 %293)
  br label %295

295:                                              ; preds = %283, %260
  %296 = load %struct.fire_softc*, %struct.fire_softc** %3, align 8
  %297 = load i32, i32* @FO_PCI_TLU_CERR_STAT_CLR, align 4
  %298 = load i32, i32* %5, align 4
  %299 = call i32 @FIRE_PCI_WRITE_8(%struct.fire_softc* %296, i32 %297, i32 %298)
  br label %300

300:                                              ; preds = %295, %255
  %301 = load i32, i32* %14, align 4
  %302 = load i32, i32* @FO_PCI_PEC_CORE_BLOCK_INT_STAT_OEVENT, align 4
  %303 = and i32 %301, %302
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %480

305:                                              ; preds = %300
  store i32 0, i32* %18, align 4
  %306 = load %struct.fire_softc*, %struct.fire_softc** %3, align 8
  %307 = load i32, i32* @FO_PCI_TLU_OEVENT_INT_STAT, align 4
  %308 = call i32 @FIRE_PCI_READ_8(%struct.fire_softc* %306, i32 %307)
  store i32 %308, i32* %13, align 4
  %309 = load i32, i32* %4, align 4
  %310 = load i32, i32* %13, align 4
  %311 = sext i32 %310 to i64
  %312 = call i32 (i32, i8*, i64, ...) @device_printf(i32 %309, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), i64 %311)
  %313 = load i32, i32* %13, align 4
  %314 = load i32, i32* @FO_PCI_TLU_OEVENT_MFC_P, align 4
  %315 = load i32, i32* @FO_PCI_TLU_OEVENT_MRC_P, align 4
  %316 = or i32 %314, %315
  %317 = load i32, i32* @FO_PCI_TLU_OEVENT_WUC_P, align 4
  %318 = or i32 %316, %317
  %319 = load i32, i32* @FO_PCI_TLU_OEVENT_RUC_P, align 4
  %320 = or i32 %318, %319
  %321 = load i32, i32* @FO_PCI_TLU_OEVENT_CRS_P, align 4
  %322 = or i32 %320, %321
  %323 = and i32 %313, %322
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %357

325:                                              ; preds = %305
  %326 = load %struct.fire_softc*, %struct.fire_softc** %3, align 8
  %327 = load i32, i32* @FO_PCI_TLU_RX_OEVENT_HDR1_LOG, align 4
  %328 = call i32 @FIRE_PCI_READ_8(%struct.fire_softc* %326, i32 %327)
  store i32 %328, i32* %16, align 4
  %329 = load i32, i32* %4, align 4
  %330 = load i32, i32* %16, align 4
  %331 = sext i32 %330 to i64
  %332 = call i32 (i32, i8*, i64, ...) @device_printf(i32 %329, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i64 %331)
  %333 = load %struct.fire_softc*, %struct.fire_softc** %3, align 8
  %334 = load i32, i32* @FO_PCI_TLU_RX_OEVENT_HDR2_LOG, align 4
  %335 = call i32 @FIRE_PCI_READ_8(%struct.fire_softc* %333, i32 %334)
  store i32 %335, i32* %16, align 4
  %336 = load i32, i32* %4, align 4
  %337 = load i32, i32* %16, align 4
  %338 = sext i32 %337 to i64
  %339 = call i32 (i32, i8*, i64, ...) @device_printf(i32 %336, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i64 %338)
  %340 = load i32, i32* %13, align 4
  %341 = load i32, i32* @FO_PCI_TLU_OEVENT_MFC_P, align 4
  %342 = load i32, i32* @FO_PCI_TLU_OEVENT_MRC_P, align 4
  %343 = or i32 %341, %342
  %344 = load i32, i32* @FO_PCI_TLU_OEVENT_WUC_P, align 4
  %345 = or i32 %343, %344
  %346 = load i32, i32* @FO_PCI_TLU_OEVENT_RUC_P, align 4
  %347 = or i32 %345, %346
  %348 = and i32 %340, %347
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %351

350:                                              ; preds = %325
  store i32 1, i32* %17, align 4
  br label %356

351:                                              ; preds = %325
  %352 = load %struct.fire_softc*, %struct.fire_softc** %3, align 8
  %353 = getelementptr inbounds %struct.fire_softc, %struct.fire_softc* %352, i32 0, i32 5
  %354 = load i32, i32* %353, align 4
  %355 = add nsw i32 %354, 1
  store i32 %355, i32* %353, align 4
  store i32 1, i32* %18, align 4
  br label %356

356:                                              ; preds = %351, %350
  br label %357

357:                                              ; preds = %356, %305
  %358 = load i32, i32* %13, align 4
  %359 = load i32, i32* @FO_PCI_TLU_OEVENT_MFC_P, align 4
  %360 = load i32, i32* @FO_PCI_TLU_OEVENT_CTO_P, align 4
  %361 = or i32 %359, %360
  %362 = load i32, i32* @FO_PCI_TLU_OEVENT_WUC_P, align 4
  %363 = or i32 %361, %362
  %364 = load i32, i32* @FO_PCI_TLU_OEVENT_RUC_P, align 4
  %365 = or i32 %363, %364
  %366 = and i32 %358, %365
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %400

368:                                              ; preds = %357
  %369 = load %struct.fire_softc*, %struct.fire_softc** %3, align 8
  %370 = load i32, i32* @FO_PCI_TLU_TX_OEVENT_HDR1_LOG, align 4
  %371 = call i32 @FIRE_PCI_READ_8(%struct.fire_softc* %369, i32 %370)
  store i32 %371, i32* %16, align 4
  %372 = load i32, i32* %4, align 4
  %373 = load i32, i32* %16, align 4
  %374 = sext i32 %373 to i64
  %375 = call i32 (i32, i8*, i64, ...) @device_printf(i32 %372, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i64 %374)
  %376 = load %struct.fire_softc*, %struct.fire_softc** %3, align 8
  %377 = load i32, i32* @FO_PCI_TLU_TX_OEVENT_HDR2_LOG, align 4
  %378 = call i32 @FIRE_PCI_READ_8(%struct.fire_softc* %376, i32 %377)
  store i32 %378, i32* %16, align 4
  %379 = load i32, i32* %4, align 4
  %380 = load i32, i32* %16, align 4
  %381 = sext i32 %380 to i64
  %382 = call i32 (i32, i8*, i64, ...) @device_printf(i32 %379, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i64 %381)
  %383 = load i32, i32* %13, align 4
  %384 = load i32, i32* @FO_PCI_TLU_OEVENT_MFC_P, align 4
  %385 = load i32, i32* @FO_PCI_TLU_OEVENT_CTO_P, align 4
  %386 = or i32 %384, %385
  %387 = load i32, i32* @FO_PCI_TLU_OEVENT_WUC_P, align 4
  %388 = or i32 %386, %387
  %389 = load i32, i32* @FO_PCI_TLU_OEVENT_RUC_P, align 4
  %390 = or i32 %388, %389
  %391 = and i32 %383, %390
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %394

393:                                              ; preds = %368
  store i32 1, i32* %17, align 4
  br label %399

394:                                              ; preds = %368
  %395 = load %struct.fire_softc*, %struct.fire_softc** %3, align 8
  %396 = getelementptr inbounds %struct.fire_softc, %struct.fire_softc* %395, i32 0, i32 4
  %397 = load i32, i32* %396, align 4
  %398 = add nsw i32 %397, 1
  store i32 %398, i32* %396, align 4
  store i32 1, i32* %18, align 4
  br label %399

399:                                              ; preds = %394, %393
  br label %400

400:                                              ; preds = %399, %357
  %401 = load i32, i32* %13, align 4
  %402 = load i32, i32* @FO_PCI_TLU_OEVENT_ERO_P, align 4
  %403 = load i32, i32* @FO_PCI_TLU_OEVENT_EMP_P, align 4
  %404 = or i32 %402, %403
  %405 = load i32, i32* @FO_PCI_TLU_OEVENT_EPE_P, align 4
  %406 = or i32 %404, %405
  %407 = load i32, i32* @FIRE_PCI_TLU_OEVENT_ERP_P, align 4
  %408 = or i32 %406, %407
  %409 = load i32, i32* @OBERON_PCI_TLU_OEVENT_ERBU_P, align 4
  %410 = or i32 %408, %409
  %411 = load i32, i32* @FIRE_PCI_TLU_OEVENT_EIP_P, align 4
  %412 = or i32 %410, %411
  %413 = load i32, i32* @OBERON_PCI_TLU_OEVENT_EIUE_P, align 4
  %414 = or i32 %412, %413
  %415 = and i32 %401, %414
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %425

417:                                              ; preds = %400
  store i32 1, i32* %17, align 4
  %418 = load %struct.fire_softc*, %struct.fire_softc** %3, align 8
  %419 = load i32, i32* @FO_PCI_LPU_LNK_LYR_INT_STAT, align 4
  %420 = call i32 @FIRE_PCI_READ_8(%struct.fire_softc* %418, i32 %419)
  store i32 %420, i32* %16, align 4
  %421 = load i32, i32* %4, align 4
  %422 = load i32, i32* %16, align 4
  %423 = sext i32 %422 to i64
  %424 = call i32 (i32, i8*, i64, ...) @device_printf(i32 %421, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0), i64 %423)
  br label %425

425:                                              ; preds = %417, %400
  %426 = load i32, i32* %13, align 4
  %427 = load i32, i32* @FO_PCI_TLU_OEVENT_IIP_P, align 4
  %428 = load i32, i32* @FO_PCI_TLU_OEVENT_EDP_P, align 4
  %429 = or i32 %427, %428
  %430 = load i32, i32* @FIRE_PCI_TLU_OEVENT_EHP_P, align 4
  %431 = or i32 %429, %430
  %432 = load i32, i32* @OBERON_PCI_TLU_OEVENT_TLUEITMO_S, align 4
  %433 = or i32 %431, %432
  %434 = load i32, i32* @FO_PCI_TLU_OEVENT_ERU_P, align 4
  %435 = or i32 %433, %434
  %436 = and i32 %426, %435
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %438, label %439

438:                                              ; preds = %425
  store i32 1, i32* %17, align 4
  br label %439

439:                                              ; preds = %438, %425
  %440 = load i32, i32* %13, align 4
  %441 = load i32, i32* @FO_PCI_TLU_OEVENT_NFP_P, align 4
  %442 = load i32, i32* @FO_PCI_TLU_OEVENT_LWC_P, align 4
  %443 = or i32 %441, %442
  %444 = load i32, i32* @FO_PCI_TLU_OEVENT_LIN_P, align 4
  %445 = or i32 %443, %444
  %446 = load i32, i32* @FO_PCI_TLU_OEVENT_LRS_P, align 4
  %447 = or i32 %445, %446
  %448 = load i32, i32* @FO_PCI_TLU_OEVENT_LDN_P, align 4
  %449 = or i32 %447, %448
  %450 = load i32, i32* @FO_PCI_TLU_OEVENT_LUP_P, align 4
  %451 = or i32 %449, %450
  %452 = and i32 %440, %451
  %453 = icmp ne i32 %452, 0
  br i1 %453, label %454, label %455

454:                                              ; preds = %439
  store i32 1, i32* %18, align 4
  br label %455

455:                                              ; preds = %454, %439
  %456 = load i32, i32* %18, align 4
  %457 = icmp ne i32 %456, 0
  br i1 %457, label %458, label %479

458:                                              ; preds = %455
  %459 = load %struct.fire_softc*, %struct.fire_softc** %3, align 8
  %460 = getelementptr inbounds %struct.fire_softc, %struct.fire_softc* %459, i32 0, i32 3
  %461 = load i32, i32* %460, align 4
  %462 = add nsw i32 %461, 1
  store i32 %462, i32* %460, align 4
  %463 = load %struct.fire_softc*, %struct.fire_softc** %3, align 8
  %464 = load i32, i32* @FO_PCI_TLU_OEVENT_STAT_CLR, align 4
  %465 = load i32, i32* %13, align 4
  %466 = call i32 @FIRE_PCI_WRITE_8(%struct.fire_softc* %463, i32 %464, i32 %465)
  %467 = load i32, i32* %13, align 4
  %468 = load i32, i32* @FO_PCI_TLU_OEVENT_LIN_P, align 4
  %469 = and i32 %467, %468
  %470 = icmp ne i32 %469, 0
  br i1 %470, label %471, label %478

471:                                              ; preds = %458
  %472 = load %struct.fire_softc*, %struct.fire_softc** %3, align 8
  %473 = load i32, i32* @FO_PCI_LPU_LNK_LYR_INT_STAT, align 4
  %474 = load %struct.fire_softc*, %struct.fire_softc** %3, align 8
  %475 = load i32, i32* @FO_PCI_LPU_LNK_LYR_INT_STAT, align 4
  %476 = call i32 @FIRE_PCI_READ_8(%struct.fire_softc* %474, i32 %475)
  %477 = call i32 @FIRE_PCI_WRITE_8(%struct.fire_softc* %472, i32 %473, i32 %476)
  br label %478

478:                                              ; preds = %471, %458
  br label %479

479:                                              ; preds = %478, %455
  br label %480

480:                                              ; preds = %479, %300
  %481 = load i32, i32* %14, align 4
  %482 = load i32, i32* @FO_PCI_PEC_CORE_BLOCK_INT_STAT_ILU, align 4
  %483 = and i32 %481, %482
  %484 = icmp ne i32 %483, 0
  br i1 %484, label %485, label %510

485:                                              ; preds = %480
  %486 = load %struct.fire_softc*, %struct.fire_softc** %3, align 8
  %487 = load i32, i32* @FO_PCI_ILU_INT_STAT, align 4
  %488 = call i32 @FIRE_PCI_READ_8(%struct.fire_softc* %486, i32 %487)
  store i32 %488, i32* %7, align 4
  %489 = load i32, i32* %4, align 4
  %490 = load i32, i32* %7, align 4
  %491 = sext i32 %490 to i64
  %492 = call i32 (i32, i8*, i64, ...) @device_printf(i32 %489, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i64 %491)
  %493 = load i32, i32* %7, align 4
  %494 = load i32, i32* @FIRE_PCI_ILU_ERR_INT_IHB_PE_P, align 4
  %495 = load i32, i32* @FIRE_PCI_ILU_ERR_INT_IHB_PE_P, align 4
  %496 = or i32 %494, %495
  %497 = and i32 %493, %496
  %498 = icmp ne i32 %497, 0
  br i1 %498, label %499, label %500

499:                                              ; preds = %485
  store i32 1, i32* %17, align 4
  br label %509

500:                                              ; preds = %485
  %501 = load %struct.fire_softc*, %struct.fire_softc** %3, align 8
  %502 = getelementptr inbounds %struct.fire_softc, %struct.fire_softc* %501, i32 0, i32 2
  %503 = load i32, i32* %502, align 4
  %504 = add nsw i32 %503, 1
  store i32 %504, i32* %502, align 4
  %505 = load %struct.fire_softc*, %struct.fire_softc** %3, align 8
  %506 = load i32, i32* @FO_PCI_ILU_INT_STAT, align 4
  %507 = load i32, i32* %7, align 4
  %508 = call i32 @FIRE_PCI_WRITE_8(%struct.fire_softc* %505, i32 %506, i32 %507)
  br label %509

509:                                              ; preds = %500, %499
  br label %510

510:                                              ; preds = %509, %480
  br label %511

511:                                              ; preds = %510, %156
  %512 = load %struct.fire_softc*, %struct.fire_softc** %3, align 8
  %513 = getelementptr inbounds %struct.fire_softc, %struct.fire_softc* %512, i32 0, i32 1
  %514 = call i32 @mtx_unlock_spin(i32* %513)
  %515 = load i32, i32* %17, align 4
  %516 = icmp ne i32 %515, 0
  br i1 %516, label %517, label %523

517:                                              ; preds = %511
  %518 = load %struct.fire_softc*, %struct.fire_softc** %3, align 8
  %519 = getelementptr inbounds %struct.fire_softc, %struct.fire_softc* %518, i32 0, i32 0
  %520 = load i32, i32* %519, align 4
  %521 = call i32 @device_get_nameunit(i32 %520)
  %522 = call i32 @panic(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0), i32 %521)
  br label %523

523:                                              ; preds = %517, %511
  %524 = load i32, i32* @FILTER_HANDLED, align 4
  ret i32 %524
}

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @FIRE_PCI_READ_8(%struct.fire_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i64, ...) #1

declare dso_local i32 @FIRE_PCI_WRITE_8(%struct.fire_softc*, i32, i32) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
