; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_rdma.c_ecore_rdma_register_tid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_rdma.c_ecore_rdma_register_tid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_rdma_register_tid_in_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i64, i32, i32, i32, i32 }
%struct.ecore_hwfn = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.rdma_register_tid_ramrod_data = type { %struct.TYPE_8__, %struct.TYPE_8__, i64, %struct.TYPE_8__, %struct.TYPE_8__, i32, i64, i32, i32, i8*, i64, i64 }
%struct.TYPE_8__ = type { i8*, i64 }
%struct.ecore_sp_init_data = type { i32, i32 }
%struct.ecore_spq_entry = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.rdma_register_tid_ramrod_data }

@ECORE_MSG_RDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"itid = %08x\0A\00", align 1
@ECORE_SPQ_MODE_EBLOCK = common dso_local global i32 0, align 4
@RDMA_RAMROD_REGISTER_MR = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"rc = %d\0A\00", align 1
@RDMA_REGISTER_TID_RAMROD_DATA_TWO_LEVEL_PBL = common dso_local global i32 0, align 4
@RDMA_REGISTER_TID_RAMROD_DATA_ZERO_BASED = common dso_local global i32 0, align 4
@RDMA_REGISTER_TID_RAMROD_DATA_PHY_MR = common dso_local global i32 0, align 4
@RDMA_REGISTER_TID_RAMROD_DATA_PAGE_SIZE_LOG = common dso_local global i32 0, align 4
@RDMA_REGISTER_TID_RAMROD_DATA_REMOTE_READ = common dso_local global i32 0, align 4
@RDMA_REGISTER_TID_RAMROD_DATA_REMOTE_WRITE = common dso_local global i32 0, align 4
@RDMA_REGISTER_TID_RAMROD_DATA_REMOTE_ATOMIC = common dso_local global i32 0, align 4
@RDMA_REGISTER_TID_RAMROD_DATA_LOCAL_WRITE = common dso_local global i32 0, align 4
@RDMA_REGISTER_TID_RAMROD_DATA_LOCAL_READ = common dso_local global i32 0, align 4
@RDMA_REGISTER_TID_RAMROD_DATA_ENABLE_MW_BIND = common dso_local global i32 0, align 4
@RDMA_REGISTER_TID_RAMROD_DATA_PBL_PAGE_SIZE_LOG = common dso_local global i32 0, align 4
@RDMA_REGISTER_TID_RAMROD_DATA_DMA_MR = common dso_local global i32 0, align 4
@RDMA_TID_REGISTERED_MR = common dso_local global i32 0, align 4
@RDMA_TID_FMR = common dso_local global i32 0, align 4
@RDMA_TID_MW_TYPE1 = common dso_local global i32 0, align 4
@RDMA_TID_MW_TYPE2A = common dso_local global i32 0, align 4
@ECORE_INVAL = common dso_local global i32 0, align 4
@RDMA_REGISTER_TID_RAMROD_DATA_TID_TYPE = common dso_local global i32 0, align 4
@RDMA_REGISTER_TID_RAMROD_DATA_DIF_ON_HOST_FLG = common dso_local global i32 0, align 4
@RDMA_RETURN_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"fw_return_code = %d\0A\00", align 1
@ECORE_UNKNOWN_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Register TID, rc = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_rdma_register_tid(i8* %0, %struct.ecore_rdma_register_tid_in_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ecore_rdma_register_tid_in_params*, align 8
  %6 = alloca %struct.ecore_hwfn*, align 8
  %7 = alloca %struct.rdma_register_tid_ramrod_data*, align 8
  %8 = alloca %struct.ecore_sp_init_data, align 4
  %9 = alloca %struct.ecore_spq_entry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.ecore_rdma_register_tid_in_params* %1, %struct.ecore_rdma_register_tid_in_params** %5, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.ecore_hwfn*
  store %struct.ecore_hwfn* %14, %struct.ecore_hwfn** %6, align 8
  %15 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %16 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %17 = load %struct.ecore_rdma_register_tid_in_params*, %struct.ecore_rdma_register_tid_in_params** %5, align 8
  %18 = getelementptr inbounds %struct.ecore_rdma_register_tid_in_params, %struct.ecore_rdma_register_tid_in_params* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %15, i32 %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = call i32 @OSAL_MEMSET(%struct.ecore_sp_init_data* %8, i32 0, i32 8)
  %22 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %23 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %8, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* @ECORE_SPQ_MODE_EBLOCK, align 4
  %28 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %8, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %30 = load i32, i32* @RDMA_RAMROD_REGISTER_MR, align 4
  %31 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %32 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @ecore_sp_init_request(%struct.ecore_hwfn* %29, %struct.ecore_spq_entry** %9, i32 %30, i32 %35, %struct.ecore_sp_init_data* %8)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* @ECORE_SUCCESS, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %2
  %41 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %42 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %43 = load i32, i32* %12, align 4
  %44 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %41, i32 %42, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %12, align 4
  store i32 %45, i32* %3, align 4
  br label %331

46:                                               ; preds = %2
  %47 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %48 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.ecore_rdma_register_tid_in_params*, %struct.ecore_rdma_register_tid_in_params** %5, align 8
  %53 = getelementptr inbounds %struct.ecore_rdma_register_tid_in_params, %struct.ecore_rdma_register_tid_in_params* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = icmp slt i64 %51, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %46
  %58 = load %struct.ecore_rdma_register_tid_in_params*, %struct.ecore_rdma_register_tid_in_params** %5, align 8
  %59 = getelementptr inbounds %struct.ecore_rdma_register_tid_in_params, %struct.ecore_rdma_register_tid_in_params* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %63 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %62, i32 0, i32 0
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  store i64 %61, i64* %65, align 8
  br label %66

66:                                               ; preds = %57, %46
  %67 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %9, align 8
  %68 = getelementptr inbounds %struct.ecore_spq_entry, %struct.ecore_spq_entry* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  store %struct.rdma_register_tid_ramrod_data* %69, %struct.rdma_register_tid_ramrod_data** %7, align 8
  %70 = load %struct.rdma_register_tid_ramrod_data*, %struct.rdma_register_tid_ramrod_data** %7, align 8
  %71 = getelementptr inbounds %struct.rdma_register_tid_ramrod_data, %struct.rdma_register_tid_ramrod_data* %70, i32 0, i32 11
  store i64 0, i64* %71, align 8
  %72 = load %struct.rdma_register_tid_ramrod_data*, %struct.rdma_register_tid_ramrod_data** %7, align 8
  %73 = getelementptr inbounds %struct.rdma_register_tid_ramrod_data, %struct.rdma_register_tid_ramrod_data* %72, i32 0, i32 11
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* @RDMA_REGISTER_TID_RAMROD_DATA_TWO_LEVEL_PBL, align 4
  %76 = load %struct.ecore_rdma_register_tid_in_params*, %struct.ecore_rdma_register_tid_in_params** %5, align 8
  %77 = getelementptr inbounds %struct.ecore_rdma_register_tid_in_params, %struct.ecore_rdma_register_tid_in_params* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @SET_FIELD(i64 %74, i32 %75, i32 %78)
  %80 = load %struct.rdma_register_tid_ramrod_data*, %struct.rdma_register_tid_ramrod_data** %7, align 8
  %81 = getelementptr inbounds %struct.rdma_register_tid_ramrod_data, %struct.rdma_register_tid_ramrod_data* %80, i32 0, i32 11
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* @RDMA_REGISTER_TID_RAMROD_DATA_ZERO_BASED, align 4
  %84 = load %struct.ecore_rdma_register_tid_in_params*, %struct.ecore_rdma_register_tid_in_params** %5, align 8
  %85 = getelementptr inbounds %struct.ecore_rdma_register_tid_in_params, %struct.ecore_rdma_register_tid_in_params* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @SET_FIELD(i64 %82, i32 %83, i32 %86)
  %88 = load %struct.rdma_register_tid_ramrod_data*, %struct.rdma_register_tid_ramrod_data** %7, align 8
  %89 = getelementptr inbounds %struct.rdma_register_tid_ramrod_data, %struct.rdma_register_tid_ramrod_data* %88, i32 0, i32 11
  %90 = load i64, i64* %89, align 8
  %91 = load i32, i32* @RDMA_REGISTER_TID_RAMROD_DATA_PHY_MR, align 4
  %92 = load %struct.ecore_rdma_register_tid_in_params*, %struct.ecore_rdma_register_tid_in_params** %5, align 8
  %93 = getelementptr inbounds %struct.ecore_rdma_register_tid_in_params, %struct.ecore_rdma_register_tid_in_params* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @SET_FIELD(i64 %90, i32 %91, i32 %94)
  %96 = load %struct.ecore_rdma_register_tid_in_params*, %struct.ecore_rdma_register_tid_in_params** %5, align 8
  %97 = getelementptr inbounds %struct.ecore_rdma_register_tid_in_params, %struct.ecore_rdma_register_tid_in_params* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = icmp eq i32 %98, 131
  br i1 %99, label %115, label %100

100:                                              ; preds = %66
  %101 = load %struct.ecore_rdma_register_tid_in_params*, %struct.ecore_rdma_register_tid_in_params** %5, align 8
  %102 = getelementptr inbounds %struct.ecore_rdma_register_tid_in_params, %struct.ecore_rdma_register_tid_in_params* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %115, label %105

105:                                              ; preds = %100
  %106 = load %struct.rdma_register_tid_ramrod_data*, %struct.rdma_register_tid_ramrod_data** %7, align 8
  %107 = getelementptr inbounds %struct.rdma_register_tid_ramrod_data, %struct.rdma_register_tid_ramrod_data* %106, i32 0, i32 11
  %108 = load i64, i64* %107, align 8
  %109 = load i32, i32* @RDMA_REGISTER_TID_RAMROD_DATA_PAGE_SIZE_LOG, align 4
  %110 = load %struct.ecore_rdma_register_tid_in_params*, %struct.ecore_rdma_register_tid_in_params** %5, align 8
  %111 = getelementptr inbounds %struct.ecore_rdma_register_tid_in_params, %struct.ecore_rdma_register_tid_in_params* %110, i32 0, i32 6
  %112 = load i32, i32* %111, align 8
  %113 = sub nsw i32 %112, 12
  %114 = call i32 @SET_FIELD(i64 %108, i32 %109, i32 %113)
  br label %115

115:                                              ; preds = %105, %100, %66
  %116 = load %struct.rdma_register_tid_ramrod_data*, %struct.rdma_register_tid_ramrod_data** %7, align 8
  %117 = getelementptr inbounds %struct.rdma_register_tid_ramrod_data, %struct.rdma_register_tid_ramrod_data* %116, i32 0, i32 11
  %118 = load i64, i64* %117, align 8
  %119 = load i32, i32* @RDMA_REGISTER_TID_RAMROD_DATA_REMOTE_READ, align 4
  %120 = load %struct.ecore_rdma_register_tid_in_params*, %struct.ecore_rdma_register_tid_in_params** %5, align 8
  %121 = getelementptr inbounds %struct.ecore_rdma_register_tid_in_params, %struct.ecore_rdma_register_tid_in_params* %120, i32 0, i32 7
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @SET_FIELD(i64 %118, i32 %119, i32 %122)
  %124 = load %struct.rdma_register_tid_ramrod_data*, %struct.rdma_register_tid_ramrod_data** %7, align 8
  %125 = getelementptr inbounds %struct.rdma_register_tid_ramrod_data, %struct.rdma_register_tid_ramrod_data* %124, i32 0, i32 11
  %126 = load i64, i64* %125, align 8
  %127 = load i32, i32* @RDMA_REGISTER_TID_RAMROD_DATA_REMOTE_WRITE, align 4
  %128 = load %struct.ecore_rdma_register_tid_in_params*, %struct.ecore_rdma_register_tid_in_params** %5, align 8
  %129 = getelementptr inbounds %struct.ecore_rdma_register_tid_in_params, %struct.ecore_rdma_register_tid_in_params* %128, i32 0, i32 8
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @SET_FIELD(i64 %126, i32 %127, i32 %130)
  %132 = load %struct.rdma_register_tid_ramrod_data*, %struct.rdma_register_tid_ramrod_data** %7, align 8
  %133 = getelementptr inbounds %struct.rdma_register_tid_ramrod_data, %struct.rdma_register_tid_ramrod_data* %132, i32 0, i32 11
  %134 = load i64, i64* %133, align 8
  %135 = load i32, i32* @RDMA_REGISTER_TID_RAMROD_DATA_REMOTE_ATOMIC, align 4
  %136 = load %struct.ecore_rdma_register_tid_in_params*, %struct.ecore_rdma_register_tid_in_params** %5, align 8
  %137 = getelementptr inbounds %struct.ecore_rdma_register_tid_in_params, %struct.ecore_rdma_register_tid_in_params* %136, i32 0, i32 9
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @SET_FIELD(i64 %134, i32 %135, i32 %138)
  %140 = load %struct.rdma_register_tid_ramrod_data*, %struct.rdma_register_tid_ramrod_data** %7, align 8
  %141 = getelementptr inbounds %struct.rdma_register_tid_ramrod_data, %struct.rdma_register_tid_ramrod_data* %140, i32 0, i32 11
  %142 = load i64, i64* %141, align 8
  %143 = load i32, i32* @RDMA_REGISTER_TID_RAMROD_DATA_LOCAL_WRITE, align 4
  %144 = load %struct.ecore_rdma_register_tid_in_params*, %struct.ecore_rdma_register_tid_in_params** %5, align 8
  %145 = getelementptr inbounds %struct.ecore_rdma_register_tid_in_params, %struct.ecore_rdma_register_tid_in_params* %144, i32 0, i32 10
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @SET_FIELD(i64 %142, i32 %143, i32 %146)
  %148 = load %struct.rdma_register_tid_ramrod_data*, %struct.rdma_register_tid_ramrod_data** %7, align 8
  %149 = getelementptr inbounds %struct.rdma_register_tid_ramrod_data, %struct.rdma_register_tid_ramrod_data* %148, i32 0, i32 11
  %150 = load i64, i64* %149, align 8
  %151 = load i32, i32* @RDMA_REGISTER_TID_RAMROD_DATA_LOCAL_READ, align 4
  %152 = load %struct.ecore_rdma_register_tid_in_params*, %struct.ecore_rdma_register_tid_in_params** %5, align 8
  %153 = getelementptr inbounds %struct.ecore_rdma_register_tid_in_params, %struct.ecore_rdma_register_tid_in_params* %152, i32 0, i32 11
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @SET_FIELD(i64 %150, i32 %151, i32 %154)
  %156 = load %struct.rdma_register_tid_ramrod_data*, %struct.rdma_register_tid_ramrod_data** %7, align 8
  %157 = getelementptr inbounds %struct.rdma_register_tid_ramrod_data, %struct.rdma_register_tid_ramrod_data* %156, i32 0, i32 11
  %158 = load i64, i64* %157, align 8
  %159 = load i32, i32* @RDMA_REGISTER_TID_RAMROD_DATA_ENABLE_MW_BIND, align 4
  %160 = load %struct.ecore_rdma_register_tid_in_params*, %struct.ecore_rdma_register_tid_in_params** %5, align 8
  %161 = getelementptr inbounds %struct.ecore_rdma_register_tid_in_params, %struct.ecore_rdma_register_tid_in_params* %160, i32 0, i32 12
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @SET_FIELD(i64 %158, i32 %159, i32 %162)
  %164 = load %struct.rdma_register_tid_ramrod_data*, %struct.rdma_register_tid_ramrod_data** %7, align 8
  %165 = getelementptr inbounds %struct.rdma_register_tid_ramrod_data, %struct.rdma_register_tid_ramrod_data* %164, i32 0, i32 10
  %166 = load i64, i64* %165, align 8
  %167 = load i32, i32* @RDMA_REGISTER_TID_RAMROD_DATA_PBL_PAGE_SIZE_LOG, align 4
  %168 = load %struct.ecore_rdma_register_tid_in_params*, %struct.ecore_rdma_register_tid_in_params** %5, align 8
  %169 = getelementptr inbounds %struct.ecore_rdma_register_tid_in_params, %struct.ecore_rdma_register_tid_in_params* %168, i32 0, i32 13
  %170 = load i32, i32* %169, align 4
  %171 = sub nsw i32 %170, 12
  %172 = call i32 @SET_FIELD(i64 %166, i32 %167, i32 %171)
  %173 = load %struct.rdma_register_tid_ramrod_data*, %struct.rdma_register_tid_ramrod_data** %7, align 8
  %174 = getelementptr inbounds %struct.rdma_register_tid_ramrod_data, %struct.rdma_register_tid_ramrod_data* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = load i32, i32* @RDMA_REGISTER_TID_RAMROD_DATA_DMA_MR, align 4
  %177 = load %struct.ecore_rdma_register_tid_in_params*, %struct.ecore_rdma_register_tid_in_params** %5, align 8
  %178 = getelementptr inbounds %struct.ecore_rdma_register_tid_in_params, %struct.ecore_rdma_register_tid_in_params* %177, i32 0, i32 5
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @SET_FIELD(i64 %175, i32 %176, i32 %179)
  %181 = load %struct.ecore_rdma_register_tid_in_params*, %struct.ecore_rdma_register_tid_in_params** %5, align 8
  %182 = getelementptr inbounds %struct.ecore_rdma_register_tid_in_params, %struct.ecore_rdma_register_tid_in_params* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 8
  switch i32 %183, label %192 [
    i32 128, label %184
    i32 131, label %186
    i32 130, label %188
    i32 129, label %190
  ]

184:                                              ; preds = %115
  %185 = load i32, i32* @RDMA_TID_REGISTERED_MR, align 4
  store i32 %185, i32* %10, align 4
  br label %199

186:                                              ; preds = %115
  %187 = load i32, i32* @RDMA_TID_FMR, align 4
  store i32 %187, i32* %10, align 4
  br label %199

188:                                              ; preds = %115
  %189 = load i32, i32* @RDMA_TID_MW_TYPE1, align 4
  store i32 %189, i32* %10, align 4
  br label %199

190:                                              ; preds = %115
  %191 = load i32, i32* @RDMA_TID_MW_TYPE2A, align 4
  store i32 %191, i32* %10, align 4
  br label %199

192:                                              ; preds = %115
  %193 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %193, i32* %12, align 4
  %194 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %195 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %196 = load i32, i32* %12, align 4
  %197 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %194, i32 %195, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %196)
  %198 = load i32, i32* %12, align 4
  store i32 %198, i32* %3, align 4
  br label %331

