; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32, %struct.TYPE_15__, %struct.TYPE_18__*, i32, i32, %struct.TYPE_16__, i32*, %struct.TYPE_17__*, %struct.TYPE_17__*, i32, i32, i32, i64, i32, i32, i32, i8* }
%struct.TYPE_15__ = type { i64, i64, i64, i64, i64, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.TYPE_18__ = type { i64* }
%struct.TYPE_16__ = type { i64, i64 }

@.str = private unnamed_addr constant [24 x i8] c"bad parameter(s) hw=%p\0A\00", align 1
@OCS_HW_RTN_ERROR = common dso_local global i32 0, align 4
@OCS_HW_RTN_SUCCESS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"HW_cmd_lock[%d]\00", align 1
@ocs_command_ctx_t = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"HW_io_lock[%d]\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"HW_io_abort_lock[%d]\00", align 1
@FC_LINK_SPEED_AUTO_16_8_4 = common dso_local global i32 0, align 4
@OCS_HW_AUTO_XFER_RDY_BLK_SIZE_DEFAULT = common dso_local global i32 0, align 4
@OCS_HW_AUTO_XFER_RDY_REF_TAG_IS_LBA_DEFAULT = common dso_local global i32 0, align 4
@OCS_HW_AUTO_XFER_RDY_APP_TAG_VALID_DEFAULT = common dso_local global i32 0, align 4
@OCS_HW_AUTO_XFER_RDY_APP_TAG_VALUE_DEFAULT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"SLI setup failed\0A\00", align 1
@SLI4_CB_LINK = common dso_local global i32 0, align 4
@ocs_hw_cb_link = common dso_local global i32 0, align 4
@SLI4_CB_FIP = common dso_local global i32 0, align 4
@ocs_hw_cb_fip = common dso_local global i32 0, align 4
@OCS_HW_RQ_SIZE_PAYLOAD = common dso_local global i32 0, align 4
@SLI_RSRC_FCOE_XRI = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"auto_xfer_rdy_xri_cnt\00", align 1
@SLI4_IF_TYPE_LANCER_FC_ETH = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [46 x i8] c"not inline capable, setting mode to separate\0A\00", align 1
@OCS_HW_DIF_MODE_SEPARATE = common dso_local global i32 0, align 4
@ocs_hw_io_t = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"ulp_start %d, ulp_max %d\0A\00", align 1
@hw_global = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@QTOP_EQ = common dso_local global i64 0, align 8
@QTOP_CQ = common dso_local global i64 0, align 8
@QTOP_RQ = common dso_local global i64 0, align 8
@QTOP_WQ = common dso_local global i64 0, align 8
@QTOP_MQ = common dso_local global i64 0, align 8
@OCE_HW_MAX_NUM_MRQ_PAIRS = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [30 x i8] c"Max supported MRQ pairs = %d\0A\00", align 1
@OCS_HW_MAX_NUM_EQ = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [24 x i8] c"Max supported EQs = %d\0A\00", align 1
@OCS_HW_MAX_NUM_CQ = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [24 x i8] c"Max supported CQs = %d\0A\00", align 1
@OCS_HW_MAX_NUM_WQ = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [24 x i8] c"Max supported WQs = %d\0A\00", align 1
@OCS_HW_MAX_NUM_MQ = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [24 x i8] c"Max supported MQs = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocs_hw_setup(%struct.TYPE_17__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca [32 x i8], align 16
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %11 = icmp eq %struct.TYPE_17__* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %15 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %13, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.TYPE_17__* %14)
  %16 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %16, i32* %4, align 4
  br label %435

17:                                               ; preds = %3
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 19
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %24 = call i32 @ocs_hw_workaround_setup(%struct.TYPE_17__* %23)
  %25 = load i32, i32* @OCS_HW_RTN_SUCCESS, align 4
  store i32 %25, i32* %4, align 4
  br label %435

