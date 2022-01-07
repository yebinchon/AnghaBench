; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/storvsc/extr_hv_storvsc_drv_freebsd.c_create_storvsc_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/storvsc/extr_hv_storvsc_drv_freebsd.c_create_storvsc_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ccb = type { %struct.ccb_scsiio }
%struct.ccb_scsiio = type { i64, i32, i64, i32, i32, i32, %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32, i32 }
%struct.hv_storvsc_request = type { i32, i32, i32, %struct.TYPE_24__*, %struct.TYPE_20__*, %struct.TYPE_28__, %struct.storvsc_gpa_range, i32, %union.ccb*, i32, i32* }
%struct.TYPE_24__ = type { %struct.TYPE_23__, i32 }
%struct.TYPE_23__ = type { i32, i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_28__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, %struct.TYPE_29__, %struct.TYPE_25__, i32, i32, i32, i32, i32 }
%struct.TYPE_29__ = type { i32, i32 }
%struct.TYPE_25__ = type { i32 }
%struct.storvsc_gpa_range = type { i8**, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i64, i32 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_27__ = type { i32, i32, i32, i32 }

@CAM_CDB_POINTER = common dso_local global i32 0, align 4
@hv_storvsc_use_win8ext_flags = common dso_local global i64 0, align 8
@SRB_FLAGS_DISABLE_SYNCH_TRANSFER = common dso_local global i32 0, align 4
@CAM_DIR_MASK = common dso_local global i32 0, align 4
@WRITE_TYPE = common dso_local global i32 0, align 4
@SRB_FLAGS_DATA_OUT = common dso_local global i32 0, align 4
@READ_TYPE = common dso_local global i32 0, align 4
@SRB_FLAGS_DATA_IN = common dso_local global i32 0, align 4
@UNKNOWN_TYPE = common dso_local global i32 0, align 4
@SRB_FLAGS_NO_DATA_TRANSFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Error: unexpected data direction: 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CAM_DATA_MASK = common dso_local global i32 0, align 4
@storvsc_xferbuf_prepare = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"bus_dmamap_load_ccb failed: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Storvsc: get SG I/O operation, %d\0A\00", align 1
@STORVSC_DATA_SEGCNT_MAX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [60 x i8] c"Storvsc: %d segments is too much, only support %d segments\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"Storvsc_error: create bounce buffer failed.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [18 x i8] c"Unknow flags: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.ccb*, %struct.hv_storvsc_request*)* @create_storvsc_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_storvsc_request(%union.ccb* %0, %struct.hv_storvsc_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.ccb*, align 8
  %5 = alloca %struct.hv_storvsc_request*, align 8
  %6 = alloca %struct.ccb_scsiio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.storvsc_gpa_range*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_19__*, align 8
  %16 = alloca i32, align 4
  store %union.ccb* %0, %union.ccb** %4, align 8
  store %struct.hv_storvsc_request* %1, %struct.hv_storvsc_request** %5, align 8
  %17 = load %union.ccb*, %union.ccb** %4, align 8
  %18 = bitcast %union.ccb* %17 to %struct.ccb_scsiio*
  store %struct.ccb_scsiio* %18, %struct.ccb_scsiio** %6, align 8
  store i32 0, i32* %9, align 4
  %19 = load %union.ccb*, %union.ccb** %4, align 8
  %20 = bitcast %union.ccb* %19 to %struct.TYPE_27__*
  %21 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @xpt_path_sim(i32 %22)
  %24 = call i32 @cam_sim_unit(i32 %23)
  %25 = load %struct.hv_storvsc_request*, %struct.hv_storvsc_request** %5, align 8
  %26 = getelementptr inbounds %struct.hv_storvsc_request, %struct.hv_storvsc_request* %25, i32 0, i32 5
  %27 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 7
  store i32 %24, i32* %29, align 8
  %30 = load %union.ccb*, %union.ccb** %4, align 8
  %31 = bitcast %union.ccb* %30 to %struct.TYPE_27__*
  %32 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @xpt_path_sim(i32 %33)
  %35 = call i32 @cam_sim_bus(i32 %34)
  %36 = load %struct.hv_storvsc_request*, %struct.hv_storvsc_request** %5, align 8
  %37 = getelementptr inbounds %struct.hv_storvsc_request, %struct.hv_storvsc_request* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 6
  store i32 %35, i32* %40, align 4
  %41 = load %union.ccb*, %union.ccb** %4, align 8
  %42 = bitcast %union.ccb* %41 to %struct.TYPE_27__*
  %43 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.hv_storvsc_request*, %struct.hv_storvsc_request** %5, align 8
  %46 = getelementptr inbounds %struct.hv_storvsc_request, %struct.hv_storvsc_request* %45, i32 0, i32 5
  %47 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 5
  store i32 %44, i32* %49, align 8
  %50 = load %union.ccb*, %union.ccb** %4, align 8
  %51 = bitcast %union.ccb* %50 to %struct.TYPE_27__*
  %52 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.hv_storvsc_request*, %struct.hv_storvsc_request** %5, align 8
  %55 = getelementptr inbounds %struct.hv_storvsc_request, %struct.hv_storvsc_request* %54, i32 0, i32 5
  %56 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 4
  store i32 %53, i32* %58, align 4
  %59 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %60 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.hv_storvsc_request*, %struct.hv_storvsc_request** %5, align 8
  %63 = getelementptr inbounds %struct.hv_storvsc_request, %struct.hv_storvsc_request* %62, i32 0, i32 5
  %64 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 3
  store i32 %61, i32* %66, align 8
  %67 = load %union.ccb*, %union.ccb** %4, align 8
  %68 = bitcast %union.ccb* %67 to %struct.TYPE_27__*
  %69 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @CAM_CDB_POINTER, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %89

74:                                               ; preds = %2
  %75 = load %struct.hv_storvsc_request*, %struct.hv_storvsc_request** %5, align 8
  %76 = getelementptr inbounds %struct.hv_storvsc_request, %struct.hv_storvsc_request* %75, i32 0, i32 5
  %77 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %79, i32 0, i32 0
  %81 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %82 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %81, i32 0, i32 6
  %83 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %86 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @memcpy(i32* %80, i32 %84, i32 %87)
  br label %104

89:                                               ; preds = %2
  %90 = load %struct.hv_storvsc_request*, %struct.hv_storvsc_request** %5, align 8
  %91 = getelementptr inbounds %struct.hv_storvsc_request, %struct.hv_storvsc_request* %90, i32 0, i32 5
  %92 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %94, i32 0, i32 0
  %96 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %97 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %96, i32 0, i32 6
  %98 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %101 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @memcpy(i32* %95, i32 %99, i32 %102)
  br label %104

104:                                              ; preds = %89, %74
  %105 = load i64, i64* @hv_storvsc_use_win8ext_flags, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %123

107:                                              ; preds = %104
  %108 = load %struct.hv_storvsc_request*, %struct.hv_storvsc_request** %5, align 8
  %109 = getelementptr inbounds %struct.hv_storvsc_request, %struct.hv_storvsc_request* %108, i32 0, i32 5
  %110 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %112, i32 0, i32 0
  store i32 60, i32* %113, align 4
  %114 = load i32, i32* @SRB_FLAGS_DISABLE_SYNCH_TRANSFER, align 4
  %115 = load %struct.hv_storvsc_request*, %struct.hv_storvsc_request** %5, align 8
  %116 = getelementptr inbounds %struct.hv_storvsc_request, %struct.hv_storvsc_request* %115, i32 0, i32 5
  %117 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = or i32 %121, %114
  store i32 %122, i32* %120, align 4
  br label %123

123:                                              ; preds = %107, %104
  %124 = load %union.ccb*, %union.ccb** %4, align 8
  %125 = bitcast %union.ccb* %124 to %struct.TYPE_27__*
  %126 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @CAM_DIR_MASK, align 4
  %129 = and i32 %127, %128
  switch i32 %129, label %190 [
    i32 128, label %130
    i32 130, label %150
    i32 129, label %170
  ]

130:                                              ; preds = %123
  %131 = load i32, i32* @WRITE_TYPE, align 4
  %132 = load %struct.hv_storvsc_request*, %struct.hv_storvsc_request** %5, align 8
  %133 = getelementptr inbounds %struct.hv_storvsc_request, %struct.hv_storvsc_request* %132, i32 0, i32 5
  %134 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 0
  store i32 %131, i32* %136, align 8
  %137 = load i64, i64* @hv_storvsc_use_win8ext_flags, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %149

139:                                              ; preds = %130
  %140 = load i32, i32* @SRB_FLAGS_DATA_OUT, align 4
  %141 = load %struct.hv_storvsc_request*, %struct.hv_storvsc_request** %5, align 8
  %142 = getelementptr inbounds %struct.hv_storvsc_request, %struct.hv_storvsc_request* %141, i32 0, i32 5
  %143 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = or i32 %147, %140
  store i32 %148, i32* %146, align 4
  br label %149

149:                                              ; preds = %139, %130
  br label %199

150:                                              ; preds = %123
  %151 = load i32, i32* @READ_TYPE, align 4
  %152 = load %struct.hv_storvsc_request*, %struct.hv_storvsc_request** %5, align 8
  %153 = getelementptr inbounds %struct.hv_storvsc_request, %struct.hv_storvsc_request* %152, i32 0, i32 5
  %154 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 0
  store i32 %151, i32* %156, align 8
  %157 = load i64, i64* @hv_storvsc_use_win8ext_flags, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %169

159:                                              ; preds = %150
  %160 = load i32, i32* @SRB_FLAGS_DATA_IN, align 4
  %161 = load %struct.hv_storvsc_request*, %struct.hv_storvsc_request** %5, align 8
  %162 = getelementptr inbounds %struct.hv_storvsc_request, %struct.hv_storvsc_request* %161, i32 0, i32 5
  %163 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = or i32 %167, %160
  store i32 %168, i32* %166, align 4
  br label %169

169:                                              ; preds = %159, %150
  br label %199

170:                                              ; preds = %123
  %171 = load i32, i32* @UNKNOWN_TYPE, align 4
  %172 = load %struct.hv_storvsc_request*, %struct.hv_storvsc_request** %5, align 8
  %173 = getelementptr inbounds %struct.hv_storvsc_request, %struct.hv_storvsc_request* %172, i32 0, i32 5
  %174 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %175, i32 0, i32 0
  store i32 %171, i32* %176, align 8
  %177 = load i64, i64* @hv_storvsc_use_win8ext_flags, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %189

179:                                              ; preds = %170
  %180 = load i32, i32* @SRB_FLAGS_NO_DATA_TRANSFER, align 4
  %181 = load %struct.hv_storvsc_request*, %struct.hv_storvsc_request** %5, align 8
  %182 = getelementptr inbounds %struct.hv_storvsc_request, %struct.hv_storvsc_request* %181, i32 0, i32 5
  %183 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = or i32 %187, %180
  store i32 %188, i32* %186, align 4
  br label %189

189:                                              ; preds = %179, %170
  br label %199

190:                                              ; preds = %123
  %191 = load %union.ccb*, %union.ccb** %4, align 8
  %192 = bitcast %union.ccb* %191 to %struct.TYPE_27__*
  %193 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @CAM_DIR_MASK, align 4
  %196 = and i32 %194, %195
  %197 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %196)
  %198 = load i32, i32* @EINVAL, align 4
  store i32 %198, i32* %3, align 4
  br label %543

