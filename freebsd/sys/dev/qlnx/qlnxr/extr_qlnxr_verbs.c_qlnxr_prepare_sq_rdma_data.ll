; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_prepare_sq_rdma_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_prepare_sq_rdma_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlnxr_dev = type { i32* }
%struct.qlnxr_qp = type { i32 }
%struct.rdma_sq_rdma_wqe_1st = type { i32, i32 }
%struct.rdma_sq_rdma_wqe_2nd = type { i32 }
%struct.ib_send_wr = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@remote_va = common dso_local global i32 0, align 4
@IB_SEND_INLINE = common dso_local global i32 0, align 4
@RDMA_SQ_RDMA_WQE_1ST_INLINE_FLG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"exit ret = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlnxr_dev*, %struct.qlnxr_qp*, %struct.rdma_sq_rdma_wqe_1st*, %struct.rdma_sq_rdma_wqe_2nd*, %struct.ib_send_wr*, %struct.ib_send_wr**)* @qlnxr_prepare_sq_rdma_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlnxr_prepare_sq_rdma_data(%struct.qlnxr_dev* %0, %struct.qlnxr_qp* %1, %struct.rdma_sq_rdma_wqe_1st* %2, %struct.rdma_sq_rdma_wqe_2nd* %3, %struct.ib_send_wr* %4, %struct.ib_send_wr** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.qlnxr_dev*, align 8
  %9 = alloca %struct.qlnxr_qp*, align 8
  %10 = alloca %struct.rdma_sq_rdma_wqe_1st*, align 8
  %11 = alloca %struct.rdma_sq_rdma_wqe_2nd*, align 8
  %12 = alloca %struct.ib_send_wr*, align 8
  %13 = alloca %struct.ib_send_wr**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.qlnxr_dev* %0, %struct.qlnxr_dev** %8, align 8
  store %struct.qlnxr_qp* %1, %struct.qlnxr_qp** %9, align 8
  store %struct.rdma_sq_rdma_wqe_1st* %2, %struct.rdma_sq_rdma_wqe_1st** %10, align 8
  store %struct.rdma_sq_rdma_wqe_2nd* %3, %struct.rdma_sq_rdma_wqe_2nd** %11, align 8
  store %struct.ib_send_wr* %4, %struct.ib_send_wr** %12, align 8
  store %struct.ib_send_wr** %5, %struct.ib_send_wr*** %13, align 8
  store i32 0, i32* %15, align 4
  %17 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %8, align 8
  %18 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %14, align 8
  %20 = load i32*, i32** %14, align 8
  %21 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.ib_send_wr*, %struct.ib_send_wr** %12, align 8
  %23 = call %struct.TYPE_2__* @rdma_wr(%struct.ib_send_wr* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @cpu_to_le32(i32 %25)
  %27 = load %struct.rdma_sq_rdma_wqe_2nd*, %struct.rdma_sq_rdma_wqe_2nd** %11, align 8
  %28 = getelementptr inbounds %struct.rdma_sq_rdma_wqe_2nd, %struct.rdma_sq_rdma_wqe_2nd* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.rdma_sq_rdma_wqe_2nd*, %struct.rdma_sq_rdma_wqe_2nd** %11, align 8
  %30 = load i32, i32* @remote_va, align 4
  %31 = load %struct.ib_send_wr*, %struct.ib_send_wr** %12, align 8
  %32 = call %struct.TYPE_2__* @rdma_wr(%struct.ib_send_wr* %31)
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @TYPEPTR_ADDR_SET(%struct.rdma_sq_rdma_wqe_2nd* %29, i32 %30, i32 %34)
  %36 = load %struct.ib_send_wr*, %struct.ib_send_wr** %12, align 8
  %37 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @IB_SEND_INLINE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %6
  store i32 0, i32* %16, align 4
  %43 = load i32, i32* %16, align 4
  %44 = load i32, i32* @RDMA_SQ_RDMA_WQE_1ST_INLINE_FLG, align 4
  %45 = call i32 @SET_FIELD2(i32 %43, i32 %44, i32 1)
  %46 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %8, align 8
  %47 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %48 = load %struct.rdma_sq_rdma_wqe_1st*, %struct.rdma_sq_rdma_wqe_1st** %10, align 8
  %49 = getelementptr inbounds %struct.rdma_sq_rdma_wqe_1st, %struct.rdma_sq_rdma_wqe_1st* %48, i32 0, i32 0
  %50 = load %struct.ib_send_wr*, %struct.ib_send_wr** %12, align 8
  %51 = load %struct.ib_send_wr**, %struct.ib_send_wr*** %13, align 8
  %52 = load %struct.rdma_sq_rdma_wqe_1st*, %struct.rdma_sq_rdma_wqe_1st** %10, align 8
  %53 = getelementptr inbounds %struct.rdma_sq_rdma_wqe_1st, %struct.rdma_sq_rdma_wqe_1st* %52, i32 0, i32 1
  %54 = load i32, i32* %16, align 4
  %55 = call i32 @qlnxr_prepare_sq_inline_data(%struct.qlnxr_dev* %46, %struct.qlnxr_qp* %47, i32* %49, %struct.ib_send_wr* %50, %struct.ib_send_wr** %51, i32* %53, i32 %54)
  store i32 %55, i32* %7, align 4
  br label %67

56:                                               ; preds = %6
  %57 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %8, align 8
  %58 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %59 = load %struct.rdma_sq_rdma_wqe_1st*, %struct.rdma_sq_rdma_wqe_1st** %10, align 8
  %60 = getelementptr inbounds %struct.rdma_sq_rdma_wqe_1st, %struct.rdma_sq_rdma_wqe_1st* %59, i32 0, i32 0
  %61 = load %struct.ib_send_wr*, %struct.ib_send_wr** %12, align 8
  %62 = call i32 @qlnxr_prepare_sq_sges(%struct.qlnxr_dev* %57, %struct.qlnxr_qp* %58, i32* %60, %struct.ib_send_wr* %61)
  store i32 %62, i32* %15, align 4
  %63 = load i32*, i32** %14, align 8
  %64 = load i32, i32* %15, align 4
  %65 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %63, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* %15, align 4
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %56, %42
  %68 = load i32, i32* %7, align 4
  ret i32 %68
}

declare dso_local i32 @QL_DPRINT12(i32*, i8*, ...) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local %struct.TYPE_2__* @rdma_wr(%struct.ib_send_wr*) #1

declare dso_local i32 @TYPEPTR_ADDR_SET(%struct.rdma_sq_rdma_wqe_2nd*, i32, i32) #1

declare dso_local i32 @SET_FIELD2(i32, i32, i32) #1

declare dso_local i32 @qlnxr_prepare_sq_inline_data(%struct.qlnxr_dev*, %struct.qlnxr_qp*, i32*, %struct.ib_send_wr*, %struct.ib_send_wr**, i32*, i32) #1

declare dso_local i32 @qlnxr_prepare_sq_sges(%struct.qlnxr_dev*, %struct.qlnxr_qp*, i32*, %struct.ib_send_wr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
