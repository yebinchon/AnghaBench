; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_ib_init_qp_attr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_ib_init_qp_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_id_private = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.rdma_dev_addr }
%struct.rdma_dev_addr = type { i32 }
%struct.ib_qp_attr = type { i64, i32, i32, i32 }

@IB_QP_STATE = common dso_local global i32 0, align 4
@IB_QP_PKEY_INDEX = common dso_local global i32 0, align 4
@IB_QP_PORT = common dso_local global i32 0, align 4
@IB_QPT_UD = common dso_local global i64 0, align 8
@IB_QP_QKEY = common dso_local global i32 0, align 4
@IB_QP_ACCESS_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_id_private*, %struct.ib_qp_attr*, i32*)* @cma_ib_init_qp_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_ib_init_qp_attr(%struct.rdma_id_private* %0, %struct.ib_qp_attr* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rdma_id_private*, align 8
  %6 = alloca %struct.ib_qp_attr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.rdma_dev_addr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rdma_id_private* %0, %struct.rdma_id_private** %5, align 8
  store %struct.ib_qp_attr* %1, %struct.ib_qp_attr** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.rdma_id_private*, %struct.rdma_id_private** %5, align 8
  %12 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store %struct.rdma_dev_addr* %15, %struct.rdma_dev_addr** %8, align 8
  %16 = load %struct.rdma_id_private*, %struct.rdma_id_private** %5, align 8
  %17 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.rdma_id_private*, %struct.rdma_id_private** %5, align 8
  %21 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @rdma_cap_eth_ah(i32 %19, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store i32 65535, i32* %10, align 4
  br label %30

27:                                               ; preds = %3
  %28 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %8, align 8
  %29 = call i32 @ib_addr_get_pkey(%struct.rdma_dev_addr* %28)
  store i32 %29, i32* %10, align 4
  br label %30

30:                                               ; preds = %27, %26
  %31 = load %struct.rdma_id_private*, %struct.rdma_id_private** %5, align 8
  %32 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.rdma_id_private*, %struct.rdma_id_private** %5, align 8
  %36 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %41 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %40, i32 0, i32 3
  %42 = call i32 @ib_find_cached_pkey(i32 %34, i32 %38, i32 %39, i32* %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %30
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %4, align 4
  br label %91

47:                                               ; preds = %30
  %48 = load %struct.rdma_id_private*, %struct.rdma_id_private** %5, align 8
  %49 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %53 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @IB_QP_STATE, align 4
  %55 = load i32, i32* @IB_QP_PKEY_INDEX, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @IB_QP_PORT, align 4
  %58 = or i32 %56, %57
  %59 = load i32*, i32** %7, align 8
  store i32 %58, i32* %59, align 4
  %60 = load %struct.rdma_id_private*, %struct.rdma_id_private** %5, align 8
  %61 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @IB_QPT_UD, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %83

66:                                               ; preds = %47
  %67 = load %struct.rdma_id_private*, %struct.rdma_id_private** %5, align 8
  %68 = call i32 @cma_set_qkey(%struct.rdma_id_private* %67, i32 0)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i32, i32* %9, align 4
  store i32 %72, i32* %4, align 4
  br label %91

73:                                               ; preds = %66
  %74 = load %struct.rdma_id_private*, %struct.rdma_id_private** %5, align 8
  %75 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %78 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 8
  %79 = load i32, i32* @IB_QP_QKEY, align 4
  %80 = load i32*, i32** %7, align 8
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %79
  store i32 %82, i32* %80, align 4
  br label %90

83:                                               ; preds = %47
  %84 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %85 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %84, i32 0, i32 0
  store i64 0, i64* %85, align 8
  %86 = load i32, i32* @IB_QP_ACCESS_FLAGS, align 4
  %87 = load i32*, i32** %7, align 8
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %86
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %83, %73
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %90, %71, %45
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i64 @rdma_cap_eth_ah(i32, i32) #1

declare dso_local i32 @ib_addr_get_pkey(%struct.rdma_dev_addr*) #1

declare dso_local i32 @ib_find_cached_pkey(i32, i32, i32, i32*) #1

declare dso_local i32 @cma_set_qkey(%struct.rdma_id_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