199:                                              ; preds = %189, %169, %149
  %200 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %201 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %200, i32 0, i32 4
  %202 = load %struct.hv_storvsc_request*, %struct.hv_storvsc_request** %5, align 8
  %203 = getelementptr inbounds %struct.hv_storvsc_request, %struct.hv_storvsc_request* %202, i32 0, i32 10
  store i32* %201, i32** %203, align 8
  %204 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %205 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.hv_storvsc_request*, %struct.hv_storvsc_request** %5, align 8
  %208 = getelementptr inbounds %struct.hv_storvsc_request, %struct.hv_storvsc_request* %207, i32 0, i32 9
  store i32 %206, i32* %208, align 8
  %209 = load %union.ccb*, %union.ccb** %4, align 8
  %210 = load %struct.hv_storvsc_request*, %struct.hv_storvsc_request** %5, align 8
  %211 = getelementptr inbounds %struct.hv_storvsc_request, %struct.hv_storvsc_request* %210, i32 0, i32 8
  store %union.ccb* %209, %union.ccb** %211, align 8
  %212 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %213 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = icmp eq i64 0, %214
  br i1 %215, label %216, label %217

216:                                              ; preds = %199
  store i32 0, i32* %3, align 4
  br label %543

217:                                              ; preds = %199
  %218 = load %union.ccb*, %union.ccb** %4, align 8
  %219 = bitcast %union.ccb* %218 to %struct.TYPE_27__*
  %220 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* @CAM_DATA_MASK, align 4
  %223 = and i32 %221, %222
  switch i32 %223, label %535 [
    i32 133, label %224
    i32 131, label %224
    i32 132, label %273
  ]

