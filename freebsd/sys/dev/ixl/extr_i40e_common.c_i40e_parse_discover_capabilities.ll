; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_parse_discover_capabilities.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_parse_discover_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.i40e_aqc_list_capabilities_element_resp = type { i32, i32, i32, i32, i32 }
%struct.i40e_hw_capabilities = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i8*, i8*, i8*, i8*, i8**, i8**, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@i40e_aqc_opc_list_dev_capabilities = common dso_local global i32 0, align 4
@i40e_aqc_opc_list_func_capabilities = common dso_local global i32 0, align 4
@I40E_DEBUG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"HW Capability: Switch mode = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"HW Capability: Protocols over MCTP = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"HW Capability: Management Mode = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"HW Capability: NPAR enable = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"HW Capability: OS2BMC = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"HW Capability: Valid Functions = %d\0A\00", align 1
@TRUE = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [28 x i8] c"HW Capability: SR-IOV = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"HW Capability: VF count = %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"HW Capability: VF base_id = %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"HW Capability: VMDQ = %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"HW Capability: 802.1Qbg = %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"HW Capability: 802.1Qbh = %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"HW Capability: VSI count = %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"HW Capability: DCB = %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"HW Capability: TC Mapping = %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"HW Capability: TC Max = %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"HW Capability: FCOE = %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"HW Capability: iSCSI = %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"HW Capability: RSS = %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [36 x i8] c"HW Capability: RSS table size = %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"HW Capability: RSS table width = %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"HW Capability: Rx QP = %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [32 x i8] c"HW Capability: base_queue = %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"HW Capability: Tx QP = %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [39 x i8] c"HW Capability: MSIX vector count = %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [42 x i8] c"HW Capability: MSIX VF vector count = %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [33 x i8] c"HW Capability: Flex10 mode = %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [35 x i8] c"HW Capability: Flex10 status = %d\0A\00", align 1
@.str.28 = private unnamed_addr constant [25 x i8] c"HW Capability: CEM = %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [27 x i8] c"HW Capability: iWARP = %d\0A\00", align 1
@I40E_HW_CAP_MAX_GPIO = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [29 x i8] c"HW Capability: LED - PIN %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [29 x i8] c"HW Capability: SDP - PIN %d\0A\00", align 1
@.str.32 = private unnamed_addr constant [38 x i8] c"HW Capability: MDIO port number = %d\0A\00", align 1
@.str.33 = private unnamed_addr constant [36 x i8] c"HW Capability: MDIO port mode = %d\0A\00", align 1
@.str.34 = private unnamed_addr constant [31 x i8] c"HW Capability: IEEE 1588 = %d\0A\00", align 1
@.str.35 = private unnamed_addr constant [34 x i8] c"HW Capability: Flow Director = 1\0A\00", align 1
@.str.36 = private unnamed_addr constant [43 x i8] c"HW Capability: Guaranteed FD filters = %d\0A\00", align 1
@.str.37 = private unnamed_addr constant [38 x i8] c"HW Capability: wr_csr_prot = 0x%llX\0A\0A\00", align 1
@I40E_NVM_MGMT_SEC_REV_DISABLED = common dso_local global i32 0, align 4
@I40E_NVM_MGMT_UPDATE_DISABLED = common dso_local global i32 0, align 4
@I40E_WOL_SUPPORT_MASK = common dso_local global i32 0, align 4
@I40E_ACPI_PROGRAMMING_METHOD_MASK = common dso_local global i32 0, align 4
@I40E_ACPI_PROGRAMMING_METHOD_AQC_FPK = common dso_local global i32 0, align 4
@I40E_ACPI_PROGRAMMING_METHOD_HW_FVL = common dso_local global i32 0, align 4
@I40E_PROXY_SUPPORT_MASK = common dso_local global i32 0, align 4
@.str.38 = private unnamed_addr constant [39 x i8] c"HW Capability: WOL proxy filters = %d\0A\00", align 1
@I40E_DEBUG_ALL = common dso_local global i32 0, align 4
@.str.39 = private unnamed_addr constant [24 x i8] c"device is FCoE capable\0A\00", align 1
@FALSE = common dso_local global i8* null, align 8
@I40E_PRTGEN_CNF = common dso_local global i32 0, align 4
@I40E_PRTGEN_CNF_PORT_DIS_MASK = common dso_local global i32 0, align 4
@I40E_MAC_X722 = common dso_local global i64 0, align 8
@I40E_RESOURCE_READ = common dso_local global i32 0, align 4
@I40E_SUCCESS = common dso_local global i64 0, align 8
@I40E_SR_EMP_MODULE_PTR = common dso_local global i32 0, align 4
@I40E_SR_OCP_CFG_WORD0 = common dso_local global i32 0, align 4
@I40E_SR_OCP_ENABLED = common dso_local global i32 0, align 4
@I40E_MAX_CHAINED_RX_BUFFERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_hw*, i8*, i32, i32)* @i40e_parse_discover_capabilities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_parse_discover_capabilities(%struct.i40e_hw* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.i40e_hw*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.i40e_aqc_list_capabilities_element_resp*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.i40e_hw_capabilities*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %20, align 4
  %23 = load i8*, i8** %6, align 8
  %24 = bitcast i8* %23 to %struct.i40e_aqc_list_capabilities_element_resp*
  store %struct.i40e_aqc_list_capabilities_element_resp* %24, %struct.i40e_aqc_list_capabilities_element_resp** %9, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @i40e_aqc_opc_list_dev_capabilities, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %4
  %29 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %30 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %29, i32 0, i32 8
  %31 = bitcast i32* %30 to %struct.i40e_hw_capabilities*
  store %struct.i40e_hw_capabilities* %31, %struct.i40e_hw_capabilities** %15, align 8
  br label %42

32:                                               ; preds = %4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @i40e_aqc_opc_list_func_capabilities, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %38 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %37, i32 0, i32 7
  %39 = bitcast i32* %38 to %struct.i40e_hw_capabilities*
  store %struct.i40e_hw_capabilities* %39, %struct.i40e_hw_capabilities** %15, align 8
  br label %41

40:                                               ; preds = %32
  br label %724

41:                                               ; preds = %36
  br label %42

42:                                               ; preds = %41, %28
  store i32 0, i32* %20, align 4
  br label %43

43:                                               ; preds = %600, %42
  %44 = load i32, i32* %20, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %605

47:                                               ; preds = %43
  %48 = load %struct.i40e_aqc_list_capabilities_element_resp*, %struct.i40e_aqc_list_capabilities_element_resp** %9, align 8
  %49 = getelementptr inbounds %struct.i40e_aqc_list_capabilities_element_resp, %struct.i40e_aqc_list_capabilities_element_resp* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @LE16_TO_CPU(i32 %50)
  store i32 %51, i32* %17, align 4
  %52 = load %struct.i40e_aqc_list_capabilities_element_resp*, %struct.i40e_aqc_list_capabilities_element_resp** %9, align 8
  %53 = getelementptr inbounds %struct.i40e_aqc_list_capabilities_element_resp, %struct.i40e_aqc_list_capabilities_element_resp* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @LE32_TO_CPU(i32 %54)
  store i32 %55, i32* %12, align 4
  %56 = load %struct.i40e_aqc_list_capabilities_element_resp*, %struct.i40e_aqc_list_capabilities_element_resp** %9, align 8
  %57 = getelementptr inbounds %struct.i40e_aqc_list_capabilities_element_resp, %struct.i40e_aqc_list_capabilities_element_resp* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @LE32_TO_CPU(i32 %58)
  store i32 %59, i32* %13, align 4
  %60 = load %struct.i40e_aqc_list_capabilities_element_resp*, %struct.i40e_aqc_list_capabilities_element_resp** %9, align 8
  %61 = getelementptr inbounds %struct.i40e_aqc_list_capabilities_element_resp, %struct.i40e_aqc_list_capabilities_element_resp* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @LE32_TO_CPU(i32 %62)
  store i32 %63, i32* %14, align 4
  %64 = load %struct.i40e_aqc_list_capabilities_element_resp*, %struct.i40e_aqc_list_capabilities_element_resp** %9, align 8
  %65 = getelementptr inbounds %struct.i40e_aqc_list_capabilities_element_resp, %struct.i40e_aqc_list_capabilities_element_resp* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %19, align 4
  %67 = load i32, i32* %17, align 4
  switch i32 %67, label %598 [
    i32 135, label %68
    i32 144, label %78
    i32 142, label %104
    i32 140, label %114
    i32 149, label %124
    i32 136, label %134
    i32 133, label %148
    i32 131, label %167
    i32 156, label %181
    i32 155, label %193
    i32 130, label %205
    i32 153, label %215
    i32 152, label %245
    i32 148, label %259
    i32 139, label %273
    i32 138, label %301
    i32 134, label %318
    i32 143, label %335
    i32 132, label %345
    i32 151, label %355
    i32 154, label %405
    i32 147, label %419
    i32 146, label %433
    i32 137, label %450
    i32 145, label %467
    i32 157, label %490
    i32 150, label %504
    i32 128, label %523
    i32 141, label %540
    i32 129, label %559
  ]

68:                                               ; preds = %47
  %69 = load i32, i32* %12, align 4
  %70 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %71 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %73 = load i32, i32* @I40E_DEBUG_INIT, align 4
  %74 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %75 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 (%struct.i40e_hw*, i32, i8*, ...) @i40e_debug(%struct.i40e_hw* %72, i32 %73, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %76)
  br label %599

78:                                               ; preds = %47
  %79 = load i32, i32* %12, align 4
  %80 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %81 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* %19, align 4
  %83 = icmp sgt i32 %82, 1
  br i1 %83, label %84, label %94

84:                                               ; preds = %78
  %85 = load i32, i32* %13, align 4
  %86 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %87 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 8
  %88 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %89 = load i32, i32* @I40E_DEBUG_INIT, align 4
  %90 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %91 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i32 (%struct.i40e_hw*, i32, i8*, ...) @i40e_debug(%struct.i40e_hw* %88, i32 %89, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %92)
  br label %97

94:                                               ; preds = %78
  %95 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %96 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %95, i32 0, i32 2
  store i32 0, i32* %96, align 8
  br label %97

97:                                               ; preds = %94, %84
  %98 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %99 = load i32, i32* @I40E_DEBUG_INIT, align 4
  %100 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %101 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (%struct.i40e_hw*, i32, i8*, ...) @i40e_debug(%struct.i40e_hw* %98, i32 %99, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %102)
  br label %599

104:                                              ; preds = %47
  %105 = load i32, i32* %12, align 4
  %106 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %107 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %106, i32 0, i32 3
  store i32 %105, i32* %107, align 4
  %108 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %109 = load i32, i32* @I40E_DEBUG_INIT, align 4
  %110 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %111 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = call i32 (%struct.i40e_hw*, i32, i8*, ...) @i40e_debug(%struct.i40e_hw* %108, i32 %109, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %112)
  br label %599

114:                                              ; preds = %47
  %115 = load i32, i32* %12, align 4
  %116 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %117 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %116, i32 0, i32 4
  store i32 %115, i32* %117, align 8
  %118 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %119 = load i32, i32* @I40E_DEBUG_INIT, align 4
  %120 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %121 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = call i32 (%struct.i40e_hw*, i32, i8*, ...) @i40e_debug(%struct.i40e_hw* %118, i32 %119, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %122)
  br label %599

124:                                              ; preds = %47
  %125 = load i32, i32* %12, align 4
  %126 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %127 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %126, i32 0, i32 5
  store i32 %125, i32* %127, align 4
  %128 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %129 = load i32, i32* @I40E_DEBUG_INIT, align 4
  %130 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %131 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %130, i32 0, i32 5
  %132 = load i32, i32* %131, align 4
  %133 = call i32 (%struct.i40e_hw*, i32, i8*, ...) @i40e_debug(%struct.i40e_hw* %128, i32 %129, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %132)
  br label %599

134:                                              ; preds = %47
  %135 = load i32, i32* %12, align 4
  %136 = icmp eq i32 %135, 1
  br i1 %136, label %137, label %141

137:                                              ; preds = %134
  %138 = load i8*, i8** @TRUE, align 8
  %139 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %140 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %139, i32 0, i32 46
  store i8* %138, i8** %140, align 8
  br label %141

141:                                              ; preds = %137, %134
  %142 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %143 = load i32, i32* @I40E_DEBUG_INIT, align 4
  %144 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %145 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %144, i32 0, i32 46
  %146 = load i8*, i8** %145, align 8
  %147 = call i32 (%struct.i40e_hw*, i32, i8*, ...) @i40e_debug(%struct.i40e_hw* %142, i32 %143, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i8* %146)
  br label %599

148:                                              ; preds = %47
  %149 = load i32, i32* %12, align 4
  %150 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %151 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %150, i32 0, i32 6
  store i32 %149, i32* %151, align 8
  %152 = load i32, i32* %13, align 4
  %153 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %154 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %153, i32 0, i32 7
  store i32 %152, i32* %154, align 4
  %155 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %156 = load i32, i32* @I40E_DEBUG_INIT, align 4
  %157 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %158 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %157, i32 0, i32 6
  %159 = load i32, i32* %158, align 8
  %160 = call i32 (%struct.i40e_hw*, i32, i8*, ...) @i40e_debug(%struct.i40e_hw* %155, i32 %156, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %159)
  %161 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %162 = load i32, i32* @I40E_DEBUG_INIT, align 4
  %163 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %164 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %163, i32 0, i32 7
  %165 = load i32, i32* %164, align 4
  %166 = call i32 (%struct.i40e_hw*, i32, i8*, ...) @i40e_debug(%struct.i40e_hw* %161, i32 %162, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 %165)
  br label %599

167:                                              ; preds = %47
  %168 = load i32, i32* %12, align 4
  %169 = icmp eq i32 %168, 1
  br i1 %169, label %170, label %174

170:                                              ; preds = %167
  %171 = load i8*, i8** @TRUE, align 8
  %172 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %173 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %172, i32 0, i32 45
  store i8* %171, i8** %173, align 8
  br label %174

174:                                              ; preds = %170, %167
  %175 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %176 = load i32, i32* @I40E_DEBUG_INIT, align 4
  %177 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %178 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %177, i32 0, i32 45
  %179 = load i8*, i8** %178, align 8
  %180 = call i32 (%struct.i40e_hw*, i32, i8*, ...) @i40e_debug(%struct.i40e_hw* %175, i32 %176, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i8* %179)
  br label %599

181:                                              ; preds = %47
  %182 = load i32, i32* %12, align 4
  %183 = icmp eq i32 %182, 1
  br i1 %183, label %184, label %188

184:                                              ; preds = %181
  %185 = load i8*, i8** @TRUE, align 8
  %186 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %187 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %186, i32 0, i32 44
  store i8* %185, i8** %187, align 8
  br label %188

188:                                              ; preds = %184, %181
  %189 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %190 = load i32, i32* @I40E_DEBUG_INIT, align 4
  %191 = load i32, i32* %12, align 4
  %192 = call i32 (%struct.i40e_hw*, i32, i8*, ...) @i40e_debug(%struct.i40e_hw* %189, i32 %190, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i32 %191)
  br label %599

193:                                              ; preds = %47
  %194 = load i32, i32* %12, align 4
  %195 = icmp eq i32 %194, 1
  br i1 %195, label %196, label %200

196:                                              ; preds = %193
  %197 = load i8*, i8** @TRUE, align 8
  %198 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %199 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %198, i32 0, i32 43
  store i8* %197, i8** %199, align 8
  br label %200

200:                                              ; preds = %196, %193
  %201 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %202 = load i32, i32* @I40E_DEBUG_INIT, align 4
  %203 = load i32, i32* %12, align 4
  %204 = call i32 (%struct.i40e_hw*, i32, i8*, ...) @i40e_debug(%struct.i40e_hw* %201, i32 %202, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), i32 %203)
  br label %599

