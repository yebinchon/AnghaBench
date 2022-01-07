; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_roce_gid_mgmt.c_roce_gid_enum_netdev_default.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_roce_gid_mgmt.c_roce_gid_enum_netdev_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.net_device = type { i32 }

@IB_CACHE_GID_DEFAULT_MODE_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, %struct.net_device*)* @roce_gid_enum_netdev_default to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @roce_gid_enum_netdev_default(%struct.ib_device* %0, i32 %1, %struct.net_device* %2) #0 {
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i64, align 8
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.net_device* %2, %struct.net_device** %6, align 8
  %8 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i64 @roce_gid_type_mask_support(%struct.ib_device* %8, i32 %9)
  store i64 %10, i64* %7, align 8
  %11 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i32, i32* @IB_CACHE_GID_DEFAULT_MODE_SET, align 4
  %16 = call i32 @ib_cache_gid_set_default_gid(%struct.ib_device* %11, i32 %12, %struct.net_device* %13, i64 %14, i32 %15)
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @hweight_long(i64 %17)
  ret i32 %18
}

declare dso_local i64 @roce_gid_type_mask_support(%struct.ib_device*, i32) #1

declare dso_local i32 @ib_cache_gid_set_default_gid(%struct.ib_device*, i32, %struct.net_device*, i64, i32) #1

declare dso_local i32 @hweight_long(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
