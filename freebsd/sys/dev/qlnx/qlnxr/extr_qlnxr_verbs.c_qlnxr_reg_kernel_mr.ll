; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_reg_kernel_mr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_reg_kernel_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i32, i32 }
%struct.ib_pd = type { i32 }
%struct.ib_phys_buf = type { i32 }
%struct.qlnxr_dev = type { i32, i32* }
%struct.qlnxr_mr = type { %struct.TYPE_9__, %struct.TYPE_10__, %struct.ib_mr, i32*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__*, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i64, i8*, i8*, i32, i32, i32, i32 }
%struct.qlnxr_pd = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"pd = %d buf_list = %p, buf_cnt = %d, iova_start = %p, acc = %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"kzalloc(mr) failed\0A\00", align 1
@QLNXR_MR_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"qlnxr_init_mr_info failed [%d]\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"roce alloc tid returned an error %d\0A\00", align 1
@ECORE_RDMA_TID_REGISTERED_MR = common dso_local global i32 0, align 4
@IB_ACCESS_LOCAL_WRITE = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_READ = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_WRITE = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_ATOMIC = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"roce register tid returned an error %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"lkey: %x\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"exit [%d]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_mr* @qlnxr_reg_kernel_mr(%struct.ib_pd* %0, %struct.ib_phys_buf* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.ib_mr*, align 8
  %7 = alloca %struct.ib_pd*, align 8
  %8 = alloca %struct.ib_phys_buf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.qlnxr_dev*, align 8
  %14 = alloca %struct.qlnxr_mr*, align 8
  %15 = alloca %struct.qlnxr_pd*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  store %struct.ib_pd* %0, %struct.ib_pd** %7, align 8
  store %struct.ib_phys_buf* %1, %struct.ib_phys_buf** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %12, align 4
  %21 = load %struct.ib_pd*, %struct.ib_pd** %7, align 8
  %22 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.qlnxr_dev* @get_qlnxr_dev(i32 %23)
  store %struct.qlnxr_dev* %24, %struct.qlnxr_dev** %13, align 8
  store i64 0, i64* %17, align 8
  %25 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %13, align 8
  %26 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %16, align 8
  %28 = load i32*, i32** %16, align 8
  %29 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.ib_pd*, %struct.ib_pd** %7, align 8
  %31 = call %struct.qlnxr_pd* @get_qlnxr_pd(%struct.ib_pd* %30)
  store %struct.qlnxr_pd* %31, %struct.qlnxr_pd** %15, align 8
  %32 = load i32*, i32** %16, align 8
  %33 = load %struct.qlnxr_pd*, %struct.qlnxr_pd** %15, align 8
  %34 = getelementptr inbounds %struct.qlnxr_pd, %struct.qlnxr_pd* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ib_phys_buf*, %struct.ib_phys_buf** %8, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i32*, i32** %11, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %32, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %35, %struct.ib_phys_buf* %36, i32 %37, i32* %38, i32 %39)
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call %struct.qlnxr_mr* @kzalloc(i32 144, i32 %41)
  store %struct.qlnxr_mr* %42, %struct.qlnxr_mr** %14, align 8
  %43 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %14, align 8
  %44 = icmp ne %struct.qlnxr_mr* %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %5
  %46 = load i32*, i32** %16, align 8
  %47 = call i32 (i32*, i8*, ...) @QL_DPRINT11(i32* %46, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i32, i32* %12, align 4
  %49 = call %struct.ib_mr* @ERR_PTR(i32 %48)
  store %struct.ib_mr* %49, %struct.ib_mr** %6, align 8
  br label %311

50:                                               ; preds = %5
  %51 = load i32, i32* @QLNXR_MR_KERNEL, align 4
  %52 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %14, align 8
  %53 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 8
  %54 = load i32*, i32** %11, align 8
  %55 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %14, align 8
  %56 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %55, i32 0, i32 3
  store i32* %54, i32** %56, align 8
  %57 = load i32*, i32** %16, align 8
  %58 = load %struct.ib_phys_buf*, %struct.ib_phys_buf** %8, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @qlnxr_validate_phys_buf_list(i32* %57, %struct.ib_phys_buf* %58, i32 %59, i8** %18)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %50
  br label %303

64:                                               ; preds = %50
  %65 = load i32*, i32** %16, align 8
  %66 = load %struct.ib_phys_buf*, %struct.ib_phys_buf** %8, align 8
  %67 = load i32, i32* %9, align 4
  %68 = call i64 @qlnxr_get_num_pages(i32* %65, %struct.ib_phys_buf* %66, i32 %67)
  store i64 %68, i64* %17, align 8
  %69 = load i64, i64* %17, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %64
  br label %303

72:                                               ; preds = %64
  %73 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %13, align 8
  %74 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %14, align 8
  %75 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %74, i32 0, i32 0
  %76 = load i64, i64* %17, align 8
  %77 = call i32 @qlnxr_init_mr_info(%struct.qlnxr_dev* %73, %struct.TYPE_9__* %75, i64 %76, i32 1)
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %72
  %81 = load i32*, i32** %16, align 8
  %82 = load i32, i32* %12, align 4
  %83 = call i32 (i32*, i8*, ...) @QL_DPRINT11(i32* %81, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %82)
  br label %293

84:                                               ; preds = %72
  %85 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %13, align 8
  %86 = load %struct.ib_phys_buf*, %struct.ib_phys_buf** %8, align 8
  %87 = load i32, i32* %9, align 4
  %88 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %14, align 8
  %89 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %90, align 8
  %92 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %14, align 8
  %93 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 1
  %95 = call i32 @qlnxr_populate_phys_mem_pbls(%struct.qlnxr_dev* %85, %struct.ib_phys_buf* %86, i32 %87, %struct.TYPE_7__* %91, %struct.TYPE_8__* %94)
  %96 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %13, align 8
  %97 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %14, align 8
  %100 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = call i32 @ecore_rdma_alloc_tid(i32 %98, i32* %101)
  store i32 %102, i32* %12, align 4
  %103 = load i32, i32* %12, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %84
  %106 = load i32*, i32** %16, align 8
  %107 = load i32, i32* %12, align 4
  %108 = call i32 (i32*, i8*, ...) @QL_DPRINT11(i32* %106, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %107)
  br label %293

109:                                              ; preds = %84
  %110 = load i32, i32* @ECORE_RDMA_TID_REGISTERED_MR, align 4
  %111 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %14, align 8
  %112 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 19
  store i32 %110, i32* %113, align 4
  %114 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %14, align 8
  %115 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 1
  store i32 0, i32* %116, align 4
  %117 = load %struct.qlnxr_pd*, %struct.qlnxr_pd** %15, align 8
  %118 = getelementptr inbounds %struct.qlnxr_pd, %struct.qlnxr_pd* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %14, align 8
  %121 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 18
  store i32 %119, i32* %122, align 8
  %123 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %14, align 8
  %124 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 2
  store i32 1, i32* %125, align 8
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* @IB_ACCESS_LOCAL_WRITE, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  %130 = zext i1 %129 to i64
  %131 = select i1 %129, i32 1, i32 0
  %132 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %14, align 8
  %133 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 3
  store i32 %131, i32* %134, align 4
  %135 = load i32, i32* %10, align 4
  %136 = load i32, i32* @IB_ACCESS_REMOTE_READ, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  %139 = zext i1 %138 to i64
  %140 = select i1 %138, i32 1, i32 0
  %141 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %14, align 8
  %142 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 4
  store i32 %140, i32* %143, align 8
  %144 = load i32, i32* %10, align 4
  %145 = load i32, i32* @IB_ACCESS_REMOTE_WRITE, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  %148 = zext i1 %147 to i64
  %149 = select i1 %147, i32 1, i32 0
  %150 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %14, align 8
  %151 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 5
  store i32 %149, i32* %152, align 4
  %153 = load i32, i32* %10, align 4
  %154 = load i32, i32* @IB_ACCESS_REMOTE_ATOMIC, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  %157 = zext i1 %156 to i64
  %158 = select i1 %156, i32 1, i32 0
  %159 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %14, align 8
  %160 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 6
  store i32 %158, i32* %161, align 8
  %162 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %14, align 8
  %163 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 7
  store i32 0, i32* %164, align 4
  %165 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %14, align 8
  %166 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i64 0
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %14, align 8
  %173 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 17
  store i32 %171, i32* %174, align 4
  %175 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %14, align 8
  %176 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %14, align 8
  %181 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 16
  store i32 %179, i32* %182, align 8
  %183 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %14, align 8
  %184 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = call i8* @ilog2(i32 %187)
  %189 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %14, align 8
  %190 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 15
  store i8* %188, i8** %191, align 8
  %192 = load i32, i32* @PAGE_SIZE, align 4
  %193 = call i8* @ilog2(i32 %192)
  %194 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %14, align 8
  %195 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 14
  store i8* %193, i8** %196, align 8
  %197 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %14, align 8
  %198 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 13
  store i64 0, i64* %199, align 8
  %200 = load i8*, i8** %18, align 8
  %201 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %14, align 8
  %202 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 12
  store i8* %200, i8** %203, align 8
  %204 = load i32*, i32** %11, align 8
  %205 = bitcast i32* %204 to i8*
  %206 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %14, align 8
  %207 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 11
  store i8* %205, i8** %208, align 8
  %209 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %14, align 8
  %210 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 8
  store i32 0, i32* %211, align 8
  %212 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %14, align 8
  %213 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 9
  store i32 0, i32* %214, align 4
  %215 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %14, align 8
  %216 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 10
  store i32 0, i32* %217, align 8
  %218 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %13, align 8
  %219 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %14, align 8
  %222 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %221, i32 0, i32 1
  %223 = call i32 @ecore_rdma_register_tid(i32 %220, %struct.TYPE_10__* %222)
  store i32 %223, i32* %12, align 4
  %224 = load i32, i32* %12, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %230

226:                                              ; preds = %109
  %227 = load i32*, i32** %16, align 8
  %228 = load i32, i32* %12, align 4
  %229 = call i32 (i32*, i8*, ...) @QL_DPRINT11(i32* %227, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %228)
  br label %284

230:                                              ; preds = %109
  %231 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %14, align 8
  %232 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = shl i32 %234, 8
  %236 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %14, align 8
  %237 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = or i32 %235, %239
  %241 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %14, align 8
  %242 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %241, i32 0, i32 2
  %243 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %242, i32 0, i32 0
  store i32 %240, i32* %243, align 8
  %244 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %14, align 8
  %245 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %245, i32 0, i32 5
  %247 = load i32, i32* %246, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %261, label %249

249:                                              ; preds = %230
  %250 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %14, align 8
  %251 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %250, i32 0, i32 1
  %252 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %251, i32 0, i32 4
  %253 = load i32, i32* %252, align 8
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %261, label %255

255:                                              ; preds = %249
  %256 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %14, align 8
  %257 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %257, i32 0, i32 6
  %259 = load i32, i32* %258, align 8
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %275

261:                                              ; preds = %255, %249, %230
  %262 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %14, align 8
  %263 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = shl i32 %265, 8
  %267 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %14, align 8
  %268 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %267, i32 0, i32 1
  %269 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = or i32 %266, %270
  %272 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %14, align 8
  %273 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %272, i32 0, i32 2
  %274 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %273, i32 0, i32 1
  store i32 %271, i32* %274, align 4
  br label %275

275:                                              ; preds = %261, %255
  %276 = load i32*, i32** %16, align 8
  %277 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %14, align 8
  %278 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %277, i32 0, i32 2
  %279 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %276, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %280)
  %282 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %14, align 8
  %283 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %282, i32 0, i32 2
  store %struct.ib_mr* %283, %struct.ib_mr** %6, align 8
  br label %311

