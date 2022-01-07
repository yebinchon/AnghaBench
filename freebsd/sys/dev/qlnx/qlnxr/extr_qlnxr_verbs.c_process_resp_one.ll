; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_process_resp_one.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_process_resp_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlnxr_dev = type { i32* }
%struct.qlnxr_qp = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.qlnxr_cq = type { i32 }
%struct.ib_wc = type { i32 }
%struct.rdma_cqe_responder = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlnxr_dev*, %struct.qlnxr_qp*, %struct.qlnxr_cq*, %struct.ib_wc*, %struct.rdma_cqe_responder*)* @process_resp_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_resp_one(%struct.qlnxr_dev* %0, %struct.qlnxr_qp* %1, %struct.qlnxr_cq* %2, %struct.ib_wc* %3, %struct.rdma_cqe_responder* %4) #0 {
  %6 = alloca %struct.qlnxr_dev*, align 8
  %7 = alloca %struct.qlnxr_qp*, align 8
  %8 = alloca %struct.qlnxr_cq*, align 8
  %9 = alloca %struct.ib_wc*, align 8
  %10 = alloca %struct.rdma_cqe_responder*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.qlnxr_dev* %0, %struct.qlnxr_dev** %6, align 8
  store %struct.qlnxr_qp* %1, %struct.qlnxr_qp** %7, align 8
  store %struct.qlnxr_cq* %2, %struct.qlnxr_cq** %8, align 8
  store %struct.ib_wc* %3, %struct.ib_wc** %9, align 8
  store %struct.rdma_cqe_responder* %4, %struct.rdma_cqe_responder** %10, align 8
  %13 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %6, align 8
  %14 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %11, align 8
  %16 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %7, align 8
  %17 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %7, align 8
  %20 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %12, align 4
  %26 = load i32*, i32** %11, align 8
  %27 = call i32 @QL_DPRINT12(i32* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %6, align 8
  %29 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %7, align 8
  %30 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %8, align 8
  %31 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %32 = load %struct.rdma_cqe_responder*, %struct.rdma_cqe_responder** %10, align 8
  %33 = load i32, i32* %12, align 4
  %34 = call i32 @__process_resp_one(%struct.qlnxr_dev* %28, %struct.qlnxr_qp* %29, %struct.qlnxr_cq* %30, %struct.ib_wc* %31, %struct.rdma_cqe_responder* %32, i32 %33)
  br label %35

35:                                               ; preds = %48, %5
  %36 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %7, align 8
  %37 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %36, i32 0, i32 1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %7, align 8
  %40 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %44, align 4
  %47 = icmp ne i32 %45, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %35
  %49 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %7, align 8
  %50 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = call i32 @ecore_chain_consume(i32* %51)
  br label %35

53:                                               ; preds = %35
  %54 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %7, align 8
  %55 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %54, i32 0, i32 0
  %56 = call i32 @qlnxr_inc_sw_cons(%struct.TYPE_4__* %55)
  %57 = load i32*, i32** %11, align 8
  %58 = call i32 @QL_DPRINT12(i32* %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  ret i32 1
}

declare dso_local i32 @QL_DPRINT12(i32*, i8*) #1

declare dso_local i32 @__process_resp_one(%struct.qlnxr_dev*, %struct.qlnxr_qp*, %struct.qlnxr_cq*, %struct.ib_wc*, %struct.rdma_cqe_responder*, i32) #1

declare dso_local i32 @ecore_chain_consume(i32*) #1

declare dso_local i32 @qlnxr_inc_sw_cons(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
