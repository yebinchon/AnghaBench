; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_evdev.c_evdev_repeat_callout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_evdev.c_evdev_repeat_callout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdev_dev = type { i32*, i32, i32 }

@EV_KEY = common dso_local global i32 0, align 4
@KEY_EVENT_REPEAT = common dso_local global i32 0, align 4
@EV_SYN = common dso_local global i32 0, align 4
@SYN_REPORT = common dso_local global i32 0, align 4
@REP_PERIOD = common dso_local global i64 0, align 8
@hz = common dso_local global i32 0, align 4
@KEY_RESERVED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @evdev_repeat_callout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evdev_repeat_callout(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.evdev_dev*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.evdev_dev*
  store %struct.evdev_dev* %5, %struct.evdev_dev** %3, align 8
  %6 = load %struct.evdev_dev*, %struct.evdev_dev** %3, align 8
  %7 = load i32, i32* @EV_KEY, align 4
  %8 = load %struct.evdev_dev*, %struct.evdev_dev** %3, align 8
  %9 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @KEY_EVENT_REPEAT, align 4
  %12 = call i32 @evdev_send_event(%struct.evdev_dev* %6, i32 %7, i32 %10, i32 %11)
  %13 = load %struct.evdev_dev*, %struct.evdev_dev** %3, align 8
  %14 = load i32, i32* @EV_SYN, align 4
  %15 = load i32, i32* @SYN_REPORT, align 4
  %16 = call i32 @evdev_send_event(%struct.evdev_dev* %13, i32 %14, i32 %15, i32 1)
  %17 = load %struct.evdev_dev*, %struct.evdev_dev** %3, align 8
  %18 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* @REP_PERIOD, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %1
  %25 = load %struct.evdev_dev*, %struct.evdev_dev** %3, align 8
  %26 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %25, i32 0, i32 2
  %27 = load %struct.evdev_dev*, %struct.evdev_dev** %3, align 8
  %28 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* @REP_PERIOD, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @hz, align 4
  %34 = mul nsw i32 %32, %33
  %35 = sdiv i32 %34, 1000
  %36 = load %struct.evdev_dev*, %struct.evdev_dev** %3, align 8
  %37 = call i32 @callout_reset(i32* %26, i32 %35, void (i8*)* @evdev_repeat_callout, %struct.evdev_dev* %36)
  br label %42

38:                                               ; preds = %1
  %39 = load i32, i32* @KEY_RESERVED, align 4
  %40 = load %struct.evdev_dev*, %struct.evdev_dev** %3, align 8
  %41 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  br label %42

42:                                               ; preds = %38, %24
  ret void
}

declare dso_local i32 @evdev_send_event(%struct.evdev_dev*, i32, i32, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.evdev_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
