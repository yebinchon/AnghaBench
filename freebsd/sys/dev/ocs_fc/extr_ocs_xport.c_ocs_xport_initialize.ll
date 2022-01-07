; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_xport.c_ocs_xport_initialize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_xport.c_ocs_xport_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i64, i32, i64, i64, i64, i64, i8*, i64, %struct.TYPE_22__, i32, i64, i64, i32, i64, i64, i64 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i64 }

@FALSE = common dso_local global i64 0, align 8
@OCS_HW_MAX_IO = common dso_local global i32 0, align 4
@OCS_HW_N_IO = common dso_local global i32 0, align 4
@OCS_HW_RTN_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"%s: Can't set number of IOs\0A\00", align 1
@OCS_HW_MAX_SGL = common dso_local global i32 0, align 4
@SLI4_SGE_MAX_RESERVED = common dso_local global i64 0, align 8
@OCS_HW_HIGH_LOGIN_MODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Cannot enable high login mode for this port\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"High login mode is enabled\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"%s: Can't set high login mode\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"Auto XFER_RDY size is out of range (2K-64K)\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"%s: Failed auto xfer ready setup\0A\00", align 1
@OCS_ESOC = common dso_local global i32 0, align 4
@OCS_HW_PREREGISTER_SGL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [64 x i8] c"Explicit Buffer List not supported on this device, not enabled\0A\00", align 1
@OCS_HW_TOPOLOGY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"%s: Can't set the toplogy\0A\00", align 1
@OCS_HW_RQ_DEFAULT_BUFFER_SIZE = common dso_local global i32 0, align 4
@OCS_FC_RQ_SIZE_DEFAULT = common dso_local global i64 0, align 8
@OCS_HW_LINK_SPEED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [30 x i8] c"%s: Can't set the link speed\0A\00", align 1
@OCS_HW_ETH_LICENSE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [36 x i8] c"%s: Can't set the ethernet license\0A\00", align 1
@SLI4_ASIC_TYPE_LANCER = common dso_local global i64 0, align 8
@OCS_HW_DIF_SEED = common dso_local global i32 0, align 4
@OCS_FC_DIF_SEED = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [28 x i8] c"%s: Can't set the DIF seed\0A\00", align 1
@OCS_HW_DIF_CAPABLE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [13 x i8] c"dif_separate\00", align 1
@OCS_HW_DIF_MODE = common dso_local global i32 0, align 4
@OCS_HW_DIF_MODE_INLINE = common dso_local global i64 0, align 8
@OCS_HW_DIF_MODE_SEPARATE = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [34 x i8] c"Requested DIF MODE not supported\0A\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"setting target io timer=%d\0A\00", align 1
@OCS_HW_EMULATE_TARGET_WQE_TIMEOUT = common dso_local global i32 0, align 4
@OCS_HW_CB_DOMAIN = common dso_local global i32 0, align 4
@ocs_domain_cb = common dso_local global i32 0, align 4
@OCS_HW_CB_REMOTE_NODE = common dso_local global i32 0, align 4
@ocs_remote_node_cb = common dso_local global i32 0, align 4
@OCS_HW_CB_UNSOLICITED = common dso_local global i32 0, align 4
@ocs_unsolicited_cb = common dso_local global i32 0, align 4
@OCS_HW_CB_PORT = common dso_local global i32 0, align 4
@ocs_port_cb = common dso_local global i32 0, align 4
@OCS_HW_FW_REV = common dso_local global i32 0, align 4
@ocs_vport_spec_t = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [20 x i8] c"io_pending_lock[%d]\00", align 1
@ocs_io_t = common dso_local global i32 0, align 4
@io_pending_link = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [19 x i8] c" Watchdog Lock[%d]\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"ocs_hw_init failure\0A\00", align 1
@OCS_HW_RQ_PROCESS_LIMIT = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [36 x i8] c"%s: Can't set the RQ process limit\0A\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"failed to initialize target\0A\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"failed to initialize initiator\0A\00", align 1
@OCS_HW_MAX_VPORTS = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [24 x i8] c"Provisioning %d vports\0A\00", align 1
@UINT32_MAX = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [61 x i8] c"failed to create vports. num_vports range should be (1-%d) \0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocs_xport_initialize(%struct.TYPE_24__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca [32 x i8], align 16
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %3, align 8
  %18 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %18, i32 0, i32 9
  %20 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  store %struct.TYPE_25__* %20, %struct.TYPE_25__** %4, align 8
  store i64 0, i64* %12, align 8
  %21 = load i64, i64* @FALSE, align 8
  store i64 %21, i64* %14, align 8
  %22 = load i64, i64* @FALSE, align 8
  store i64 %22, i64* %15, align 8
  %23 = load i64, i64* @FALSE, align 8
  store i64 %23, i64* %16, align 8
  %24 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %24, i32 0, i32 8
  %26 = load i32, i32* @OCS_HW_MAX_IO, align 4
  %27 = call i64 @ocs_hw_get(%struct.TYPE_22__* %25, i32 %26, i64* %7)
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %28, i32 0, i32 8
  %30 = load i32, i32* @OCS_HW_N_IO, align 4
  %31 = load i64, i64* %7, align 8
  %32 = call i64 @ocs_hw_set(%struct.TYPE_22__* %29, i32 %30, i64 %31)
  %33 = load i64, i64* @OCS_HW_RTN_SUCCESS, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %1
  %36 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %37 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 (%struct.TYPE_25__*, i8*, ...) @ocs_log_err(%struct.TYPE_25__* %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %39)
  store i32 -1, i32* %2, align 4
  br label %483

