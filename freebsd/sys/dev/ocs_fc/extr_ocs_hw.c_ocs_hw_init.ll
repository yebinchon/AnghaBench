; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_61__ = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_62__, i32, %struct.TYPE_62__, %struct.TYPE_62__, i64, i32, %struct.TYPE_76__**, i32*, i32, %struct.TYPE_75__, i32, %struct.TYPE_66__*, %struct.TYPE_65__, i32, %struct.TYPE_74__*, i32, %struct.TYPE_73__*, i32, %struct.TYPE_66__*, i32, i32, i32, i32, %struct.TYPE_64__**, i64, i32, %struct.TYPE_71__, i32, %struct.TYPE_69__*, i32*, %struct.TYPE_62__, i32, i64, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_76__ = type { i32* }
%struct.TYPE_75__ = type { i32, i64, i32, i32, i32, i32, i32*, i64, i64, i64 }
%struct.TYPE_65__ = type { i64, %struct.TYPE_70__ }
%struct.TYPE_70__ = type { %struct.TYPE_68__ }
%struct.TYPE_68__ = type { %struct.TYPE_67__ }
%struct.TYPE_67__ = type { i8* }
%struct.TYPE_74__ = type { i32 }
%struct.TYPE_73__ = type { i32 }
%struct.TYPE_66__ = type { i32 }
%struct.TYPE_64__ = type { i64, %struct.TYPE_72__*, i64 }
%struct.TYPE_72__ = type { i32 }
%struct.TYPE_71__ = type { i64 }
%struct.TYPE_69__ = type { i32, i32 }
%struct.TYPE_62__ = type { i64 }
%struct.TYPE_63__ = type { i32* }
%struct.TYPE_59__ = type { i32, i8*, i8*, i8*, i8* }
%struct.TYPE_60__ = type { i32 }

