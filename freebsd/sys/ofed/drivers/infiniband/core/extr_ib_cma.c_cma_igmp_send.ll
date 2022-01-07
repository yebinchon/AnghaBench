; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_igmp_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_igmp_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%union.ib_gid = type { i32 }
%union.anon = type { %struct.sockaddr }
%struct.sockaddr = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %union.ib_gid*, i32)* @cma_igmp_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_igmp_send(%struct.net_device* %0, %union.ib_gid* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %union.ib_gid*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %union.anon, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %union.ib_gid* %1, %union.ib_gid** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = icmp ne %struct.net_device* %9, null
  br i1 %10, label %11, label %33

11:                                               ; preds = %3
  %12 = bitcast %union.anon* %8 to %struct.sockaddr*
  %13 = load %union.ib_gid*, %union.ib_gid** %5, align 8
  %14 = call i32 @rdma_gid2ip(%struct.sockaddr* %12, %union.ib_gid* %13)
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @CURVNET_SET_QUIET(i32 %17)
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %11
  %22 = load %struct.net_device*, %struct.net_device** %4, align 8
  %23 = bitcast %union.anon* %8 to %struct.sockaddr*
  %24 = call i32 @if_addmulti(%struct.net_device* %22, %struct.sockaddr* %23, i32* null)
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %7, align 4
  br label %31

26:                                               ; preds = %11
  %27 = load %struct.net_device*, %struct.net_device** %4, align 8
  %28 = bitcast %union.anon* %8 to %struct.sockaddr*
  %29 = call i32 @if_delmulti(%struct.net_device* %27, %struct.sockaddr* %28)
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %26, %21
  %32 = call i32 (...) @CURVNET_RESTORE()
  br label %36

33:                                               ; preds = %3
  %34 = load i32, i32* @ENODEV, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %33, %31
  %37 = load i32, i32* %7, align 4
  ret i32 %37
}

declare dso_local i32 @rdma_gid2ip(%struct.sockaddr*, %union.ib_gid*) #1

declare dso_local i32 @CURVNET_SET_QUIET(i32) #1

declare dso_local i32 @if_addmulti(%struct.net_device*, %struct.sockaddr*, i32*) #1

declare dso_local i32 @if_delmulti(%struct.net_device*, %struct.sockaddr*) #1

declare dso_local i32 @CURVNET_RESTORE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
