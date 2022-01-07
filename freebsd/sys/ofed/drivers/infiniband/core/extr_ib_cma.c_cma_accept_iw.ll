; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_accept_iw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_accept_iw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_id_private = type { %struct.TYPE_4__, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.rdma_conn_param = type { i32, i32, i32, i32, i32 }
%struct.iw_cm_conn_param = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_id_private*, %struct.rdma_conn_param*)* @cma_accept_iw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_accept_iw(%struct.rdma_id_private* %0, %struct.rdma_conn_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rdma_id_private*, align 8
  %5 = alloca %struct.rdma_conn_param*, align 8
  %6 = alloca %struct.iw_cm_conn_param, align 4
  %7 = alloca i32, align 4
  store %struct.rdma_id_private* %0, %struct.rdma_id_private** %4, align 8
  store %struct.rdma_conn_param* %1, %struct.rdma_conn_param** %5, align 8
  %8 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %9 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %10 = call i32 @cma_modify_qp_rtr(%struct.rdma_id_private* %8, %struct.rdma_conn_param* %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %3, align 4
  br label %53

15:                                               ; preds = %2
  %16 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %17 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.iw_cm_conn_param, %struct.iw_cm_conn_param* %6, i32 0, i32 4
  store i32 %18, i32* %19, align 4
  %20 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %21 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.iw_cm_conn_param, %struct.iw_cm_conn_param* %6, i32 0, i32 3
  store i32 %22, i32* %23, align 4
  %24 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %25 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.iw_cm_conn_param, %struct.iw_cm_conn_param* %6, i32 0, i32 2
  store i32 %26, i32* %27, align 4
  %28 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %29 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.iw_cm_conn_param, %struct.iw_cm_conn_param* %6, i32 0, i32 1
  store i32 %30, i32* %31, align 4
  %32 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %33 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %15
  %38 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %39 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.iw_cm_conn_param, %struct.iw_cm_conn_param* %6, i32 0, i32 0
  store i32 %40, i32* %41, align 4
  br label %47

42:                                               ; preds = %15
  %43 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %44 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.iw_cm_conn_param, %struct.iw_cm_conn_param* %6, i32 0, i32 0
  store i32 %45, i32* %46, align 4
  br label %47

47:                                               ; preds = %42, %37
  %48 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %49 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @iw_cm_accept(i32 %51, %struct.iw_cm_conn_param* %6)
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %47, %13
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @cma_modify_qp_rtr(%struct.rdma_id_private*, %struct.rdma_conn_param*) #1

declare dso_local i32 @iw_cm_accept(i32, %struct.iw_cm_conn_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