@SLI4_BMBX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"command found on cmd list\0A\00", align 1
@OCS_HW_RTN_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"command found on pending list\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"removed %d items from io_wait_free list\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"removed %d items from io_inuse list\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"removed %d items from io_free list\0A\00", align 1
@ocs_hw_io_t = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@wqe_link = common dso_local global i32 0, align 4
@dnrx_link = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [26 x i8] c"SLI failed to initialize\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"ramdisc_blocksize\00", align 1
@OCS_CMD_POLL = common dso_local global i32 0, align 4
@OCS_HW_RTN_SUCCESS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"config auto xfer rdy failed\0A\00", align 1
@TRUE = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [44 x i8] c"set parameters auto xfer rdy T10 PI failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"Enabling Sliport Health check failed \0A\00", align 1
@SLI4_IF_TYPE_LANCER_FC_ETH = common dso_local global i64 0, align 8
@OCS_HW_FDT_XFER_HINT = common dso_local global i64 0, align 8
@SLI_QTYPE_EQ = common dso_local global i32 0, align 4
@OCS_HW_MAX_NUM_EQ = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [32 x i8] c"requested %d EQ but %d allowed\0A\00", align 1
@SLI_QTYPE_CQ = common dso_local global i32 0, align 4
@OCS_HW_MAX_NUM_CQ = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [32 x i8] c"requested %d CQ but %d allowed\0A\00", align 1
@SLI_QTYPE_MQ = common dso_local global i32 0, align 4
@OCS_HW_MAX_NUM_MQ = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [32 x i8] c"requested %d MQ but %d allowed\0A\00", align 1
@SLI_QTYPE_RQ = common dso_local global i32 0, align 4
@OCS_HW_MAX_NUM_RQ = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [32 x i8] c"requested %d RQ but %d allowed\0A\00", align 1
@SLI_QTYPE_WQ = common dso_local global i32 0, align 4
@OCS_HW_MAX_NUM_WQ = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [32 x i8] c"requested %d WQ but %d allowed\0A\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"Max CQs %d, hash size = %d\0A\00", align 1
@OCS_HW_Q_HASH_SIZE = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [28 x i8] c"Max RQs %d, hash size = %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"Max WQs %d, hash size = %d\0A\00", align 1
@SLI_RSRC_FCOE_RPI = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [36 x i8] c"remote node memory allocation fail\0A\00", align 1
@OCS_HW_RTN_NO_MEMORY = common dso_local global i32 0, align 4
@UINT16_MAX = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [37 x i8] c"header template registration failed\0A\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"rx_allocate failed\0A\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"malloc seq_pool failed\0A\00", align 1
@.str.22 = private unnamed_addr constant [36 x i8] c"WARNING - error posting RQ buffers\0A\00", align 1
@OCS_M_ZERO = common dso_local global i32 0, align 4
@OCS_M_NOWAIT = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [33 x i8] c"rpi_ref allocation failure (%d)\0A\00", align 1
@SLI_LINK_MEDIUM_FC = common dso_local global i64 0, align 8
@.str.24 = private unnamed_addr constant [20 x i8] c"using REG_FCFI MRQ\0A\00", align 1
@SLI4_CMD_REG_FCFI_SET_FCFI_MODE = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [39 x i8] c"REG_FCFI_MRQ FCFI registration failed\0A\00", align 1
@SLI4_CMD_REG_FCFI_SET_MRQ_MODE = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [38 x i8] c"REG_FCFI_MRQ MRQ registration failed\0A\00", align 1
@SLI4_CMD_REG_FCFI_NUM_RQ_CFG = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [25 x i8] c"using REG_FCFI standard\0A\00", align 1
@.str.28 = private unnamed_addr constant [43 x i8] c"REG_FCFI: filter[%d] %08X -> RQ[%d] id=%d\0A\00", align 1
@.str.29 = private unnamed_addr constant [26 x i8] c"FCFI registration failed\0A\00", align 1
@.str.30 = private unnamed_addr constant [44 x i8] c"ocs_pool_alloc hw_wq_callback_t failed: %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [23 x i8] c"IO allocation failure\0A\00", align 1
@.str.32 = private unnamed_addr constant [27 x i8] c"IO initialization failure\0A\00", align 1
@OCS_HW_LINKCFG_NA = common dso_local global i32 0, align 4
@ocs_hw_init_linkcfg_cb = common dso_local global i32 0, align 4
@SLI_LINK_MEDIUM_ETHERNET = common dso_local global i64 0, align 8
@.str.33 = private unnamed_addr constant [32 x i8] c"Failed to set ethernet license\0A\00", align 1
@.str.34 = private unnamed_addr constant [30 x i8] c"Failed to set DIF seed value\0A\00", align 1
@SLI4_IF_TYPE_BE3_SKH_PF = common dso_local global i64 0, align 8
@.str.35 = private unnamed_addr constant [30 x i8] c"Failed to set DIF mode value\0A\00", align 1
@OCS_HW_STATE_ACTIVE = common dso_local global i32 0, align 4
@.str.36 = private unnamed_addr constant [38 x i8] c"WARNING - error initializing RQ pair\0A\00", align 1
@target_wqe_timer_cb = common dso_local global i32 0, align 4
@OCS_HW_WQ_TIMER_PERIOD_MS = common dso_local global i32 0, align 4
@.str.37 = private unnamed_addr constant [42 x i8] c"ocs_hw_io_alloc for send_frame_io failed\0A\00", align 1
@.str.38 = private unnamed_addr constant [57 x i8] c"watchdog_timeout out of range: Valid range is 1 - 65534\0A\00", align 1
@.str.39 = private unnamed_addr constant [54 x i8] c"watchdog timer configured with timeout = %d seconds \0A\00", align 1
@.str.40 = private unnamed_addr constant [36 x i8] c"domain node memory allocation fail\0A\00", align 1
@OCS_HW_READ_FCF_SIZE = common dso_local global i32 0, align 4
@.str.41 = private unnamed_addr constant [35 x i8] c"domain fcf memory allocation fail\0A\00", align 1
@SLI4_MIN_LOOP_MAP_BYTES = common dso_local global i32 0, align 4
@.str.42 = private unnamed_addr constant [32 x i8] c"Loop dma alloc failed size:%d \0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocs_hw_init(%struct.TYPE_61__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_61__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [32 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_62__, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.TYPE_64__*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_63__*, align 8
  store %struct.TYPE_61__* %0, %struct.TYPE_61__** %3, align 8
  store i32 0, i32* %5, align 4
  %25 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %6, align 8
  %28 = alloca i8*, i64 %26, align 16
  store i64 %26, i64* %7, align 8
  store i32 0, i32* %10, align 4
  store i32 512, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %29 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %29, i32 0, i32 47
  %31 = call i32 @ocs_lock(i32* %30)
  %32 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %32, i32 0, i32 49
  %34 = call i32 @ocs_list_empty(i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %1
  %37 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %37, i32 0, i32 8
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @ocs_log_test(i32 %39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %41, i32 0, i32 47
  %43 = call i32 @ocs_unlock(i32* %42)
  %44 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %44, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %1348

45:                                               ; preds = %1
  %46 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %46, i32 0, i32 48
  %48 = call i32 @ocs_list_empty(i32* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %45
  %51 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %51, i32 0, i32 8
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @ocs_log_test(i32 %53, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %55 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %55, i32 0, i32 47
  %57 = call i32 @ocs_unlock(i32* %56)
  %58 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %58, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %1348

59:                                               ; preds = %45
  %60 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %60, i32 0, i32 47
  %62 = call i32 @ocs_unlock(i32* %61)
  %63 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %64 = call i32 @ocs_hw_rx_free(%struct.TYPE_61__* %63)
  store i32 0, i32* %9, align 4
  %65 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %65, i32 0, i32 43
  %67 = call i64 @ocs_list_valid(i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %92

69:                                               ; preds = %59
  br label %70

70:                                               ; preds = %76, %69
  %71 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %71, i32 0, i32 43
  %73 = call i32 @ocs_list_empty(i32* %72)
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  br i1 %75, label %76, label %82

76:                                               ; preds = %70
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %9, align 4
  %79 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %79, i32 0, i32 43
  %81 = call i32 @ocs_list_remove_head(i32* %80)
  br label %70

82:                                               ; preds = %70
  %83 = load i32, i32* %9, align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %82
  %86 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %86, i32 0, i32 8
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %9, align 4
  %90 = call i32 (i32, i8*, ...) @ocs_log_debug(i32 %88, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %85, %82
  br label %92

92:                                               ; preds = %91, %59
  store i32 0, i32* %9, align 4
  %93 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %93, i32 0, i32 46
  %95 = call i64 @ocs_list_valid(i32* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %120

97:                                               ; preds = %92
  br label %98

98:                                               ; preds = %104, %97
  %99 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %99, i32 0, i32 46
  %101 = call i32 @ocs_list_empty(i32* %100)
  %102 = icmp ne i32 %101, 0
  %103 = xor i1 %102, true
  br i1 %103, label %104, label %110

104:                                              ; preds = %98
  %105 = load i32, i32* %9, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %9, align 4
  %107 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %107, i32 0, i32 46
  %109 = call i32 @ocs_list_remove_head(i32* %108)
  br label %98

110:                                              ; preds = %98
  %111 = load i32, i32* %9, align 4
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %110
  %114 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %114, i32 0, i32 8
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %9, align 4
  %118 = call i32 (i32, i8*, ...) @ocs_log_debug(i32 %116, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %117)
  br label %119

119:                                              ; preds = %113, %110
  br label %120

120:                                              ; preds = %119, %92
  store i32 0, i32* %9, align 4
  %121 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %121, i32 0, i32 45
  %123 = call i64 @ocs_list_valid(i32* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %148

125:                                              ; preds = %120
  br label %126

126:                                              ; preds = %132, %125
  %127 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %127, i32 0, i32 45
  %129 = call i32 @ocs_list_empty(i32* %128)
  %130 = icmp ne i32 %129, 0
  %131 = xor i1 %130, true
  br i1 %131, label %132, label %138

132:                                              ; preds = %126
  %133 = load i32, i32* %9, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %9, align 4
  %135 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %135, i32 0, i32 45
  %137 = call i32 @ocs_list_remove_head(i32* %136)
  br label %126

138:                                              ; preds = %126
  %139 = load i32, i32* %9, align 4
  %140 = icmp sgt i32 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %138
  %142 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %142, i32 0, i32 8
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* %9, align 4
  %146 = call i32 (i32, i8*, ...) @ocs_log_debug(i32 %144, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %145)
  br label %147

147:                                              ; preds = %141, %138
  br label %148

148:                                              ; preds = %147, %120
  %149 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %149, i32 0, i32 44
  %151 = call i64 @ocs_list_valid(i32* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %165

153:                                              ; preds = %148
  br label %154

154:                                              ; preds = %160, %153
  %155 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %155, i32 0, i32 44
  %157 = call i32 @ocs_list_empty(i32* %156)
  %158 = icmp ne i32 %157, 0
  %159 = xor i1 %158, true
  br i1 %159, label %160, label %164

160:                                              ; preds = %154
  %161 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %161, i32 0, i32 44
  %163 = call i32 @ocs_list_remove_head(i32* %162)
  br label %154

164:                                              ; preds = %154
  br label %165

165:                                              ; preds = %164, %148
  %166 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %166, i32 0, i32 46
  %168 = load i32, i32* @ocs_hw_io_t, align 4
  %169 = load i32, i32* @link, align 4
  %170 = call i32 @ocs_list_init(i32* %167, i32 %168, i32 %169)
  %171 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %171, i32 0, i32 45
  %173 = load i32, i32* @ocs_hw_io_t, align 4
  %174 = load i32, i32* @link, align 4
  %175 = call i32 @ocs_list_init(i32* %172, i32 %173, i32 %174)
  %176 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %176, i32 0, i32 44
  %178 = load i32, i32* @ocs_hw_io_t, align 4
  %179 = load i32, i32* @link, align 4
  %180 = call i32 @ocs_list_init(i32* %177, i32 %178, i32 %179)
  %181 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %181, i32 0, i32 43
  %183 = load i32, i32* @ocs_hw_io_t, align 4
  %184 = load i32, i32* @link, align 4
  %185 = call i32 @ocs_list_init(i32* %182, i32 %183, i32 %184)
  %186 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %186, i32 0, i32 42
  %188 = load i32, i32* @ocs_hw_io_t, align 4
  %189 = load i32, i32* @wqe_link, align 4
  %190 = call i32 @ocs_list_init(i32* %187, i32 %188, i32 %189)
  %191 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %191, i32 0, i32 41
  %193 = load i32, i32* @ocs_hw_io_t, align 4
  %194 = load i32, i32* @dnrx_link, align 4
  %195 = call i32 @ocs_list_init(i32* %192, i32 %193, i32 %194)
  %196 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %196, i32 0, i32 16
  %198 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = icmp eq i32 %199, 1
  br i1 %200, label %201, label %209

201:                                              ; preds = %165
  %202 = load i8*, i8** @FALSE, align 8
  %203 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %203, i32 0, i32 19
  %205 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %207, i32 0, i32 0
  store i8* %202, i8** %208, align 8
  br label %209

209:                                              ; preds = %201, %165
  %210 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %210, i32 0, i32 19
  %212 = call i64 @sli_init(%struct.TYPE_65__* %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %220

214:                                              ; preds = %209
  %215 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %215, i32 0, i32 8
  %217 = load i32, i32* %216, align 8
  %218 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %217, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %219 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %219, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %1348

220:                                              ; preds = %209
  %221 = load i8*, i8** @FALSE, align 8
  %222 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %222, i32 0, i32 40
  store i8* %221, i8** %223, align 8
  %224 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %225 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %224, i32 0, i32 19
  %226 = call i64 @sli_get_auto_xfer_rdy_capable(%struct.TYPE_65__* %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %306

228:                                              ; preds = %220
  %229 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %230 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %229, i32 0, i32 16
  %231 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %230, i32 0, i32 1
  %232 = load i64, i64* %231, align 8
  %233 = icmp sgt i64 %232, 0
  br i1 %233, label %234, label %306

234:                                              ; preds = %228
  %235 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %235, i32 0, i32 16
  %237 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %236, i32 0, i32 9
  %238 = load i64, i64* %237, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %257

240:                                              ; preds = %234
  %241 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %242 = call i64 @ocs_get_property(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* %241, i32 32)
  %243 = icmp eq i64 %242, 0
  br i1 %243, label %244, label %247

244:                                              ; preds = %240
  %245 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %246 = call i32 @ocs_strtoul(i8* %245, i32 0, i32 0)
  store i32 %246, i32* %13, align 4
  br label %247

247:                                              ; preds = %244, %240
  %248 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %249 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %248, i32 0, i32 19
  %250 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %251 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %252 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %251, i32 0, i32 16
  %253 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %252, i32 0, i32 1
  %254 = load i64, i64* %253, align 8
  %255 = load i32, i32* %13, align 4
  %256 = call i32 @sli_cmd_config_auto_xfer_rdy_hp(%struct.TYPE_65__* %249, i8** %28, i32 %250, i64 %254, i32 1, i32 %255)
  store i32 %256, i32* %10, align 4
  br label %266

257:                                              ; preds = %234
  %258 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %259 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %258, i32 0, i32 19
  %260 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %261 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %262 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %261, i32 0, i32 16
  %263 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %262, i32 0, i32 1
  %264 = load i64, i64* %263, align 8
  %265 = call i32 @sli_cmd_config_auto_xfer_rdy(%struct.TYPE_65__* %259, i8** %28, i32 %260, i64 %264)
  store i32 %265, i32* %10, align 4
  br label %266

266:                                              ; preds = %257, %247
  %267 = load i32, i32* %10, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %283

269:                                              ; preds = %266
  %270 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %271 = load i32, i32* @OCS_CMD_POLL, align 4
  %272 = call i32 @ocs_hw_command(%struct.TYPE_61__* %270, i8** %28, i32 %271, i32* null, i32* null)
  store i32 %272, i32* %4, align 4
  %273 = load i32, i32* %4, align 4
  %274 = load i32, i32* @OCS_HW_RTN_SUCCESS, align 4
  %275 = icmp ne i32 %273, %274
  br i1 %275, label %276, label %282

276:                                              ; preds = %269
  %277 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %278 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %277, i32 0, i32 8
  %279 = load i32, i32* %278, align 8
  %280 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %279, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %281 = load i32, i32* %4, align 4
  store i32 %281, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %1348

282:                                              ; preds = %269
  br label %283

283:                                              ; preds = %282, %266
  %284 = load i8*, i8** @TRUE, align 8
  %285 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %286 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %285, i32 0, i32 40
  store i8* %284, i8** %286, align 8
  %287 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %288 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %287, i32 0, i32 16
  %289 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %288, i32 0, i32 8
  %290 = load i64, i64* %289, align 8
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %305

292:                                              ; preds = %283
  %293 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %294 = call i32 @ocs_hw_config_auto_xfer_rdy_t10pi(%struct.TYPE_61__* %293, i8** %28)
  store i32 %294, i32* %4, align 4
  %295 = load i32, i32* %4, align 4
  %296 = load i32, i32* @OCS_HW_RTN_SUCCESS, align 4
  %297 = icmp ne i32 %295, %296
  br i1 %297, label %298, label %304

298:                                              ; preds = %292
  %299 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %300 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %299, i32 0, i32 8
  %301 = load i32, i32* %300, align 8
  %302 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %301, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0))
  %303 = load i32, i32* %4, align 4
  store i32 %303, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %1348

304:                                              ; preds = %292
  br label %305

305:                                              ; preds = %304, %283
  br label %306

306:                                              ; preds = %305, %228, %220
  %307 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %308 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %307, i32 0, i32 39
  %309 = load i64, i64* %308, align 8
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %324

311:                                              ; preds = %306
  %312 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %313 = call i32 @ocs_hw_config_sli_port_health_check(%struct.TYPE_61__* %312, i32 0, i32 1)
  store i32 %313, i32* %4, align 4
  %314 = load i32, i32* %4, align 4
  %315 = load i32, i32* @OCS_HW_RTN_SUCCESS, align 4
  %316 = icmp ne i32 %314, %315
  br i1 %316, label %317, label %323

317:                                              ; preds = %311
  %318 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %319 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %318, i32 0, i32 8
  %320 = load i32, i32* %319, align 8
  %321 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %320, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0))
  %322 = load i32, i32* %4, align 4
  store i32 %322, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %1348

323:                                              ; preds = %311
  br label %324

324:                                              ; preds = %323, %306
  %325 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %326 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %325, i32 0, i32 19
  %327 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %326, i32 0, i32 0
  %328 = load i64, i64* %327, align 8
  %329 = load i64, i64* @SLI4_IF_TYPE_LANCER_FC_ETH, align 8
  %330 = icmp eq i64 %328, %329
  br i1 %330, label %331, label %338

331:                                              ; preds = %324
  %332 = load i64, i64* @OCS_HW_FDT_XFER_HINT, align 8
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %334, label %338

334:                                              ; preds = %331
  %335 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %336 = load i64, i64* @OCS_HW_FDT_XFER_HINT, align 8
  %337 = call i32 @ocs_hw_config_set_fdt_xfer_hint(%struct.TYPE_61__* %335, i64 %336)
  br label %338

338:                                              ; preds = %334, %331, %324
  %339 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %340 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %339, i32 0, i32 19
  %341 = load i32, i32* @SLI_QTYPE_EQ, align 4
  %342 = call i32 @sli_get_max_queue(%struct.TYPE_65__* %340, i32 %341)
  %343 = load i32, i32* @OCS_HW_MAX_NUM_EQ, align 4
  %344 = call i32 @MIN(i32 %342, i32 %343)
  store i32 %344, i32* %14, align 4
  %345 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %346 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %345, i32 0, i32 16
  %347 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %346, i32 0, i32 2
  %348 = load i32, i32* %347, align 8
  %349 = load i32, i32* %14, align 4
  %350 = icmp sgt i32 %348, %349
  br i1 %350, label %351, label %362

351:                                              ; preds = %338
  %352 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %353 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %352, i32 0, i32 8
  %354 = load i32, i32* %353, align 8
  %355 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %356 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %355, i32 0, i32 16
  %357 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %356, i32 0, i32 2
  %358 = load i32, i32* %357, align 8
  %359 = load i32, i32* %14, align 4
  %360 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %354, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i32 %358, i32 %359)
  %361 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %361, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %1348

362:                                              ; preds = %338
  %363 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %364 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %363, i32 0, i32 19
  %365 = load i32, i32* @SLI_QTYPE_CQ, align 4
  %366 = call i32 @sli_get_max_queue(%struct.TYPE_65__* %364, i32 %365)
  %367 = load i32, i32* @OCS_HW_MAX_NUM_CQ, align 4
  %368 = call i32 @MIN(i32 %366, i32 %367)
  store i32 %368, i32* %14, align 4
  %369 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %370 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %369, i32 0, i32 16
  %371 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %370, i32 0, i32 3
  %372 = load i32, i32* %371, align 4
  %373 = load i32, i32* %14, align 4
  %374 = icmp sgt i32 %372, %373
  br i1 %374, label %375, label %386

375:                                              ; preds = %362
  %376 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %377 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %376, i32 0, i32 8
  %378 = load i32, i32* %377, align 8
  %379 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %380 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %379, i32 0, i32 16
  %381 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %380, i32 0, i32 3
  %382 = load i32, i32* %381, align 4
  %383 = load i32, i32* %14, align 4
  %384 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %378, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i32 %382, i32 %383)
  %385 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %385, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %1348

386:                                              ; preds = %362
  %387 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %388 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %387, i32 0, i32 19
  %389 = load i32, i32* @SLI_QTYPE_MQ, align 4
  %390 = call i32 @sli_get_max_queue(%struct.TYPE_65__* %388, i32 %389)
  %391 = load i32, i32* @OCS_HW_MAX_NUM_MQ, align 4
  %392 = call i32 @MIN(i32 %390, i32 %391)
  store i32 %392, i32* %14, align 4
  %393 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %394 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %393, i32 0, i32 16
  %395 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %394, i32 0, i32 4
  %396 = load i32, i32* %395, align 8
  %397 = load i32, i32* %14, align 4
  %398 = icmp sgt i32 %396, %397
  br i1 %398, label %399, label %410

399:                                              ; preds = %386
  %400 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %401 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %400, i32 0, i32 8
  %402 = load i32, i32* %401, align 8
  %403 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %404 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %403, i32 0, i32 16
  %405 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %404, i32 0, i32 4
  %406 = load i32, i32* %405, align 8
  %407 = load i32, i32* %14, align 4
  %408 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %402, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0), i32 %406, i32 %407)
  %409 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %409, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %1348

410:                                              ; preds = %386
  %411 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %412 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %411, i32 0, i32 19
  %413 = load i32, i32* @SLI_QTYPE_RQ, align 4
  %414 = call i32 @sli_get_max_queue(%struct.TYPE_65__* %412, i32 %413)
  %415 = load i32, i32* @OCS_HW_MAX_NUM_RQ, align 4
  %416 = call i32 @MIN(i32 %414, i32 %415)
  store i32 %416, i32* %14, align 4
  %417 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %418 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %417, i32 0, i32 16
  %419 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %418, i32 0, i32 0
  %420 = load i32, i32* %419, align 8
  %421 = load i32, i32* %14, align 4
  %422 = icmp sgt i32 %420, %421
  br i1 %422, label %423, label %434

423:                                              ; preds = %410
  %424 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %425 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %424, i32 0, i32 8
  %426 = load i32, i32* %425, align 8
  %427 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %428 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %427, i32 0, i32 16
  %429 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %428, i32 0, i32 0
  %430 = load i32, i32* %429, align 8
  %431 = load i32, i32* %14, align 4
  %432 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %426, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0), i32 %430, i32 %431)
  %433 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %433, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %1348

434:                                              ; preds = %410
  %435 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %436 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %435, i32 0, i32 19
  %437 = load i32, i32* @SLI_QTYPE_WQ, align 4
  %438 = call i32 @sli_get_max_queue(%struct.TYPE_65__* %436, i32 %437)
  %439 = load i32, i32* @OCS_HW_MAX_NUM_WQ, align 4
  %440 = call i32 @MIN(i32 %438, i32 %439)
  store i32 %440, i32* %14, align 4
  %441 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %442 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %441, i32 0, i32 16
  %443 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %442, i32 0, i32 5
  %444 = load i32, i32* %443, align 4
  %445 = load i32, i32* %14, align 4
  %446 = icmp sgt i32 %444, %445
  br i1 %446, label %447, label %458

447:                                              ; preds = %434
  %448 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %449 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %448, i32 0, i32 8
  %450 = load i32, i32* %449, align 8
  %451 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %452 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %451, i32 0, i32 16
  %453 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %452, i32 0, i32 5
  %454 = load i32, i32* %453, align 4
  %455 = load i32, i32* %14, align 4
  %456 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %450, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0), i32 %454, i32 %455)
  %457 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %457, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %1348

