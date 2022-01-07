; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_main.c_ib_gid_to_mlx5_roce_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_main.c_ib_gid_to_mlx5_roce_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ib_gid = type { %union.ib_gid* }
%struct.ib_gid_attr = type { i32, i32 }

@roce_addr_layout = common dso_local global i32 0, align 4
@source_l3_address = common dso_local global i32 0, align 4
@source_mac_47_32 = common dso_local global i32 0, align 4
@vlan_valid = common dso_local global i32 0, align 4
@roce_version = common dso_local global i32 0, align 4
@MLX5_ROCE_VERSION_1 = common dso_local global i32 0, align 4
@MLX5_ROCE_VERSION_2 = common dso_local global i32 0, align 4
@roce_l3_type = common dso_local global i32 0, align 4
@MLX5_ROCE_L3_TYPE_IPV4 = common dso_local global i32 0, align 4
@MLX5_ROCE_L3_TYPE_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.ib_gid*, %struct.ib_gid_attr*, i8*)* @ib_gid_to_mlx5_roce_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ib_gid_to_mlx5_roce_addr(%union.ib_gid* %0, %struct.ib_gid_attr* %1, i8* %2) #0 {
  %4 = alloca %union.ib_gid*, align 8
  %5 = alloca %struct.ib_gid_attr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %union.ib_gid* %0, %union.ib_gid** %4, align 8
  store %struct.ib_gid_attr* %1, %struct.ib_gid_attr** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i32, i32* @roce_addr_layout, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = load i32, i32* @source_l3_address, align 4
  %13 = call i8* @MLX5_ADDR_OF(i32 %10, i8* %11, i32 %12)
  store i8* %13, i8** %7, align 8
  %14 = load i32, i32* @roce_addr_layout, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = load i32, i32* @source_mac_47_32, align 4
  %17 = call i8* @MLX5_ADDR_OF(i32 %14, i8* %15, i32 %16)
  store i8* %17, i8** %8, align 8
  %18 = load %union.ib_gid*, %union.ib_gid** %4, align 8
  %19 = icmp ne %union.ib_gid* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  br label %107

