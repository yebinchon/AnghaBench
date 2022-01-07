; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_mskc_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_mskc_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msk_softc = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32**, i32, i32, i8*, i8*, i32, i32* }
%struct.msk_mii_data = type { i64, i32, i32 }

@MTX_NETWORK_LOCK = common dso_local global i32 0, align 4
@MTX_DEF = common dso_local global i32 0, align 4
@msk_res_spec_mem = common dso_local global i64 0, align 8
@msk_irq_spec_legacy = common dso_local global i64 0, align 8
@msk_res_spec_io = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"couldn't allocate %s resources\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"memory\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"I/O\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@PCI_OUR_REG_3 = common dso_local global i32 0, align 4
@B0_CTST = common dso_local global i32 0, align 4
@CS_RST_CLR = common dso_local global i32 0, align 4
@B2_CHIP_ID = common dso_local global i32 0, align 4
@B2_MAC_CFG = common dso_local global i32 0, align 4
@CHIP_ID_YUKON_UNKNOWN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"unknown device: id=0x%02x, rev=0x%02x\0A\00", align 1
@OID_AUTO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"process_limit\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RW = common dso_local global i32 0, align 4
@sysctl_hw_msk_proc_limit = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"max number of Rx events to process\00", align 1
@MSK_PROC_DEFAULT = common dso_local global i8* null, align 8
@MSK_PROC_MIN = common dso_local global i8* null, align 8
@MSK_PROC_MAX = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [53 x i8] c"process_limit value out of range; using default: %d\0A\00", align 1
@MSK_INT_HOLDOFF_DEFAULT = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [12 x i8] c"int_holdoff\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"Maximum number of time to delay interrupts\00", align 1
@B2_PMD_TYP = common dso_local global i32 0, align 4
@B2_Y2_HW_RES = common dso_local global i32 0, align 4
@CFG_DUAL_MAC_MSK = common dso_local global i32 0, align 4
@B2_Y2_CLK_GATE = common dso_local global i32 0, align 4
@Y2_STATUS_LNK2_INAC = common dso_local global i32 0, align 4
@PCIY_EXPRESS = common dso_local global i32 0, align 4
@MSK_PEX_BUS = common dso_local global i32 0, align 4
@PCIY_PCIX = common dso_local global i32 0, align 4
@MSK_PCIX_BUS = common dso_local global i32 0, align 4
@MSK_PCI_BUS = common dso_local global i32 0, align 4
@MSK_FLAG_JUMBO = common dso_local global i32 0, align 4
@MSK_FLAG_JUMBO_NOCSUM = common dso_local global i32 0, align 4
@MSK_FLAG_DESCV2 = common dso_local global i32 0, align 4
@MSK_FLAG_AUTOTX_CSUM = common dso_local global i32 0, align 4
@CHIP_REV_YU_EX_B0 = common dso_local global i32 0, align 4
@CHIP_REV_YU_EX_A0 = common dso_local global i32 0, align 4
@MSK_FLAG_FASTETHER = common dso_local global i32 0, align 4
@CHIP_REV_YU_FE_P_A0 = common dso_local global i32 0, align 4
@MSK_FLAG_NOHWVLAN = common dso_local global i32 0, align 4
@MSK_FLAG_NORXCHK = common dso_local global i32 0, align 4
@MSK_FLAG_NORX_CSUM = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [16 x i8] c"MSI count : %d\0A\00", align 1
@legacy_intr = common dso_local global i64 0, align 8
@msi_disable = common dso_local global i32 0, align 4
@MSK_FLAG_MSI = common dso_local global i32 0, align 4
@msk_irq_spec_msi = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [33 x i8] c"couldn't allocate IRQ resources\0A\00", align 1
@Y2_IS_HW_ERR = common dso_local global i32 0, align 4
@Y2_IS_STAT_BMU = common dso_local global i32 0, align 4
@Y2_IS_TIST_OV = common dso_local global i32 0, align 4
@Y2_IS_MST_ERR = common dso_local global i32 0, align 4
@Y2_IS_IRQ_STAT = common dso_local global i32 0, align 4
@Y2_IS_PCI_EXP = common dso_local global i32 0, align 4
@Y2_IS_PCI_NEXP = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [4 x i8] c"msk\00", align 1
@MSK_PORT_A = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [32 x i8] c"failed to add child for PORT_A\0A\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@MIIF_DOPAUSE = common dso_local global i32 0, align 4
@MIIF_HAVEFIBER = common dso_local global i32 0, align 4
@MIIF_MACPRIV0 = common dso_local global i32 0, align 4
@MSK_PORT_B = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [32 x i8] c"failed to add child for PORT_B\0A\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"failed to attach port(s)\0A\00", align 1
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@msk_intr = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [35 x i8] c"couldn't set up interrupt handler\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mskc_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mskc_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.msk_softc*, align 8
  %5 = alloca %struct.msk_mii_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.msk_softc* @device_get_softc(i32 %10)
  store %struct.msk_softc* %11, %struct.msk_softc** %4, align 8
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %14 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %13, i32 0, i32 16
  store i32 %12, i32* %14, align 4
  %15 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %16 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %15, i32 0, i32 19
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @device_get_nameunit(i32 %17)
  %19 = load i32, i32* @MTX_NETWORK_LOCK, align 4
  %20 = load i32, i32* @MTX_DEF, align 4
  %21 = call i32 @mtx_init(i32* %16, i32 %18, i32 %19, i32 %20)
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @pci_enable_busmaster(i32 %22)
  %24 = load i64, i64* @msk_res_spec_mem, align 8
  %25 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %26 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load i64, i64* @msk_irq_spec_legacy, align 8
  %28 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %29 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  %30 = load i32, i32* %3, align 4
  %31 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %32 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %35 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %34, i32 0, i32 20
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @bus_alloc_resources(i32 %30, i64 %33, i32* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %81

40:                                               ; preds = %1
  %41 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %42 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @msk_res_spec_mem, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load i8*, i8** @msk_res_spec_io, align 8
  %48 = ptrtoint i8* %47 to i64
  %49 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %50 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  br label %55

51:                                               ; preds = %40
  %52 = load i64, i64* @msk_res_spec_mem, align 8
  %53 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %54 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  br label %55

55:                                               ; preds = %51, %46
  %56 = load i32, i32* %3, align 4
  %57 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %58 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %61 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %60, i32 0, i32 20
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @bus_alloc_resources(i32 %56, i64 %59, i32* %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %80

66:                                               ; preds = %55
  %67 = load i32, i32* %3, align 4
  %68 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %69 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @msk_res_spec_mem, align 8
  %72 = icmp eq i64 %70, %71
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %75 = call i32 (i32, i8*, ...) @device_printf(i32 %67, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %74)
  %76 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %77 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %76, i32 0, i32 19
  %78 = call i32 @mtx_destroy(i32* %77)
  %79 = load i32, i32* @ENXIO, align 4
  store i32 %79, i32* %2, align 4
  br label %662

80:                                               ; preds = %55
  br label %81

81:                                               ; preds = %80, %1
  %82 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %83 = load i32, i32* @PCI_OUR_REG_3, align 4
  %84 = call i32 @CSR_PCI_WRITE_4(%struct.msk_softc* %82, i32 %83, i32 0)
  %85 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %86 = load i32, i32* @B0_CTST, align 4
  %87 = load i32, i32* @CS_RST_CLR, align 4
  %88 = call i32 @CSR_WRITE_2(%struct.msk_softc* %85, i32 %86, i32 %87)
  %89 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %90 = load i32, i32* @B2_CHIP_ID, align 4
  %91 = call i32 @CSR_READ_1(%struct.msk_softc* %89, i32 %90)
  %92 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %93 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 8
  %94 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %95 = load i32, i32* @B2_MAC_CFG, align 4
  %96 = call i32 @CSR_READ_1(%struct.msk_softc* %94, i32 %95)
  %97 = ashr i32 %96, 4
  %98 = and i32 %97, 15
  %99 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %100 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %99, i32 0, i32 3
  store i32 %98, i32* %100, align 4
  %101 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %102 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = icmp slt i32 %103, 128
  br i1 %104, label %116, label %105

105:                                              ; preds = %81
  %106 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %107 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = icmp sgt i32 %108, 131
  br i1 %109, label %116, label %110

110:                                              ; preds = %105
  %111 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %112 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @CHIP_ID_YUKON_UNKNOWN, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %129

116:                                              ; preds = %110, %105, %81
  %117 = load i32, i32* %3, align 4
  %118 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %119 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %122 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = call i32 (i32, i8*, ...) @device_printf(i32 %117, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %120, i32 %123)
  %125 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %126 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %125, i32 0, i32 19
  %127 = call i32 @mtx_destroy(i32* %126)
  %128 = load i32, i32* @ENXIO, align 4
  store i32 %128, i32* %2, align 4
  br label %662

129:                                              ; preds = %110
  %130 = load i32, i32* %3, align 4
  %131 = call i32 @device_get_sysctl_ctx(i32 %130)
  %132 = load i32, i32* %3, align 4
  %133 = call i32 @device_get_sysctl_tree(i32 %132)
  %134 = call i32 @SYSCTL_CHILDREN(i32 %133)
  %135 = load i32, i32* @OID_AUTO, align 4
  %136 = load i32, i32* @CTLTYPE_INT, align 4
  %137 = load i32, i32* @CTLFLAG_RW, align 4
  %138 = or i32 %136, %137
  %139 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %140 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %139, i32 0, i32 18
  %141 = load i32, i32* @sysctl_hw_msk_proc_limit, align 4
  %142 = call i32 @SYSCTL_ADD_PROC(i32 %131, i32 %134, i32 %135, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %138, i8** %140, i32 0, i32 %141, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  %143 = load i8*, i8** @MSK_PROC_DEFAULT, align 8
  %144 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %145 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %144, i32 0, i32 18
  store i8* %143, i8** %145, align 8
  %146 = load i32, i32* %3, align 4
  %147 = call i32 @device_get_name(i32 %146)
  %148 = load i32, i32* %3, align 4
  %149 = call i32 @device_get_unit(i32 %148)
  %150 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %151 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %150, i32 0, i32 18
  %152 = call i32 @resource_int_value(i32 %147, i32 %149, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8** %151)
  store i32 %152, i32* %6, align 4
  %153 = load i32, i32* %6, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %175

155:                                              ; preds = %129
  %156 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %157 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %156, i32 0, i32 18
  %158 = load i8*, i8** %157, align 8
  %159 = load i8*, i8** @MSK_PROC_MIN, align 8
  %160 = icmp ult i8* %158, %159
  br i1 %160, label %167, label %161

161:                                              ; preds = %155
  %162 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %163 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %162, i32 0, i32 18
  %164 = load i8*, i8** %163, align 8
  %165 = load i8*, i8** @MSK_PROC_MAX, align 8
  %166 = icmp ugt i8* %164, %165
  br i1 %166, label %167, label %174

167:                                              ; preds = %161, %155
  %168 = load i32, i32* %3, align 4
  %169 = load i8*, i8** @MSK_PROC_DEFAULT, align 8
  %170 = call i32 (i32, i8*, ...) @device_printf(i32 %168, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i8* %169)
  %171 = load i8*, i8** @MSK_PROC_DEFAULT, align 8
  %172 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %173 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %172, i32 0, i32 18
  store i8* %171, i8** %173, align 8
  br label %174

174:                                              ; preds = %167, %161
  br label %175

175:                                              ; preds = %174, %129
  %176 = load i8*, i8** @MSK_INT_HOLDOFF_DEFAULT, align 8
  %177 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %178 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %177, i32 0, i32 17
  store i8* %176, i8** %178, align 8
  %179 = load i32, i32* %3, align 4
  %180 = call i32 @device_get_sysctl_ctx(i32 %179)
  %181 = load i32, i32* %3, align 4
  %182 = call i32 @device_get_sysctl_tree(i32 %181)
  %183 = call i32 @SYSCTL_CHILDREN(i32 %182)
  %184 = load i32, i32* @OID_AUTO, align 4
  %185 = load i32, i32* @CTLFLAG_RW, align 4
  %186 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %187 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %186, i32 0, i32 17
  %188 = call i32 @SYSCTL_ADD_INT(i32 %180, i32 %183, i32 %184, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 %185, i8** %187, i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0))
  %189 = load i32, i32* %3, align 4
  %190 = call i32 @device_get_name(i32 %189)
  %191 = load i32, i32* %3, align 4
  %192 = call i32 @device_get_unit(i32 %191)
  %193 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %194 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %193, i32 0, i32 17
  %195 = call i32 @resource_int_value(i32 %190, i32 %192, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8** %194)
  %196 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %197 = load i32, i32* @B2_PMD_TYP, align 4
  %198 = call i32 @CSR_READ_1(%struct.msk_softc* %196, i32 %197)
  %199 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %200 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %199, i32 0, i32 4
  store i32 %198, i32* %200, align 8
  %201 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %202 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %201, i32 0, i32 5
  store i32 1, i32* %202, align 4
  %203 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %204 = load i32, i32* @B2_Y2_HW_RES, align 4
  %205 = call i32 @CSR_READ_1(%struct.msk_softc* %203, i32 %204)
  %206 = load i32, i32* @CFG_DUAL_MAC_MSK, align 4
  %207 = and i32 %205, %206
  %208 = load i32, i32* @CFG_DUAL_MAC_MSK, align 4
  %209 = icmp eq i32 %207, %208
  br i1 %209, label %210, label %223

210:                                              ; preds = %175
  %211 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %212 = load i32, i32* @B2_Y2_CLK_GATE, align 4
  %213 = call i32 @CSR_READ_1(%struct.msk_softc* %211, i32 %212)
  %214 = load i32, i32* @Y2_STATUS_LNK2_INAC, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %222, label %217

217:                                              ; preds = %210
  %218 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %219 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %218, i32 0, i32 5
  %220 = load i32, i32* %219, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %219, align 4
  br label %222

222:                                              ; preds = %217, %210
  br label %223

223:                                              ; preds = %222, %175
  %224 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %225 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %224, i32 0, i32 16
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* @PCIY_EXPRESS, align 4
  %228 = call i64 @pci_find_cap(i32 %226, i32 %227, i32* %9)
  %229 = icmp eq i64 %228, 0
  br i1 %229, label %230, label %237

230:                                              ; preds = %223
  %231 = load i32, i32* @MSK_PEX_BUS, align 4
  %232 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %233 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %232, i32 0, i32 15
  store i32 %231, i32* %233, align 8
  %234 = load i32, i32* %9, align 4
  %235 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %236 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %235, i32 0, i32 6
  store i32 %234, i32* %236, align 8
  br label %256

237:                                              ; preds = %223
  %238 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %239 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %238, i32 0, i32 16
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* @PCIY_PCIX, align 4
  %242 = call i64 @pci_find_cap(i32 %240, i32 %241, i32* %9)
  %243 = icmp eq i64 %242, 0
  br i1 %243, label %244, label %251

244:                                              ; preds = %237
  %245 = load i32, i32* @MSK_PCIX_BUS, align 4
  %246 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %247 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %246, i32 0, i32 15
  store i32 %245, i32* %247, align 8
  %248 = load i32, i32* %9, align 4
  %249 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %250 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %249, i32 0, i32 7
  store i32 %248, i32* %250, align 4
  br label %255

251:                                              ; preds = %237
  %252 = load i32, i32* @MSK_PCI_BUS, align 4
  %253 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %254 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %253, i32 0, i32 15
  store i32 %252, i32* %254, align 8
  br label %255

255:                                              ; preds = %251, %244
  br label %256

256:                                              ; preds = %255, %230
  %257 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %258 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 8
  switch i32 %259, label %389 [
    i32 136, label %260
    i32 135, label %268
    i32 134, label %278
    i32 133, label %315
    i32 132, label %323
    i32 128, label %351
    i32 130, label %359
    i32 129, label %371
    i32 131, label %379
  ]

260:                                              ; preds = %256
  %261 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %262 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %261, i32 0, i32 8
  store i32 125, i32* %262, align 8
  %263 = load i32, i32* @MSK_FLAG_JUMBO, align 4
  %264 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %265 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %264, i32 0, i32 9
  %266 = load i32, i32* %265, align 4
  %267 = or i32 %266, %263
  store i32 %267, i32* %265, align 4
  br label %392

268:                                              ; preds = %256
  %269 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %270 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %269, i32 0, i32 8
  store i32 125, i32* %270, align 8
  %271 = load i32, i32* @MSK_FLAG_JUMBO, align 4
  %272 = load i32, i32* @MSK_FLAG_JUMBO_NOCSUM, align 4
  %273 = or i32 %271, %272
  %274 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %275 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %274, i32 0, i32 9
  %276 = load i32, i32* %275, align 4
  %277 = or i32 %276, %273
  store i32 %277, i32* %275, align 4
  br label %392

278:                                              ; preds = %256
  %279 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %280 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %279, i32 0, i32 8
  store i32 125, i32* %280, align 8
  %281 = load i32, i32* @MSK_FLAG_JUMBO, align 4
  %282 = load i32, i32* @MSK_FLAG_DESCV2, align 4
  %283 = or i32 %281, %282
  %284 = load i32, i32* @MSK_FLAG_AUTOTX_CSUM, align 4
  %285 = or i32 %283, %284
  %286 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %287 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %286, i32 0, i32 9
  %288 = load i32, i32* %287, align 4
  %289 = or i32 %288, %285
  store i32 %289, i32* %287, align 4
  %290 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %291 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %290, i32 0, i32 3
  %292 = load i32, i32* %291, align 4
  %293 = load i32, i32* @CHIP_REV_YU_EX_B0, align 4
  %294 = icmp eq i32 %292, %293
  br i1 %294, label %295, label %302

295:                                              ; preds = %278
  %296 = load i32, i32* @MSK_FLAG_AUTOTX_CSUM, align 4
  %297 = xor i32 %296, -1
  %298 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %299 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %298, i32 0, i32 9
  %300 = load i32, i32* %299, align 4
  %301 = and i32 %300, %297
  store i32 %301, i32* %299, align 4
  br label %302

302:                                              ; preds = %295, %278
  %303 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %304 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %303, i32 0, i32 3
  %305 = load i32, i32* %304, align 4
  %306 = load i32, i32* @CHIP_REV_YU_EX_A0, align 4
  %307 = icmp eq i32 %305, %306
  br i1 %307, label %308, label %314

308:                                              ; preds = %302
  %309 = load i32, i32* @MSK_FLAG_JUMBO_NOCSUM, align 4
  %310 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %311 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %310, i32 0, i32 9
  %312 = load i32, i32* %311, align 4
  %313 = or i32 %312, %309
  store i32 %313, i32* %311, align 4
  br label %314

314:                                              ; preds = %308, %302
  br label %392

315:                                              ; preds = %256
  %316 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %317 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %316, i32 0, i32 8
  store i32 100, i32* %317, align 8
  %318 = load i32, i32* @MSK_FLAG_FASTETHER, align 4
  %319 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %320 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %319, i32 0, i32 9
  %321 = load i32, i32* %320, align 4
  %322 = or i32 %321, %318
  store i32 %322, i32* %320, align 4
  br label %392

323:                                              ; preds = %256
  %324 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %325 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %324, i32 0, i32 8
  store i32 50, i32* %325, align 8
  %326 = load i32, i32* @MSK_FLAG_FASTETHER, align 4
  %327 = load i32, i32* @MSK_FLAG_DESCV2, align 4
  %328 = or i32 %326, %327
  %329 = load i32, i32* @MSK_FLAG_AUTOTX_CSUM, align 4
  %330 = or i32 %328, %329
  %331 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %332 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %331, i32 0, i32 9
  %333 = load i32, i32* %332, align 4
  %334 = or i32 %333, %330
  store i32 %334, i32* %332, align 4
  %335 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %336 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %335, i32 0, i32 3
  %337 = load i32, i32* %336, align 4
  %338 = load i32, i32* @CHIP_REV_YU_FE_P_A0, align 4
  %339 = icmp eq i32 %337, %338
  br i1 %339, label %340, label %350

340:                                              ; preds = %323
  %341 = load i32, i32* @MSK_FLAG_NOHWVLAN, align 4
  %342 = load i32, i32* @MSK_FLAG_NORXCHK, align 4
  %343 = or i32 %341, %342
  %344 = load i32, i32* @MSK_FLAG_NORX_CSUM, align 4
  %345 = or i32 %343, %344
  %346 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %347 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %346, i32 0, i32 9
  %348 = load i32, i32* %347, align 4
  %349 = or i32 %348, %345
  store i32 %349, i32* %347, align 4
  br label %350

350:                                              ; preds = %340, %323
  br label %392

351:                                              ; preds = %256
  %352 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %353 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %352, i32 0, i32 8
  store i32 156, i32* %353, align 8
  %354 = load i32, i32* @MSK_FLAG_JUMBO, align 4
  %355 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %356 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %355, i32 0, i32 9
  %357 = load i32, i32* %356, align 4
  %358 = or i32 %357, %354
  store i32 %358, i32* %356, align 4
  br label %392

359:                                              ; preds = %256
  %360 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %361 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %360, i32 0, i32 8
  store i32 125, i32* %361, align 8
  %362 = load i32, i32* @MSK_FLAG_JUMBO, align 4
  %363 = load i32, i32* @MSK_FLAG_DESCV2, align 4
  %364 = or i32 %362, %363
  %365 = load i32, i32* @MSK_FLAG_AUTOTX_CSUM, align 4
  %366 = or i32 %364, %365
  %367 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %368 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %367, i32 0, i32 9
  %369 = load i32, i32* %368, align 4
  %370 = or i32 %369, %366
  store i32 %370, i32* %368, align 4
  br label %392

371:                                              ; preds = %256
  %372 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %373 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %372, i32 0, i32 8
  store i32 125, i32* %373, align 8
  %374 = load i32, i32* @MSK_FLAG_JUMBO, align 4
  %375 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %376 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %375, i32 0, i32 9
  %377 = load i32, i32* %376, align 4
  %378 = or i32 %377, %374
  store i32 %378, i32* %376, align 4
  br label %392

379:                                              ; preds = %256
  %380 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %381 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %380, i32 0, i32 8
  store i32 125, i32* %381, align 8
  %382 = load i32, i32* @MSK_FLAG_JUMBO, align 4
  %383 = load i32, i32* @MSK_FLAG_DESCV2, align 4
  %384 = or i32 %382, %383
  %385 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %386 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %385, i32 0, i32 9
  %387 = load i32, i32* %386, align 4
  %388 = or i32 %387, %384
  store i32 %388, i32* %386, align 4
  br label %392

389:                                              ; preds = %256
  %390 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %391 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %390, i32 0, i32 8
  store i32 156, i32* %391, align 8
  br label %392

392:                                              ; preds = %389, %379, %371, %359, %351, %350, %315, %314, %268, %260
  %393 = load i32, i32* %3, align 4
  %394 = call i32 @pci_msi_count(i32 %393)
  store i32 %394, i32* %7, align 4
  %395 = load i64, i64* @bootverbose, align 8
  %396 = icmp ne i64 %395, 0
  br i1 %396, label %397, label %401

397:                                              ; preds = %392
  %398 = load i32, i32* %3, align 4
  %399 = load i32, i32* %7, align 4
  %400 = call i32 (i32, i8*, ...) @device_printf(i32 %398, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i32 %399)
  br label %401

401:                                              ; preds = %397, %392
  %402 = load i64, i64* @legacy_intr, align 8
  %403 = icmp ne i64 %402, 0
  br i1 %403, label %404, label %405

404:                                              ; preds = %401
  store i32 1, i32* @msi_disable, align 4
  br label %405

405:                                              ; preds = %404, %401
  %406 = load i32, i32* @msi_disable, align 4
  %407 = icmp eq i32 %406, 0
  br i1 %407, label %408, label %432

408:                                              ; preds = %405
  %409 = load i32, i32* %7, align 4
  %410 = icmp sgt i32 %409, 0
  br i1 %410, label %411, label %432

411:                                              ; preds = %408
  store i32 1, i32* %8, align 4
  %412 = load i32, i32* %3, align 4
  %413 = call i64 @pci_alloc_msi(i32 %412, i32* %8)
  %414 = icmp eq i64 %413, 0
  br i1 %414, label %415, label %431

415:                                              ; preds = %411
  %416 = load i32, i32* %8, align 4
  %417 = icmp eq i32 %416, 1
  br i1 %417, label %418, label %427

418:                                              ; preds = %415
  %419 = load i32, i32* @MSK_FLAG_MSI, align 4
  %420 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %421 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %420, i32 0, i32 9
  %422 = load i32, i32* %421, align 4
  %423 = or i32 %422, %419
  store i32 %423, i32* %421, align 4
  %424 = load i64, i64* @msk_irq_spec_msi, align 8
  %425 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %426 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %425, i32 0, i32 1
  store i64 %424, i64* %426, align 8
  br label %430

427:                                              ; preds = %415
  %428 = load i32, i32* %3, align 4
  %429 = call i32 @pci_release_msi(i32 %428)
  br label %430

430:                                              ; preds = %427, %418
  br label %431

431:                                              ; preds = %430, %411
  br label %432

432:                                              ; preds = %431, %408, %405
  %433 = load i32, i32* %3, align 4
  %434 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %435 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %434, i32 0, i32 1
  %436 = load i64, i64* %435, align 8
  %437 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %438 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %437, i32 0, i32 13
  %439 = load i32*, i32** %438, align 8
  %440 = call i32 @bus_alloc_resources(i32 %433, i64 %436, i32* %439)
  store i32 %440, i32* %6, align 4
  %441 = load i32, i32* %6, align 4
  %442 = icmp ne i32 %441, 0
  br i1 %442, label %443, label %446

443:                                              ; preds = %432
  %444 = load i32, i32* %3, align 4
  %445 = call i32 (i32, i8*, ...) @device_printf(i32 %444, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0))
  br label %654

446:                                              ; preds = %432
  %447 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %448 = call i32 @msk_status_dma_alloc(%struct.msk_softc* %447)
  store i32 %448, i32* %6, align 4
  %449 = icmp ne i32 %448, 0
  br i1 %449, label %450, label %451

450:                                              ; preds = %446
  br label %654

451:                                              ; preds = %446
  %452 = load i32, i32* @Y2_IS_HW_ERR, align 4
  %453 = load i32, i32* @Y2_IS_STAT_BMU, align 4
  %454 = or i32 %452, %453
  %455 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %456 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %455, i32 0, i32 10
  store i32 %454, i32* %456, align 8
  %457 = load i32, i32* @Y2_IS_TIST_OV, align 4
  %458 = load i32, i32* @Y2_IS_MST_ERR, align 4
  %459 = or i32 %457, %458
  %460 = load i32, i32* @Y2_IS_IRQ_STAT, align 4
  %461 = or i32 %459, %460
  %462 = load i32, i32* @Y2_IS_PCI_EXP, align 4
  %463 = or i32 %461, %462
  %464 = load i32, i32* @Y2_IS_PCI_NEXP, align 4
  %465 = or i32 %463, %464
  %466 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %467 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %466, i32 0, i32 11
  store i32 %465, i32* %467, align 4
  %468 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %469 = call i32 @mskc_reset(%struct.msk_softc* %468)
  %470 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %471 = call i32 @mskc_setup_rambuffer(%struct.msk_softc* %470)
  store i32 %471, i32* %6, align 4
  %472 = icmp ne i32 %471, 0
  br i1 %472, label %473, label %474

473:                                              ; preds = %451
  br label %654

474:                                              ; preds = %451
  %475 = load i32, i32* %3, align 4
  %476 = call i8* @device_add_child(i32 %475, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i32 -1)
  %477 = bitcast i8* %476 to i32*
  %478 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %479 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %478, i32 0, i32 14
  %480 = load i32**, i32*** %479, align 8
  %481 = load i64, i64* @MSK_PORT_A, align 8
  %482 = getelementptr inbounds i32*, i32** %480, i64 %481
  store i32* %477, i32** %482, align 8
  %483 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %484 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %483, i32 0, i32 14
  %485 = load i32**, i32*** %484, align 8
  %486 = load i64, i64* @MSK_PORT_A, align 8
  %487 = getelementptr inbounds i32*, i32** %485, i64 %486
  %488 = load i32*, i32** %487, align 8
  %489 = icmp eq i32* %488, null
  br i1 %489, label %490, label %494

490:                                              ; preds = %474
  %491 = load i32, i32* %3, align 4
  %492 = call i32 (i32, i8*, ...) @device_printf(i32 %491, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0))
  %493 = load i32, i32* @ENXIO, align 4
  store i32 %493, i32* %6, align 4
  br label %654