205:                                              ; preds = %47
  %206 = load i32, i32* %12, align 4
  %207 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %208 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %207, i32 0, i32 8
  store i32 %206, i32* %208, align 8
  %209 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %210 = load i32, i32* @I40E_DEBUG_INIT, align 4
  %211 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %212 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %211, i32 0, i32 8
  %213 = load i32, i32* %212, align 8
  %214 = call i32 (%struct.i40e_hw*, i32, i8*, ...) @i40e_debug(%struct.i40e_hw* %209, i32 %210, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), i32 %213)
  br label %599

215:                                              ; preds = %47
  %216 = load i32, i32* %12, align 4
  %217 = icmp eq i32 %216, 1
  br i1 %217, label %218, label %228

218:                                              ; preds = %215
  %219 = load i8*, i8** @TRUE, align 8
  %220 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %221 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %220, i32 0, i32 42
  store i8* %219, i8** %221, align 8
  %222 = load i32, i32* %13, align 4
  %223 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %224 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %223, i32 0, i32 9
  store i32 %222, i32* %224, align 4
  %225 = load i32, i32* %14, align 4
  %226 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %227 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %226, i32 0, i32 10
  store i32 %225, i32* %227, align 8
  br label %228

228:                                              ; preds = %218, %215
  %229 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %230 = load i32, i32* @I40E_DEBUG_INIT, align 4
  %231 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %232 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %231, i32 0, i32 42
  %233 = load i8*, i8** %232, align 8
  %234 = call i32 (%struct.i40e_hw*, i32, i8*, ...) @i40e_debug(%struct.i40e_hw* %229, i32 %230, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0), i8* %233)
  %235 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %236 = load i32, i32* @I40E_DEBUG_INIT, align 4
  %237 = load i32, i32* %13, align 4
  %238 = call i32 (%struct.i40e_hw*, i32, i8*, ...) @i40e_debug(%struct.i40e_hw* %235, i32 %236, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0), i32 %237)
  %239 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %240 = load i32, i32* @I40E_DEBUG_INIT, align 4
  %241 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %242 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %241, i32 0, i32 10
  %243 = load i32, i32* %242, align 8
  %244 = call i32 (%struct.i40e_hw*, i32, i8*, ...) @i40e_debug(%struct.i40e_hw* %239, i32 %240, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0), i32 %243)
  br label %599

