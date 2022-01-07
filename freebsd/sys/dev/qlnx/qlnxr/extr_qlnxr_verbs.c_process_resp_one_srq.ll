; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_process_resp_one_srq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_process_resp_one_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlnxr_dev = type { i32* }
%struct.qlnxr_qp = type { i32, i32, %struct.qlnxr_srq* }
%struct.qlnxr_srq = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.qlnxr_cq = type { i32 }
%struct.ib_wc = type { i8*, i32*, i32, i64, i64, i32 }
%struct.rdma_cqe_responder = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@RDMA_CQE_RESP_STS_WORK_REQUEST_FLUSHED_ERR = common dso_local global i64 0, align 8
@IB_WC_WR_FLUSH_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlnxr_dev*, %struct.qlnxr_qp*, %struct.qlnxr_cq*, %struct.ib_wc*, %struct.rdma_cqe_responder*)* @process_resp_one_srq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_resp_one_srq(%struct.qlnxr_dev* %0, %struct.qlnxr_qp* %1, %struct.qlnxr_cq* %2, %struct.ib_wc* %3, %struct.rdma_cqe_responder* %4) #0 {
  %6 = alloca %struct.qlnxr_dev*, align 8
  %7 = alloca %struct.qlnxr_qp*, align 8
  %8 = alloca %struct.qlnxr_cq*, align 8
  %9 = alloca %struct.ib_wc*, align 8
  %10 = alloca %struct.rdma_cqe_responder*, align 8
  %11 = alloca %struct.qlnxr_srq*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  store %struct.qlnxr_dev* %0, %struct.qlnxr_dev** %6, align 8
  store %struct.qlnxr_qp* %1, %struct.qlnxr_qp** %7, align 8
  store %struct.qlnxr_cq* %2, %struct.qlnxr_cq** %8, align 8
  store %struct.ib_wc* %3, %struct.ib_wc** %9, align 8
  store %struct.rdma_cqe_responder* %4, %struct.rdma_cqe_responder** %10, align 8
  %14 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %7, align 8
  %15 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %14, i32 0, i32 2
  %16 = load %struct.qlnxr_srq*, %struct.qlnxr_srq** %15, align 8
  store %struct.qlnxr_srq* %16, %struct.qlnxr_srq** %11, align 8
  %17 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %6, align 8
  %18 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %13, align 8
  %20 = load i32*, i32** %13, align 8
  %21 = call i32 @QL_DPRINT12(i32* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.rdma_cqe_responder*, %struct.rdma_cqe_responder** %10, align 8
  %23 = getelementptr inbounds %struct.rdma_cqe_responder, %struct.rdma_cqe_responder* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.rdma_cqe_responder*, %struct.rdma_cqe_responder** %10, align 8
  %27 = getelementptr inbounds %struct.rdma_cqe_responder, %struct.rdma_cqe_responder* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i8* @HILO_U64(i32 %25, i32 %29)
  store i8* %30, i8** %12, align 8
  %31 = load %struct.rdma_cqe_responder*, %struct.rdma_cqe_responder** %10, align 8
  %32 = getelementptr inbounds %struct.rdma_cqe_responder, %struct.rdma_cqe_responder* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @RDMA_CQE_RESP_STS_WORK_REQUEST_FLUSHED_ERR, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %59

36:                                               ; preds = %5
  %37 = load i32, i32* @IB_WC_WR_FLUSH_ERR, align 4
  %38 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %39 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 8
  %40 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %41 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %40, i32 0, i32 4
  store i64 0, i64* %41, align 8
  %42 = load i8*, i8** %12, align 8
  %43 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %44 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  %45 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %46 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %45, i32 0, i32 3
  store i64 0, i64* %46, align 8
  %47 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %7, align 8
  %48 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %51 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %7, align 8
  %53 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %52, i32 0, i32 0
  %54 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %55 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %54, i32 0, i32 1
  store i32* %53, i32** %55, align 8
  %56 = load i8*, i8** %12, align 8
  %57 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %58 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %57, i32 0, i32 0
  store i8* %56, i8** %58, align 8
  br label %67

59:                                               ; preds = %5
  %60 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %6, align 8
  %61 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %7, align 8
  %62 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %8, align 8
  %63 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %64 = load %struct.rdma_cqe_responder*, %struct.rdma_cqe_responder** %10, align 8
  %65 = load i8*, i8** %12, align 8
  %66 = call i32 @__process_resp_one(%struct.qlnxr_dev* %60, %struct.qlnxr_qp* %61, %struct.qlnxr_cq* %62, %struct.ib_wc* %63, %struct.rdma_cqe_responder* %64, i8* %65)
  br label %67

67:                                               ; preds = %59, %36
  %68 = load %struct.qlnxr_srq*, %struct.qlnxr_srq** %11, align 8
  %69 = getelementptr inbounds %struct.qlnxr_srq, %struct.qlnxr_srq* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  %73 = load i32*, i32** %13, align 8
  %74 = call i32 @QL_DPRINT12(i32* %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  ret i32 1
}

declare dso_local i32 @QL_DPRINT12(i32*, i8*) #1

declare dso_local i8* @HILO_U64(i32, i32) #1

declare dso_local i32 @__process_resp_one(%struct.qlnxr_dev*, %struct.qlnxr_qp*, %struct.qlnxr_cq*, %struct.ib_wc*, %struct.rdma_cqe_responder*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