494:                                              ; preds = %474
  %495 = load i32, i32* @M_DEVBUF, align 4
  %496 = load i32, i32* @M_WAITOK, align 4
  %497 = load i32, i32* @M_ZERO, align 4
  %498 = or i32 %496, %497
  %499 = call %struct.msk_mii_data* @malloc(i32 16, i32 %495, i32 %498)
  store %struct.msk_mii_data* %499, %struct.msk_mii_data** %5, align 8
  %500 = load i64, i64* @MSK_PORT_A, align 8
  %501 = load %struct.msk_mii_data*, %struct.msk_mii_data** %5, align 8
  %502 = getelementptr inbounds %struct.msk_mii_data, %struct.msk_mii_data* %501, i32 0, i32 0
  store i64 %500, i64* %502, align 8
  %503 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %504 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %503, i32 0, i32 4
  %505 = load i32, i32* %504, align 8
  %506 = load %struct.msk_mii_data*, %struct.msk_mii_data** %5, align 8
  %507 = getelementptr inbounds %struct.msk_mii_data, %struct.msk_mii_data* %506, i32 0, i32 1
  store i32 %505, i32* %507, align 8
  %508 = load i32, i32* @MIIF_DOPAUSE, align 4
  %509 = load %struct.msk_mii_data*, %struct.msk_mii_data** %5, align 8
  %510 = getelementptr inbounds %struct.msk_mii_data, %struct.msk_mii_data* %509, i32 0, i32 2
  %511 = load i32, i32* %510, align 4
  %512 = or i32 %511, %508
  store i32 %512, i32* %510, align 4
  %513 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %514 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %513, i32 0, i32 4
  %515 = load i32, i32* %514, align 8
  %516 = icmp eq i32 %515, 76
  br i1 %516, label %522, label %517

