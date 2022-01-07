; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_cdev.c_evdev_cdev_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_cdev.c_evdev_cdev_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdev_dev = type { i32, i32 }
%struct.make_dev_args = type { i32, i32, %struct.evdev_dev*, i32, i32, i32* }

@MAKEDEV_WAITOK = common dso_local global i32 0, align 4
@MAKEDEV_CHECKNAME = common dso_local global i32 0, align 4
@evdev_cdevsw = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_WHEEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"input/event%d\00", align 1
@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evdev_cdev_create(%struct.evdev_dev* %0) #0 {
  %2 = alloca %struct.evdev_dev*, align 8
  %3 = alloca %struct.make_dev_args, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.evdev_dev* %0, %struct.evdev_dev** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = call i32 @make_dev_args_init(%struct.make_dev_args* %3)
  %7 = load i32, i32* @MAKEDEV_WAITOK, align 4
  %8 = load i32, i32* @MAKEDEV_CHECKNAME, align 4
  %9 = or i32 %7, %8
  %10 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %3, i32 0, i32 0
  store i32 %9, i32* %10, align 8
  %11 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %3, i32 0, i32 5
  store i32* @evdev_cdevsw, i32** %11, align 8
  %12 = load i32, i32* @UID_ROOT, align 4
  %13 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %3, i32 0, i32 4
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @GID_WHEEL, align 4
  %15 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %3, i32 0, i32 3
  store i32 %14, i32* %15, align 8
  %16 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %3, i32 0, i32 1
  store i32 384, i32* %16, align 4
  %17 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %18 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %3, i32 0, i32 2
  store %struct.evdev_dev* %17, %struct.evdev_dev** %18, align 8
  br label %19

19:                                               ; preds = %26, %1
  %20 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %21 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %20, i32 0, i32 1
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @make_dev_s(%struct.make_dev_args* %3, i32* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* @EEXIST, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  br label %19

29:                                               ; preds = %19
  %30 = load i32, i32* %4, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %35 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  br label %36

36:                                               ; preds = %32, %29
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @make_dev_args_init(%struct.make_dev_args*) #1

declare dso_local i32 @make_dev_s(%struct.make_dev_args*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
