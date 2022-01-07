; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_poll_cq_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_poll_cq_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlnxr_dev = type { i32* }
%struct.qlnxr_qp = type { i32 }
%struct.qlnxr_cq = type { i32 }
%struct.ib_wc = type { i32 }
%struct.rdma_cqe_requester = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"enter req->status = 0x%x\0A\00", align 1
@IB_WC_SUCCESS = common dso_local global i32 0, align 4
@ECORE_ROCE_QP_STATE_ERR = common dso_local global i32 0, align 4
@IB_WC_WR_FLUSH_ERR = common dso_local global i32 0, align 4
@IB_WC_BAD_RESP_ERR = common dso_local global i32 0, align 4
@IB_WC_LOC_LEN_ERR = common dso_local global i32 0, align 4
@IB_WC_LOC_QP_OP_ERR = common dso_local global i32 0, align 4
@IB_WC_LOC_PROT_ERR = common dso_local global i32 0, align 4
@IB_WC_MW_BIND_ERR = common dso_local global i32 0, align 4
@IB_WC_REM_INV_REQ_ERR = common dso_local global i32 0, align 4
@IB_WC_REM_ACCESS_ERR = common dso_local global i32 0, align 4
@IB_WC_REM_OP_ERR = common dso_local global i32 0, align 4
@IB_WC_RNR_RETRY_EXC_ERR = common dso_local global i32 0, align 4
@IB_WC_RETRY_EXC_ERR = common dso_local global i32 0, align 4
@IB_WC_GENERAL_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"exit cnt = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlnxr_dev*, %struct.qlnxr_qp*, %struct.qlnxr_cq*, i32, %struct.ib_wc*, %struct.rdma_cqe_requester*)* @qlnxr_poll_cq_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlnxr_poll_cq_req(%struct.qlnxr_dev* %0, %struct.qlnxr_qp* %1, %struct.qlnxr_cq* %2, i32 %3, %struct.ib_wc* %4, %struct.rdma_cqe_requester* %5) #0 {
  %7 = alloca %struct.qlnxr_dev*, align 8
  %8 = alloca %struct.qlnxr_qp*, align 8
  %9 = alloca %struct.qlnxr_cq*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ib_wc*, align 8
  %12 = alloca %struct.rdma_cqe_requester*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.qlnxr_dev* %0, %struct.qlnxr_dev** %7, align 8
  store %struct.qlnxr_qp* %1, %struct.qlnxr_qp** %8, align 8
  store %struct.qlnxr_cq* %2, %struct.qlnxr_cq** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.ib_wc* %4, %struct.ib_wc** %11, align 8
  store %struct.rdma_cqe_requester* %5, %struct.rdma_cqe_requester** %12, align 8
  store i32 0, i32* %13, align 4
  %16 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %7, align 8
  %17 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %14, align 8
  %19 = load i32*, i32** %14, align 8
  %20 = load %struct.rdma_cqe_requester*, %struct.rdma_cqe_requester** %12, align 8
  %21 = getelementptr inbounds %struct.rdma_cqe_requester, %struct.rdma_cqe_requester* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @QL_DPRINT12(i32* %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.rdma_cqe_requester*, %struct.rdma_cqe_requester** %12, align 8
  %25 = getelementptr inbounds %struct.rdma_cqe_requester, %struct.rdma_cqe_requester* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %56 [
    i32 134, label %27
    i32 128, label %38
  ]

27:                                               ; preds = %6
  %28 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %7, align 8
  %29 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %8, align 8
  %30 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %9, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.ib_wc*, %struct.ib_wc** %11, align 8
  %33 = load %struct.rdma_cqe_requester*, %struct.rdma_cqe_requester** %12, align 8
  %34 = getelementptr inbounds %struct.rdma_cqe_requester, %struct.rdma_cqe_requester* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @IB_WC_SUCCESS, align 4
  %37 = call i32 @process_req(%struct.qlnxr_dev* %28, %struct.qlnxr_qp* %29, %struct.qlnxr_cq* %30, i32 %31, %struct.ib_wc* %32, i32 %35, i32 %36, i32 0)
  store i32 %37, i32* %13, align 4
  br label %117

38:                                               ; preds = %6
  %39 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %8, align 8
  %40 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @ECORE_ROCE_QP_STATE_ERR, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %38
  %45 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %7, align 8
  %46 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %8, align 8
  %47 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %9, align 8
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.ib_wc*, %struct.ib_wc** %11, align 8
  %50 = load %struct.rdma_cqe_requester*, %struct.rdma_cqe_requester** %12, align 8
  %51 = getelementptr inbounds %struct.rdma_cqe_requester, %struct.rdma_cqe_requester* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @IB_WC_WR_FLUSH_ERR, align 4
  %54 = call i32 @process_req(%struct.qlnxr_dev* %45, %struct.qlnxr_qp* %46, %struct.qlnxr_cq* %47, i32 %48, %struct.ib_wc* %49, i32 %52, i32 %53, i32 1)
  store i32 %54, i32* %13, align 4
  br label %55

55:                                               ; preds = %44, %38
  br label %117

56:                                               ; preds = %6
  %57 = load i32, i32* @ECORE_ROCE_QP_STATE_ERR, align 4
  %58 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %8, align 8
  %59 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %7, align 8
  %61 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %8, align 8
  %62 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %9, align 8
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.ib_wc*, %struct.ib_wc** %11, align 8
  %65 = load %struct.rdma_cqe_requester*, %struct.rdma_cqe_requester** %12, align 8
  %66 = getelementptr inbounds %struct.rdma_cqe_requester, %struct.rdma_cqe_requester* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = sub nsw i32 %67, 1
  %69 = load i32, i32* @IB_WC_SUCCESS, align 4
  %70 = call i32 @process_req(%struct.qlnxr_dev* %60, %struct.qlnxr_qp* %61, %struct.qlnxr_cq* %62, i32 %63, %struct.ib_wc* %64, i32 %68, i32 %69, i32 0)
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  %72 = load %struct.ib_wc*, %struct.ib_wc** %11, align 8
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %72, i64 %73
  store %struct.ib_wc* %74, %struct.ib_wc** %11, align 8
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %116

78:                                               ; preds = %56
  %79 = load %struct.rdma_cqe_requester*, %struct.rdma_cqe_requester** %12, align 8
  %80 = getelementptr inbounds %struct.rdma_cqe_requester, %struct.rdma_cqe_requester* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  switch i32 %81, label %102 [
    i32 139, label %82
    i32 138, label %84
    i32 136, label %86
    i32 137, label %88
    i32 135, label %90
    i32 132, label %92
    i32 133, label %94
    i32 131, label %96
    i32 130, label %98
    i32 129, label %100
  ]

82:                                               ; preds = %78
  %83 = load i32, i32* @IB_WC_BAD_RESP_ERR, align 4
  store i32 %83, i32* %15, align 4
  br label %104

84:                                               ; preds = %78
  %85 = load i32, i32* @IB_WC_LOC_LEN_ERR, align 4
  store i32 %85, i32* %15, align 4
  br label %104

86:                                               ; preds = %78
  %87 = load i32, i32* @IB_WC_LOC_QP_OP_ERR, align 4
  store i32 %87, i32* %15, align 4
  br label %104

88:                                               ; preds = %78
  %89 = load i32, i32* @IB_WC_LOC_PROT_ERR, align 4
  store i32 %89, i32* %15, align 4
  br label %104

90:                                               ; preds = %78
  %91 = load i32, i32* @IB_WC_MW_BIND_ERR, align 4
  store i32 %91, i32* %15, align 4
  br label %104

92:                                               ; preds = %78
  %93 = load i32, i32* @IB_WC_REM_INV_REQ_ERR, align 4
  store i32 %93, i32* %15, align 4
  br label %104

94:                                               ; preds = %78
  %95 = load i32, i32* @IB_WC_REM_ACCESS_ERR, align 4
  store i32 %95, i32* %15, align 4
  br label %104

96:                                               ; preds = %78
  %97 = load i32, i32* @IB_WC_REM_OP_ERR, align 4
  store i32 %97, i32* %15, align 4
  br label %104

98:                                               ; preds = %78
  %99 = load i32, i32* @IB_WC_RNR_RETRY_EXC_ERR, align 4
  store i32 %99, i32* %15, align 4
  br label %104

100:                                              ; preds = %78
  %101 = load i32, i32* @IB_WC_RETRY_EXC_ERR, align 4
  store i32 %101, i32* %15, align 4
  br label %104

102:                                              ; preds = %78
  %103 = load i32, i32* @IB_WC_GENERAL_ERR, align 4
  store i32 %103, i32* %15, align 4
  br label %104

104:                                              ; preds = %102, %100, %98, %96, %94, %92, %90, %88, %86, %84, %82
  %105 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %7, align 8
  %106 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %8, align 8
  %107 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %9, align 8
  %108 = load %struct.ib_wc*, %struct.ib_wc** %11, align 8
  %109 = load %struct.rdma_cqe_requester*, %struct.rdma_cqe_requester** %12, align 8
  %110 = getelementptr inbounds %struct.rdma_cqe_requester, %struct.rdma_cqe_requester* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %15, align 4
  %113 = call i32 @process_req(%struct.qlnxr_dev* %105, %struct.qlnxr_qp* %106, %struct.qlnxr_cq* %107, i32 1, %struct.ib_wc* %108, i32 %111, i32 %112, i32 1)
  %114 = load i32, i32* %13, align 4
  %115 = add nsw i32 %114, %113
  store i32 %115, i32* %13, align 4
  br label %116

116:                                              ; preds = %104, %56
  br label %117

117:                                              ; preds = %116, %55, %27
  %118 = load i32*, i32** %14, align 8
  %119 = load i32, i32* %13, align 4
  %120 = call i32 @QL_DPRINT12(i32* %118, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %119)
  %121 = load i32, i32* %13, align 4
  ret i32 %121
}

declare dso_local i32 @QL_DPRINT12(i32*, i8*, i32) #1

declare dso_local i32 @process_req(%struct.qlnxr_dev*, %struct.qlnxr_qp*, %struct.qlnxr_cq*, i32, %struct.ib_wc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