245:                                              ; preds = %47
  %246 = load i32, i32* %12, align 4
  %247 = icmp eq i32 %246, 1
  br i1 %247, label %248, label %252

248:                                              ; preds = %245
  %249 = load i8*, i8** @TRUE, align 8
  %250 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %251 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %250, i32 0, i32 28
  store i8* %249, i8** %251, align 8
  br label %252

252:                                              ; preds = %248, %245
  %253 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %254 = load i32, i32* @I40E_DEBUG_INIT, align 4
  %255 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %256 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %255, i32 0, i32 28
  %257 = load i8*, i8** %256, align 8
  %258 = call i32 (%struct.i40e_hw*, i32, i8*, ...) @i40e_debug(%struct.i40e_hw* %253, i32 %254, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i64 0, i64 0), i8* %257)
  br label %599

259:                                              ; preds = %47
  %260 = load i32, i32* %12, align 4
  %261 = icmp eq i32 %260, 1
  br i1 %261, label %262, label %266

262:                                              ; preds = %259
  %263 = load i8*, i8** @TRUE, align 8
  %264 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %265 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %264, i32 0, i32 41
  store i8* %263, i8** %265, align 8
  br label %266

266:                                              ; preds = %262, %259
  %267 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %268 = load i32, i32* @I40E_DEBUG_INIT, align 4
  %269 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %270 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %269, i32 0, i32 41
  %271 = load i8*, i8** %270, align 8
  %272 = call i32 (%struct.i40e_hw*, i32, i8*, ...) @i40e_debug(%struct.i40e_hw* %267, i32 %268, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i64 0, i64 0), i8* %271)
  br label %599

