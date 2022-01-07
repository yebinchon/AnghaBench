; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_main.c_lio_init_nic_module.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_main.c_lio_init_nic_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Initializing network interfaces\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Setup NIC devices failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Network interfaces ready\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.octeon_device*)* @lio_init_nic_module to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lio_init_nic_module(%struct.octeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.octeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.octeon_device* %0, %struct.octeon_device** %3, align 8
  %6 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %7 = call i32 @lio_get_conf(%struct.octeon_device* %6)
  %8 = call i32 @LIO_GET_NUM_NIC_PORTS_CFG(i32 %7)
  store i32 %8, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %9 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %10 = call i32 @lio_dev_dbg(%struct.octeon_device* %9, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %13 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %15 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %14, i32 0, i32 1
  %16 = call i32 @bzero(%struct.TYPE_2__* %15, i32 4)
  %17 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %18 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 -1, i32* %19, align 4
  %20 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %21 = call i32 @lio_setup_nic_devices(%struct.octeon_device* %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %26 = call i32 @lio_dev_err(%struct.octeon_device* %25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %31

27:                                               ; preds = %1
  %28 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %29 = call i32 @lio_dev_dbg(%struct.octeon_device* %28, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %2, align 4
  br label %35

31:                                               ; preds = %24
  %32 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %33 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %32, i32 0, i32 0
  store i32 0, i32* %33, align 4
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %31, %27
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @LIO_GET_NUM_NIC_PORTS_CFG(i32) #1

declare dso_local i32 @lio_get_conf(%struct.octeon_device*) #1

declare dso_local i32 @lio_dev_dbg(%struct.octeon_device*, i8*) #1

declare dso_local i32 @bzero(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @lio_setup_nic_devices(%struct.octeon_device*) #1

declare dso_local i32 @lio_dev_err(%struct.octeon_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
