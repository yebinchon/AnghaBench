; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_evdev_mt.c_evdev_send_mt_compat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_evdev_mt.c_evdev_send_mt_compat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdev_dev = type { i32, i32 }

@EV_KEY = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@ABS_MT_TRACKING_ID = common dso_local global i32 0, align 4
@evdev_mtstmap = common dso_local global i32** null, align 8
@EV_ABS = common dso_local global i32 0, align 4
@INPUT_PROP_DIRECT = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evdev_send_mt_compat(%struct.evdev_dev* %0) #0 {
  %2 = alloca %struct.evdev_dev*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.evdev_dev* %0, %struct.evdev_dev** %2, align 8
  %5 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %6 = call i32 @EVDEV_LOCK_ASSERT(%struct.evdev_dev* %5)
  %7 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %8 = call i64 @evdev_count_fingers(%struct.evdev_dev* %7)
  store i64 %8, i64* %3, align 8
  %9 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %10 = load i32, i32* @EV_KEY, align 4
  %11 = load i32, i32* @BTN_TOUCH, align 4
  %12 = load i64, i64* %3, align 8
  %13 = icmp sgt i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @evdev_send_event(%struct.evdev_dev* %9, i32 %10, i32 %11, i32 %14)
  %16 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %17 = load i32, i32* @ABS_MT_TRACKING_ID, align 4
  %18 = call i32 @evdev_get_mt_value(%struct.evdev_dev* %16, i32 0, i32 %17)
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %61

20:                                               ; preds = %1
  store i64 0, i64* %4, align 8
  br label %21

21:                                               ; preds = %57, %20
  %22 = load i64, i64* %4, align 8
  %23 = load i32**, i32*** @evdev_mtstmap, align 8
  %24 = call i64 @nitems(i32** %23)
  %25 = icmp slt i64 %22, %24
  br i1 %25, label %26, label %60

26:                                               ; preds = %21
  %27 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %28 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32**, i32*** @evdev_mtstmap, align 8
  %31 = load i64, i64* %4, align 8
  %32 = getelementptr inbounds i32*, i32** %30, i64 %31
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @bit_test(i32 %29, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %26
  %39 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %40 = load i32, i32* @EV_ABS, align 4
  %41 = load i32**, i32*** @evdev_mtstmap, align 8
  %42 = load i64, i64* %4, align 8
  %43 = getelementptr inbounds i32*, i32** %41, i64 %42
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %48 = load i32**, i32*** @evdev_mtstmap, align 8
  %49 = load i64, i64* %4, align 8
  %50 = getelementptr inbounds i32*, i32** %48, i64 %49
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @evdev_get_mt_value(%struct.evdev_dev* %47, i32 0, i32 %53)
  %55 = call i32 @evdev_send_event(%struct.evdev_dev* %39, i32 %40, i32 %46, i32 %54)
  br label %56

56:                                               ; preds = %38, %26
  br label %57

57:                                               ; preds = %56
  %58 = load i64, i64* %4, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %4, align 8
  br label %21

60:                                               ; preds = %21
  br label %61

61:                                               ; preds = %60, %1
  %62 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %63 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @INPUT_PROP_DIRECT, align 4
  %66 = call i64 @bit_test(i32 %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %61
  %69 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %70 = load i64, i64* %3, align 8
  %71 = call i32 @evdev_send_nfingers(%struct.evdev_dev* %69, i64 %70)
  br label %72

72:                                               ; preds = %68, %61
  %73 = load i64, i64* %3, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %77 = load i32, i32* @EV_ABS, align 4
  %78 = load i32, i32* @ABS_PRESSURE, align 4
  %79 = call i32 @evdev_send_event(%struct.evdev_dev* %76, i32 %77, i32 %78, i32 0)
  br label %80

80:                                               ; preds = %75, %72
  ret void
}

declare dso_local i32 @EVDEV_LOCK_ASSERT(%struct.evdev_dev*) #1

declare dso_local i64 @evdev_count_fingers(%struct.evdev_dev*) #1

declare dso_local i32 @evdev_send_event(%struct.evdev_dev*, i32, i32, i32) #1

declare dso_local i32 @evdev_get_mt_value(%struct.evdev_dev*, i32, i32) #1

declare dso_local i64 @nitems(i32**) #1

declare dso_local i64 @bit_test(i32, i32) #1

declare dso_local i32 @evdev_send_nfingers(%struct.evdev_dev*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
