; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_iser_verbs.c_iser_cma_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_iser_verbs.c_iser_cma_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_cm_id = type { %struct.iser_conn* }
%struct.iser_conn = type { i32 }
%struct.rdma_cm_event = type { i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"event %d status %d conn %p id %p\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Unexpected RDMA CM event (%d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iser_cma_handler(%struct.rdma_cm_id* %0, %struct.rdma_cm_event* %1) #0 {
  %3 = alloca %struct.rdma_cm_id*, align 8
  %4 = alloca %struct.rdma_cm_event*, align 8
  %5 = alloca %struct.iser_conn*, align 8
  %6 = alloca i32, align 4
  store %struct.rdma_cm_id* %0, %struct.rdma_cm_id** %3, align 8
  store %struct.rdma_cm_event* %1, %struct.rdma_cm_event** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %8 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %7, i32 0, i32 0
  %9 = load %struct.iser_conn*, %struct.iser_conn** %8, align 8
  store %struct.iser_conn* %9, %struct.iser_conn** %5, align 8
  %10 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %4, align 8
  %11 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %4, align 8
  %14 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %17 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %16, i32 0, i32 0
  %18 = load %struct.iser_conn*, %struct.iser_conn** %17, align 8
  %19 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %20 = call i32 @ISER_INFO(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %15, %struct.iser_conn* %18, %struct.rdma_cm_id* %19)
  %21 = load %struct.iser_conn*, %struct.iser_conn** %5, align 8
  %22 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %21, i32 0, i32 0
  %23 = call i32 @sx_xlock(i32* %22)
  %24 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %4, align 8
  %25 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %42 [
    i32 136, label %27
    i32 130, label %30
    i32 133, label %33
    i32 137, label %36
    i32 131, label %36
    i32 135, label %36
    i32 128, label %36
    i32 132, label %36
    i32 134, label %39
    i32 138, label %39
    i32 129, label %39
  ]

27:                                               ; preds = %2
  %28 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %29 = call i32 @iser_addr_handler(%struct.rdma_cm_id* %28)
  br label %47

30:                                               ; preds = %2
  %31 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %32 = call i32 @iser_route_handler(%struct.rdma_cm_id* %31)
  br label %47

33:                                               ; preds = %2
  %34 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %35 = call i32 @iser_connected_handler(%struct.rdma_cm_id* %34)
  br label %47

36:                                               ; preds = %2, %2, %2, %2, %2
  %37 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %38 = call i32 @iser_connect_error(%struct.rdma_cm_id* %37)
  br label %47

39:                                               ; preds = %2, %2, %2
  %40 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %41 = call i32 @iser_cleanup_handler(%struct.rdma_cm_id* %40, i32 0)
  br label %47

42:                                               ; preds = %2
  %43 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %4, align 8
  %44 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ISER_ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %42, %39, %36, %33, %30, %27
  %48 = load %struct.iser_conn*, %struct.iser_conn** %5, align 8
  %49 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %48, i32 0, i32 0
  %50 = call i32 @sx_xunlock(i32* %49)
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local i32 @ISER_INFO(i8*, i32, i32, %struct.iser_conn*, %struct.rdma_cm_id*) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @iser_addr_handler(%struct.rdma_cm_id*) #1

declare dso_local i32 @iser_route_handler(%struct.rdma_cm_id*) #1

declare dso_local i32 @iser_connected_handler(%struct.rdma_cm_id*) #1

declare dso_local i32 @iser_connect_error(%struct.rdma_cm_id*) #1

declare dso_local i32 @iser_cleanup_handler(%struct.rdma_cm_id*, i32) #1

declare dso_local i32 @ISER_ERR(i8*, i32) #1

declare dso_local i32 @sx_xunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
