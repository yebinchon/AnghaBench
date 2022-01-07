; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_ixl.c_ixl_if_attach_pre.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_ixl.c_ixl_if_attach_pre.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.ixl_pf = type { %struct.i40e_hw, i32, i8*, %struct.ixl_vsi }
%struct.i40e_hw = type { %struct.TYPE_8__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i64, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i8*, i8*, i8*, i8* }
%struct.ixl_vsi = type { i64, %struct.TYPE_11__*, i32, i32, i64, i64, %struct.i40e_hw*, i8*, %struct.ixl_pf* }
%struct.TYPE_11__ = type { i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8**, %struct.TYPE_12__*, i8** }
%struct.i40e_filter_control_settings = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [6 x i8] c"begin\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Allocation of PCI resources failed\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"PF reset failure %s\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"Unable to initialize shared code, error %s\0A\00", align 1
@IXL_AQ_LEN = common dso_local global i8* null, align 8
@IXL_AQ_BUF_SZ = common dso_local global i8* null, align 8
@I40E_ERR_FIRMWARE_API_VERSION = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"Unable to initialize Admin Queue, error %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [81 x i8] c"The driver for the device stopped because the NVM image is newer than expected.\0A\00", align 1
@.str.6 = private unnamed_addr constant [65 x i8] c"You must install the most recent version of the network driver.\0A\00", align 1
@I40E_FW_API_VERSION_MAJOR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [84 x i8] c"The driver for the device detected a newer version of the NVM image than expected.\0A\00", align 1
@.str.8 = private unnamed_addr constant [63 x i8] c"Please install the most recent version of the network driver.\0A\00", align 1
@.str.9 = private unnamed_addr constant [85 x i8] c"The driver for the device detected an older version of the NVM image than expected.\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"Please update the NVM image.\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"get_hw_capabilities failed: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"init_lan_hmc failed: %s\0A\00", align 1
@I40E_HMC_MODEL_DIRECT_ONLY = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [30 x i8] c"configure_lan_hmc failed: %s\0A\00", align 1
@TRUE = common dso_local global i8* null, align 8
@IXL_PF_STATE_FW_LLDP_DISABLED = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [30 x i8] c"validate_mac_addr failed: %d\0A\00", align 1
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@I40E_HASH_LUT_SIZE_512 = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [34 x i8] c"i40e_set_filter_control() failed\0A\00", align 1
@I40E_MAC_X722 = common dso_local global i64 0, align 8
@DBA_ALIGN = common dso_local global i32 0, align 4
@ixl_txrx_hwb = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@ixl_txrx_dwb = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@ixl_intr = common dso_local global i32 0, align 4
@IXL_MSIX_BAR = common dso_local global i32 0, align 4
@IXL_MAX_TX_SEGS = common dso_local global i32 0, align 4
@IXL_MAX_TSO_SEGS = common dso_local global i32 0, align 4
@IXL_TSO_SIZE = common dso_local global i32 0, align 4
@IXL_MAX_DMA_SEG_SIZE = common dso_local global i32 0, align 4
@CSUM_OFFLOAD = common dso_local global i32 0, align 4
@IXL_CAPS = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ixl_if_attach_pre to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixl_if_attach_pre(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ixl_pf*, align 8
  %6 = alloca %struct.i40e_hw*, align 8
  %7 = alloca %struct.ixl_vsi*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.i40e_filter_control_settings, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %11, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @INIT_DBG_DEV(i8* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* %3, align 4
  %15 = call i8* @iflib_get_dev(i32 %14)
  store i8* %15, i8** %4, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call %struct.ixl_pf* @iflib_get_softc(i32 %16)
  store %struct.ixl_pf* %17, %struct.ixl_pf** %5, align 8
  %18 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %19 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %18, i32 0, i32 3
  store %struct.ixl_vsi* %19, %struct.ixl_vsi** %7, align 8
  %20 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %21 = load %struct.ixl_vsi*, %struct.ixl_vsi** %7, align 8
  %22 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %21, i32 0, i32 8
  store %struct.ixl_pf* %20, %struct.ixl_pf** %22, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %25 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  %26 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %27 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %26, i32 0, i32 0
  store %struct.i40e_hw* %27, %struct.i40e_hw** %6, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = load %struct.ixl_vsi*, %struct.ixl_vsi** %7, align 8
  %30 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %29, i32 0, i32 7
  store i8* %28, i8** %30, align 8
  %31 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %32 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %31, i32 0, i32 0
  %33 = load %struct.ixl_vsi*, %struct.ixl_vsi** %7, align 8
  %34 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %33, i32 0, i32 6
  store %struct.i40e_hw* %32, %struct.i40e_hw** %34, align 8
  %35 = load %struct.ixl_vsi*, %struct.ixl_vsi** %7, align 8
  %36 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %35, i32 0, i32 5
  store i64 0, i64* %36, align 8
  %37 = load %struct.ixl_vsi*, %struct.ixl_vsi** %7, align 8
  %38 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %37, i32 0, i32 4
  store i64 0, i64* %38, align 8
  %39 = load i32, i32* %3, align 4
  %40 = load %struct.ixl_vsi*, %struct.ixl_vsi** %7, align 8
  %41 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @iflib_get_media(i32 %42)
  %44 = load %struct.ixl_vsi*, %struct.ixl_vsi** %7, align 8
  %45 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* %3, align 4
  %47 = call %struct.TYPE_11__* @iflib_get_softc_ctx(i32 %46)
  store %struct.TYPE_11__* %47, %struct.TYPE_11__** %8, align 8
  %48 = load %struct.ixl_vsi*, %struct.ixl_vsi** %7, align 8
  %49 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %48, i32 0, i32 1
  store %struct.TYPE_11__* %47, %struct.TYPE_11__** %49, align 8
  %50 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %51 = call i32 @ixl_save_pf_tunables(%struct.ixl_pf* %50)
  %52 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %53 = call i64 @ixl_allocate_pci_resources(%struct.ixl_pf* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %1
  %56 = load i8*, i8** %4, align 8
  %57 = call i32 (i8*, i8*, ...) @device_printf(i8* %56, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* @ENXIO, align 4
  store i32 %58, i32* %11, align 4
  br label %418

59:                                               ; preds = %1
  %60 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %61 = call i32 @i40e_clear_hw(%struct.i40e_hw* %60)
  %62 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %63 = call i32 @i40e_pf_reset(%struct.i40e_hw* %62)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %59
  %67 = load i8*, i8** %4, align 8
  %68 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @i40e_stat_str(%struct.i40e_hw* %68, i32 %69)
  %71 = call i32 (i8*, i8*, ...) @device_printf(i8* %67, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* @EIO, align 4
  store i32 %72, i32* %11, align 4
  br label %415

73:                                               ; preds = %59
  %74 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %75 = call i32 @i40e_init_shared_code(%struct.i40e_hw* %74)
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %73
  %79 = load i8*, i8** %4, align 8
  %80 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @i40e_stat_str(%struct.i40e_hw* %80, i32 %81)
  %83 = call i32 (i8*, i8*, ...) @device_printf(i8* %79, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* @EIO, align 4
  store i32 %84, i32* %11, align 4
  br label %415

85:                                               ; preds = %73
  %86 = load i8*, i8** @IXL_AQ_LEN, align 8
  %87 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %88 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 7
  store i8* %86, i8** %89, align 8
  %90 = load i8*, i8** @IXL_AQ_LEN, align 8
  %91 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %92 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 6
  store i8* %90, i8** %93, align 8
  %94 = load i8*, i8** @IXL_AQ_BUF_SZ, align 8
  %95 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %96 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 5
  store i8* %94, i8** %97, align 8
  %98 = load i8*, i8** @IXL_AQ_BUF_SZ, align 8
  %99 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %100 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 4
  store i8* %98, i8** %101, align 8
  %102 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %103 = call i32 @i40e_init_adminq(%struct.i40e_hw* %102)
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %10, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %117

106:                                              ; preds = %85
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* @I40E_ERR_FIRMWARE_API_VERSION, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %117

110:                                              ; preds = %106
  %111 = load i8*, i8** %4, align 8
  %112 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %113 = load i32, i32* %10, align 4
  %114 = call i32 @i40e_stat_str(%struct.i40e_hw* %112, i32 %113)
  %115 = call i32 (i8*, i8*, ...) @device_printf(i8* %111, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %114)
  %116 = load i32, i32* @EIO, align 4
  store i32 %116, i32* %11, align 4
  br label %415

117:                                              ; preds = %106, %85
  %118 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %119 = call i32 @ixl_print_nvm_version(%struct.ixl_pf* %118)
  %120 = load i32, i32* %10, align 4
  %121 = load i32, i32* @I40E_ERR_FIRMWARE_API_VERSION, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %129

123:                                              ; preds = %117
  %124 = load i8*, i8** %4, align 8
  %125 = call i32 (i8*, i8*, ...) @device_printf(i8* %124, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.5, i64 0, i64 0))
  %126 = load i8*, i8** %4, align 8
  %127 = call i32 (i8*, i8*, ...) @device_printf(i8* %126, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.6, i64 0, i64 0))
  %128 = load i32, i32* @EIO, align 4
  store i32 %128, i32* %11, align 4
  br label %415

129:                                              ; preds = %117
  %130 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %131 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @I40E_FW_API_VERSION_MAJOR, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %149

136:                                              ; preds = %129
  %137 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %138 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %142 = call i32 @I40E_FW_MINOR_VERSION(%struct.i40e_hw* %141)
  %143 = icmp sgt i32 %140, %142
  br i1 %143, label %144, label %149

144:                                              ; preds = %136
  %145 = load i8*, i8** %4, align 8
  %146 = call i32 (i8*, i8*, ...) @device_printf(i8* %145, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.7, i64 0, i64 0))
  %147 = load i8*, i8** %4, align 8
  %148 = call i32 (i8*, i8*, ...) @device_printf(i8* %147, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.8, i64 0, i64 0))
  br label %167

149:                                              ; preds = %136, %129
  %150 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %151 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = icmp eq i32 %153, 1
  br i1 %154, label %155, label %166

155:                                              ; preds = %149
  %156 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %157 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = icmp slt i32 %159, 4
  br i1 %160, label %161, label %166

161:                                              ; preds = %155
  %162 = load i8*, i8** %4, align 8
  %163 = call i32 (i8*, i8*, ...) @device_printf(i8* %162, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.9, i64 0, i64 0))
  %164 = load i8*, i8** %4, align 8
  %165 = call i32 (i8*, i8*, ...) @device_printf(i8* %164, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0))
  br label %166

