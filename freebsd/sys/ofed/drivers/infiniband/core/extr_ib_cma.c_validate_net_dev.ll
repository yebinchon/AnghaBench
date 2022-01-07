; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_validate_net_dev.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_validate_net_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.sockaddr*, %struct.sockaddr*)* @validate_net_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_net_dev(%struct.net_device* %0, %struct.sockaddr* %1, %struct.sockaddr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca %struct.sockaddr_in*, align 8
  %9 = alloca %struct.sockaddr_in*, align 8
  %10 = alloca %struct.sockaddr_in6*, align 8
  %11 = alloca %struct.sockaddr_in6*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %7, align 8
  %12 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %13 = bitcast %struct.sockaddr* %12 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %13, %struct.sockaddr_in** %8, align 8
  %14 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %15 = bitcast %struct.sockaddr* %14 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %15, %struct.sockaddr_in** %9, align 8
  %16 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %17 = bitcast %struct.sockaddr* %16 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %17, %struct.sockaddr_in6** %10, align 8
  %18 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %19 = bitcast %struct.sockaddr* %18 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %19, %struct.sockaddr_in6** %11, align 8
  %20 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %21 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %51 [
    i32 129, label %23
    i32 128, label %37
  ]

23:                                               ; preds = %3
  %24 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %25 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 129
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.net_device*, %struct.net_device** %5, align 8
  %30 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %31 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %32 = call i32 @validate_ipv4_net_dev(%struct.net_device* %29, %struct.sockaddr_in* %30, %struct.sockaddr_in* %31)
  %33 = icmp ne i32 %32, 0
  br label %34

34:                                               ; preds = %28, %23
  %35 = phi i1 [ false, %23 ], [ %33, %28 ]
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %4, align 4
  br label %52

37:                                               ; preds = %3
  %38 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %39 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 128
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load %struct.net_device*, %struct.net_device** %5, align 8
  %44 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %45 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %11, align 8
  %46 = call i32 @validate_ipv6_net_dev(%struct.net_device* %43, %struct.sockaddr_in6* %44, %struct.sockaddr_in6* %45)
  %47 = icmp ne i32 %46, 0
  br label %48

48:                                               ; preds = %42, %37
  %49 = phi i1 [ false, %37 ], [ %47, %42 ]
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %4, align 4
  br label %52

51:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %51, %48, %34
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @validate_ipv4_net_dev(%struct.net_device*, %struct.sockaddr_in*, %struct.sockaddr_in*) #1

declare dso_local i32 @validate_ipv6_net_dev(%struct.net_device*, %struct.sockaddr_in6*, %struct.sockaddr_in6*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