41:                                               ; preds = %1
  %42 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %42, i32 0, i32 8
  %44 = load i32, i32* @OCS_HW_MAX_SGL, align 4
  %45 = call i64 @ocs_hw_get(%struct.TYPE_22__* %43, i32 %44, i64* %8)
  %46 = load i64, i64* @SLI4_SGE_MAX_RESERVED, align 8
  %47 = load i64, i64* %8, align 8
  %48 = sub nsw i64 %47, %46
  store i64 %48, i64* %8, align 8
  %49 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %49, i32 0, i32 15
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %83

53:                                               ; preds = %41
  %54 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %54, i32 0, i32 8
  %56 = load i32, i32* @OCS_HW_HIGH_LOGIN_MODE, align 4
  %57 = call i64 @ocs_hw_get(%struct.TYPE_22__* %55, i32 %56, i64* %9)
  %58 = load i64, i64* %9, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %53
  %61 = load i64, i64* @FALSE, align 8
  %62 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %62, i32 0, i32 15
  store i64 %61, i64* %63, align 8
  %64 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %65 = call i32 (%struct.TYPE_25__*, i8*, ...) @ocs_log_err(%struct.TYPE_25__* %64, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %82

66:                                               ; preds = %53
  %67 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %68 = call i32 (%struct.TYPE_25__*, i8*, ...) @ocs_log_debug(%struct.TYPE_25__* %67, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %69 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %69, i32 0, i32 8
  %71 = load i32, i32* @OCS_HW_HIGH_LOGIN_MODE, align 4
  %72 = load i64, i64* @TRUE, align 8
  %73 = call i64 @ocs_hw_set(%struct.TYPE_22__* %70, i32 %71, i64 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %66
  %76 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %77 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i32 (%struct.TYPE_25__*, i8*, ...) @ocs_log_err(%struct.TYPE_25__* %76, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i64 %79)
  store i32 -1, i32* %2, align 4
  br label %483

81:                                               ; preds = %66
  br label %82

82:                                               ; preds = %81, %60
  br label %83

83:                                               ; preds = %82, %41
  %84 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %83
  %89 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = icmp slt i32 %91, 2048
  br i1 %92, label %98, label %93

93:                                               ; preds = %88
  %94 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = icmp sgt i32 %96, 65536
  br i1 %97, label %98, label %101

98:                                               ; preds = %93, %88
  %99 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %100 = call i32 (%struct.TYPE_25__*, i8*, ...) @ocs_log_err(%struct.TYPE_25__* %99, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %483

101:                                              ; preds = %93, %83
  %102 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %102, i32 0, i32 8
  %104 = load i32, i32* @OCS_HW_MAX_IO, align 4
  %105 = call i64 @ocs_hw_get(%struct.TYPE_22__* %103, i32 %104, i64* %7)
  %106 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = icmp sgt i32 %108, 0
  br i1 %109, label %110, label %132

110:                                              ; preds = %101
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %112 = call i64 @ocs_xport_initialize_auto_xfer_ready(%struct.TYPE_24__* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %110
  %115 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %116 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = call i32 (%struct.TYPE_25__*, i8*, ...) @ocs_log_err(%struct.TYPE_25__* %115, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i64 %118)
  store i32 -1, i32* %2, align 4
  br label %483

120:                                              ; preds = %110
  %121 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %121, i32 0, i32 14
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %120
  %126 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %126, i32 0, i32 8
  %128 = load i32, i32* @OCS_ESOC, align 4
  %129 = load i64, i64* @TRUE, align 8
  %130 = call i64 @ocs_hw_set(%struct.TYPE_22__* %127, i32 %128, i64 %129)
  br label %131

131:                                              ; preds = %125, %120
  br label %132

132:                                              ; preds = %131, %101
  %133 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %133, i32 0, i32 13
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %155

137:                                              ; preds = %132
  %138 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %138, i32 0, i32 8
  %140 = load i32, i32* @OCS_HW_PREREGISTER_SGL, align 4
  %141 = call i64 @ocs_hw_get(%struct.TYPE_22__* %139, i32 %140, i64* %6)
  %142 = load i64, i64* %6, align 8
  %143 = load i64, i64* @TRUE, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %148

145:                                              ; preds = %137
  %146 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %147 = call i32 (%struct.TYPE_25__*, i8*, ...) @ocs_log_err(%struct.TYPE_25__* %146, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.6, i64 0, i64 0))
  br label %154

148:                                              ; preds = %137
  %149 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %149, i32 0, i32 8
  %151 = load i32, i32* @OCS_HW_PREREGISTER_SGL, align 4
  %152 = load i64, i64* @FALSE, align 8
  %153 = call i64 @ocs_hw_set(%struct.TYPE_22__* %150, i32 %151, i64 %152)
  br label %154

154:                                              ; preds = %148, %145
  br label %155

155:                                              ; preds = %154, %132
  %156 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %156, i32 0, i32 8
  %158 = load i32, i32* @OCS_HW_TOPOLOGY, align 4
  %159 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = call i64 @ocs_hw_set(%struct.TYPE_22__* %157, i32 %158, i64 %161)
  %163 = load i64, i64* @OCS_HW_RTN_SUCCESS, align 8
  %164 = icmp ne i64 %162, %163
  br i1 %164, label %165, label %171

165:                                              ; preds = %155
  %166 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %167 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = call i32 (%struct.TYPE_25__*, i8*, ...) @ocs_log_err(%struct.TYPE_25__* %166, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i64 %169)
  store i32 -1, i32* %2, align 4
  br label %483

171:                                              ; preds = %155
  %172 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %172, i32 0, i32 8
  %174 = load i32, i32* @OCS_HW_RQ_DEFAULT_BUFFER_SIZE, align 4
  %175 = load i64, i64* @OCS_FC_RQ_SIZE_DEFAULT, align 8
  %176 = call i64 @ocs_hw_set(%struct.TYPE_22__* %173, i32 %174, i64 %175)
  %177 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %177, i32 0, i32 8
  %179 = load i32, i32* @OCS_HW_LINK_SPEED, align 4
  %180 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %180, i32 0, i32 3
  %182 = load i64, i64* %181, align 8
  %183 = call i64 @ocs_hw_set(%struct.TYPE_22__* %178, i32 %179, i64 %182)
  %184 = load i64, i64* @OCS_HW_RTN_SUCCESS, align 8
  %185 = icmp ne i64 %183, %184
  br i1 %185, label %186, label %192

186:                                              ; preds = %171
  %187 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %188 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = call i32 (%struct.TYPE_25__*, i8*, ...) @ocs_log_err(%struct.TYPE_25__* %187, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i64 %190)
  store i32 -1, i32* %2, align 4
  br label %483

192:                                              ; preds = %171
  %193 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %193, i32 0, i32 8
  %195 = load i32, i32* @OCS_HW_ETH_LICENSE, align 4
  %196 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %196, i32 0, i32 4
  %198 = load i64, i64* %197, align 8
  %199 = call i64 @ocs_hw_set(%struct.TYPE_22__* %194, i32 %195, i64 %198)
  %200 = load i64, i64* @OCS_HW_RTN_SUCCESS, align 8
  %201 = icmp ne i64 %199, %200
  br i1 %201, label %202, label %208

202:                                              ; preds = %192
  %203 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %204 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = call i32 (%struct.TYPE_25__*, i8*, ...) @ocs_log_err(%struct.TYPE_25__* %203, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), i64 %206)
  store i32 -1, i32* %2, align 4
  br label %483

208:                                              ; preds = %192
  %209 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %209, i32 0, i32 8
  %211 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @SLI4_ASIC_TYPE_LANCER, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %216, label %231

216:                                              ; preds = %208
  %217 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %217, i32 0, i32 8
  %219 = load i32, i32* @OCS_HW_DIF_SEED, align 4
  %220 = load i64, i64* @OCS_FC_DIF_SEED, align 8
  %221 = call i64 @ocs_hw_set(%struct.TYPE_22__* %218, i32 %219, i64 %220)
  %222 = load i64, i64* @OCS_HW_RTN_SUCCESS, align 8
  %223 = icmp ne i64 %221, %222
  br i1 %223, label %224, label %230

224:                                              ; preds = %216
  %225 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %226 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = call i32 (%struct.TYPE_25__*, i8*, ...) @ocs_log_err(%struct.TYPE_25__* %225, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i64 %228)
  store i32 -1, i32* %2, align 4
  br label %483

230:                                              ; preds = %216
  br label %231

231:                                              ; preds = %230, %208
  %232 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %232, i32 0, i32 8
  %234 = load i32, i32* @OCS_HW_DIF_CAPABLE, align 4
  %235 = call i64 @ocs_hw_get(%struct.TYPE_22__* %233, i32 %234, i64* %11)
  %236 = icmp eq i64 0, %235
  br i1 %236, label %237, label %267

237:                                              ; preds = %231
  %238 = load i64, i64* %11, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %266

240:                                              ; preds = %237
  %241 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %242 = call i64 @ocs_get_property(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i8* %241, i32 32)
  %243 = icmp eq i64 %242, 0
  br i1 %243, label %244, label %247

244:                                              ; preds = %240
  %245 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %246 = call i64 @ocs_strtoul(i8* %245, i32 0, i32 0)
  store i64 %246, i64* %12, align 8
  br label %247

247:                                              ; preds = %244, %240
  %248 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %249 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %248, i32 0, i32 8
  %250 = load i32, i32* @OCS_HW_DIF_MODE, align 4
  %251 = load i64, i64* %12, align 8
  %252 = icmp eq i64 %251, 0
  br i1 %252, label %253, label %255

253:                                              ; preds = %247
  %254 = load i64, i64* @OCS_HW_DIF_MODE_INLINE, align 8
  br label %257

255:                                              ; preds = %247
  %256 = load i64, i64* @OCS_HW_DIF_MODE_SEPARATE, align 8
  br label %257

257:                                              ; preds = %255, %253
  %258 = phi i64 [ %254, %253 ], [ %256, %255 ]
  %259 = call i64 @ocs_hw_set(%struct.TYPE_22__* %249, i32 %250, i64 %258)
  %260 = trunc i64 %259 to i32
  store i32 %260, i32* %5, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %265

262:                                              ; preds = %257
  %263 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %264 = call i32 (%struct.TYPE_25__*, i8*, ...) @ocs_log_err(%struct.TYPE_25__* %263, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0))
  br label %265

265:                                              ; preds = %262, %257
  br label %266

266:                                              ; preds = %265, %237
  br label %267

267:                                              ; preds = %266, %231
  %268 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %269 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %268, i32 0, i32 5
  %270 = load i64, i64* %269, align 8
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %283

272:                                              ; preds = %267
  %273 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %274 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %275 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %274, i32 0, i32 5
  %276 = load i64, i64* %275, align 8
  %277 = call i32 (%struct.TYPE_25__*, i8*, ...) @ocs_log_debug(%struct.TYPE_25__* %273, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0), i64 %276)
  %278 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %279 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %278, i32 0, i32 8
  %280 = load i32, i32* @OCS_HW_EMULATE_TARGET_WQE_TIMEOUT, align 4
  %281 = load i64, i64* @TRUE, align 8
  %282 = call i64 @ocs_hw_set(%struct.TYPE_22__* %279, i32 %280, i64 %281)
  br label %283

283:                                              ; preds = %272, %267
  %284 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %285 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %284, i32 0, i32 8
  %286 = load i32, i32* @OCS_HW_CB_DOMAIN, align 4
  %287 = load i32, i32* @ocs_domain_cb, align 4
  %288 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %289 = call i32 @ocs_hw_callback(%struct.TYPE_22__* %285, i32 %286, i32 %287, %struct.TYPE_25__* %288)
  %290 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %291 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %290, i32 0, i32 8
  %292 = load i32, i32* @OCS_HW_CB_REMOTE_NODE, align 4
  %293 = load i32, i32* @ocs_remote_node_cb, align 4
  %294 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %295 = call i32 @ocs_hw_callback(%struct.TYPE_22__* %291, i32 %292, i32 %293, %struct.TYPE_25__* %294)
  %296 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %297 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %296, i32 0, i32 8
  %298 = load i32, i32* @OCS_HW_CB_UNSOLICITED, align 4
  %299 = load i32, i32* @ocs_unsolicited_cb, align 4
  %300 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %301 = call i32 @ocs_hw_callback(%struct.TYPE_22__* %297, i32 %298, i32 %299, %struct.TYPE_25__* %300)
  %302 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %303 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %302, i32 0, i32 8
  %304 = load i32, i32* @OCS_HW_CB_PORT, align 4
  %305 = load i32, i32* @ocs_port_cb, align 4
  %306 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %307 = call i32 @ocs_hw_callback(%struct.TYPE_22__* %303, i32 %304, i32 %305, %struct.TYPE_25__* %306)
  %308 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %309 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %308, i32 0, i32 8
  %310 = load i32, i32* @OCS_HW_FW_REV, align 4
  %311 = call i64 @ocs_hw_get_ptr(%struct.TYPE_22__* %309, i32 %310)
  %312 = inttoptr i64 %311 to i8*
  %313 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %314 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %313, i32 0, i32 6
  store i8* %312, i8** %314, align 8
  %315 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %316 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %315, i32 0, i32 8
  %317 = load i32, i32* @ocs_vport_spec_t, align 4
  %318 = load i32, i32* @link, align 4
  %319 = call i32 @ocs_list_init(i32* %316, i32 %317, i32 %318)
  %320 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %321 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %322 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %321, i32 0, i32 7
  %323 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %324 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %323, i32 0, i32 12
  %325 = load i32, i32* %324, align 8
  %326 = call i32 @ocs_lock_init(%struct.TYPE_25__* %320, i32* %322, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 %325)
  %327 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %328 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %327, i32 0, i32 6
  %329 = load i32, i32* @ocs_io_t, align 4
  %330 = load i32, i32* @io_pending_link, align 4
  %331 = call i32 @ocs_list_init(i32* %328, i32 %329, i32 %330)
  %332 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %333 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %332, i32 0, i32 5
  %334 = call i32 @ocs_atomic_init(i32* %333, i32 0)
  %335 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %336 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %335, i32 0, i32 4
  %337 = call i32 @ocs_atomic_init(i32* %336, i32 0)
  %338 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %339 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %338, i32 0, i32 3
  %340 = call i32 @ocs_atomic_init(i32* %339, i32 0)
  %341 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %342 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %341, i32 0, i32 2
  %343 = call i32 @ocs_atomic_init(i32* %342, i32 0)
  %344 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %345 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %344, i32 0, i32 1
  %346 = call i32 @ocs_atomic_init(i32* %345, i32 0)
  %347 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %348 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %347, i32 0, i32 0
  %349 = call i32 @ocs_atomic_init(i32* %348, i32 0)
  %350 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %351 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %352 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %351, i32 0, i32 8
  %353 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %352, i32 0, i32 0
  %354 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %355 = call i32 @ocs_instance(%struct.TYPE_25__* %354)
  %356 = call i32 @ocs_lock_init(%struct.TYPE_25__* %350, i32* %353, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0), i32 %355)
  %357 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %358 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %357, i32 0, i32 8
  %359 = call i32 @ocs_hw_init(%struct.TYPE_22__* %358)
  store i32 %359, i32* %5, align 4
  %360 = load i32, i32* %5, align 4
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %365

