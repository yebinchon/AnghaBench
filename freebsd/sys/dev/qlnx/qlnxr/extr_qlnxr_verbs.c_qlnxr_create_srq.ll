; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_create_srq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_create_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_srq = type { i32 }
%struct.ib_pd = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.ib_ucontext* }
%struct.ib_ucontext = type { i32 }
%struct.ib_srq_init_attr = type { i32 }
%struct.ib_udata = type { i32 }
%struct.qlnxr_dev = type { i32, i32* }
%struct.ecore_rdma_destroy_srq_in_params = type { i32 }
%struct.ecore_rdma_create_srq_out_params = type { i32 }
%struct.ecore_rdma_create_srq_in_params = type { i8*, i8*, i8*, i8*, i32 }
%struct.qlnxr_pd = type { i32 }
%struct.qlnxr_srq_hwq_info = type { i8*, %struct.ecore_chain }
%struct.ecore_chain = type { i32 }
%struct.qlnxr_ucontext = type { i32 }
%struct.qlnxr_create_srq_ureq = type { i8*, i8*, i8*, i8*, i32 }
%struct.qlnxr_srq = type { i32, %struct.ib_srq, %struct.TYPE_10__, i32, %struct.qlnxr_srq_hwq_info, %struct.qlnxr_dev* }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_7__ = type { i8* }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"cannot allocate memory for srq\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"problem copying data from user space\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"created srq with srq_id = 0x%0x\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_srq* @qlnxr_create_srq(%struct.ib_pd* %0, %struct.ib_srq_init_attr* %1, %struct.ib_udata* %2) #0 {
  %4 = alloca %struct.ib_srq*, align 8
  %5 = alloca %struct.ib_pd*, align 8
  %6 = alloca %struct.ib_srq_init_attr*, align 8
  %7 = alloca %struct.ib_udata*, align 8
  %8 = alloca %struct.qlnxr_dev*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ecore_rdma_destroy_srq_in_params, align 4
  %11 = alloca %struct.ecore_rdma_create_srq_out_params, align 4
  %12 = alloca %struct.ecore_rdma_create_srq_in_params, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.qlnxr_pd*, align 8
  %16 = alloca %struct.ib_ucontext*, align 8
  %17 = alloca %struct.qlnxr_srq_hwq_info*, align 8
  %18 = alloca %struct.qlnxr_ucontext*, align 8
  %19 = alloca %struct.qlnxr_create_srq_ureq, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %struct.qlnxr_srq*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.ecore_chain*, align 8
  store %struct.ib_pd* %0, %struct.ib_pd** %5, align 8
  store %struct.ib_srq_init_attr* %1, %struct.ib_srq_init_attr** %6, align 8
  store %struct.ib_udata* %2, %struct.ib_udata** %7, align 8
  %25 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %26 = call %struct.qlnxr_pd* @get_qlnxr_pd(%struct.ib_pd* %25)
  store %struct.qlnxr_pd* %26, %struct.qlnxr_pd** %15, align 8
  store %struct.ib_ucontext* null, %struct.ib_ucontext** %16, align 8
  store %struct.qlnxr_ucontext* null, %struct.qlnxr_ucontext** %18, align 8
  store i32 0, i32* %23, align 4
  %27 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %28 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call %struct.qlnxr_dev* @get_qlnxr_dev(i32 %29)
  store %struct.qlnxr_dev* %30, %struct.qlnxr_dev** %8, align 8
  %31 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %8, align 8
  %32 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %9, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %37 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %8, align 8
  %38 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %6, align 8
  %39 = call i32 @qlnxr_check_srq_params(%struct.ib_pd* %36, %struct.qlnxr_dev* %37, %struct.ib_srq_init_attr* %38)
  store i32 %39, i32* %23, align 4
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call %struct.qlnxr_srq* @kzalloc(i32 64, i32 %40)
  store %struct.qlnxr_srq* %41, %struct.qlnxr_srq** %22, align 8
  %42 = load %struct.qlnxr_srq*, %struct.qlnxr_srq** %22, align 8
  %43 = icmp ne %struct.qlnxr_srq* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %3
  %45 = load i32*, i32** %9, align 8
  %46 = call i32 @QL_DPRINT11(i32* %45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store %struct.ib_srq* null, %struct.ib_srq** %4, align 8
  br label %215

47:                                               ; preds = %3
  %48 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %8, align 8
  %49 = load %struct.qlnxr_srq*, %struct.qlnxr_srq** %22, align 8
  %50 = getelementptr inbounds %struct.qlnxr_srq, %struct.qlnxr_srq* %49, i32 0, i32 5
  store %struct.qlnxr_dev* %48, %struct.qlnxr_dev** %50, align 8
  %51 = load %struct.qlnxr_srq*, %struct.qlnxr_srq** %22, align 8
  %52 = getelementptr inbounds %struct.qlnxr_srq, %struct.qlnxr_srq* %51, i32 0, i32 4
  store %struct.qlnxr_srq_hwq_info* %52, %struct.qlnxr_srq_hwq_info** %17, align 8
  %53 = load %struct.qlnxr_srq*, %struct.qlnxr_srq** %22, align 8
  %54 = getelementptr inbounds %struct.qlnxr_srq, %struct.qlnxr_srq* %53, i32 0, i32 3
  %55 = call i32 @spin_lock_init(i32* %54)
  %56 = bitcast %struct.ecore_rdma_create_srq_in_params* %12 to %struct.qlnxr_create_srq_ureq*
  %57 = call i32 @memset(%struct.qlnxr_create_srq_ureq* %56, i32 0, i32 40)
  %58 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %59 = icmp ne %struct.ib_udata* %58, null
  br i1 %59, label %60, label %119

60:                                               ; preds = %47
  %61 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %62 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %61, i32 0, i32 0
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = icmp ne %struct.TYPE_6__* %63, null
  br i1 %64, label %65, label %119

65:                                               ; preds = %60
  %66 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %67 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %66, i32 0, i32 0
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load %struct.ib_ucontext*, %struct.ib_ucontext** %69, align 8
  %71 = icmp ne %struct.ib_ucontext* %70, null
  br i1 %71, label %72, label %119

72:                                               ; preds = %65
  %73 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %74 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %73, i32 0, i32 0
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load %struct.ib_ucontext*, %struct.ib_ucontext** %76, align 8
  store %struct.ib_ucontext* %77, %struct.ib_ucontext** %16, align 8
  %78 = load %struct.ib_ucontext*, %struct.ib_ucontext** %16, align 8
  %79 = call %struct.qlnxr_ucontext* @get_qlnxr_ucontext(%struct.ib_ucontext* %78)
  store %struct.qlnxr_ucontext* %79, %struct.qlnxr_ucontext** %18, align 8
  %80 = call i32 @memset(%struct.qlnxr_create_srq_ureq* %19, i32 0, i32 40)
  %81 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %82 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %83 = getelementptr inbounds %struct.ib_udata, %struct.ib_udata* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @min(i32 40, i32 %84)
  %86 = call i64 @ib_copy_from_udata(%struct.qlnxr_create_srq_ureq* %19, %struct.ib_udata* %81, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %72
  %89 = load i32*, i32** %9, align 8
  %90 = call i32 @QL_DPRINT11(i32* %89, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %209

91:                                               ; preds = %72
  %92 = load %struct.ib_ucontext*, %struct.ib_ucontext** %16, align 8
  %93 = load %struct.qlnxr_srq*, %struct.qlnxr_srq** %22, align 8
  %94 = call i32 @qlnxr_init_srq_user_params(%struct.ib_ucontext* %92, %struct.qlnxr_srq* %93, %struct.qlnxr_create_srq_ureq* %19, i32 0, i32 0)
  store i32 %94, i32* %23, align 4
  %95 = load i32, i32* %23, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  br label %209

98:                                               ; preds = %91
  %99 = load %struct.qlnxr_srq*, %struct.qlnxr_srq** %22, align 8
  %100 = getelementptr inbounds %struct.qlnxr_srq, %struct.qlnxr_srq* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  store i8* %103, i8** %20, align 8
  %104 = load %struct.qlnxr_srq*, %struct.qlnxr_srq** %22, align 8
  %105 = getelementptr inbounds %struct.qlnxr_srq, %struct.qlnxr_srq* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  store i8* %109, i8** %13, align 8
  %110 = load %struct.qlnxr_srq_hwq_info*, %struct.qlnxr_srq_hwq_info** %17, align 8
  %111 = getelementptr inbounds %struct.qlnxr_srq_hwq_info, %struct.qlnxr_srq_hwq_info* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  store i8* %112, i8** %14, align 8
  %113 = load %struct.qlnxr_srq*, %struct.qlnxr_srq** %22, align 8
  %114 = getelementptr inbounds %struct.qlnxr_srq, %struct.qlnxr_srq* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  store i8* %118, i8** %21, align 8
  br label %143

119:                                              ; preds = %65, %60, %47
  %120 = load %struct.qlnxr_srq*, %struct.qlnxr_srq** %22, align 8
  %121 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %8, align 8
  %122 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %6, align 8
  %123 = call i32 @qlnxr_alloc_srq_kernel_params(%struct.qlnxr_srq* %120, %struct.qlnxr_dev* %121, %struct.ib_srq_init_attr* %122)
  store i32 %123, i32* %23, align 4
  %124 = load i32, i32* %23, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %119
  br label %209

127:                                              ; preds = %119
  %128 = load %struct.qlnxr_srq_hwq_info*, %struct.qlnxr_srq_hwq_info** %17, align 8
  %129 = getelementptr inbounds %struct.qlnxr_srq_hwq_info, %struct.qlnxr_srq_hwq_info* %128, i32 0, i32 1
  store %struct.ecore_chain* %129, %struct.ecore_chain** %24, align 8
  %130 = load %struct.ecore_chain*, %struct.ecore_chain** %24, align 8
  %131 = call i8* @ecore_chain_get_page_cnt(%struct.ecore_chain* %130)
  store i8* %131, i8** %20, align 8
  %132 = load %struct.ecore_chain*, %struct.ecore_chain** %24, align 8
  %133 = call i8* @ecore_chain_get_pbl_phys(%struct.ecore_chain* %132)
  store i8* %133, i8** %13, align 8
  %134 = load %struct.qlnxr_srq_hwq_info*, %struct.qlnxr_srq_hwq_info** %17, align 8
  %135 = getelementptr inbounds %struct.qlnxr_srq_hwq_info, %struct.qlnxr_srq_hwq_info* %134, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  store i8* %136, i8** %14, align 8
  %137 = load %struct.ecore_chain*, %struct.ecore_chain** %24, align 8
  %138 = getelementptr inbounds %struct.ecore_chain, %struct.ecore_chain* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = shl i32 %139, 4
  %141 = sext i32 %140 to i64
  %142 = inttoptr i64 %141 to i8*
  store i8* %142, i8** %21, align 8
  br label %143

143:                                              ; preds = %127, %98
  %144 = load %struct.qlnxr_pd*, %struct.qlnxr_pd** %15, align 8
  %145 = getelementptr inbounds %struct.qlnxr_pd, %struct.qlnxr_pd* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = getelementptr inbounds %struct.ecore_rdma_create_srq_in_params, %struct.ecore_rdma_create_srq_in_params* %12, i32 0, i32 4
  store i32 %146, i32* %147, align 8
  %148 = load i8*, i8** %13, align 8
  %149 = getelementptr inbounds %struct.ecore_rdma_create_srq_in_params, %struct.ecore_rdma_create_srq_in_params* %12, i32 0, i32 3
  store i8* %148, i8** %149, align 8
  %150 = load i8*, i8** %14, align 8
  %151 = getelementptr inbounds %struct.ecore_rdma_create_srq_in_params, %struct.ecore_rdma_create_srq_in_params* %12, i32 0, i32 2
  store i8* %150, i8** %151, align 8
  %152 = load i8*, i8** %20, align 8
  %153 = getelementptr inbounds %struct.ecore_rdma_create_srq_in_params, %struct.ecore_rdma_create_srq_in_params* %12, i32 0, i32 1
  store i8* %152, i8** %153, align 8
  %154 = load i8*, i8** %21, align 8
  %155 = getelementptr inbounds %struct.ecore_rdma_create_srq_in_params, %struct.ecore_rdma_create_srq_in_params* %12, i32 0, i32 0
  store i8* %154, i8** %155, align 8
  %156 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %8, align 8
  %157 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = bitcast %struct.ecore_rdma_create_srq_in_params* %12 to %struct.qlnxr_create_srq_ureq*
  %160 = call i32 @ecore_rdma_create_srq(i32 %158, %struct.qlnxr_create_srq_ureq* %159, %struct.ecore_rdma_create_srq_out_params* %11)
  store i32 %160, i32* %23, align 4
  %161 = load i32, i32* %23, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %143
  br label %199

164:                                              ; preds = %143
  %165 = getelementptr inbounds %struct.ecore_rdma_create_srq_out_params, %struct.ecore_rdma_create_srq_out_params* %11, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.qlnxr_srq*, %struct.qlnxr_srq** %22, align 8
  %168 = getelementptr inbounds %struct.qlnxr_srq, %struct.qlnxr_srq* %167, i32 0, i32 0
  store i32 %166, i32* %168, align 8
  %169 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %170 = icmp ne %struct.ib_udata* %169, null
  br i1 %170, label %171, label %180

171:                                              ; preds = %164
  %172 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %8, align 8
  %173 = load %struct.qlnxr_srq*, %struct.qlnxr_srq** %22, align 8
  %174 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %175 = call i32 @qlnxr_copy_srq_uresp(%struct.qlnxr_dev* %172, %struct.qlnxr_srq* %173, %struct.ib_udata* %174)
  store i32 %175, i32* %23, align 4
  %176 = load i32, i32* %23, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %171
  br label %188

179:                                              ; preds = %171
  br label %180

180:                                              ; preds = %179, %164
  %181 = load i32*, i32** %9, align 8
  %182 = load %struct.qlnxr_srq*, %struct.qlnxr_srq** %22, align 8
  %183 = getelementptr inbounds %struct.qlnxr_srq, %struct.qlnxr_srq* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %181, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %184)
  %186 = load %struct.qlnxr_srq*, %struct.qlnxr_srq** %22, align 8
  %187 = getelementptr inbounds %struct.qlnxr_srq, %struct.qlnxr_srq* %186, i32 0, i32 1
  store %struct.ib_srq* %187, %struct.ib_srq** %4, align 8
  br label %215

188:                                              ; preds = %178
  %189 = bitcast %struct.ecore_rdma_create_srq_in_params* %12 to %struct.qlnxr_create_srq_ureq*
  %190 = call i32 @memset(%struct.qlnxr_create_srq_ureq* %189, i32 0, i32 40)
  %191 = load %struct.qlnxr_srq*, %struct.qlnxr_srq** %22, align 8
  %192 = getelementptr inbounds %struct.qlnxr_srq, %struct.qlnxr_srq* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = getelementptr inbounds %struct.ecore_rdma_destroy_srq_in_params, %struct.ecore_rdma_destroy_srq_in_params* %10, i32 0, i32 0
  store i32 %193, i32* %194, align 4
  %195 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %8, align 8
  %196 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @ecore_rdma_destroy_srq(i32 %197, %struct.ecore_rdma_destroy_srq_in_params* %10)
  br label %199

199:                                              ; preds = %188, %163
  %200 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %201 = icmp ne %struct.ib_udata* %200, null
  br i1 %201, label %202, label %205

202:                                              ; preds = %199
  %203 = load %struct.qlnxr_srq*, %struct.qlnxr_srq** %22, align 8
  %204 = call i32 @qlnxr_free_srq_user_params(%struct.qlnxr_srq* %203)
  br label %208

205:                                              ; preds = %199
  %206 = load %struct.qlnxr_srq*, %struct.qlnxr_srq** %22, align 8
  %207 = call i32 @qlnxr_free_srq_kernel_params(%struct.qlnxr_srq* %206)
  br label %208

208:                                              ; preds = %205, %202
  br label %209

209:                                              ; preds = %208, %126, %97, %88
  %210 = load %struct.qlnxr_srq*, %struct.qlnxr_srq** %22, align 8
  %211 = call i32 @kfree(%struct.qlnxr_srq* %210)
  %212 = load i32, i32* @EFAULT, align 4
  %213 = sub nsw i32 0, %212
  %214 = call %struct.ib_srq* @ERR_PTR(i32 %213)
  store %struct.ib_srq* %214, %struct.ib_srq** %4, align 8
  br label %215

215:                                              ; preds = %209, %180, %44
  %216 = load %struct.ib_srq*, %struct.ib_srq** %4, align 8
  ret %struct.ib_srq* %216
}

declare dso_local %struct.qlnxr_pd* @get_qlnxr_pd(%struct.ib_pd*) #1

declare dso_local %struct.qlnxr_dev* @get_qlnxr_dev(i32) #1

declare dso_local i32 @QL_DPRINT12(i32*, i8*, ...) #1

declare dso_local i32 @qlnxr_check_srq_params(%struct.ib_pd*, %struct.qlnxr_dev*, %struct.ib_srq_init_attr*) #1

declare dso_local %struct.qlnxr_srq* @kzalloc(i32, i32) #1

declare dso_local i32 @QL_DPRINT11(i32*, i8*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @memset(%struct.qlnxr_create_srq_ureq*, i32, i32) #1

declare dso_local %struct.qlnxr_ucontext* @get_qlnxr_ucontext(%struct.ib_ucontext*) #1

declare dso_local i64 @ib_copy_from_udata(%struct.qlnxr_create_srq_ureq*, %struct.ib_udata*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @qlnxr_init_srq_user_params(%struct.ib_ucontext*, %struct.qlnxr_srq*, %struct.qlnxr_create_srq_ureq*, i32, i32) #1

declare dso_local i32 @qlnxr_alloc_srq_kernel_params(%struct.qlnxr_srq*, %struct.qlnxr_dev*, %struct.ib_srq_init_attr*) #1

declare dso_local i8* @ecore_chain_get_page_cnt(%struct.ecore_chain*) #1

declare dso_local i8* @ecore_chain_get_pbl_phys(%struct.ecore_chain*) #1

declare dso_local i32 @ecore_rdma_create_srq(i32, %struct.qlnxr_create_srq_ureq*, %struct.ecore_rdma_create_srq_out_params*) #1

declare dso_local i32 @qlnxr_copy_srq_uresp(%struct.qlnxr_dev*, %struct.qlnxr_srq*, %struct.ib_udata*) #1

declare dso_local i32 @ecore_rdma_destroy_srq(i32, %struct.ecore_rdma_destroy_srq_in_params*) #1

declare dso_local i32 @qlnxr_free_srq_user_params(%struct.qlnxr_srq*) #1

declare dso_local i32 @qlnxr_free_srq_kernel_params(%struct.qlnxr_srq*) #1

declare dso_local i32 @kfree(%struct.qlnxr_srq*) #1

declare dso_local %struct.ib_srq* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