166:                                              ; preds = %161, %155, %149
  br label %167

167:                                              ; preds = %166, %144
  %168 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %169 = call i32 @i40e_clear_pxe_mode(%struct.i40e_hw* %168)
  %170 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %171 = call i32 @ixl_get_hw_capabilities(%struct.ixl_pf* %170)
  store i32 %171, i32* %11, align 4
  %172 = load i32, i32* %11, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %167
  %175 = load i8*, i8** %4, align 8
  %176 = load i32, i32* %11, align 4
  %177 = call i32 (i8*, i8*, ...) @device_printf(i8* %175, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i32 %176)
  br label %412

178:                                              ; preds = %167
  %179 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %180 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %181 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %185 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @i40e_init_lan_hmc(%struct.i40e_hw* %179, i32 %183, i32 %187, i32 0, i32 0)
  store i32 %188, i32* %10, align 4
  %189 = load i32, i32* %10, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %197

191:                                              ; preds = %178
  %192 = load i8*, i8** %4, align 8
  %193 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %194 = load i32, i32* %10, align 4
  %195 = call i32 @i40e_stat_str(%struct.i40e_hw* %193, i32 %194)
  %196 = call i32 (i8*, i8*, ...) @device_printf(i8* %192, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i32 %195)
  br label %412

197:                                              ; preds = %178
  %198 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %199 = load i32, i32* @I40E_HMC_MODEL_DIRECT_ONLY, align 4
  %200 = call i32 @i40e_configure_lan_hmc(%struct.i40e_hw* %198, i32 %199)
  store i32 %200, i32* %10, align 4
  %201 = load i32, i32* %10, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %209