458:                                              ; preds = %434
  %459 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %460 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %459, i32 0, i32 20
  %461 = load i32, i32* %460, align 8
  %462 = call i32 @ocs_memset(i32 %461, i32 0, i32 4)
  %463 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %464 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %463, i32 0, i32 8
  %465 = load i32, i32* %464, align 8
  %466 = load i32, i32* @OCS_HW_MAX_NUM_CQ, align 4
  %467 = load i32, i32* @OCS_HW_Q_HASH_SIZE, align 4
  %468 = call i32 (i32, i8*, ...) @ocs_log_debug(i32 %465, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0), i32 %466, i32 %467)
  %469 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %470 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %469, i32 0, i32 24
  %471 = load i32, i32* %470, align 8
  %472 = call i32 @ocs_memset(i32 %471, i32 0, i32 4)
  %473 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %474 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %473, i32 0, i32 8
  %475 = load i32, i32* %474, align 8
  %476 = load i32, i32* @OCS_HW_MAX_NUM_RQ, align 4
  %477 = load i32, i32* @OCS_HW_Q_HASH_SIZE, align 4
  %478 = call i32 (i32, i8*, ...) @ocs_log_debug(i32 %475, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0), i32 %476, i32 %477)
  %479 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %480 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %479, i32 0, i32 22
  %481 = load i32, i32* %480, align 8
  %482 = call i32 @ocs_memset(i32 %481, i32 0, i32 4)
  %483 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %484 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %483, i32 0, i32 8
  %485 = load i32, i32* %484, align 8
  %486 = load i32, i32* @OCS_HW_MAX_NUM_WQ, align 4
  %487 = load i32, i32* @OCS_HW_Q_HASH_SIZE, align 4
  %488 = call i32 (i32, i8*, ...) @ocs_log_debug(i32 %485, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0), i32 %486, i32 %487)
  %489 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %490 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %491 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %490, i32 0, i32 38
  %492 = load i32, i32* %491, align 8
  %493 = call i32 @ocs_hw_init_queues(%struct.TYPE_61__* %489, i32 %492)
  store i32 %493, i32* %4, align 4
  %494 = load i32, i32* %4, align 4
  %495 = load i32, i32* @OCS_HW_RTN_SUCCESS, align 4
  %496 = icmp ne i32 %494, %495
  br i1 %496, label %497, label %499

497:                                              ; preds = %458
  %498 = load i32, i32* %4, align 4
  store i32 %498, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %1348

499:                                              ; preds = %458
  %500 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %501 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %500, i32 0, i32 19
  %502 = load i32, i32* @SLI_RSRC_FCOE_RPI, align 4
  %503 = call i32 @sli_get_max_rsrc(%struct.TYPE_65__* %501, i32 %502)
  store i32 %503, i32* %8, align 4
  %504 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %505 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %504, i32 0, i32 19
  %506 = load i32, i32* %8, align 4
  %507 = call i32 @sli_fc_get_rpi_requirements(%struct.TYPE_65__* %505, i32 %506)
  store i32 %507, i32* %5, align 4
  %508 = load i32, i32* %5, align 4
  %509 = icmp ne i32 %508, 0
  br i1 %509, label %510, label %573

510:                                              ; preds = %499
  %511 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %511, i32* %4, align 4
  %512 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %513 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %512, i32 0, i32 37
  %514 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %513, i32 0, i32 0
  %515 = load i64, i64* %514, align 8
  %516 = icmp ne i64 %515, 0
  br i1 %516, label %517, label %524

517:                                              ; preds = %510
  %518 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %519 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %518, i32 0, i32 8
  %520 = load i32, i32* %519, align 8
  %521 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %522 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %521, i32 0, i32 37
  %523 = call i32 @ocs_dma_free(i32 %520, %struct.TYPE_62__* %522)
  br label %524

524:                                              ; preds = %517, %510
  %525 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %526 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %525, i32 0, i32 8
  %527 = load i32, i32* %526, align 8
  %528 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %529 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %528, i32 0, i32 37
  %530 = load i32, i32* %5, align 4
  %531 = call i64 @ocs_dma_alloc(i32 %527, %struct.TYPE_62__* %529, i32 %530, i32 4096)
  %532 = icmp ne i64 %531, 0
  br i1 %532, label %533, label %539