224:                                              ; preds = %217, %217
  %225 = load %struct.hv_storvsc_request*, %struct.hv_storvsc_request** %5, align 8
  %226 = getelementptr inbounds %struct.hv_storvsc_request, %struct.hv_storvsc_request* %225, i32 0, i32 3
  %227 = load %struct.TYPE_24__*, %struct.TYPE_24__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.hv_storvsc_request*, %struct.hv_storvsc_request** %5, align 8
  %231 = getelementptr inbounds %struct.hv_storvsc_request, %struct.hv_storvsc_request* %230, i32 0, i32 7
  %232 = load i32, i32* %231, align 8
  %233 = load %union.ccb*, %union.ccb** %4, align 8
  %234 = load i32, i32* @storvsc_xferbuf_prepare, align 4
  %235 = load %struct.hv_storvsc_request*, %struct.hv_storvsc_request** %5, align 8
  %236 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %237 = call i32 @bus_dmamap_load_ccb(i32 %229, i32 %232, %union.ccb* %233, i32 %234, %struct.hv_storvsc_request* %235, i32 %236)
  store i32 %237, i32* %10, align 4
  %238 = load i32, i32* %10, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %248

240:                                              ; preds = %224
  %241 = load %union.ccb*, %union.ccb** %4, align 8
  %242 = bitcast %union.ccb* %241 to %struct.TYPE_27__*
  %243 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* %10, align 4
  %246 = call i32 @xpt_print(i32 %244, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %245)
  %247 = load i32, i32* %10, align 4
  store i32 %247, i32* %3, align 4
  br label %543

