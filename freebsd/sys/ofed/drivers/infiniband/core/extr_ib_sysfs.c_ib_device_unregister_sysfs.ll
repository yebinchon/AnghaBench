; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_sysfs.c_ib_device_unregister_sysfs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_sysfs.c_ib_device_unregister_sysfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { %struct.TYPE_3__, i32, i64 }
%struct.TYPE_3__ = type { i32 }

@ib_class_attributes = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ib_device_unregister_sysfs(%struct.ib_device* %0) #0 {
  %2 = alloca %struct.ib_device*, align 8
  %3 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %2, align 8
  %4 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %5 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = call i32 @kobject_get(i32* %6)
  %8 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %9 = call i32 @free_port_list_attributes(%struct.ib_device* %8)
  %10 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %11 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %1
  %15 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %16 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @kfree(i64 %17)
  %19 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %20 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %23 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @free_hsag(i32* %21, i32 %24)
  br label %26

26:                                               ; preds = %14, %1
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %41, %26
  %28 = load i32, i32* %3, align 4
  %29 = load i32*, i32** @ib_class_attributes, align 8
  %30 = call i32 @ARRAY_SIZE(i32* %29)
  %31 = icmp slt i32 %28, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %27
  %33 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %34 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %33, i32 0, i32 0
  %35 = load i32*, i32** @ib_class_attributes, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @device_remove_file(%struct.TYPE_3__* %34, i32 %39)
  br label %41

41:                                               ; preds = %32
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %3, align 4
  br label %27

44:                                               ; preds = %27
  %45 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %46 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %45, i32 0, i32 0
  %47 = call i32 @device_unregister(%struct.TYPE_3__* %46)
  ret void
}

declare dso_local i32 @kobject_get(i32*) #1

declare dso_local i32 @free_port_list_attributes(%struct.ib_device*) #1

declare dso_local i32 @kfree(i64) #1

declare dso_local i32 @free_hsag(i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @device_remove_file(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @device_unregister(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