199:                                              ; preds = %190, %188, %186, %184
  %200 = load %struct.rdma_register_tid_ramrod_data*, %struct.rdma_register_tid_ramrod_data** %7, align 8
  %201 = getelementptr inbounds %struct.rdma_register_tid_ramrod_data, %struct.rdma_register_tid_ramrod_data* %200, i32 0, i32 10
  %202 = load i64, i64* %201, align 8
  %203 = load i32, i32* @RDMA_REGISTER_TID_RAMROD_DATA_TID_TYPE, align 4
  %204 = load i32, i32* %10, align 4
  %205 = call i32 @SET_FIELD(i64 %202, i32 %203, i32 %204)
  %206 = load %struct.ecore_rdma_register_tid_in_params*, %struct.ecore_rdma_register_tid_in_params** %5, align 8
  %207 = getelementptr inbounds %struct.ecore_rdma_register_tid_in_params, %struct.ecore_rdma_register_tid_in_params* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = sext i32 %208 to i64
  %210 = call i8* @OSAL_CPU_TO_LE32(i64 %209)
  %211 = load %struct.rdma_register_tid_ramrod_data*, %struct.rdma_register_tid_ramrod_data** %7, align 8
  %212 = getelementptr inbounds %struct.rdma_register_tid_ramrod_data, %struct.rdma_register_tid_ramrod_data* %211, i32 0, i32 9
  store i8* %210, i8** %212, align 8
  %213 = load %struct.ecore_rdma_register_tid_in_params*, %struct.ecore_rdma_register_tid_in_params** %5, align 8
  %214 = getelementptr inbounds %struct.ecore_rdma_register_tid_in_params, %struct.ecore_rdma_register_tid_in_params* %213, i32 0, i32 22
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.rdma_register_tid_ramrod_data*, %struct.rdma_register_tid_ramrod_data** %7, align 8
  %217 = getelementptr inbounds %struct.rdma_register_tid_ramrod_data, %struct.rdma_register_tid_ramrod_data* %216, i32 0, i32 8
  store i32 %215, i32* %217, align 4
  %218 = load %struct.ecore_rdma_register_tid_in_params*, %struct.ecore_rdma_register_tid_in_params** %5, align 8
  %219 = getelementptr inbounds %struct.ecore_rdma_register_tid_in_params, %struct.ecore_rdma_register_tid_in_params* %218, i32 0, i32 21
  %220 = load i32, i32* %219, align 8
  %221 = call i32 @OSAL_CPU_TO_LE16(i32 %220)
  %222 = load %struct.rdma_register_tid_ramrod_data*, %struct.rdma_register_tid_ramrod_data** %7, align 8
  %223 = getelementptr inbounds %struct.rdma_register_tid_ramrod_data, %struct.rdma_register_tid_ramrod_data* %222, i32 0, i32 7
  store i32 %221, i32* %223, align 8
  %224 = load %struct.ecore_rdma_register_tid_in_params*, %struct.ecore_rdma_register_tid_in_params** %5, align 8
  %225 = getelementptr inbounds %struct.ecore_rdma_register_tid_in_params, %struct.ecore_rdma_register_tid_in_params* %224, i32 0, i32 14
  %226 = load i32, i32* %225, align 8
  %227 = ashr i32 %226, 32
  %228 = sext i32 %227 to i64
  %229 = load %struct.rdma_register_tid_ramrod_data*, %struct.rdma_register_tid_ramrod_data** %7, align 8
  %230 = getelementptr inbounds %struct.rdma_register_tid_ramrod_data, %struct.rdma_register_tid_ramrod_data* %229, i32 0, i32 6
  store i64 %228, i64* %230, align 8
  %231 = load %struct.ecore_rdma_register_tid_in_params*, %struct.ecore_rdma_register_tid_in_params** %5, align 8
  %232 = getelementptr inbounds %struct.ecore_rdma_register_tid_in_params, %struct.ecore_rdma_register_tid_in_params* %231, i32 0, i32 14
  %233 = load i32, i32* %232, align 8
  %234 = call i32 @DMA_LO_LE(i32 %233)
  %235 = load %struct.rdma_register_tid_ramrod_data*, %struct.rdma_register_tid_ramrod_data** %7, align 8
  %236 = getelementptr inbounds %struct.rdma_register_tid_ramrod_data, %struct.rdma_register_tid_ramrod_data* %235, i32 0, i32 5
  store i32 %234, i32* %236, align 8
  %237 = load %struct.ecore_rdma_register_tid_in_params*, %struct.ecore_rdma_register_tid_in_params** %5, align 8
  %238 = getelementptr inbounds %struct.ecore_rdma_register_tid_in_params, %struct.ecore_rdma_register_tid_in_params* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 8
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %252

