; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_rdma.c_ecore_rdma_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_rdma.c_ecore_rdma_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32, i32, %struct.TYPE_2__, %struct.ecore_rdma_info* }
%struct.TYPE_2__ = type { i64 }
%struct.ecore_rdma_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i32 }

@ECORE_MSG_RDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Allocating RDMA\0A\00", align 1
@ECORE_INVAL = common dso_local global i32 0, align 4
@ECORE_PCI_ETH_IWARP = common dso_local global i64 0, align 8
@PROTOCOLID_IWARP = common dso_local global i32 0, align 4
@PROTOCOLID_ROCE = common dso_local global i32 0, align 4
@OSAL_NULL = common dso_local global i32 0, align 4
@ECORE_L2_QUEUE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ECORE_NOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [74 x i8] c"ecore rdma alloc failed: cannot allocate memory (rdma info dev). rc = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"ecore rdma alloc failed: cannot allocate memory (rdma info port)\0A\00", align 1
@RDMA_MAX_PDS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"PD\00", align 1
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"Failed to allocate pd_map,rc = %d\0A\00", align 1
@ECORE_RDMA_MAX_XRCDS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"XRCD\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Failed to allocate xrcd_map,rc = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"DPI\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"Failed to allocate DPI bitmap, rc = %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"CQ\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"Failed to allocate cq bitmap, rc = %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"Toggle\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"Failed to allocate toogle bits, rc = %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"MR\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c"Failed to allocate itids bitmaps, rc = %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"QP\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"Failed to allocate qp bitmap, rc = %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"REAL CID\00", align 1
@.str.18 = private unnamed_addr constant [40 x i8] c"Failed to allocate cid bitmap, rc = %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"XRC SRQ\00", align 1
@.str.20 = private unnamed_addr constant [44 x i8] c"Failed to allocate xrc srq bitmap, rc = %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"SRQ\00", align 1
@.str.22 = private unnamed_addr constant [40 x i8] c"Failed to allocate srq bitmap, rc = %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"rc = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*)* @ecore_rdma_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_rdma_alloc(%struct.ecore_hwfn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca %struct.ecore_rdma_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  %8 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %9 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %8, i32 0, i32 3
  %10 = load %struct.ecore_rdma_info*, %struct.ecore_rdma_info** %9, align 8
  store %struct.ecore_rdma_info* %10, %struct.ecore_rdma_info** %4, align 8
  %11 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %12 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %13 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %11, i32 %12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.ecore_rdma_info*, %struct.ecore_rdma_info** %4, align 8
  %15 = icmp ne %struct.ecore_rdma_info* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %17, i32* %2, align 4
  br label %287

18:                                               ; preds = %1
  %19 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %20 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ECORE_PCI_ETH_IWARP, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load i32, i32* @PROTOCOLID_IWARP, align 4
  %27 = load %struct.ecore_rdma_info*, %struct.ecore_rdma_info** %4, align 8
  %28 = getelementptr inbounds %struct.ecore_rdma_info, %struct.ecore_rdma_info* %27, i32 0, i32 18
  store i32 %26, i32* %28, align 8
  br label %33

29:                                               ; preds = %18
  %30 = load i32, i32* @PROTOCOLID_ROCE, align 4
  %31 = load %struct.ecore_rdma_info*, %struct.ecore_rdma_info** %4, align 8
  %32 = getelementptr inbounds %struct.ecore_rdma_info, %struct.ecore_rdma_info* %31, i32 0, i32 18
  store i32 %30, i32* %32, align 8
  br label %33

33:                                               ; preds = %29, %25
  %34 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %35 = load %struct.ecore_rdma_info*, %struct.ecore_rdma_info** %4, align 8
  %36 = getelementptr inbounds %struct.ecore_rdma_info, %struct.ecore_rdma_info* %35, i32 0, i32 18
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @OSAL_NULL, align 4
  %39 = call i32 @ecore_cxt_get_proto_cid_count(%struct.ecore_hwfn* %34, i32 %37, i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %41 = call i64 @IS_IWARP(%struct.ecore_hwfn* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %33
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.ecore_rdma_info*, %struct.ecore_rdma_info** %4, align 8
  %46 = getelementptr inbounds %struct.ecore_rdma_info, %struct.ecore_rdma_info* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  br label %52

47:                                               ; preds = %33
  %48 = load i32, i32* %5, align 4
  %49 = sdiv i32 %48, 2
  %50 = load %struct.ecore_rdma_info*, %struct.ecore_rdma_info** %4, align 8
  %51 = getelementptr inbounds %struct.ecore_rdma_info, %struct.ecore_rdma_info* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  br label %52

52:                                               ; preds = %47, %43
  %53 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %54 = load i32, i32* @PROTOCOLID_ROCE, align 4
  %55 = call i32 @ecore_cxt_get_proto_tid_count(%struct.ecore_hwfn* %53, i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.ecore_rdma_info*, %struct.ecore_rdma_info** %4, align 8
  %58 = getelementptr inbounds %struct.ecore_rdma_info, %struct.ecore_rdma_info* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %60 = load i32, i32* @ECORE_L2_QUEUE, align 4
  %61 = call i64 @RESC_START(%struct.ecore_hwfn* %59, i32 %60)
  %62 = inttoptr i64 %61 to i8*
  %63 = load %struct.ecore_rdma_info*, %struct.ecore_rdma_info** %4, align 8
  %64 = getelementptr inbounds %struct.ecore_rdma_info, %struct.ecore_rdma_info* %63, i32 0, i32 17
  store i8* %62, i8** %64, align 8
  %65 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %66 = load i32, i32* @ECORE_L2_QUEUE, align 4
  %67 = call i64 @RESC_NUM(%struct.ecore_hwfn* %65, i32 %66)
  %68 = inttoptr i64 %67 to i8*
  %69 = load %struct.ecore_rdma_info*, %struct.ecore_rdma_info** %4, align 8
  %70 = getelementptr inbounds %struct.ecore_rdma_info, %struct.ecore_rdma_info* %69, i32 0, i32 16
  store i8* %68, i8** %70, align 8
  %71 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %72 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @GFP_KERNEL, align 4
  %75 = call i8* @OSAL_ZALLOC(i32 %73, i32 %74, i32 1)
  %76 = load %struct.ecore_rdma_info*, %struct.ecore_rdma_info** %4, align 8
  %77 = getelementptr inbounds %struct.ecore_rdma_info, %struct.ecore_rdma_info* %76, i32 0, i32 15
  store i8* %75, i8** %77, align 8
  %78 = load %struct.ecore_rdma_info*, %struct.ecore_rdma_info** %4, align 8
  %79 = getelementptr inbounds %struct.ecore_rdma_info, %struct.ecore_rdma_info* %78, i32 0, i32 15
  %80 = load i8*, i8** %79, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %88, label %82

82:                                               ; preds = %52
  %83 = load i32, i32* @ECORE_NOMEM, align 4
  store i32 %83, i32* %7, align 4
  %84 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %85 = load i32, i32* %7, align 4
  %86 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_NOTICE(%struct.ecore_hwfn* %84, i32 0, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* %7, align 4
  store i32 %87, i32* %2, align 4
  br label %287

88:                                               ; preds = %52
  %89 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %90 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @GFP_KERNEL, align 4
  %93 = call i8* @OSAL_ZALLOC(i32 %91, i32 %92, i32 1)
  %94 = load %struct.ecore_rdma_info*, %struct.ecore_rdma_info** %4, align 8
  %95 = getelementptr inbounds %struct.ecore_rdma_info, %struct.ecore_rdma_info* %94, i32 0, i32 14
  store i8* %93, i8** %95, align 8
  %96 = load %struct.ecore_rdma_info*, %struct.ecore_rdma_info** %4, align 8
  %97 = getelementptr inbounds %struct.ecore_rdma_info, %struct.ecore_rdma_info* %96, i32 0, i32 14
  %98 = load i8*, i8** %97, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %104, label %100

100:                                              ; preds = %88
  %101 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %102 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_NOTICE(%struct.ecore_hwfn* %101, i32 0, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0))
  %103 = load i32, i32* @ECORE_NOMEM, align 4
  store i32 %103, i32* %2, align 4
  br label %287

104:                                              ; preds = %88
  %105 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %106 = load %struct.ecore_rdma_info*, %struct.ecore_rdma_info** %4, align 8
  %107 = getelementptr inbounds %struct.ecore_rdma_info, %struct.ecore_rdma_info* %106, i32 0, i32 13
  %108 = load i32, i32* @RDMA_MAX_PDS, align 4
  %109 = call i32 @ecore_rdma_bmap_alloc(%struct.ecore_hwfn* %105, i32* %107, i32 %108, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* @ECORE_SUCCESS, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %113, label %119

113:                                              ; preds = %104
  %114 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %115 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %116 = load i32, i32* %7, align 4
  %117 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %114, i32 %115, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %116)
  %118 = load i32, i32* %7, align 4
  store i32 %118, i32* %2, align 4
  br label %287

119:                                              ; preds = %104
  %120 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %121 = load %struct.ecore_rdma_info*, %struct.ecore_rdma_info** %4, align 8
  %122 = getelementptr inbounds %struct.ecore_rdma_info, %struct.ecore_rdma_info* %121, i32 0, i32 12
  %123 = load i32, i32* @ECORE_RDMA_MAX_XRCDS, align 4
  %124 = call i32 @ecore_rdma_bmap_alloc(%struct.ecore_hwfn* %120, i32* %122, i32 %123, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  store i32 %124, i32* %7, align 4
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* @ECORE_SUCCESS, align 4
  %127 = icmp ne i32 %125, %126
  br i1 %127, label %128, label %134

128:                                              ; preds = %119
  %129 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %130 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %131 = load i32, i32* %7, align 4
  %132 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %129, i32 %130, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %131)
  %133 = load i32, i32* %7, align 4
  store i32 %133, i32* %2, align 4
  br label %287

134:                                              ; preds = %119
  %135 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %136 = load %struct.ecore_rdma_info*, %struct.ecore_rdma_info** %4, align 8
  %137 = getelementptr inbounds %struct.ecore_rdma_info, %struct.ecore_rdma_info* %136, i32 0, i32 11
  %138 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %139 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @ecore_rdma_bmap_alloc(%struct.ecore_hwfn* %135, i32* %137, i32 %140, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  store i32 %141, i32* %7, align 4
  %142 = load i32, i32* %7, align 4
  %143 = load i32, i32* @ECORE_SUCCESS, align 4
  %144 = icmp ne i32 %142, %143
  br i1 %144, label %145, label %151

145:                                              ; preds = %134
  %146 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %147 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %148 = load i32, i32* %7, align 4
  %149 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %146, i32 %147, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i32 %148)
  %150 = load i32, i32* %7, align 4
  store i32 %150, i32* %2, align 4
  br label %287

151:                                              ; preds = %134
  %152 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %153 = load %struct.ecore_rdma_info*, %struct.ecore_rdma_info** %4, align 8
  %154 = getelementptr inbounds %struct.ecore_rdma_info, %struct.ecore_rdma_info* %153, i32 0, i32 10
  %155 = load i32, i32* %5, align 4
  %156 = call i32 @ecore_rdma_bmap_alloc(%struct.ecore_hwfn* %152, i32* %154, i32 %155, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  store i32 %156, i32* %7, align 4
  %157 = load i32, i32* %7, align 4
  %158 = load i32, i32* @ECORE_SUCCESS, align 4
  %159 = icmp ne i32 %157, %158
  br i1 %159, label %160, label %166

160:                                              ; preds = %151
  %161 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %162 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %163 = load i32, i32* %7, align 4
  %164 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %161, i32 %162, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0), i32 %163)
  %165 = load i32, i32* %7, align 4
  store i32 %165, i32* %2, align 4
  br label %287

166:                                              ; preds = %151
  %167 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %168 = load %struct.ecore_rdma_info*, %struct.ecore_rdma_info** %4, align 8
  %169 = getelementptr inbounds %struct.ecore_rdma_info, %struct.ecore_rdma_info* %168, i32 0, i32 9
  %170 = load i32, i32* %5, align 4
  %171 = call i32 @ecore_rdma_bmap_alloc(%struct.ecore_hwfn* %167, i32* %169, i32 %170, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  store i32 %171, i32* %7, align 4
  %172 = load i32, i32* %7, align 4
  %173 = load i32, i32* @ECORE_SUCCESS, align 4
  %174 = icmp ne i32 %172, %173
  br i1 %174, label %175, label %181

175:                                              ; preds = %166
  %176 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %177 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %178 = load i32, i32* %7, align 4
  %179 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %176, i32 %177, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0), i32 %178)
  %180 = load i32, i32* %7, align 4
  store i32 %180, i32* %2, align 4
  br label %287

181:                                              ; preds = %166
  %182 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %183 = load %struct.ecore_rdma_info*, %struct.ecore_rdma_info** %4, align 8
  %184 = getelementptr inbounds %struct.ecore_rdma_info, %struct.ecore_rdma_info* %183, i32 0, i32 8
  %185 = load %struct.ecore_rdma_info*, %struct.ecore_rdma_info** %4, align 8
  %186 = getelementptr inbounds %struct.ecore_rdma_info, %struct.ecore_rdma_info* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @ecore_rdma_bmap_alloc(%struct.ecore_hwfn* %182, i32* %184, i32 %187, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  store i32 %188, i32* %7, align 4
  %189 = load i32, i32* %7, align 4
  %190 = load i32, i32* @ECORE_SUCCESS, align 4
  %191 = icmp ne i32 %189, %190
  br i1 %191, label %192, label %198

192:                                              ; preds = %181
  %193 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %194 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %195 = load i32, i32* %7, align 4
  %196 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %193, i32 %194, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.14, i64 0, i64 0), i32 %195)
  %197 = load i32, i32* %7, align 4
  store i32 %197, i32* %2, align 4
  br label %287

198:                                              ; preds = %181
  %199 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %200 = load %struct.ecore_rdma_info*, %struct.ecore_rdma_info** %4, align 8
  %201 = getelementptr inbounds %struct.ecore_rdma_info, %struct.ecore_rdma_info* %200, i32 0, i32 7
  %202 = load %struct.ecore_rdma_info*, %struct.ecore_rdma_info** %4, align 8
  %203 = getelementptr inbounds %struct.ecore_rdma_info, %struct.ecore_rdma_info* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @ecore_rdma_bmap_alloc(%struct.ecore_hwfn* %199, i32* %201, i32 %204, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0))
  store i32 %205, i32* %7, align 4
  %206 = load i32, i32* %7, align 4
  %207 = load i32, i32* @ECORE_SUCCESS, align 4
  %208 = icmp ne i32 %206, %207
  br i1 %208, label %209, label %215

