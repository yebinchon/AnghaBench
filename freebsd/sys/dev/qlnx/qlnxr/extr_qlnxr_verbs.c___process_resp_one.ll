; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c___process_resp_one.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c___process_resp_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlnxr_dev = type { i32* }
%struct.qlnxr_qp = type { i32, i32 }
%struct.qlnxr_cq = type { i32 }
%struct.ib_wc = type { i32, i32, i32*, i32, i64, i64, %struct.TYPE_2__, i8*, i8* }
%struct.TYPE_2__ = type { i8* }
%struct.rdma_cqe_responder = type { i32, i32, i32, i32 }

@IB_WC_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"enter qp = %p resp->status = 0x%x\0A\00", align 1
@IB_WC_RECV = common dso_local global i8* null, align 8
@IB_WC_LOC_ACCESS_ERR = common dso_local global i32 0, align 4
@IB_WC_LOC_LEN_ERR = common dso_local global i32 0, align 4
@IB_WC_LOC_QP_OP_ERR = common dso_local global i32 0, align 4
@IB_WC_LOC_PROT_ERR = common dso_local global i32 0, align 4
@IB_WC_MW_BIND_ERR = common dso_local global i32 0, align 4
@IB_WC_REM_INV_RD_REQ_ERR = common dso_local global i32 0, align 4
@IB_WC_RECV_RDMA_WITH_IMM = common dso_local global i8* null, align 8
@IB_WC_WITH_IMM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [83 x i8] c"Invalid flags QLNXR_RESP_RDMA [0x%x]qp = %p qp->id = 0x%x cq = %p cq->icid = 0x%x\0A\00", align 1
@IB_WC_GENERAL_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"exit status = 0x%x\0A\00", align 1
@IB_WC_WITH_INVALIDATE = common dso_local global i64 0, align 8
@QLNXR_RESP_INV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qlnxr_dev*, %struct.qlnxr_qp*, %struct.qlnxr_cq*, %struct.ib_wc*, %struct.rdma_cqe_responder*, i32)* @__process_resp_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__process_resp_one(%struct.qlnxr_dev* %0, %struct.qlnxr_qp* %1, %struct.qlnxr_cq* %2, %struct.ib_wc* %3, %struct.rdma_cqe_responder* %4, i32 %5) #0 {
  %7 = alloca %struct.qlnxr_dev*, align 8
  %8 = alloca %struct.qlnxr_qp*, align 8
  %9 = alloca %struct.qlnxr_cq*, align 8
  %10 = alloca %struct.ib_wc*, align 8
  %11 = alloca %struct.rdma_cqe_responder*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store %struct.qlnxr_dev* %0, %struct.qlnxr_dev** %7, align 8
  store %struct.qlnxr_qp* %1, %struct.qlnxr_qp** %8, align 8
  store %struct.qlnxr_cq* %2, %struct.qlnxr_cq** %9, align 8
  store %struct.ib_wc* %3, %struct.ib_wc** %10, align 8
  store %struct.rdma_cqe_responder* %4, %struct.rdma_cqe_responder** %11, align 8
  store i32 %5, i32* %12, align 4
  %16 = load i32, i32* @IB_WC_SUCCESS, align 4
  store i32 %16, i32* %13, align 4
  %17 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %7, align 8
  %18 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %15, align 8
  %20 = load i32*, i32** %15, align 8
  %21 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %8, align 8
  %22 = load %struct.rdma_cqe_responder*, %struct.rdma_cqe_responder** %11, align 8
  %23 = getelementptr inbounds %struct.rdma_cqe_responder, %struct.rdma_cqe_responder* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %20, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.qlnxr_qp* %21, i32 %24)
  %26 = load i8*, i8** @IB_WC_RECV, align 8
  %27 = load %struct.ib_wc*, %struct.ib_wc** %10, align 8
  %28 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %27, i32 0, i32 7
  store i8* %26, i8** %28, align 8
  %29 = load %struct.ib_wc*, %struct.ib_wc** %10, align 8
  %30 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %29, i32 0, i32 5
  store i64 0, i64* %30, align 8
  %31 = load %struct.rdma_cqe_responder*, %struct.rdma_cqe_responder** %11, align 8
  %32 = getelementptr inbounds %struct.rdma_cqe_responder, %struct.rdma_cqe_responder* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %92 [
    i32 134, label %34
    i32 133, label %36
    i32 131, label %38
    i32 132, label %40
    i32 130, label %42
    i32 128, label %44
    i32 129, label %46
  ]

34:                                               ; preds = %6
  %35 = load i32, i32* @IB_WC_LOC_ACCESS_ERR, align 4
  store i32 %35, i32* %13, align 4
  br label %94

36:                                               ; preds = %6
  %37 = load i32, i32* @IB_WC_LOC_LEN_ERR, align 4
  store i32 %37, i32* %13, align 4
  br label %94

38:                                               ; preds = %6
  %39 = load i32, i32* @IB_WC_LOC_QP_OP_ERR, align 4
  store i32 %39, i32* %13, align 4
  br label %94