517:                                              ; preds = %494
  %518 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %519 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %518, i32 0, i32 4
  %520 = load i32, i32* %519, align 8
  %521 = icmp eq i32 %520, 83
  br i1 %521, label %522, label %528

522:                                              ; preds = %517, %494
  %523 = load i32, i32* @MIIF_HAVEFIBER, align 4
  %524 = load %struct.msk_mii_data*, %struct.msk_mii_data** %5, align 8
  %525 = getelementptr inbounds %struct.msk_mii_data, %struct.msk_mii_data* %524, i32 0, i32 2
  %526 = load i32, i32* %525, align 4
  %527 = or i32 %526, %523
  store i32 %527, i32* %525, align 4
  br label %528

528:                                              ; preds = %522, %517
  %529 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %530 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %529, i32 0, i32 4
  %531 = load i32, i32* %530, align 8
  %532 = icmp eq i32 %531, 80
  br i1 %532, label %533, label %541

533:                                              ; preds = %528
  %534 = load i32, i32* @MIIF_HAVEFIBER, align 4
  %535 = load i32, i32* @MIIF_MACPRIV0, align 4
  %536 = or i32 %534, %535
  %537 = load %struct.msk_mii_data*, %struct.msk_mii_data** %5, align 8
  %538 = getelementptr inbounds %struct.msk_mii_data, %struct.msk_mii_data* %537, i32 0, i32 2
  %539 = load i32, i32* %538, align 4
  %540 = or i32 %539, %536
  store i32 %540, i32* %538, align 4
  br label %541

