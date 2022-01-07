; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_iser_verbs.c_iser_connected_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_iser_verbs.c_iser_connected_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_cm_id = type { %struct.TYPE_2__*, %struct.iser_conn* }
%struct.TYPE_2__ = type { i32 }
%struct.iser_conn = type { i32, i32 }
%struct.ib_qp_attr = type { i32 }
%struct.ib_qp_init_attr = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"remote qpn:%x my qpn:%x\00", align 1
@ISER_CONN_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rdma_cm_id*)* @iser_connected_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iser_connected_handler(%struct.rdma_cm_id* %0) #0 {
  %2 = alloca %struct.rdma_cm_id*, align 8
  %3 = alloca %struct.iser_conn*, align 8
  %4 = alloca %struct.ib_qp_attr, align 4
  %5 = alloca %struct.ib_qp_init_attr, align 4
  store %struct.rdma_cm_id* %0, %struct.rdma_cm_id** %2, align 8
  %6 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %2, align 8
  %7 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %6, i32 0, i32 1
  %8 = load %struct.iser_conn*, %struct.iser_conn** %7, align 8
  store %struct.iser_conn* %8, %struct.iser_conn** %3, align 8
  %9 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %2, align 8
  %10 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = call i32 @ib_query_qp(%struct.TYPE_2__* %11, %struct.ib_qp_attr* %4, i32 -1, %struct.ib_qp_init_attr* %5)
  %13 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %4, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %2, align 8
  %16 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ISER_INFO(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %19)
  %21 = load i32, i32* @ISER_CONN_UP, align 4
  %22 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %23 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %25 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %24, i32 0, i32 0
  %26 = call i32 @cv_signal(i32* %25)
  ret void
}

declare dso_local i32 @ib_query_qp(%struct.TYPE_2__*, %struct.ib_qp_attr*, i32, %struct.ib_qp_init_attr*) #1

declare dso_local i32 @ISER_INFO(i8*, i32, i32) #1

declare dso_local i32 @cv_signal(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