203:                                              ; preds = %197
  %204 = load i8*, i8** %4, align 8
  %205 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %206 = load i32, i32* %10, align 4
  %207 = call i32 @i40e_stat_str(%struct.i40e_hw* %205, i32 %206)
  %208 = call i32 (i8*, i8*, ...) @device_printf(i8* %204, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0), i32 %207)
  br label %409

209:                                              ; preds = %197
  %210 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %211 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %211, i32 0, i32 2
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = icmp eq i32 %214, 4
  br i1 %215, label %216, label %223

216:                                              ; preds = %209
  %217 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %218 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %218, i32 0, i32 2
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 4
  %222 = icmp slt i32 %221, 3
  br i1 %222, label %230, label %223

223:                                              ; preds = %216, %209
  %224 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %225 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %225, i32 0, i32 2
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 8
  %229 = icmp slt i32 %228, 4
  br i1 %229, label %230, label %239

230:                                              ; preds = %223, %216
  %231 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %232 = load i8*, i8** @TRUE, align 8
  %233 = call i32 @i40e_aq_stop_lldp(%struct.i40e_hw* %231, i8* %232, i32* null)
  %234 = load i32, i32* @IXL_PF_STATE_FW_LLDP_DISABLED, align 4
  %235 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %236 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 8
  %238 = or i32 %237, %234
  store i32 %238, i32* %236, align 8
  br label %239

