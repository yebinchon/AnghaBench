; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bcma/extr_bcma.c_bcma_write_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bcma/extr_bcma.c_bcma_write_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_devinfo = type { %struct.bhnd_resource* }
%struct.bhnd_resource = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@BCMA_DMP_IOCTRL = common dso_local global i32 0, align 4
@BCMA_DMP_IOCTRL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32, i32)* @bcma_write_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcma_write_ioctl(i64 %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bcma_devinfo*, align 8
  %11 = alloca %struct.bhnd_resource*, align 8
  %12 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i64, i64* %7, align 8
  %14 = call i64 @device_get_parent(i64 %13)
  %15 = load i64, i64* %6, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %5, align 4
  br label %51

19:                                               ; preds = %4
  %20 = load i64, i64* %7, align 8
  %21 = call %struct.bcma_devinfo* @device_get_ivars(i64 %20)
  store %struct.bcma_devinfo* %21, %struct.bcma_devinfo** %10, align 8
  %22 = load %struct.bcma_devinfo*, %struct.bcma_devinfo** %10, align 8
  %23 = getelementptr inbounds %struct.bcma_devinfo, %struct.bcma_devinfo* %22, i32 0, i32 0
  %24 = load %struct.bhnd_resource*, %struct.bhnd_resource** %23, align 8
  store %struct.bhnd_resource* %24, %struct.bhnd_resource** %11, align 8
  %25 = icmp eq %struct.bhnd_resource* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* @ENODEV, align 4
  store i32 %27, i32* %5, align 4
  br label %51

28:                                               ; preds = %19
  %29 = load %struct.bhnd_resource*, %struct.bhnd_resource** %11, align 8
  %30 = load i32, i32* @BCMA_DMP_IOCTRL, align 4
  %31 = call i32 @bhnd_bus_read_4(%struct.bhnd_resource* %29, i32 %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* @BCMA_DMP_IOCTRL_MASK, align 4
  %33 = load i32, i32* %9, align 4
  %34 = and i32 %32, %33
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %12, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* %12, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %12, align 4
  %43 = load %struct.bhnd_resource*, %struct.bhnd_resource** %11, align 8
  %44 = load i32, i32* @BCMA_DMP_IOCTRL, align 4
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @bhnd_bus_write_4(%struct.bhnd_resource* %43, i32 %44, i32 %45)
  %47 = load %struct.bhnd_resource*, %struct.bhnd_resource** %11, align 8
  %48 = load i32, i32* @BCMA_DMP_IOCTRL, align 4
  %49 = call i32 @bhnd_bus_read_4(%struct.bhnd_resource* %47, i32 %48)
  %50 = call i32 @DELAY(i32 10)
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %28, %26, %17
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i64 @device_get_parent(i64) #1

declare dso_local %struct.bcma_devinfo* @device_get_ivars(i64) #1

declare dso_local i32 @bhnd_bus_read_4(%struct.bhnd_resource*, i32) #1

declare dso_local i32 @bhnd_bus_write_4(%struct.bhnd_resource*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