241:                                              ; preds = %199
  %242 = load %struct.rdma_register_tid_ramrod_data*, %struct.rdma_register_tid_ramrod_data** %7, align 8
  %243 = getelementptr inbounds %struct.rdma_register_tid_ramrod_data, %struct.rdma_register_tid_ramrod_data* %242, i32 0, i32 4
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i32 0, i32 1
  store i64 0, i64* %244, align 8
  %245 = load %struct.ecore_rdma_register_tid_in_params*, %struct.ecore_rdma_register_tid_in_params** %5, align 8
  %246 = getelementptr inbounds %struct.ecore_rdma_register_tid_in_params, %struct.ecore_rdma_register_tid_in_params* %245, i32 0, i32 15
  %247 = load i64, i64* %246, align 8
  %248 = call i8* @OSAL_CPU_TO_LE32(i64 %247)
  %249 = load %struct.rdma_register_tid_ramrod_data*, %struct.rdma_register_tid_ramrod_data** %7, align 8
  %250 = getelementptr inbounds %struct.rdma_register_tid_ramrod_data, %struct.rdma_register_tid_ramrod_data* %249, i32 0, i32 4
  %251 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %250, i32 0, i32 0
  store i8* %248, i8** %251, align 8
  br label %264

252:                                              ; preds = %199
  %253 = load %struct.rdma_register_tid_ramrod_data*, %struct.rdma_register_tid_ramrod_data** %7, align 8
  %254 = getelementptr inbounds %struct.rdma_register_tid_ramrod_data, %struct.rdma_register_tid_ramrod_data* %253, i32 0, i32 4
  %255 = load %struct.ecore_rdma_register_tid_in_params*, %struct.ecore_rdma_register_tid_in_params** %5, align 8
  %256 = getelementptr inbounds %struct.ecore_rdma_register_tid_in_params, %struct.ecore_rdma_register_tid_in_params* %255, i32 0, i32 20
  %257 = load i32, i32* %256, align 4
  %258 = bitcast %struct.TYPE_8__* %254 to { i8*, i64 }*
  %259 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %258, i32 0, i32 0
  %260 = load i8*, i8** %259, align 8
  %261 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %258, i32 0, i32 1
  %262 = load i64, i64* %261, align 8
  %263 = call i32 @DMA_REGPAIR_LE(i8* %260, i64 %262, i32 %257)
  br label %264