209:                                              ; preds = %198
  %210 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %211 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %212 = load i32, i32* %7, align 4
  %213 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %210, i32 %211, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i64 0, i64 0), i32 %212)
  %214 = load i32, i32* %7, align 4
  store i32 %214, i32* %2, align 4
  br label %287

215:                                              ; preds = %198
  %216 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %217 = load %struct.ecore_rdma_info*, %struct.ecore_rdma_info** %4, align 8
  %218 = getelementptr inbounds %struct.ecore_rdma_info, %struct.ecore_rdma_info* %217, i32 0, i32 6
  %219 = load i32, i32* %5, align 4
  %220 = call i32 @ecore_rdma_bmap_alloc(%struct.ecore_hwfn* %216, i32* %218, i32 %219, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0))
  store i32 %220, i32* %7, align 4
  %221 = load i32, i32* %7, align 4
  %222 = load i32, i32* @ECORE_SUCCESS, align 4
  %223 = icmp ne i32 %221, %222
  br i1 %223, label %224, label %230

224:                                              ; preds = %215
  %225 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %226 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %227 = load i32, i32* %7, align 4
  %228 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %225, i32 %226, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18, i64 0, i64 0), i32 %227)
  %229 = load i32, i32* %7, align 4
  store i32 %229, i32* %2, align 4
  br label %287

