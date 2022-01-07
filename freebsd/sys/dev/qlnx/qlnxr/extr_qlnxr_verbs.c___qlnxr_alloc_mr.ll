; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c___qlnxr_alloc_mr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c___qlnxr_alloc_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlnxr_mr = type { %struct.TYPE_8__, %struct.TYPE_6__, %struct.TYPE_7__, i32, %struct.qlnxr_dev* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i64, i64, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.qlnxr_dev = type { i32, i32* }
%struct.ib_pd = type { i32 }
%struct.qlnxr_pd = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"enter ibpd = %p pd = %p  pd_id = %d max_page_list_len = %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"kzalloc(mr) failed\0A\00", align 1
@QLNXR_MR_FRMR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"qlnxr_init_mr_info failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"ecore_rdma_alloc_tid failed\0A\00", align 1
@ECORE_RDMA_TID_FMR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"ecore_rdma_register_tid failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"exit mr = %p mr->ibmr.lkey = 0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.qlnxr_mr* (%struct.ib_pd*, i32)* @__qlnxr_alloc_mr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.qlnxr_mr* @__qlnxr_alloc_mr(%struct.ib_pd* %0, i32 %1) #0 {
  %3 = alloca %struct.qlnxr_mr*, align 8
  %4 = alloca %struct.ib_pd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qlnxr_pd*, align 8
  %7 = alloca %struct.qlnxr_dev*, align 8
  %8 = alloca %struct.qlnxr_mr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.ib_pd* %0, %struct.ib_pd** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %12 = call %struct.qlnxr_pd* @get_qlnxr_pd(%struct.ib_pd* %11)
  store %struct.qlnxr_pd* %12, %struct.qlnxr_pd** %6, align 8
  %13 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %14 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.qlnxr_dev* @get_qlnxr_dev(i32 %15)
  store %struct.qlnxr_dev* %16, %struct.qlnxr_dev** %7, align 8
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %9, align 4
  %19 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %7, align 8
  %20 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %10, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %24 = load %struct.qlnxr_pd*, %struct.qlnxr_pd** %6, align 8
  %25 = load %struct.qlnxr_pd*, %struct.qlnxr_pd** %6, align 8
  %26 = getelementptr inbounds %struct.qlnxr_pd, %struct.qlnxr_pd* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %22, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), %struct.ib_pd* %23, %struct.qlnxr_pd* %24, i32 %27, i32 %28)
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.qlnxr_mr* @kzalloc(i32 144, i32 %30)
  store %struct.qlnxr_mr* %31, %struct.qlnxr_mr** %8, align 8
  %32 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %8, align 8
  %33 = icmp ne %struct.qlnxr_mr* %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %2
  %35 = load i32*, i32** %10, align 8
  %36 = call i32 @QL_DPRINT11(i32* %35, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* %9, align 4
  %38 = call %struct.qlnxr_mr* @ERR_PTR(i32 %37)
  store %struct.qlnxr_mr* %38, %struct.qlnxr_mr** %3, align 8
  br label %195

39:                                               ; preds = %2
  %40 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %7, align 8
  %41 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %8, align 8
  %42 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %41, i32 0, i32 4
  store %struct.qlnxr_dev* %40, %struct.qlnxr_dev** %42, align 8
  %43 = load i32, i32* @QLNXR_MR_FRMR, align 4
  %44 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %8, align 8
  %45 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 8
  %46 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %7, align 8
  %47 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %8, align 8
  %48 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %47, i32 0, i32 2
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @qlnxr_init_mr_info(%struct.qlnxr_dev* %46, %struct.TYPE_7__* %48, i32 %49, i32 1)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %39
  %54 = load i32*, i32** %10, align 8
  %55 = call i32 @QL_DPRINT11(i32* %54, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %188

56:                                               ; preds = %39
  %57 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %7, align 8
  %58 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %8, align 8
  %61 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = call i32 @ecore_rdma_alloc_tid(i32 %59, i32* %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %56
  %67 = load i32*, i32** %10, align 8
  %68 = call i32 @QL_DPRINT11(i32* %67, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %188

69:                                               ; preds = %56
  %70 = load i32, i32* @ECORE_RDMA_TID_FMR, align 4
  %71 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %8, align 8
  %72 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 18
  store i32 %70, i32* %73, align 4
  %74 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %8, align 8
  %75 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  store i32 0, i32* %76, align 4
  %77 = load %struct.qlnxr_pd*, %struct.qlnxr_pd** %6, align 8
  %78 = getelementptr inbounds %struct.qlnxr_pd, %struct.qlnxr_pd* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %8, align 8
  %81 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 17
  store i32 %79, i32* %82, align 8
  %83 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %8, align 8
  %84 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 2
  store i32 1, i32* %85, align 8
  %86 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %8, align 8
  %87 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 16
  store i64 0, i64* %88, align 8
  %89 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %8, align 8
  %90 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 15
  store i64 0, i64* %91, align 8
  %92 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %8, align 8
  %93 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 14
  store i64 0, i64* %94, align 8
  %95 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %8, align 8
  %96 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 13
  store i64 0, i64* %97, align 8
  %98 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %8, align 8
  %99 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 3
  store i32 0, i32* %100, align 4
  %101 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %8, align 8
  %102 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 12
  store i64 0, i64* %103, align 8
  %104 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %8, align 8
  %105 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %8, align 8
  %110 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 11
  store i32 %108, i32* %111, align 4
  %112 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %8, align 8
  %113 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @ilog2(i32 %116)
  %118 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %8, align 8
  %119 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 10
  store i32 %117, i32* %120, align 8
  %121 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %8, align 8
  %122 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 9
  store i64 0, i64* %123, align 8
  %124 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %8, align 8
  %125 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 8
  store i64 0, i64* %126, align 8
  %127 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %8, align 8
  %128 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 7
  store i64 0, i64* %129, align 8
  %130 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %8, align 8
  %131 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 4
  store i32 0, i32* %132, align 8
  %133 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %8, align 8
  %134 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 5
  store i32 1, i32* %135, align 4
  %136 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %8, align 8
  %137 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 6
  store i32 0, i32* %138, align 8
  %139 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %7, align 8
  %140 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %8, align 8
  %143 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %142, i32 0, i32 0
  %144 = call i32 @ecore_rdma_register_tid(i32 %141, %struct.TYPE_8__* %143)
  store i32 %144, i32* %9, align 4
  %145 = load i32, i32* %9, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %69
  %148 = load i32*, i32** %10, align 8
  %149 = call i32 @QL_DPRINT11(i32* %148, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %179

150:                                              ; preds = %69
  %151 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %8, align 8
  %152 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = shl i32 %154, 8
  %156 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %8, align 8
  %157 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = or i32 %155, %159
  %161 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %8, align 8
  %162 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  store i32 %160, i32* %163, align 8
  %164 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %8, align 8
  %165 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %8, align 8
  %169 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 1
  store i32 %167, i32* %170, align 4
  %171 = load i32*, i32** %10, align 8
  %172 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %8, align 8
  %173 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %8, align 8
  %174 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %171, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), %struct.qlnxr_mr* %172, i32 %176)
  %178 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %8, align 8
  store %struct.qlnxr_mr* %178, %struct.qlnxr_mr** %3, align 8
  br label %195

179:                                              ; preds = %147
  %180 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %7, align 8
  %181 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %8, align 8
  %184 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @ecore_rdma_free_tid(i32 %182, i32 %186)
  br label %188

188:                                              ; preds = %179, %66, %53
  %189 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %8, align 8
  %190 = call i32 @kfree(%struct.qlnxr_mr* %189)
  %191 = load i32*, i32** %10, align 8
  %192 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %191, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %193 = load i32, i32* %9, align 4
  %194 = call %struct.qlnxr_mr* @ERR_PTR(i32 %193)
  store %struct.qlnxr_mr* %194, %struct.qlnxr_mr** %3, align 8
  br label %195

195:                                              ; preds = %188, %150, %34
  %196 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %3, align 8
  ret %struct.qlnxr_mr* %196
}

declare dso_local %struct.qlnxr_pd* @get_qlnxr_pd(%struct.ib_pd*) #1

declare dso_local %struct.qlnxr_dev* @get_qlnxr_dev(i32) #1

declare dso_local i32 @QL_DPRINT12(i32*, i8*, ...) #1

declare dso_local %struct.qlnxr_mr* @kzalloc(i32, i32) #1

declare dso_local i32 @QL_DPRINT11(i32*, i8*) #1

declare dso_local %struct.qlnxr_mr* @ERR_PTR(i32) #1

declare dso_local i32 @qlnxr_init_mr_info(%struct.qlnxr_dev*, %struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @ecore_rdma_alloc_tid(i32, i32*) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @ecore_rdma_register_tid(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @ecore_rdma_free_tid(i32, i32) #1

declare dso_local i32 @kfree(%struct.qlnxr_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