541:                                              ; preds = %533, %528
  %542 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %543 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %542, i32 0, i32 14
  %544 = load i32**, i32*** %543, align 8
  %545 = load i64, i64* @MSK_PORT_A, align 8
  %546 = getelementptr inbounds i32*, i32** %544, i64 %545
  %547 = load i32*, i32** %546, align 8
  %548 = load %struct.msk_mii_data*, %struct.msk_mii_data** %5, align 8
  %549 = call i32 @device_set_ivars(i32* %547, %struct.msk_mii_data* %548)
  %550 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %551 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %550, i32 0, i32 5
  %552 = load i32, i32* %551, align 4
  %553 = icmp sgt i32 %552, 1
  br i1 %553, label %554, label %625

554:                                              ; preds = %541
  %555 = load i32, i32* %3, align 4
  %556 = call i8* @device_add_child(i32 %555, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i32 -1)
  %557 = bitcast i8* %556 to i32*
  %558 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %559 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %558, i32 0, i32 14
  %560 = load i32**, i32*** %559, align 8
  %561 = load i64, i64* @MSK_PORT_B, align 8
  %562 = getelementptr inbounds i32*, i32** %560, i64 %561
  store i32* %557, i32** %562, align 8
  %563 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %564 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %563, i32 0, i32 14
  %565 = load i32**, i32*** %564, align 8
  %566 = load i64, i64* @MSK_PORT_B, align 8
  %567 = getelementptr inbounds i32*, i32** %565, i64 %566
  %568 = load i32*, i32** %567, align 8
  %569 = icmp eq i32* %568, null
  br i1 %569, label %570, label %574

