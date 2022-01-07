; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_main.c_lio_nic_starter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_main.c_lio_nic_starter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i64, i32 }

@LIO_DEV_RUNNING = common dso_local global i32 0, align 4
@LIO_DRV_NIC_APP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"NIC initialization failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"Unexpected application running on NIC (%d). Check firmware.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.octeon_device*)* @lio_nic_starter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lio_nic_starter(%struct.octeon_device* %0) #0 {
  %2 = alloca %struct.octeon_device*, align 8
  %3 = alloca i32, align 4
  store %struct.octeon_device* %0, %struct.octeon_device** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %5 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %4, i32 0, i32 1
  %6 = load i32, i32* @LIO_DEV_RUNNING, align 4
  %7 = call i32 @atomic_store_rel_int(i32* %5, i32 %6)
  %8 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %9 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %1
  %13 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %14 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @LIO_DRV_NIC_APP, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %12
  %19 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %20 = call i64 @lio_init_nic_module(%struct.octeon_device* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %24 = call i32 (%struct.octeon_device*, i8*, ...) @lio_dev_err(%struct.octeon_device* %23, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %25

25:                                               ; preds = %22, %18
  br label %32

26:                                               ; preds = %12, %1
  %27 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %28 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %29 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 (%struct.octeon_device*, i8*, ...) @lio_dev_err(%struct.octeon_device* %27, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i64 %30)
  store i32 -1, i32* %3, align 4
  br label %32

32:                                               ; preds = %26, %25
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @atomic_store_rel_int(i32*, i32) #1

declare dso_local i64 @lio_init_nic_module(%struct.octeon_device*) #1

declare dso_local i32 @lio_dev_err(%struct.octeon_device*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
