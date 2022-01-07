; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_prepare_fmr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_prepare_fmr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlnxr_qp = type { %struct.TYPE_17__, %struct.TYPE_16__*, %struct.qlnxr_dev* }
%struct.TYPE_17__ = type { i64, i32 }
%struct.TYPE_16__ = type { %struct.qlnxr_fast_reg_page_list* }
%struct.qlnxr_fast_reg_page_list = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.qlnxr_dev = type { i32* }
%struct.rdma_sq_fmr_wqe_1st = type { %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i8*, i8* }
%struct.ib_send_wr = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i32, i32, i32, i32, %struct.TYPE_19__*, i32 }
%struct.TYPE_19__ = type { i32* }
%struct.rdma_sq_fmr_wqe = type { %struct.TYPE_15__, i32, i64, i64, i64 }
%struct.TYPE_15__ = type { i8*, i8* }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@RDMA_SQ_FMR_WQE_REMOTE_READ = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_READ = common dso_local global i32 0, align 4
@RDMA_SQ_FMR_WQE_REMOTE_WRITE = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_WRITE = common dso_local global i32 0, align 4
@RDMA_SQ_FMR_WQE_ENABLE_ATOMIC = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_ATOMIC = common dso_local global i32 0, align 4
@RDMA_SQ_FMR_WQE_LOCAL_READ = common dso_local global i32 0, align 4
@RDMA_SQ_FMR_WQE_LOCAL_WRITE = common dso_local global i32 0, align 4
@IB_ACCESS_LOCAL_WRITE = common dso_local global i32 0, align 4
@RDMA_SQ_FMR_WQE_2ND_PAGE_SIZE_LOG = common dso_local global i32 0, align 4
@RDMA_SQ_FMR_WQE_2ND_ZERO_BASED = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [75 x i8] c"wr.fast_reg.iova_start = %p rkey=%x addr=%x:%x length = %x pbl_addr %x:%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlnxr_qp*, %struct.rdma_sq_fmr_wqe_1st*, %struct.ib_send_wr*)* @qlnxr_prepare_fmr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlnxr_prepare_fmr(%struct.qlnxr_qp* %0, %struct.rdma_sq_fmr_wqe_1st* %1, %struct.ib_send_wr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlnxr_qp*, align 8
  %6 = alloca %struct.rdma_sq_fmr_wqe_1st*, align 8
  %7 = alloca %struct.ib_send_wr*, align 8
  %8 = alloca %struct.qlnxr_dev*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.qlnxr_fast_reg_page_list*, align 8
  %11 = alloca %struct.rdma_sq_fmr_wqe*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.qlnxr_qp* %0, %struct.qlnxr_qp** %5, align 8
  store %struct.rdma_sq_fmr_wqe_1st* %1, %struct.rdma_sq_fmr_wqe_1st** %6, align 8
  store %struct.ib_send_wr* %2, %struct.ib_send_wr** %7, align 8
  %14 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %5, align 8
  %15 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %14, i32 0, i32 2
  %16 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %15, align 8
  store %struct.qlnxr_dev* %16, %struct.qlnxr_dev** %8, align 8
  %17 = load %struct.ib_send_wr*, %struct.ib_send_wr** %7, align 8
  %18 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 5
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %22 = call %struct.qlnxr_fast_reg_page_list* @get_qlnxr_frmr_list(%struct.TYPE_19__* %21)
  store %struct.qlnxr_fast_reg_page_list* %22, %struct.qlnxr_fast_reg_page_list** %10, align 8
  %23 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %5, align 8
  %24 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 1
  %26 = call i64 @ecore_chain_produce(i32* %25)
  %27 = inttoptr i64 %26 to %struct.rdma_sq_fmr_wqe*
  store %struct.rdma_sq_fmr_wqe* %27, %struct.rdma_sq_fmr_wqe** %11, align 8
  store i32 0, i32* %12, align 4
  %28 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %8, align 8
  %29 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %13, align 8
  %31 = load i32*, i32** %13, align 8
  %32 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.ib_send_wr*, %struct.ib_send_wr** %7, align 8
  %34 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %3
  %40 = call i32 (...) @BUG()
  br label %41

41:                                               ; preds = %39, %3
  %42 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %8, align 8
  %43 = load %struct.qlnxr_fast_reg_page_list*, %struct.qlnxr_fast_reg_page_list** %10, align 8
  %44 = getelementptr inbounds %struct.qlnxr_fast_reg_page_list, %struct.qlnxr_fast_reg_page_list* %43, i32 0, i32 0
  %45 = call i32 @qlnxr_prepare_safe_pbl(%struct.qlnxr_dev* %42, %struct.TYPE_18__* %44)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* %12, align 4
  store i32 %49, i32* %4, align 4
  br label %264

