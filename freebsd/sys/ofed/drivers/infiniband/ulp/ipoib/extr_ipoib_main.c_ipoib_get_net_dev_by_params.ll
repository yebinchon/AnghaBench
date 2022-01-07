; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_ipoib_get_net_dev_by_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_ipoib_get_net_dev_by_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ib_device = type { i32 }
%union.ib_gid = type { i32 }
%struct.sockaddr = type { i32 }
%struct.list_head = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"duplicate IP address detected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device* (%struct.ib_device*, i32, i32, %union.ib_gid*, %struct.sockaddr*, i8*)* @ipoib_get_net_dev_by_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device* @ipoib_get_net_dev_by_params(%struct.ib_device* %0, i32 %1, i32 %2, %union.ib_gid* %3, %struct.sockaddr* %4, i8* %5) #0 {
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.ib_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %union.ib_gid*, align 8
  %12 = alloca %struct.sockaddr*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.net_device*, align 8
  %15 = alloca %struct.list_head*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %union.ib_gid* %3, %union.ib_gid** %11, align 8
  store %struct.sockaddr* %4, %struct.sockaddr** %12, align 8
  store i8* %5, i8** %13, align 8
  %19 = load i8*, i8** %13, align 8
  %20 = bitcast i8* %19 to %struct.list_head*
  store %struct.list_head* %20, %struct.list_head** %15, align 8
  %21 = load %struct.ib_device*, %struct.ib_device** %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @rdma_protocol_ib(%struct.ib_device* %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %6
  store %struct.net_device* null, %struct.net_device** %7, align 8
  br label %65

26:                                               ; preds = %6
  %27 = load %struct.ib_device*, %struct.ib_device** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @ib_find_cached_pkey(%struct.ib_device* %27, i32 %28, i32 %29, i32* %16)
  store i32 %30, i32* %18, align 4
  %31 = load i32, i32* %18, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store %struct.net_device* null, %struct.net_device** %7, align 8
  br label %65

34:                                               ; preds = %26
  %35 = load %struct.list_head*, %struct.list_head** %15, align 8
  %36 = icmp ne %struct.list_head* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  store %struct.net_device* null, %struct.net_device** %7, align 8
  br label %65

38:                                               ; preds = %34
  %39 = load %struct.list_head*, %struct.list_head** %15, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %16, align 4
  %42 = load %union.ib_gid*, %union.ib_gid** %11, align 8
  %43 = call i32 @__ipoib_get_net_dev_by_params(%struct.list_head* %39, i32 %40, i32 %41, %union.ib_gid* %42, %struct.sockaddr* null, %struct.net_device** %14)
  store i32 %43, i32* %17, align 4
  %44 = load i32, i32* %17, align 4
  switch i32 %44, label %48 [
    i32 0, label %45
    i32 1, label %46
  ]

45:                                               ; preds = %38
  store %struct.net_device* null, %struct.net_device** %7, align 8
  br label %65

46:                                               ; preds = %38
  %47 = load %struct.net_device*, %struct.net_device** %14, align 8
  store %struct.net_device* %47, %struct.net_device** %7, align 8
  br label %65

48:                                               ; preds = %38
  %49 = load %struct.net_device*, %struct.net_device** %14, align 8
  %50 = call i32 @dev_put(%struct.net_device* %49)
  %51 = load %struct.list_head*, %struct.list_head** %15, align 8
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %16, align 4
  %54 = load %union.ib_gid*, %union.ib_gid** %11, align 8
  %55 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %56 = call i32 @__ipoib_get_net_dev_by_params(%struct.list_head* %51, i32 %52, i32 %53, %union.ib_gid* %54, %struct.sockaddr* %55, %struct.net_device** %14)
  store i32 %56, i32* %17, align 4
  %57 = load i32, i32* %17, align 4
  switch i32 %57, label %59 [
    i32 0, label %58
    i32 1, label %63
  ]

58:                                               ; preds = %48
  store %struct.net_device* null, %struct.net_device** %7, align 8
  br label %65

59:                                               ; preds = %48
  %60 = load %struct.ib_device*, %struct.ib_device** %8, align 8
  %61 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %60, i32 0, i32 0
  %62 = call i32 @dev_warn_ratelimited(i32* %61, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %63

63:                                               ; preds = %48, %59
  %64 = load %struct.net_device*, %struct.net_device** %14, align 8
  store %struct.net_device* %64, %struct.net_device** %7, align 8
  br label %65

65:                                               ; preds = %63, %58, %46, %45, %37, %33, %25
  %66 = load %struct.net_device*, %struct.net_device** %7, align 8
  ret %struct.net_device* %66
}

declare dso_local i32 @rdma_protocol_ib(%struct.ib_device*, i32) #1

declare dso_local i32 @ib_find_cached_pkey(%struct.ib_device*, i32, i32, i32*) #1

declare dso_local i32 @__ipoib_get_net_dev_by_params(%struct.list_head*, i32, i32, %union.ib_gid*, %struct.sockaddr*, %struct.net_device**) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @dev_warn_ratelimited(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