362:                                              ; preds = %283
  %363 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %364 = call i32 (%struct.TYPE_25__*, i8*, ...) @ocs_log_err(%struct.TYPE_25__* %363, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0))
  br label %463

365:                                              ; preds = %283
  %366 = load i64, i64* @TRUE, align 8
  store i64 %366, i64* %16, align 8
  br label %367

367:                                              ; preds = %365
  %368 = load i64, i64* %7, align 8
  %369 = sdiv i64 %368, 2
  store i64 %369, i64* %10, align 8
  %370 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %371 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %370, i32 0, i32 8
  %372 = load i32, i32* @OCS_HW_RQ_PROCESS_LIMIT, align 4
  %373 = load i64, i64* %10, align 8
  %374 = call i64 @ocs_hw_set(%struct.TYPE_22__* %371, i32 %372, i64 %373)
  %375 = load i64, i64* @OCS_HW_RTN_SUCCESS, align 8
  %376 = icmp ne i64 %374, %375
  br i1 %376, label %377, label %383

377:                                              ; preds = %367
  %378 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %379 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %380 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %379, i32 0, i32 0
  %381 = load i64, i64* %380, align 8
  %382 = call i32 (%struct.TYPE_25__*, i8*, ...) @ocs_log_err(%struct.TYPE_25__* %378, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.17, i64 0, i64 0), i64 %381)
  br label %383

