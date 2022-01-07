; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_match_net_dev.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_match_net_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_cm_id = type { i64, i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.rdma_addr }
%struct.rdma_addr = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.net_device = type { i64 }

@RDMA_PS_SDP = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@AF_IB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_cm_id*, %struct.net_device*, i64)* @cma_match_net_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_match_net_dev(%struct.rdma_cm_id* %0, %struct.net_device* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rdma_cm_id*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.rdma_addr*, align 8
  store %struct.rdma_cm_id* %0, %struct.rdma_cm_id** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %5, align 8
  %10 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store %struct.rdma_addr* %11, %struct.rdma_addr** %8, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = icmp ne %struct.net_device* %12, null
  br i1 %13, label %65, label %14

14:                                               ; preds = %3
  %15 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %5, align 8
  %16 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %5, align 8
  %21 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %7, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %94

26:                                               ; preds = %19, %14
  %27 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %5, align 8
  %28 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @RDMA_PS_SDP, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %48

32:                                               ; preds = %26
  %33 = load %struct.rdma_addr*, %struct.rdma_addr** %8, align 8
  %34 = getelementptr inbounds %struct.rdma_addr, %struct.rdma_addr* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @AF_INET, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %46, label %39

39:                                               ; preds = %32
  %40 = load %struct.rdma_addr*, %struct.rdma_addr** %8, align 8
  %41 = getelementptr inbounds %struct.rdma_addr, %struct.rdma_addr* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @AF_INET6, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %39, %32
  store i32 1, i32* %4, align 4
  br label %94

47:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %94

48:                                               ; preds = %26
  %49 = load %struct.rdma_addr*, %struct.rdma_addr** %8, align 8
  %50 = getelementptr inbounds %struct.rdma_addr, %struct.rdma_addr* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @AF_IB, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %62, label %55

55:                                               ; preds = %48
  %56 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %5, align 8
  %57 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load i64, i64* %7, align 8
  %60 = call i64 @cma_protocol_roce_dev_port(i32 %58, i64 %59)
  %61 = icmp ne i64 %60, 0
  br label %62

62:                                               ; preds = %55, %48
  %63 = phi i1 [ true, %48 ], [ %61, %55 ]
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %4, align 4
  br label %94

65:                                               ; preds = %3
  %66 = load %struct.rdma_addr*, %struct.rdma_addr** %8, align 8
  %67 = getelementptr inbounds %struct.rdma_addr, %struct.rdma_addr* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %91

71:                                               ; preds = %65
  %72 = load %struct.net_device*, %struct.net_device** %6, align 8
  %73 = call i32 @dev_net(%struct.net_device* %72)
  %74 = load %struct.rdma_addr*, %struct.rdma_addr** %8, align 8
  %75 = getelementptr inbounds %struct.rdma_addr, %struct.rdma_addr* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @net_eq(i32 %73, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %71
  %81 = load %struct.rdma_addr*, %struct.rdma_addr** %8, align 8
  %82 = getelementptr inbounds %struct.rdma_addr, %struct.rdma_addr* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.net_device*, %struct.net_device** %6, align 8
  %86 = getelementptr inbounds %struct.net_device, %struct.net_device* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %84, %87
  br label %89

89:                                               ; preds = %80, %71
  %90 = phi i1 [ false, %71 ], [ %88, %80 ]
  br label %91

91:                                               ; preds = %89, %65
  %92 = phi i1 [ true, %65 ], [ %90, %89 ]
  %93 = zext i1 %92 to i32
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %91, %62, %47, %46, %25
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i64 @cma_protocol_roce_dev_port(i32, i64) #1

declare dso_local i64 @net_eq(i32, i32) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
