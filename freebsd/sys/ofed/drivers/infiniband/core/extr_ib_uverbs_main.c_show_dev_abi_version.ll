; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_uverbs_main.c_show_dev_abi_version.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_uverbs_main.c_show_dev_abi_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ib_uverbs_device = type { i32, i32 }
%struct.ib_device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_dev_abi_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_dev_abi_version(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ib_uverbs_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ib_device*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.ib_uverbs_device* @dev_get_drvdata(%struct.device* %12)
  store %struct.ib_uverbs_device* %13, %struct.ib_uverbs_device** %8, align 8
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %9, align 4
  %16 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %8, align 8
  %17 = icmp ne %struct.ib_uverbs_device* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %45

21:                                               ; preds = %3
  %22 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %8, align 8
  %23 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %22, i32 0, i32 0
  %24 = call i32 @srcu_read_lock(i32* %23)
  store i32 %24, i32* %10, align 4
  %25 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %8, align 8
  %26 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %8, align 8
  %29 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %28, i32 0, i32 0
  %30 = call %struct.ib_device* @srcu_dereference(i32 %27, i32* %29)
  store %struct.ib_device* %30, %struct.ib_device** %11, align 8
  %31 = load %struct.ib_device*, %struct.ib_device** %11, align 8
  %32 = icmp ne %struct.ib_device* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %21
  %34 = load i8*, i8** %7, align 8
  %35 = load %struct.ib_device*, %struct.ib_device** %11, align 8
  %36 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @sprintf(i8* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %37)
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %33, %21
  %40 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %8, align 8
  %41 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %40, i32 0, i32 0
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @srcu_read_unlock(i32* %41, i32 %42)
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %39, %18
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local %struct.ib_uverbs_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @srcu_read_lock(i32*) #1

declare dso_local %struct.ib_device* @srcu_dereference(i32, i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @srcu_read_unlock(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