273:                                              ; preds = %47
  %274 = load i8*, i8** @TRUE, align 8
  %275 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %276 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %275, i32 0, i32 40
  store i8* %274, i8** %276, align 8
  %277 = load i32, i32* %12, align 4
  %278 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %279 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %278, i32 0, i32 11
  store i32 %277, i32* %279, align 4
  %280 = load i32, i32* %13, align 4
  %281 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %282 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %281, i32 0, i32 12
  store i32 %280, i32* %282, align 8
  %283 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %284 = load i32, i32* @I40E_DEBUG_INIT, align 4
  %285 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %286 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %285, i32 0, i32 40
  %287 = load i8*, i8** %286, align 8
  %288 = call i32 (%struct.i40e_hw*, i32, i8*, ...) @i40e_debug(%struct.i40e_hw* %283, i32 %284, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0), i8* %287)
  %289 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %290 = load i32, i32* @I40E_DEBUG_INIT, align 4
  %291 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %292 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %291, i32 0, i32 11
  %293 = load i32, i32* %292, align 4
  %294 = call i32 (%struct.i40e_hw*, i32, i8*, ...) @i40e_debug(%struct.i40e_hw* %289, i32 %290, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.19, i64 0, i64 0), i32 %293)
  %295 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %296 = load i32, i32* @I40E_DEBUG_INIT, align 4
  %297 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %298 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %297, i32 0, i32 12
  %299 = load i32, i32* %298, align 8
  %300 = call i32 (%struct.i40e_hw*, i32, i8*, ...) @i40e_debug(%struct.i40e_hw* %295, i32 %296, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.20, i64 0, i64 0), i32 %299)
  br label %599

301:                                              ; preds = %47
  %302 = load i32, i32* %12, align 4
  %303 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %304 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %303, i32 0, i32 13
  store i32 %302, i32* %304, align 4
  %305 = load i32, i32* %14, align 4
  %306 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %307 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %306, i32 0, i32 14
  store i32 %305, i32* %307, align 8
  %308 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %309 = load i32, i32* @I40E_DEBUG_INIT, align 4
  %310 = load i32, i32* %12, align 4
  %311 = call i32 (%struct.i40e_hw*, i32, i8*, ...) @i40e_debug(%struct.i40e_hw* %308, i32 %309, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.21, i64 0, i64 0), i32 %310)
  %312 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %313 = load i32, i32* @I40E_DEBUG_INIT, align 4
  %314 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %315 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %314, i32 0, i32 14
  %316 = load i32, i32* %315, align 8
  %317 = call i32 (%struct.i40e_hw*, i32, i8*, ...) @i40e_debug(%struct.i40e_hw* %312, i32 %313, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.22, i64 0, i64 0), i32 %316)
  br label %599

318:                                              ; preds = %47
  %319 = load i32, i32* %12, align 4
  %320 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %321 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %320, i32 0, i32 15
  store i32 %319, i32* %321, align 4
  %322 = load i32, i32* %14, align 4
  %323 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %324 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %323, i32 0, i32 14
  store i32 %322, i32* %324, align 8
  %325 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %326 = load i32, i32* @I40E_DEBUG_INIT, align 4
  %327 = load i32, i32* %12, align 4
  %328 = call i32 (%struct.i40e_hw*, i32, i8*, ...) @i40e_debug(%struct.i40e_hw* %325, i32 %326, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i64 0, i64 0), i32 %327)
  %329 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %330 = load i32, i32* @I40E_DEBUG_INIT, align 4
  %331 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %332 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %331, i32 0, i32 14
  %333 = load i32, i32* %332, align 8
  %334 = call i32 (%struct.i40e_hw*, i32, i8*, ...) @i40e_debug(%struct.i40e_hw* %329, i32 %330, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.22, i64 0, i64 0), i32 %333)
  br label %599

