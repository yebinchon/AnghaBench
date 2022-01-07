; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_iser_verbs.c_iser_route_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_iser_verbs.c_iser_route_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_cm_id = type { %struct.iser_conn* }
%struct.iser_conn = type { %struct.ib_conn }
%struct.ib_conn = type { %struct.iser_device* }
%struct.iser_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rdma_conn_param = type { i32, i32, i32, i32, i32, i8*, i32 }
%struct.iser_cm_hdr = type { i32, i32, i32, i32, i32, i8*, i32 }

@ISER_ZBVA_NOT_SUPPORTED = common dso_local global i32 0, align 4
@ISER_SEND_W_INV_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"conn %p failure connecting: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rdma_cm_id*)* @iser_route_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iser_route_handler(%struct.rdma_cm_id* %0) #0 {
  %2 = alloca %struct.rdma_cm_id*, align 8
  %3 = alloca %struct.rdma_conn_param, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iser_cm_hdr, align 8
  %6 = alloca %struct.iser_conn*, align 8
  %7 = alloca %struct.ib_conn*, align 8
  %8 = alloca %struct.iser_device*, align 8
  store %struct.rdma_cm_id* %0, %struct.rdma_cm_id** %2, align 8
  %9 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %2, align 8
  %10 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %9, i32 0, i32 0
  %11 = load %struct.iser_conn*, %struct.iser_conn** %10, align 8
  store %struct.iser_conn* %11, %struct.iser_conn** %6, align 8
  %12 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %13 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %12, i32 0, i32 0
  store %struct.ib_conn* %13, %struct.ib_conn** %7, align 8
  %14 = load %struct.ib_conn*, %struct.ib_conn** %7, align 8
  %15 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %14, i32 0, i32 0
  %16 = load %struct.iser_device*, %struct.iser_device** %15, align 8
  store %struct.iser_device* %16, %struct.iser_device** %8, align 8
  %17 = load %struct.ib_conn*, %struct.ib_conn** %7, align 8
  %18 = call i32 @iser_create_ib_conn_res(%struct.ib_conn* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %50

22:                                               ; preds = %1
  %23 = call i32 @memset(%struct.rdma_conn_param* %3, i32 0, i32 40)
  %24 = load %struct.iser_device*, %struct.iser_device** %8, align 8
  %25 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %3, i32 0, i32 6
  store i32 %27, i32* %28, align 8
  %29 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %3, i32 0, i32 0
  store i32 7, i32* %29, align 8
  %30 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %3, i32 0, i32 1
  store i32 6, i32* %30, align 4
  %31 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %3, i32 0, i32 2
  store i32 1, i32* %31, align 8
  %32 = bitcast %struct.iser_cm_hdr* %5 to %struct.rdma_conn_param*
  %33 = call i32 @memset(%struct.rdma_conn_param* %32, i32 0, i32 40)
  %34 = load i32, i32* @ISER_ZBVA_NOT_SUPPORTED, align 4
  %35 = load i32, i32* @ISER_SEND_W_INV_NOT_SUPPORTED, align 4
  %36 = or i32 %34, %35
  %37 = getelementptr inbounds %struct.iser_cm_hdr, %struct.iser_cm_hdr* %5, i32 0, i32 3
  store i32 %36, i32* %37, align 4
  %38 = bitcast %struct.iser_cm_hdr* %5 to i8*
  %39 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %3, i32 0, i32 5
  store i8* %38, i8** %39, align 8
  %40 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %3, i32 0, i32 4
  store i32 40, i32* %40, align 8
  %41 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %2, align 8
  %42 = call i32 @rdma_connect(%struct.rdma_cm_id* %41, %struct.rdma_conn_param* %3)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %22
  %46 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @ISER_ERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.iser_conn* %46, i32 %47)
  br label %50

49:                                               ; preds = %22
  br label %53

50:                                               ; preds = %45, %21
  %51 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %2, align 8
  %52 = call i32 @iser_connect_error(%struct.rdma_cm_id* %51)
  br label %53

53:                                               ; preds = %50, %49
  ret void
}

declare dso_local i32 @iser_create_ib_conn_res(%struct.ib_conn*) #1

declare dso_local i32 @memset(%struct.rdma_conn_param*, i32, i32) #1

declare dso_local i32 @rdma_connect(%struct.rdma_cm_id*, %struct.rdma_conn_param*) #1

declare dso_local i32 @ISER_ERR(i8*, %struct.iser_conn*, i32) #1

declare dso_local i32 @iser_connect_error(%struct.rdma_cm_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
