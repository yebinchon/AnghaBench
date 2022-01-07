; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_verbs.c_ib_resolve_eth_dmac.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_verbs.c_ib_resolve_eth_dmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_ah_attr = type { i64, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.ib_gid_attr = type { i32 }
%union.ib_gid = type { i32 }
%struct.in6_addr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_resolve_eth_dmac(%struct.ib_device* %0, %struct.ib_ah_attr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca %struct.ib_ah_attr*, align 8
  %6 = alloca %struct.ib_gid_attr, align 4
  %7 = alloca %union.ib_gid, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store %struct.ib_ah_attr* %1, %struct.ib_ah_attr** %5, align 8
  %11 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %12 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %15 = call i64 @rdma_start_port(%struct.ib_device* %14)
  %16 = icmp slt i64 %13, %15
  br i1 %16, label %24, label %17

17:                                               ; preds = %2
  %18 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %19 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %22 = call i64 @rdma_end_port(%struct.ib_device* %21)
  %23 = icmp sgt i64 %20, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %17, %2
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %119

27:                                               ; preds = %17
  %28 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %29 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %30 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @rdma_cap_eth_ah(%struct.ib_device* %28, i64 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %119

35:                                               ; preds = %27
  %36 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %37 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to %struct.in6_addr*
  %42 = call i64 @rdma_is_multicast_addr(%struct.in6_addr* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %80

44:                                               ; preds = %35
  %45 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %46 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to %struct.in6_addr*
  %51 = call i64 @ipv6_addr_v4mapped(%struct.in6_addr* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %44
  store i32 0, i32* %10, align 4
  %54 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %55 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, 12
  %60 = call i32 @memcpy(i32* %10, i64 %59, i32 4)
  %61 = load i32, i32* %10, align 4
  %62 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %63 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to i8*
  %66 = call i32 @ip_eth_mc_map(i32 %61, i8* %65)
  br label %79

67:                                               ; preds = %44
  %68 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %69 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to %struct.in6_addr*
  %74 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %75 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = inttoptr i64 %76 to i8*
  %78 = call i32 @ipv6_eth_mc_map(%struct.in6_addr* %73, i8* %77)
  br label %79

79:                                               ; preds = %67, %53
  store i32 0, i32* %3, align 4
  br label %119

80:                                               ; preds = %35
  %81 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %82 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %83 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %86 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @ib_query_gid(%struct.ib_device* %81, i64 %84, i32 %88, %union.ib_gid* %7, %struct.ib_gid_attr* %6)
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %80
  %93 = load i32, i32* %9, align 4
  store i32 %93, i32* %3, align 4
  br label %119

94:                                               ; preds = %80
  %95 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %6, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %94
  %99 = load i32, i32* @ENXIO, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %3, align 4
  br label %119

101:                                              ; preds = %94
  %102 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %103 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %106 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %6, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @rdma_addr_find_l2_eth_by_grh(%union.ib_gid* %7, %struct.TYPE_4__* %104, i64 %107, i32 %109, i32* %8)
  store i32 %110, i32* %9, align 4
  %111 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %6, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @dev_put(i32 %112)
  %114 = load i32, i32* %8, align 4
  %115 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %116 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  store i32 %114, i32* %117, align 8
  %118 = load i32, i32* %9, align 4
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %101, %98, %92, %79, %34, %24
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i64 @rdma_start_port(%struct.ib_device*) #1

declare dso_local i64 @rdma_end_port(%struct.ib_device*) #1

declare dso_local i32 @rdma_cap_eth_ah(%struct.ib_device*, i64) #1

declare dso_local i64 @rdma_is_multicast_addr(%struct.in6_addr*) #1

declare dso_local i64 @ipv6_addr_v4mapped(%struct.in6_addr*) #1

declare dso_local i32 @memcpy(i32*, i64, i32) #1

declare dso_local i32 @ip_eth_mc_map(i32, i8*) #1

declare dso_local i32 @ipv6_eth_mc_map(%struct.in6_addr*, i8*) #1

declare dso_local i32 @ib_query_gid(%struct.ib_device*, i64, i32, %union.ib_gid*, %struct.ib_gid_attr*) #1

declare dso_local i32 @rdma_addr_find_l2_eth_by_grh(%union.ib_gid*, %struct.TYPE_4__*, i64, i32, i32*) #1

declare dso_local i32 @dev_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