248:                                              ; preds = %224
  %249 = load %union.ccb*, %union.ccb** %4, align 8
  %250 = bitcast %union.ccb* %249 to %struct.TYPE_27__*
  %251 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = load i32, i32* @CAM_DATA_MASK, align 4
  %254 = and i32 %252, %253
  %255 = icmp eq i32 %254, 133
  br i1 %255, label %256, label %264

256:                                              ; preds = %248
  %257 = load %struct.hv_storvsc_request*, %struct.hv_storvsc_request** %5, align 8
  %258 = getelementptr inbounds %struct.hv_storvsc_request, %struct.hv_storvsc_request* %257, i32 0, i32 3
  %259 = load %struct.TYPE_24__*, %struct.TYPE_24__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %261, align 4
  br label %272

264:                                              ; preds = %248
  %265 = load %struct.hv_storvsc_request*, %struct.hv_storvsc_request** %5, align 8
  %266 = getelementptr inbounds %struct.hv_storvsc_request, %struct.hv_storvsc_request* %265, i32 0, i32 3
  %267 = load %struct.TYPE_24__*, %struct.TYPE_24__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %269, align 4
  br label %272

272:                                              ; preds = %264, %256
  br label %542

273:                                              ; preds = %217
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %274 = load %union.ccb*, %union.ccb** %4, align 8
  %275 = bitcast %union.ccb* %274 to %struct.ccb_scsiio*
  %276 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %275, i32 0, i32 2
  %277 = load i64, i64* %276, align 8
  %278 = inttoptr i64 %277 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %278, %struct.TYPE_19__** %15, align 8
  %279 = load %union.ccb*, %union.ccb** %4, align 8
  %280 = bitcast %union.ccb* %279 to %struct.ccb_scsiio*
  %281 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 8
  store i32 %282, i32* %16, align 4
  %283 = load %struct.hv_storvsc_request*, %struct.hv_storvsc_request** %5, align 8
  %284 = getelementptr inbounds %struct.hv_storvsc_request, %struct.hv_storvsc_request* %283, i32 0, i32 6
  store %struct.storvsc_gpa_range* %284, %struct.storvsc_gpa_range** %11, align 8
  %285 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %286 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %285, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  %288 = load %struct.storvsc_gpa_range*, %struct.storvsc_gpa_range** %11, align 8
  %289 = getelementptr inbounds %struct.storvsc_gpa_range, %struct.storvsc_gpa_range* %288, i32 0, i32 1
  %290 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %289, i32 0, i32 0
  store i64 %287, i64* %290, align 8
  %291 = load %struct.hv_storvsc_request*, %struct.hv_storvsc_request** %5, align 8
  %292 = getelementptr inbounds %struct.hv_storvsc_request, %struct.hv_storvsc_request* %291, i32 0, i32 5
  %293 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %296)
  %298 = load i32, i32* %16, align 4
  %299 = load i32, i32* @STORVSC_DATA_SEGCNT_MAX, align 4
  %300 = icmp sgt i32 %298, %299
  br i1 %300, label %301, label %306