26:                                               ; preds = %17
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %28 = call i32 @ocs_memset(%struct.TYPE_17__* %27, i32 0, i32 224)
  %29 = load i8*, i8** @TRUE, align 8
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 19
  store i8* %29, i8** %31, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 18
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ocs_instance(i32 %42)
  %44 = call i32 @ocs_lock_init(i32 %37, i32* %39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 17
  %47 = load i32, i32* @ocs_command_ctx_t, align 4
  %48 = load i32, i32* @link, align 4
  %49 = call i32 @ocs_list_init(i32* %46, i32 %47, i32 %48)
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 16
  %52 = load i32, i32* @ocs_command_ctx_t, align 4
  %53 = load i32, i32* @link, align 4
  %54 = call i32 @ocs_list_init(i32* %51, i32 %52, i32 %53)
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 15
  store i64 0, i64* %56, align 8
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 14
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @ocs_instance(i32 %64)
  %66 = call i32 @ocs_lock_init(i32 %59, i32* %61, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 13
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @ocs_instance(i32 %74)
  %76 = call i32 @ocs_lock_init(i32 %69, i32* %71, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %75)
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 12
  %79 = call i32 @ocs_atomic_init(i32* %78, i32 0)
  %80 = load i32, i32* @FC_LINK_SPEED_AUTO_16_8_4, align 4
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 16
  store i32 %80, i32* %83, align 8
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 15
  store i64 0, i64* %86, align 8
  %87 = load i32, i32* @OCS_HW_AUTO_XFER_RDY_BLK_SIZE_DEFAULT, align 4
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 14
  store i32 %87, i32* %90, align 8
  %91 = load i32, i32* @OCS_HW_AUTO_XFER_RDY_REF_TAG_IS_LBA_DEFAULT, align 4
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 4
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 13
  store i32 %91, i32* %94, align 4
  %95 = load i32, i32* @OCS_HW_AUTO_XFER_RDY_APP_TAG_VALID_DEFAULT, align 4
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 4
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 12
  store i32 %95, i32* %98, align 8
  %99 = load i32, i32* @OCS_HW_AUTO_XFER_RDY_APP_TAG_VALUE_DEFAULT, align 4
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 4
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 11
  store i32 %99, i32* %102, align 4
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 6
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %7, align 4
  %109 = call i64 @sli_setup(i32* %104, i32 %107, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %26
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %114, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %116 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %116, i32* %4, align 4
  br label %435

117:                                              ; preds = %26
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 11
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %119, align 8
  %121 = call i32 @ocs_memset(%struct.TYPE_17__* %120, i32 0, i32 8)
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 10
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %123, align 8
  %125 = call i32 @ocs_memset(%struct.TYPE_17__* %124, i32 0, i32 8)
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %127 = call i32 @ocs_hw_link_event_init(%struct.TYPE_17__* %126)
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 6
  %130 = load i32, i32* @SLI4_CB_LINK, align 4
  %131 = load i32, i32* @ocs_hw_cb_link, align 4
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %133 = call i32 @sli_callback(i32* %129, i32 %130, i32 %131, %struct.TYPE_17__* %132)
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 6
  %136 = load i32, i32* @SLI4_CB_FIP, align 4
  %137 = load i32, i32* @ocs_hw_cb_fip, align 4
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %139 = call i32 @sli_callback(i32* %135, i32 %136, i32 %137, %struct.TYPE_17__* %138)
  store i64 0, i64* %8, align 8
  br label %140

140:                                              ; preds = %157, %117
  %141 = load i64, i64* %8, align 8
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 9
  %144 = load i32*, i32** %143, align 8
  %145 = call i64 @ARRAY_SIZE(i32* %144)
  %146 = icmp ult i64 %141, %145
  br i1 %146, label %147, label %160

147:                                              ; preds = %140
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 6
  %150 = load i64, i64* %8, align 8
  %151 = call i32 @sli_get_max_qentries(i32* %149, i64 %150)
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i32 0, i32 9
  %154 = load i32*, i32** %153, align 8
  %155 = load i64, i64* %8, align 8
  %156 = getelementptr inbounds i32, i32* %154, i64 %155
  store i32 %151, i32* %156, align 4
  br label %157

157:                                              ; preds = %147
  %158 = load i64, i64* %8, align 8
  %159 = add i64 %158, 1
  store i64 %159, i64* %8, align 8
  br label %140

160:                                              ; preds = %140
  %161 = load i32, i32* @OCS_HW_RQ_SIZE_PAYLOAD, align 4
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i32 0, i32 4
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 10
  store i32 %161, i32* %164, align 8
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i32 0, i32 6
  %167 = load i32, i32* @SLI_RSRC_FCOE_XRI, align 4
  %168 = call i32 @sli_get_max_rsrc(i32* %166, i32 %167)
  %169 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %169, i32 0, i32 4
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 9
  store i32 %168, i32* %171, align 4
  %172 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %173 = call i64 @ocs_get_property(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %172, i32 32)
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %160
  %176 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %177 = call i32 @ocs_strtoul(i8* %176, i32 0, i32 0)
  %178 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %178, i32 0, i32 4
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 8
  store i32 %177, i32* %180, align 8
  br label %181

181:                                              ; preds = %175, %160
  %182 = load i8*, i8** @TRUE, align 8
  %183 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %183, i32 0, i32 4
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 7
  store i8* %182, i8** %185, align 8
  %186 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %187 = call i32 @ocs_hw_workaround_setup(%struct.TYPE_17__* %186)
  %188 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %188, i32 0, i32 8
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %181
  %194 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %194, i32 0, i32 0
  store i32 -1, i32* %195, align 8
  br label %196

196:                                              ; preds = %193, %181
  %197 = load i64, i64* @SLI4_IF_TYPE_LANCER_FC_ETH, align 8
  %198 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %198, i32 0, i32 6
  %200 = call i64 @sli_get_if_type(i32* %199)
  %201 = icmp eq i64 %197, %200
  br i1 %201, label %202, label %205

202:                                              ; preds = %196
  %203 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %204 = call i32 @ocs_hw_read_max_dump_size(%struct.TYPE_17__* %203)
  br label %205

205:                                              ; preds = %202, %196
  %206 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %207 = call i32 @ocs_hw_adjust_wqs(%struct.TYPE_17__* %206)
  %208 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %208, i32 0, i32 6
  %210 = call i32 @sli_is_dif_inline_capable(i32* %209)
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %221, label %212

212:                                              ; preds = %205
  %213 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @ocs_log_test(i32 %215, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0))
  %217 = load i32, i32* @OCS_HW_DIF_MODE_SEPARATE, align 4
  %218 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %218, i32 0, i32 4
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %219, i32 0, i32 6
  store i32 %217, i32* %220, align 4
  br label %221

221:                                              ; preds = %212, %205
  %222 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %222, i32 0, i32 8
  %224 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %233

227:                                              ; preds = %221
  %228 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %228, i32 0, i32 7
  %230 = load i32, i32* @ocs_hw_io_t, align 4
  %231 = load i32, i32* @link, align 4
  %232 = call i32 @ocs_list_init(i32* %229, i32 %230, i32 %231)
  br label %233

233:                                              ; preds = %227, %221
  %234 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %234, i32 0, i32 6
  %236 = call i64 @sli_get_is_dual_ulp_capable(i32* %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %270

238:                                              ; preds = %233
  %239 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %239, i32 0, i32 6
  %241 = call i64 @sli_get_is_ulp_enabled(i32* %240, i32 0)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %253

243:                                              ; preds = %238
  %244 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %245 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %244, i32 0, i32 6
  %246 = call i64 @sli_get_is_ulp_enabled(i32* %245, i32 1)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %253

248:                                              ; preds = %243
  %249 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %249, i32 0, i32 1
  store i32 0, i32* %250, align 4
  %251 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %251, i32 0, i32 2
  store i32 1, i32* %252, align 8
  br label %269

253:                                              ; preds = %243, %238
  %254 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %255 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %254, i32 0, i32 6
  %256 = call i64 @sli_get_is_ulp_enabled(i32* %255, i32 0)
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %263

258:                                              ; preds = %253
  %259 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %260 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %259, i32 0, i32 1
  store i32 0, i32* %260, align 4
  %261 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %262 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %261, i32 0, i32 2
  store i32 0, i32* %262, align 8
  br label %268

263:                                              ; preds = %253
  %264 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %265 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %264, i32 0, i32 1
  store i32 1, i32* %265, align 4
  %266 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %267 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %266, i32 0, i32 2
  store i32 1, i32* %267, align 8
  br label %268

268:                                              ; preds = %263, %258
  br label %269

269:                                              ; preds = %268, %248
  br label %286

270:                                              ; preds = %233
  %271 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %272 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %271, i32 0, i32 6
  %273 = call i64 @sli_get_is_ulp_enabled(i32* %272, i32 0)
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %280

275:                                              ; preds = %270
  %276 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %277 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %276, i32 0, i32 1
  store i32 0, i32* %277, align 4
  %278 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %279 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %278, i32 0, i32 2
  store i32 0, i32* %279, align 8
  br label %285

280:                                              ; preds = %270
  %281 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %282 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %281, i32 0, i32 1
  store i32 1, i32* %282, align 4
  %283 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %284 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %283, i32 0, i32 2
  store i32 1, i32* %284, align 8
  br label %285

285:                                              ; preds = %280, %275
  br label %286

286:                                              ; preds = %285, %269
  %287 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %288 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %287, i32 0, i32 3
  %289 = load i32, i32* %288, align 4
  %290 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %291 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %294 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %293, i32 0, i32 2
  %295 = load i32, i32* %294, align 8
  %296 = call i32 @ocs_log_debug(i32 %289, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %292, i32 %295)
  %297 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @hw_global, i32 0, i32 0), align 4
  %298 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %299 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %298, i32 0, i32 4
  %300 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %299, i32 0, i32 5
  store i32 %297, i32* %300, align 8
  %301 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %302 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %303 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %302, i32 0, i32 4
  %304 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %303, i32 0, i32 5
  %305 = load i32, i32* %304, align 8
  %306 = call %struct.TYPE_18__* @ocs_hw_qtop_parse(%struct.TYPE_17__* %301, i32 %305)
  %307 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %308 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %307, i32 0, i32 5
  store %struct.TYPE_18__* %306, %struct.TYPE_18__** %308, align 8
  %309 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %310 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %309, i32 0, i32 5
  %311 = load %struct.TYPE_18__*, %struct.TYPE_18__** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %311, i32 0, i32 0
  %313 = load i64*, i64** %312, align 8
  %314 = load i64, i64* @QTOP_EQ, align 8
  %315 = getelementptr inbounds i64, i64* %313, i64 %314
  %316 = load i64, i64* %315, align 8
  %317 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %318 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %317, i32 0, i32 4
  %319 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %318, i32 0, i32 0
  store i64 %316, i64* %319, align 8
  %320 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %321 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %320, i32 0, i32 5
  %322 = load %struct.TYPE_18__*, %struct.TYPE_18__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %322, i32 0, i32 0
  %324 = load i64*, i64** %323, align 8
  %325 = load i64, i64* @QTOP_CQ, align 8
  %326 = getelementptr inbounds i64, i64* %324, i64 %325
  %327 = load i64, i64* %326, align 8
  %328 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %329 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %328, i32 0, i32 4
  %330 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %329, i32 0, i32 1
  store i64 %327, i64* %330, align 8
  %331 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %332 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %331, i32 0, i32 5
  %333 = load %struct.TYPE_18__*, %struct.TYPE_18__** %332, align 8
  %334 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %333, i32 0, i32 0
  %335 = load i64*, i64** %334, align 8
  %336 = load i64, i64* @QTOP_RQ, align 8
  %337 = getelementptr inbounds i64, i64* %335, i64 %336
  %338 = load i64, i64* %337, align 8
  %339 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %340 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %339, i32 0, i32 4
  %341 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %340, i32 0, i32 2
  store i64 %338, i64* %341, align 8
  %342 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %343 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %342, i32 0, i32 5
  %344 = load %struct.TYPE_18__*, %struct.TYPE_18__** %343, align 8
  %345 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %344, i32 0, i32 0
  %346 = load i64*, i64** %345, align 8
  %347 = load i64, i64* @QTOP_WQ, align 8
  %348 = getelementptr inbounds i64, i64* %346, i64 %347
  %349 = load i64, i64* %348, align 8
  %350 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %351 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %350, i32 0, i32 4
  %352 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %351, i32 0, i32 3
  store i64 %349, i64* %352, align 8
  %353 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %354 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %353, i32 0, i32 5
  %355 = load %struct.TYPE_18__*, %struct.TYPE_18__** %354, align 8
  %356 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %355, i32 0, i32 0
  %357 = load i64*, i64** %356, align 8
  %358 = load i64, i64* @QTOP_MQ, align 8
  %359 = getelementptr inbounds i64, i64* %357, i64 %358
  %360 = load i64, i64* %359, align 8
  %361 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %362 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %361, i32 0, i32 4
  %363 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %362, i32 0, i32 4
  store i64 %360, i64* %363, align 8
  %364 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %365 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %364, i32 0, i32 4
  %366 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %365, i32 0, i32 2
  %367 = load i64, i64* %366, align 8
  %368 = load i64, i64* @OCE_HW_MAX_NUM_MRQ_PAIRS, align 8
  %369 = icmp sgt i64 %367, %368
  br i1 %369, label %370, label %377

370:                                              ; preds = %286
  %371 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %372 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %371, i32 0, i32 3
  %373 = load i32, i32* %372, align 4
  %374 = load i64, i64* @OCE_HW_MAX_NUM_MRQ_PAIRS, align 8
  %375 = call i32 @ocs_log_crit(i32 %373, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i64 %374)
  %376 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %376, i32* %4, align 4
  br label %435

377:                                              ; preds = %286
  %378 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %379 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %378, i32 0, i32 4
  %380 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %379, i32 0, i32 0
  %381 = load i64, i64* %380, align 8
  %382 = load i64, i64* @OCS_HW_MAX_NUM_EQ, align 8
  %383 = icmp sgt i64 %381, %382
  br i1 %383, label %384, label %391

384:                                              ; preds = %377
  %385 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %386 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %385, i32 0, i32 3
  %387 = load i32, i32* %386, align 4
  %388 = load i64, i64* @OCS_HW_MAX_NUM_EQ, align 8
  %389 = call i32 @ocs_log_crit(i32 %387, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i64 %388)
  %390 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %390, i32* %4, align 4
  br label %435

391:                                              ; preds = %377
  %392 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %393 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %392, i32 0, i32 4
  %394 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %393, i32 0, i32 1
  %395 = load i64, i64* %394, align 8
  %396 = load i64, i64* @OCS_HW_MAX_NUM_CQ, align 8
  %397 = icmp sgt i64 %395, %396
  br i1 %397, label %398, label %405

398:                                              ; preds = %391
  %399 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %400 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %399, i32 0, i32 3
  %401 = load i32, i32* %400, align 4
  %402 = load i64, i64* @OCS_HW_MAX_NUM_CQ, align 8
  %403 = call i32 @ocs_log_crit(i32 %401, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i64 %402)
  %404 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %404, i32* %4, align 4
  br label %435

405:                                              ; preds = %391
  %406 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %407 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %406, i32 0, i32 4
  %408 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %407, i32 0, i32 3
  %409 = load i64, i64* %408, align 8
  %410 = load i64, i64* @OCS_HW_MAX_NUM_WQ, align 8
  %411 = icmp sgt i64 %409, %410
  br i1 %411, label %412, label %419

412:                                              ; preds = %405
  %413 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %414 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %413, i32 0, i32 3
  %415 = load i32, i32* %414, align 4
  %416 = load i64, i64* @OCS_HW_MAX_NUM_WQ, align 8
  %417 = call i32 @ocs_log_crit(i32 %415, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i64 %416)
  %418 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %418, i32* %4, align 4
  br label %435

419:                                              ; preds = %405
  %420 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %421 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %420, i32 0, i32 4
  %422 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %421, i32 0, i32 4
  %423 = load i64, i64* %422, align 8
  %424 = load i64, i64* @OCS_HW_MAX_NUM_MQ, align 8
  %425 = icmp sgt i64 %423, %424
  br i1 %425, label %426, label %433

426:                                              ; preds = %419
  %427 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %428 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %427, i32 0, i32 3
  %429 = load i32, i32* %428, align 4
  %430 = load i64, i64* @OCS_HW_MAX_NUM_MQ, align 8
  %431 = call i32 @ocs_log_crit(i32 %429, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i64 %430)
  %432 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %432, i32* %4, align 4
  br label %435

433:                                              ; preds = %419
  %434 = load i32, i32* @OCS_HW_RTN_SUCCESS, align 4
  store i32 %434, i32* %4, align 4
  br label %435

435:                                              ; preds = %433, %426, %412, %398, %384, %370, %111, %22, %12
  %436 = load i32, i32* %4, align 4
  ret i32 %436
}

declare dso_local i32 @ocs_log_err(i32, i8*, ...) #1

declare dso_local i32 @ocs_hw_workaround_setup(%struct.TYPE_17__*) #1

declare dso_local i32 @ocs_memset(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @ocs_lock_init(i32, i32*, i8*, i32) #1

declare dso_local i32 @ocs_instance(i32) #1

declare dso_local i32 @ocs_list_init(i32*, i32, i32) #1

declare dso_local i32 @ocs_atomic_init(i32*, i32) #1

declare dso_local i64 @sli_setup(i32*, i32, i32) #1

declare dso_local i32 @ocs_hw_link_event_init(%struct.TYPE_17__*) #1

declare dso_local i32 @sli_callback(i32*, i32, i32, %struct.TYPE_17__*) #1

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @sli_get_max_qentries(i32*, i64) #1

declare dso_local i32 @sli_get_max_rsrc(i32*, i32) #1

declare dso_local i64 @ocs_get_property(i8*, i8*, i32) #1

declare dso_local i32 @ocs_strtoul(i8*, i32, i32) #1

declare dso_local i64 @sli_get_if_type(i32*) #1

declare dso_local i32 @ocs_hw_read_max_dump_size(%struct.TYPE_17__*) #1

declare dso_local i32 @ocs_hw_adjust_wqs(%struct.TYPE_17__*) #1

declare dso_local i32 @sli_is_dif_inline_capable(i32*) #1

declare dso_local i32 @ocs_log_test(i32, i8*) #1

declare dso_local i64 @sli_get_is_dual_ulp_capable(i32*) #1

declare dso_local i64 @sli_get_is_ulp_enabled(i32*, i32) #1

declare dso_local i32 @ocs_log_debug(i32, i8*, i32, i32) #1

declare dso_local %struct.TYPE_18__* @ocs_hw_qtop_parse(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @ocs_log_crit(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