335:                                              ; preds = %47
  %336 = load i32, i32* %12, align 4
  %337 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %338 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %337, i32 0, i32 16
  store i32 %336, i32* %338, align 8
  %339 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %340 = load i32, i32* @I40E_DEBUG_INIT, align 4
  %341 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %342 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %341, i32 0, i32 16
  %343 = load i32, i32* %342, align 8
  %344 = call i32 (%struct.i40e_hw*, i32, i8*, ...) @i40e_debug(%struct.i40e_hw* %339, i32 %340, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i64 0, i64 0), i32 %343)
  br label %599

345:                                              ; preds = %47
  %346 = load i32, i32* %12, align 4
  %347 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %348 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %347, i32 0, i32 17
  store i32 %346, i32* %348, align 4
  %349 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %350 = load i32, i32* @I40E_DEBUG_INIT, align 4
  %351 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %352 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %351, i32 0, i32 17
  %353 = load i32, i32* %352, align 4
  %354 = call i32 (%struct.i40e_hw*, i32, i8*, ...) @i40e_debug(%struct.i40e_hw* %349, i32 %350, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.25, i64 0, i64 0), i32 %353)
  br label %599

355:                                              ; preds = %47
  %356 = load i32, i32* %19, align 4
  %357 = icmp eq i32 %356, 1
  br i1 %357, label %358, label %369

358:                                              ; preds = %355
  %359 = load i32, i32* %12, align 4
  %360 = icmp eq i32 %359, 1
  br i1 %360, label %361, label %368

361:                                              ; preds = %358
  %362 = load i8*, i8** @TRUE, align 8
  %363 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %364 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %363, i32 0, i32 39
  store i8* %362, i8** %364, align 8
  %365 = load i8*, i8** @TRUE, align 8
  %366 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %367 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %366, i32 0, i32 38
  store i8* %365, i8** %367, align 8
  br label %368

368:                                              ; preds = %361, %358
  br label %386

369:                                              ; preds = %355
  %370 = load i32, i32* %12, align 4
  %371 = and i32 %370, 1
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %377

373:                                              ; preds = %369
  %374 = load i8*, i8** @TRUE, align 8
  %375 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %376 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %375, i32 0, i32 39
  store i8* %374, i8** %376, align 8
  br label %377

377:                                              ; preds = %373, %369
  %378 = load i32, i32* %12, align 4
  %379 = and i32 %378, 2
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %385

381:                                              ; preds = %377
  %382 = load i8*, i8** @TRUE, align 8
  %383 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %384 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %383, i32 0, i32 38
  store i8* %382, i8** %384, align 8
  br label %385

385:                                              ; preds = %381, %377
  br label %386

386:                                              ; preds = %385, %368
  %387 = load i32, i32* %13, align 4
  %388 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %389 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %388, i32 0, i32 18
  store i32 %387, i32* %389, align 8
  %390 = load i32, i32* %14, align 4
  %391 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %392 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %391, i32 0, i32 19
  store i32 %390, i32* %392, align 4
  %393 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %394 = load i32, i32* @I40E_DEBUG_INIT, align 4
  %395 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %396 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %395, i32 0, i32 18
  %397 = load i32, i32* %396, align 8
  %398 = call i32 (%struct.i40e_hw*, i32, i8*, ...) @i40e_debug(%struct.i40e_hw* %393, i32 %394, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.26, i64 0, i64 0), i32 %397)
  %399 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %400 = load i32, i32* @I40E_DEBUG_INIT, align 4
  %401 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %402 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %401, i32 0, i32 19
  %403 = load i32, i32* %402, align 4
  %404 = call i32 (%struct.i40e_hw*, i32, i8*, ...) @i40e_debug(%struct.i40e_hw* %399, i32 %400, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.27, i64 0, i64 0), i32 %403)
  br label %599

405:                                              ; preds = %47
  %406 = load i32, i32* %12, align 4
  %407 = icmp eq i32 %406, 1
  br i1 %407, label %408, label %412

408:                                              ; preds = %405
  %409 = load i8*, i8** @TRUE, align 8
  %410 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %411 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %410, i32 0, i32 37
  store i8* %409, i8** %411, align 8
  br label %412

412:                                              ; preds = %408, %405
  %413 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %414 = load i32, i32* @I40E_DEBUG_INIT, align 4
  %415 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %416 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %415, i32 0, i32 37
  %417 = load i8*, i8** %416, align 8
  %418 = call i32 (%struct.i40e_hw*, i32, i8*, ...) @i40e_debug(%struct.i40e_hw* %413, i32 %414, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.28, i64 0, i64 0), i8* %417)
  br label %599

419:                                              ; preds = %47
  %420 = load i32, i32* %12, align 4
  %421 = icmp eq i32 %420, 1
  br i1 %421, label %422, label %426

422:                                              ; preds = %419
  %423 = load i8*, i8** @TRUE, align 8
  %424 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %425 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %424, i32 0, i32 36
  store i8* %423, i8** %425, align 8
  br label %426

426:                                              ; preds = %422, %419
  %427 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %428 = load i32, i32* @I40E_DEBUG_INIT, align 4
  %429 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %430 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %429, i32 0, i32 36
  %431 = load i8*, i8** %430, align 8
  %432 = call i32 (%struct.i40e_hw*, i32, i8*, ...) @i40e_debug(%struct.i40e_hw* %427, i32 %428, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.29, i64 0, i64 0), i8* %431)
  br label %599

433:                                              ; preds = %47
  %434 = load i32, i32* %14, align 4
  %435 = load i32, i32* @I40E_HW_CAP_MAX_GPIO, align 4
  %436 = icmp slt i32 %434, %435
  br i1 %436, label %437, label %445