239:                                              ; preds = %230, %223
  %240 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %241 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %242 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @i40e_get_mac_addr(%struct.i40e_hw* %240, i32 %244)
  %246 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %247 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 4
  %250 = call i32 @i40e_validate_mac_addr(i32 %249)
  store i32 %250, i32* %11, align 4
  %251 = load i32, i32* %11, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %257

253:                                              ; preds = %239
  %254 = load i8*, i8** %4, align 8
  %255 = load i32, i32* %11, align 4
  %256 = call i32 (i8*, i8*, ...) @device_printf(i8* %254, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 %255)
  br label %409

257:                                              ; preds = %239
  %258 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %259 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %258, i32 0, i32 1
  %260 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %263 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %263, i32 0, i32 3
  %265 = load i32, i32* %264, align 8
  %266 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %267 = call i32 @bcopy(i32 %261, i32 %265, i32 %266)
  %268 = load i32, i32* %3, align 4
  %269 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %270 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %269, i32 0, i32 1
  %271 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 4
  %273 = call i32 @iflib_set_mac(i32 %268, i32 %272)
  %274 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %275 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %276 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %275, i32 0, i32 1
  %277 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 8
  %279 = call i32 @i40e_get_port_mac_addr(%struct.i40e_hw* %274, i32 %278)
  %280 = call i32 @bzero(%struct.i40e_filter_control_settings* %9, i32 24)
  %281 = load i8*, i8** @TRUE, align 8
  %282 = getelementptr inbounds %struct.i40e_filter_control_settings, %struct.i40e_filter_control_settings* %9, i32 0, i32 3
  store i8* %281, i8** %282, align 8
  %283 = load i8*, i8** @TRUE, align 8
  %284 = getelementptr inbounds %struct.i40e_filter_control_settings, %struct.i40e_filter_control_settings* %9, i32 0, i32 2
  store i8* %283, i8** %284, align 8
  %285 = load i32, i32* @FALSE, align 4
  %286 = getelementptr inbounds %struct.i40e_filter_control_settings, %struct.i40e_filter_control_settings* %9, i32 0, i32 1
  store i32 %285, i32* %286, align 4
  %287 = load i32, i32* @I40E_HASH_LUT_SIZE_512, align 4
  %288 = getelementptr inbounds %struct.i40e_filter_control_settings, %struct.i40e_filter_control_settings* %9, i32 0, i32 0
  store i32 %287, i32* %288, align 8
  %289 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %290 = call i64 @i40e_set_filter_control(%struct.i40e_hw* %289, %struct.i40e_filter_control_settings* %9)
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %295

292:                                              ; preds = %257
  %293 = load i8*, i8** %4, align 8
  %294 = call i32 (i8*, i8*, ...) @device_printf(i8* %293, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i64 0, i64 0))
  br label %295

295:                                              ; preds = %292, %257
  %296 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %297 = call i32 @ixl_get_fw_lldp_status(%struct.ixl_pf* %296)
  %298 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %299 = call i32 @i40e_aq_set_dcb_parameters(%struct.i40e_hw* %298, i32 1, i32* null)
  %300 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %301 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %300, i32 0, i32 1
  %302 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %301, i32 0, i32 0
  %303 = load i64, i64* %302, align 8
  %304 = load i64, i64* @I40E_MAC_X722, align 8
  %305 = icmp eq i64 %303, %304
  br i1 %305, label %306, label %311

306:                                              ; preds = %295
  %307 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %308 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %307, i32 0, i32 1
  store i32 128, i32* %308, align 4
  %309 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %310 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %309, i32 0, i32 0
  store i32 128, i32* %310, align 8
  br label %316

311:                                              ; preds = %295
  %312 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %313 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %312, i32 0, i32 1
  store i32 64, i32* %313, align 4
  %314 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %315 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %314, i32 0, i32 0
  store i32 64, i32* %315, align 8
  br label %316

