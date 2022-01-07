; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_cdev.c_evdev_ioctl_eviocgbit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_cdev.c_evdev_ioctl_eviocgbit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdev_dev = type { i64*, i64*, i64*, i64*, i64*, i64*, i64*, i64* }

@EV_CNT = common dso_local global i32 0, align 4
@KEY_CNT = common dso_local global i32 0, align 4
@REL_CNT = common dso_local global i32 0, align 4
@ABS_CNT = common dso_local global i32 0, align 4
@MSC_CNT = common dso_local global i32 0, align 4
@LED_CNT = common dso_local global i32 0, align 4
@SND_CNT = common dso_local global i32 0, align 4
@SW_CNT = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evdev_dev*, i32, i32, i32)* @evdev_ioctl_eviocgbit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evdev_ioctl_eviocgbit(%struct.evdev_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.evdev_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  store %struct.evdev_dev* %0, %struct.evdev_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  switch i32 %12, label %57 [
    i32 0, label %13
    i32 133, label %18
    i32 130, label %23
    i32 135, label %28
    i32 131, label %33
    i32 132, label %38
    i32 129, label %43
    i32 128, label %48
    i32 134, label %53
  ]

13:                                               ; preds = %4
  %14 = load %struct.evdev_dev*, %struct.evdev_dev** %6, align 8
  %15 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  store i64* %16, i64** %10, align 8
  %17 = load i32, i32* @EV_CNT, align 4
  store i32 %17, i32* %11, align 4
  br label %59

18:                                               ; preds = %4
  %19 = load %struct.evdev_dev*, %struct.evdev_dev** %6, align 8
  %20 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %19, i32 0, i32 1
  %21 = load i64*, i64** %20, align 8
  store i64* %21, i64** %10, align 8
  %22 = load i32, i32* @KEY_CNT, align 4
  store i32 %22, i32* %11, align 4
  br label %59

23:                                               ; preds = %4
  %24 = load %struct.evdev_dev*, %struct.evdev_dev** %6, align 8
  %25 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %24, i32 0, i32 2
  %26 = load i64*, i64** %25, align 8
  store i64* %26, i64** %10, align 8
  %27 = load i32, i32* @REL_CNT, align 4
  store i32 %27, i32* %11, align 4
  br label %59

28:                                               ; preds = %4
  %29 = load %struct.evdev_dev*, %struct.evdev_dev** %6, align 8
  %30 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %29, i32 0, i32 3
  %31 = load i64*, i64** %30, align 8
  store i64* %31, i64** %10, align 8
  %32 = load i32, i32* @ABS_CNT, align 4
  store i32 %32, i32* %11, align 4
  br label %59

33:                                               ; preds = %4
  %34 = load %struct.evdev_dev*, %struct.evdev_dev** %6, align 8
  %35 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %34, i32 0, i32 4
  %36 = load i64*, i64** %35, align 8
  store i64* %36, i64** %10, align 8
  %37 = load i32, i32* @MSC_CNT, align 4
  store i32 %37, i32* %11, align 4
  br label %59

38:                                               ; preds = %4
  %39 = load %struct.evdev_dev*, %struct.evdev_dev** %6, align 8
  %40 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %39, i32 0, i32 5
  %41 = load i64*, i64** %40, align 8
  store i64* %41, i64** %10, align 8
  %42 = load i32, i32* @LED_CNT, align 4
  store i32 %42, i32* %11, align 4
  br label %59

43:                                               ; preds = %4
  %44 = load %struct.evdev_dev*, %struct.evdev_dev** %6, align 8
  %45 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %44, i32 0, i32 6
  %46 = load i64*, i64** %45, align 8
  store i64* %46, i64** %10, align 8
  %47 = load i32, i32* @SND_CNT, align 4
  store i32 %47, i32* %11, align 4
  br label %59

48:                                               ; preds = %4
  %49 = load %struct.evdev_dev*, %struct.evdev_dev** %6, align 8
  %50 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %49, i32 0, i32 7
  %51 = load i64*, i64** %50, align 8
  store i64* %51, i64** %10, align 8
  %52 = load i32, i32* @SW_CNT, align 4
  store i32 %52, i32* %11, align 4
  br label %59

53:                                               ; preds = %4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @bzero(i32 %54, i32 %55)
  store i32 0, i32* %5, align 4
  br label %72

57:                                               ; preds = %4
  %58 = load i32, i32* @ENOTTY, align 4
  store i32 %58, i32* %5, align 4
  br label %72

59:                                               ; preds = %48, %43, %38, %33, %28, %23, %18, %13
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @bzero(i32 %60, i32 %61)
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @bitstr_size(i32 %63)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @MIN(i32 %65, i32 %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load i64*, i64** %10, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @memcpy(i32 %68, i64* %69, i32 %70)
  store i32 0, i32* %5, align 4
  br label %72

72:                                               ; preds = %59, %57, %53
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i32 @bzero(i32, i32) #1

declare dso_local i32 @bitstr_size(i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @memcpy(i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
