; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_evdev.c_evdev_start_repeat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_evdev.c_evdev_start_repeat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdev_dev = type { i32*, i32, i32 }

@REP_DELAY = common dso_local global i64 0, align 8
@hz = common dso_local global i32 0, align 4
@evdev_repeat_callout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evdev_dev*, i32)* @evdev_start_repeat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evdev_start_repeat(%struct.evdev_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.evdev_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.evdev_dev* %0, %struct.evdev_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.evdev_dev*, %struct.evdev_dev** %3, align 8
  %6 = call i32 @EVDEV_LOCK_ASSERT(%struct.evdev_dev* %5)
  %7 = load %struct.evdev_dev*, %struct.evdev_dev** %3, align 8
  %8 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = load i64, i64* @REP_DELAY, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.evdev_dev*, %struct.evdev_dev** %3, align 8
  %17 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load %struct.evdev_dev*, %struct.evdev_dev** %3, align 8
  %19 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %18, i32 0, i32 1
  %20 = load %struct.evdev_dev*, %struct.evdev_dev** %3, align 8
  %21 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* @REP_DELAY, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @hz, align 4
  %27 = mul nsw i32 %25, %26
  %28 = sdiv i32 %27, 1000
  %29 = load i32, i32* @evdev_repeat_callout, align 4
  %30 = load %struct.evdev_dev*, %struct.evdev_dev** %3, align 8
  %31 = call i32 @callout_reset(i32* %19, i32 %28, i32 %29, %struct.evdev_dev* %30)
  br label %32

32:                                               ; preds = %14, %2
  ret void
}

declare dso_local i32 @EVDEV_LOCK_ASSERT(%struct.evdev_dev*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.evdev_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
