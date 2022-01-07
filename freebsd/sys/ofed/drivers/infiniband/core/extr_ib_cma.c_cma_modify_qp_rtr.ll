; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_modify_qp_rtr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_modify_qp_rtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_id_private = type { i32, %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i64, i32, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.rdma_conn_param = type { i32 }
%struct.ib_qp_attr = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%union.ib_gid = type { i32 }

@IB_QPS_INIT = common dso_local global i32 0, align 4
@IB_QPS_RTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_id_private*, %struct.rdma_conn_param*)* @cma_modify_qp_rtr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_modify_qp_rtr(%struct.rdma_id_private* %0, %struct.rdma_conn_param* %1) #0 {
  %3 = alloca %struct.rdma_id_private*, align 8
  %4 = alloca %struct.rdma_conn_param*, align 8
  %5 = alloca %struct.ib_qp_attr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %union.ib_gid, align 4
  store %struct.rdma_id_private* %0, %struct.rdma_id_private** %3, align 8
  store %struct.rdma_conn_param* %1, %struct.rdma_conn_param** %4, align 8
  %9 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %10 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %13 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %90

18:                                               ; preds = %2
  %19 = load i32, i32* @IB_QPS_INIT, align 4
  %20 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %5, i32 0, i32 2
  store i32 %19, i32* %20, align 4
  %21 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %22 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %21, i32 0, i32 1
  %23 = call i32 @rdma_init_qp_attr(%struct.TYPE_8__* %22, %struct.ib_qp_attr* %5, i32* %6)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %90

27:                                               ; preds = %18
  %28 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %29 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @ib_modify_qp(i32 %31, %struct.ib_qp_attr* %5, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %90

37:                                               ; preds = %27
  %38 = load i32, i32* @IB_QPS_RTR, align 4
  %39 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %5, i32 0, i32 2
  store i32 %38, i32* %39, align 4
  %40 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %41 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %40, i32 0, i32 1
  %42 = call i32 @rdma_init_qp_attr(%struct.TYPE_8__* %41, %struct.ib_qp_attr* %5, i32* %6)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %90

46:                                               ; preds = %37
  %47 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %48 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %52 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %5, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ib_query_gid(i64 %50, i32 %54, i32 %58, %union.ib_gid* %8, i32* null)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %46
  br label %90

63:                                               ; preds = %46
  %64 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %65 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %64, i32 0, i32 2
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %70 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %68, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @BUG_ON(i32 %74)
  %76 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %4, align 8
  %77 = icmp ne %struct.rdma_conn_param* %76, null
  br i1 %77, label %78, label %83

78:                                               ; preds = %63
  %79 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %4, align 8
  %80 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %5, i32 0, i32 0
  store i32 %81, i32* %82, align 4
  br label %83

83:                                               ; preds = %78, %63
  %84 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %85 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @ib_modify_qp(i32 %87, %struct.ib_qp_attr* %5, i32 %88)
  store i32 %89, i32* %7, align 4
  br label %90

90:                                               ; preds = %83, %62, %45, %36, %26, %17
  %91 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %92 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %91, i32 0, i32 0
  %93 = call i32 @mutex_unlock(i32* %92)
  %94 = load i32, i32* %7, align 4
  ret i32 %94
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rdma_init_qp_attr(%struct.TYPE_8__*, %struct.ib_qp_attr*, i32*) #1

declare dso_local i32 @ib_modify_qp(i32, %struct.ib_qp_attr*, i32) #1

declare dso_local i32 @ib_query_gid(i64, i32, i32, %union.ib_gid*, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
