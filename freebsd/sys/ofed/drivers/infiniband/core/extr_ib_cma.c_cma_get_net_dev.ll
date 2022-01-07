; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_get_net_dev.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_get_net_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ib_cm_event = type { i32 }
%struct.cma_req_info = type { i32, i32, i32, i32, %union.ib_gid, i64 }
%union.ib_gid = type { i32 }
%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@EHOSTUNREACH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device* (%struct.ib_cm_event*, %struct.cma_req_info*)* @cma_get_net_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device* @cma_get_net_dev(%struct.ib_cm_event* %0, %struct.cma_req_info* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ib_cm_event*, align 8
  %5 = alloca %struct.cma_req_info*, align 8
  %6 = alloca %struct.sockaddr_storage, align 4
  %7 = alloca %struct.sockaddr_storage, align 4
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %union.ib_gid*, align 8
  %12 = alloca i32, align 4
  store %struct.ib_cm_event* %0, %struct.ib_cm_event** %4, align 8
  store %struct.cma_req_info* %1, %struct.cma_req_info** %5, align 8
  %13 = bitcast %struct.sockaddr_storage* %6 to %struct.sockaddr*
  store %struct.sockaddr* %13, %struct.sockaddr** %8, align 8
  %14 = bitcast %struct.sockaddr_storage* %7 to %struct.sockaddr*
  store %struct.sockaddr* %14, %struct.sockaddr** %9, align 8
  %15 = load %struct.cma_req_info*, %struct.cma_req_info** %5, align 8
  %16 = getelementptr inbounds %struct.cma_req_info, %struct.cma_req_info* %15, i32 0, i32 5
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.cma_req_info*, %struct.cma_req_info** %5, align 8
  %21 = getelementptr inbounds %struct.cma_req_info, %struct.cma_req_info* %20, i32 0, i32 4
  br label %23

22:                                               ; preds = %2
  br label %23

23:                                               ; preds = %22, %19
  %24 = phi %union.ib_gid* [ %21, %19 ], [ null, %22 ]
  store %union.ib_gid* %24, %union.ib_gid** %11, align 8
  %25 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %26 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %27 = load %struct.ib_cm_event*, %struct.ib_cm_event** %4, align 8
  %28 = load %struct.cma_req_info*, %struct.cma_req_info** %5, align 8
  %29 = getelementptr inbounds %struct.cma_req_info, %struct.cma_req_info* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @cma_save_ip_info(%struct.sockaddr* %25, %struct.sockaddr* %26, %struct.ib_cm_event* %27, i32 %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %23
  %35 = load i32, i32* %12, align 4
  %36 = call %struct.net_device* @ERR_PTR(i32 %35)
  store %struct.net_device* %36, %struct.net_device** %3, align 8
  br label %89

37:                                               ; preds = %23
  %38 = load %struct.cma_req_info*, %struct.cma_req_info** %5, align 8
  %39 = getelementptr inbounds %struct.cma_req_info, %struct.cma_req_info* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.cma_req_info*, %struct.cma_req_info** %5, align 8
  %42 = getelementptr inbounds %struct.cma_req_info, %struct.cma_req_info* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @rdma_protocol_roce(i32 %40, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %37
  %47 = load %struct.cma_req_info*, %struct.cma_req_info** %5, align 8
  %48 = getelementptr inbounds %struct.cma_req_info, %struct.cma_req_info* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.cma_req_info*, %struct.cma_req_info** %5, align 8
  %51 = getelementptr inbounds %struct.cma_req_info, %struct.cma_req_info* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ib_cm_event*, %struct.ib_cm_event** %4, align 8
  %54 = call %struct.net_device* @roce_get_net_dev_by_cm_event(i32 %49, i32 %52, %struct.ib_cm_event* %53)
  store %struct.net_device* %54, %struct.net_device** %10, align 8
  br label %68

55:                                               ; preds = %37
  %56 = load %struct.cma_req_info*, %struct.cma_req_info** %5, align 8
  %57 = getelementptr inbounds %struct.cma_req_info, %struct.cma_req_info* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.cma_req_info*, %struct.cma_req_info** %5, align 8
  %60 = getelementptr inbounds %struct.cma_req_info, %struct.cma_req_info* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.cma_req_info*, %struct.cma_req_info** %5, align 8
  %63 = getelementptr inbounds %struct.cma_req_info, %struct.cma_req_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %union.ib_gid*, %union.ib_gid** %11, align 8
  %66 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %67 = call %struct.net_device* @ib_get_net_dev_by_params(i32 %58, i32 %61, i32 %64, %union.ib_gid* %65, %struct.sockaddr* %66)
  store %struct.net_device* %67, %struct.net_device** %10, align 8
  br label %68

68:                                               ; preds = %55, %46
  %69 = load %struct.net_device*, %struct.net_device** %10, align 8
  %70 = icmp ne %struct.net_device* %69, null
  br i1 %70, label %75, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* @ENODEV, align 4
  %73 = sub nsw i32 0, %72
  %74 = call %struct.net_device* @ERR_PTR(i32 %73)
  store %struct.net_device* %74, %struct.net_device** %3, align 8
  br label %89

75:                                               ; preds = %68
  %76 = load %struct.net_device*, %struct.net_device** %10, align 8
  %77 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %78 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %79 = call i32 @validate_net_dev(%struct.net_device* %76, %struct.sockaddr* %77, %struct.sockaddr* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %75
  %82 = load %struct.net_device*, %struct.net_device** %10, align 8
  %83 = call i32 @dev_put(%struct.net_device* %82)
  %84 = load i32, i32* @EHOSTUNREACH, align 4
  %85 = sub nsw i32 0, %84
  %86 = call %struct.net_device* @ERR_PTR(i32 %85)
  store %struct.net_device* %86, %struct.net_device** %3, align 8
  br label %89

87:                                               ; preds = %75
  %88 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %88, %struct.net_device** %3, align 8
  br label %89

89:                                               ; preds = %87, %81, %71, %34
  %90 = load %struct.net_device*, %struct.net_device** %3, align 8
  ret %struct.net_device* %90
}

declare dso_local i32 @cma_save_ip_info(%struct.sockaddr*, %struct.sockaddr*, %struct.ib_cm_event*, i32) #1

declare dso_local %struct.net_device* @ERR_PTR(i32) #1

declare dso_local i64 @rdma_protocol_roce(i32, i32) #1

declare dso_local %struct.net_device* @roce_get_net_dev_by_cm_event(i32, i32, %struct.ib_cm_event*) #1

declare dso_local %struct.net_device* @ib_get_net_dev_by_params(i32, i32, i32, %union.ib_gid*, %struct.sockaddr*) #1

declare dso_local i32 @validate_net_dev(%struct.net_device*, %struct.sockaddr*, %struct.sockaddr*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
