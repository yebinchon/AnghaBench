; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bcma/extr_bcma.c_bcma_suspend_hw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bcma/extr_bcma.c_bcma_suspend_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_devinfo = type { %struct.bhnd_resource* }
%struct.bhnd_resource = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@BHND_IOCTL_CLK_EN = common dso_local global i32 0, align 4
@BHND_IOCTL_CLK_FORCE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@BCMA_DMP_RC_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32)* @bcma_suspend_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcma_suspend_hw(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bcma_devinfo*, align 8
  %9 = alloca %struct.bhnd_resource*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i64, i64* %6, align 8
  %13 = call i64 @device_get_parent(i64 %12)
  %14 = load i64, i64* %5, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %4, align 4
  br label %62

18:                                               ; preds = %3
  %19 = load i64, i64* %6, align 8
  %20 = call %struct.bcma_devinfo* @device_get_ivars(i64 %19)
  store %struct.bcma_devinfo* %20, %struct.bcma_devinfo** %8, align 8
  %21 = load i32, i32* @BHND_IOCTL_CLK_EN, align 4
  %22 = load i32, i32* @BHND_IOCTL_CLK_FORCE, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %10, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %18
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %4, align 4
  br label %62

30:                                               ; preds = %18
  %31 = load %struct.bcma_devinfo*, %struct.bcma_devinfo** %8, align 8
  %32 = getelementptr inbounds %struct.bcma_devinfo, %struct.bcma_devinfo* %31, i32 0, i32 0
  %33 = load %struct.bhnd_resource*, %struct.bhnd_resource** %32, align 8
  store %struct.bhnd_resource* %33, %struct.bhnd_resource** %9, align 8
  %34 = icmp eq %struct.bhnd_resource* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @ENODEV, align 4
  store i32 %36, i32* %4, align 4
  br label %62

37:                                               ; preds = %30
  %38 = load i64, i64* %6, align 8
  %39 = load %struct.bcma_devinfo*, %struct.bcma_devinfo** %8, align 8
  %40 = call i32 @bcma_dmp_wait_reset(i64 %38, %struct.bcma_devinfo* %39)
  store i32 %40, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* %11, align 4
  store i32 %43, i32* %4, align 4
  br label %62

44:                                               ; preds = %37
  %45 = load i64, i64* %6, align 8
  %46 = load %struct.bcma_devinfo*, %struct.bcma_devinfo** %8, align 8
  %47 = load i32, i32* @BCMA_DMP_RC_RESET, align 4
  %48 = call i32 @bcma_dmp_write_reset(i64 %45, %struct.bcma_devinfo* %46, i32 %47)
  store i32 %48, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* %11, align 4
  store i32 %51, i32* %4, align 4
  br label %62

52:                                               ; preds = %44
  %53 = load i64, i64* %6, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %10, align 4
  %56 = xor i32 %55, -1
  %57 = call i32 @bhnd_write_ioctl(i64 %53, i32 %54, i32 %56)
  store i32 %57, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i32, i32* %11, align 4
  store i32 %60, i32* %4, align 4
  br label %62

61:                                               ; preds = %52
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %61, %59, %50, %42, %35, %28, %16
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i64 @device_get_parent(i64) #1

declare dso_local %struct.bcma_devinfo* @device_get_ivars(i64) #1

declare dso_local i32 @bcma_dmp_wait_reset(i64, %struct.bcma_devinfo*) #1

declare dso_local i32 @bcma_dmp_write_reset(i64, %struct.bcma_devinfo*, i32) #1

declare dso_local i32 @bhnd_write_ioctl(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