383:                                              ; preds = %377, %367
  %384 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %385 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %384, i32 0, i32 11
  %386 = load i64, i64* %385, align 8
  %387 = icmp ne i64 %386, 0
  br i1 %387, label %388, label %399

388:                                              ; preds = %383
  %389 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %390 = call i32 @ocs_scsi_tgt_new_device(%struct.TYPE_25__* %389)
  store i32 %390, i32* %5, align 4
  %391 = load i32, i32* %5, align 4
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %396

393:                                              ; preds = %388
  %394 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %395 = call i32 (%struct.TYPE_25__*, i8*, ...) @ocs_log_err(%struct.TYPE_25__* %394, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i64 0, i64 0))
  br label %463

396:                                              ; preds = %388
  %397 = load i64, i64* @TRUE, align 8
  store i64 %397, i64* %15, align 8
  br label %398

398:                                              ; preds = %396
  br label %399

399:                                              ; preds = %398, %383
  %400 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %401 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %400, i32 0, i32 10
  %402 = load i64, i64* %401, align 8
  %403 = icmp ne i64 %402, 0
  br i1 %403, label %404, label %415

404:                                              ; preds = %399
  %405 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %406 = call i32 @ocs_scsi_ini_new_device(%struct.TYPE_25__* %405)
  store i32 %406, i32* %5, align 4
  %407 = load i32, i32* %5, align 4
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %409, label %412