570:                                              ; preds = %554
  %571 = load i32, i32* %3, align 4
  %572 = call i32 (i32, i8*, ...) @device_printf(i32 %571, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0))
  %573 = load i32, i32* @ENXIO, align 4
  store i32 %573, i32* %6, align 4
  br label %654

574:                                              ; preds = %554
  %575 = load i32, i32* @M_DEVBUF, align 4
  %576 = load i32, i32* @M_WAITOK, align 4
  %577 = load i32, i32* @M_ZERO, align 4
  %578 = or i32 %576, %577
  %579 = call %struct.msk_mii_data* @malloc(i32 16, i32 %575, i32 %578)
  store %struct.msk_mii_data* %579, %struct.msk_mii_data** %5, align 8
  %580 = load i64, i64* @MSK_PORT_B, align 8
  %581 = load %struct.msk_mii_data*, %struct.msk_mii_data** %5, align 8
  %582 = getelementptr inbounds %struct.msk_mii_data, %struct.msk_mii_data* %581, i32 0, i32 0
  store i64 %580, i64* %582, align 8
  %583 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %584 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %583, i32 0, i32 4
  %585 = load i32, i32* %584, align 8
  %586 = load %struct.msk_mii_data*, %struct.msk_mii_data** %5, align 8
  %587 = getelementptr inbounds %struct.msk_mii_data, %struct.msk_mii_data* %586, i32 0, i32 1
  store i32 %585, i32* %587, align 8
  %588 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %589 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %588, i32 0, i32 4
  %590 = load i32, i32* %589, align 8
  %591 = icmp eq i32 %590, 76
  br i1 %591, label %597, label %592