230:                                              ; preds = %215
  %231 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %232 = call i64 @ecore_cxt_get_xrc_srq_count(%struct.ecore_hwfn* %231)
  %233 = inttoptr i64 %232 to i8*
  %234 = ptrtoint i8* %233 to i32
  %235 = load %struct.ecore_rdma_info*, %struct.ecore_rdma_info** %4, align 8
  %236 = getelementptr inbounds %struct.ecore_rdma_info, %struct.ecore_rdma_info* %235, i32 0, i32 2
  store i32 %234, i32* %236, align 8
  %237 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %238 = load %struct.ecore_rdma_info*, %struct.ecore_rdma_info** %4, align 8
  %239 = getelementptr inbounds %struct.ecore_rdma_info, %struct.ecore_rdma_info* %238, i32 0, i32 5
  %240 = load %struct.ecore_rdma_info*, %struct.ecore_rdma_info** %4, align 8
  %241 = getelementptr inbounds %struct.ecore_rdma_info, %struct.ecore_rdma_info* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 8
  %243 = call i32 @ecore_rdma_bmap_alloc(%struct.ecore_hwfn* %237, i32* %239, i32 %242, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0))
  store i32 %243, i32* %7, align 4
  %244 = load i32, i32* %7, align 4
  %245 = load i32, i32* @ECORE_SUCCESS, align 4
  %246 = icmp ne i32 %244, %245
  br i1 %246, label %247, label %253