437:                                              ; preds = %433
  %438 = load i8*, i8** @TRUE, align 8
  %439 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %440 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %439, i32 0, i32 35
  %441 = load i8**, i8*** %440, align 8
  %442 = load i32, i32* %14, align 4
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds i8*, i8** %441, i64 %443
  store i8* %438, i8** %444, align 8
  br label %445

445:                                              ; preds = %437, %433
  %446 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %447 = load i32, i32* @I40E_DEBUG_INIT, align 4
  %448 = load i32, i32* %14, align 4
  %449 = call i32 (%struct.i40e_hw*, i32, i8*, ...) @i40e_debug(%struct.i40e_hw* %446, i32 %447, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.30, i64 0, i64 0), i32 %448)
  br label %599

450:                                              ; preds = %47
  %451 = load i32, i32* %14, align 4
  %452 = load i32, i32* @I40E_HW_CAP_MAX_GPIO, align 4
  %453 = icmp slt i32 %451, %452
  br i1 %453, label %454, label %462

454:                                              ; preds = %450
  %455 = load i8*, i8** @TRUE, align 8
  %456 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %457 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %456, i32 0, i32 34
  %458 = load i8**, i8*** %457, align 8
  %459 = load i32, i32* %14, align 4
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds i8*, i8** %458, i64 %460
  store i8* %455, i8** %461, align 8
  br label %462

462:                                              ; preds = %454, %450
  %463 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %464 = load i32, i32* @I40E_DEBUG_INIT, align 4
  %465 = load i32, i32* %14, align 4
  %466 = call i32 (%struct.i40e_hw*, i32, i8*, ...) @i40e_debug(%struct.i40e_hw* %463, i32 %464, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.31, i64 0, i64 0), i32 %465)
  br label %599

467:                                              ; preds = %47
  %468 = load i32, i32* %12, align 4
  %469 = icmp eq i32 %468, 1
  br i1 %469, label %470, label %477

470:                                              ; preds = %467
  %471 = load i32, i32* %14, align 4
  %472 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %473 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %472, i32 0, i32 20
  store i32 %471, i32* %473, align 8
  %474 = load i32, i32* %13, align 4
  %475 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %476 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %475, i32 0, i32 21
  store i32 %474, i32* %476, align 4
  br label %477

477:                                              ; preds = %470, %467
  %478 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %479 = load i32, i32* @I40E_DEBUG_INIT, align 4
  %480 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %481 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %480, i32 0, i32 20
  %482 = load i32, i32* %481, align 8
  %483 = call i32 (%struct.i40e_hw*, i32, i8*, ...) @i40e_debug(%struct.i40e_hw* %478, i32 %479, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.32, i64 0, i64 0), i32 %482)
  %484 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %485 = load i32, i32* @I40E_DEBUG_INIT, align 4
  %486 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %487 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %486, i32 0, i32 21
  %488 = load i32, i32* %487, align 4
  %489 = call i32 (%struct.i40e_hw*, i32, i8*, ...) @i40e_debug(%struct.i40e_hw* %484, i32 %485, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.33, i64 0, i64 0), i32 %488)
  br label %599

490:                                              ; preds = %47
  %491 = load i32, i32* %12, align 4
  %492 = icmp eq i32 %491, 1
  br i1 %492, label %493, label %497

493:                                              ; preds = %490
  %494 = load i8*, i8** @TRUE, align 8
  %495 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %496 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %495, i32 0, i32 33
  store i8* %494, i8** %496, align 8
  br label %497

497:                                              ; preds = %493, %490
  %498 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %499 = load i32, i32* @I40E_DEBUG_INIT, align 4
  %500 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %501 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %500, i32 0, i32 33
  %502 = load i8*, i8** %501, align 8
  %503 = call i32 (%struct.i40e_hw*, i32, i8*, ...) @i40e_debug(%struct.i40e_hw* %498, i32 %499, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.34, i64 0, i64 0), i8* %502)
  br label %599

504:                                              ; preds = %47
  %505 = load i8*, i8** @TRUE, align 8
  %506 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %507 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %506, i32 0, i32 32
  store i8* %505, i8** %507, align 8
  %508 = load i32, i32* %12, align 4
  %509 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %510 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %509, i32 0, i32 22
  store i32 %508, i32* %510, align 8
  %511 = load i32, i32* %13, align 4
  %512 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %513 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %512, i32 0, i32 23
  store i32 %511, i32* %513, align 4
  %514 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %515 = load i32, i32* @I40E_DEBUG_INIT, align 4
  %516 = call i32 (%struct.i40e_hw*, i32, i8*, ...) @i40e_debug(%struct.i40e_hw* %514, i32 %515, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.35, i64 0, i64 0))
  %517 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %518 = load i32, i32* @I40E_DEBUG_INIT, align 4
  %519 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %520 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %519, i32 0, i32 22
  %521 = load i32, i32* %520, align 8
  %522 = call i32 (%struct.i40e_hw*, i32, i8*, ...) @i40e_debug(%struct.i40e_hw* %517, i32 %518, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.36, i64 0, i64 0), i32 %521)
  br label %599

523:                                              ; preds = %47
  %524 = load i32, i32* %12, align 4
  %525 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %526 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %525, i32 0, i32 24
  store i32 %524, i32* %526, align 8
  %527 = load i32, i32* %13, align 4
  %528 = shl i32 %527, 32
  %529 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %530 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %529, i32 0, i32 24
  %531 = load i32, i32* %530, align 8
  %532 = or i32 %531, %528
  store i32 %532, i32* %530, align 8
  %533 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %534 = load i32, i32* @I40E_DEBUG_INIT, align 4
  %535 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %536 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %535, i32 0, i32 24
  %537 = load i32, i32* %536, align 8
  %538 = and i32 %537, 65535
  %539 = call i32 (%struct.i40e_hw*, i32, i8*, ...) @i40e_debug(%struct.i40e_hw* %533, i32 %534, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.37, i64 0, i64 0), i32 %538)
  br label %599

