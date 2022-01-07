; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_prepare_sq_send_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_prepare_sq_send_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlnxr_dev = type { i32* }
%struct.qlnxr_qp = type { i32 }
%struct.rdma_sq_send_wqe = type { i32, i32 }
%struct.ib_send_wr = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@IB_SEND_INLINE = common dso_local global i32 0, align 4
@RDMA_SQ_SEND_WQE_INLINE_FLG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"exit ret = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlnxr_dev*, %struct.qlnxr_qp*, %struct.rdma_sq_send_wqe*, %struct.rdma_sq_send_wqe*, %struct.ib_send_wr*, %struct.ib_send_wr**)* @qlnxr_prepare_sq_send_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlnxr_prepare_sq_send_data(%struct.qlnxr_dev* %0, %struct.qlnxr_qp* %1, %struct.rdma_sq_send_wqe* %2, %struct.rdma_sq_send_wqe* %3, %struct.ib_send_wr* %4, %struct.ib_send_wr** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.qlnxr_dev*, align 8
  %9 = alloca %struct.qlnxr_qp*, align 8
  %10 = alloca %struct.rdma_sq_send_wqe*, align 8
  %11 = alloca %struct.rdma_sq_send_wqe*, align 8
  %12 = alloca %struct.ib_send_wr*, align 8
  %13 = alloca %struct.ib_send_wr**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.qlnxr_dev* %0, %struct.qlnxr_dev** %8, align 8
  store %struct.qlnxr_qp* %1, %struct.qlnxr_qp** %9, align 8
  store %struct.rdma_sq_send_wqe* %2, %struct.rdma_sq_send_wqe** %10, align 8
  store %struct.rdma_sq_send_wqe* %3, %struct.rdma_sq_send_wqe** %11, align 8
  store %struct.ib_send_wr* %4, %struct.ib_send_wr** %12, align 8
  store %struct.ib_send_wr** %5, %struct.ib_send_wr*** %13, align 8
  store i32 0, i32* %15, align 4
  %17 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %8, align 8
  %18 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %14, align 8
  %20 = load i32*, i32** %14, align 8
  %21 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.rdma_sq_send_wqe*, %struct.rdma_sq_send_wqe** %11, align 8
  %23 = call i32 @memset(%struct.rdma_sq_send_wqe* %22, i32 0, i32 8)
  %24 = load %struct.ib_send_wr*, %struct.ib_send_wr** %12, align 8
  %25 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @IB_SEND_INLINE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %6
  store i32 0, i32* %16, align 4
  %31 = load i32, i32* %16, align 4
  %32 = load i32, i32* @RDMA_SQ_SEND_WQE_INLINE_FLG, align 4
  %33 = call i32 @SET_FIELD2(i32 %31, i32 %32, i32 1)
  %34 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %8, align 8
  %35 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %36 = load %struct.rdma_sq_send_wqe*, %struct.rdma_sq_send_wqe** %10, align 8
  %37 = getelementptr inbounds %struct.rdma_sq_send_wqe, %struct.rdma_sq_send_wqe* %36, i32 0, i32 0
  %38 = load %struct.ib_send_wr*, %struct.ib_send_wr** %12, align 8
  %39 = load %struct.ib_send_wr**, %struct.ib_send_wr*** %13, align 8
  %40 = load %struct.rdma_sq_send_wqe*, %struct.rdma_sq_send_wqe** %10, align 8
  %41 = getelementptr inbounds %struct.rdma_sq_send_wqe, %struct.rdma_sq_send_wqe* %40, i32 0, i32 1
  %42 = load i32, i32* %16, align 4
  %43 = call i32 @qlnxr_prepare_sq_inline_data(%struct.qlnxr_dev* %34, %struct.qlnxr_qp* %35, i32* %37, %struct.ib_send_wr* %38, %struct.ib_send_wr** %39, i32* %41, i32 %42)
  store i32 %43, i32* %7, align 4
  br label %55

44:                                               ; preds = %6
  %45 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %8, align 8
  %46 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %47 = load %struct.rdma_sq_send_wqe*, %struct.rdma_sq_send_wqe** %10, align 8
  %48 = getelementptr inbounds %struct.rdma_sq_send_wqe, %struct.rdma_sq_send_wqe* %47, i32 0, i32 0
  %49 = load %struct.ib_send_wr*, %struct.ib_send_wr** %12, align 8
  %50 = call i32 @qlnxr_prepare_sq_sges(%struct.qlnxr_dev* %45, %struct.qlnxr_qp* %46, i32* %48, %struct.ib_send_wr* %49)
  store i32 %50, i32* %15, align 4
  %51 = load i32*, i32** %14, align 8
  %52 = load i32, i32* %15, align 4
  %53 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %51, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %15, align 4
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %44, %30
  %56 = load i32, i32* %7, align 4
  ret i32 %56
}

declare dso_local i32 @QL_DPRINT12(i32*, i8*, ...) #1

declare dso_local i32 @memset(%struct.rdma_sq_send_wqe*, i32, i32) #1

declare dso_local i32 @SET_FIELD2(i32, i32, i32) #1

declare dso_local i32 @qlnxr_prepare_sq_inline_data(%struct.qlnxr_dev*, %struct.qlnxr_qp*, i32*, %struct.ib_send_wr*, %struct.ib_send_wr**, i32*, i32) #1

declare dso_local i32 @qlnxr_prepare_sq_sges(%struct.qlnxr_dev*, %struct.qlnxr_qp*, i32*, %struct.ib_send_wr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