301:                                              ; preds = %273
  %302 = load i32, i32* %16, align 4
  %303 = load i32, i32* @STORVSC_DATA_SEGCNT_MAX, align 4
  %304 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i32 %302, i32 %303)
  %305 = load i32, i32* @EINVAL, align 4
  store i32 %305, i32* %3, align 4
  br label %543

306:                                              ; preds = %273
  %307 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %308 = load i32, i32* %16, align 4
  %309 = call i32 @storvsc_check_bounce_buffer_sgl(%struct.TYPE_19__* %307, i32 %308, i32* %9)
  store i32 %309, i32* %14, align 4
  %310 = load i32, i32* %14, align 4
  %311 = icmp ne i32 %310, -1
  br i1 %311, label %312, label %446

312:                                              ; preds = %306
  %313 = load i32, i32* %16, align 4
  %314 = load %struct.hv_storvsc_request*, %struct.hv_storvsc_request** %5, align 8
  %315 = getelementptr inbounds %struct.hv_storvsc_request, %struct.hv_storvsc_request* %314, i32 0, i32 5
  %316 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %315, i32 0, i32 0
  %317 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = call %struct.TYPE_20__* @storvsc_create_bounce_buffer(i32 %313, i32 %319)
  %321 = load %struct.hv_storvsc_request*, %struct.hv_storvsc_request** %5, align 8
  %322 = getelementptr inbounds %struct.hv_storvsc_request, %struct.hv_storvsc_request* %321, i32 0, i32 4
  store %struct.TYPE_20__* %320, %struct.TYPE_20__** %322, align 8
  %323 = load %struct.hv_storvsc_request*, %struct.hv_storvsc_request** %5, align 8
  %324 = getelementptr inbounds %struct.hv_storvsc_request, %struct.hv_storvsc_request* %323, i32 0, i32 4
  %325 = load %struct.TYPE_20__*, %struct.TYPE_20__** %324, align 8
  %326 = icmp eq %struct.TYPE_20__* null, %325
  br i1 %326, label %327, label %330

327:                                              ; preds = %312
  %328 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  %329 = load i32, i32* @ENOMEM, align 4
  store i32 %329, i32* %3, align 4
  br label %543

330:                                              ; preds = %312
  %331 = load i32, i32* %16, align 4
  %332 = load %struct.hv_storvsc_request*, %struct.hv_storvsc_request** %5, align 8
  %333 = getelementptr inbounds %struct.hv_storvsc_request, %struct.hv_storvsc_request* %332, i32 0, i32 0
  store i32 %331, i32* %333, align 8
  %334 = load i32, i32* %9, align 4
  %335 = load %struct.hv_storvsc_request*, %struct.hv_storvsc_request** %5, align 8
  %336 = getelementptr inbounds %struct.hv_storvsc_request, %struct.hv_storvsc_request* %335, i32 0, i32 1
  store i32 %334, i32* %336, align 4
  %337 = load i32, i32* @WRITE_TYPE, align 4
  %338 = load %struct.hv_storvsc_request*, %struct.hv_storvsc_request** %5, align 8
  %339 = getelementptr inbounds %struct.hv_storvsc_request, %struct.hv_storvsc_request* %338, i32 0, i32 5
  %340 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %339, i32 0, i32 0
  %341 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %340, i32 0, i32 0
  %342 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 8
  %344 = icmp eq i32 %337, %343
  br i1 %344, label %345, label %355

345:                                              ; preds = %330
  %346 = load %struct.hv_storvsc_request*, %struct.hv_storvsc_request** %5, align 8
  %347 = getelementptr inbounds %struct.hv_storvsc_request, %struct.hv_storvsc_request* %346, i32 0, i32 4
  %348 = load %struct.TYPE_20__*, %struct.TYPE_20__** %347, align 8
  %349 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %350 = load i32, i32* %16, align 4
  %351 = load %struct.hv_storvsc_request*, %struct.hv_storvsc_request** %5, align 8
  %352 = getelementptr inbounds %struct.hv_storvsc_request, %struct.hv_storvsc_request* %351, i32 0, i32 1
  %353 = load i32, i32* %352, align 4
  %354 = call i32 @storvsc_copy_sgl_to_bounce_buf(%struct.TYPE_20__* %348, %struct.TYPE_19__* %349, i32 %350, i32 %353)
  br label %355

