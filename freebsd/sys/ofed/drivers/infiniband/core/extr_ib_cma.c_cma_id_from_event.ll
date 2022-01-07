; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_id_from_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_id_from_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_id_private = type { i32 }
%struct.ib_cm_id = type { i32 }
%struct.ib_cm_event = type { i32 }
%struct.net_device = type opaque
%struct.cma_req_info = type { i32 }
%struct.rdma_bind_list = type { i32 }

@RDMA_PS_SDP = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rdma_id_private* (%struct.ib_cm_id*, %struct.ib_cm_event*, %struct.net_device**)* @cma_id_from_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rdma_id_private* @cma_id_from_event(%struct.ib_cm_id* %0, %struct.ib_cm_event* %1, %struct.net_device** %2) #0 {
  %4 = alloca %struct.rdma_id_private*, align 8
  %5 = alloca %struct.ib_cm_id*, align 8
  %6 = alloca %struct.ib_cm_event*, align 8
  %7 = alloca %struct.net_device**, align 8
  %8 = alloca %struct.cma_req_info, align 4
  %9 = alloca %struct.rdma_bind_list*, align 8
  %10 = alloca %struct.rdma_id_private*, align 8
  %11 = alloca i32, align 4
  store %struct.ib_cm_id* %0, %struct.ib_cm_id** %5, align 8
  store %struct.ib_cm_event* %1, %struct.ib_cm_event** %6, align 8
  store %struct.net_device** %2, %struct.net_device*** %7, align 8
  %12 = load %struct.ib_cm_event*, %struct.ib_cm_event** %6, align 8
  %13 = call i32 @cma_save_req_info(%struct.ib_cm_event* %12, %struct.cma_req_info* %8)
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* %11, align 4
  %18 = call %struct.rdma_id_private* @ERR_PTR(i32 %17)
  store %struct.rdma_id_private* %18, %struct.rdma_id_private** %4, align 8
  br label %96

19:                                               ; preds = %3
  %20 = load %struct.ib_cm_id*, %struct.ib_cm_id** %5, align 8
  %21 = getelementptr inbounds %struct.ib_cm_id, %struct.ib_cm_id* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @rdma_ps_from_service_id(i32 %22)
  %24 = load i32, i32* @RDMA_PS_SDP, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load %struct.net_device**, %struct.net_device*** %7, align 8
  store %struct.net_device* null, %struct.net_device** %27, align 8
  br label %55