533:                                              ; preds = %524
  %534 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %535 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %534, i32 0, i32 8
  %536 = load i32, i32* %535, align 8
  %537 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %536, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.18, i64 0, i64 0))
  %538 = load i32, i32* @OCS_HW_RTN_NO_MEMORY, align 4
  store i32 %538, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %1348

539:                                              ; preds = %524
  %540 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %16, i32 0, i32 0
  store i64 0, i64* %540, align 8
  %541 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %542 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %541, i32 0, i32 19
  %543 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %544 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %545 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %544, i32 0, i32 37
  %546 = load i32, i32* @UINT16_MAX, align 4
  %547 = call i64 @sli_cmd_fcoe_post_hdr_templates(%struct.TYPE_65__* %542, i8** %28, i32 %543, %struct.TYPE_62__* %545, i32 %546, %struct.TYPE_62__* %16)
  %548 = icmp ne i64 %547, 0
  br i1 %548, label %549, label %562

549:                                              ; preds = %539
  %550 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %551 = load i32, i32* @OCS_CMD_POLL, align 4
  %552 = call i32 @ocs_hw_command(%struct.TYPE_61__* %550, i8** %28, i32 %551, i32* null, i32* null)
  store i32 %552, i32* %4, align 4
  %553 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %16, i32 0, i32 0
  %554 = load i64, i64* %553, align 8
  %555 = icmp ne i64 %554, 0
  br i1 %555, label %556, label %561

556:                                              ; preds = %549
  %557 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %558 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %557, i32 0, i32 8
  %559 = load i32, i32* %558, align 8
  %560 = call i32 @ocs_dma_free(i32 %559, %struct.TYPE_62__* %16)
  br label %561

561:                                              ; preds = %556, %549
  br label %562

562:                                              ; preds = %561, %539
  %563 = load i32, i32* %4, align 4
  %564 = load i32, i32* @OCS_HW_RTN_SUCCESS, align 4
  %565 = icmp ne i32 %563, %564
  br i1 %565, label %566, label %572

566:                                              ; preds = %562
  %567 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %568 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %567, i32 0, i32 8
  %569 = load i32, i32* %568, align 8
  %570 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %569, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.19, i64 0, i64 0))
  %571 = load i32, i32* %4, align 4
  store i32 %571, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %1348

572:                                              ; preds = %562
  br label %573

573:                                              ; preds = %572, %499
  %574 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %575 = call i32 @ocs_hw_rx_allocate(%struct.TYPE_61__* %574)
  store i32 %575, i32* %4, align 4
  %576 = load i32, i32* %4, align 4
  %577 = icmp ne i32 %576, 0
  br i1 %577, label %578, label %584

578:                                              ; preds = %573
  %579 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %580 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %579, i32 0, i32 8
  %581 = load i32, i32* %580, align 8
  %582 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %581, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0))
  %583 = load i32, i32* %4, align 4
  store i32 %583, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %1348

584:                                              ; preds = %573
  %585 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %586 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %585, i32 0, i32 36
  %587 = load i32*, i32** %586, align 8
  %588 = icmp eq i32* %587, null
  br i1 %588, label %589, label %632

589:                                              ; preds = %584
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %590

590:                                              ; preds = %610, %589
  %591 = load i32, i32* %18, align 4
  %592 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %593 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %592, i32 0, i32 0
  %594 = load i32, i32* %593, align 8
  %595 = icmp slt i32 %591, %594
  br i1 %595, label %596, label %613

596:                                              ; preds = %590
  %597 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %598 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %597, i32 0, i32 30
  %599 = load %struct.TYPE_64__**, %struct.TYPE_64__*** %598, align 8
  %600 = load i32, i32* %18, align 4
  %601 = sext i32 %600 to i64
  %602 = getelementptr inbounds %struct.TYPE_64__*, %struct.TYPE_64__** %599, i64 %601
  %603 = load %struct.TYPE_64__*, %struct.TYPE_64__** %602, align 8
  %604 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %603, i32 0, i32 2
  %605 = load i64, i64* %604, align 8
  %606 = load i32, i32* %17, align 4
  %607 = sext i32 %606 to i64
  %608 = add nsw i64 %607, %605
  %609 = trunc i64 %608 to i32
  store i32 %609, i32* %17, align 4
  br label %610

610:                                              ; preds = %596
  %611 = load i32, i32* %18, align 4
  %612 = add nsw i32 %611, 1
  store i32 %612, i32* %18, align 4
  br label %590

613:                                              ; preds = %590
  %614 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %615 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %614, i32 0, i32 8
  %616 = load i32, i32* %615, align 8
  %617 = load i32, i32* %17, align 4
  %618 = call i32* @ocs_array_alloc(i32 %616, i32 4, i32 %617)
  %619 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %620 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %619, i32 0, i32 36
  store i32* %618, i32** %620, align 8
  %621 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %622 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %621, i32 0, i32 36
  %623 = load i32*, i32** %622, align 8
  %624 = icmp eq i32* %623, null
  br i1 %624, label %625, label %631

625:                                              ; preds = %613
  %626 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %627 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %626, i32 0, i32 8
  %628 = load i32, i32* %627, align 8
  %629 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %628, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i64 0, i64 0))
  %630 = load i32, i32* @OCS_HW_RTN_NO_MEMORY, align 4
  store i32 %630, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %1348

631:                                              ; preds = %613
  br label %632

632:                                              ; preds = %631, %584
  %633 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %634 = call i64 @ocs_hw_rx_post(%struct.TYPE_61__* %633)
  %635 = icmp ne i64 %634, 0
  br i1 %635, label %636, label %641

636:                                              ; preds = %632
  %637 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %638 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %637, i32 0, i32 8
  %639 = load i32, i32* %638, align 8
  %640 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %639, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.22, i64 0, i64 0))
  br label %641

641:                                              ; preds = %636, %632
  %642 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %643 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %642, i32 0, i32 35
  %644 = load %struct.TYPE_69__*, %struct.TYPE_69__** %643, align 8
  %645 = icmp eq %struct.TYPE_69__* %644, null
  br i1 %645, label %646, label %672

646:                                              ; preds = %641
  %647 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %648 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %647, i32 0, i32 8
  %649 = load i32, i32* %648, align 8
  %650 = load i32, i32* %8, align 4
  %651 = sext i32 %650 to i64
  %652 = mul i64 %651, 8
  %653 = trunc i64 %652 to i32
  %654 = load i32, i32* @OCS_M_ZERO, align 4
  %655 = load i32, i32* @OCS_M_NOWAIT, align 4
  %656 = or i32 %654, %655
  %657 = call %struct.TYPE_69__* @ocs_malloc(i32 %649, i32 %653, i32 %656)
  %658 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %659 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %658, i32 0, i32 35
  store %struct.TYPE_69__* %657, %struct.TYPE_69__** %659, align 8
  %660 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %661 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %660, i32 0, i32 35
  %662 = load %struct.TYPE_69__*, %struct.TYPE_69__** %661, align 8
  %663 = icmp eq %struct.TYPE_69__* %662, null
  br i1 %663, label %664, label %671

664:                                              ; preds = %646
  %665 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %666 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %665, i32 0, i32 8
  %667 = load i32, i32* %666, align 8
  %668 = load i32, i32* %5, align 4
  %669 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %667, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.23, i64 0, i64 0), i32 %668)
  %670 = load i32, i32* @OCS_HW_RTN_NO_MEMORY, align 4
  store i32 %670, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %1348

671:                                              ; preds = %646
  br label %672

672:                                              ; preds = %671, %641
  store i32 0, i32* %5, align 4
  br label %673

673:                                              ; preds = %694, %672
  %674 = load i32, i32* %5, align 4
  %675 = load i32, i32* %8, align 4
  %676 = icmp slt i32 %674, %675
  br i1 %676, label %677, label %697

677:                                              ; preds = %673
  %678 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %679 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %678, i32 0, i32 35
  %680 = load %struct.TYPE_69__*, %struct.TYPE_69__** %679, align 8
  %681 = load i32, i32* %5, align 4
  %682 = sext i32 %681 to i64
  %683 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %680, i64 %682
  %684 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %683, i32 0, i32 1
  %685 = call i32 @ocs_atomic_init(i32* %684, i32 0)
  %686 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %687 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %686, i32 0, i32 35
  %688 = load %struct.TYPE_69__*, %struct.TYPE_69__** %687, align 8
  %689 = load i32, i32* %5, align 4
  %690 = sext i32 %689 to i64
  %691 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %688, i64 %690
  %692 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %691, i32 0, i32 0
  %693 = call i32 @ocs_atomic_init(i32* %692, i32 0)
  br label %694

694:                                              ; preds = %677
  %695 = load i32, i32* %5, align 4
  %696 = add nsw i32 %695, 1
  store i32 %696, i32* %5, align 4
  br label %673

697:                                              ; preds = %673
  %698 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %699 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %698, i32 0, i32 34
  %700 = load i32, i32* %699, align 8
  %701 = call i32 @ocs_memset(i32 %700, i32 0, i32 4)
  %702 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %703 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %702, i32 0, i32 33
  %704 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %703, i32 0, i32 0
  %705 = load i64, i64* %704, align 8
  %706 = icmp ne i64 %705, 0
  br i1 %706, label %707, label %710

707:                                              ; preds = %697
  %708 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %709 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %708, i32 0, i32 1
  store i32 -1, i32* %709, align 4
  br label %710

710:                                              ; preds = %707, %697
  %711 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %712 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %711, i32 0, i32 32
  %713 = load i32, i32* %712, align 8
  %714 = call i32 @ocs_memset(i32 %713, i32 0, i32 4)
  %715 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %716 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %715, i32 0, i32 19
  %717 = call i64 @sli_get_medium(%struct.TYPE_65__* %716)
  %718 = load i64, i64* @SLI_LINK_MEDIUM_FC, align 8
  %719 = icmp eq i64 %717, %718
  br i1 %719, label %720, label %944

720:                                              ; preds = %710
  %721 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %722 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %721, i32 0, i32 31
  %723 = load i64, i64* %722, align 8
  %724 = icmp ne i64 %723, 0
  br i1 %724, label %725, label %756