316:                                              ; preds = %311, %306
  %317 = load %struct.ixl_vsi*, %struct.ixl_vsi** %7, align 8
  %318 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %317, i32 0, i32 0
  %319 = load i64, i64* %318, align 8
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %339

321:                                              ; preds = %316
  %322 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %323 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %322, i32 0, i32 2
  %324 = load i32*, i32** %323, align 8
  %325 = getelementptr inbounds i32, i32* %324, i64 0
  %326 = load i32, i32* %325, align 4
  %327 = sext i32 %326 to i64
  %328 = mul i64 %327, 4
  %329 = add i64 %328, 4
  %330 = trunc i64 %329 to i32
  %331 = load i32, i32* @DBA_ALIGN, align 4
  %332 = call i8* @roundup2(i32 %330, i32 %331)
  %333 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %334 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %333, i32 0, i32 15
  %335 = load i8**, i8*** %334, align 8
  %336 = getelementptr inbounds i8*, i8** %335, i64 0
  store i8* %332, i8** %336, align 8
  %337 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %338 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %337, i32 0, i32 14
  store %struct.TYPE_12__* @ixl_txrx_hwb, %struct.TYPE_12__** %338, align 8
  br label %356

339:                                              ; preds = %316
  %340 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %341 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %340, i32 0, i32 2
  %342 = load i32*, i32** %341, align 8
  %343 = getelementptr inbounds i32, i32* %342, i64 0
  %344 = load i32, i32* %343, align 4
  %345 = sext i32 %344 to i64
  %346 = mul i64 %345, 4
  %347 = trunc i64 %346 to i32
  %348 = load i32, i32* @DBA_ALIGN, align 4
  %349 = call i8* @roundup2(i32 %347, i32 %348)
  %350 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %351 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %350, i32 0, i32 15
  %352 = load i8**, i8*** %351, align 8
  %353 = getelementptr inbounds i8*, i8** %352, i64 0
  store i8* %349, i8** %353, align 8
  %354 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %355 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %354, i32 0, i32 14
  store %struct.TYPE_12__* @ixl_txrx_dwb, %struct.TYPE_12__** %355, align 8
  br label %356

356:                                              ; preds = %339, %321
  %357 = load i32, i32* @ixl_intr, align 4
  %358 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %359 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %358, i32 0, i32 14
  %360 = load %struct.TYPE_12__*, %struct.TYPE_12__** %359, align 8
  %361 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %360, i32 0, i32 0
  store i32 %357, i32* %361, align 4
  %362 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %363 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %362, i32 0, i32 3
  %364 = load i32*, i32** %363, align 8
  %365 = getelementptr inbounds i32, i32* %364, i64 0
  %366 = load i32, i32* %365, align 4
  %367 = sext i32 %366 to i64
  %368 = mul i64 %367, 4
  %369 = trunc i64 %368 to i32
  %370 = load i32, i32* @DBA_ALIGN, align 4
  %371 = call i8* @roundup2(i32 %369, i32 %370)
  %372 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %373 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %372, i32 0, i32 13
  %374 = load i8**, i8*** %373, align 8
  %375 = getelementptr inbounds i8*, i8** %374, i64 0
  store i8* %371, i8** %375, align 8
  %376 = load i32, i32* @IXL_MSIX_BAR, align 4
  %377 = call i32 @PCIR_BAR(i32 %376)
  %378 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %379 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %378, i32 0, i32 12
  store i32 %377, i32* %379, align 8
  %380 = load i32, i32* @IXL_MAX_TX_SEGS, align 4
  %381 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %382 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %381, i32 0, i32 11
  store i32 %380, i32* %382, align 4
  %383 = load i32, i32* @IXL_MAX_TSO_SEGS, align 4
  %384 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %385 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %384, i32 0, i32 10
  store i32 %383, i32* %385, align 8
  %386 = load i32, i32* @IXL_TSO_SIZE, align 4
  %387 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %388 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %387, i32 0, i32 9
  store i32 %386, i32* %388, align 4
  %389 = load i32, i32* @IXL_MAX_DMA_SEG_SIZE, align 4
  %390 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %391 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %390, i32 0, i32 8
  store i32 %389, i32* %391, align 8
  %392 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %393 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %392, i32 0, i32 0
  %394 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %393, i32 0, i32 0
  %395 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 8
  %397 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %398 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %397, i32 0, i32 7
  store i32 %396, i32* %398, align 4
  %399 = load i32, i32* @CSUM_OFFLOAD, align 4
  %400 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %401 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %400, i32 0, i32 6
  store i32 %399, i32* %401, align 8
  %402 = load i32, i32* @IXL_CAPS, align 4
  %403 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %404 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %403, i32 0, i32 4
  store i32 %402, i32* %404, align 8
  %405 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %406 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %405, i32 0, i32 5
  store i32 %402, i32* %406, align 4
  %407 = load i8*, i8** %4, align 8
  %408 = call i32 @INIT_DBG_DEV(i8* %407, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %420

409:                                              ; preds = %253, %203
  %410 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %411 = call i32 @i40e_shutdown_lan_hmc(%struct.i40e_hw* %410)
  br label %412

412:                                              ; preds = %409, %191, %174
  %413 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %414 = call i32 @i40e_shutdown_adminq(%struct.i40e_hw* %413)
  br label %415

415:                                              ; preds = %412, %123, %110, %78, %66
  %416 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %417 = call i32 @ixl_free_pci_resources(%struct.ixl_pf* %416)
  br label %418

418:                                              ; preds = %415, %55
  %419 = load i32, i32* %11, align 4
  store i32 %419, i32* %2, align 4
  br label %420

420:                                              ; preds = %418, %356
  %421 = load i32, i32* %2, align 4
  ret i32 %421
}

