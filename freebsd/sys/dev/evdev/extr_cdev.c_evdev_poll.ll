; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_cdev.c_evdev_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_cdev.c_evdev_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.thread = type { i32 }
%struct.evdev_client = type { i32, i32, i64 }

@POLLNVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"poll by thread %d\00", align 1
@POLLHUP = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, %struct.thread*)* @evdev_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evdev_poll(%struct.cdev* %0, i32 %1, %struct.thread* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.evdev_client*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.thread* %2, %struct.thread** %7, align 8
  store i32 0, i32* %10, align 4
  %11 = bitcast %struct.evdev_client** %8 to i8**
  %12 = call i32 @devfs_get_cdevpriv(i8** %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @POLLNVAL, align 4
  store i32 %16, i32* %4, align 4
  br label %60

17:                                               ; preds = %3
  %18 = load %struct.evdev_client*, %struct.evdev_client** %8, align 8
  %19 = load %struct.thread*, %struct.thread** %7, align 8
  %20 = getelementptr inbounds %struct.thread, %struct.thread* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @debugf(%struct.evdev_client* %18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.evdev_client*, %struct.evdev_client** %8, align 8
  %24 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %17
  %28 = load i32, i32* @POLLHUP, align 4
  store i32 %28, i32* %4, align 4
  br label %60

29:                                               ; preds = %17
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @POLLIN, align 4
  %32 = load i32, i32* @POLLRDNORM, align 4
  %33 = or i32 %31, %32
  %34 = and i32 %30, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %58

36:                                               ; preds = %29
  %37 = load %struct.evdev_client*, %struct.evdev_client** %8, align 8
  %38 = call i32 @EVDEV_CLIENT_LOCKQ(%struct.evdev_client* %37)
  %39 = load %struct.evdev_client*, %struct.evdev_client** %8, align 8
  %40 = call i32 @EVDEV_CLIENT_EMPTYQ(%struct.evdev_client* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @POLLIN, align 4
  %45 = load i32, i32* @POLLRDNORM, align 4
  %46 = or i32 %44, %45
  %47 = and i32 %43, %46
  store i32 %47, i32* %10, align 4
  br label %55

48:                                               ; preds = %36
  %49 = load %struct.evdev_client*, %struct.evdev_client** %8, align 8
  %50 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = load %struct.thread*, %struct.thread** %7, align 8
  %52 = load %struct.evdev_client*, %struct.evdev_client** %8, align 8
  %53 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %52, i32 0, i32 1
  %54 = call i32 @selrecord(%struct.thread* %51, i32* %53)
  br label %55

55:                                               ; preds = %48, %42
  %56 = load %struct.evdev_client*, %struct.evdev_client** %8, align 8
  %57 = call i32 @EVDEV_CLIENT_UNLOCKQ(%struct.evdev_client* %56)
  br label %58

58:                                               ; preds = %55, %29
  %59 = load i32, i32* %10, align 4
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %58, %27, %15
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @devfs_get_cdevpriv(i8**) #1

declare dso_local i32 @debugf(%struct.evdev_client*, i8*, i32) #1

declare dso_local i32 @EVDEV_CLIENT_LOCKQ(%struct.evdev_client*) #1

declare dso_local i32 @EVDEV_CLIENT_EMPTYQ(%struct.evdev_client*) #1

declare dso_local i32 @selrecord(%struct.thread*, i32*) #1

declare dso_local i32 @EVDEV_CLIENT_UNLOCKQ(%struct.evdev_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