409:                                              ; preds = %404
  %410 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %411 = call i32 (%struct.TYPE_25__*, i8*, ...) @ocs_log_err(%struct.TYPE_25__* %410, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.19, i64 0, i64 0))
  br label %463

412:                                              ; preds = %404
  %413 = load i64, i64* @TRUE, align 8
  store i64 %413, i64* %14, align 8
  br label %414

414:                                              ; preds = %412
  br label %415

415:                                              ; preds = %414, %399
  %416 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %417 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %416, i32 0, i32 7
  %418 = load i64, i64* %417, align 8
  %419 = icmp ne i64 %418, 0
  br i1 %419, label %420, label %462

420:                                              ; preds = %415
  %421 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %422 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %421, i32 0, i32 8
  %423 = load i32, i32* @OCS_HW_MAX_VPORTS, align 4
  %424 = call i64 @ocs_hw_get(%struct.TYPE_22__* %422, i32 %423, i64* %17)
  %425 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %426 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %425, i32 0, i32 7
  %427 = load i64, i64* %426, align 8
  %428 = load i64, i64* %17, align 8
  %429 = icmp slt i64 %427, %428
  br i1 %429, label %430, label %456

430:                                              ; preds = %420
  %431 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %432 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %433 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %432, i32 0, i32 7
  %434 = load i64, i64* %433, align 8
  %435 = call i32 (%struct.TYPE_25__*, i8*, ...) @ocs_log_debug(%struct.TYPE_25__* %431, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0), i64 %434)
  store i64 0, i64* %6, align 8
  br label %436