725:                                              ; preds = %720
  %726 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %727 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %726, i32 0, i32 8
  %728 = load i32, i32* %727, align 8
  %729 = call i32 (i32, i8*, ...) @ocs_log_debug(i32 %728, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i64 0, i64 0))
  %730 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %731 = load i32, i32* @SLI4_CMD_REG_FCFI_SET_FCFI_MODE, align 4
  %732 = call i32 @ocs_hw_config_mrq(%struct.TYPE_61__* %730, i32 %731, i32 0, i32 0)
  store i32 %732, i32* %4, align 4
  %733 = load i32, i32* %4, align 4
  %734 = load i32, i32* @OCS_HW_RTN_SUCCESS, align 4
  %735 = icmp ne i32 %733, %734
  br i1 %735, label %736, label %742

736:                                              ; preds = %725
  %737 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %738 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %737, i32 0, i32 8
  %739 = load i32, i32* %738, align 8
  %740 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %739, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.25, i64 0, i64 0))
  %741 = load i32, i32* %4, align 4
  store i32 %741, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %1348

742:                                              ; preds = %725
  %743 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %744 = load i32, i32* @SLI4_CMD_REG_FCFI_SET_MRQ_MODE, align 4
  %745 = call i32 @ocs_hw_config_mrq(%struct.TYPE_61__* %743, i32 %744, i32 0, i32 0)
  store i32 %745, i32* %4, align 4
  %746 = load i32, i32* %4, align 4
  %747 = load i32, i32* @OCS_HW_RTN_SUCCESS, align 4
  %748 = icmp ne i32 %746, %747
  br i1 %748, label %749, label %755

749:                                              ; preds = %742
  %750 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %751 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %750, i32 0, i32 8
  %752 = load i32, i32* %751, align 8
  %753 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %752, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.26, i64 0, i64 0))
  %754 = load i32, i32* %4, align 4
  store i32 %754, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %1348

755:                                              ; preds = %742
  br label %943

756:                                              ; preds = %720
  %757 = load i32, i32* @SLI4_CMD_REG_FCFI_NUM_RQ_CFG, align 4
  %758 = zext i32 %757 to i64
  %759 = call i8* @llvm.stacksave()
  store i8* %759, i8** %19, align 8
  %760 = alloca %struct.TYPE_59__, i64 %758, align 16
  store i64 %758, i64* %20, align 8
  %761 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %762 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %761, i32 0, i32 8
  %763 = load i32, i32* %762, align 8
  %764 = call i32 (i32, i8*, ...) @ocs_log_debug(i32 %763, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.27, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %765

765:                                              ; preds = %833, %756
  %766 = load i32, i32* %5, align 4
  %767 = load i32, i32* @SLI4_CMD_REG_FCFI_NUM_RQ_CFG, align 4
  %768 = icmp slt i32 %766, %767
  br i1 %768, label %769, label %836

769:                                              ; preds = %765
  %770 = load i32, i32* %5, align 4
  %771 = sext i32 %770 to i64
  %772 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %760, i64 %771
  %773 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %772, i32 0, i32 0
  store i32 65535, i32* %773, align 8
  %774 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %775 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %774, i32 0, i32 16
  %776 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %775, i32 0, i32 6
  %777 = load i32*, i32** %776, align 8
  %778 = load i32, i32* %5, align 4
  %779 = sext i32 %778 to i64
  %780 = getelementptr inbounds i32, i32* %777, i64 %779
  %781 = load i32, i32* %780, align 4
  %782 = sext i32 %781 to i64
  %783 = inttoptr i64 %782 to i8*
  %784 = load i32, i32* %5, align 4
  %785 = sext i32 %784 to i64
  %786 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %760, i64 %785
  %787 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %786, i32 0, i32 4
  store i8* %783, i8** %787, align 8
  %788 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %789 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %788, i32 0, i32 16
  %790 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %789, i32 0, i32 6
  %791 = load i32*, i32** %790, align 8
  %792 = load i32, i32* %5, align 4
  %793 = sext i32 %792 to i64
  %794 = getelementptr inbounds i32, i32* %791, i64 %793
  %795 = load i32, i32* %794, align 4
  %796 = ashr i32 %795, 8
  %797 = sext i32 %796 to i64
  %798 = inttoptr i64 %797 to i8*
  %799 = load i32, i32* %5, align 4
  %800 = sext i32 %799 to i64
  %801 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %760, i64 %800
  %802 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %801, i32 0, i32 3
  store i8* %798, i8** %802, align 8
  %803 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %804 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %803, i32 0, i32 16
  %805 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %804, i32 0, i32 6
  %806 = load i32*, i32** %805, align 8
  %807 = load i32, i32* %5, align 4
  %808 = sext i32 %807 to i64
  %809 = getelementptr inbounds i32, i32* %806, i64 %808
  %810 = load i32, i32* %809, align 4
  %811 = ashr i32 %810, 16
  %812 = sext i32 %811 to i64
  %813 = inttoptr i64 %812 to i8*
  %814 = load i32, i32* %5, align 4
  %815 = sext i32 %814 to i64
  %816 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %760, i64 %815
  %817 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %816, i32 0, i32 2
  store i8* %813, i8** %817, align 8
  %818 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %819 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %818, i32 0, i32 16
  %820 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %819, i32 0, i32 6
  %821 = load i32*, i32** %820, align 8
  %822 = load i32, i32* %5, align 4
  %823 = sext i32 %822 to i64
  %824 = getelementptr inbounds i32, i32* %821, i64 %823
  %825 = load i32, i32* %824, align 4
  %826 = ashr i32 %825, 24
  %827 = sext i32 %826 to i64
  %828 = inttoptr i64 %827 to i8*
  %829 = load i32, i32* %5, align 4
  %830 = sext i32 %829 to i64
  %831 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %760, i64 %830
  %832 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %831, i32 0, i32 1
  store i8* %828, i8** %832, align 8
  br label %833

833:                                              ; preds = %769
  %834 = load i32, i32* %5, align 4
  %835 = add nsw i32 %834, 1
  store i32 %835, i32* %5, align 4
  br label %765

836:                                              ; preds = %765
  store i32 0, i32* %5, align 4
  br label %837

837:                                              ; preds = %909, %836
  %838 = load i32, i32* %5, align 4
  %839 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %840 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %839, i32 0, i32 0
  %841 = load i32, i32* %840, align 8
  %842 = load i32, i32* @SLI4_CMD_REG_FCFI_NUM_RQ_CFG, align 4
  %843 = call i32 @OCS_MIN(i32 %841, i32 %842)
  %844 = icmp slt i32 %838, %843
  br i1 %844, label %845, label %912

845:                                              ; preds = %837
  %846 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %847 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %846, i32 0, i32 30
  %848 = load %struct.TYPE_64__**, %struct.TYPE_64__*** %847, align 8
  %849 = load i32, i32* %5, align 4
  %850 = sext i32 %849 to i64
  %851 = getelementptr inbounds %struct.TYPE_64__*, %struct.TYPE_64__** %848, i64 %850
  %852 = load %struct.TYPE_64__*, %struct.TYPE_64__** %851, align 8
  store %struct.TYPE_64__* %852, %struct.TYPE_64__** %21, align 8
  store i32 0, i32* %22, align 4
  br label %853

853:                                              ; preds = %905, %845
  %854 = load i32, i32* %22, align 4
  %855 = load i32, i32* @SLI4_CMD_REG_FCFI_NUM_RQ_CFG, align 4
  %856 = icmp slt i32 %854, %855
  br i1 %856, label %857, label %908

857:                                              ; preds = %853
  %858 = load %struct.TYPE_64__*, %struct.TYPE_64__** %21, align 8
  %859 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %858, i32 0, i32 0
  %860 = load i64, i64* %859, align 8
  %861 = icmp ne i64 %860, 0
  br i1 %861, label %862, label %866

862:                                              ; preds = %857
  %863 = load %struct.TYPE_64__*, %struct.TYPE_64__** %21, align 8
  %864 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %863, i32 0, i32 0
  %865 = load i64, i64* %864, align 8
  br label %867

866:                                              ; preds = %857
  br label %867

867:                                              ; preds = %866, %862
  %868 = phi i64 [ %865, %862 ], [ 1, %866 ]
  %869 = trunc i64 %868 to i32
  store i32 %869, i32* %23, align 4
  %870 = load i32, i32* %23, align 4
  %871 = load i32, i32* %22, align 4
  %872 = shl i32 1, %871
  %873 = and i32 %870, %872
  %874 = icmp ne i32 %873, 0
  br i1 %874, label %875, label %904

875:                                              ; preds = %867
  %876 = load %struct.TYPE_64__*, %struct.TYPE_64__** %21, align 8
  %877 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %876, i32 0, i32 1
  %878 = load %struct.TYPE_72__*, %struct.TYPE_72__** %877, align 8
  %879 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %878, i32 0, i32 0
  %880 = load i32, i32* %879, align 4
  %881 = load i32, i32* %22, align 4
  %882 = sext i32 %881 to i64
  %883 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %760, i64 %882
  %884 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %883, i32 0, i32 0
  store i32 %880, i32* %884, align 8
  %885 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %886 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %885, i32 0, i32 8
  %887 = load i32, i32* %886, align 8
  %888 = load i32, i32* %22, align 4
  %889 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %890 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %889, i32 0, i32 16
  %891 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %890, i32 0, i32 6
  %892 = load i32*, i32** %891, align 8
  %893 = load i32, i32* %22, align 4
  %894 = sext i32 %893 to i64
  %895 = getelementptr inbounds i32, i32* %892, i64 %894
  %896 = load i32, i32* %895, align 4
  %897 = load i32, i32* %5, align 4
  %898 = load %struct.TYPE_64__*, %struct.TYPE_64__** %21, align 8
  %899 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %898, i32 0, i32 1
  %900 = load %struct.TYPE_72__*, %struct.TYPE_72__** %899, align 8
  %901 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %900, i32 0, i32 0
  %902 = load i32, i32* %901, align 4
  %903 = call i32 (i32, i8*, ...) @ocs_log_debug(i32 %887, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.28, i64 0, i64 0), i32 %888, i32 %896, i32 %897, i32 %902)
  br label %904

904:                                              ; preds = %875, %867
  br label %905

905:                                              ; preds = %904
  %906 = load i32, i32* %22, align 4
  %907 = add nsw i32 %906, 1
  store i32 %907, i32* %22, align 4
  br label %853

908:                                              ; preds = %853
  br label %909