592:                                              ; preds = %574
  %593 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %594 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %593, i32 0, i32 4
  %595 = load i32, i32* %594, align 8
  %596 = icmp eq i32 %595, 83
  br i1 %596, label %597, label %603

597:                                              ; preds = %592, %574
  %598 = load i32, i32* @MIIF_HAVEFIBER, align 4
  %599 = load %struct.msk_mii_data*, %struct.msk_mii_data** %5, align 8
  %600 = getelementptr inbounds %struct.msk_mii_data, %struct.msk_mii_data* %599, i32 0, i32 2
  %601 = load i32, i32* %600, align 4
  %602 = or i32 %601, %598
  store i32 %602, i32* %600, align 4
  br label %603

603:                                              ; preds = %597, %592
  %604 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %605 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %604, i32 0, i32 4
  %606 = load i32, i32* %605, align 8
  %607 = icmp eq i32 %606, 80
  br i1 %607, label %608, label %616

608:                                              ; preds = %603
  %609 = load i32, i32* @MIIF_HAVEFIBER, align 4
  %610 = load i32, i32* @MIIF_MACPRIV0, align 4
  %611 = or i32 %609, %610
  %612 = load %struct.msk_mii_data*, %struct.msk_mii_data** %5, align 8
  %613 = getelementptr inbounds %struct.msk_mii_data, %struct.msk_mii_data* %612, i32 0, i32 2
  %614 = load i32, i32* %613, align 4
  %615 = or i32 %614, %611
  store i32 %615, i32* %613, align 4
  br label %616