284:                                              ; preds = %226
  %285 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %13, align 8
  %286 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %14, align 8
  %289 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %288, i32 0, i32 1
  %290 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = call i32 @ecore_rdma_free_tid(i32 %287, i32 %291)
  br label %293

293:                                              ; preds = %284, %105, %80
  %294 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %13, align 8
  %295 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %14, align 8
  %296 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %296, i32 0, i32 1
  %298 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %14, align 8
  %299 = getelementptr inbounds %struct.qlnxr_mr, %struct.qlnxr_mr* %298, i32 0, i32 0
  %300 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %299, i32 0, i32 0
  %301 = load %struct.TYPE_7__*, %struct.TYPE_7__** %300, align 8
  %302 = call i32 @qlnxr_free_pbl(%struct.qlnxr_dev* %294, %struct.TYPE_8__* %297, %struct.TYPE_7__* %301)
  br label %303

303:                                              ; preds = %293, %71, %63
  %304 = load %struct.qlnxr_mr*, %struct.qlnxr_mr** %14, align 8
  %305 = call i32 @kfree(%struct.qlnxr_mr* %304)
  %306 = load i32*, i32** %16, align 8
  %307 = load i32, i32* %12, align 4
  %308 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %306, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %307)
  %309 = load i32, i32* %12, align 4
  %310 = call %struct.ib_mr* @ERR_PTR(i32 %309)
  store %struct.ib_mr* %310, %struct.ib_mr** %6, align 8
  br label %311

