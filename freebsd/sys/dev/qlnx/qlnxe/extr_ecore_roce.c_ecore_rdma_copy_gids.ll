; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_roce.c_ecore_rdma_copy_gids.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_roce.c_ecore_rdma_copy_gids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_rdma_qp = type { i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32*, i32 }
%struct.TYPE_3__ = type { i32*, i32 }

@ROCE_V2_IPV4 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_rdma_qp*, i32*, i32*)* @ecore_rdma_copy_gids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_rdma_copy_gids(%struct.ecore_rdma_qp* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.ecore_rdma_qp*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store %struct.ecore_rdma_qp* %0, %struct.ecore_rdma_qp** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %4, align 8
  %9 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @ROCE_V2_IPV4, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %32

13:                                               ; preds = %3
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @OSAL_MEMSET(i32* %14, i32 0, i32 4)
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @OSAL_MEMSET(i32* %16, i32 0, i32 4)
  %18 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %4, align 8
  %19 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @OSAL_CPU_TO_LE32(i32 %21)
  %23 = load i32*, i32** %5, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 3
  store i32 %22, i32* %24, align 4
  %25 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %4, align 8
  %26 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @OSAL_CPU_TO_LE32(i32 %28)
  %30 = load i32*, i32** %6, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 3
  store i32 %29, i32* %31, align 4
  br label %68

32:                                               ; preds = %3
  store i64 0, i64* %7, align 8
  br label %33

33:                                               ; preds = %64, %32
  %34 = load i64, i64* %7, align 8
  %35 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %4, align 8
  %36 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = call i64 @OSAL_ARRAY_SIZE(i32* %38)
  %40 = icmp ult i64 %34, %39
  br i1 %40, label %41, label %67

41:                                               ; preds = %33
  %42 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %4, align 8
  %43 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* %7, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @OSAL_CPU_TO_LE32(i32 %48)
  %50 = load i32*, i32** %5, align 8
  %51 = load i64, i64* %7, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  store i32 %49, i32* %52, align 4
  %53 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %4, align 8
  %54 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* %7, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @OSAL_CPU_TO_LE32(i32 %59)
  %61 = load i32*, i32** %6, align 8
  %62 = load i64, i64* %7, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  store i32 %60, i32* %63, align 4
  br label %64

64:                                               ; preds = %41
  %65 = load i64, i64* %7, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %7, align 8
  br label %33

67:                                               ; preds = %33
  br label %68

68:                                               ; preds = %67, %13
  ret void
}

declare dso_local i32 @OSAL_MEMSET(i32*, i32, i32) #1

declare dso_local i32 @OSAL_CPU_TO_LE32(i32) #1

declare dso_local i64 @OSAL_ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
