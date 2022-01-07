; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_connect_iw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_connect_iw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_id_private = type { %struct.TYPE_4__, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { %struct.iw_cm_id* }
%struct.iw_cm_id = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.rdma_conn_param = type { i32, i32, i32, i32, i32 }
%struct.iw_cm_conn_param = type { i32, i32, i32, i32, i32 }

@cma_iw_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_id_private*, %struct.rdma_conn_param*)* @cma_connect_iw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_connect_iw(%struct.rdma_id_private* %0, %struct.rdma_conn_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rdma_id_private*, align 8
  %5 = alloca %struct.rdma_conn_param*, align 8
  %6 = alloca %struct.iw_cm_id*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.iw_cm_conn_param, align 4
  store %struct.rdma_id_private* %0, %struct.rdma_id_private** %4, align 8
  store %struct.rdma_conn_param* %1, %struct.rdma_conn_param** %5, align 8
  %9 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %10 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @cma_iw_handler, align 4
  %14 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %15 = call %struct.iw_cm_id* @iw_create_cm_id(i32 %12, i32 %13, %struct.rdma_id_private* %14)
  store %struct.iw_cm_id* %15, %struct.iw_cm_id** %6, align 8
  %16 = load %struct.iw_cm_id*, %struct.iw_cm_id** %6, align 8
  %17 = call i64 @IS_ERR(%struct.iw_cm_id* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.iw_cm_id*, %struct.iw_cm_id** %6, align 8
  %21 = call i32 @PTR_ERR(%struct.iw_cm_id* %20)
  store i32 %21, i32* %3, align 4
  br label %110

22:                                               ; preds = %2
  %23 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %24 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.iw_cm_id*, %struct.iw_cm_id** %6, align 8
  %27 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load %struct.iw_cm_id*, %struct.iw_cm_id** %6, align 8
  %29 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %30 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store %struct.iw_cm_id* %28, %struct.iw_cm_id** %31, align 8
  %32 = load %struct.iw_cm_id*, %struct.iw_cm_id** %6, align 8
  %33 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %32, i32 0, i32 1
  %34 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %35 = call i32 @cma_src_addr(%struct.rdma_id_private* %34)
  %36 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %37 = call i32 @cma_src_addr(%struct.rdma_id_private* %36)
  %38 = call i32 @rdma_addr_size(i32 %37)
  %39 = call i32 @memcpy(i32* %33, i32 %35, i32 %38)
  %40 = load %struct.iw_cm_id*, %struct.iw_cm_id** %6, align 8
  %41 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %40, i32 0, i32 0
  %42 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %43 = call i32 @cma_dst_addr(%struct.rdma_id_private* %42)
  %44 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %45 = call i32 @cma_dst_addr(%struct.rdma_id_private* %44)
  %46 = call i32 @rdma_addr_size(i32 %45)
  %47 = call i32 @memcpy(i32* %41, i32 %43, i32 %46)
  %48 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %49 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %50 = call i32 @cma_modify_qp_rtr(%struct.rdma_id_private* %48, %struct.rdma_conn_param* %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %22
  br label %99

54:                                               ; preds = %22
  %55 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %56 = icmp ne %struct.rdma_conn_param* %55, null
  br i1 %56, label %57, label %90

57:                                               ; preds = %54
  %58 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %59 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.iw_cm_conn_param, %struct.iw_cm_conn_param* %8, i32 0, i32 4
  store i32 %60, i32* %61, align 4
  %62 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %63 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.iw_cm_conn_param, %struct.iw_cm_conn_param* %8, i32 0, i32 3
  store i32 %64, i32* %65, align 4
  %66 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %67 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.iw_cm_conn_param, %struct.iw_cm_conn_param* %8, i32 0, i32 2
  store i32 %68, i32* %69, align 4
  %70 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %71 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.iw_cm_conn_param, %struct.iw_cm_conn_param* %8, i32 0, i32 1
  store i32 %72, i32* %73, align 4
  %74 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %75 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %57
  %80 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %81 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  br label %87

83:                                               ; preds = %57
  %84 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %85 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  br label %87

87:                                               ; preds = %83, %79
  %88 = phi i32 [ %82, %79 ], [ %86, %83 ]
  %89 = getelementptr inbounds %struct.iw_cm_conn_param, %struct.iw_cm_conn_param* %8, i32 0, i32 0
  store i32 %88, i32* %89, align 4
  br label %96

90:                                               ; preds = %54
  %91 = call i32 @memset(%struct.iw_cm_conn_param* %8, i32 0, i32 20)
  %92 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %93 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = getelementptr inbounds %struct.iw_cm_conn_param, %struct.iw_cm_conn_param* %8, i32 0, i32 0
  store i32 %94, i32* %95, align 4
  br label %96

96:                                               ; preds = %90, %87
  %97 = load %struct.iw_cm_id*, %struct.iw_cm_id** %6, align 8
  %98 = call i32 @iw_cm_connect(%struct.iw_cm_id* %97, %struct.iw_cm_conn_param* %8)
  store i32 %98, i32* %7, align 4
  br label %99

99:                                               ; preds = %96, %53
  %100 = load i32, i32* %7, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %99
  %103 = load %struct.iw_cm_id*, %struct.iw_cm_id** %6, align 8
  %104 = call i32 @iw_destroy_cm_id(%struct.iw_cm_id* %103)
  %105 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %106 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  store %struct.iw_cm_id* null, %struct.iw_cm_id** %107, align 8
  br label %108

108:                                              ; preds = %102, %99
  %109 = load i32, i32* %7, align 4
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %108, %19
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local %struct.iw_cm_id* @iw_create_cm_id(i32, i32, %struct.rdma_id_private*) #1

declare dso_local i64 @IS_ERR(%struct.iw_cm_id*) #1

declare dso_local i32 @PTR_ERR(%struct.iw_cm_id*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @cma_src_addr(%struct.rdma_id_private*) #1

declare dso_local i32 @rdma_addr_size(i32) #1

declare dso_local i32 @cma_dst_addr(%struct.rdma_id_private*) #1

declare dso_local i32 @cma_modify_qp_rtr(%struct.rdma_id_private*, %struct.rdma_conn_param*) #1

declare dso_local i32 @memset(%struct.iw_cm_conn_param*, i32, i32) #1

declare dso_local i32 @iw_cm_connect(%struct.iw_cm_id*, %struct.iw_cm_conn_param*) #1

declare dso_local i32 @iw_destroy_cm_id(%struct.iw_cm_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