247:                                              ; preds = %230
  %248 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %249 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %250 = load i32, i32* %7, align 4
  %251 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %248, i32 %249, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.20, i64 0, i64 0), i32 %250)
  %252 = load i32, i32* %7, align 4
  store i32 %252, i32* %2, align 4
  br label %287

253:                                              ; preds = %230
  %254 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %255 = call i32 @ecore_cxt_get_srq_count(%struct.ecore_hwfn* %254)
  %256 = load %struct.ecore_rdma_info*, %struct.ecore_rdma_info** %4, align 8
  %257 = getelementptr inbounds %struct.ecore_rdma_info, %struct.ecore_rdma_info* %256, i32 0, i32 3
  store i32 %255, i32* %257, align 4
  %258 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %259 = load %struct.ecore_rdma_info*, %struct.ecore_rdma_info** %4, align 8
  %260 = getelementptr inbounds %struct.ecore_rdma_info, %struct.ecore_rdma_info* %259, i32 0, i32 4
  %261 = load %struct.ecore_rdma_info*, %struct.ecore_rdma_info** %4, align 8
  %262 = getelementptr inbounds %struct.ecore_rdma_info, %struct.ecore_rdma_info* %261, i32 0, i32 3
  %263 = load i32, i32* %262, align 4
  %264 = call i32 @ecore_rdma_bmap_alloc(%struct.ecore_hwfn* %258, i32* %260, i32 %263, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0))
  store i32 %264, i32* %7, align 4
  %265 = load i32, i32* %7, align 4
  %266 = load i32, i32* @ECORE_SUCCESS, align 4
  %267 = icmp ne i32 %265, %266
  br i1 %267, label %268, label %274

