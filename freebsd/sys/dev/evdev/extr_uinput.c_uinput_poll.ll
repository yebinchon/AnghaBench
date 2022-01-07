; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_uinput.c_uinput_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_uinput.c_uinput_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.thread = type { i32 }
%struct.uinput_cdev_state = type { i32, i32 }

@POLLNVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"poll by thread %d\00", align 1
@POLLOUT = common dso_local global i32 0, align 4
@POLLWRNORM = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, %struct.thread*)* @uinput_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uinput_poll(%struct.cdev* %0, i32 %1, %struct.thread* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.uinput_cdev_state*, align 8
  %9 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.thread* %2, %struct.thread** %7, align 8
  store i32 0, i32* %9, align 4
  %10 = bitcast %struct.uinput_cdev_state** %8 to i8**
  %11 = call i64 @devfs_get_cdevpriv(i8** %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @POLLNVAL, align 4
  store i32 %14, i32* %4, align 4
  br label %66

15:                                               ; preds = %3
  %16 = load %struct.uinput_cdev_state*, %struct.uinput_cdev_state** %8, align 8
  %17 = load %struct.thread*, %struct.thread** %7, align 8
  %18 = getelementptr inbounds %struct.thread, %struct.thread* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @debugf(%struct.uinput_cdev_state* %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @POLLOUT, align 4
  %23 = load i32, i32* @POLLWRNORM, align 4
  %24 = or i32 %22, %23
  %25 = and i32 %21, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %15
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @POLLOUT, align 4
  %30 = load i32, i32* @POLLWRNORM, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %28, %31
  %33 = load i32, i32* %9, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %27, %15
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @POLLIN, align 4
  %38 = load i32, i32* @POLLRDNORM, align 4
  %39 = or i32 %37, %38
  %40 = and i32 %36, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %64

42:                                               ; preds = %35
  %43 = load %struct.uinput_cdev_state*, %struct.uinput_cdev_state** %8, align 8
  %44 = call i32 @UINPUT_LOCK(%struct.uinput_cdev_state* %43)
  %45 = load %struct.uinput_cdev_state*, %struct.uinput_cdev_state** %8, align 8
  %46 = call i32 @UINPUT_EMPTYQ(%struct.uinput_cdev_state* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %42
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @POLLIN, align 4
  %51 = load i32, i32* @POLLRDNORM, align 4
  %52 = or i32 %50, %51
  %53 = and i32 %49, %52
  store i32 %53, i32* %9, align 4
  br label %61

54:                                               ; preds = %42
  %55 = load %struct.uinput_cdev_state*, %struct.uinput_cdev_state** %8, align 8
  %56 = getelementptr inbounds %struct.uinput_cdev_state, %struct.uinput_cdev_state* %55, i32 0, i32 0
  store i32 1, i32* %56, align 4
  %57 = load %struct.thread*, %struct.thread** %7, align 8
  %58 = load %struct.uinput_cdev_state*, %struct.uinput_cdev_state** %8, align 8
  %59 = getelementptr inbounds %struct.uinput_cdev_state, %struct.uinput_cdev_state* %58, i32 0, i32 1
  %60 = call i32 @selrecord(%struct.thread* %57, i32* %59)
  br label %61

61:                                               ; preds = %54, %48
  %62 = load %struct.uinput_cdev_state*, %struct.uinput_cdev_state** %8, align 8
  %63 = call i32 @UINPUT_UNLOCK(%struct.uinput_cdev_state* %62)
  br label %64

64:                                               ; preds = %61, %35
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %64, %13
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i64 @devfs_get_cdevpriv(i8**) #1

declare dso_local i32 @debugf(%struct.uinput_cdev_state*, i8*, i32) #1

declare dso_local i32 @UINPUT_LOCK(%struct.uinput_cdev_state*) #1

declare dso_local i32 @UINPUT_EMPTYQ(%struct.uinput_cdev_state*) #1

declare dso_local i32 @selrecord(%struct.thread*, i32*) #1

declare dso_local i32 @UINPUT_UNLOCK(%struct.uinput_cdev_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