355:                                              ; preds = %345, %330
  %356 = load %struct.hv_storvsc_request*, %struct.hv_storvsc_request** %5, align 8
  %357 = getelementptr inbounds %struct.hv_storvsc_request, %struct.hv_storvsc_request* %356, i32 0, i32 1
  %358 = load i32, i32* %357, align 4
  %359 = and i32 %358, 1
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %371

361:                                              ; preds = %355
  %362 = load %struct.hv_storvsc_request*, %struct.hv_storvsc_request** %5, align 8
  %363 = getelementptr inbounds %struct.hv_storvsc_request, %struct.hv_storvsc_request* %362, i32 0, i32 4
  %364 = load %struct.TYPE_20__*, %struct.TYPE_20__** %363, align 8
  %365 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %364, i32 0, i32 0
  %366 = load %struct.TYPE_21__*, %struct.TYPE_21__** %365, align 8
  %367 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %366, i64 0
  %368 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %367, i32 0, i32 0
  %369 = load i64, i64* %368, align 8
  %370 = call i32 @vtophys(i64 %369)
  store i32 %370, i32* %7, align 4
  br label %377

371:                                              ; preds = %355
  %372 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %373 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %372, i64 0
  %374 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %373, i32 0, i32 0
  %375 = load i64, i64* %374, align 8
  %376 = call i32 @vtophys(i64 %375)
  store i32 %376, i32* %7, align 4
  br label %377

377:                                              ; preds = %371, %361
  %378 = load i32, i32* %7, align 4
  %379 = load i32, i32* @PAGE_MASK, align 4
  %380 = and i32 %378, %379
  %381 = load %struct.storvsc_gpa_range*, %struct.storvsc_gpa_range** %11, align 8
  %382 = getelementptr inbounds %struct.storvsc_gpa_range, %struct.storvsc_gpa_range* %381, i32 0, i32 1
  %383 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %382, i32 0, i32 1
  store i32 %380, i32* %383, align 8
  %384 = load i32, i32* %7, align 4
  %385 = load i32, i32* @PAGE_SHIFT, align 4
  %386 = ashr i32 %384, %385
  %387 = sext i32 %386 to i64
  %388 = inttoptr i64 %387 to i8*
  store i8* %388, i8** %8, align 8
  %389 = load i8*, i8** %8, align 8
  %390 = load %struct.storvsc_gpa_range*, %struct.storvsc_gpa_range** %11, align 8
  %391 = getelementptr inbounds %struct.storvsc_gpa_range, %struct.storvsc_gpa_range* %390, i32 0, i32 0
  %392 = load i8**, i8*** %391, align 8
  %393 = getelementptr inbounds i8*, i8** %392, i64 0
  store i8* %389, i8** %393, align 8
  store i32 1, i32* %12, align 4
  br label %394

394:                                              ; preds = %439, %377
  %395 = load i32, i32* %12, align 4
  %396 = load i32, i32* %16, align 4
  %397 = icmp slt i32 %395, %396
  br i1 %397, label %398, label %442

398:                                              ; preds = %394
  %399 = load %struct.hv_storvsc_request*, %struct.hv_storvsc_request** %5, align 8
  %400 = getelementptr inbounds %struct.hv_storvsc_request, %struct.hv_storvsc_request* %399, i32 0, i32 1
  %401 = load i32, i32* %400, align 4
  %402 = load i32, i32* %12, align 4
  %403 = shl i32 1, %402
  %404 = and i32 %401, %403
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %406, label %418

406:                                              ; preds = %398
  %407 = load %struct.hv_storvsc_request*, %struct.hv_storvsc_request** %5, align 8
  %408 = getelementptr inbounds %struct.hv_storvsc_request, %struct.hv_storvsc_request* %407, i32 0, i32 4
  %409 = load %struct.TYPE_20__*, %struct.TYPE_20__** %408, align 8
  %410 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %409, i32 0, i32 0
  %411 = load %struct.TYPE_21__*, %struct.TYPE_21__** %410, align 8
  %412 = load i32, i32* %12, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %411, i64 %413
  %415 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %414, i32 0, i32 0
  %416 = load i64, i64* %415, align 8
  %417 = call i32 @vtophys(i64 %416)
  store i32 %417, i32* %7, align 4
  br label %426

418:                                              ; preds = %398
  %419 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %420 = load i32, i32* %12, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %419, i64 %421
  %423 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %422, i32 0, i32 0
  %424 = load i64, i64* %423, align 8
  %425 = call i32 @vtophys(i64 %424)
  store i32 %425, i32* %7, align 4
  br label %426

