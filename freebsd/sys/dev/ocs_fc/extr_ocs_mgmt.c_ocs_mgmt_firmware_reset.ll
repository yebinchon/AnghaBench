; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_mgmt.c_ocs_mgmt_firmware_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_mgmt.c_ocs_mgmt_firmware_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }

@.str = private unnamed_addr constant [16 x i8] c"Resetting port\0A\00", align 1
@OCS_HW_RESET_FIRMWARE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"failed to reset port\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"successfully reset port\0A\00", align 1
@OCS_HW_STATE_UNINITIALIZED = common dso_local global i64 0, align 8
@OCS_HW_STATE_QUEUES_ALLOCATED = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"device %d attach failed \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i8*, i8*, i32, i8*, i32)* @ocs_mgmt_firmware_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocs_mgmt_firmware_reset(%struct.TYPE_11__* %0, i8* %1, i8* %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_11__*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %23 = call i32 @ocs_get_bus_dev_func(%struct.TYPE_11__* %22, i64* %15, i64* %16, i64* %17)
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %25 = call i32 @ocs_log_debug(%struct.TYPE_11__* %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i32, i32* @OCS_HW_RESET_FIRMWARE, align 4
  %29 = call i64 @ocs_hw_reset(%struct.TYPE_12__* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %6
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %33 = call i32 @ocs_log_test(%struct.TYPE_11__* %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %13, align 4
  br label %77

34:                                               ; preds = %6
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %36 = call i32 @ocs_log_debug(%struct.TYPE_11__* %35, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %37

37:                                               ; preds = %75, %34
  %38 = load i32, i32* %14, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %14, align 4
  %40 = call %struct.TYPE_11__* @ocs_get_instance(i32 %38)
  store %struct.TYPE_11__* %40, %struct.TYPE_11__** %18, align 8
  %41 = icmp ne %struct.TYPE_11__* %40, null
  br i1 %41, label %42, label %76

42:                                               ; preds = %37
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %44 = call i32 @ocs_get_bus_dev_func(%struct.TYPE_11__* %43, i64* %19, i64* %20, i64* %21)
  %45 = load i64, i64* %15, align 8
  %46 = load i64, i64* %19, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %75

48:                                               ; preds = %42
  %49 = load i64, i64* %16, align 8
  %50 = load i64, i64* %20, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %75

52:                                               ; preds = %48
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @OCS_HW_STATE_UNINITIALIZED, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %52
  %60 = load i64, i64* @OCS_HW_STATE_QUEUES_ALLOCATED, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  store i64 %60, i64* %63, align 8
  br label %64

64:                                               ; preds = %59, %52
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %66 = call i32 @ocs_device_detach(%struct.TYPE_11__* %65)
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %68 = call i64 @ocs_device_attach(%struct.TYPE_11__* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %72 = load i32, i32* %14, align 4
  %73 = call i32 @ocs_log_err(%struct.TYPE_11__* %71, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %72)
  store i32 -1, i32* %13, align 4
  br label %74

74:                                               ; preds = %70, %64
  br label %75

75:                                               ; preds = %74, %48, %42
  br label %37

76:                                               ; preds = %37
  br label %77

77:                                               ; preds = %76, %31
  %78 = load i32, i32* %13, align 4
  ret i32 %78
}

declare dso_local i32 @ocs_get_bus_dev_func(%struct.TYPE_11__*, i64*, i64*, i64*) #1

declare dso_local i32 @ocs_log_debug(%struct.TYPE_11__*, i8*) #1

declare dso_local i64 @ocs_hw_reset(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @ocs_log_test(%struct.TYPE_11__*, i8*) #1

declare dso_local %struct.TYPE_11__* @ocs_get_instance(i32) #1

declare dso_local i32 @ocs_device_detach(%struct.TYPE_11__*) #1

declare dso_local i64 @ocs_device_attach(%struct.TYPE_11__*) #1

declare dso_local i32 @ocs_log_err(%struct.TYPE_11__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
