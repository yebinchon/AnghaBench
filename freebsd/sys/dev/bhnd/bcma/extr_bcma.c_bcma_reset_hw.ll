; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bcma/extr_bcma.c_bcma_reset_hw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bcma/extr_bcma.c_bcma_reset_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_devinfo = type { %struct.bhnd_resource* }
%struct.bhnd_resource = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@BHND_IOCTL_CLK_EN = common dso_local global i32 0, align 4
@BHND_IOCTL_CLK_FORCE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@UINT16_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32, i32)* @bcma_reset_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcma_reset_hw(i64 %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bcma_devinfo*, align 8
  %11 = alloca %struct.bhnd_resource*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i64, i64* %7, align 8
  %15 = call i64 @device_get_parent(i64 %14)
  %16 = load i64, i64* %6, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %5, align 4
  br label %72

20:                                               ; preds = %4
  %21 = load i64, i64* %7, align 8
  %22 = call %struct.bcma_devinfo* @device_get_ivars(i64 %21)
  store %struct.bcma_devinfo* %22, %struct.bcma_devinfo** %10, align 8
  %23 = load i32, i32* @BHND_IOCTL_CLK_EN, align 4
  %24 = load i32, i32* @BHND_IOCTL_CLK_FORCE, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %12, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  %31 = load i32, i32* @EINVAL, align 4
  store i32 %31, i32* %5, align 4
  br label %72

32:                                               ; preds = %20
  %33 = load %struct.bcma_devinfo*, %struct.bcma_devinfo** %10, align 8
  %34 = getelementptr inbounds %struct.bcma_devinfo, %struct.bcma_devinfo* %33, i32 0, i32 0
  %35 = load %struct.bhnd_resource*, %struct.bhnd_resource** %34, align 8
  store %struct.bhnd_resource* %35, %struct.bhnd_resource** %11, align 8
  %36 = icmp eq %struct.bhnd_resource* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* @ENODEV, align 4
  store i32 %38, i32* %5, align 4
  br label %72

39:                                               ; preds = %32
  %40 = load i64, i64* %7, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @bhnd_suspend_hw(i64 %40, i32 %41)
  store i32 %42, i32* %13, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* %13, align 4
  store i32 %45, i32* %5, align 4
  br label %72

46:                                               ; preds = %39
  %47 = load i64, i64* %7, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %12, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @UINT16_MAX, align 4
  %52 = call i32 @bhnd_write_ioctl(i64 %47, i32 %50, i32 %51)
  store i32 %52, i32* %13, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = load i32, i32* %13, align 4
  store i32 %55, i32* %5, align 4
  br label %72

56:                                               ; preds = %46
  %57 = load i64, i64* %7, align 8
  %58 = load %struct.bcma_devinfo*, %struct.bcma_devinfo** %10, align 8
  %59 = call i32 @bcma_dmp_write_reset(i64 %57, %struct.bcma_devinfo* %58, i32 0)
  store i32 %59, i32* %13, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* %13, align 4
  store i32 %62, i32* %5, align 4
  br label %72

63:                                               ; preds = %56
  %64 = load i64, i64* %7, align 8
  %65 = load i32, i32* @BHND_IOCTL_CLK_FORCE, align 4
  %66 = call i32 @bhnd_write_ioctl(i64 %64, i32 0, i32 %65)
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %13, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = load i32, i32* %13, align 4
  store i32 %70, i32* %5, align 4
  br label %72

71:                                               ; preds = %63
  store i32 0, i32* %5, align 4
  br label %72

72:                                               ; preds = %71, %69, %61, %54, %44, %37, %30, %18
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i64 @device_get_parent(i64) #1

declare dso_local %struct.bcma_devinfo* @device_get_ivars(i64) #1

declare dso_local i32 @bhnd_suspend_hw(i64, i32) #1

declare dso_local i32 @bhnd_write_ioctl(i64, i32, i32) #1

declare dso_local i32 @bcma_dmp_write_reset(i64, %struct.bcma_devinfo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
