; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_prepare_sq_sges.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_prepare_sq_sges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlnxr_dev = type { i32* }
%struct.qlnxr_qp = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ib_send_wr = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64, i32 }
%struct.rdma_sq_sge = type { i8*, i8* }

@.str = private unnamed_addr constant [25 x i8] c"enter wr->num_sge = %d \0A\00", align 1
@addr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"exit data_size = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlnxr_dev*, %struct.qlnxr_qp*, i32*, %struct.ib_send_wr*)* @qlnxr_prepare_sq_sges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlnxr_prepare_sq_sges(%struct.qlnxr_dev* %0, %struct.qlnxr_qp* %1, i32* %2, %struct.ib_send_wr* %3) #0 {
  %5 = alloca %struct.qlnxr_dev*, align 8
  %6 = alloca %struct.qlnxr_qp*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ib_send_wr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.rdma_sq_sge*, align 8
  store %struct.qlnxr_dev* %0, %struct.qlnxr_dev** %5, align 8
  store %struct.qlnxr_qp* %1, %struct.qlnxr_qp** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.ib_send_wr* %3, %struct.ib_send_wr** %8, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %5, align 8
  %14 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %11, align 8
  %16 = load i32*, i32** %11, align 8
  %17 = load %struct.ib_send_wr*, %struct.ib_send_wr** %8, align 8
  %18 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @QL_DPRINT12(i32* %16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %19)
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %77, %4
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.ib_send_wr*, %struct.ib_send_wr** %8, align 8
  %24 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %80

27:                                               ; preds = %21
  %28 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %6, align 8
  %29 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = call %struct.rdma_sq_sge* @ecore_chain_produce(i32* %30)
  store %struct.rdma_sq_sge* %31, %struct.rdma_sq_sge** %12, align 8
  %32 = load %struct.rdma_sq_sge*, %struct.rdma_sq_sge** %12, align 8
  %33 = load i32, i32* @addr, align 4
  %34 = load %struct.ib_send_wr*, %struct.ib_send_wr** %8, align 8
  %35 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @TYPEPTR_ADDR_SET(%struct.rdma_sq_sge* %32, i32 %33, i32 %41)
  %43 = load %struct.ib_send_wr*, %struct.ib_send_wr** %8, align 8
  %44 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %43, i32 0, i32 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i8* @cpu_to_le32(i64 %50)
  %52 = load %struct.rdma_sq_sge*, %struct.rdma_sq_sge** %12, align 8
  %53 = getelementptr inbounds %struct.rdma_sq_sge, %struct.rdma_sq_sge* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  %54 = load %struct.ib_send_wr*, %struct.ib_send_wr** %8, align 8
  %55 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i8* @cpu_to_le32(i64 %61)
  %63 = load %struct.rdma_sq_sge*, %struct.rdma_sq_sge** %12, align 8
  %64 = getelementptr inbounds %struct.rdma_sq_sge, %struct.rdma_sq_sge* %63, i32 0, i32 0
  store i8* %62, i8** %64, align 8
  %65 = load %struct.ib_send_wr*, %struct.ib_send_wr** %8, align 8
  %66 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %65, i32 0, i32 1
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %74, %72
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %10, align 4
  br label %77

77:                                               ; preds = %27
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %9, align 4
  br label %21

80:                                               ; preds = %21
  %81 = load i32*, i32** %7, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %90

83:                                               ; preds = %80
  %84 = load %struct.ib_send_wr*, %struct.ib_send_wr** %8, align 8
  %85 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32*, i32** %7, align 8
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, %86
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %83, %80
  %91 = load i32*, i32** %11, align 8
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @QL_DPRINT12(i32* %91, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* %10, align 4
  ret i32 %94
}

declare dso_local i32 @QL_DPRINT12(i32*, i8*, i32) #1

declare dso_local %struct.rdma_sq_sge* @ecore_chain_produce(i32*) #1

declare dso_local i32 @TYPEPTR_ADDR_SET(%struct.rdma_sq_sge*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