540:                                              ; preds = %47
  %541 = load i32, i32* %12, align 4
  %542 = load i32, i32* @I40E_NVM_MGMT_SEC_REV_DISABLED, align 4
  %543 = and i32 %541, %542
  %544 = icmp ne i32 %543, 0
  br i1 %544, label %545, label %549

545:                                              ; preds = %540
  %546 = load i8*, i8** @TRUE, align 8
  %547 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %548 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %547, i32 0, i32 31
  store i8* %546, i8** %548, align 8
  br label %549

549:                                              ; preds = %545, %540
  %550 = load i32, i32* %12, align 4
  %551 = load i32, i32* @I40E_NVM_MGMT_UPDATE_DISABLED, align 4
  %552 = and i32 %550, %551
  %553 = icmp ne i32 %552, 0
  br i1 %553, label %554, label %558

554:                                              ; preds = %549
  %555 = load i8*, i8** @TRUE, align 8
  %556 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %557 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %556, i32 0, i32 30
  store i8* %555, i8** %557, align 8
  br label %558

558:                                              ; preds = %554, %549
  br label %599

559:                                              ; preds = %47
  %560 = load i32, i32* %12, align 4
  %561 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %562 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %561, i32 0, i32 0
  store i32 %560, i32* %562, align 8
  %563 = load i32, i32* %13, align 4
  %564 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %565 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %564, i32 0, i32 1
  store i32 %563, i32* %565, align 4
  %566 = load i32, i32* %14, align 4
  %567 = load i32, i32* @I40E_WOL_SUPPORT_MASK, align 4
  %568 = and i32 %566, %567
  %569 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %570 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %569, i32 0, i32 25
  store i32 %568, i32* %570, align 4
  %571 = load i32, i32* %14, align 4
  %572 = load i32, i32* @I40E_ACPI_PROGRAMMING_METHOD_MASK, align 4
  %573 = and i32 %571, %572
  %574 = icmp ne i32 %573, 0
  br i1 %574, label %575, label %579

575:                                              ; preds = %559
  %576 = load i32, i32* @I40E_ACPI_PROGRAMMING_METHOD_AQC_FPK, align 4
  %577 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %578 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %577, i32 0, i32 29
  store i32 %576, i32* %578, align 8
  br label %583

579:                                              ; preds = %559
  %580 = load i32, i32* @I40E_ACPI_PROGRAMMING_METHOD_HW_FVL, align 4
  %581 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %582 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %581, i32 0, i32 29
  store i32 %580, i32* %582, align 8
  br label %583

583:                                              ; preds = %579, %575
  %584 = load i32, i32* %14, align 4
  %585 = load i32, i32* @I40E_PROXY_SUPPORT_MASK, align 4
  %586 = and i32 %584, %585
  %587 = icmp ne i32 %586, 0
  %588 = zext i1 %587 to i64
  %589 = select i1 %587, i32 1, i32 0
  %590 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %591 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %590, i32 0, i32 26
  store i32 %589, i32* %591, align 8
  %592 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %593 = load i32, i32* @I40E_DEBUG_INIT, align 4
  %594 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %595 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %594, i32 0, i32 0
  %596 = load i32, i32* %595, align 8
  %597 = call i32 (%struct.i40e_hw*, i32, i8*, ...) @i40e_debug(%struct.i40e_hw* %592, i32 %593, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.38, i64 0, i64 0), i32 %596)
  br label %599

598:                                              ; preds = %47
  br label %599

599:                                              ; preds = %598, %583, %558, %523, %504, %497, %477, %462, %445, %426, %412, %386, %345, %335, %318, %301, %273, %266, %252, %228, %205, %200, %188, %174, %148, %141, %124, %114, %104, %97, %68
  br label %600

600:                                              ; preds = %599
  %601 = load i32, i32* %20, align 4
  %602 = add nsw i32 %601, 1
  store i32 %602, i32* %20, align 4
  %603 = load %struct.i40e_aqc_list_capabilities_element_resp*, %struct.i40e_aqc_list_capabilities_element_resp** %9, align 8
  %604 = getelementptr inbounds %struct.i40e_aqc_list_capabilities_element_resp, %struct.i40e_aqc_list_capabilities_element_resp* %603, i32 1
  store %struct.i40e_aqc_list_capabilities_element_resp* %604, %struct.i40e_aqc_list_capabilities_element_resp** %9, align 8
  br label %43

605:                                              ; preds = %43
  %606 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %607 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %606, i32 0, i32 28
  %608 = load i8*, i8** %607, align 8
  %609 = icmp ne i8* %608, null
  br i1 %609, label %610, label %614

610:                                              ; preds = %605
  %611 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %612 = load i32, i32* @I40E_DEBUG_ALL, align 4
  %613 = call i32 (%struct.i40e_hw*, i32, i8*, ...) @i40e_debug(%struct.i40e_hw* %611, i32 %612, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.39, i64 0, i64 0))
  br label %614

614:                                              ; preds = %610, %605
  %615 = load i8*, i8** @FALSE, align 8
  %616 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %617 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %616, i32 0, i32 28
  store i8* %615, i8** %617, align 8
  %618 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %619 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %618, i32 0, i32 2
  store i32 0, i32* %619, align 8
  store i32 0, i32* %20, align 4
  br label %620

620:                                              ; preds = %641, %614
  %621 = load i32, i32* %20, align 4
  %622 = icmp slt i32 %621, 4
  br i1 %622, label %623, label %644

623:                                              ; preds = %620
  %624 = load i32, i32* @I40E_PRTGEN_CNF, align 4
  %625 = load i32, i32* %20, align 4
  %626 = mul nsw i32 4, %625
  %627 = add nsw i32 %624, %626
  store i32 %627, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %628 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %629 = load i32, i32* %21, align 4
  %630 = call i32 @i40e_aq_debug_read_register(%struct.i40e_hw* %628, i32 %629, i32* %22, i32* null)
  %631 = load i32, i32* %22, align 4
  %632 = load i32, i32* @I40E_PRTGEN_CNF_PORT_DIS_MASK, align 4
  %633 = and i32 %631, %632
  %634 = icmp ne i32 %633, 0
  br i1 %634, label %640, label %635