426:                                              ; preds = %418, %406
  %427 = load i32, i32* %7, align 4
  %428 = load i32, i32* @PAGE_SHIFT, align 4
  %429 = ashr i32 %427, %428
  %430 = sext i32 %429 to i64
  %431 = inttoptr i64 %430 to i8*
  store i8* %431, i8** %8, align 8
  %432 = load i8*, i8** %8, align 8
  %433 = load %struct.storvsc_gpa_range*, %struct.storvsc_gpa_range** %11, align 8
  %434 = getelementptr inbounds %struct.storvsc_gpa_range, %struct.storvsc_gpa_range* %433, i32 0, i32 0
  %435 = load i8**, i8*** %434, align 8
  %436 = load i32, i32* %12, align 4
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds i8*, i8** %435, i64 %437
  store i8* %432, i8** %438, align 8
  br label %439

439:                                              ; preds = %426
  %440 = load i32, i32* %12, align 4
  %441 = add nsw i32 %440, 1
  store i32 %441, i32* %12, align 4
  br label %394

442:                                              ; preds = %394
  %443 = load i32, i32* %12, align 4
  %444 = load %struct.hv_storvsc_request*, %struct.hv_storvsc_request** %5, align 8
  %445 = getelementptr inbounds %struct.hv_storvsc_request, %struct.hv_storvsc_request* %444, i32 0, i32 2
  store i32 %443, i32* %445, align 8
  br label %527

446:                                              ; preds = %306
  %447 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %448 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %447, i64 0
  %449 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %448, i32 0, i32 0
  %450 = load i64, i64* %449, align 8
  %451 = call i32 @vtophys(i64 %450)
  store i32 %451, i32* %7, align 4
  %452 = load i32, i32* %7, align 4
  %453 = load i32, i32* @PAGE_MASK, align 4
  %454 = and i32 %452, %453
  %455 = load %struct.storvsc_gpa_range*, %struct.storvsc_gpa_range** %11, align 8
  %456 = getelementptr inbounds %struct.storvsc_gpa_range, %struct.storvsc_gpa_range* %455, i32 0, i32 1
  %457 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %456, i32 0, i32 1
  store i32 %454, i32* %457, align 8
  store i32 0, i32* %12, align 4
  br label %458

458:                                              ; preds = %482, %446
  %459 = load i32, i32* %12, align 4
  %460 = load i32, i32* %16, align 4
  %461 = icmp slt i32 %459, %460
  br i1 %461, label %462, label %485

462:                                              ; preds = %458
  %463 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %464 = load i32, i32* %12, align 4
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %463, i64 %465
  %467 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %466, i32 0, i32 0
  %468 = load i64, i64* %467, align 8
  %469 = call i32 @vtophys(i64 %468)
  store i32 %469, i32* %7, align 4
  %470 = load i32, i32* %7, align 4
  %471 = load i32, i32* @PAGE_SHIFT, align 4
  %472 = ashr i32 %470, %471
  %473 = sext i32 %472 to i64
  %474 = inttoptr i64 %473 to i8*
  store i8* %474, i8** %8, align 8
  %475 = load i8*, i8** %8, align 8
  %476 = load %struct.storvsc_gpa_range*, %struct.storvsc_gpa_range** %11, align 8
  %477 = getelementptr inbounds %struct.storvsc_gpa_range, %struct.storvsc_gpa_range* %476, i32 0, i32 0
  %478 = load i8**, i8*** %477, align 8
  %479 = load i32, i32* %12, align 4
  %480 = sext i32 %479 to i64
  %481 = getelementptr inbounds i8*, i8** %478, i64 %480
  store i8* %475, i8** %481, align 8
  br label %482

482:                                              ; preds = %462
  %483 = load i32, i32* %12, align 4
  %484 = add nsw i32 %483, 1
  store i32 %484, i32* %12, align 4
  br label %458

485:                                              ; preds = %458
  %486 = load i32, i32* %12, align 4
  %487 = load %struct.hv_storvsc_request*, %struct.hv_storvsc_request** %5, align 8
  %488 = getelementptr inbounds %struct.hv_storvsc_request, %struct.hv_storvsc_request* %487, i32 0, i32 2
  store i32 %486, i32* %488, align 8
  %489 = load i32, i32* %7, align 4
  %490 = load i32, i32* @PAGE_MASK, align 4
  %491 = and i32 %489, %490
  store i32 %491, i32* %13, align 4
  %492 = load i32, i32* %13, align 4
  %493 = icmp ne i32 %492, 0
  br i1 %493, label %494, label %524

