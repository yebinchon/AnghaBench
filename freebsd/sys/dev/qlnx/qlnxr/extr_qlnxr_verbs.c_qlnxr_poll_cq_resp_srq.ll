; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_poll_cq_resp_srq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_poll_cq_resp_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlnxr_dev = type { i32* }
%struct.qlnxr_qp = type { i32 }
%struct.qlnxr_cq = type { i32 }
%struct.ib_wc = type { i32 }
%struct.rdma_cqe_responder = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"exit cnt = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlnxr_dev*, %struct.qlnxr_qp*, %struct.qlnxr_cq*, i32, %struct.ib_wc*, %struct.rdma_cqe_responder*, i32*)* @qlnxr_poll_cq_resp_srq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlnxr_poll_cq_resp_srq(%struct.qlnxr_dev* %0, %struct.qlnxr_qp* %1, %struct.qlnxr_cq* %2, i32 %3, %struct.ib_wc* %4, %struct.rdma_cqe_responder* %5, i32* %6) #0 {
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
  %22 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %8, align 8
  %23 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %24 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %10, align 8
  %25 = load %struct.ib_wc*, %struct.ib_wc** %12, align 8
  %26 = load %struct.rdma_cqe_responder*, %struct.rdma_cqe_responder** %13, align 8
  %27 = call i32 @process_resp_one_srq(%struct.qlnxr_dev* %22, %struct.qlnxr_qp* %23, %struct.qlnxr_cq* %24, %struct.ib_wc* %25, %struct.rdma_cqe_responder* %26)
  store i32 %27, i32* %15, align 4
  %28 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %10, align 8
  %29 = call i32 @consume_cqe(%struct.qlnxr_cq* %28)
  %30 = load i32*, i32** %14, align 8
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, 1
  store i32 %32, i32* %30, align 4
  %33 = load i32*, i32** %16, align 8
  %34 = load i32, i32* %15, align 4
  %35 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %15, align 4
  ret i32 %36
}

declare dso_local i32 @QL_DPRINT12(i32*, i8*, ...) #1

declare dso_local i32 @process_resp_one_srq(%struct.qlnxr_dev*, %struct.qlnxr_qp*, %struct.qlnxr_cq*, %struct.ib_wc*, %struct.rdma_cqe_responder*) #1

declare dso_local i32 @consume_cqe(%struct.qlnxr_cq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
