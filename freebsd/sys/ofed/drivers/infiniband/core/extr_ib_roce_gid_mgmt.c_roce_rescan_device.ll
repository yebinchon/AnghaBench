; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_roce_gid_mgmt.c_roce_rescan_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_roce_gid_mgmt.c_roce_rescan_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.roce_rescan_work = type { i32, %struct.ib_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@roce_rescan_device_handler = common dso_local global i32 0, align 4
@roce_gid_mgmt_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @roce_rescan_device(%struct.ib_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ib_device*, align 8
  %4 = alloca %struct.roce_rescan_work*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.roce_rescan_work* @kmalloc(i32 16, i32 %5)
  store %struct.roce_rescan_work* %6, %struct.roce_rescan_work** %4, align 8
  %7 = load %struct.roce_rescan_work*, %struct.roce_rescan_work** %4, align 8
  %8 = icmp ne %struct.roce_rescan_work* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %24

12:                                               ; preds = %1
  %13 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %14 = load %struct.roce_rescan_work*, %struct.roce_rescan_work** %4, align 8
  %15 = getelementptr inbounds %struct.roce_rescan_work, %struct.roce_rescan_work* %14, i32 0, i32 1
  store %struct.ib_device* %13, %struct.ib_device** %15, align 8
  %16 = load %struct.roce_rescan_work*, %struct.roce_rescan_work** %4, align 8
  %17 = getelementptr inbounds %struct.roce_rescan_work, %struct.roce_rescan_work* %16, i32 0, i32 0
  %18 = load i32, i32* @roce_rescan_device_handler, align 4
  %19 = call i32 @INIT_WORK(i32* %17, i32 %18)
  %20 = load i32, i32* @roce_gid_mgmt_wq, align 4
  %21 = load %struct.roce_rescan_work*, %struct.roce_rescan_work** %4, align 8
  %22 = getelementptr inbounds %struct.roce_rescan_work, %struct.roce_rescan_work* %21, i32 0, i32 0
  %23 = call i32 @queue_work(i32 %20, i32* %22)
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %12, %9
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local %struct.roce_rescan_work* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