616:                                              ; preds = %608, %603
  %617 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %618 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %617, i32 0, i32 14
  %619 = load i32**, i32*** %618, align 8
  %620 = load i64, i64* @MSK_PORT_B, align 8
  %621 = getelementptr inbounds i32*, i32** %619, i64 %620
  %622 = load i32*, i32** %621, align 8
  %623 = load %struct.msk_mii_data*, %struct.msk_mii_data** %5, align 8
  %624 = call i32 @device_set_ivars(i32* %622, %struct.msk_mii_data* %623)
  br label %625

625:                                              ; preds = %616, %541
  %626 = load i32, i32* %3, align 4
  %627 = call i32 @bus_generic_attach(i32 %626)
  store i32 %627, i32* %6, align 4
  %628 = load i32, i32* %6, align 4
  %629 = icmp ne i32 %628, 0
  br i1 %629, label %630, label %633

630:                                              ; preds = %625
  %631 = load i32, i32* %3, align 4
  %632 = call i32 (i32, i8*, ...) @device_printf(i32 %631, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0))
  br label %654

633:                                              ; preds = %625
  %634 = load i32, i32* %3, align 4
  %635 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %636 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %635, i32 0, i32 13
  %637 = load i32*, i32** %636, align 8
  %638 = getelementptr inbounds i32, i32* %637, i64 0
  %639 = load i32, i32* %638, align 4
  %640 = load i32, i32* @INTR_TYPE_NET, align 4
  %641 = load i32, i32* @INTR_MPSAFE, align 4
  %642 = or i32 %640, %641
  %643 = load i32, i32* @msk_intr, align 4
  %644 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %645 = load %struct.msk_softc*, %struct.msk_softc** %4, align 8
  %646 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %645, i32 0, i32 12
  %647 = call i32 @bus_setup_intr(i32 %634, i32 %639, i32 %642, i32* null, i32 %643, %struct.msk_softc* %644, i32* %646)
  store i32 %647, i32* %6, align 4
  %648 = load i32, i32* %6, align 4
  %649 = icmp ne i32 %648, 0
  br i1 %649, label %650, label %653

