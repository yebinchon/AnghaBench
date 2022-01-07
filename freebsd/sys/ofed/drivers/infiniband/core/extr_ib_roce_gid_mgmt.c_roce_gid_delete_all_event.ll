; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_roce_gid_mgmt.c_roce_gid_delete_all_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_roce_gid_mgmt.c_roce_gid_delete_all_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.roce_netdev_event_work = type { i32, %struct.net_device* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"roce_gid_mgmt: Couldn't allocate work for addr_event\0A\00", align 1
@roce_gid_delete_all_event_handler = common dso_local global i32 0, align 4
@roce_gid_mgmt_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @roce_gid_delete_all_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @roce_gid_delete_all_event(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.roce_netdev_event_work*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load i32, i32* @GFP_ATOMIC, align 4
  %5 = call %struct.roce_netdev_event_work* @kmalloc(i32 16, i32 %4)
  store %struct.roce_netdev_event_work* %5, %struct.roce_netdev_event_work** %3, align 8
  %6 = load %struct.roce_netdev_event_work*, %struct.roce_netdev_event_work** %3, align 8
  %7 = icmp ne %struct.roce_netdev_event_work* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = call i32 @pr_warn(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  br label %26

10:                                               ; preds = %1
  %11 = load %struct.roce_netdev_event_work*, %struct.roce_netdev_event_work** %3, align 8
  %12 = getelementptr inbounds %struct.roce_netdev_event_work, %struct.roce_netdev_event_work* %11, i32 0, i32 0
  %13 = load i32, i32* @roce_gid_delete_all_event_handler, align 4
  %14 = call i32 @INIT_WORK(i32* %12, i32 %13)
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = call i32 @dev_hold(%struct.net_device* %15)
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = load %struct.roce_netdev_event_work*, %struct.roce_netdev_event_work** %3, align 8
  %19 = getelementptr inbounds %struct.roce_netdev_event_work, %struct.roce_netdev_event_work* %18, i32 0, i32 1
  store %struct.net_device* %17, %struct.net_device** %19, align 8
  %20 = load i32, i32* @roce_gid_mgmt_wq, align 4
  %21 = load %struct.roce_netdev_event_work*, %struct.roce_netdev_event_work** %3, align 8
  %22 = getelementptr inbounds %struct.roce_netdev_event_work, %struct.roce_netdev_event_work* %21, i32 0, i32 0
  %23 = call i32 @queue_work(i32 %20, i32* %22)
  %24 = load i32, i32* @roce_gid_mgmt_wq, align 4
  %25 = call i32 @flush_workqueue(i32 %24)
  br label %26

26:                                               ; preds = %10, %8
  ret void
}

declare dso_local %struct.roce_netdev_event_work* @kmalloc(i32, i32) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @flush_workqueue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