311:                                              ; preds = %303, %275, %45
  %312 = load %struct.ib_mr*, %struct.ib_mr** %6, align 8
  ret %struct.ib_mr* %312
}

declare dso_local %struct.qlnxr_dev* @get_qlnxr_dev(i32) #1

declare dso_local i32 @QL_DPRINT12(i32*, i8*, ...) #1

declare dso_local %struct.qlnxr_pd* @get_qlnxr_pd(%struct.ib_pd*) #1

declare dso_local %struct.qlnxr_mr* @kzalloc(i32, i32) #1

declare dso_local i32 @QL_DPRINT11(i32*, i8*, ...) #1

declare dso_local %struct.ib_mr* @ERR_PTR(i32) #1

declare dso_local i32 @qlnxr_validate_phys_buf_list(i32*, %struct.ib_phys_buf*, i32, i8**) #1

declare dso_local i64 @qlnxr_get_num_pages(i32*, %struct.ib_phys_buf*, i32) #1

declare dso_local i32 @qlnxr_init_mr_info(%struct.qlnxr_dev*, %struct.TYPE_9__*, i64, i32) #1

declare dso_local i32 @qlnxr_populate_phys_mem_pbls(%struct.qlnxr_dev*, %struct.ib_phys_buf*, i32, %struct.TYPE_7__*, %struct.TYPE_8__*) #1

declare dso_local i32 @ecore_rdma_alloc_tid(i32, i32*) #1

declare dso_local i8* @ilog2(i32) #1

declare dso_local i32 @ecore_rdma_register_tid(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @ecore_rdma_free_tid(i32, i32) #1

declare dso_local i32 @qlnxr_free_pbl(%struct.qlnxr_dev*, %struct.TYPE_8__*, %struct.TYPE_7__*) #1

declare dso_local i32 @kfree(%struct.qlnxr_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
