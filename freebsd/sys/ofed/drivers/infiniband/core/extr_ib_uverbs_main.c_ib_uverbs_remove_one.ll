; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_uverbs_main.c_ib_uverbs_remove_one.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_uverbs_main.c_ib_uverbs_remove_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i64 }
%struct.ib_uverbs_device = type { i64, i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@device_group = common dso_local global i32 0, align 4
@uverbs_class = common dso_local global i32 0, align 4
@IB_UVERBS_MAX_DEVICES = common dso_local global i64 0, align 8
@dev_map = common dso_local global i32 0, align 4
@overflow_map = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_device*, i8*)* @ib_uverbs_remove_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ib_uverbs_remove_one(%struct.ib_device* %0, i8* %1) #0 {
  %3 = alloca %struct.ib_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ib_uverbs_device*, align 8
  %6 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.ib_uverbs_device*
  store %struct.ib_uverbs_device* %8, %struct.ib_uverbs_device** %5, align 8
  store i32 1, i32* %6, align 4
  %9 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %10 = icmp ne %struct.ib_uverbs_device* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %82

12:                                               ; preds = %2
  %13 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %14 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %13, i32 0, i32 6
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = call i32 @sysfs_remove_group(i32* %16, i32* @device_group)
  %18 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %19 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %18, i32 0, i32 6
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = call i32 @dev_set_drvdata(%struct.TYPE_3__* %20, i32* null)
  %22 = load i32, i32* @uverbs_class, align 4
  %23 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %24 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %23, i32 0, i32 5
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @device_destroy(i32 %22, i32 %26)
  %28 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %29 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %28, i32 0, i32 5
  %30 = call i32 @cdev_del(%struct.TYPE_4__* %29)
  %31 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %32 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @IB_UVERBS_MAX_DEVICES, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %12
  %37 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %38 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* @dev_map, align 4
  %41 = call i32 @clear_bit(i64 %39, i32 %40)
  br label %50

42:                                               ; preds = %12
  %43 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %44 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @IB_UVERBS_MAX_DEVICES, align 8
  %47 = sub nsw i64 %45, %46
  %48 = load i32, i32* @overflow_map, align 4
  %49 = call i32 @clear_bit(i64 %47, i32 %48)
  br label %50

50:                                               ; preds = %42, %36
  %51 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %52 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %50
  %56 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %57 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @rcu_assign_pointer(i32 %58, i32* null)
  %60 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %61 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %62 = call i32 @ib_uverbs_free_hw_resources(%struct.ib_uverbs_device* %60, %struct.ib_device* %61)
  store i32 0, i32* %6, align 4
  br label %63

63:                                               ; preds = %55, %50
  %64 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %65 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %64, i32 0, i32 3
  %66 = call i64 @atomic_dec_and_test(i32* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %70 = call i32 @ib_uverbs_comp_dev(%struct.ib_uverbs_device* %69)
  br label %71

71:                                               ; preds = %68, %63
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %76 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %75, i32 0, i32 2
  %77 = call i32 @wait_for_completion(i32* %76)
  br label %78

78:                                               ; preds = %74, %71
  %79 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %80 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %79, i32 0, i32 1
  %81 = call i32 @kobject_put(i32* %80)
  br label %82

82:                                               ; preds = %78, %11
  ret void
}

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @device_destroy(i32, i32) #1

declare dso_local i32 @cdev_del(%struct.TYPE_4__*) #1

declare dso_local i32 @clear_bit(i64, i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, i32*) #1

declare dso_local i32 @ib_uverbs_free_hw_resources(%struct.ib_uverbs_device*, %struct.ib_device*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @ib_uverbs_comp_dev(%struct.ib_uverbs_device*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @kobject_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
