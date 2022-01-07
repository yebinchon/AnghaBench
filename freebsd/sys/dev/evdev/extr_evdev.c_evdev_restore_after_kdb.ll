; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_evdev.c_evdev_restore_after_kdb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_evdev.c_evdev_restore_after_kdb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdev_dev = type { i32, i32, i32 }

@LED_CNT = common dso_local global i32 0, align 4
@EV_LED = common dso_local global i32 0, align 4
@LED_MAX = common dso_local global i32 0, align 4
@KEY_CNT = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@KEY_EVENT_UP = common dso_local global i32 0, align 4
@EV_SYN = common dso_local global i32 0, align 4
@SYN_REPORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evdev_restore_after_kdb(%struct.evdev_dev* %0) #0 {
  %2 = alloca %struct.evdev_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.evdev_dev* %0, %struct.evdev_dev** %2, align 8
  %4 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %5 = call i32 @EVDEV_LOCK_ASSERT(%struct.evdev_dev* %4)
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %31, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @LED_CNT, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %34

10:                                               ; preds = %6
  %11 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %12 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i64 @bit_test(i32 %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %10
  %18 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %19 = load i32, i32* @EV_LED, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %22 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i64 @bit_test(i32 %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @evdev_send_event(%struct.evdev_dev* %18, i32 %19, i32 %20, i32 %28)
  br label %30

30:                                               ; preds = %17, %10
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %6

34:                                               ; preds = %6
  %35 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %36 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @LED_MAX, align 4
  %39 = call i32 @bit_nclear(i32 %37, i32 0, i32 %38)
  %40 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %41 = call i32 @evdev_stop_repeat(%struct.evdev_dev* %40)
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %64, %34
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @KEY_CNT, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %67

46:                                               ; preds = %42
  %47 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %48 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %3, align 4
  %51 = call i64 @bit_test(i32 %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %46
  %54 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %55 = load i32, i32* @EV_KEY, align 4
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @KEY_EVENT_UP, align 4
  %58 = call i32 @evdev_send_event(%struct.evdev_dev* %54, i32 %55, i32 %56, i32 %57)
  %59 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %60 = load i32, i32* @EV_SYN, align 4
  %61 = load i32, i32* @SYN_REPORT, align 4
  %62 = call i32 @evdev_send_event(%struct.evdev_dev* %59, i32 %60, i32 %61, i32 1)
  br label %63

63:                                               ; preds = %53, %46
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %3, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %3, align 4
  br label %42

67:                                               ; preds = %42
  ret void
}

declare dso_local i32 @EVDEV_LOCK_ASSERT(%struct.evdev_dev*) #1

declare dso_local i64 @bit_test(i32, i32) #1

declare dso_local i32 @evdev_send_event(%struct.evdev_dev*, i32, i32, i32) #1

declare dso_local i32 @bit_nclear(i32, i32, i32) #1

declare dso_local i32 @evdev_stop_repeat(%struct.evdev_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