436:                                              ; preds = %452, %430
  %437 = load i64, i64* %6, align 8
  %438 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %439 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %438, i32 0, i32 7
  %440 = load i64, i64* %439, align 8
  %441 = icmp slt i64 %437, %440
  br i1 %441, label %442, label %455

442:                                              ; preds = %436
  %443 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %444 = load i32, i32* @UINT32_MAX, align 4
  %445 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %446 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %445, i32 0, i32 10
  %447 = load i64, i64* %446, align 8
  %448 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %449 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %448, i32 0, i32 9
  %450 = load i32, i32* %449, align 8
  %451 = call i32 @ocs_vport_create_spec(%struct.TYPE_25__* %443, i32 0, i32 0, i32 %444, i64 %447, i32 %450, i32* null, i32* null)
  br label %452

452:                                              ; preds = %442
  %453 = load i64, i64* %6, align 8
  %454 = add nsw i64 %453, 1
  store i64 %454, i64* %6, align 8
  br label %436

455:                                              ; preds = %436
  br label %461

456:                                              ; preds = %420
  %457 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %458 = load i64, i64* %17, align 8
  %459 = sub nsw i64 %458, 1
  %460 = call i32 (%struct.TYPE_25__*, i8*, ...) @ocs_log_err(%struct.TYPE_25__* %457, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.21, i64 0, i64 0), i64 %459)
  br label %463