264:                                              ; preds = %252, %241
  %265 = load %struct.rdma_register_tid_ramrod_data*, %struct.rdma_register_tid_ramrod_data** %7, align 8
  %266 = getelementptr inbounds %struct.rdma_register_tid_ramrod_data, %struct.rdma_register_tid_ramrod_data* %265, i32 0, i32 3
  %267 = load %struct.ecore_rdma_register_tid_in_params*, %struct.ecore_rdma_register_tid_in_params** %5, align 8
  %268 = getelementptr inbounds %struct.ecore_rdma_register_tid_in_params, %struct.ecore_rdma_register_tid_in_params* %267, i32 0, i32 19
  %269 = load i32, i32* %268, align 8
  %270 = bitcast %struct.TYPE_8__* %266 to { i8*, i64 }*
  %271 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %270, i32 0, i32 0
  %272 = load i8*, i8** %271, align 8
  %273 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %270, i32 0, i32 1
  %274 = load i64, i64* %273, align 8
  %275 = call i32 @DMA_REGPAIR_LE(i8* %272, i64 %274, i32 %269)
  %276 = load %struct.ecore_rdma_register_tid_in_params*, %struct.ecore_rdma_register_tid_in_params** %5, align 8
  %277 = getelementptr inbounds %struct.ecore_rdma_register_tid_in_params, %struct.ecore_rdma_register_tid_in_params* %276, i32 0, i32 18
  %278 = load i64, i64* %277, align 8
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %308

