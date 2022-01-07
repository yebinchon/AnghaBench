; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_iser_verbs.c_iser_addr_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_iser_verbs.c_iser_addr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_cm_id = type { %struct.iser_conn* }
%struct.iser_conn = type { %struct.ib_conn }
%struct.ib_conn = type { %struct.iser_device* }
%struct.iser_device = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"conn %p device lookup/creation failed\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"conn %p resolve route failed: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rdma_cm_id*)* @iser_addr_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iser_addr_handler(%struct.rdma_cm_id* %0) #0 {
  %2 = alloca %struct.rdma_cm_id*, align 8
  %3 = alloca %struct.iser_device*, align 8
  %4 = alloca %struct.iser_conn*, align 8
  %5 = alloca %struct.ib_conn*, align 8
  %6 = alloca i32, align 4
  store %struct.rdma_cm_id* %0, %struct.rdma_cm_id** %2, align 8
  %7 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %2, align 8
  %8 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %7, i32 0, i32 0
  %9 = load %struct.iser_conn*, %struct.iser_conn** %8, align 8
  store %struct.iser_conn* %9, %struct.iser_conn** %4, align 8
  %10 = load %struct.iser_conn*, %struct.iser_conn** %4, align 8
  %11 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %10, i32 0, i32 0
  store %struct.ib_conn* %11, %struct.ib_conn** %5, align 8
  %12 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %2, align 8
  %13 = call %struct.iser_device* @iser_device_find_by_ib_device(%struct.rdma_cm_id* %12)
  store %struct.iser_device* %13, %struct.iser_device** %3, align 8
  %14 = load %struct.iser_device*, %struct.iser_device** %3, align 8
  %15 = icmp ne %struct.iser_device* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %1
  %17 = load %struct.iser_conn*, %struct.iser_conn** %4, align 8
  %18 = call i32 (i8*, %struct.iser_conn*, ...) @ISER_ERR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), %struct.iser_conn* %17)
  %19 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %2, align 8
  %20 = call i32 @iser_connect_error(%struct.rdma_cm_id* %19)
  br label %35

21:                                               ; preds = %1
  %22 = load %struct.iser_device*, %struct.iser_device** %3, align 8
  %23 = load %struct.ib_conn*, %struct.ib_conn** %5, align 8
  %24 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %23, i32 0, i32 0
  store %struct.iser_device* %22, %struct.iser_device** %24, align 8
  %25 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %2, align 8
  %26 = call i32 @rdma_resolve_route(%struct.rdma_cm_id* %25, i32 1000)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %21
  %30 = load %struct.iser_conn*, %struct.iser_conn** %4, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 (i8*, %struct.iser_conn*, ...) @ISER_ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), %struct.iser_conn* %30, i32 %31)
  %33 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %2, align 8
  %34 = call i32 @iser_connect_error(%struct.rdma_cm_id* %33)
  br label %35

35:                                               ; preds = %16, %29, %21
  ret void
}

declare dso_local %struct.iser_device* @iser_device_find_by_ib_device(%struct.rdma_cm_id*) #1

declare dso_local i32 @ISER_ERR(i8*, %struct.iser_conn*, ...) #1

declare dso_local i32 @iser_connect_error(%struct.rdma_cm_id*) #1

declare dso_local i32 @rdma_resolve_route(%struct.rdma_cm_id*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
