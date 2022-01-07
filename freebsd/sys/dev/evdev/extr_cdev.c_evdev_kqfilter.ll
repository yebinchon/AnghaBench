; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_cdev.c_evdev_kqfilter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_cdev.c_evdev_kqfilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.knote = type { i32, i64, i32* }
%struct.evdev_client = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@evdev_cdev_filterops = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.knote*)* @evdev_kqfilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evdev_kqfilter(%struct.cdev* %0, %struct.knote* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cdev*, align 8
  %5 = alloca %struct.knote*, align 8
  %6 = alloca %struct.evdev_client*, align 8
  %7 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %4, align 8
  store %struct.knote* %1, %struct.knote** %5, align 8
  %8 = bitcast %struct.evdev_client** %6 to i8**
  %9 = call i32 @devfs_get_cdevpriv(i8** %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %3, align 4
  br label %40

14:                                               ; preds = %2
  %15 = load %struct.evdev_client*, %struct.evdev_client** %6, align 8
  %16 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* @ENODEV, align 4
  store i32 %20, i32* %3, align 4
  br label %40

21:                                               ; preds = %14
  %22 = load %struct.knote*, %struct.knote** %5, align 8
  %23 = getelementptr inbounds %struct.knote, %struct.knote* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %28 [
    i32 128, label %25
  ]

25:                                               ; preds = %21
  %26 = load %struct.knote*, %struct.knote** %5, align 8
  %27 = getelementptr inbounds %struct.knote, %struct.knote* %26, i32 0, i32 2
  store i32* @evdev_cdev_filterops, i32** %27, align 8
  br label %30

28:                                               ; preds = %21
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %3, align 4
  br label %40

30:                                               ; preds = %25
  %31 = load %struct.evdev_client*, %struct.evdev_client** %6, align 8
  %32 = ptrtoint %struct.evdev_client* %31 to i64
  %33 = load %struct.knote*, %struct.knote** %5, align 8
  %34 = getelementptr inbounds %struct.knote, %struct.knote* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  %35 = load %struct.evdev_client*, %struct.evdev_client** %6, align 8
  %36 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load %struct.knote*, %struct.knote** %5, align 8
  %39 = call i32 @knlist_add(i32* %37, %struct.knote* %38, i32 0)
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %30, %28, %19, %12
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @devfs_get_cdevpriv(i8**) #1

declare dso_local i32 @knlist_add(i32*, %struct.knote*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
