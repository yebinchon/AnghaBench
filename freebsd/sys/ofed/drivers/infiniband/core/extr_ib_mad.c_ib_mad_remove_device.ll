; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_mad.c_ib_mad_remove_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_mad.c_ib_mad_remove_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Couldn't close port %d for agents\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Couldn't close port %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_device*, i8*)* @ib_mad_remove_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ib_mad_remove_device(%struct.ib_device* %0, i8* %1) #0 {
  %3 = alloca %struct.ib_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %7 = call i32 @rdma_start_port(%struct.ib_device* %6)
  store i32 %7, i32* %5, align 4
  br label %8

8:                                                ; preds = %40, %2
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %11 = call i32 @rdma_end_port(%struct.ib_device* %10)
  %12 = icmp sle i32 %9, %11
  br i1 %12, label %13, label %43

13:                                               ; preds = %8
  %14 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @rdma_cap_ib_mad(%struct.ib_device* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  br label %40

19:                                               ; preds = %13
  %20 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i64 @ib_agent_port_close(%struct.ib_device* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %26 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %25, i32 0, i32 0
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @dev_err(i32* %26, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %24, %19
  %30 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i64 @ib_mad_port_close(%struct.ib_device* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %36 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %35, i32 0, i32 0
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @dev_err(i32* %36, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %34, %29
  br label %40

40:                                               ; preds = %39, %18
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %8

43:                                               ; preds = %8
  ret void
}

declare dso_local i32 @rdma_start_port(%struct.ib_device*) #1

declare dso_local i32 @rdma_end_port(%struct.ib_device*) #1

declare dso_local i32 @rdma_cap_ib_mad(%struct.ib_device*, i32) #1

declare dso_local i64 @ib_agent_port_close(%struct.ib_device*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i64 @ib_mad_port_close(%struct.ib_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
