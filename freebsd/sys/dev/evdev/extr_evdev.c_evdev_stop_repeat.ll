; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_evdev.c_evdev_stop_repeat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_evdev.c_evdev_stop_repeat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdev_dev = type { i64, i32 }

@KEY_RESERVED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evdev_dev*)* @evdev_stop_repeat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evdev_stop_repeat(%struct.evdev_dev* %0) #0 {
  %2 = alloca %struct.evdev_dev*, align 8
  store %struct.evdev_dev* %0, %struct.evdev_dev** %2, align 8
  %3 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %4 = call i32 @EVDEV_LOCK_ASSERT(%struct.evdev_dev* %3)
  %5 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %6 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @KEY_RESERVED, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %12 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %11, i32 0, i32 1
  %13 = call i32 @callout_stop(i32* %12)
  %14 = load i64, i64* @KEY_RESERVED, align 8
  %15 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %16 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  br label %17

17:                                               ; preds = %10, %1
  ret void
}

declare dso_local i32 @EVDEV_LOCK_ASSERT(%struct.evdev_dev*) #1

declare dso_local i32 @callout_stop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