280:                                              ; preds = %264
  %281 = load %struct.rdma_register_tid_ramrod_data*, %struct.rdma_register_tid_ramrod_data** %7, align 8
  %282 = getelementptr inbounds %struct.rdma_register_tid_ramrod_data, %struct.rdma_register_tid_ramrod_data* %281, i32 0, i32 2
  %283 = load i64, i64* %282, align 8
  %284 = load i32, i32* @RDMA_REGISTER_TID_RAMROD_DATA_DIF_ON_HOST_FLG, align 4
  %285 = call i32 @SET_FIELD(i64 %283, i32 %284, i32 1)
  %286 = load %struct.rdma_register_tid_ramrod_data*, %struct.rdma_register_tid_ramrod_data** %7, align 8
  %287 = getelementptr inbounds %struct.rdma_register_tid_ramrod_data, %struct.rdma_register_tid_ramrod_data* %286, i32 0, i32 1
  %288 = load %struct.ecore_rdma_register_tid_in_params*, %struct.ecore_rdma_register_tid_in_params** %5, align 8
  %289 = getelementptr inbounds %struct.ecore_rdma_register_tid_in_params, %struct.ecore_rdma_register_tid_in_params* %288, i32 0, i32 17
  %290 = load i32, i32* %289, align 4
  %291 = bitcast %struct.TYPE_8__* %287 to { i8*, i64 }*
  %292 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %291, i32 0, i32 0
  %293 = load i8*, i8** %292, align 8
  %294 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %291, i32 0, i32 1
  %295 = load i64, i64* %294, align 8
  %296 = call i32 @DMA_REGPAIR_LE(i8* %293, i64 %295, i32 %290)
  %297 = load %struct.rdma_register_tid_ramrod_data*, %struct.rdma_register_tid_ramrod_data** %7, align 8
  %298 = getelementptr inbounds %struct.rdma_register_tid_ramrod_data, %struct.rdma_register_tid_ramrod_data* %297, i32 0, i32 0
  %299 = load %struct.ecore_rdma_register_tid_in_params*, %struct.ecore_rdma_register_tid_in_params** %5, align 8
  %300 = getelementptr inbounds %struct.ecore_rdma_register_tid_in_params, %struct.ecore_rdma_register_tid_in_params* %299, i32 0, i32 16
  %301 = load i32, i32* %300, align 8
  %302 = bitcast %struct.TYPE_8__* %298 to { i8*, i64 }*
  %303 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %302, i32 0, i32 0
  %304 = load i8*, i8** %303, align 8
  %305 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %302, i32 0, i32 1
  %306 = load i64, i64* %305, align 8
  %307 = call i32 @DMA_REGPAIR_LE(i8* %304, i64 %306, i32 %301)
  br label %308

