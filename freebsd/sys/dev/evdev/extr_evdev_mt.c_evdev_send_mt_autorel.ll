; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_evdev_mt.c_evdev_send_mt_autorel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_evdev_mt.c_evdev_send_mt_autorel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdev_dev = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@ABS_MT_TRACKING_ID = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@ABS_MT_SLOT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evdev_send_mt_autorel(%struct.evdev_dev* %0) #0 {
  %2 = alloca %struct.evdev_dev*, align 8
  %3 = alloca i64, align 8
  store %struct.evdev_dev* %0, %struct.evdev_dev** %2, align 8
  %4 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %5 = call i32 @EVDEV_LOCK_ASSERT(%struct.evdev_dev* %4)
  store i64 0, i64* %3, align 8
  br label %6

6:                                                ; preds = %43, %1
  %7 = load i64, i64* %3, align 8
  %8 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %9 = call i64 @MAXIMAL_MT_SLOT(%struct.evdev_dev* %8)
  %10 = icmp ule i64 %7, %9
  br i1 %10, label %11, label %46

11:                                               ; preds = %6
  %12 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %13 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = load i64, i64* %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %22 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %20, %23
  br i1 %24, label %25, label %42

25:                                               ; preds = %11
  %26 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %27 = load i64, i64* %3, align 8
  %28 = load i32, i32* @ABS_MT_TRACKING_ID, align 4
  %29 = call i32 @evdev_get_mt_value(%struct.evdev_dev* %26, i64 %27, i32 %28)
  %30 = icmp ne i32 %29, -1
  br i1 %30, label %31, label %42

31:                                               ; preds = %25
  %32 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %33 = load i32, i32* @EV_ABS, align 4
  %34 = load i32, i32* @ABS_MT_SLOT, align 4
  %35 = load i64, i64* %3, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 @evdev_send_event(%struct.evdev_dev* %32, i32 %33, i32 %34, i32 %36)
  %38 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %39 = load i32, i32* @EV_ABS, align 4
  %40 = load i32, i32* @ABS_MT_TRACKING_ID, align 4
  %41 = call i32 @evdev_send_event(%struct.evdev_dev* %38, i32 %39, i32 %40, i32 -1)
  br label %42

42:                                               ; preds = %31, %25, %11
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* %3, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %3, align 8
  br label %6

46:                                               ; preds = %6
  ret void
}

declare dso_local i32 @EVDEV_LOCK_ASSERT(%struct.evdev_dev*) #1

declare dso_local i64 @MAXIMAL_MT_SLOT(%struct.evdev_dev*) #1

declare dso_local i32 @evdev_get_mt_value(%struct.evdev_dev*, i64, i32) #1

declare dso_local i32 @evdev_send_event(%struct.evdev_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