40:                                               ; preds = %6
  %41 = load i32, i32* @IB_WC_LOC_PROT_ERR, align 4
  store i32 %41, i32* %13, align 4
  br label %94

42:                                               ; preds = %6
  %43 = load i32, i32* @IB_WC_MW_BIND_ERR, align 4
  store i32 %43, i32* %13, align 4
  br label %94

44:                                               ; preds = %6
  %45 = load i32, i32* @IB_WC_REM_INV_RD_REQ_ERR, align 4
  store i32 %45, i32* %13, align 4
  br label %94

46:                                               ; preds = %6
  %47 = load i32, i32* @IB_WC_SUCCESS, align 4
  store i32 %47, i32* %13, align 4
  %48 = load %struct.rdma_cqe_responder*, %struct.rdma_cqe_responder** %11, align 8
  %49 = getelementptr inbounds %struct.rdma_cqe_responder, %struct.rdma_cqe_responder* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @le32_to_cpu(i32 %50)
  %52 = load %struct.ib_wc*, %struct.ib_wc** %10, align 8
  %53 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %52, i32 0, i32 8
  store i8* %51, i8** %53, align 8
  %54 = load %struct.rdma_cqe_responder*, %struct.rdma_cqe_responder** %11, align 8
  %55 = getelementptr inbounds %struct.rdma_cqe_responder, %struct.rdma_cqe_responder* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, 135
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %14, align 4
  switch i32 %58, label %90 [
    i32 135, label %59
    i32 137, label %63
    i32 136, label %76
  ]

59:                                               ; preds = %46
  %60 = load i8*, i8** @IB_WC_RECV_RDMA_WITH_IMM, align 8
  %61 = load %struct.ib_wc*, %struct.ib_wc** %10, align 8
  %62 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %61, i32 0, i32 7
  store i8* %60, i8** %62, align 8
  br label %63

63:                                               ; preds = %46, %59
  %64 = load %struct.rdma_cqe_responder*, %struct.rdma_cqe_responder** %11, align 8
  %65 = getelementptr inbounds %struct.rdma_cqe_responder, %struct.rdma_cqe_responder* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i8* @le32_to_cpu(i32 %66)
  %68 = load %struct.ib_wc*, %struct.ib_wc** %10, align 8
  %69 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %68, i32 0, i32 6
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i8* %67, i8** %70, align 8
  %71 = load i64, i64* @IB_WC_WITH_IMM, align 8
  %72 = load %struct.ib_wc*, %struct.ib_wc** %10, align 8
  %73 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %72, i32 0, i32 5
  %74 = load i64, i64* %73, align 8
  %75 = or i64 %74, %71
  store i64 %75, i64* %73, align 8
  br label %91

76:                                               ; preds = %46
  %77 = load i32*, i32** %15, align 8
  %78 = load %struct.rdma_cqe_responder*, %struct.rdma_cqe_responder** %11, align 8
  %79 = getelementptr inbounds %struct.rdma_cqe_responder, %struct.rdma_cqe_responder* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %8, align 8
  %82 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %8, align 8
  %83 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %9, align 8
  %86 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %9, align 8
  %87 = getelementptr inbounds %struct.qlnxr_cq, %struct.qlnxr_cq* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @QL_DPRINT11(i32* %77, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 %80, %struct.qlnxr_qp* %81, i32 %84, %struct.qlnxr_cq* %85, i32 %88)
  br label %91

90:                                               ; preds = %46
  br label %91

91:                                               ; preds = %90, %76, %63
  br label %94

92:                                               ; preds = %6
  %93 = load i32, i32* @IB_WC_GENERAL_ERR, align 4
  store i32 %93, i32* %13, align 4
  br label %94

94:                                               ; preds = %92, %91, %44, %42, %40, %38, %36, %34
  %95 = load i32, i32* %13, align 4
  %96 = load %struct.ib_wc*, %struct.ib_wc** %10, align 8
  %97 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load %struct.ib_wc*, %struct.ib_wc** %10, align 8
  %99 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %98, i32 0, i32 4
  store i64 0, i64* %99, align 8
  %100 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %8, align 8
  %101 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.ib_wc*, %struct.ib_wc** %10, align 8
  %104 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 8
  %105 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %8, align 8
  %106 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %105, i32 0, i32 0
  %107 = load %struct.ib_wc*, %struct.ib_wc** %10, align 8
  %108 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %107, i32 0, i32 2
  store i32* %106, i32** %108, align 8
  %109 = load i32, i32* %12, align 4
  %110 = load %struct.ib_wc*, %struct.ib_wc** %10, align 8
  %111 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = load i32*, i32** %15, align 8
  %113 = load i32, i32* %13, align 4
  %114 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %112, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %113)
  ret void
}

declare dso_local i32 @QL_DPRINT12(i32*, i8*, ...) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @QL_DPRINT11(i32*, i8*, i32, %struct.qlnxr_qp*, i32, %struct.qlnxr_cq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
