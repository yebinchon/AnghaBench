; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_create_user_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_create_user_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlnxr_dev = type { i32, i32* }
%struct.qlnxr_qp = type { i32, i32, i32, %struct.TYPE_8__, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ib_pd = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.ib_ucontext* }
%struct.ib_ucontext = type { i32 }
%struct.ib_udata = type { i32 }
%struct.ib_qp_init_attr = type { i32 }
%struct.ecore_rdma_destroy_qp_out_params = type { i32 }
%struct.ecore_rdma_create_qp_in_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ecore_rdma_create_qp_out_params = type { i32, i32 }
%struct.qlnxr_pd = type { i32 }
%struct.qlnxr_ucontext = type { i32 }
%struct.qlnxr_create_qp_ureq = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"ib_copy_from_udata failed [%d]\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"qlnxr_init_user_queue failed [%d]\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"ecore_rdma_create_qp failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"qlnxr_copy_qp_uresp failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"fatal fault\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"exit[%d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlnxr_dev*, %struct.qlnxr_qp*, %struct.ib_pd*, %struct.ib_udata*, %struct.ib_qp_init_attr*)* @qlnxr_create_user_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlnxr_create_user_qp(%struct.qlnxr_dev* %0, %struct.qlnxr_qp* %1, %struct.ib_pd* %2, %struct.ib_udata* %3, %struct.ib_qp_init_attr* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.qlnxr_dev*, align 8
  %8 = alloca %struct.qlnxr_qp*, align 8
  %9 = alloca %struct.ib_pd*, align 8
  %10 = alloca %struct.ib_udata*, align 8
  %11 = alloca %struct.ib_qp_init_attr*, align 8
  %12 = alloca %struct.ecore_rdma_destroy_qp_out_params, align 4
  %13 = alloca %struct.ecore_rdma_create_qp_in_params, align 4
  %14 = alloca %struct.ecore_rdma_create_qp_out_params, align 4
  %15 = alloca %struct.qlnxr_pd*, align 8
  %16 = alloca %struct.ib_ucontext*, align 8
  %17 = alloca %struct.qlnxr_ucontext*, align 8
  %18 = alloca %struct.qlnxr_create_qp_ureq, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  store %struct.qlnxr_dev* %0, %struct.qlnxr_dev** %7, align 8
  store %struct.qlnxr_qp* %1, %struct.qlnxr_qp** %8, align 8
  store %struct.ib_pd* %2, %struct.ib_pd** %9, align 8
  store %struct.ib_udata* %3, %struct.ib_udata** %10, align 8
  store %struct.ib_qp_init_attr* %4, %struct.ib_qp_init_attr** %11, align 8
  %22 = load %struct.ib_pd*, %struct.ib_pd** %9, align 8
  %23 = call %struct.qlnxr_pd* @get_qlnxr_pd(%struct.ib_pd* %22)
  store %struct.qlnxr_pd* %23, %struct.qlnxr_pd** %15, align 8
  store %struct.ib_ucontext* null, %struct.ib_ucontext** %16, align 8
  store %struct.qlnxr_ucontext* null, %struct.qlnxr_ucontext** %17, align 8
  %24 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %7, align 8
  %25 = call i32 @QLNX_IS_ROCE(%struct.qlnxr_dev* %24)
  store i32 %25, i32* %19, align 4
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %20, align 4
  %28 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %7, align 8
  %29 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %21, align 8
  %31 = load i32*, i32** %21, align 8
  %32 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.ib_pd*, %struct.ib_pd** %9, align 8
  %34 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load %struct.ib_ucontext*, %struct.ib_ucontext** %36, align 8
  store %struct.ib_ucontext* %37, %struct.ib_ucontext** %16, align 8
  %38 = load %struct.ib_ucontext*, %struct.ib_ucontext** %16, align 8
  %39 = call %struct.qlnxr_ucontext* @get_qlnxr_ucontext(%struct.ib_ucontext* %38)
  store %struct.qlnxr_ucontext* %39, %struct.qlnxr_ucontext** %17, align 8
  %40 = call i32 @memset(%struct.qlnxr_create_qp_ureq* %18, i32 0, i32 40)
  %41 = load %struct.ib_udata*, %struct.ib_udata** %10, align 8
  %42 = call i32 @ib_copy_from_udata(%struct.qlnxr_create_qp_ureq* %18, %struct.ib_udata* %41, i32 40)
  store i32 %42, i32* %20, align 4
  %43 = load i32, i32* %20, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %5
  %46 = load i32*, i32** %21, align 8
  %47 = load i32, i32* %20, align 4
  %48 = call i32 (i32*, i8*, ...) @QL_DPRINT11(i32* %46, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %20, align 4
  store i32 %49, i32* %6, align 4
  br label %209

50:                                               ; preds = %5
  %51 = load %struct.ib_ucontext*, %struct.ib_ucontext** %16, align 8
  %52 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %7, align 8
  %53 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %8, align 8
  %54 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %53, i32 0, i32 5
  %55 = getelementptr inbounds %struct.qlnxr_create_qp_ureq, %struct.qlnxr_create_qp_ureq* %18, i32 0, i32 9
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.qlnxr_create_qp_ureq, %struct.qlnxr_create_qp_ureq* %18, i32 0, i32 8
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %19, align 4
  %60 = call i32 @qlnxr_init_user_queue(%struct.ib_ucontext* %51, %struct.qlnxr_dev* %52, %struct.TYPE_8__* %54, i32 %56, i32 %58, i32 0, i32 0, i32 %59)
  store i32 %60, i32* %20, align 4
  %61 = load i32, i32* %20, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %50
  %64 = load i32*, i32** %21, align 8
  %65 = load i32, i32* %20, align 4
  %66 = call i32 (i32*, i8*, ...) @QL_DPRINT11(i32* %64, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* %20, align 4
  store i32 %67, i32* %6, align 4
  br label %209

68:                                               ; preds = %50
  %69 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %8, align 8
  %70 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %92, label %73

73:                                               ; preds = %68
  %74 = load %struct.ib_ucontext*, %struct.ib_ucontext** %16, align 8
  %75 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %7, align 8
  %76 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %8, align 8
  %77 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.qlnxr_create_qp_ureq, %struct.qlnxr_create_qp_ureq* %18, i32 0, i32 7
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.qlnxr_create_qp_ureq, %struct.qlnxr_create_qp_ureq* %18, i32 0, i32 6
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %19, align 4
  %83 = call i32 @qlnxr_init_user_queue(%struct.ib_ucontext* %74, %struct.qlnxr_dev* %75, %struct.TYPE_8__* %77, i32 %79, i32 %81, i32 0, i32 0, i32 %82)
  store i32 %83, i32* %20, align 4
  %84 = load i32, i32* %20, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %73
  %87 = load i32*, i32** %21, align 8
  %88 = load i32, i32* %20, align 4
  %89 = call i32 (i32*, i8*, ...) @QL_DPRINT11(i32* %87, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* %20, align 4
  store i32 %90, i32* %6, align 4
  br label %209

91:                                               ; preds = %73
  br label %92

92:                                               ; preds = %91, %68
  %93 = bitcast %struct.ecore_rdma_create_qp_in_params* %13 to %struct.qlnxr_create_qp_ureq*
  %94 = call i32 @memset(%struct.qlnxr_create_qp_ureq* %93, i32 0, i32 40)
  %95 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %7, align 8
  %96 = load %struct.qlnxr_pd*, %struct.qlnxr_pd** %15, align 8
  %97 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %8, align 8
  %98 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %11, align 8
  %99 = bitcast %struct.ecore_rdma_create_qp_in_params* %13 to %struct.qlnxr_create_qp_ureq*
  %100 = call i32 @qlnxr_init_common_qp_in_params(%struct.qlnxr_dev* %95, %struct.qlnxr_pd* %96, %struct.qlnxr_qp* %97, %struct.ib_qp_init_attr* %98, i32 0, %struct.qlnxr_create_qp_ureq* %99)
  %101 = getelementptr inbounds %struct.qlnxr_create_qp_ureq, %struct.qlnxr_create_qp_ureq* %18, i32 0, i32 5
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds %struct.ecore_rdma_create_qp_in_params, %struct.ecore_rdma_create_qp_in_params* %13, i32 0, i32 5
  store i32 %102, i32* %103, align 4
  %104 = getelementptr inbounds %struct.qlnxr_create_qp_ureq, %struct.qlnxr_create_qp_ureq* %18, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds %struct.ecore_rdma_create_qp_in_params, %struct.ecore_rdma_create_qp_in_params* %13, i32 0, i32 4
  store i32 %105, i32* %106, align 4
  %107 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %8, align 8
  %108 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %107, i32 0, i32 5
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = getelementptr inbounds %struct.ecore_rdma_create_qp_in_params, %struct.ecore_rdma_create_qp_in_params* %13, i32 0, i32 3
  store i32 %111, i32* %112, align 4
  %113 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %8, align 8
  %114 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %113, i32 0, i32 5
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = getelementptr inbounds %struct.ecore_rdma_create_qp_in_params, %struct.ecore_rdma_create_qp_in_params* %13, i32 0, i32 2
  store i32 %118, i32* %119, align 4
  %120 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %8, align 8
  %121 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %138, label %124

124:                                              ; preds = %92
  %125 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %8, align 8
  %126 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %125, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = getelementptr inbounds %struct.ecore_rdma_create_qp_in_params, %struct.ecore_rdma_create_qp_in_params* %13, i32 0, i32 1
  store i32 %129, i32* %130, align 4
  %131 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %8, align 8
  %132 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = getelementptr inbounds %struct.ecore_rdma_create_qp_in_params, %struct.ecore_rdma_create_qp_in_params* %13, i32 0, i32 0
  store i32 %136, i32* %137, align 4
  br label %138

138:                                              ; preds = %124, %92
  %139 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %7, align 8
  %140 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = bitcast %struct.ecore_rdma_create_qp_in_params* %13 to %struct.qlnxr_create_qp_ureq*
  %143 = call i32 @ecore_rdma_create_qp(i32 %141, %struct.qlnxr_create_qp_ureq* %142, %struct.ecore_rdma_create_qp_out_params* %14)
  %144 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %8, align 8
  %145 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  %146 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %8, align 8
  %147 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %155, label %150

150:                                              ; preds = %138
  %151 = load i32, i32* @ENOMEM, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %20, align 4
  %153 = load i32*, i32** %21, align 8
  %154 = call i32 (i32*, i8*, ...) @QL_DPRINT11(i32* %153, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %201

155:                                              ; preds = %138
  %156 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %7, align 8
  %157 = call i64 @QLNX_IS_IWARP(%struct.qlnxr_dev* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %155
  %160 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %7, align 8
  %161 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %8, align 8
  %162 = call i32 @qlnxr_iwarp_populate_user_qp(%struct.qlnxr_dev* %160, %struct.qlnxr_qp* %161, %struct.ecore_rdma_create_qp_out_params* %14)
  br label %163

163:                                              ; preds = %159, %155
  %164 = getelementptr inbounds %struct.ecore_rdma_create_qp_out_params, %struct.ecore_rdma_create_qp_out_params* %14, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %8, align 8
  %167 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %166, i32 0, i32 2
  store i32 %165, i32* %167, align 8
  %168 = getelementptr inbounds %struct.ecore_rdma_create_qp_out_params, %struct.ecore_rdma_create_qp_out_params* %14, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %8, align 8
  %171 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %170, i32 0, i32 1
  store i32 %169, i32* %171, align 4
  %172 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %7, align 8
  %173 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %8, align 8
  %174 = load %struct.ib_udata*, %struct.ib_udata** %10, align 8
  %175 = call i32 @qlnxr_copy_qp_uresp(%struct.qlnxr_dev* %172, %struct.qlnxr_qp* %173, %struct.ib_udata* %174)
  store i32 %175, i32* %20, align 4
  %176 = load i32, i32* %20, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %163
  %179 = load i32*, i32** %21, align 8
  %180 = call i32 (i32*, i8*, ...) @QL_DPRINT11(i32* %179, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %187

181:                                              ; preds = %163
  %182 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %7, align 8
  %183 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %8, align 8
  %184 = call i32 @qlnxr_qp_user_print(%struct.qlnxr_dev* %182, %struct.qlnxr_qp* %183)
  %185 = load i32*, i32** %21, align 8
  %186 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %185, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %209

187:                                              ; preds = %178
  %188 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %7, align 8
  %189 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %8, align 8
  %192 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @ecore_rdma_destroy_qp(i32 %190, i32 %193, %struct.ecore_rdma_destroy_qp_out_params* %12)
  store i32 %194, i32* %20, align 4
  %195 = load i32, i32* %20, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %187
  %198 = load i32*, i32** %21, align 8
  %199 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %198, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  br label %200

200:                                              ; preds = %197, %187
  br label %201

201:                                              ; preds = %200, %150
  %202 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %7, align 8
  %203 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %8, align 8
  %204 = call i32 @qlnxr_cleanup_user(%struct.qlnxr_dev* %202, %struct.qlnxr_qp* %203)
  %205 = load i32*, i32** %21, align 8
  %206 = load i32, i32* %20, align 4
  %207 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %205, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %206)
  %208 = load i32, i32* %20, align 4
  store i32 %208, i32* %6, align 4
  br label %209

209:                                              ; preds = %201, %181, %86, %63, %45
  %210 = load i32, i32* %6, align 4
  ret i32 %210
}

declare dso_local %struct.qlnxr_pd* @get_qlnxr_pd(%struct.ib_pd*) #1

declare dso_local i32 @QLNX_IS_ROCE(%struct.qlnxr_dev*) #1

declare dso_local i32 @QL_DPRINT12(i32*, i8*, ...) #1

declare dso_local %struct.qlnxr_ucontext* @get_qlnxr_ucontext(%struct.ib_ucontext*) #1

declare dso_local i32 @memset(%struct.qlnxr_create_qp_ureq*, i32, i32) #1

declare dso_local i32 @ib_copy_from_udata(%struct.qlnxr_create_qp_ureq*, %struct.ib_udata*, i32) #1

declare dso_local i32 @QL_DPRINT11(i32*, i8*, ...) #1

declare dso_local i32 @qlnxr_init_user_queue(%struct.ib_ucontext*, %struct.qlnxr_dev*, %struct.TYPE_8__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @qlnxr_init_common_qp_in_params(%struct.qlnxr_dev*, %struct.qlnxr_pd*, %struct.qlnxr_qp*, %struct.ib_qp_init_attr*, i32, %struct.qlnxr_create_qp_ureq*) #1

declare dso_local i32 @ecore_rdma_create_qp(i32, %struct.qlnxr_create_qp_ureq*, %struct.ecore_rdma_create_qp_out_params*) #1

declare dso_local i64 @QLNX_IS_IWARP(%struct.qlnxr_dev*) #1

declare dso_local i32 @qlnxr_iwarp_populate_user_qp(%struct.qlnxr_dev*, %struct.qlnxr_qp*, %struct.ecore_rdma_create_qp_out_params*) #1

declare dso_local i32 @qlnxr_copy_qp_uresp(%struct.qlnxr_dev*, %struct.qlnxr_qp*, %struct.ib_udata*) #1

declare dso_local i32 @qlnxr_qp_user_print(%struct.qlnxr_dev*, %struct.qlnxr_qp*) #1

declare dso_local i32 @ecore_rdma_destroy_qp(i32, i32, %struct.ecore_rdma_destroy_qp_out_params*) #1

declare dso_local i32 @qlnxr_cleanup_user(%struct.qlnxr_dev*, %struct.qlnxr_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