650:                                              ; preds = %633
  %651 = load i32, i32* %3, align 4
  %652 = call i32 (i32, i8*, ...) @device_printf(i32 %651, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i64 0, i64 0))
  br label %654

653:                                              ; preds = %633
  br label %654

654:                                              ; preds = %653, %650, %630, %570, %490, %473, %450, %443
  %655 = load i32, i32* %6, align 4
  %656 = icmp ne i32 %655, 0
  br i1 %656, label %657, label %660

657:                                              ; preds = %654
  %658 = load i32, i32* %3, align 4
  %659 = call i32 @mskc_detach(i32 %658)
  br label %660

660:                                              ; preds = %657, %654
  %661 = load i32, i32* %6, align 4
  store i32 %661, i32* %2, align 4
  br label %662

662:                                              ; preds = %660, %116, %66
  %663 = load i32, i32* %2, align 4
  ret i32 %663
}

declare dso_local %struct.msk_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i32, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @pci_enable_busmaster(i32) #1

declare dso_local i32 @bus_alloc_resources(i32, i64, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @CSR_PCI_WRITE_4(%struct.msk_softc*, i32, i32) #1

declare dso_local i32 @CSR_WRITE_2(%struct.msk_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_1(%struct.msk_softc*, i32) #1

declare dso_local i32 @SYSCTL_ADD_PROC(i32, i32, i32, i8*, i32, i8**, i32, i32, i8*, i8*) #1

declare dso_local i32 @device_get_sysctl_ctx(i32) #1

declare dso_local i32 @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @device_get_sysctl_tree(i32) #1

declare dso_local i32 @resource_int_value(i32, i32, i8*, i8**) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @SYSCTL_ADD_INT(i32, i32, i32, i8*, i32, i8**, i32, i8*) #1

declare dso_local i64 @pci_find_cap(i32, i32, i32*) #1

declare dso_local i32 @pci_msi_count(i32) #1

declare dso_local i64 @pci_alloc_msi(i32, i32*) #1

declare dso_local i32 @pci_release_msi(i32) #1

declare dso_local i32 @msk_status_dma_alloc(%struct.msk_softc*) #1

declare dso_local i32 @mskc_reset(%struct.msk_softc*) #1

declare dso_local i32 @mskc_setup_rambuffer(%struct.msk_softc*) #1

declare dso_local i8* @device_add_child(i32, i8*, i32) #1

declare dso_local %struct.msk_mii_data* @malloc(i32, i32, i32) #1

declare dso_local i32 @device_set_ivars(i32*, %struct.msk_mii_data*) #1

declare dso_local i32 @bus_generic_attach(i32) #1

declare dso_local i32 @bus_setup_intr(i32, i32, i32, i32*, i32, %struct.msk_softc*, i32*) #1

declare dso_local i32 @mskc_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
