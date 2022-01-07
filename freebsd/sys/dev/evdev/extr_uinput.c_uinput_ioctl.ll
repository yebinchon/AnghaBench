; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_uinput.c_uinput_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_uinput.c_uinput_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.thread = type { i32 }
%struct.uinput_cdev_state = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"ioctl called: cmd=0x%08lx, data=%p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i32, i32, %struct.thread*)* @uinput_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uinput_ioctl(%struct.cdev* %0, i32 %1, i32 %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.uinput_cdev_state*, align 8
  %13 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.thread* %4, %struct.thread** %11, align 8
  %14 = bitcast %struct.uinput_cdev_state** %12 to i8**
  %15 = call i32 @devfs_get_cdevpriv(i8** %14)
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* %13, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load i32, i32* %13, align 4
  store i32 %19, i32* %6, align 4
  br label %34

20:                                               ; preds = %5
  %21 = load %struct.uinput_cdev_state*, %struct.uinput_cdev_state** %12, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @debugf(%struct.uinput_cdev_state* %21, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23)
  %25 = load %struct.uinput_cdev_state*, %struct.uinput_cdev_state** %12, align 8
  %26 = call i32 @UINPUT_LOCK(%struct.uinput_cdev_state* %25)
  %27 = load %struct.uinput_cdev_state*, %struct.uinput_cdev_state** %12, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @uinput_ioctl_sub(%struct.uinput_cdev_state* %27, i32 %28, i32 %29)
  store i32 %30, i32* %13, align 4
  %31 = load %struct.uinput_cdev_state*, %struct.uinput_cdev_state** %12, align 8
  %32 = call i32 @UINPUT_UNLOCK(%struct.uinput_cdev_state* %31)
  %33 = load i32, i32* %13, align 4
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %20, %18
  %35 = load i32, i32* %6, align 4
  ret i32 %35
}

declare dso_local i32 @devfs_get_cdevpriv(i8**) #1

declare dso_local i32 @debugf(%struct.uinput_cdev_state*, i8*, i32, i32) #1

declare dso_local i32 @UINPUT_LOCK(%struct.uinput_cdev_state*) #1

declare dso_local i32 @uinput_ioctl_sub(%struct.uinput_cdev_state*, i32, i32) #1

declare dso_local i32 @UINPUT_UNLOCK(%struct.uinput_cdev_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