50:                                               ; preds = %41
  %51 = load %struct.ib_send_wr*, %struct.ib_send_wr** %7, align 8
  %52 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @upper_32_bits(i32 %55)
  %57 = load %struct.rdma_sq_fmr_wqe_1st*, %struct.rdma_sq_fmr_wqe_1st** %6, align 8
  %58 = getelementptr inbounds %struct.rdma_sq_fmr_wqe_1st, %struct.rdma_sq_fmr_wqe_1st* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 1
  store i8* %56, i8** %59, align 8
  %60 = load %struct.ib_send_wr*, %struct.ib_send_wr** %7, align 8
  %61 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @lower_32_bits(i32 %64)
  %66 = load %struct.rdma_sq_fmr_wqe_1st*, %struct.rdma_sq_fmr_wqe_1st** %6, align 8
  %67 = getelementptr inbounds %struct.rdma_sq_fmr_wqe_1st, %struct.rdma_sq_fmr_wqe_1st* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  store i8* %65, i8** %68, align 8
  %69 = load %struct.ib_send_wr*, %struct.ib_send_wr** %7, align 8
  %70 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.rdma_sq_fmr_wqe_1st*, %struct.rdma_sq_fmr_wqe_1st** %6, align 8
  %75 = getelementptr inbounds %struct.rdma_sq_fmr_wqe_1st, %struct.rdma_sq_fmr_wqe_1st* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 8
  %76 = load %struct.rdma_sq_fmr_wqe*, %struct.rdma_sq_fmr_wqe** %11, align 8
  %77 = getelementptr inbounds %struct.rdma_sq_fmr_wqe, %struct.rdma_sq_fmr_wqe* %76, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* @RDMA_SQ_FMR_WQE_REMOTE_READ, align 4
  %80 = load %struct.ib_send_wr*, %struct.ib_send_wr** %7, align 8
  %81 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @IB_ACCESS_REMOTE_READ, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  %89 = xor i1 %88, true
  %90 = zext i1 %89 to i32
  %91 = call i32 @SET_FIELD2(i64 %78, i32 %79, i32 %90)
  %92 = load %struct.rdma_sq_fmr_wqe*, %struct.rdma_sq_fmr_wqe** %11, align 8
  %93 = getelementptr inbounds %struct.rdma_sq_fmr_wqe, %struct.rdma_sq_fmr_wqe* %92, i32 0, i32 4
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* @RDMA_SQ_FMR_WQE_REMOTE_WRITE, align 4
  %96 = load %struct.ib_send_wr*, %struct.ib_send_wr** %7, align 8
  %97 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @IB_ACCESS_REMOTE_WRITE, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  %104 = xor i1 %103, true
  %105 = xor i1 %104, true
  %106 = zext i1 %105 to i32
  %107 = call i32 @SET_FIELD2(i64 %94, i32 %95, i32 %106)
  %108 = load %struct.rdma_sq_fmr_wqe*, %struct.rdma_sq_fmr_wqe** %11, align 8
  %109 = getelementptr inbounds %struct.rdma_sq_fmr_wqe, %struct.rdma_sq_fmr_wqe* %108, i32 0, i32 4
  %110 = load i64, i64* %109, align 8
  %111 = load i32, i32* @RDMA_SQ_FMR_WQE_ENABLE_ATOMIC, align 4
  %112 = load %struct.ib_send_wr*, %struct.ib_send_wr** %7, align 8
  %113 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @IB_ACCESS_REMOTE_ATOMIC, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  %120 = xor i1 %119, true
  %121 = xor i1 %120, true
  %122 = zext i1 %121 to i32
  %123 = call i32 @SET_FIELD2(i64 %110, i32 %111, i32 %122)
  %124 = load %struct.rdma_sq_fmr_wqe*, %struct.rdma_sq_fmr_wqe** %11, align 8
  %125 = getelementptr inbounds %struct.rdma_sq_fmr_wqe, %struct.rdma_sq_fmr_wqe* %124, i32 0, i32 4
  %126 = load i64, i64* %125, align 8
  %127 = load i32, i32* @RDMA_SQ_FMR_WQE_LOCAL_READ, align 4
  %128 = call i32 @SET_FIELD2(i64 %126, i32 %127, i32 1)
  %129 = load %struct.rdma_sq_fmr_wqe*, %struct.rdma_sq_fmr_wqe** %11, align 8
  %130 = getelementptr inbounds %struct.rdma_sq_fmr_wqe, %struct.rdma_sq_fmr_wqe* %129, i32 0, i32 4
  %131 = load i64, i64* %130, align 8
  %132 = load i32, i32* @RDMA_SQ_FMR_WQE_LOCAL_WRITE, align 4
  %133 = load %struct.ib_send_wr*, %struct.ib_send_wr** %7, align 8
  %134 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @IB_ACCESS_LOCAL_WRITE, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  %141 = xor i1 %140, true
  %142 = xor i1 %141, true
  %143 = zext i1 %142 to i32
  %144 = call i32 @SET_FIELD2(i64 %131, i32 %132, i32 %143)
  %145 = load %struct.rdma_sq_fmr_wqe*, %struct.rdma_sq_fmr_wqe** %11, align 8
  %146 = getelementptr inbounds %struct.rdma_sq_fmr_wqe, %struct.rdma_sq_fmr_wqe* %145, i32 0, i32 3
  store i64 0, i64* %146, align 8
  %147 = load %struct.rdma_sq_fmr_wqe*, %struct.rdma_sq_fmr_wqe** %11, align 8
  %148 = getelementptr inbounds %struct.rdma_sq_fmr_wqe, %struct.rdma_sq_fmr_wqe* %147, i32 0, i32 3
  %149 = load i64, i64* %148, align 8
  %150 = load i32, i32* @RDMA_SQ_FMR_WQE_2ND_PAGE_SIZE_LOG, align 4
  %151 = load %struct.ib_send_wr*, %struct.ib_send_wr** %7, align 8
  %152 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = shl i32 1, %155
  %157 = call i32 @ilog2(i32 %156)
  %158 = sub nsw i32 %157, 12
  %159 = call i32 @SET_FIELD2(i64 %149, i32 %150, i32 %158)
  %160 = load %struct.rdma_sq_fmr_wqe*, %struct.rdma_sq_fmr_wqe** %11, align 8
  %161 = getelementptr inbounds %struct.rdma_sq_fmr_wqe, %struct.rdma_sq_fmr_wqe* %160, i32 0, i32 3
  %162 = load i64, i64* %161, align 8
  %163 = load i32, i32* @RDMA_SQ_FMR_WQE_2ND_ZERO_BASED, align 4
  %164 = call i32 @SET_FIELD2(i64 %162, i32 %163, i32 0)
  %165 = load %struct.rdma_sq_fmr_wqe*, %struct.rdma_sq_fmr_wqe** %11, align 8
  %166 = getelementptr inbounds %struct.rdma_sq_fmr_wqe, %struct.rdma_sq_fmr_wqe* %165, i32 0, i32 2
  store i64 0, i64* %166, align 8
  %167 = load %struct.ib_send_wr*, %struct.ib_send_wr** %7, align 8
  %168 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 6
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.rdma_sq_fmr_wqe*, %struct.rdma_sq_fmr_wqe** %11, align 8
  %173 = getelementptr inbounds %struct.rdma_sq_fmr_wqe, %struct.rdma_sq_fmr_wqe* %172, i32 0, i32 1
  store i32 %171, i32* %173, align 8
  %174 = load %struct.qlnxr_fast_reg_page_list*, %struct.qlnxr_fast_reg_page_list** %10, align 8
  %175 = getelementptr inbounds %struct.qlnxr_fast_reg_page_list, %struct.qlnxr_fast_reg_page_list* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %175, i32 0, i32 0
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i8* @upper_32_bits(i32 %179)
  %181 = load %struct.rdma_sq_fmr_wqe*, %struct.rdma_sq_fmr_wqe** %11, align 8
  %182 = getelementptr inbounds %struct.rdma_sq_fmr_wqe, %struct.rdma_sq_fmr_wqe* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 1
  store i8* %180, i8** %183, align 8
  %184 = load %struct.qlnxr_fast_reg_page_list*, %struct.qlnxr_fast_reg_page_list** %10, align 8
  %185 = getelementptr inbounds %struct.qlnxr_fast_reg_page_list, %struct.qlnxr_fast_reg_page_list* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = call i8* @lower_32_bits(i32 %189)
  %191 = load %struct.rdma_sq_fmr_wqe*, %struct.rdma_sq_fmr_wqe** %11, align 8
  %192 = getelementptr inbounds %struct.rdma_sq_fmr_wqe, %struct.rdma_sq_fmr_wqe* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %192, i32 0, i32 0
  store i8* %190, i8** %193, align 8
  %194 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %5, align 8
  %195 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i32 0, i32 1
  %197 = call i64 @ecore_chain_produce(i32* %196)
  %198 = load %struct.ib_send_wr*, %struct.ib_send_wr** %7, align 8
  %199 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i32 0, i32 4
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.ib_send_wr*, %struct.ib_send_wr** %7, align 8
  %204 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %205, i32 0, i32 5
  %207 = load %struct.TYPE_19__*, %struct.TYPE_19__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %207, i32 0, i32 0
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 0
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @PAGE_MASK, align 4
  %213 = and i32 %211, %212
  %214 = sub nsw i32 %202, %213
  %215 = sext i32 %214 to i64
  store i64 %215, i64* %9, align 8
  %216 = load i32*, i32** %13, align 8
  %217 = load %struct.ib_send_wr*, %struct.ib_send_wr** %7, align 8
  %218 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %219, i32 0, i32 4
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.ib_send_wr*, %struct.ib_send_wr** %7, align 8
  %223 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 8
  %227 = load %struct.rdma_sq_fmr_wqe_1st*, %struct.rdma_sq_fmr_wqe_1st** %6, align 8
  %228 = getelementptr inbounds %struct.rdma_sq_fmr_wqe_1st, %struct.rdma_sq_fmr_wqe_1st* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %228, i32 0, i32 1
  %230 = load i8*, i8** %229, align 8
  %231 = load %struct.rdma_sq_fmr_wqe_1st*, %struct.rdma_sq_fmr_wqe_1st** %6, align 8
  %232 = getelementptr inbounds %struct.rdma_sq_fmr_wqe_1st, %struct.rdma_sq_fmr_wqe_1st* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %232, i32 0, i32 0
  %234 = load i8*, i8** %233, align 8
  %235 = load %struct.rdma_sq_fmr_wqe*, %struct.rdma_sq_fmr_wqe** %11, align 8
  %236 = getelementptr inbounds %struct.rdma_sq_fmr_wqe, %struct.rdma_sq_fmr_wqe* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 8
  %238 = load %struct.rdma_sq_fmr_wqe*, %struct.rdma_sq_fmr_wqe** %11, align 8
  %239 = getelementptr inbounds %struct.rdma_sq_fmr_wqe, %struct.rdma_sq_fmr_wqe* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %239, i32 0, i32 1
  %241 = load i8*, i8** %240, align 8
  %242 = load %struct.rdma_sq_fmr_wqe*, %struct.rdma_sq_fmr_wqe** %11, align 8
  %243 = getelementptr inbounds %struct.rdma_sq_fmr_wqe, %struct.rdma_sq_fmr_wqe* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %243, i32 0, i32 0
  %245 = load i8*, i8** %244, align 8
  %246 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %216, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0), i32 %221, i32 %226, i8* %230, i8* %234, i32 %237, i8* %241, i8* %245)
  %247 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %8, align 8
  %248 = load %struct.ib_send_wr*, %struct.ib_send_wr** %7, align 8
  %249 = load %struct.qlnxr_fast_reg_page_list*, %struct.qlnxr_fast_reg_page_list** %10, align 8
  %250 = getelementptr inbounds %struct.qlnxr_fast_reg_page_list, %struct.qlnxr_fast_reg_page_list* %249, i32 0, i32 0
  %251 = call i32 @build_frmr_pbes(%struct.qlnxr_dev* %247, %struct.ib_send_wr* %248, %struct.TYPE_18__* %250)
  %252 = load %struct.qlnxr_fast_reg_page_list*, %struct.qlnxr_fast_reg_page_list** %10, align 8
  %253 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %5, align 8
  %254 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %253, i32 0, i32 1
  %255 = load %struct.TYPE_16__*, %struct.TYPE_16__** %254, align 8
  %256 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %5, align 8
  %257 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %255, i64 %259
  %261 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %260, i32 0, i32 0
  store %struct.qlnxr_fast_reg_page_list* %252, %struct.qlnxr_fast_reg_page_list** %261, align 8
  %262 = load i32*, i32** %13, align 8
  %263 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %262, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %264

264:                                              ; preds = %50, %48
  %265 = load i32, i32* %4, align 4
  ret i32 %265
}

declare dso_local %struct.qlnxr_fast_reg_page_list* @get_qlnxr_frmr_list(%struct.TYPE_19__*) #1

declare dso_local i64 @ecore_chain_produce(i32*) #1

declare dso_local i32 @QL_DPRINT12(i32*, i8*, ...) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @qlnxr_prepare_safe_pbl(%struct.qlnxr_dev*, %struct.TYPE_18__*) #1

declare dso_local i8* @upper_32_bits(i32) #1

declare dso_local i8* @lower_32_bits(i32) #1

declare dso_local i32 @SET_FIELD2(i64, i32, i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @build_frmr_pbes(%struct.qlnxr_dev*, %struct.ib_send_wr*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
