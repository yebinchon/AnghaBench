; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_poll_cq_resp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_poll_cq_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlnxr_dev = type { i32* }
%struct.qlnxr_qp = type { i32 }
%struct.qlnxr_cq = type { i32 }
%struct.ib_wc = type { i32 }
%struct.rdma_cqe_responder = type { i64, i32 }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@RDMA_CQE_RESP_STS_WORK_REQUEST_FLUSHED_ERR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"exit cnt = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlnxr_dev*, %struct.qlnxr_qp*, %struct.qlnxr_cq*, i32, %struct.ib_wc*, %struct.rdma_cqe_responder*, i32*)* @qlnxr_poll_cq_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlnxr_poll_cq_resp(%struct.qlnxr_dev* %0, %struct.qlnxr_qp* %1, %struct.qlnxr_cq* %2, i32 %3, %struct.ib_wc* %4, %struct.rdma_cqe_responder* %5, i32* %6) #0 {
  %8 = alloca %struct.qlnxr_dev*, align 8
  %9 = alloca %struct.qlnxr_qp*, align 8
  %10 = alloca %struct.qlnxr_cq*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ib_wc*, align 8
  %13 = alloca %struct.rdma_cqe_responder*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store %struct.qlnxr_dev* %0, %struct.qlnxr_dev** %8, align 8
  store %struct.qlnxr_qp* %1, %struct.qlnxr_qp** %9, align 8
  store %struct.qlnxr_cq* %2, %struct.qlnxr_cq** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.ib_wc* %4, %struct.ib_wc** %12, align 8
  store %struct.rdma_cqe_responder* %5, %struct.rdma_cqe_responder** %13, align 8
  store i32* %6, i32** %14, align 8
  %17 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %8, align 8
  %18 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %16, align 8
  %20 = load i32*, i32** %16, align 8
  %21 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.rdma_cqe_responder*, %struct.rdma_cqe_responder** %13, align 8
  %23 = getelementptr inbounds %struct.rdma_cqe_responder, %struct.rdma_cqe_responder* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @RDMA_CQE_RESP_STS_WORK_REQUEST_FLUSHED_ERR, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %7
  %28 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %29 = load i32, i32* %11, align 4
  %30 = load %struct.ib_wc*, %struct.ib_wc** %12, align 8
  %31 = load %struct.rdma_cqe_responder*, %struct.rdma_cqe_responder** %13, align 8
  %32 = getelementptr inbounds %struct.rdma_cqe_responder, %struct.rdma_cqe_responder* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @process_resp_flush(%struct.qlnxr_qp* %28, i32 %29, %struct.ib_wc* %30, i32 %33)
  store i32 %34, i32* %15, align 4
  %35 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %10, align 8
  %36 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %37 = load %struct.rdma_cqe_responder*, %struct.rdma_cqe_responder** %13, align 8
  %38 = load i32*, i32** %14, align 8
  %39 = call i32 @try_consume_resp_cqe(%struct.qlnxr_cq* %35, %struct.qlnxr_qp* %36, %struct.rdma_cqe_responder* %37, i32* %38)
  br label %52

40:                                               ; preds = %7
  %41 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %8, align 8
  %42 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %43 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %10, align 8
  %44 = load %struct.ib_wc*, %struct.ib_wc** %12, align 8
  %45 = load %struct.rdma_cqe_responder*, %struct.rdma_cqe_responder** %13, align 8
  %46 = call i32 @process_resp_one(%struct.qlnxr_dev* %41, %struct.qlnxr_qp* %42, %struct.qlnxr_cq* %43, %struct.ib_wc* %44, %struct.rdma_cqe_responder* %45)
  store i32 %46, i32* %15, align 4
  %47 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %10, align 8
  %48 = call i32 @consume_cqe(%struct.qlnxr_cq* %47)
  %49 = load i32*, i32** %14, align 8
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, 1
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %40, %27
  %53 = load i32*, i32** %16, align 8
  %54 = load i32, i32* %15, align 4
  %55 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %53, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %15, align 4
  ret i32 %56
}

declare dso_local i32 @QL_DPRINT12(i32*, i8*, ...) #1

declare dso_local i32 @process_resp_flush(%struct.qlnxr_qp*, i32, %struct.ib_wc*, i32) #1

declare dso_local i32 @try_consume_resp_cqe(%struct.qlnxr_cq*, %struct.qlnxr_qp*, %struct.rdma_cqe_responder*, i32*) #1

declare dso_local i32 @process_resp_one(%struct.qlnxr_dev*, %struct.qlnxr_qp*, %struct.qlnxr_cq*, %struct.ib_wc*, %struct.rdma_cqe_responder*) #1

declare dso_local i32 @consume_cqe(%struct.qlnxr_cq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