909:                                              ; preds = %908
  %910 = load i32, i32* %5, align 4
  %911 = add nsw i32 %910, 1
  store i32 %911, i32* %5, align 4
  br label %837

912:                                              ; preds = %837
  %913 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %913, i32* %4, align 4
  %914 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %915 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %914, i32 0, i32 19
  %916 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %917 = call i64 @sli_cmd_reg_fcfi(%struct.TYPE_65__* %915, i8** %28, i32 %916, i32 0, %struct.TYPE_59__* %760, i32 0)
  %918 = icmp ne i64 %917, 0
  br i1 %918, label %919, label %923

919:                                              ; preds = %912
  %920 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %921 = load i32, i32* @OCS_CMD_POLL, align 4
  %922 = call i32 @ocs_hw_command(%struct.TYPE_61__* %920, i8** %28, i32 %921, i32* null, i32* null)
  store i32 %922, i32* %4, align 4
  br label %923

923:                                              ; preds = %919, %912
  %924 = load i32, i32* %4, align 4
  %925 = load i32, i32* @OCS_HW_RTN_SUCCESS, align 4
  %926 = icmp ne i32 %924, %925
  br i1 %926, label %927, label %933

927:                                              ; preds = %923
  %928 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %929 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %928, i32 0, i32 8
  %930 = load i32, i32* %929, align 8
  %931 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %930, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.29, i64 0, i64 0))
  %932 = load i32, i32* %4, align 4
  store i32 %932, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %939

933:                                              ; preds = %923
  %934 = bitcast i8** %28 to %struct.TYPE_60__*
  %935 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %934, i32 0, i32 0
  %936 = load i32, i32* %935, align 16
  %937 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %938 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %937, i32 0, i32 29
  store i32 %936, i32* %938, align 4
  store i32 0, i32* %15, align 4
  br label %939

939:                                              ; preds = %933, %927
  %940 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %940)
  %941 = load i32, i32* %15, align 4
  switch i32 %941, label %1348 [
    i32 0, label %942
  ]

942:                                              ; preds = %939
  br label %943

943:                                              ; preds = %942, %755
  br label %944

944:                                              ; preds = %943, %710
  %945 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %946 = call i32 @ocs_hw_reqtag_init(%struct.TYPE_61__* %945)
  store i32 %946, i32* %4, align 4
  %947 = load i32, i32* %4, align 4
  %948 = icmp ne i32 %947, 0
  br i1 %948, label %949, label %956

949:                                              ; preds = %944
  %950 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %951 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %950, i32 0, i32 8
  %952 = load i32, i32* %951, align 8
  %953 = load i32, i32* %4, align 4
  %954 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %952, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.30, i64 0, i64 0), i32 %953)
  %955 = load i32, i32* %4, align 4
  store i32 %955, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %1348

956:                                              ; preds = %944
  %957 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %958 = call i32 @ocs_hw_setup_io(%struct.TYPE_61__* %957)
  store i32 %958, i32* %4, align 4
  %959 = load i32, i32* %4, align 4
  %960 = icmp ne i32 %959, 0
  br i1 %960, label %961, label %967

961:                                              ; preds = %956
  %962 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %963 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %962, i32 0, i32 8
  %964 = load i32, i32* %963, align 8
  %965 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %964, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.31, i64 0, i64 0))
  %966 = load i32, i32* %4, align 4
  store i32 %966, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %1348

967:                                              ; preds = %956
  %968 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %969 = call i32 @ocs_hw_init_io(%struct.TYPE_61__* %968)
  store i32 %969, i32* %4, align 4
  %970 = load i32, i32* %4, align 4
  %971 = icmp ne i32 %970, 0
  br i1 %971, label %972, label %978

972:                                              ; preds = %967
  %973 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %974 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %973, i32 0, i32 8
  %975 = load i32, i32* %974, align 8
  %976 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %975, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i64 0, i64 0))
  %977 = load i32, i32* %4, align 4
  store i32 %977, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %1348

978:                                              ; preds = %967
  %979 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %980 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %979, i32 0, i32 8
  %981 = load i32, i32* %980, align 8
  %982 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %983 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %982, i32 0, i32 28
  %984 = call i32 @ocs_queue_history_init(i32 %981, i32* %983)
  %985 = load i32, i32* @OCS_HW_LINKCFG_NA, align 4
  %986 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %987 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %986, i32 0, i32 27
  store i32 %985, i32* %987, align 4
  %988 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %989 = load i32, i32* @OCS_CMD_POLL, align 4
  %990 = load i32, i32* @ocs_hw_init_linkcfg_cb, align 4
  %991 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %992 = call i32 @ocs_hw_get_linkcfg(%struct.TYPE_61__* %988, i32 %989, i32 %990, %struct.TYPE_61__* %991)
  %993 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %994 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %993, i32 0, i32 19
  %995 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %994, i32 0, i32 0
  %996 = load i64, i64* %995, align 8
  %997 = load i64, i64* @SLI4_IF_TYPE_LANCER_FC_ETH, align 8
  %998 = icmp eq i64 %996, %997
  br i1 %998, label %999, label %1018

999:                                              ; preds = %978
  %1000 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1001 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1000, i32 0, i32 19
  %1002 = call i64 @sli_get_medium(%struct.TYPE_65__* %1001)
  %1003 = load i64, i64* @SLI_LINK_MEDIUM_ETHERNET, align 8
  %1004 = icmp eq i64 %1002, %1003
  br i1 %1004, label %1005, label %1018

1005:                                             ; preds = %999
  %1006 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1007 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1008 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1007, i32 0, i32 26
  %1009 = load i32, i32* %1008, align 8
  %1010 = call i64 @ocs_hw_set_eth_license(%struct.TYPE_61__* %1006, i32 %1009)
  %1011 = icmp ne i64 %1010, 0
  br i1 %1011, label %1012, label %1017

1012:                                             ; preds = %1005
  %1013 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1014 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1013, i32 0, i32 8
  %1015 = load i32, i32* %1014, align 8
  %1016 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %1015, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.33, i64 0, i64 0))
  br label %1017

1017:                                             ; preds = %1012, %1005
  br label %1018

1018:                                             ; preds = %1017, %999, %978
  %1019 = load i64, i64* @SLI4_IF_TYPE_LANCER_FC_ETH, align 8
  %1020 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1021 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1020, i32 0, i32 19
  %1022 = call i64 @sli_get_if_type(%struct.TYPE_65__* %1021)
  %1023 = icmp eq i64 %1019, %1022
  br i1 %1023, label %1024, label %1035

1024:                                             ; preds = %1018
  %1025 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1026 = call i32 @ocs_hw_set_dif_seed(%struct.TYPE_61__* %1025)
  %1027 = load i32, i32* @OCS_HW_RTN_SUCCESS, align 4
  %1028 = icmp ne i32 %1026, %1027
  br i1 %1028, label %1029, label %1035

1029:                                             ; preds = %1024
  %1030 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1031 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1030, i32 0, i32 8
  %1032 = load i32, i32* %1031, align 8
  %1033 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %1032, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.34, i64 0, i64 0))
  %1034 = load i32, i32* %4, align 4
  store i32 %1034, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %1348

1035:                                             ; preds = %1024, %1018
  %1036 = load i64, i64* @SLI4_IF_TYPE_BE3_SKH_PF, align 8
  %1037 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1038 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1037, i32 0, i32 19
  %1039 = call i64 @sli_get_if_type(%struct.TYPE_65__* %1038)
  %1040 = icmp eq i64 %1036, %1039
  br i1 %1040, label %1041, label %1059

1041:                                             ; preds = %1035
  %1042 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1043 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1042, i32 0, i32 19
  %1044 = call i64 @sli_get_dif_capable(%struct.TYPE_65__* %1043)
  %1045 = icmp ne i64 %1044, 0
  br i1 %1045, label %1046, label %1059

1046:                                             ; preds = %1041
  %1047 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1048 = call i32 @ocs_hw_set_dif_mode(%struct.TYPE_61__* %1047)
  store i32 %1048, i32* %4, align 4
  %1049 = load i32, i32* %4, align 4
  %1050 = load i32, i32* @OCS_HW_RTN_SUCCESS, align 4
  %1051 = icmp ne i32 %1049, %1050
  br i1 %1051, label %1052, label %1058

1052:                                             ; preds = %1046
  %1053 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1054 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1053, i32 0, i32 8
  %1055 = load i32, i32* %1054, align 8
  %1056 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %1055, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.35, i64 0, i64 0))
  %1057 = load i32, i32* %4, align 4
  store i32 %1057, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %1348

1058:                                             ; preds = %1046
  br label %1059

1059:                                             ; preds = %1058, %1041, %1035
  store i32 0, i32* %5, align 4
  br label %1060

1060:                                             ; preds = %1077, %1059
  %1061 = load i32, i32* %5, align 4
  %1062 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1063 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1062, i32 0, i32 2
  %1064 = load i32, i32* %1063, align 8
  %1065 = icmp slt i32 %1061, %1064
  br i1 %1065, label %1066, label %1080

1066:                                             ; preds = %1060
  %1067 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1068 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1067, i32 0, i32 19
  %1069 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1070 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1069, i32 0, i32 25
  %1071 = load %struct.TYPE_66__*, %struct.TYPE_66__** %1070, align 8
  %1072 = load i32, i32* %5, align 4
  %1073 = sext i32 %1072 to i64
  %1074 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %1071, i64 %1073
  %1075 = load i8*, i8** @TRUE, align 8
  %1076 = call i32 @sli_queue_arm(%struct.TYPE_65__* %1068, %struct.TYPE_66__* %1074, i8* %1075)
  br label %1077

1077:                                             ; preds = %1066
  %1078 = load i32, i32* %5, align 4
  %1079 = add nsw i32 %1078, 1
  store i32 %1079, i32* %5, align 4
  br label %1060

1080:                                             ; preds = %1060
  store i32 0, i32* %5, align 4
  br label %1081

1081:                                             ; preds = %1101, %1080
  %1082 = load i32, i32* %5, align 4
  %1083 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1084 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1083, i32 0, i32 3
  %1085 = load i32, i32* %1084, align 4
  %1086 = icmp slt i32 %1082, %1085
  br i1 %1086, label %1087, label %1104