494:                                              ; preds = %485
  %495 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %496 = load i32, i32* %12, align 4
  %497 = sub nsw i32 %496, 1
  %498 = sext i32 %497 to i64
  %499 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %495, i64 %498
  %500 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %499, i32 0, i32 0
  %501 = load i64, i64* %500, align 8
  %502 = load i64, i64* @PAGE_SIZE, align 8
  %503 = add nsw i64 %501, %502
  %504 = load i32, i32* %13, align 4
  %505 = sext i32 %504 to i64
  %506 = sub nsw i64 %503, %505
  %507 = call i32 @vtophys(i64 %506)
  store i32 %507, i32* %7, align 4
  %508 = load i32, i32* %7, align 4
  %509 = load i32, i32* @PAGE_SHIFT, align 4
  %510 = ashr i32 %508, %509
  %511 = sext i32 %510 to i64
  %512 = inttoptr i64 %511 to i8*
  store i8* %512, i8** %8, align 8
  %513 = load i8*, i8** %8, align 8
  %514 = load %struct.storvsc_gpa_range*, %struct.storvsc_gpa_range** %11, align 8
  %515 = getelementptr inbounds %struct.storvsc_gpa_range, %struct.storvsc_gpa_range* %514, i32 0, i32 0
  %516 = load i8**, i8*** %515, align 8
  %517 = load i32, i32* %12, align 4
  %518 = sext i32 %517 to i64
  %519 = getelementptr inbounds i8*, i8** %516, i64 %518
  store i8* %513, i8** %519, align 8
  %520 = load %struct.hv_storvsc_request*, %struct.hv_storvsc_request** %5, align 8
  %521 = getelementptr inbounds %struct.hv_storvsc_request, %struct.hv_storvsc_request* %520, i32 0, i32 2
  %522 = load i32, i32* %521, align 8
  %523 = add nsw i32 %522, 1
  store i32 %523, i32* %521, align 8
  br label %524

524:                                              ; preds = %494, %485
  %525 = load %struct.hv_storvsc_request*, %struct.hv_storvsc_request** %5, align 8
  %526 = getelementptr inbounds %struct.hv_storvsc_request, %struct.hv_storvsc_request* %525, i32 0, i32 0
  store i32 0, i32* %526, align 8
  br label %527

527:                                              ; preds = %524, %442
  %528 = load %struct.hv_storvsc_request*, %struct.hv_storvsc_request** %5, align 8
  %529 = getelementptr inbounds %struct.hv_storvsc_request, %struct.hv_storvsc_request* %528, i32 0, i32 3
  %530 = load %struct.TYPE_24__*, %struct.TYPE_24__** %529, align 8
  %531 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %530, i32 0, i32 0
  %532 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %531, i32 0, i32 0
  %533 = load i32, i32* %532, align 4
  %534 = add nsw i32 %533, 1
  store i32 %534, i32* %532, align 4
  br label %542

535:                                              ; preds = %217
  %536 = load %union.ccb*, %union.ccb** %4, align 8
  %537 = bitcast %union.ccb* %536 to %struct.TYPE_27__*
  %538 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %537, i32 0, i32 0
  %539 = load i32, i32* %538, align 8
  %540 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %539)
  %541 = load i32, i32* @EINVAL, align 4
  store i32 %541, i32* %3, align 4
  br label %543

542:                                              ; preds = %527, %272
  store i32 0, i32* %3, align 4
  br label %543

543:                                              ; preds = %542, %535, %327, %301, %240, %216, %190
  %544 = load i32, i32* %3, align 4
  ret i32 %544
}

declare dso_local i32 @cam_sim_unit(i32) #1

declare dso_local i32 @xpt_path_sim(i32) #1

declare dso_local i32 @cam_sim_bus(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @bus_dmamap_load_ccb(i32, i32, %union.ccb*, i32, %struct.hv_storvsc_request*, i32) #1

declare dso_local i32 @xpt_print(i32, i8*, i32) #1

declare dso_local i32 @storvsc_check_bounce_buffer_sgl(%struct.TYPE_19__*, i32, i32*) #1

declare dso_local %struct.TYPE_20__* @storvsc_create_bounce_buffer(i32, i32) #1

declare dso_local i32 @storvsc_copy_sgl_to_bounce_buf(%struct.TYPE_20__*, %struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @vtophys(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