268:                                              ; preds = %253
  %269 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %270 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %271 = load i32, i32* %7, align 4
  %272 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %269, i32 %270, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.22, i64 0, i64 0), i32 %271)
  %273 = load i32, i32* %7, align 4
  store i32 %273, i32* %2, align 4
  br label %287

274:                                              ; preds = %253
  %275 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %276 = call i64 @IS_IWARP(%struct.ecore_hwfn* %275)
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %281

278:                                              ; preds = %274
  %279 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %280 = call i32 @ecore_iwarp_alloc(%struct.ecore_hwfn* %279)
  store i32 %280, i32* %7, align 4
  br label %281

281:                                              ; preds = %278, %274
  %282 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %283 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %284 = load i32, i32* %7, align 4
  %285 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %282, i32 %283, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0), i32 %284)
  %286 = load i32, i32* %7, align 4
  store i32 %286, i32* %2, align 4
  br label %287

287:                                              ; preds = %281, %268, %247, %224, %209, %192, %175, %160, %145, %128, %113, %100, %82, %16
  %288 = load i32, i32* %2, align 4
  ret i32 %288
}

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, ...) #1

declare dso_local i32 @ecore_cxt_get_proto_cid_count(%struct.ecore_hwfn*, i32, i32) #1

declare dso_local i64 @IS_IWARP(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_cxt_get_proto_tid_count(%struct.ecore_hwfn*, i32) #1

declare dso_local i64 @RESC_START(%struct.ecore_hwfn*, i32) #1

declare dso_local i64 @RESC_NUM(%struct.ecore_hwfn*, i32) #1

declare dso_local i8* @OSAL_ZALLOC(i32, i32, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, ...) #1

declare dso_local i32 @ecore_rdma_bmap_alloc(%struct.ecore_hwfn*, i32*, i32, i8*) #1

declare dso_local i64 @ecore_cxt_get_xrc_srq_count(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_cxt_get_srq_count(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_iwarp_alloc(%struct.ecore_hwfn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