308:                                              ; preds = %280, %264
  %309 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %310 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %9, align 8
  %311 = call i32 @ecore_spq_post(%struct.ecore_hwfn* %309, %struct.ecore_spq_entry* %310, i64* %11)
  store i32 %311, i32* %12, align 4
  %312 = load i32, i32* %12, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %316

314:                                              ; preds = %308
  %315 = load i32, i32* %12, align 4
  store i32 %315, i32* %3, align 4
  br label %331

316:                                              ; preds = %308
  %317 = load i64, i64* %11, align 8
  %318 = load i64, i64* @RDMA_RETURN_OK, align 8
  %319 = icmp ne i64 %317, %318
  br i1 %319, label %320, label %325

320:                                              ; preds = %316
  %321 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %322 = load i64, i64* %11, align 8
  %323 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %321, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i64 %322)
  %324 = load i32, i32* @ECORE_UNKNOWN_ERROR, align 4
  store i32 %324, i32* %3, align 4
  br label %331

325:                                              ; preds = %316
  %326 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %327 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %328 = load i32, i32* %12, align 4
  %329 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %326, i32 %327, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %328)
  %330 = load i32, i32* %12, align 4
  store i32 %330, i32* %3, align 4
  br label %331

331:                                              ; preds = %325, %320, %314, %192, %40
  %332 = load i32, i32* %3, align 4
  ret i32 %332
}

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32) #1

declare dso_local i32 @OSAL_MEMSET(%struct.ecore_sp_init_data*, i32, i32) #1

declare dso_local i32 @ecore_sp_init_request(%struct.ecore_hwfn*, %struct.ecore_spq_entry**, i32, i32, %struct.ecore_sp_init_data*) #1

declare dso_local i32 @SET_FIELD(i64, i32, i32) #1

declare dso_local i8* @OSAL_CPU_TO_LE32(i64) #1

declare dso_local i32 @OSAL_CPU_TO_LE16(i32) #1

declare dso_local i32 @DMA_LO_LE(i32) #1

declare dso_local i32 @DMA_REGPAIR_LE(i8*, i64, i32) #1

declare dso_local i32 @ecore_spq_post(%struct.ecore_hwfn*, %struct.ecore_spq_entry*, i64*) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
