; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_device.c_ib_alloc_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_device.c_ib_alloc_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32, i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@linux_root_device = common dso_local global i32 0, align 4
@ib_class = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_device* @ib_alloc_device(i64 %0) #0 {
  %2 = alloca %struct.ib_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.ib_device*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = icmp ult i64 %5, 40
  %7 = zext i1 %6 to i32
  %8 = call i64 @WARN_ON(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store %struct.ib_device* null, %struct.ib_device** %2, align 8
  br label %48

11:                                               ; preds = %1
  %12 = load i64, i64* %3, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.ib_device* @kzalloc(i64 %12, i32 %13)
  store %struct.ib_device* %14, %struct.ib_device** %4, align 8
  %15 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %16 = icmp ne %struct.ib_device* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  store %struct.ib_device* null, %struct.ib_device** %2, align 8
  br label %48

18:                                               ; preds = %11
  %19 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %20 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %19, i32 0, i32 5
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  store i32* @linux_root_device, i32** %21, align 8
  %22 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %23 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %22, i32 0, i32 5
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i32* @ib_class, i32** %24, align 8
  %25 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %26 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %25, i32 0, i32 5
  %27 = call i32 @device_initialize(%struct.TYPE_3__* %26)
  %28 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %29 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %28, i32 0, i32 5
  %30 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %31 = call i32 @dev_set_drvdata(%struct.TYPE_3__* %29, %struct.ib_device* %30)
  %32 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %33 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %32, i32 0, i32 4
  %34 = call i32 @INIT_LIST_HEAD(i32* %33)
  %35 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %36 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %35, i32 0, i32 3
  %37 = call i32 @spin_lock_init(i32* %36)
  %38 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %39 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %38, i32 0, i32 2
  %40 = call i32 @spin_lock_init(i32* %39)
  %41 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %42 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %41, i32 0, i32 1
  %43 = call i32 @INIT_LIST_HEAD(i32* %42)
  %44 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %45 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %44, i32 0, i32 0
  %46 = call i32 @INIT_LIST_HEAD(i32* %45)
  %47 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  store %struct.ib_device* %47, %struct.ib_device** %2, align 8
  br label %48

48:                                               ; preds = %18, %17, %10
  %49 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  ret %struct.ib_device* %49
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.ib_device* @kzalloc(i64, i32) #1

declare dso_local i32 @device_initialize(%struct.TYPE_3__*) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_3__*, %struct.ib_device*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