635:                                              ; preds = %623
  %636 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %637 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %636, i32 0, i32 2
  %638 = load i32, i32* %637, align 8
  %639 = add nsw i32 %638, 1
  store i32 %639, i32* %637, align 8
  br label %640

640:                                              ; preds = %635, %623
  br label %641

641:                                              ; preds = %640
  %642 = load i32, i32* %20, align 4
  %643 = add nsw i32 %642, 1
  store i32 %643, i32* %20, align 4
  br label %620

644:                                              ; preds = %620
  %645 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %646 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %645, i32 0, i32 6
  %647 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %646, i32 0, i32 0
  %648 = load i64, i64* %647, align 8
  %649 = load i64, i64* @I40E_MAC_X722, align 8
  %650 = icmp eq i64 %648, %649
  br i1 %650, label %651, label %680

651:                                              ; preds = %644
  %652 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %653 = load i32, i32* @I40E_RESOURCE_READ, align 4
  %654 = call i64 @i40e_acquire_nvm(%struct.i40e_hw* %652, i32 %653)
  %655 = load i64, i64* @I40E_SUCCESS, align 8
  %656 = icmp eq i64 %654, %655
  br i1 %656, label %657, label %679

657:                                              ; preds = %651
  %658 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %659 = load i32, i32* @I40E_SR_EMP_MODULE_PTR, align 4
  %660 = load i32, i32* @I40E_SR_OCP_CFG_WORD0, align 4
  %661 = mul nsw i32 2, %660
  %662 = load i8*, i8** @TRUE, align 8
  %663 = call i32 @i40e_aq_read_nvm(%struct.i40e_hw* %658, i32 %659, i32 %661, i32 4, i32* %18, i8* %662, i32* null)
  store i32 %663, i32* %16, align 4
  %664 = load i32, i32* %16, align 4
  %665 = zext i32 %664 to i64
  %666 = load i64, i64* @I40E_SUCCESS, align 8
  %667 = icmp eq i64 %665, %666
  br i1 %667, label %668, label %676

668:                                              ; preds = %657
  %669 = load i32, i32* %18, align 4
  %670 = load i32, i32* @I40E_SR_OCP_ENABLED, align 4
  %671 = and i32 %669, %670
  %672 = icmp ne i32 %671, 0
  br i1 %672, label %673, label %676

673:                                              ; preds = %668
  %674 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %675 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %674, i32 0, i32 2
  store i32 4, i32* %675, align 8
  br label %676

676:                                              ; preds = %673, %668, %657
  %677 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %678 = call i32 @i40e_release_nvm(%struct.i40e_hw* %677)
  br label %679

679:                                              ; preds = %676, %651
  br label %680

680:                                              ; preds = %679, %644
  %681 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %682 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %681, i32 0, i32 5
  %683 = load i32, i32* %682, align 4
  store i32 %683, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %684

684:                                              ; preds = %694, %680
  %685 = load i32, i32* %10, align 4
  %686 = icmp ne i32 %685, 0
  br i1 %686, label %687, label %697

687:                                              ; preds = %684
  %688 = load i32, i32* %10, align 4
  %689 = and i32 %688, 1
  %690 = icmp ne i32 %689, 0
  br i1 %690, label %691, label %694

691:                                              ; preds = %687
  %692 = load i32, i32* %11, align 4
  %693 = add nsw i32 %692, 1
  store i32 %693, i32* %11, align 4
  br label %694

694:                                              ; preds = %691, %687
  %695 = load i32, i32* %10, align 4
  %696 = ashr i32 %695, 1
  store i32 %696, i32* %10, align 4
  br label %684

697:                                              ; preds = %684
  %698 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %699 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %698, i32 0, i32 2
  %700 = load i32, i32* %699, align 8
  %701 = icmp ne i32 %700, 0
  br i1 %701, label %702, label %720

702:                                              ; preds = %697
  %703 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %704 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %703, i32 0, i32 4
  %705 = load i32, i32* %704, align 8
  %706 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %707 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %706, i32 0, i32 2
  %708 = load i32, i32* %707, align 8
  %709 = sdiv i32 %705, %708
  %710 = add nsw i32 %709, 1
  %711 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %712 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %711, i32 0, i32 3
  store i32 %710, i32* %712, align 4
  %713 = load i32, i32* %11, align 4
  %714 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %715 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %714, i32 0, i32 2
  %716 = load i32, i32* %715, align 8
  %717 = sdiv i32 %713, %716
  %718 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %719 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %718, i32 0, i32 5
  store i32 %717, i32* %719, align 4
  br label %720

720:                                              ; preds = %702, %697
  %721 = load i32, i32* @I40E_MAX_CHAINED_RX_BUFFERS, align 4
  %722 = load %struct.i40e_hw_capabilities*, %struct.i40e_hw_capabilities** %15, align 8
  %723 = getelementptr inbounds %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities* %722, i32 0, i32 27
  store i32 %721, i32* %723, align 4
  br label %724

724:                                              ; preds = %720, %40
  ret void
}

declare dso_local i32 @LE16_TO_CPU(i32) #1

declare dso_local i32 @LE32_TO_CPU(i32) #1

declare dso_local i32 @i40e_debug(%struct.i40e_hw*, i32, i8*, ...) #1

declare dso_local i32 @i40e_aq_debug_read_register(%struct.i40e_hw*, i32, i32*, i32*) #1

declare dso_local i64 @i40e_acquire_nvm(%struct.i40e_hw*, i32) #1

declare dso_local i32 @i40e_aq_read_nvm(%struct.i40e_hw*, i32, i32, i32, i32*, i8*, i32*) #1

declare dso_local i32 @i40e_release_nvm(%struct.i40e_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
