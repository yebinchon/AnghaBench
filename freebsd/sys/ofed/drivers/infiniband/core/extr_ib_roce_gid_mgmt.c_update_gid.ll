; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_roce_gid_mgmt.c_update_gid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_roce_gid_mgmt.c_update_gid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%union.ib_gid = type { i32 }
%struct.net_device = type { i32 }
%struct.ib_gid_attr = type { i32, %struct.net_device* }

@IB_GID_TYPE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.ib_device*, i32, %union.ib_gid*, %struct.net_device*)* @update_gid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_gid(i32 %0, %struct.ib_device* %1, i32 %2, %union.ib_gid* %3, %struct.net_device* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %union.ib_gid*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.ib_gid_attr, align 8
  store i32 %0, i32* %6, align 4
  store %struct.ib_device* %1, %struct.ib_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store %union.ib_gid* %3, %union.ib_gid** %9, align 8
  store %struct.net_device* %4, %struct.net_device** %10, align 8
  %14 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call i64 @roce_gid_type_mask_support(%struct.ib_device* %14, i32 %15)
  store i64 %16, i64* %12, align 8
  %17 = call i32 @memset(%struct.ib_gid_attr* %13, i32 0, i32 16)
  %18 = load %struct.net_device*, %struct.net_device** %10, align 8
  %19 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %13, i32 0, i32 1
  store %struct.net_device* %18, %struct.net_device** %19, align 8
  store i32 0, i32* %11, align 4
  br label %20

20:                                               ; preds = %47, %5
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @IB_GID_TYPE_SIZE, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %50

24:                                               ; preds = %20
  %25 = load i32, i32* %11, align 4
  %26 = zext i32 %25 to i64
  %27 = shl i64 1, %26
  %28 = load i64, i64* %12, align 8
  %29 = and i64 %27, %28
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %24
  %32 = load i32, i32* %11, align 4
  %33 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %13, i32 0, i32 0
  store i32 %32, i32* %33, align 8
  %34 = load i32, i32* %6, align 4
  switch i32 %34, label %45 [
    i32 129, label %35
    i32 128, label %40
  ]

35:                                               ; preds = %31
  %36 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load %union.ib_gid*, %union.ib_gid** %9, align 8
  %39 = call i32 @ib_cache_gid_add(%struct.ib_device* %36, i32 %37, %union.ib_gid* %38, %struct.ib_gid_attr* %13)
  br label %45

40:                                               ; preds = %31
  %41 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load %union.ib_gid*, %union.ib_gid** %9, align 8
  %44 = call i32 @ib_cache_gid_del(%struct.ib_device* %41, i32 %42, %union.ib_gid* %43, %struct.ib_gid_attr* %13)
  br label %45

45:                                               ; preds = %31, %40, %35
  br label %46

46:                                               ; preds = %45, %24
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %11, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %11, align 4
  br label %20

50:                                               ; preds = %20
  ret void
}

declare dso_local i64 @roce_gid_type_mask_support(%struct.ib_device*, i32) #1

declare dso_local i32 @memset(%struct.ib_gid_attr*, i32, i32) #1

declare dso_local i32 @ib_cache_gid_add(%struct.ib_device*, i32, %union.ib_gid*, %struct.ib_gid_attr*) #1

declare dso_local i32 @ib_cache_gid_del(%struct.ib_device*, i32, %union.ib_gid*, %struct.ib_gid_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