1087:                                             ; preds = %1081
  %1088 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1089 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1088, i32 0, i32 24
  %1090 = load i32, i32* %1089, align 8
  %1091 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1092 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1091, i32 0, i32 23
  %1093 = load %struct.TYPE_73__*, %struct.TYPE_73__** %1092, align 8
  %1094 = load i32, i32* %5, align 4
  %1095 = sext i32 %1094 to i64
  %1096 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1093, i64 %1095
  %1097 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1096, i32 0, i32 0
  %1098 = load i32, i32* %1097, align 4
  %1099 = load i32, i32* %5, align 4
  %1100 = call i32 @ocs_hw_queue_hash_add(i32 %1090, i32 %1098, i32 %1099)
  br label %1101

1101:                                             ; preds = %1087
  %1102 = load i32, i32* %5, align 4
  %1103 = add nsw i32 %1102, 1
  store i32 %1103, i32* %5, align 4
  br label %1081

1104:                                             ; preds = %1081
  store i32 0, i32* %5, align 4
  br label %1105

1105:                                             ; preds = %1125, %1104
  %1106 = load i32, i32* %5, align 4
  %1107 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1108 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1107, i32 0, i32 4
  %1109 = load i32, i32* %1108, align 8
  %1110 = icmp slt i32 %1106, %1109
  br i1 %1110, label %1111, label %1128

1111:                                             ; preds = %1105
  %1112 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1113 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1112, i32 0, i32 22
  %1114 = load i32, i32* %1113, align 8
  %1115 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1116 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1115, i32 0, i32 21
  %1117 = load %struct.TYPE_74__*, %struct.TYPE_74__** %1116, align 8
  %1118 = load i32, i32* %5, align 4
  %1119 = sext i32 %1118 to i64
  %1120 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1117, i64 %1119
  %1121 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1120, i32 0, i32 0
  %1122 = load i32, i32* %1121, align 4
  %1123 = load i32, i32* %5, align 4
  %1124 = call i32 @ocs_hw_queue_hash_add(i32 %1114, i32 %1122, i32 %1123)
  br label %1125

1125:                                             ; preds = %1111
  %1126 = load i32, i32* %5, align 4
  %1127 = add nsw i32 %1126, 1
  store i32 %1127, i32* %5, align 4
  br label %1105

1128:                                             ; preds = %1105
  store i32 0, i32* %5, align 4
  br label %1129

1129:                                             ; preds = %1159, %1128
  %1130 = load i32, i32* %5, align 4
  %1131 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1132 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1131, i32 0, i32 5
  %1133 = load i32, i32* %1132, align 4
  %1134 = icmp slt i32 %1130, %1133
  br i1 %1134, label %1135, label %1162

1135:                                             ; preds = %1129
  %1136 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1137 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1136, i32 0, i32 20
  %1138 = load i32, i32* %1137, align 8
  %1139 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1140 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1139, i32 0, i32 18
  %1141 = load %struct.TYPE_66__*, %struct.TYPE_66__** %1140, align 8
  %1142 = load i32, i32* %5, align 4
  %1143 = sext i32 %1142 to i64
  %1144 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %1141, i64 %1143
  %1145 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %1144, i32 0, i32 0
  %1146 = load i32, i32* %1145, align 4
  %1147 = load i32, i32* %5, align 4
  %1148 = call i32 @ocs_hw_queue_hash_add(i32 %1138, i32 %1146, i32 %1147)
  %1149 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1150 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1149, i32 0, i32 19
  %1151 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1152 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1151, i32 0, i32 18
  %1153 = load %struct.TYPE_66__*, %struct.TYPE_66__** %1152, align 8
  %1154 = load i32, i32* %5, align 4
  %1155 = sext i32 %1154 to i64
  %1156 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %1153, i64 %1155
  %1157 = load i8*, i8** @TRUE, align 8
  %1158 = call i32 @sli_queue_arm(%struct.TYPE_65__* %1150, %struct.TYPE_66__* %1156, i8* %1157)
  br label %1159

1159:                                             ; preds = %1135
  %1160 = load i32, i32* %5, align 4
  %1161 = add nsw i32 %1160, 1
  store i32 %1161, i32* %5, align 4
  br label %1129

1162:                                             ; preds = %1129
  %1163 = load i32, i32* @OCS_HW_STATE_ACTIVE, align 4
  %1164 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1165 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1164, i32 0, i32 17
  store i32 %1163, i32* %1165, align 8
  %1166 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1167 = call i64 @ocs_hw_rqpair_init(%struct.TYPE_61__* %1166)
  %1168 = icmp ne i64 %1167, 0
  br i1 %1168, label %1169, label %1174

1169:                                             ; preds = %1162
  %1170 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1171 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1170, i32 0, i32 8
  %1172 = load i32, i32* %1171, align 8
  %1173 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %1172, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.36, i64 0, i64 0))
  br label %1174

1174:                                             ; preds = %1169, %1162
  %1175 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1176 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1175, i32 0, i32 16
  %1177 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %1176, i32 0, i32 7
  %1178 = load i64, i64* %1177, align 8
  %1179 = icmp ne i64 %1178, 0
  br i1 %1179, label %1180, label %1190

1180:                                             ; preds = %1174
  %1181 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1182 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1181, i32 0, i32 8
  %1183 = load i32, i32* %1182, align 8
  %1184 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1185 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1184, i32 0, i32 15
  %1186 = load i32, i32* @target_wqe_timer_cb, align 4
  %1187 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1188 = load i32, i32* @OCS_HW_WQ_TIMER_PERIOD_MS, align 4
  %1189 = call i32 @ocs_setup_timer(i32 %1183, i32* %1185, i32 %1186, %struct.TYPE_61__* %1187, i32 %1188)
  br label %1190

1190:                                             ; preds = %1180, %1174
  %1191 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1192 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1191, i32 0, i32 14
  %1193 = load i32*, i32** %1192, align 8
  %1194 = getelementptr inbounds i32, i32* %1193, i64 1
  %1195 = load i32, i32* %1194, align 4
  %1196 = call i32 @ocs_varray_get_count(i32 %1195)
  store i32 %1196, i32* %11, align 4
  %1197 = icmp sgt i32 %1196, 0
  br i1 %1197, label %1198, label %1229

1198:                                             ; preds = %1190
  store i32 0, i32* %5, align 4
  br label %1199

1199:                                             ; preds = %1225, %1198
  %1200 = load i32, i32* %5, align 4
  %1201 = load i32, i32* %11, align 4
  %1202 = icmp slt i32 %1200, %1201
  br i1 %1202, label %1203, label %1228

1203:                                             ; preds = %1199
  %1204 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1205 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1204, i32 0, i32 14
  %1206 = load i32*, i32** %1205, align 8
  %1207 = getelementptr inbounds i32, i32* %1206, i64 1
  %1208 = load i32, i32* %1207, align 4
  %1209 = call %struct.TYPE_63__* @ocs_varray_iter_next(i32 %1208)
  store %struct.TYPE_63__* %1209, %struct.TYPE_63__** %24, align 8
  %1210 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1211 = call i8* @ocs_hw_io_alloc(%struct.TYPE_61__* %1210)
  %1212 = bitcast i8* %1211 to i32*
  %1213 = load %struct.TYPE_63__*, %struct.TYPE_63__** %24, align 8
  %1214 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %1213, i32 0, i32 0
  store i32* %1212, i32** %1214, align 8
  %1215 = load %struct.TYPE_63__*, %struct.TYPE_63__** %24, align 8
  %1216 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %1215, i32 0, i32 0
  %1217 = load i32*, i32** %1216, align 8
  %1218 = icmp eq i32* %1217, null
  br i1 %1218, label %1219, label %1224

1219:                                             ; preds = %1203
  %1220 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1221 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1220, i32 0, i32 8
  %1222 = load i32, i32* %1221, align 8
  %1223 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %1222, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.37, i64 0, i64 0))
  br label %1224

1224:                                             ; preds = %1219, %1203
  br label %1225

1225:                                             ; preds = %1224
  %1226 = load i32, i32* %5, align 4
  %1227 = add nsw i32 %1226, 1
  store i32 %1227, i32* %5, align 4
  br label %1199

1228:                                             ; preds = %1199
  br label %1253

1229:                                             ; preds = %1190
  %1230 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1231 = call i8* @ocs_hw_io_alloc(%struct.TYPE_61__* %1230)
  %1232 = bitcast i8* %1231 to i32*
  %1233 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1234 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1233, i32 0, i32 13
  %1235 = load %struct.TYPE_76__**, %struct.TYPE_76__*** %1234, align 8
  %1236 = getelementptr inbounds %struct.TYPE_76__*, %struct.TYPE_76__** %1235, i64 0
  %1237 = load %struct.TYPE_76__*, %struct.TYPE_76__** %1236, align 8
  %1238 = getelementptr inbounds %struct.TYPE_76__, %struct.TYPE_76__* %1237, i32 0, i32 0
  store i32* %1232, i32** %1238, align 8
  %1239 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1240 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1239, i32 0, i32 13
  %1241 = load %struct.TYPE_76__**, %struct.TYPE_76__*** %1240, align 8
  %1242 = getelementptr inbounds %struct.TYPE_76__*, %struct.TYPE_76__** %1241, i64 0
  %1243 = load %struct.TYPE_76__*, %struct.TYPE_76__** %1242, align 8
  %1244 = getelementptr inbounds %struct.TYPE_76__, %struct.TYPE_76__* %1243, i32 0, i32 0
  %1245 = load i32*, i32** %1244, align 8
  %1246 = icmp eq i32* %1245, null
  br i1 %1246, label %1247, label %1252

1247:                                             ; preds = %1229
  %1248 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1249 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1248, i32 0, i32 8
  %1250 = load i32, i32* %1249, align 8
  %1251 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %1250, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.37, i64 0, i64 0))
  br label %1252

1252:                                             ; preds = %1247, %1229
  br label %1253

1253:                                             ; preds = %1252, %1228
  %1254 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1255 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1254, i32 0, i32 12
  %1256 = call i32 @ocs_atomic_init(i32* %1255, i32 0)
  %1257 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1258 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1257, i32 0, i32 11
  store i64 0, i64* %1258, align 8
  %1259 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1260 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1259, i32 0, i32 6
  %1261 = load i32, i32* %1260, align 8
  %1262 = icmp ne i32 %1261, 0
  br i1 %1262, label %1263, label %1292

1263:                                             ; preds = %1253
  %1264 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1265 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1264, i32 0, i32 6
  %1266 = load i32, i32* %1265, align 8
  %1267 = icmp slt i32 %1266, 1
  br i1 %1267, label %1273, label %1268

