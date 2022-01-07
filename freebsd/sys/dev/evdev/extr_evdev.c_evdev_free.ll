; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_evdev.c_evdev_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_evdev.c_evdev_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdev_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@M_EVDEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evdev_free(%struct.evdev_dev* %0) #0 {
  %2 = alloca %struct.evdev_dev*, align 8
  store %struct.evdev_dev* %0, %struct.evdev_dev** %2, align 8
  %3 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %4 = icmp ne %struct.evdev_dev* %3, null
  br i1 %4, label %5, label %20

5:                                                ; preds = %1
  %6 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %7 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = icmp ne %struct.TYPE_2__* %8, null
  br i1 %9, label %10, label %20

10:                                               ; preds = %5
  %11 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %12 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %19 = call i32 @evdev_unregister(%struct.evdev_dev* %18)
  br label %20

20:                                               ; preds = %17, %10, %5, %1
  %21 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %22 = load i32, i32* @M_EVDEV, align 4
  %23 = call i32 @free(%struct.evdev_dev* %21, i32 %22)
  ret void
}

declare dso_local i32 @evdev_unregister(%struct.evdev_dev*) #1

declare dso_local i32 @free(%struct.evdev_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
