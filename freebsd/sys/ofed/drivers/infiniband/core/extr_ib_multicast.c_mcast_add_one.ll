; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_multicast.c_mcast_add_one.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_multicast.c_mcast_add_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.mcast_device = type { i32, i32, i32, %struct.ib_device*, %struct.mcast_port* }
%struct.mcast_port = type { i32, i32, i32, i32, i32, %struct.mcast_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@RB_ROOT = common dso_local global i32 0, align 4
@mcast_client = common dso_local global i32 0, align 4
@mcast_event_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_device*)* @mcast_add_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcast_add_one(%struct.ib_device* %0) #0 {
  %2 = alloca %struct.ib_device*, align 8
  %3 = alloca %struct.mcast_device*, align 8
  %4 = alloca %struct.mcast_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %2, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %8 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 %10, 32
  %12 = add i64 32, %11
  %13 = trunc i64 %12 to i32
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.mcast_device* @kmalloc(i32 %13, i32 %14)
  store %struct.mcast_device* %15, %struct.mcast_device** %3, align 8
  %16 = load %struct.mcast_device*, %struct.mcast_device** %3, align 8
  %17 = icmp ne %struct.mcast_device* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  br label %103

19:                                               ; preds = %1
  %20 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %21 = call i32 @rdma_start_port(%struct.ib_device* %20)
  %22 = load %struct.mcast_device*, %struct.mcast_device** %3, align 8
  %23 = getelementptr inbounds %struct.mcast_device, %struct.mcast_device* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %25 = call i32 @rdma_end_port(%struct.ib_device* %24)
  %26 = load %struct.mcast_device*, %struct.mcast_device** %3, align 8
  %27 = getelementptr inbounds %struct.mcast_device, %struct.mcast_device* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %79, %19
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.mcast_device*, %struct.mcast_device** %3, align 8
  %31 = getelementptr inbounds %struct.mcast_device, %struct.mcast_device* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.mcast_device*, %struct.mcast_device** %3, align 8
  %34 = getelementptr inbounds %struct.mcast_device, %struct.mcast_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sub nsw i32 %32, %35
  %37 = icmp sle i32 %29, %36
  br i1 %37, label %38, label %82

38:                                               ; preds = %28
  %39 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %40 = load %struct.mcast_device*, %struct.mcast_device** %3, align 8
  %41 = getelementptr inbounds %struct.mcast_device, %struct.mcast_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %42, %43
  %45 = call i32 @rdma_cap_ib_mcast(%struct.ib_device* %39, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %38
  br label %79

48:                                               ; preds = %38
  %49 = load %struct.mcast_device*, %struct.mcast_device** %3, align 8
  %50 = getelementptr inbounds %struct.mcast_device, %struct.mcast_device* %49, i32 0, i32 4
  %51 = load %struct.mcast_port*, %struct.mcast_port** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.mcast_port, %struct.mcast_port* %51, i64 %53
  store %struct.mcast_port* %54, %struct.mcast_port** %4, align 8
  %55 = load %struct.mcast_device*, %struct.mcast_device** %3, align 8
  %56 = load %struct.mcast_port*, %struct.mcast_port** %4, align 8
  %57 = getelementptr inbounds %struct.mcast_port, %struct.mcast_port* %56, i32 0, i32 5
  store %struct.mcast_device* %55, %struct.mcast_device** %57, align 8
  %58 = load %struct.mcast_device*, %struct.mcast_device** %3, align 8
  %59 = getelementptr inbounds %struct.mcast_device, %struct.mcast_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %60, %61
  %63 = load %struct.mcast_port*, %struct.mcast_port** %4, align 8
  %64 = getelementptr inbounds %struct.mcast_port, %struct.mcast_port* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.mcast_port*, %struct.mcast_port** %4, align 8
  %66 = getelementptr inbounds %struct.mcast_port, %struct.mcast_port* %65, i32 0, i32 4
  %67 = call i32 @spin_lock_init(i32* %66)
  %68 = load i32, i32* @RB_ROOT, align 4
  %69 = load %struct.mcast_port*, %struct.mcast_port** %4, align 8
  %70 = getelementptr inbounds %struct.mcast_port, %struct.mcast_port* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  %71 = load %struct.mcast_port*, %struct.mcast_port** %4, align 8
  %72 = getelementptr inbounds %struct.mcast_port, %struct.mcast_port* %71, i32 0, i32 2
  %73 = call i32 @init_completion(i32* %72)
  %74 = load %struct.mcast_port*, %struct.mcast_port** %4, align 8
  %75 = getelementptr inbounds %struct.mcast_port, %struct.mcast_port* %74, i32 0, i32 1
  %76 = call i32 @atomic_set(i32* %75, i32 1)
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %6, align 4
  br label %79

79:                                               ; preds = %48, %47
  %80 = load i32, i32* %5, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %5, align 4
  br label %28

82:                                               ; preds = %28
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %82
  %86 = load %struct.mcast_device*, %struct.mcast_device** %3, align 8
  %87 = call i32 @kfree(%struct.mcast_device* %86)
  br label %103

88:                                               ; preds = %82
  %89 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %90 = load %struct.mcast_device*, %struct.mcast_device** %3, align 8
  %91 = getelementptr inbounds %struct.mcast_device, %struct.mcast_device* %90, i32 0, i32 3
  store %struct.ib_device* %89, %struct.ib_device** %91, align 8
  %92 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %93 = load %struct.mcast_device*, %struct.mcast_device** %3, align 8
  %94 = call i32 @ib_set_client_data(%struct.ib_device* %92, i32* @mcast_client, %struct.mcast_device* %93)
  %95 = load %struct.mcast_device*, %struct.mcast_device** %3, align 8
  %96 = getelementptr inbounds %struct.mcast_device, %struct.mcast_device* %95, i32 0, i32 2
  %97 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %98 = load i32, i32* @mcast_event_handler, align 4
  %99 = call i32 @INIT_IB_EVENT_HANDLER(i32* %96, %struct.ib_device* %97, i32 %98)
  %100 = load %struct.mcast_device*, %struct.mcast_device** %3, align 8
  %101 = getelementptr inbounds %struct.mcast_device, %struct.mcast_device* %100, i32 0, i32 2
  %102 = call i32 @ib_register_event_handler(i32* %101)
  br label %103

103:                                              ; preds = %88, %85, %18
  ret void
}

declare dso_local %struct.mcast_device* @kmalloc(i32, i32) #1

declare dso_local i32 @rdma_start_port(%struct.ib_device*) #1

declare dso_local i32 @rdma_end_port(%struct.ib_device*) #1

declare dso_local i32 @rdma_cap_ib_mcast(%struct.ib_device*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @kfree(%struct.mcast_device*) #1

declare dso_local i32 @ib_set_client_data(%struct.ib_device*, i32*, %struct.mcast_device*) #1

declare dso_local i32 @INIT_IB_EVENT_HANDLER(i32*, %struct.ib_device*, i32) #1

declare dso_local i32 @ib_register_event_handler(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
