; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_ucma.c_ucma_copy_conn_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_ucma.c_ucma_copy_conn_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_cm_id = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.rdma_conn_param = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rdma_ucm_conn_param = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@AF_IB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rdma_cm_id*, %struct.rdma_conn_param*, %struct.rdma_ucm_conn_param*)* @ucma_copy_conn_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ucma_copy_conn_param(%struct.rdma_cm_id* %0, %struct.rdma_conn_param* %1, %struct.rdma_ucm_conn_param* %2) #0 {
  %4 = alloca %struct.rdma_cm_id*, align 8
  %5 = alloca %struct.rdma_conn_param*, align 8
  %6 = alloca %struct.rdma_ucm_conn_param*, align 8
  store %struct.rdma_cm_id* %0, %struct.rdma_cm_id** %4, align 8
  store %struct.rdma_conn_param* %1, %struct.rdma_conn_param** %5, align 8
  store %struct.rdma_ucm_conn_param* %2, %struct.rdma_ucm_conn_param** %6, align 8
  %7 = load %struct.rdma_ucm_conn_param*, %struct.rdma_ucm_conn_param** %6, align 8
  %8 = getelementptr inbounds %struct.rdma_ucm_conn_param, %struct.rdma_ucm_conn_param* %7, i32 0, i32 9
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %11 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %10, i32 0, i32 9
  store i32 %9, i32* %11, align 4
  %12 = load %struct.rdma_ucm_conn_param*, %struct.rdma_ucm_conn_param** %6, align 8
  %13 = getelementptr inbounds %struct.rdma_ucm_conn_param, %struct.rdma_ucm_conn_param* %12, i32 0, i32 8
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %16 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %15, i32 0, i32 8
  store i32 %14, i32* %16, align 4
  %17 = load %struct.rdma_ucm_conn_param*, %struct.rdma_ucm_conn_param** %6, align 8
  %18 = getelementptr inbounds %struct.rdma_ucm_conn_param, %struct.rdma_ucm_conn_param* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %21 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %20, i32 0, i32 7
  store i32 %19, i32* %21, align 4
  %22 = load %struct.rdma_ucm_conn_param*, %struct.rdma_ucm_conn_param** %6, align 8
  %23 = getelementptr inbounds %struct.rdma_ucm_conn_param, %struct.rdma_ucm_conn_param* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %26 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %25, i32 0, i32 6
  store i32 %24, i32* %26, align 4
  %27 = load %struct.rdma_ucm_conn_param*, %struct.rdma_ucm_conn_param** %6, align 8
  %28 = getelementptr inbounds %struct.rdma_ucm_conn_param, %struct.rdma_ucm_conn_param* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %31 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %30, i32 0, i32 5
  store i32 %29, i32* %31, align 4
  %32 = load %struct.rdma_ucm_conn_param*, %struct.rdma_ucm_conn_param** %6, align 8
  %33 = getelementptr inbounds %struct.rdma_ucm_conn_param, %struct.rdma_ucm_conn_param* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %36 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 4
  %37 = load %struct.rdma_ucm_conn_param*, %struct.rdma_ucm_conn_param** %6, align 8
  %38 = getelementptr inbounds %struct.rdma_ucm_conn_param, %struct.rdma_ucm_conn_param* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %41 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load %struct.rdma_ucm_conn_param*, %struct.rdma_ucm_conn_param** %6, align 8
  %43 = getelementptr inbounds %struct.rdma_ucm_conn_param, %struct.rdma_ucm_conn_param* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %46 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  %47 = load %struct.rdma_ucm_conn_param*, %struct.rdma_ucm_conn_param** %6, align 8
  %48 = getelementptr inbounds %struct.rdma_ucm_conn_param, %struct.rdma_ucm_conn_param* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %51 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %53 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @AF_IB, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %3
  %61 = load %struct.rdma_ucm_conn_param*, %struct.rdma_ucm_conn_param** %6, align 8
  %62 = getelementptr inbounds %struct.rdma_ucm_conn_param, %struct.rdma_ucm_conn_param* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  br label %65

64:                                               ; preds = %3
  br label %65

65:                                               ; preds = %64, %60
  %66 = phi i32 [ %63, %60 ], [ 0, %64 ]
  %67 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %68 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
