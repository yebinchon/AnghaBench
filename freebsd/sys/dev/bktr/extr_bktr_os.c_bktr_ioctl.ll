; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bktr/extr_bktr_os.c_bktr_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bktr/extr_bktr_os.c_bktr_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.thread = type { i32 }
%struct.bktr_softc = type { i64 }

@bktr_devclass = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BT848_GPIO_GET_DATA = common dso_local global i64 0, align 8
@BT848_GPIO_GET_EN = common dso_local global i64 0, align 8
@BT848_GPIO_SET_DATA = common dso_local global i64 0, align 8
@BT848_GPIO_SET_EN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i64, i32, i32, %struct.thread*)* @bktr_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bktr_ioctl(%struct.cdev* %0, i64 %1, i32 %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.bktr_softc*, align 8
  %13 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.thread* %4, %struct.thread** %11, align 8
  %14 = load %struct.cdev*, %struct.cdev** %7, align 8
  %15 = call i32 @dev2unit(%struct.cdev* %14)
  %16 = call i32 @UNIT(i32 %15)
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* @bktr_devclass, align 4
  %18 = load i32, i32* %13, align 4
  %19 = call i64 @devclass_get_softc(i32 %17, i32 %18)
  %20 = inttoptr i64 %19 to %struct.bktr_softc*
  store %struct.bktr_softc* %20, %struct.bktr_softc** %12, align 8
  %21 = load %struct.bktr_softc*, %struct.bktr_softc** %12, align 8
  %22 = icmp eq %struct.bktr_softc* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = load i32, i32* @ENXIO, align 4
  store i32 %24, i32* %6, align 4
  br label %52

25:                                               ; preds = %5
  %26 = load %struct.bktr_softc*, %struct.bktr_softc** %12, align 8
  %27 = getelementptr inbounds %struct.bktr_softc, %struct.bktr_softc* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @ENOMEM, align 4
  store i32 %31, i32* %6, align 4
  br label %52

32:                                               ; preds = %25
  %33 = load %struct.cdev*, %struct.cdev** %7, align 8
  %34 = call i32 @dev2unit(%struct.cdev* %33)
  %35 = call i32 @FUNCTION(i32 %34)
  switch i32 %35, label %50 [
    i32 128, label %36
    i32 129, label %43
  ]

36:                                               ; preds = %32
  %37 = load %struct.bktr_softc*, %struct.bktr_softc** %12, align 8
  %38 = load i32, i32* %13, align 4
  %39 = load i64, i64* %8, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.thread*, %struct.thread** %11, align 8
  %42 = call i32 @video_ioctl(%struct.bktr_softc* %37, i32 %38, i64 %39, i32 %40, %struct.thread* %41)
  store i32 %42, i32* %6, align 4
  br label %52

43:                                               ; preds = %32
  %44 = load %struct.bktr_softc*, %struct.bktr_softc** %12, align 8
  %45 = load i32, i32* %13, align 4
  %46 = load i64, i64* %8, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.thread*, %struct.thread** %11, align 8
  %49 = call i32 @tuner_ioctl(%struct.bktr_softc* %44, i32 %45, i64 %46, i32 %47, %struct.thread* %48)
  store i32 %49, i32* %6, align 4
  br label %52

50:                                               ; preds = %32
  %51 = load i32, i32* @ENXIO, align 4
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %50, %43, %36, %30, %23
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local i32 @UNIT(i32) #1

declare dso_local i32 @dev2unit(%struct.cdev*) #1

declare dso_local i64 @devclass_get_softc(i32, i32) #1

declare dso_local i32 @FUNCTION(i32) #1

declare dso_local i32 @video_ioctl(%struct.bktr_softc*, i32, i64, i32, %struct.thread*) #1

declare dso_local i32 @tuner_ioctl(%struct.bktr_softc*, i32, i64, i32, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
