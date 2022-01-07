; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_init.c_pqisrc_report_pqi_capability.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_init.c_pqisrc_report_pqi_capability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32, i32, i32, %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_31__ = type { i8*, i32, i32, %struct.TYPE_26__, i32, i32, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { %struct.TYPE_24__, i32 }
%struct.TYPE_24__ = type { i32, i32, i32 }
%struct.TYPE_30__ = type { %struct.TYPE_29__*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_29__ = type { i32, i32, i32 }

@PQI_STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"IN\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Failed to allocate memory for capability\0A\00", align 1
@PQI_STATUS_FAILURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"pqi_cap_buf\00", align 1
@REPORT_PQI_DEV_CAP_DATA_BUF_SIZE = common dso_local global i32 0, align 4
@PQISRC_DEFAULT_DMA_ALIGN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"Failed to allocate capability DMA buffer : %d\0A\00", align 1
@PQI_FUNCTION_REPORT_DEV_CAP = common dso_local global i32 0, align 4
@SGL_DESCRIPTOR_CODE_DATA_BLOCK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [55 x i8] c"Failed to send admin req report pqi device capability\0A\00", align 1
@PQI_PROTOCOL_SOP = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [32 x i8] c"softs->pqi_dev_cap.max_iqs: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"softs->pqi_dev_cap.max_iq_elements: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"softs->pqi_dev_cap.max_iq_elem_len: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"softs->pqi_dev_cap.min_iq_elem_len: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"softs->pqi_dev_cap.max_oqs: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"softs->pqi_dev_cap.max_oq_elements: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"softs->pqi_dev_cap.max_oq_elem_len: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [53 x i8] c"softs->pqi_dev_cap.intr_coales_time_granularity: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"softs->max_ib_iu_length_per_fw: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"softs->ib_spanning_supported: %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"softs->ob_spanning_supported: %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"OUT\0A\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"failed OUT\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_28__*)* @pqisrc_report_pqi_capability to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pqisrc_report_pqi_capability(%struct.TYPE_28__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_28__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_31__, align 8
  %6 = alloca %struct.TYPE_31__, align 8
  %7 = alloca %struct.TYPE_31__, align 8
  %8 = alloca %struct.TYPE_30__*, align 8
  %9 = alloca %struct.TYPE_29__*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %3, align 8
  %10 = load i32, i32* @PQI_STATUS_SUCCESS, align 4
  store i32 %10, i32* %4, align 4
  %11 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %8, align 8
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %9, align 8
  %12 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %13 = call %struct.TYPE_30__* @os_mem_alloc(%struct.TYPE_28__* %12, i32 40)
  store %struct.TYPE_30__* %13, %struct.TYPE_30__** %8, align 8
  %14 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %15 = icmp ne %struct.TYPE_30__* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = call i32 (i8*, ...) @DBG_ERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32, i32* @PQI_STATUS_FAILURE, align 4
  store i32 %18, i32* %4, align 4
  br label %217

19:                                               ; preds = %1
  %20 = call i32 @memset(%struct.TYPE_31__* %5, i32 0, i32 48)
  %21 = call i32 @memset(%struct.TYPE_31__* %6, i32 0, i32 48)
  %22 = call i32 @memset(%struct.TYPE_31__* %7, i32 0, i32 4)
  %23 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %7, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8** %23, align 8
  %24 = load i32, i32* @REPORT_PQI_DEV_CAP_DATA_BUF_SIZE, align 4
  %25 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %7, i32 0, i32 1
  store i32 %24, i32* %25, align 8
  %26 = load i32, i32* @PQISRC_DEFAULT_DMA_ALIGN, align 4
  %27 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %7, i32 0, i32 6
  store i32 %26, i32* %27, align 8
  %28 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %29 = call i32 @os_dma_mem_alloc(%struct.TYPE_28__* %28, %struct.TYPE_31__* %7)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %19
  %33 = load i32, i32* %4, align 4
  %34 = call i32 (i8*, ...) @DBG_ERR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %33)
  br label %207

35:                                               ; preds = %19
  %36 = load i32, i32* @PQI_FUNCTION_REPORT_DEV_CAP, align 4
  %37 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %5, i32 0, i32 5
  store i32 %36, i32* %37, align 4
  %38 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %7, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %5, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %41, i32 0, i32 1
  store i32 %39, i32* %42, align 4
  %43 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %7, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %5, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %47, i32 0, i32 2
  store i32 %44, i32* %48, align 8
  %49 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %7, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %5, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %53, i32 0, i32 1
  store i32 %50, i32* %54, align 4
  %55 = load i32, i32* @SGL_DESCRIPTOR_CODE_DATA_BLOCK, align 4
  %56 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %5, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %58, i32 0, i32 0
  store i32 %55, i32* %59, align 8
  %60 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %61 = call i32 @pqisrc_submit_admin_req(%struct.TYPE_28__* %60, %struct.TYPE_31__* %5, %struct.TYPE_31__* %6)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* @PQI_STATUS_SUCCESS, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %35
  %66 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %7, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %7, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @memcpy(%struct.TYPE_30__* %66, i32 %68, i32 %70)
  br label %74

72:                                               ; preds = %35
  %73 = call i32 (i8*, ...) @DBG_ERR(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0))
  br label %204