461:                                              ; preds = %455
  br label %462

462:                                              ; preds = %461, %415
  store i32 0, i32* %2, align 4
  br label %483

463:                                              ; preds = %456, %409, %393, %362
  %464 = load i64, i64* %14, align 8
  %465 = icmp ne i64 %464, 0
  br i1 %465, label %466, label %469

466:                                              ; preds = %463
  %467 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %468 = call i32 @ocs_scsi_ini_del_device(%struct.TYPE_25__* %467)
  br label %469

469:                                              ; preds = %466, %463
  %470 = load i64, i64* %15, align 8
  %471 = icmp ne i64 %470, 0
  br i1 %471, label %472, label %475

472:                                              ; preds = %469
  %473 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %474 = call i32 @ocs_scsi_tgt_del_device(%struct.TYPE_25__* %473)
  br label %475

475:                                              ; preds = %472, %469
  %476 = load i64, i64* %16, align 8
  %477 = icmp ne i64 %476, 0
  br i1 %477, label %478, label %482

478:                                              ; preds = %475
  %479 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %480 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %479, i32 0, i32 8
  %481 = call i32 @ocs_hw_teardown(%struct.TYPE_22__* %480)
  br label %482

482:                                              ; preds = %478, %475
  store i32 -1, i32* %2, align 4
  br label %483

483:                                              ; preds = %482, %462, %224, %202, %186, %165, %114, %98, %75, %35
  %484 = load i32, i32* %2, align 4
  ret i32 %484
}

declare dso_local i64 @ocs_hw_get(%struct.TYPE_22__*, i32, i64*) #1

declare dso_local i64 @ocs_hw_set(%struct.TYPE_22__*, i32, i64) #1

declare dso_local i32 @ocs_log_err(%struct.TYPE_25__*, i8*, ...) #1

declare dso_local i32 @ocs_log_debug(%struct.TYPE_25__*, i8*, ...) #1

declare dso_local i64 @ocs_xport_initialize_auto_xfer_ready(%struct.TYPE_24__*) #1

declare dso_local i64 @ocs_get_property(i8*, i8*, i32) #1

declare dso_local i64 @ocs_strtoul(i8*, i32, i32) #1

declare dso_local i32 @ocs_hw_callback(%struct.TYPE_22__*, i32, i32, %struct.TYPE_25__*) #1

declare dso_local i64 @ocs_hw_get_ptr(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @ocs_list_init(i32*, i32, i32) #1

declare dso_local i32 @ocs_lock_init(%struct.TYPE_25__*, i32*, i8*, i32) #1

declare dso_local i32 @ocs_atomic_init(i32*, i32) #1

declare dso_local i32 @ocs_instance(%struct.TYPE_25__*) #1

declare dso_local i32 @ocs_hw_init(%struct.TYPE_22__*) #1

declare dso_local i32 @ocs_scsi_tgt_new_device(%struct.TYPE_25__*) #1

declare dso_local i32 @ocs_scsi_ini_new_device(%struct.TYPE_25__*) #1

declare dso_local i32 @ocs_vport_create_spec(%struct.TYPE_25__*, i32, i32, i32, i64, i32, i32*, i32*) #1

declare dso_local i32 @ocs_scsi_ini_del_device(%struct.TYPE_25__*) #1

declare dso_local i32 @ocs_scsi_tgt_del_device(%struct.TYPE_25__*) #1

declare dso_local i32 @ocs_hw_teardown(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
