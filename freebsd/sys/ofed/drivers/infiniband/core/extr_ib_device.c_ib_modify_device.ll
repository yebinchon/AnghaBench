; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_device.c_ib_modify_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_device.c_ib_modify_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { {}* }
%struct.ib_device_modify = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_modify_device(%struct.ib_device* %0, i32 %1, %struct.ib_device_modify* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_device_modify*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ib_device_modify* %2, %struct.ib_device_modify** %7, align 8
  %8 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %9 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %8, i32 0, i32 0
  %10 = bitcast {}** %9 to i32 (%struct.ib_device*, i32, %struct.ib_device_modify*)**
  %11 = load i32 (%struct.ib_device*, i32, %struct.ib_device_modify*)*, i32 (%struct.ib_device*, i32, %struct.ib_device_modify*)** %10, align 8
  %12 = icmp ne i32 (%struct.ib_device*, i32, %struct.ib_device_modify*)* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @ENOSYS, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %25

16:                                               ; preds = %3
  %17 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %18 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %17, i32 0, i32 0
  %19 = bitcast {}** %18 to i32 (%struct.ib_device*, i32, %struct.ib_device_modify*)**
  %20 = load i32 (%struct.ib_device*, i32, %struct.ib_device_modify*)*, i32 (%struct.ib_device*, i32, %struct.ib_device_modify*)** %19, align 8
  %21 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.ib_device_modify*, %struct.ib_device_modify** %7, align 8
  %24 = call i32 %20(%struct.ib_device* %21, i32 %22, %struct.ib_device_modify* %23)
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %16, %13
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