74:                                               ; preds = %65
  %75 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %75, i32 0, i32 8
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %79, i32 0, i32 7
  store i32 %77, i32* %80, align 4
  %81 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %81, i32 0, i32 7
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %85, i32 0, i32 6
  store i32 %83, i32* %86, align 4
  %87 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %91, i32 0, i32 5
  store i32 %89, i32* %92, align 4
  %93 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %97, i32 0, i32 4
  store i32 %95, i32* %98, align 4
  %99 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %103, i32 0, i32 3
  store i32 %101, i32* %104, align 4
  %105 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %109, i32 0, i32 2
  store i32 %107, i32* %110, align 4
  %111 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %115, i32 0, i32 1
  store i32 %113, i32* %116, align 4
  %117 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %121, i32 0, i32 0
  store i32 %119, i32* %122, align 4
  %123 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_29__*, %struct.TYPE_29__** %124, align 8
  %126 = load i64, i64* @PQI_PROTOCOL_SOP, align 8
  %127 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %125, i64 %126
  store %struct.TYPE_29__* %127, %struct.TYPE_29__** %9, align 8
  %128 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %131, i32 0, i32 2
  store i32 %130, i32* %132, align 4
  %133 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 4
  %138 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 4
  %143 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %144, i32 0, i32 7
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @DBG_INIT(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %146)
  %148 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %149, i32 0, i32 6
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @DBG_INIT(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i32 %151)
  %153 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %153, i32 0, i32 3
  %155 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %154, i32 0, i32 5
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @DBG_INIT(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i32 %156)
  %158 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %158, i32 0, i32 3
  %160 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @DBG_INIT(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i32 %161)
  %163 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %163, i32 0, i32 3
  %165 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @DBG_INIT(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i32 %166)
  %168 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %168, i32 0, i32 3
  %170 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @DBG_INIT(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0), i32 %171)
  %173 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %173, i32 0, i32 3
  %175 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @DBG_INIT(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0), i32 %176)
  %178 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %178, i32 0, i32 3
  %180 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @DBG_INIT(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.12, i64 0, i64 0), i32 %181)
  %183 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @DBG_INIT(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i64 0, i64 0), i32 %185)
  %187 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @DBG_INIT(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0), i32 %189)
  %191 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @DBG_INIT(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i64 0, i64 0), i32 %193)
  %195 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %196 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %197 = bitcast %struct.TYPE_30__* %196 to i8*
  %198 = load i32, i32* @REPORT_PQI_DEV_CAP_DATA_BUF_SIZE, align 4
  %199 = call i32 @os_mem_free(%struct.TYPE_28__* %195, i8* %197, i32 %198)
  %200 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %201 = call i32 @os_dma_mem_free(%struct.TYPE_28__* %200, %struct.TYPE_31__* %7)
  %202 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  %203 = load i32, i32* %4, align 4
  store i32 %203, i32* %2, align 4
  br label %220

204:                                              ; preds = %72
  %205 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %206 = call i32 @os_dma_mem_free(%struct.TYPE_28__* %205, %struct.TYPE_31__* %7)
  br label %207

207:                                              ; preds = %204, %32
  %208 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %209 = icmp ne %struct.TYPE_30__* %208, null
  br i1 %209, label %210, label %216

210:                                              ; preds = %207
  %211 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %212 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %213 = bitcast %struct.TYPE_30__* %212 to i8*
  %214 = load i32, i32* @REPORT_PQI_DEV_CAP_DATA_BUF_SIZE, align 4
  %215 = call i32 @os_mem_free(%struct.TYPE_28__* %211, i8* %213, i32 %214)
  br label %216

216:                                              ; preds = %210, %207
  br label %217

217:                                              ; preds = %216, %16
  %218 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0))
  %219 = load i32, i32* @PQI_STATUS_FAILURE, align 4
  store i32 %219, i32* %2, align 4
  br label %220

220:                                              ; preds = %217, %74
  %221 = load i32, i32* %2, align 4
  ret i32 %221
}

declare dso_local i32 @DBG_FUNC(i8*) #1

declare dso_local %struct.TYPE_30__* @os_mem_alloc(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @DBG_ERR(i8*, ...) #1

declare dso_local i32 @memset(%struct.TYPE_31__*, i32, i32) #1

declare dso_local i32 @os_dma_mem_alloc(%struct.TYPE_28__*, %struct.TYPE_31__*) #1

declare dso_local i32 @pqisrc_submit_admin_req(%struct.TYPE_28__*, %struct.TYPE_31__*, %struct.TYPE_31__*) #1

declare dso_local i32 @memcpy(%struct.TYPE_30__*, i32, i32) #1

declare dso_local i32 @DBG_INIT(i8*, i32) #1

declare dso_local i32 @os_mem_free(%struct.TYPE_28__*, i8*, i32) #1

declare dso_local i32 @os_dma_mem_free(%struct.TYPE_28__*, %struct.TYPE_31__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
