; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_roce_gid_mgmt.c_roce_gid_queue_scan_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_roce_gid_mgmt.c_roce_gid_queue_scan_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.roce_netdev_event_work = type { i32, %struct.net_device* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"roce_gid_mgmt: Couldn't allocate work for addr_event\0A\00", align 1
@roce_gid_queue_scan_event_handler = common dso_local global i32 0, align 4
@roce_gid_mgmt_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @roce_gid_queue_scan_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @roce_gid_queue_scan_event(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.roce_netdev_event_work*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  br label %4

4:                                                ; preds = %14, %1
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = getelementptr inbounds %struct.net_device, %struct.net_device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %16 [
    i32 129, label %8
    i32 128, label %9
  ]

8:                                                ; preds = %4
  br label %17

9:                                                ; preds = %4
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = call %struct.net_device* @rdma_vlan_dev_real_dev(%struct.net_device* %10)
  store %struct.net_device* %11, %struct.net_device** %2, align 8
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = icmp ne %struct.net_device* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  br label %4

15:                                               ; preds = %9
  br label %16

16:                                               ; preds = %4, %15
  br label %38

17:                                               ; preds = %8
  %18 = load i32, i32* @GFP_ATOMIC, align 4
  %19 = call %struct.roce_netdev_event_work* @kmalloc(i32 16, i32 %18)
  store %struct.roce_netdev_event_work* %19, %struct.roce_netdev_event_work** %3, align 8
  %20 = load %struct.roce_netdev_event_work*, %struct.roce_netdev_event_work** %3, align 8
  %21 = icmp ne %struct.roce_netdev_event_work* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = call i32 @pr_warn(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  br label %38

24:                                               ; preds = %17
  %25 = load %struct.roce_netdev_event_work*, %struct.roce_netdev_event_work** %3, align 8
  %26 = getelementptr inbounds %struct.roce_netdev_event_work, %struct.roce_netdev_event_work* %25, i32 0, i32 0
  %27 = load i32, i32* @roce_gid_queue_scan_event_handler, align 4
  %28 = call i32 @INIT_WORK(i32* %26, i32 %27)
  %29 = load %struct.net_device*, %struct.net_device** %2, align 8
  %30 = call i32 @dev_hold(%struct.net_device* %29)
  %31 = load %struct.net_device*, %struct.net_device** %2, align 8
  %32 = load %struct.roce_netdev_event_work*, %struct.roce_netdev_event_work** %3, align 8
  %33 = getelementptr inbounds %struct.roce_netdev_event_work, %struct.roce_netdev_event_work* %32, i32 0, i32 1
  store %struct.net_device* %31, %struct.net_device** %33, align 8
  %34 = load i32, i32* @roce_gid_mgmt_wq, align 4
  %35 = load %struct.roce_netdev_event_work*, %struct.roce_netdev_event_work** %3, align 8
  %36 = getelementptr inbounds %struct.roce_netdev_event_work, %struct.roce_netdev_event_work* %35, i32 0, i32 0
  %37 = call i32 @queue_work(i32 %34, i32* %36)
  br label %38

38:                                               ; preds = %24, %22, %16
  ret void
}

declare dso_local %struct.net_device* @rdma_vlan_dev_real_dev(%struct.net_device*) #1

declare dso_local %struct.roce_netdev_event_work* @kmalloc(i32, i32) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