1268:                                             ; preds = %1263
  %1269 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1270 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1269, i32 0, i32 6
  %1271 = load i32, i32* %1270, align 8
  %1272 = icmp sgt i32 %1271, 65534
  br i1 %1272, label %1273, label %1278

1273:                                             ; preds = %1268, %1263
  %1274 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1275 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1274, i32 0, i32 8
  %1276 = load i32, i32* %1275, align 8
  %1277 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %1276, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.38, i64 0, i64 0))
  br label %1291

1278:                                             ; preds = %1268
  %1279 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1280 = call i32 @ocs_hw_config_watchdog_timer(%struct.TYPE_61__* %1279)
  %1281 = icmp ne i32 %1280, 0
  br i1 %1281, label %1290, label %1282

1282:                                             ; preds = %1278
  %1283 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1284 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1283, i32 0, i32 8
  %1285 = load i32, i32* %1284, align 8
  %1286 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1287 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1286, i32 0, i32 6
  %1288 = load i32, i32* %1287, align 8
  %1289 = call i32 @ocs_log_info(i32 %1285, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.39, i64 0, i64 0), i32 %1288)
  br label %1290

1290:                                             ; preds = %1282, %1278
  br label %1291

1291:                                             ; preds = %1290, %1273
  br label %1292

1292:                                             ; preds = %1291, %1253
  %1293 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1294 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1293, i32 0, i32 8
  %1295 = load i32, i32* %1294, align 8
  %1296 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1297 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1296, i32 0, i32 10
  %1298 = call i64 @ocs_dma_alloc(i32 %1295, %struct.TYPE_62__* %1297, i32 112, i32 4)
  %1299 = icmp ne i64 %1298, 0
  br i1 %1299, label %1300, label %1306

1300:                                             ; preds = %1292
  %1301 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1302 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1301, i32 0, i32 8
  %1303 = load i32, i32* %1302, align 8
  %1304 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %1303, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.40, i64 0, i64 0))
  %1305 = load i32, i32* @OCS_HW_RTN_NO_MEMORY, align 4
  store i32 %1305, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %1348

1306:                                             ; preds = %1292
  %1307 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1308 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1307, i32 0, i32 8
  %1309 = load i32, i32* %1308, align 8
  %1310 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1311 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1310, i32 0, i32 9
  %1312 = load i32, i32* @OCS_HW_READ_FCF_SIZE, align 4
  %1313 = load i32, i32* @OCS_HW_READ_FCF_SIZE, align 4
  %1314 = call i64 @ocs_dma_alloc(i32 %1309, %struct.TYPE_62__* %1311, i32 %1312, i32 %1313)
  %1315 = icmp ne i64 %1314, 0
  br i1 %1315, label %1316, label %1322

1316:                                             ; preds = %1306
  %1317 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1318 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1317, i32 0, i32 8
  %1319 = load i32, i32* %1318, align 8
  %1320 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %1319, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.41, i64 0, i64 0))
  %1321 = load i32, i32* @OCS_HW_RTN_NO_MEMORY, align 4
  store i32 %1321, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %1348

1322:                                             ; preds = %1306
  %1323 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1324 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1323, i32 0, i32 7
  %1325 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %1324, i32 0, i32 0
  %1326 = load i64, i64* %1325, align 8
  %1327 = icmp eq i64 0, %1326
  br i1 %1327, label %1328, label %1346

1328:                                             ; preds = %1322
  %1329 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1330 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1329, i32 0, i32 8
  %1331 = load i32, i32* %1330, align 8
  %1332 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1333 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1332, i32 0, i32 7
  %1334 = load i32, i32* @SLI4_MIN_LOOP_MAP_BYTES, align 4
  %1335 = call i64 @ocs_dma_alloc(i32 %1331, %struct.TYPE_62__* %1333, i32 %1334, i32 4)
  %1336 = icmp ne i64 %1335, 0
  br i1 %1336, label %1337, label %1346

1337:                                             ; preds = %1328
  %1338 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1339 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1338, i32 0, i32 8
  %1340 = load i32, i32* %1339, align 8
  %1341 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1342 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1341, i32 0, i32 7
  %1343 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %1342, i32 0, i32 0
  %1344 = load i64, i64* %1343, align 8
  %1345 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %1340, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.42, i64 0, i64 0), i64 %1344)
  br label %1346

1346:                                             ; preds = %1337, %1328, %1322
  %1347 = load i32, i32* @OCS_HW_RTN_SUCCESS, align 4
  store i32 %1347, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %1348

1348:                                             ; preds = %1346, %1316, %1300, %1052, %1029, %972, %961, %949, %939, %749, %736, %664, %625, %578, %566, %533, %497, %447, %423, %399, %375, %351, %317, %298, %276, %214, %50, %36
  %1349 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %1349)
  %1350 = load i32, i32* %2, align 4
  ret i32 %1350
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ocs_lock(i32*) #2

declare dso_local i32 @ocs_list_empty(i32*) #2

declare dso_local i32 @ocs_log_test(i32, i8*) #2

declare dso_local i32 @ocs_unlock(i32*) #2

declare dso_local i32 @ocs_hw_rx_free(%struct.TYPE_61__*) #2

declare dso_local i64 @ocs_list_valid(i32*) #2

declare dso_local i32 @ocs_list_remove_head(i32*) #2

declare dso_local i32 @ocs_log_debug(i32, i8*, ...) #2

declare dso_local i32 @ocs_list_init(i32*, i32, i32) #2

declare dso_local i64 @sli_init(%struct.TYPE_65__*) #2

declare dso_local i32 @ocs_log_err(i32, i8*, ...) #2

declare dso_local i64 @sli_get_auto_xfer_rdy_capable(%struct.TYPE_65__*) #2

declare dso_local i64 @ocs_get_property(i8*, i8*, i32) #2

declare dso_local i32 @ocs_strtoul(i8*, i32, i32) #2

declare dso_local i32 @sli_cmd_config_auto_xfer_rdy_hp(%struct.TYPE_65__*, i8**, i32, i64, i32, i32) #2

declare dso_local i32 @sli_cmd_config_auto_xfer_rdy(%struct.TYPE_65__*, i8**, i32, i64) #2

declare dso_local i32 @ocs_hw_command(%struct.TYPE_61__*, i8**, i32, i32*, i32*) #2

declare dso_local i32 @ocs_hw_config_auto_xfer_rdy_t10pi(%struct.TYPE_61__*, i8**) #2

declare dso_local i32 @ocs_hw_config_sli_port_health_check(%struct.TYPE_61__*, i32, i32) #2

declare dso_local i32 @ocs_hw_config_set_fdt_xfer_hint(%struct.TYPE_61__*, i64) #2

declare dso_local i32 @MIN(i32, i32) #2

declare dso_local i32 @sli_get_max_queue(%struct.TYPE_65__*, i32) #2

declare dso_local i32 @ocs_memset(i32, i32, i32) #2

declare dso_local i32 @ocs_hw_init_queues(%struct.TYPE_61__*, i32) #2

declare dso_local i32 @sli_get_max_rsrc(%struct.TYPE_65__*, i32) #2

declare dso_local i32 @sli_fc_get_rpi_requirements(%struct.TYPE_65__*, i32) #2

declare dso_local i32 @ocs_dma_free(i32, %struct.TYPE_62__*) #2

declare dso_local i64 @ocs_dma_alloc(i32, %struct.TYPE_62__*, i32, i32) #2

declare dso_local i64 @sli_cmd_fcoe_post_hdr_templates(%struct.TYPE_65__*, i8**, i32, %struct.TYPE_62__*, i32, %struct.TYPE_62__*) #2

declare dso_local i32 @ocs_hw_rx_allocate(%struct.TYPE_61__*) #2

declare dso_local i32* @ocs_array_alloc(i32, i32, i32) #2

declare dso_local i64 @ocs_hw_rx_post(%struct.TYPE_61__*) #2

declare dso_local %struct.TYPE_69__* @ocs_malloc(i32, i32, i32) #2

declare dso_local i32 @ocs_atomic_init(i32*, i32) #2

declare dso_local i64 @sli_get_medium(%struct.TYPE_65__*) #2

declare dso_local i32 @ocs_hw_config_mrq(%struct.TYPE_61__*, i32, i32, i32) #2

declare dso_local i32 @OCS_MIN(i32, i32) #2

declare dso_local i64 @sli_cmd_reg_fcfi(%struct.TYPE_65__*, i8**, i32, i32, %struct.TYPE_59__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @ocs_hw_reqtag_init(%struct.TYPE_61__*) #2

declare dso_local i32 @ocs_hw_setup_io(%struct.TYPE_61__*) #2

declare dso_local i32 @ocs_hw_init_io(%struct.TYPE_61__*) #2

declare dso_local i32 @ocs_queue_history_init(i32, i32*) #2

declare dso_local i32 @ocs_hw_get_linkcfg(%struct.TYPE_61__*, i32, i32, %struct.TYPE_61__*) #2

declare dso_local i64 @ocs_hw_set_eth_license(%struct.TYPE_61__*, i32) #2

declare dso_local i64 @sli_get_if_type(%struct.TYPE_65__*) #2

declare dso_local i32 @ocs_hw_set_dif_seed(%struct.TYPE_61__*) #2

declare dso_local i64 @sli_get_dif_capable(%struct.TYPE_65__*) #2

declare dso_local i32 @ocs_hw_set_dif_mode(%struct.TYPE_61__*) #2

declare dso_local i32 @sli_queue_arm(%struct.TYPE_65__*, %struct.TYPE_66__*, i8*) #2

declare dso_local i32 @ocs_hw_queue_hash_add(i32, i32, i32) #2

declare dso_local i64 @ocs_hw_rqpair_init(%struct.TYPE_61__*) #2

declare dso_local i32 @ocs_setup_timer(i32, i32*, i32, %struct.TYPE_61__*, i32) #2

declare dso_local i32 @ocs_varray_get_count(i32) #2

declare dso_local %struct.TYPE_63__* @ocs_varray_iter_next(i32) #2

declare dso_local i8* @ocs_hw_io_alloc(%struct.TYPE_61__*) #2

declare dso_local i32 @ocs_hw_config_watchdog_timer(%struct.TYPE_61__*) #2

declare dso_local i32 @ocs_log_info(i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
