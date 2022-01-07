; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_set_req_event_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_set_req_event_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_cm_event = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.ib_cm_req_event_param = type { i32, i32, i32, i32, i32, i32, i32 }

@IB_CM_REQ_PRIVATE_DATA_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rdma_cm_event*, %struct.ib_cm_req_event_param*, i8*, i32)* @cma_set_req_event_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cma_set_req_event_data(%struct.rdma_cm_event* %0, %struct.ib_cm_req_event_param* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.rdma_cm_event*, align 8
  %6 = alloca %struct.ib_cm_req_event_param*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.rdma_cm_event* %0, %struct.rdma_cm_event** %5, align 8
  store %struct.ib_cm_req_event_param* %1, %struct.ib_cm_req_event_param** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i8*, i8** %7, align 8
  %10 = load i32, i32* %8, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, i8* %9, i64 %11
  %13 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %5, align 8
  %14 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store i8* %12, i8** %16, align 8
  %17 = load i64, i64* @IB_CM_REQ_PRIVATE_DATA_SIZE, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = sub nsw i64 %17, %19
  %21 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %5, align 8
  %22 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 8
  store i64 %20, i64* %24, align 8
  %25 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %6, align 8
  %26 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %5, align 8
  %29 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 7
  store i32 %27, i32* %31, align 8
  %32 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %6, align 8
  %33 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %5, align 8
  %36 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 6
  store i32 %34, i32* %38, align 4
  %39 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %6, align 8
  %40 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %5, align 8
  %43 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 5
  store i32 %41, i32* %45, align 8
  %46 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %6, align 8
  %47 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %5, align 8
  %50 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 4
  store i32 %48, i32* %52, align 4
  %53 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %6, align 8
  %54 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %5, align 8
  %57 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 3
  store i32 %55, i32* %59, align 8
  %60 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %6, align 8
  %61 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %5, align 8
  %64 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 2
  store i32 %62, i32* %66, align 4
  %67 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %6, align 8
  %68 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %5, align 8
  %71 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  store i32 %69, i32* %73, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
