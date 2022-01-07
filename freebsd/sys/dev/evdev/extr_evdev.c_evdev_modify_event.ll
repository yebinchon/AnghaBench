; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_evdev.c_evdev_modify_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_evdev.c_evdev_modify_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdev_dev = type { i32, i32, i32 }

@EV_REP = common dso_local global i32 0, align 4
@EVDEV_FLAG_SOFTREPEAT = common dso_local global i32 0, align 4
@KEY_EVENT_DOWN = common dso_local global i32 0, align 4
@KEY_EVENT_REPEAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evdev_dev*, i32, i32, i32*)* @evdev_modify_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evdev_modify_event(%struct.evdev_dev* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.evdev_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.evdev_dev* %0, %struct.evdev_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %9 = load %struct.evdev_dev*, %struct.evdev_dev** %5, align 8
  %10 = call i32 @EVDEV_LOCK_ASSERT(%struct.evdev_dev* %9)
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %74 [
    i32 128, label %12
    i32 129, label %73
  ]

12:                                               ; preds = %4
  %13 = load %struct.evdev_dev*, %struct.evdev_dev** %5, align 8
  %14 = load i32, i32* @EV_REP, align 4
  %15 = call i32 @evdev_event_supported(%struct.evdev_dev* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  br label %74

18:                                               ; preds = %12
  %19 = load %struct.evdev_dev*, %struct.evdev_dev** %5, align 8
  %20 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @EVDEV_FLAG_SOFTREPEAT, align 4
  %23 = call i32 @bit_test(i32 %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %41, label %25

25:                                               ; preds = %18
  %26 = load %struct.evdev_dev*, %struct.evdev_dev** %5, align 8
  %27 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @bit_test(i32 %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %25
  %33 = load i32*, i32** %8, align 8
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @KEY_EVENT_DOWN, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* @KEY_EVENT_REPEAT, align 4
  %39 = load i32*, i32** %8, align 8
  store i32 %38, i32* %39, align 4
  br label %40

40:                                               ; preds = %37, %32, %25
  br label %72

41:                                               ; preds = %18
  %42 = load %struct.evdev_dev*, %struct.evdev_dev** %5, align 8
  %43 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @bit_test(i32 %44, i32 %45)
  %47 = load i32*, i32** %8, align 8
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = icmp eq i32 %46, %51
  br i1 %52, label %53, label %71

53:                                               ; preds = %41
  %54 = load %struct.evdev_dev*, %struct.evdev_dev** %5, align 8
  %55 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %54, i32 0, i32 0
  %56 = call i32 @LIST_EMPTY(i32* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %71, label %58

58:                                               ; preds = %53
  %59 = load i32*, i32** %8, align 8
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @KEY_EVENT_DOWN, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load %struct.evdev_dev*, %struct.evdev_dev** %5, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @evdev_start_repeat(%struct.evdev_dev* %64, i32 %65)
  br label %70

67:                                               ; preds = %58
  %68 = load %struct.evdev_dev*, %struct.evdev_dev** %5, align 8
  %69 = call i32 @evdev_stop_repeat(%struct.evdev_dev* %68)
  br label %70

70:                                               ; preds = %67, %63
  br label %71

71:                                               ; preds = %70, %53, %41
  br label %72

72:                                               ; preds = %71, %40
  br label %74

73:                                               ; preds = %4
  br label %74

74:                                               ; preds = %4, %73, %72, %17
  ret void
}

declare dso_local i32 @EVDEV_LOCK_ASSERT(%struct.evdev_dev*) #1

declare dso_local i32 @evdev_event_supported(%struct.evdev_dev*, i32) #1

declare dso_local i32 @bit_test(i32, i32) #1

declare dso_local i32 @LIST_EMPTY(i32*) #1

declare dso_local i32 @evdev_start_repeat(%struct.evdev_dev*, i32) #1

declare dso_local i32 @evdev_stop_repeat(%struct.evdev_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