declare dso_local i32 @INIT_DBG_DEV(i8*, i8*) #1

declare dso_local i8* @iflib_get_dev(i32) #1

declare dso_local %struct.ixl_pf* @iflib_get_softc(i32) #1

declare dso_local i32 @iflib_get_media(i32) #1

declare dso_local %struct.TYPE_11__* @iflib_get_softc_ctx(i32) #1

declare dso_local i32 @ixl_save_pf_tunables(%struct.ixl_pf*) #1

declare dso_local i64 @ixl_allocate_pci_resources(%struct.ixl_pf*) #1

declare dso_local i32 @device_printf(i8*, i8*, ...) #1

declare dso_local i32 @i40e_clear_hw(%struct.i40e_hw*) #1

declare dso_local i32 @i40e_pf_reset(%struct.i40e_hw*) #1

declare dso_local i32 @i40e_stat_str(%struct.i40e_hw*, i32) #1

declare dso_local i32 @i40e_init_shared_code(%struct.i40e_hw*) #1

declare dso_local i32 @i40e_init_adminq(%struct.i40e_hw*) #1

declare dso_local i32 @ixl_print_nvm_version(%struct.ixl_pf*) #1

declare dso_local i32 @I40E_FW_MINOR_VERSION(%struct.i40e_hw*) #1

declare dso_local i32 @i40e_clear_pxe_mode(%struct.i40e_hw*) #1

declare dso_local i32 @ixl_get_hw_capabilities(%struct.ixl_pf*) #1

declare dso_local i32 @i40e_init_lan_hmc(%struct.i40e_hw*, i32, i32, i32, i32) #1

declare dso_local i32 @i40e_configure_lan_hmc(%struct.i40e_hw*, i32) #1

declare dso_local i32 @i40e_aq_stop_lldp(%struct.i40e_hw*, i8*, i32*) #1

declare dso_local i32 @i40e_get_mac_addr(%struct.i40e_hw*, i32) #1

declare dso_local i32 @i40e_validate_mac_addr(i32) #1

declare dso_local i32 @bcopy(i32, i32, i32) #1

declare dso_local i32 @iflib_set_mac(i32, i32) #1

declare dso_local i32 @i40e_get_port_mac_addr(%struct.i40e_hw*, i32) #1

declare dso_local i32 @bzero(%struct.i40e_filter_control_settings*, i32) #1

declare dso_local i64 @i40e_set_filter_control(%struct.i40e_hw*, %struct.i40e_filter_control_settings*) #1

declare dso_local i32 @ixl_get_fw_lldp_status(%struct.ixl_pf*) #1

declare dso_local i32 @i40e_aq_set_dcb_parameters(%struct.i40e_hw*, i32, i32*) #1

declare dso_local i8* @roundup2(i32, i32) #1

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i32 @i40e_shutdown_lan_hmc(%struct.i40e_hw*) #1

declare dso_local i32 @i40e_shutdown_adminq(%struct.i40e_hw*) #1

declare dso_local i32 @ixl_free_pci_resources(%struct.ixl_pf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