28:                                               ; preds = %19
  %29 = load %struct.ib_cm_event*, %struct.ib_cm_event** %6, align 8
  %30 = call %struct.rdma_id_private* @cma_get_net_dev(%struct.ib_cm_event* %29, %struct.cma_req_info* %8)
  %31 = bitcast %struct.rdma_id_private* %30 to %struct.net_device*
  %32 = load %struct.net_device**, %struct.net_device*** %7, align 8
  store %struct.net_device* %31, %struct.net_device** %32, align 8
  %33 = load %struct.net_device**, %struct.net_device*** %7, align 8
  %34 = load %struct.net_device*, %struct.net_device** %33, align 8
  %35 = bitcast %struct.net_device* %34 to %struct.rdma_id_private*
  %36 = call i64 @IS_ERR(%struct.rdma_id_private* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %28
  %39 = load %struct.net_device**, %struct.net_device*** %7, align 8
  %40 = load %struct.net_device*, %struct.net_device** %39, align 8
  %41 = bitcast %struct.net_device* %40 to %struct.rdma_id_private*
  %42 = call i32 @PTR_ERR(%struct.rdma_id_private* %41)
  %43 = load i32, i32* @EAFNOSUPPORT, align 4
  %44 = sub nsw i32 0, %43
  %45 = icmp eq i32 %42, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = load %struct.net_device**, %struct.net_device*** %7, align 8
  store %struct.net_device* null, %struct.net_device** %47, align 8
  br label %53

48:                                               ; preds = %38
  %49 = load %struct.net_device**, %struct.net_device*** %7, align 8
  %50 = load %struct.net_device*, %struct.net_device** %49, align 8
  %51 = bitcast %struct.net_device* %50 to %struct.rdma_id_private*
  %52 = call %struct.rdma_id_private* @ERR_CAST(%struct.rdma_id_private* %51)
  store %struct.rdma_id_private* %52, %struct.rdma_id_private** %4, align 8
  br label %96

53:                                               ; preds = %46
  br label %54

54:                                               ; preds = %53, %28
  br label %55

55:                                               ; preds = %54, %26
  %56 = load %struct.net_device**, %struct.net_device*** %7, align 8
  %57 = load %struct.net_device*, %struct.net_device** %56, align 8
  %58 = icmp ne %struct.net_device* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load %struct.net_device**, %struct.net_device*** %7, align 8
  %61 = load %struct.net_device*, %struct.net_device** %60, align 8
  %62 = bitcast %struct.net_device* %61 to %struct.rdma_id_private*
  %63 = call i32* @dev_net(%struct.rdma_id_private* %62)
  br label %65

64:                                               ; preds = %55
  br label %65

65:                                               ; preds = %64, %59
  %66 = phi i32* [ %63, %59 ], [ @init_net, %64 ]
  %67 = getelementptr inbounds %struct.cma_req_info, %struct.cma_req_info* %8, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @rdma_ps_from_service_id(i32 %68)
  %70 = getelementptr inbounds %struct.cma_req_info, %struct.cma_req_info* %8, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @cma_port_from_service_id(i32 %71)
  %73 = call %struct.rdma_bind_list* @cma_ps_find(i32* %66, i32 %69, i32 %72)
  store %struct.rdma_bind_list* %73, %struct.rdma_bind_list** %9, align 8
  %74 = load %struct.rdma_bind_list*, %struct.rdma_bind_list** %9, align 8
  %75 = load %struct.ib_cm_id*, %struct.ib_cm_id** %5, align 8
  %76 = load %struct.ib_cm_event*, %struct.ib_cm_event** %6, align 8
  %77 = load %struct.net_device**, %struct.net_device*** %7, align 8
  %78 = load %struct.net_device*, %struct.net_device** %77, align 8
  %79 = bitcast %struct.net_device* %78 to %struct.rdma_id_private*
  %80 = call %struct.rdma_id_private* @cma_find_listener(%struct.rdma_bind_list* %74, %struct.ib_cm_id* %75, %struct.ib_cm_event* %76, %struct.cma_req_info* %8, %struct.rdma_id_private* %79)
  store %struct.rdma_id_private* %80, %struct.rdma_id_private** %10, align 8
  %81 = load %struct.rdma_id_private*, %struct.rdma_id_private** %10, align 8
  %82 = call i64 @IS_ERR(%struct.rdma_id_private* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %65
  %85 = load %struct.net_device**, %struct.net_device*** %7, align 8
  %86 = load %struct.net_device*, %struct.net_device** %85, align 8
  %87 = icmp ne %struct.net_device* %86, null
  br i1 %87, label %88, label %94

88:                                               ; preds = %84
  %89 = load %struct.net_device**, %struct.net_device*** %7, align 8
  %90 = load %struct.net_device*, %struct.net_device** %89, align 8
  %91 = bitcast %struct.net_device* %90 to %struct.rdma_id_private*
  %92 = call i32 @dev_put(%struct.rdma_id_private* %91)
  %93 = load %struct.net_device**, %struct.net_device*** %7, align 8
  store %struct.net_device* null, %struct.net_device** %93, align 8
  br label %94

94:                                               ; preds = %88, %84, %65
  %95 = load %struct.rdma_id_private*, %struct.rdma_id_private** %10, align 8
  store %struct.rdma_id_private* %95, %struct.rdma_id_private** %4, align 8
  br label %96

96:                                               ; preds = %94, %48, %16
  %97 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  ret %struct.rdma_id_private* %97
}

declare dso_local i32 @cma_save_req_info(%struct.ib_cm_event*, %struct.cma_req_info*) #1

declare dso_local %struct.rdma_id_private* @ERR_PTR(i32) #1

declare dso_local i32 @rdma_ps_from_service_id(i32) #1

declare dso_local %struct.rdma_id_private* @cma_get_net_dev(%struct.ib_cm_event*, %struct.cma_req_info*) #1

declare dso_local i64 @IS_ERR(%struct.rdma_id_private*) #1

declare dso_local i32 @PTR_ERR(%struct.rdma_id_private*) #1

declare dso_local %struct.rdma_id_private* @ERR_CAST(%struct.rdma_id_private*) #1

declare dso_local %struct.rdma_bind_list* @cma_ps_find(i32*, i32, i32) #1

declare dso_local i32* @dev_net(%struct.rdma_id_private*) #1

declare dso_local i32 @cma_port_from_service_id(i32) #1

declare dso_local %struct.rdma_id_private* @cma_find_listener(%struct.rdma_bind_list*, %struct.ib_cm_id*, %struct.ib_cm_event*, %struct.cma_req_info*, %struct.rdma_id_private*) #1

declare dso_local i32 @dev_put(%struct.rdma_id_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