21:                                               ; preds = %3
  %22 = load i8*, i8** %8, align 8
  %23 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %5, align 8
  %24 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @IF_LLADDR(i32 %25)
  %27 = call i32 @ether_addr_copy(i8* %22, i32 %26)
  %28 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %5, align 8
  %29 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @rdma_vlan_dev_vlan_id(i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 65535
  br i1 %33, label %34, label %44

34:                                               ; preds = %21
  %35 = load i32, i32* @roce_addr_layout, align 4
  %36 = load i8*, i8** %6, align 8
  %37 = load i32, i32* @vlan_valid, align 4
  %38 = call i32 (i32, i8*, i32, i32, ...) bitcast (i32 (...)* @MLX5_SET to i32 (i32, i8*, i32, i32, ...)*)(i32 %35, i8* %36, i32 %37, i32 1)
  %39 = load i32, i32* @roce_addr_layout, align 4
  %40 = load i8*, i8** %6, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 (i32, i8*, i32, i32, ...) bitcast (i32 (...)* @MLX5_SET to i32 (i32, i8*, i32, i32, ...)*)(i32 %39, i8* %40, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %34, %21
  %45 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %5, align 8
  %46 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  switch i32 %47, label %60 [
    i32 129, label %48
    i32 128, label %54
  ]

48:                                               ; preds = %44
  %49 = load i32, i32* @roce_addr_layout, align 4
  %50 = load i8*, i8** %6, align 8
  %51 = load i32, i32* @roce_version, align 4
  %52 = load i32, i32* @MLX5_ROCE_VERSION_1, align 4
  %53 = call i32 (i32, i8*, i32, i32, ...) bitcast (i32 (...)* @MLX5_SET to i32 (i32, i8*, i32, i32, ...)*)(i32 %49, i8* %50, i32 %51, i32 %52)
  br label %62

54:                                               ; preds = %44
  %55 = load i32, i32* @roce_addr_layout, align 4
  %56 = load i8*, i8** %6, align 8
  %57 = load i32, i32* @roce_version, align 4
  %58 = load i32, i32* @MLX5_ROCE_VERSION_2, align 4
  %59 = call i32 (i32, i8*, i32, i32, ...) bitcast (i32 (...)* @MLX5_SET to i32 (i32, i8*, i32, i32, ...)*)(i32 %55, i8* %56, i32 %57, i32 %58)
  br label %62

60:                                               ; preds = %44
  %61 = call i32 @WARN_ON(i32 1)
  br label %62

62:                                               ; preds = %60, %54, %48
  %63 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %5, align 8
  %64 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 129
  br i1 %66, label %67, label %85

67:                                               ; preds = %62
  %68 = load %union.ib_gid*, %union.ib_gid** %4, align 8
  %69 = bitcast %union.ib_gid* %68 to i8*
  %70 = call i64 @ipv6_addr_v4mapped(i8* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load i32, i32* @roce_addr_layout, align 4
  %74 = load i8*, i8** %6, align 8
  %75 = load i32, i32* @roce_l3_type, align 4
  %76 = load i32, i32* @MLX5_ROCE_L3_TYPE_IPV4, align 4
  %77 = call i32 (i32, i8*, i32, i32, ...) bitcast (i32 (...)* @MLX5_SET to i32 (i32, i8*, i32, i32, ...)*)(i32 %73, i8* %74, i32 %75, i32 %76)
  br label %84

78:                                               ; preds = %67
  %79 = load i32, i32* @roce_addr_layout, align 4
  %80 = load i8*, i8** %6, align 8
  %81 = load i32, i32* @roce_l3_type, align 4
  %82 = load i32, i32* @MLX5_ROCE_L3_TYPE_IPV6, align 4
  %83 = call i32 (i32, i8*, i32, i32, ...) bitcast (i32 (...)* @MLX5_SET to i32 (i32, i8*, i32, i32, ...)*)(i32 %79, i8* %80, i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %78, %72
  br label %85

85:                                               ; preds = %84, %62
  %86 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %5, align 8
  %87 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %88, 129
  br i1 %89, label %95, label %90

90:                                               ; preds = %85
  %91 = load %union.ib_gid*, %union.ib_gid** %4, align 8
  %92 = bitcast %union.ib_gid* %91 to i8*
  %93 = call i64 @ipv6_addr_v4mapped(i8* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %90, %85
  %96 = load i8*, i8** %7, align 8
  %97 = load %union.ib_gid*, %union.ib_gid** %4, align 8
  %98 = call i32 @memcpy(i8* %96, %union.ib_gid* %97, i32 8)
  br label %107

99:                                               ; preds = %90
  %100 = load i8*, i8** %7, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 12
  %102 = load %union.ib_gid*, %union.ib_gid** %4, align 8
  %103 = bitcast %union.ib_gid* %102 to %union.ib_gid**
  %104 = load %union.ib_gid*, %union.ib_gid** %103, align 8
  %105 = getelementptr inbounds %union.ib_gid, %union.ib_gid* %104, i64 12
  %106 = call i32 @memcpy(i8* %101, %union.ib_gid* %105, i32 4)
  br label %107

107:                                              ; preds = %20, %99, %95
  ret void
}

declare dso_local i8* @MLX5_ADDR_OF(i32, i8*, i32) #1

declare dso_local i32 @ether_addr_copy(i8*, i32) #1

declare dso_local i32 @IF_LLADDR(i32) #1

declare dso_local i32 @rdma_vlan_dev_vlan_id(i32) #1

declare dso_local i32 @MLX5_SET(...) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @ipv6_addr_v4mapped(i8*) #1

declare dso_local i32 @memcpy(i8*, %union.ib_gid*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
