; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_evdev.c_evdev_register_client.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_evdev.c_evdev_register_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdev_dev = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.evdev_dev*)* }
%struct.evdev_client = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"adding new client for device %s\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"calling ev_open() on device %s\00", align 1
@ec_link = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evdev_register_client(%struct.evdev_dev* %0, %struct.evdev_client* %1) #0 {
  %3 = alloca %struct.evdev_dev*, align 8
  %4 = alloca %struct.evdev_client*, align 8
  %5 = alloca i32, align 4
  store %struct.evdev_dev* %0, %struct.evdev_dev** %3, align 8
  store %struct.evdev_client* %1, %struct.evdev_client** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.evdev_dev*, %struct.evdev_dev** %3, align 8
  %7 = load %struct.evdev_dev*, %struct.evdev_dev** %3, align 8
  %8 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @debugf(%struct.evdev_dev* %6, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.evdev_dev*, %struct.evdev_dev** %3, align 8
  %12 = call i32 @EVDEV_LOCK_ASSERT(%struct.evdev_dev* %11)
  %13 = load %struct.evdev_dev*, %struct.evdev_dev** %3, align 8
  %14 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %13, i32 0, i32 0
  %15 = call i64 @LIST_EMPTY(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %42

17:                                               ; preds = %2
  %18 = load %struct.evdev_dev*, %struct.evdev_dev** %3, align 8
  %19 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = icmp ne %struct.TYPE_2__* %20, null
  br i1 %21, label %22, label %42

22:                                               ; preds = %17
  %23 = load %struct.evdev_dev*, %struct.evdev_dev** %3, align 8
  %24 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (%struct.evdev_dev*)*, i32 (%struct.evdev_dev*)** %26, align 8
  %28 = icmp ne i32 (%struct.evdev_dev*)* %27, null
  br i1 %28, label %29, label %42

29:                                               ; preds = %22
  %30 = load %struct.evdev_dev*, %struct.evdev_dev** %3, align 8
  %31 = load %struct.evdev_dev*, %struct.evdev_dev** %3, align 8
  %32 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @debugf(%struct.evdev_dev* %30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load %struct.evdev_dev*, %struct.evdev_dev** %3, align 8
  %36 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32 (%struct.evdev_dev*)*, i32 (%struct.evdev_dev*)** %38, align 8
  %40 = load %struct.evdev_dev*, %struct.evdev_dev** %3, align 8
  %41 = call i32 %39(%struct.evdev_dev* %40)
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %29, %22, %17, %2
  %43 = load i32, i32* %5, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load %struct.evdev_dev*, %struct.evdev_dev** %3, align 8
  %47 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %46, i32 0, i32 0
  %48 = load %struct.evdev_client*, %struct.evdev_client** %4, align 8
  %49 = load i32, i32* @ec_link, align 4
  %50 = call i32 @LIST_INSERT_HEAD(i32* %47, %struct.evdev_client* %48, i32 %49)
  br label %51

51:                                               ; preds = %45, %42
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @debugf(%struct.evdev_dev*, i8*, i32) #1

declare dso_local i32 @EVDEV_LOCK_ASSERT(%struct.evdev_dev*) #1

declare dso_local i64 @LIST_EMPTY(i32*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.evdev_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
